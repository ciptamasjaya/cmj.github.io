#!/usr/bin/env ruby
#
# rotate-synonyms.rb
# Auto-rotate kata dengan sinonim untuk trigger lastmod / content freshness
#
# Usage: ruby scripts/rotate-synonyms.rb [--dry-run]
#
# Strategy: Ganti kata-kata umum dengan sinonimnya
# - "dilakukan" ↔ "dilaksanakan" ↔ "dijalankan"
# - "memiliki" ↔ "mempunyai" ↔ "punya"
# - "dan" ↔ "serta"
# - dll
#

require 'yaml'
require 'fileutils'
require 'date'
require 'json'

# ============================================================================
# CONFIGURATION
# ============================================================================

POSTS_DIR = File.expand_path('../../_posts', __FILE__)
LOG_FILE = File.expand_path('../../_data/synonym-rotation-log.json', __FILE__)

DRY_RUN = ARGV.include?('--dry-run')
VERBOSE = ARGV.include?('--verbose') || ARGV.include?('-v')

# ============================================================================
# SYNONYM GROUPS
# ============================================================================
# Setiap group berisi kata-kata yang bisa saling menggantikan
# Format: [[kata1, kata2, kata3], [kata1, kata2], ...]

SYNONYM_GROUPS = [
  # Verba umum
  ["dilakukan", "dilaksanakan", "dijalankan"],
  ["melakukan", "melaksanakan", "menjalankan"],
  ["memiliki", "mempunyai"],
  ["menggunakan", "memakai", "memanfaatkan"],
  ["memastikan", "menjamin", "memverifikasi"],
  ["menunjukkan", "memperlihatkan", "menampilkan"],
  ["memenuhi", "mencukupi"],
  ["mencakup", "meliputi", "termasuk"],
  ["bertujuan", "dimaksudkan", "ditujukan"],
  ["diperlukan", "dibutuhkan"],
  ["ditemukan", "dijumpai", "didapati"],
  ["terdapat", "ada", "dijumpai"],
  ["digunakan", "dipakai", "dimanfaatkan"],
  ["diperiksa", "dicek", "diinspeksi"],
  ["diuji", "dites", "diverifikasi"],
  ["berfungsi", "bekerja", "beroperasi"],

  # Konjungsi
  ["dan", "serta"],
  ["atau", "maupun"],
  ["karena", "sebab", "lantaran"],
  ["sehingga", "hingga", "sampai"],
  ["agar", "supaya"],
  ["namun", "tetapi", "akan tetapi"],
  ["selain", "di samping"],

  # Preposisi
  ["untuk", "guna", "bagi"],
  ["dengan", "secara"],
  ["pada", "di"],
  ["dari", "daripada"],
  ["terhadap", "kepada", "pada"],
  ["mengenai", "tentang", "perihal"],
  ["sesuai", "berdasarkan"],

  # Adjektiva
  ["baik", "bagus"],
  ["penting", "krusial", "vital"],
  ["utama", "pokok", "primer"],
  ["berbagai", "beragam", "bermacam-macam"],
  ["seluruh", "semua", "segenap"],
  ["setiap", "tiap", "masing-masing"],

  # Adverbia
  ["sangat", "amat", "sungguh"],
  ["secara", "dengan cara"],
  ["terutama", "khususnya", "utamanya"],
  ["umumnya", "biasanya", "lazimnya"],

  # Nomina teknis
  ["kondisi", "keadaan", "situasi"],
  ["hasil", "temuan", "outcome"],
  ["proses", "tahapan", "prosedur"],
  ["komponen", "bagian", "elemen"],
  ["peralatan", "alat", "perkakas"],
  ["pemeriksaan", "inspeksi", "pengecekan"],
  ["pengujian", "tes", "uji"],
  ["standar", "kriteria", "acuan"],
  ["batas", "limit", "ambang"],

  # Frasa
  ["dalam rangka", "guna", "untuk"],
  ["oleh karena itu", "karenanya", "maka dari itu"],
  ["di samping itu", "selain itu", "lebih lanjut"],
  ["dengan demikian", "oleh sebab itu", "maka"],
]

# ============================================================================
# ESCALATING PROBABILITY SYSTEM
# ============================================================================

def calculate_rotation_probability(last_rotation_date)
  return 1.0 if last_rotation_date.nil?

  days_since = (Date.today - last_rotation_date).to_i

  case days_since
  when 0..6    then 0.05
  when 7..13   then 0.15
  when 14..20  then 0.30
  when 21..27  then 0.50
  when 28..34  then 0.70
  else              0.90
  end
end

def should_rotate?(last_rotation_date)
  probability = calculate_rotation_probability(last_rotation_date)
  rand < probability
end

# ============================================================================
# SYNONYM ROTATION FUNCTIONS
# ============================================================================

# Build lookup table: word -> [group of synonyms]
def build_synonym_lookup
  lookup = {}
  SYNONYM_GROUPS.each do |group|
    group.each do |word|
      lookup[word.downcase] = group
    end
  end
  lookup
end

SYNONYM_LOOKUP = build_synonym_lookup

# Rotate a word to its next synonym
def rotate_word(word)
  key = word.downcase
  group = SYNONYM_LOOKUP[key]
  return word unless group

  current_index = group.index { |w| w.downcase == key }
  return word unless current_index

  # Get next synonym (wrap around)
  next_index = (current_index + 1) % group.size
  new_word = group[next_index]

  # Preserve capitalization
  if word[0] == word[0].upcase
    new_word = new_word.capitalize
  end

  new_word
end

# Rotate synonyms in a string, limiting changes
def rotate_string(str, max_changes = 3)
  return [str, 0] unless str.is_a?(String)

  changes = 0
  words_changed = []

  # Find all words that have synonyms
  rotatable_words = []
  str.scan(/\b(\w+)\b/) do |match|
    word = match[0]
    if SYNONYM_LOOKUP[word.downcase]
      rotatable_words << word
    end
  end

  # Randomly select which words to rotate (max_changes)
  return [str, 0] if rotatable_words.empty?

  words_to_rotate = rotatable_words.uniq.sample([max_changes, rotatable_words.uniq.size].min)

  new_str = str.dup
  words_to_rotate.each do |word|
    new_word = rotate_word(word)
    if new_word != word
      # Use word boundary to avoid partial replacements
      new_str = new_str.gsub(/\b#{Regexp.escape(word)}\b/, new_word)
      changes += 1
      words_changed << "#{word}→#{new_word}"
    end
  end

  [new_str, changes, words_changed]
end

# ============================================================================
# FRONTMATTER FIELD ROTATORS
# ============================================================================

def rotate_text_fields(frontmatter)
  total_changes = 0
  all_words_changed = []

  # Fields to rotate (text content)
  text_fields = [
    'description',
  ]

  text_fields.each do |field|
    next unless frontmatter[field].is_a?(String)

    old_val = frontmatter[field]
    new_val, changes, words = rotate_string(old_val, 2)

    if changes > 0
      frontmatter[field] = new_val
      total_changes += changes
      all_words_changed += words
      puts "    #{field}: #{words.join(', ')}" if VERBOSE
    end
  end

  # Nested fields in sections (inspection-report layout)
  section_fields = [
    ['section_intro', 'intro'],
    ['section_glossary', 'intro'],
    ['section_visual', 'intro'],
    ['section_visual', 'summary'],
    ['section_operational', 'intro'],
    ['section_operational', 'summary'],
    ['section_technical', 'intro'],
    ['section_technical', 'summary'],
    ['section_ndt', 'intro'],
    ['section_ndt', 'summary'],
    ['section_hydrotest', 'intro'],
    ['section_hydrotest', 'method'],
    ['section_safety_valve', 'intro'],
    ['section_analysis', 'intro'],
    ['section_analysis', 'summary'],
    ['section_conclusion', 'intro'],
    ['section_conclusion', 'summary'],
    # pjk3-city layout
    ['section_hero', 'description'],
    ['section_gallery', 'description'],
    ['section_video', 'description'],
    ['section_company_intro', 'description'],
    ['section_company_intro', 'intro'],
    ['section_services', 'intro'],
    ['section_coverage', 'intro'],
    ['section_faq', 'intro'],
    ['section_cta', 'description'],
  ]

  section_fields.each do |section_key, field_key|
    section = frontmatter[section_key]
    next unless section.is_a?(Hash) && section[field_key].is_a?(String)

    old_val = section[field_key]
    new_val, changes, words = rotate_string(old_val, 2)

    if changes > 0
      section[field_key] = new_val
      total_changes += changes
      all_words_changed += words
      puts "    #{section_key}.#{field_key}: #{words.join(', ')}" if VERBOSE
    end
  end

  # Paragraphs array
  if frontmatter['paragraphs'].is_a?(Array)
    frontmatter['paragraphs'].each_with_index do |para, idx|
      next unless para.is_a?(String)

      old_val = para
      new_val, changes, words = rotate_string(old_val, 2)

      if changes > 0
        frontmatter['paragraphs'][idx] = new_val
        total_changes += changes
        all_words_changed += words
        puts "    paragraphs[#{idx}]: #{words.join(', ')}" if VERBOSE
      end
    end
  end

  # Glossary definitions
  if frontmatter['section_glossary'].is_a?(Hash) &&
     frontmatter['section_glossary']['terms'].is_a?(Array)

    frontmatter['section_glossary']['terms'].each_with_index do |term, idx|
      next unless term['definition'].is_a?(String)

      old_val = term['definition']
      new_val, changes, words = rotate_string(old_val, 1)

      if changes > 0
        term['definition'] = new_val
        total_changes += changes
        all_words_changed += words
        puts "    glossary[#{idx}]: #{words.join(', ')}" if VERBOSE
      end
    end
  end

  [total_changes, all_words_changed]
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
    [YAML.safe_load(yaml_content, permitted_classes: [Date, Time]), body]
  else
    [nil, content]
  end
end

def rebuild_content(frontmatter, body)
  "---\n#{YAML.dump(frontmatter).sub(/\A---\n/, '')}---\n#{body}"
end

# ============================================================================
# MAIN ROTATION LOGIC
# ============================================================================

def rotate_post(file_path, rotation_log)
  filename = File.basename(file_path)
  content = File.read(file_path)

  frontmatter, body = extract_frontmatter(content)
  return nil unless frontmatter

  # Robot Sinonim works on ALL layouts (no filter)
  # Unlike Robot Measurement which only works on inspection-report

  # Check rotation probability
  last_rotation = rotation_log[filename] ? Date.parse(rotation_log[filename]['date']) : nil
  unless should_rotate?(last_rotation)
    probability = calculate_rotation_probability(last_rotation)
    puts "  Skipping #{filename} (probability: #{(probability * 100).to_i}%, dice: no)" if VERBOSE
    return nil
  end

  puts "Processing: #{filename}"

  total_changes, words_changed = rotate_text_fields(frontmatter)

  return nil if total_changes == 0

  puts "  Total changes: #{total_changes} words"

  # Write back
  unless DRY_RUN
    new_content = rebuild_content(frontmatter, body)
    File.write(file_path, new_content)
  end

  {
    file: filename,
    date: Date.today.to_s,
    changes: total_changes,
    words: words_changed.uniq
  }
end

# ============================================================================
# MAIN EXECUTION
# ============================================================================

puts "=" * 60
puts "  Synonym Rotation Script"
puts "  Mode: #{DRY_RUN ? 'DRY RUN' : 'LIVE'}"
puts "=" * 60
puts ""

rotation_log = load_rotation_log
rotated_files = []

posts = Dir.glob(File.join(POSTS_DIR, '*.md')).sort

puts "Found #{posts.length} posts"
puts "Synonym groups: #{SYNONYM_GROUPS.length}"
puts ""

posts.each do |post_path|
  result = rotate_post(post_path, rotation_log)
  if result
    rotated_files << result
    rotation_log[result[:file]] = {
      'date' => result[:date],
      'changes' => result[:changes],
      'words' => result[:words]
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
    puts "    #{r[:changes]} words: #{r[:words].join(', ')}"
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
