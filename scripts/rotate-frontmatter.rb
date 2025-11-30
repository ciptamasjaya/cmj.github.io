#!/usr/bin/env ruby
#
# rotate-frontmatter.rb
# Auto-rotate frontmatter fields untuk trigger lastmod / content freshness
#
# Usage: ruby scripts/rotate-frontmatter.rb [--dry-run]
#
# Building block system untuk generate variasi:
# - description (meta description)
# - section titles
# - intro paragraphs variations
#
# Designed for GitHub Actions scheduled runs with escalating probability
#

require 'yaml'
require 'fileutils'
require 'date'
require 'digest'

# ============================================================================
# CONFIGURATION
# ============================================================================

POSTS_DIR = File.expand_path('../../_posts', __FILE__)
DATA_DIR = File.expand_path('../../_data', __FILE__)
LOG_FILE = File.expand_path('../../_data/frontmatter-rotation-log.json', __FILE__)

DRY_RUN = ARGV.include?('--dry-run')
VERBOSE = ARGV.include?('--verbose') || ARGV.include?('-v')

# ============================================================================
# BUILDING BLOCKS - Description
# ============================================================================
# Kombinasikan: [intro] + [service] + [object_type] + [object_detail] + [closing]

DESCRIPTION_BLOCKS = {
  intro: [
    "Laporan lengkap hasil",
    "Dokumentasi resmi",
    "Hasil pemeriksaan",
    "Laporan inspeksi",
    "Dokumen hasil"
  ],

  service: [
    "riksa uji",
    "pemeriksaan K3",
    "inspeksi berkala",
    "pengujian teknis",
    "pemeriksaan keselamatan"
  ],

  # Object types - akan di-match dengan frontmatter
  object_types: {
    "forklift" => ["forklift", "forklift elektrik", "unit forklift", "forklift listrik"],
    "boiler" => ["boiler", "ketel uap", "steam boiler", "boiler industri"],
    "pressure-vessel" => ["pressure vessel", "bejana tekan", "bejana bertekanan"],
    "crane" => ["crane", "overhead crane", "mobile crane", "tower crane"],
    "lift" => ["lift", "elevator", "lift barang", "lift penumpang"]
  },

  closing: [
    "meliputi pemeriksaan visual, pengujian operasional, teknis, NDT, dan uji beban",
    "mencakup inspeksi visual, tes operasional, uji teknis, dan pengujian NDT",
    "termasuk evaluasi visual, pengujian fungsi, analisis teknis, dan pemeriksaan NDT",
    "dengan pemeriksaan menyeluruh aspek visual, operasional, teknis, dan NDT",
    "meliputi inspeksi komprehensif visual, operasi, teknis, dan pengujian ketebalan"
  ]
}

# ============================================================================
# BUILDING BLOCKS - Section Titles
# ============================================================================

SECTION_TITLE_BLOCKS = {
  section_intro: [
    "Pendahuluan",
    "Latar Belakang",
    "Latar Belakang Inspeksi"
  ],

  section_glossary: [
    "Istilah dan Definisi",
    "Daftar Istilah",
    "Glosarium"
  ],

  section_visual: [
    "Hasil Pemeriksaan Visual",
    "Inspeksi Visual",
    "Pemeriksaan Kondisi Visual"
  ],

  section_operational: [
    "Hasil Pengujian Operasional",
    "Uji Operasional",
    "Pemeriksaan Fungsi Operasi"
  ],

  section_technical: [
    "Hasil Pengujian Teknis",
    "Uji Teknis",
    "Pemeriksaan Teknis"
  ],

  section_ndt: [
    "Hasil Pengujian NDT",
    "Non-Destructive Testing",
    "Uji Ketebalan (Thickness Test)"
  ],

  section_hydrotest: [
    "Hasil Uji Hidrostatik",
    "Hydrotest Results",
    "Pengujian Hidrostatik"
  ],

  section_safety_valve: [
    "Hasil Pengujian Safety Valve",
    "Uji Katup Pengaman",
    "Pemeriksaan Safety Valve"
  ],

  section_analysis: [
    "Analisis dan Pembahasan",
    "Pembahasan Hasil",
    "Analisis Temuan"
  ],

  section_conclusion: [
    "Kesimpulan dan Rekomendasi",
    "Kesimpulan",
    "Simpulan dan Saran"
  ]
}

# ============================================================================
# ESCALATING PROBABILITY SYSTEM
# ============================================================================
# Semakin lama tidak diupdate, semakin tinggi probabilitas rotate

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
# HELPER FUNCTIONS
# ============================================================================

def detect_object_type(frontmatter)
  title = frontmatter['title'].to_s.downcase
  categories = (frontmatter['categories'] || []).map(&:downcase)
  tags = (frontmatter['tags'] || []).map(&:downcase)

  all_text = "#{title} #{categories.join(' ')} #{tags.join(' ')}"

  DESCRIPTION_BLOCKS[:object_types].each do |type, _|
    return type if all_text.include?(type)
  end

  "equipment" # default
end

def generate_description(frontmatter)
  object_type = detect_object_type(frontmatter)
  object_variants = DESCRIPTION_BLOCKS[:object_types][object_type] || [object_type]

  # Extract specific detail from title (e.g., "Caterpillar EP20 / 5SS25AM")
  title = frontmatter['title'].to_s
  object_detail = ""

  # Try to extract brand/model from title
  if title =~ /(?:forklift|boiler|crane|lift|pressure vessel)\s+(.+)/i
    object_detail = " #{$1.strip}"
  end

  intro = DESCRIPTION_BLOCKS[:intro].sample
  service = DESCRIPTION_BLOCKS[:service].sample
  object = object_variants.sample
  closing = DESCRIPTION_BLOCKS[:closing].sample

  "#{intro} #{service} #{object}#{object_detail} #{closing}."
end

# Check if title is "custom" (contains object-specific info)
# Custom titles should NOT be rotated - only generic titles
def is_generic_title?(title, variants)
  # If title matches one of the generic variants, it's generic
  return true if variants.include?(title)

  # If title is short (< 35 chars) and doesn't contain object names, likely generic
  return true if title.length < 35

  # Otherwise, assume it's custom (has object name, serial number, etc.)
  false
end

def rotate_section_titles(frontmatter)
  changed = false

  SECTION_TITLE_BLOCKS.each do |section_key, variants|
    section = frontmatter[section_key.to_s]
    next unless section.is_a?(Hash) && section['title']

    current_title = section['title']

    # Skip custom titles (those with object-specific info)
    unless is_generic_title?(current_title, variants)
      puts "  #{section_key}: SKIPPED (custom title)" if VERBOSE
      next
    end

    new_title = variants.sample

    if new_title != current_title
      section['title'] = new_title
      changed = true
      puts "  #{section_key}: '#{current_title}' -> '#{new_title}'" if VERBOSE
    end
  end

  changed
end

def load_rotation_log
  return {} unless File.exist?(LOG_FILE)
  JSON.parse(File.read(LOG_FILE))
rescue
  {}
end

def save_rotation_log(log)
  File.write(LOG_FILE, JSON.pretty_generate(log))
end

def extract_frontmatter(content)
  if content =~ /\A---\s*\n(.*?)\n---\s*\n/m
    [YAML.safe_load($1, permitted_classes: [Date, Time]), $']
  else
    [nil, content]
  end
end

def rebuild_content(frontmatter, body)
  "---\n#{frontmatter.to_yaml.sub(/\A---\n/, '')}---\n#{body}"
end

# ============================================================================
# MAIN ROTATION LOGIC
# ============================================================================

def rotate_post(file_path, rotation_log)
  filename = File.basename(file_path)
  content = File.read(file_path)

  frontmatter, body = extract_frontmatter(content)
  return nil unless frontmatter

  # Check layout - only process inspection reports
  layout = frontmatter['layout'].to_s
  unless layout.include?('inspection-report') || layout.include?('riksa-uji')
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

  changes = []

  # 1. Rotate description
  old_desc = frontmatter['description']
  new_desc = generate_description(frontmatter)
  if old_desc != new_desc
    frontmatter['description'] = new_desc
    changes << "description"
    puts "  description: rotated" if VERBOSE
  end

  # 2. Rotate section titles
  if rotate_section_titles(frontmatter)
    changes << "section_titles"
  end

  return nil if changes.empty?

  # Write back
  unless DRY_RUN
    new_content = rebuild_content(frontmatter, body)
    File.write(file_path, new_content)
  end

  {
    file: filename,
    date: Date.today.to_s,
    changes: changes
  }
end

# ============================================================================
# MAIN EXECUTION
# ============================================================================

puts "=" * 60
puts "  Frontmatter Rotation Script"
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
      'changes' => result[:changes]
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
    puts "  - #{r[:file]} (#{r[:changes].join(', ')})"
  end
  puts ""
end

unless DRY_RUN
  save_rotation_log(rotation_log)
  puts "Log saved to: #{LOG_FILE}"
end

if DRY_RUN
  puts ""
  puts "[DRY RUN] No files were modified. Run without --dry-run to apply changes."
end
