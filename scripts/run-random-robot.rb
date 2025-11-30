#!/usr/bin/env ruby
#
# run-random-robot.rb
# Random robot picker - pilih dan jalankan satu robot secara random
#
# Usage: ruby scripts/run-random-robot.rb [--dry-run] [--list] [--run=ID]
#
# Options:
#   --dry-run    Preview without changes
#   --verbose    Show detailed output
#   --list       List all robots and their status
#   --run=ID     Run specific robot by ID
#
# Robots configured in: scripts/robots-config.yml
#

require 'date'
require 'json'
require 'yaml'
require 'fileutils'

# ============================================================================
# CONFIGURATION
# ============================================================================

SCRIPT_DIR = File.expand_path(__dir__)
CONFIG_FILE = File.join(SCRIPT_DIR, 'robots-config.yml')
LOG_FILE = File.expand_path('../_data/robot-scheduler-log.json', SCRIPT_DIR)

DRY_RUN = ARGV.include?('--dry-run')
VERBOSE = ARGV.include?('--verbose') || ARGV.include?('-v')
LIST_MODE = ARGV.include?('--list')
RUN_SPECIFIC = ARGV.find { |a| a.start_with?('--run=') }&.split('=')&.last

# ============================================================================
# LOAD ROBOTS FROM CONFIG
# ============================================================================

def load_robots_config
  unless File.exist?(CONFIG_FILE)
    puts "Warning: #{CONFIG_FILE} not found, using defaults"
    return default_robots
  end

  config = YAML.safe_load(File.read(CONFIG_FILE))
  robots = config['robots'].map do |r|
    {
      id: r['id'],
      name: r['name'],
      script: r['script'],
      description: r['description'],
      enabled: r['enabled'] != false,  # default true
      weight_multiplier: r['weight_multiplier'] || 1.0
    }
  end

  robots
rescue => e
  puts "Error loading config: #{e.message}"
  default_robots
end

def default_robots
  [
    {
      id: 'measurement',
      name: 'Robot Measurement',
      script: 'rotate-frontmatter.rb',
      description: 'Variasi angka pengukuran',
      enabled: true,
      weight_multiplier: 1.0
    },
    {
      id: 'synonym',
      name: 'Robot Sinonim',
      script: 'rotate-synonyms.rb',
      description: 'Ganti kata dengan sinonim',
      enabled: true,
      weight_multiplier: 1.0
    }
  ]
end

ROBOTS = load_robots_config

# ============================================================================
# WEIGHTED RANDOM SELECTION
# ============================================================================
# Robots yang lama tidak dijalankan punya probabilitas lebih tinggi

def load_scheduler_log
  return {} unless File.exist?(LOG_FILE)
  JSON.parse(File.read(LOG_FILE))
rescue
  {}
end

def save_scheduler_log(log)
  FileUtils.mkdir_p(File.dirname(LOG_FILE))
  File.write(LOG_FILE, JSON.pretty_generate(log))
end

def days_since_last_run(robot_id, log)
  return 999 unless log[robot_id]
  last_run = Date.parse(log[robot_id]['last_run'])
  (Date.today - last_run).to_i
rescue
  999
end

def calculate_robot_weights(log)
  weights = {}

  ROBOTS.each do |robot|
    # Skip disabled robots
    next unless robot[:enabled]

    days = days_since_last_run(robot[:id], log)

    # Weight increases with days since last run
    base_weight = case days
                  when 0      then 1    # Baru dijalankan hari ini
                  when 1..2   then 3    # 1-2 hari lalu
                  when 3..6   then 5    # 3-6 hari lalu
                  when 7..13  then 8    # 1-2 minggu lalu
                  else             10   # > 2 minggu
                  end

    # Apply weight multiplier from config
    weights[robot[:id]] = (base_weight * robot[:weight_multiplier]).round(1)
  end

  weights
end

def weighted_random_select(weights)
  total = weights.values.sum
  random_point = rand * total

  cumulative = 0
  weights.each do |id, weight|
    cumulative += weight
    return id if random_point <= cumulative
  end

  weights.keys.last
end

# ============================================================================
# LIST MODE
# ============================================================================

def list_robots(scheduler_log)
  puts "=" * 60
  puts "  Available Robots"
  puts "=" * 60
  puts ""

  ROBOTS.each do |robot|
    status = robot[:enabled] ? "✓ enabled" : "✗ DISABLED"
    days = days_since_last_run(robot[:id], scheduler_log)
    days_str = days == 999 ? "never" : "#{days} days ago"
    multiplier = robot[:weight_multiplier] != 1.0 ? " (×#{robot[:weight_multiplier]})" : ""

    puts "  [#{robot[:id]}] #{robot[:name]}"
    puts "      Status: #{status}#{multiplier}"
    puts "      Script: #{robot[:script]}"
    puts "      Last run: #{days_str}"
    puts "      #{robot[:description]}"
    puts ""
  end

  puts "Config file: #{CONFIG_FILE}"
  puts ""
  puts "To disable a robot, set 'enabled: false' in config"
  puts "To run specific robot: ruby scripts/run-random-robot.rb --run=ID"
end

# ============================================================================
# MAIN EXECUTION
# ============================================================================

scheduler_log = load_scheduler_log

# List mode
if LIST_MODE
  list_robots(scheduler_log)
  exit 0
end

puts "=" * 60
puts "  Robot Scheduler"
puts "  Mode: #{DRY_RUN ? 'DRY RUN' : 'LIVE'}"
puts "=" * 60
puts ""

# Calculate weights
weights = calculate_robot_weights(scheduler_log)

# Check if any robots enabled
if weights.empty?
  puts "ERROR: No robots enabled!"
  puts "Edit #{CONFIG_FILE} to enable at least one robot."
  exit 1
end

puts "Available robots:"
ROBOTS.each do |robot|
  days = days_since_last_run(robot[:id], scheduler_log)
  weight = weights[robot[:id]]
  days_str = days == 999 ? "never" : "#{days} days ago"

  if robot[:enabled]
    puts "  [#{robot[:id]}] #{robot[:name]} (last run: #{days_str}, weight: #{weight})"
  else
    puts "  [#{robot[:id]}] #{robot[:name]} (DISABLED - maintenance)"
  end
end
puts ""

# Select robot
if RUN_SPECIFIC
  selected_robot = ROBOTS.find { |r| r[:id] == RUN_SPECIFIC }
  if selected_robot.nil?
    puts "ERROR: Robot '#{RUN_SPECIFIC}' not found!"
    puts "Available: #{ROBOTS.map { |r| r[:id] }.join(', ')}"
    exit 1
  end
  if !selected_robot[:enabled]
    puts "WARNING: Robot '#{RUN_SPECIFIC}' is disabled, but running anyway (forced)"
  end
  selected_id = RUN_SPECIFIC
else
  selected_id = weighted_random_select(weights)
  selected_robot = ROBOTS.find { |r| r[:id] == selected_id }
end

puts "Selected: #{selected_robot[:name]}"
puts "Description: #{selected_robot[:description]}"
puts ""
puts "-" * 60
puts ""

# Build command
script_path = File.join(SCRIPT_DIR, selected_robot[:script])
cmd = "ruby #{script_path}"
cmd += " --dry-run" if DRY_RUN
cmd += " --verbose" if VERBOSE

# Execute
puts "Executing: #{cmd}"
puts ""

system(cmd)
exit_status = $?.exitstatus

puts ""
puts "-" * 60
puts ""

if exit_status == 0
  puts "Robot #{selected_robot[:name]} completed successfully!"

  # Update log
  unless DRY_RUN
    scheduler_log[selected_id] = {
      'last_run' => Date.today.to_s,
      'script' => selected_robot[:script]
    }
    save_scheduler_log(scheduler_log)
    puts "Scheduler log updated."
  end
else
  puts "Robot #{selected_robot[:name]} failed with exit code: #{exit_status}"
end
