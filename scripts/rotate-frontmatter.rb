#!/usr/bin/env ruby
#
# rotate-frontmatter.rb
# Auto-rotate measurement data untuk trigger lastmod / content freshness
#
# Usage: ruby scripts/rotate-frontmatter.rb [--dry-run]
#
# Strategy: Variasi kecil pada angka pengukuran (±0.1 atau ±1)
# - section_ndt.items[].result (thickness measurements)
# - section_operational.items[].result (pressure, temp, flow)
# - section_hydrotest fields (pressure, duration)
#
# Designed for GitHub Actions scheduled runs with escalating probability
#

require 'yaml'
require 'fileutils'
require 'date'
require 'json'

# ============================================================================
# CONFIGURATION
# ============================================================================

SCRIPT_DIR = File.expand_path(__dir__)
POSTS_DIR = File.expand_path('../../_posts', __FILE__)
LOG_FILE = File.expand_path('../../_data/frontmatter-rotation-log.json', __FILE__)

DRY_RUN = ARGV.include?('--dry-run')
VERBOSE = ARGV.include?('--verbose') || ARGV.include?('-v')

# Layouts filter from environment (passed by run-random-robot.rb)
# Empty = process layouts defined in script, or use ROBOT_LAYOUTS env
ALLOWED_LAYOUTS = if ENV['ROBOT_LAYOUTS'] && !ENV['ROBOT_LAYOUTS'].empty?
                    ENV['ROBOT_LAYOUTS'].split(',').map(&:strip)
                  else
                    # Default: inspection-report layouts only
                    ['node/node--inspection-report', 'node/node--riksa-uji']
                  end

# ============================================================================
# ESCALATING PROBABILITY SYSTEM
# ============================================================================

def calculate_rotation_probability(last_rotation_date)
  return 1.0 if last_rotation_date.nil?

  days_since = (Date.today - last_rotation_date).to_i

  case days_since
  when 0..6    then 0.05   # 5% - baru diupdate minggu ini
  when 7..13   then 0.15   # 15% - 1-2 minggu
  when 14..20  then 0.30   # 30% - 2-3 minggu
  when 21..27  then 0.50   # 50% - 3-4 minggu
  when 28..34  then 0.70   # 70% - 4-5 minggu
  else              0.90   # 90% - lebih dari 5 minggu
  end
end

def should_rotate?(last_rotation_date)
  probability = calculate_rotation_probability(last_rotation_date)
  rand < probability
end

# ============================================================================
# MEASUREMENT VARIATION FUNCTIONS
# ============================================================================

# Variasi angka dalam range kecil
# "10.5" -> "10.4" atau "10.6" (±0.1 untuk desimal)
# "375" -> "374" atau "376" (±1 untuk integer)
def vary_number(value_str, variance_pct = 0.02)
  return value_str unless value_str.is_a?(String)

  # Extract number from string (e.g., "10.8 Bar" -> 10.8, "Bar")
  match = value_str.match(/^([\d.]+)(.*)$/)
  return value_str unless match

  num_str = match[1]
  suffix = match[2]

  # Parse number
  if num_str.include?('.')
    # Decimal number - vary by ±0.1 to ±0.3
    num = num_str.to_f
    variance = [0.1, 0.2, 0.3].sample * [-1, 1].sample
    new_num = (num + variance).round(1)

    # Keep positive and reasonable
    new_num = num.round(1) if new_num <= 0
    "#{new_num}#{suffix}"
  else
    # Integer - vary by ±1 to ±2
    num = num_str.to_i
    variance = [1, 2].sample * [-1, 1].sample
    new_num = num + variance

    # Keep positive and reasonable
    new_num = num if new_num <= 0
    "#{new_num}#{suffix}"
  end
end

# ============================================================================
# SECTION ROTATORS
# ============================================================================

def rotate_ndt_measurements(frontmatter)
  section = frontmatter['section_ndt']
  return 0 unless section.is_a?(Hash) && section['items'].is_a?(Array)

  changes = 0
  section['items'].each do |item|
    next unless item['result'].is_a?(String)

    # Only vary numeric results (thickness measurements like "10.5", "8.2")
    old_val = item['result']
    next unless old_val.match?(/^[\d.]+$/)

    new_val = vary_number(old_val)
    if new_val != old_val
      item['result'] = new_val
      changes += 1
      puts "    NDT #{item['component']}/#{item['location']}: #{old_val} -> #{new_val}" if VERBOSE
    end
  end

  changes
end

def rotate_operational_measurements(frontmatter)
  section = frontmatter['section_operational']
  return 0 unless section.is_a?(Hash) && section['items'].is_a?(Array)

  changes = 0
  section['items'].each do |item|
    next unless item['result'].is_a?(String)

    old_val = item['result']
    # Only vary results with numbers (e.g., "10.8 Bar", "375°C", "19.5 Ton/jam")
    next unless old_val.match?(/^[\d.]+/)

    new_val = vary_number(old_val)
    if new_val != old_val
      item['result'] = new_val
      changes += 1
      puts "    Operational #{item['parameter']}: #{old_val} -> #{new_val}" if VERBOSE
    end
  end

  changes
end

def rotate_hydrotest_measurements(frontmatter)
  section = frontmatter['section_hydrotest']
  return 0 unless section.is_a?(Hash)

  changes = 0

  # Vary test_pressure (e.g., "15.75 Bar")
  if section['test_pressure'].is_a?(String) && section['test_pressure'].match?(/^[\d.]+/)
    old_val = section['test_pressure']
    new_val = vary_number(old_val)
    if new_val != old_val
      section['test_pressure'] = new_val
      changes += 1
      puts "    Hydrotest test_pressure: #{old_val} -> #{new_val}" if VERBOSE
    end
  end

  # Vary duration (e.g., "30 Menit")
  if section['duration'].is_a?(String) && section['duration'].match?(/^[\d]+/)
    old_val = section['duration']
    new_val = vary_number(old_val)
    if new_val != old_val
      section['duration'] = new_val
      changes += 1
      puts "    Hydrotest duration: #{old_val} -> #{new_val}" if VERBOSE
    end
  end

  changes
end

def rotate_technical_measurements(frontmatter)
  section = frontmatter['section_technical']
  return 0 unless section.is_a?(Hash) && section['items'].is_a?(Array)

  changes = 0
  section['items'].each do |item|
    next unless item['result'].is_a?(String)

    old_val = item['result']
    # Only vary results with numbers (e.g., "11.2 mm", "88%")
    next unless old_val.match?(/^[\d.]+/)

    new_val = vary_number(old_val)
    if new_val != old_val
      item['result'] = new_val
      changes += 1
      puts "    Technical #{item['component']}: #{old_val} -> #{new_val}" if VERBOSE
    end
  end

  changes
end

# ============================================================================
# HELPER FUNCTIONS
# ============================================================================

def load_rotation_log
  return {} unless File.exist?(LOG_FILE)
  JSON.parse(File.read(LOG_FILE))
rescue
  {}
end

def save_rotation_log(log)
  FileUtils.mkdir_p(File.dirname(LOG_FILE))
  File.write(LOG_FILE, JSON.pretty_generate(log))
end

def extract_frontmatter(content)
  if content =~ /\A---\s*\n(.*?)\n---\s*\n/m
    yaml_content = $1
    body = $'
    [YAML.safe_load(yaml_content, permitted_classes: [Date, Time]), body, yaml_content]
  else
    [nil, content, nil]
  end
end

def rebuild_content(frontmatter, body)
  "---\n#{YAML.dump(frontmatter).sub(/\A---\n/, '')}---\n#{body}"
end

# ============================================================================
# MAIN ROTATION LOGIC
# ============================================================================

def layout_allowed?(layout)
  return true if ALLOWED_LAYOUTS.empty?
  ALLOWED_LAYOUTS.any? { |allowed| layout.include?(allowed) || allowed.include?(layout) }
end

def rotate_post(file_path, rotation_log)
  filename = File.basename(file_path)
  content = File.read(file_path)

  frontmatter, body, _original_yaml = extract_frontmatter(content)
  return nil unless frontmatter

  # Check layout against allowed layouts from config
  layout = frontmatter['layout'].to_s
  unless layout_allowed?(layout)
    puts "  Skipping #{filename} (layout: #{layout})" if VERBOSE
    return nil
  end

  # Check rotation probability
  last_rotation = rotation_log[filename] ? Date.parse(rotation_log[filename]['date']) : nil
  unless should_rotate?(last_rotation)
    probability = calculate_rotation_probability(last_rotation)
    puts "  Skipping #{filename} (probability: #{(probability * 100).to_i}%, dice: no)" if VERBOSE
    return nil
  end

  puts "Processing: #{filename}"

  total_changes = 0
  changed_sections = []

  # Rotate measurements in each section
  ndt_changes = rotate_ndt_measurements(frontmatter)
  if ndt_changes > 0
    total_changes += ndt_changes
    changed_sections << "ndt(#{ndt_changes})"
  end

  op_changes = rotate_operational_measurements(frontmatter)
  if op_changes > 0
    total_changes += op_changes
    changed_sections << "operational(#{op_changes})"
  end

  tech_changes = rotate_technical_measurements(frontmatter)
  if tech_changes > 0
    total_changes += tech_changes
    changed_sections << "technical(#{tech_changes})"
  end

  hydro_changes = rotate_hydrotest_measurements(frontmatter)
  if hydro_changes > 0
    total_changes += hydro_changes
    changed_sections << "hydrotest(#{hydro_changes})"
  end

  return nil if total_changes == 0

  puts "  Total changes: #{total_changes} (#{changed_sections.join(', ')})"

  # Update lastmod untuk sorting di blog preview
  frontmatter['lastmod'] = Time.now.strftime('%Y-%m-%dT%H:%M:%S%z')

  # Write back
  unless DRY_RUN
    new_content = rebuild_content(frontmatter, body)
    File.write(file_path, new_content)
  end

  {
    file: filename,
    date: Date.today.to_s,
    changes: total_changes,
    sections: changed_sections
  }
end

# ============================================================================
# MAIN EXECUTION
# ============================================================================

puts "=" * 60
puts "  Frontmatter Measurement Rotation Script"
puts "  Mode: #{DRY_RUN ? 'DRY RUN' : 'LIVE'}"
puts "=" * 60
puts ""

rotation_log = load_rotation_log
rotated_files = []

# Find all posts
posts = Dir.glob(File.join(POSTS_DIR, '*.md')).sort

puts "Found #{posts.length} posts"
puts ""

posts.each do |post_path|
  result = rotate_post(post_path, rotation_log)
  if result
    rotated_files << result
    rotation_log[result[:file]] = {
      'date' => result[:date],
      'changes' => result[:changes],
      'sections' => result[:sections]
    }
  end
end

puts ""
puts "=" * 60
puts "  Summary"
puts "=" * 60
puts ""
puts "Total posts:    #{posts.length}"
puts "Rotated:        #{rotated_files.length}"
puts ""

if rotated_files.any?
  puts "Rotated files:"
  rotated_files.each do |r|
    puts "  - #{r[:file]}"
    puts "    #{r[:changes]} measurements: #{r[:sections].join(', ')}"
  end
  puts ""
end

unless DRY_RUN
  save_rotation_log(rotation_log)
  puts "Log saved to: #{LOG_FILE}"
end

# ============================================================================
# HOOK: Trigger propagator jika ada perubahan
# ============================================================================

if rotated_files.any? && !DRY_RUN
  puts ""
  puts "-" * 60
  puts "  HOOK: Triggering timestamp propagation..."
  puts "-" * 60
  puts ""

  propagator_script = File.join(SCRIPT_DIR, 'propagate-timestamp.rb')
  reason = "Measurement rotation: #{rotated_files.length} files"

  system("ruby", propagator_script, "--reason=#{reason}")
end

if DRY_RUN
  puts ""
  puts "[DRY RUN] No files were modified. Run without --dry-run to apply changes."
  if rotated_files.any?
    puts "[DRY RUN] Propagator hook would be triggered for #{rotated_files.length} files."
  end
end
