#!/usr/bin/env ruby
#
# run-random-robot.rb
# Random robot picker - pilih dan jalankan satu robot secara random
#
# Usage: ruby scripts/run-random-robot.rb [--dry-run]
#
# Available robots:
# - rotate-frontmatter.rb (measurement rotation)
# - rotate-synonyms.rb (synonym rotation)
#
# Each run picks ONE robot randomly to execute
#

require 'date'
require 'json'
require 'fileutils'

# ============================================================================
# CONFIGURATION
# ============================================================================

SCRIPT_DIR = File.expand_path(__dir__)
LOG_FILE = File.expand_path('../_data/robot-scheduler-log.json', SCRIPT_DIR)

DRY_RUN = ARGV.include?('--dry-run')
VERBOSE = ARGV.include?('--verbose') || ARGV.include?('-v')

# Available robots with their scripts and descriptions
ROBOTS = [
  {
    id: 'measurement',
    name: 'Robot Measurement',
    script: 'rotate-frontmatter.rb',
    description: 'Variasi angka pengukuran (NDT, operational, technical, hydrotest)'
  },
  {
    id: 'synonym',
    name: 'Robot Sinonim',
    script: 'rotate-synonyms.rb',
    description: 'Ganti kata dengan sinonim (dilakukan→dilaksanakan, dan→serta, dll)'
  }
]

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
    days = days_since_last_run(robot[:id], log)

    # Weight increases with days since last run
    weight = case days
             when 0      then 1    # Baru dijalankan hari ini
             when 1..2   then 3    # 1-2 hari lalu
             when 3..6   then 5    # 3-6 hari lalu
             when 7..13  then 8    # 1-2 minggu lalu
             else             10   # > 2 minggu
             end

    weights[robot[:id]] = weight
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
# MAIN EXECUTION
# ============================================================================

puts "=" * 60
puts "  Robot Scheduler"
puts "  Mode: #{DRY_RUN ? 'DRY RUN' : 'LIVE'}"
puts "=" * 60
puts ""

scheduler_log = load_scheduler_log

# Calculate weights
weights = calculate_robot_weights(scheduler_log)

puts "Available robots:"
ROBOTS.each do |robot|
  days = days_since_last_run(robot[:id], scheduler_log)
  weight = weights[robot[:id]]
  days_str = days == 999 ? "never" : "#{days} days ago"
  puts "  [#{robot[:id]}] #{robot[:name]} (last run: #{days_str}, weight: #{weight})"
end
puts ""

# Select robot
selected_id = weighted_random_select(weights)
selected_robot = ROBOTS.find { |r| r[:id] == selected_id }

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
