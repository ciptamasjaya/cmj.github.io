#!/usr/bin/env ruby
#
# propagate-timestamp.rb
# Robot untuk propagasi timestamp ke parent/listing pages
#
# Usage: ruby scripts/propagate-timestamp.rb [--dry-run]
#
# Logic:
# 1. Cek timestamp terbaru dari _posts/ dan _services/
# 2. Jika ada content yang diupdate hari ini oleh robot lain
# 3. Update timestamp di parent/listing pages:
#    - index.html (homepage)
#    - blog.html (posts listing)
#    - layanan.html (services listing)
#    - category pages di _services/
#

require 'yaml'
require 'fileutils'
require 'date'
require 'json'

# ============================================================================
# CONFIGURATION
# ============================================================================

SCRIPT_DIR = File.expand_path(__dir__)
PROJECT_ROOT = File.expand_path('..', SCRIPT_DIR)

# Content directories to check for updates
CONTENT_DIRS = [
  File.join(PROJECT_ROOT, '_posts'),
  File.join(PROJECT_ROOT, '_services')
]

# Parent/listing pages to propagate timestamp to
LISTING_PAGES = [
  File.join(PROJECT_ROOT, 'index.html'),
  File.join(PROJECT_ROOT, 'blog.html'),
  File.join(PROJECT_ROOT, 'layanan.html')
]

# Category/subcategory pages (top level in _services)
CATEGORY_DIRS = [
  File.join(PROJECT_ROOT, '_services')
]

LOG_FILE = File.join(PROJECT_ROOT, '_data', 'propagate-timestamp-log.json')

DRY_RUN = ARGV.include?('--dry-run')
VERBOSE = ARGV.include?('--verbose') || ARGV.include?('-v')

# ============================================================================
# HELPER FUNCTIONS
# ============================================================================

def extract_frontmatter(content)
  if content =~ /\A---\s*\n(.*?)\n---\s*\n/m
    yaml_content = $1
    body = $'
    [YAML.safe_load(yaml_content, permitted_classes: [Date, Time]), body]
  else
    [nil, content]
  end
rescue => e
  puts "  Error parsing YAML: #{e.message}" if VERBOSE
  [nil, content]
end

def rebuild_content(frontmatter, body)
  "---\n#{YAML.dump(frontmatter).sub(/\A---\n/, '')}---\n#{body}"
end

def get_file_mtime(file_path)
  return nil unless File.exist?(file_path)
  File.mtime(file_path)
end

def load_log
  return {} unless File.exist?(LOG_FILE)
  JSON.parse(File.read(LOG_FILE))
rescue
  {}
end

def save_log(log)
  FileUtils.mkdir_p(File.dirname(LOG_FILE))
  File.write(LOG_FILE, JSON.pretty_generate(log))
end

# ============================================================================
# TIMESTAMP CHECKING
# ============================================================================

# Get the most recent modification time from content directories
def get_latest_content_mtime
  latest = nil
  latest_file = nil

  CONTENT_DIRS.each do |dir|
    next unless Dir.exist?(dir)

    Dir.glob(File.join(dir, '**', '*.md')).each do |file|
      mtime = File.mtime(file)
      if latest.nil? || mtime > latest
        latest = mtime
        latest_file = file
      end
    end
  end

  [latest, latest_file]
end

# Check if content was updated today (by robots)
def content_updated_today?(latest_mtime)
  return false if latest_mtime.nil?
  latest_mtime.to_date == Date.today
end

# ============================================================================
# TIMESTAMP PROPAGATION
# ============================================================================

def update_page_timestamp(file_path, reason)
  return nil unless File.exist?(file_path)

  filename = File.basename(file_path)
  content = File.read(file_path)

  frontmatter, body = extract_frontmatter(content)

  # For HTML files without frontmatter, just touch the file
  if frontmatter.nil?
    unless DRY_RUN
      FileUtils.touch(file_path)
    end
    puts "  Touched: #{filename} (no frontmatter)" if VERBOSE
    return { file: filename, method: 'touch', reason: reason }
  end

  # Update _content_refreshed_at field
  old_value = frontmatter['_content_refreshed_at']
  new_value = Time.now.strftime('%Y-%m-%dT%H:%M:%S%z')

  frontmatter['_content_refreshed_at'] = new_value

  unless DRY_RUN
    new_content = rebuild_content(frontmatter, body)
    File.write(file_path, new_content)
  end

  puts "  Updated: #{filename}" if VERBOSE
  puts "    _content_refreshed_at: #{old_value || 'nil'} -> #{new_value}" if VERBOSE

  { file: filename, method: 'frontmatter', reason: reason, old: old_value, new: new_value }
end

def find_category_pages
  pages = []

  CATEGORY_DIRS.each do |dir|
    next unless Dir.exist?(dir)

    # Find category index files (direct children with same name as folder)
    Dir.glob(File.join(dir, '*')).each do |subdir|
      next unless File.directory?(subdir)

      dirname = File.basename(subdir)
      # Look for index file like: riksa-uji-pesawat-angkat-angkut/riksa-uji-pesawat-angkat-angkut.md
      index_file = File.join(subdir, "#{dirname}.md")
      pages << index_file if File.exist?(index_file)

      # Also check for subcategory pages
      Dir.glob(File.join(subdir, '*')).each do |sub_subdir|
        next unless File.directory?(sub_subdir)

        sub_dirname = File.basename(sub_subdir)
        sub_index = File.join(sub_subdir, "#{sub_dirname}.md")
        pages << sub_index if File.exist?(sub_index)
      end
    end
  end

  pages
end

# ============================================================================
# MAIN EXECUTION
# ============================================================================

puts "=" * 60
puts "  Timestamp Propagation Robot"
puts "  Mode: #{DRY_RUN ? 'DRY RUN' : 'LIVE'}"
puts "=" * 60
puts ""

# Check latest content modification
latest_mtime, latest_file = get_latest_content_mtime

if latest_mtime.nil?
  puts "No content files found."
  exit 0
end

puts "Latest content update:"
puts "  File: #{File.basename(latest_file)}"
puts "  Time: #{latest_mtime}"
puts "  Today: #{content_updated_today?(latest_mtime) ? 'YES' : 'NO'}"
puts ""

# Load previous log
log = load_log
last_propagation = log['last_propagation'] ? Date.parse(log['last_propagation']) : nil

# Check if we should propagate
should_propagate = false
reason = nil

if content_updated_today?(latest_mtime)
  if last_propagation == Date.today
    puts "Already propagated today. Skipping."
    puts "(Last propagation: #{last_propagation})"
    exit 0
  end
  should_propagate = true
  reason = "Content updated: #{File.basename(latest_file)}"
end

unless should_propagate
  puts "No content updates today. Nothing to propagate."
  exit 0
end

puts "Propagating timestamps..."
puts "Reason: #{reason}"
puts ""

updated_pages = []

# Update listing pages
puts "Listing pages:"
LISTING_PAGES.each do |page|
  result = update_page_timestamp(page, reason)
  updated_pages << result if result
end

# Update category pages
puts ""
puts "Category pages:"
category_pages = find_category_pages
category_pages.each do |page|
  result = update_page_timestamp(page, reason)
  updated_pages << result if result
end

# Summary
puts ""
puts "=" * 60
puts "  Summary"
puts "=" * 60
puts ""
puts "Updated: #{updated_pages.length} pages"

if updated_pages.any?
  puts ""
  puts "Pages updated:"
  updated_pages.each do |p|
    puts "  - #{p[:file]} (#{p[:method]})"
  end
end

# Save log
unless DRY_RUN
  log['last_propagation'] = Date.today.to_s
  log['last_reason'] = reason
  log['pages_updated'] = updated_pages.map { |p| p[:file] }
  save_log(log)
  puts ""
  puts "Log saved to: #{LOG_FILE}"
end

if DRY_RUN
  puts ""
  puts "[DRY RUN] No files were modified."
end
