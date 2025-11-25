# TODO-1205: JSON Workflow & Automation Tools

**Created**: 2025-11-25
**Priority**: Medium
**Context**: Tools and workflows for managing centralized JSON data structure
**Goal**: Streamline JSON data management with helper scripts and documentation
**Depends On**: TODO-1203 (JSON Node Architecture)

---

## Status Summary

- **Total Tools**: 8
- **Completed**: 0 ❌ (0%)
- **In Progress**: 0 ⚠️ (0%)
- **Not Started**: 8 ❌ (100%)
- **Progress**: 0%

---

## Overview

Managing JSON data manually can be error-prone. This TODO focuses on creating helper tools and workflows to:
- Generate next available IDs safely
- Validate JSON structure
- Calculate aggregate data (ratings)
- Migrate content from YAML to JSON
- Automate common tasks

---

## Helper Scripts to Create

### 1. ❌ scripts/next-id.sh
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Generate next available ID safely

**Features**:
- [ ] Read `_meta.last_*_id` from JSON files
- [ ] Output next available ID
- [ ] Support multiple entity types (node, service, review, etc)
- [ ] Prevent ID collisions

**Usage**:
```bash
./scripts/next-id.sh node
# Output: 157

./scripts/next-id.sh review
# Output: 91
```

**Implementation**:
```bash
#!/bin/bash
# scripts/next-id.sh

ENTITY=$1
FILE="_data/${ENTITY}.json"

if [ ! -f "$FILE" ]; then
  echo "Error: File not found: $FILE"
  exit 1
fi

LAST_ID=$(jq "._meta.last_${ENTITY}_id" "$FILE")
NEXT_ID=$((LAST_ID + 1))

echo $NEXT_ID
```

**Tasks**:
- [ ] Create script file
- [ ] Make executable
- [ ] Test with all entity types
- [ ] Add error handling
- [ ] Document usage

---

### 2. ❌ scripts/validate-json.sh
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Validate JSON syntax and data integrity

**Features**:
- [ ] Check JSON syntax validity
- [ ] Verify no duplicate IDs
- [ ] Verify no duplicate slugs
- [ ] Check foreign key integrity
- [ ] Validate required fields exist
- [ ] Check `_meta` consistency

**Usage**:
```bash
./scripts/validate-json.sh
# Output: ✓ All JSON files valid
# Or: ✗ Error in node.json: Duplicate ID 5
```

**Checks**:
```bash
# 1. Valid JSON syntax
jq empty _data/*.json

# 2. Unique IDs in node.json
jq '.nodes[].id' _data/node.json | sort | uniq -d

# 3. Unique slugs
jq '.nodes[].slug' _data/node.json | sort | uniq -d

# 4. FK integrity (service.category_id exists in category.json)
# ... more checks
```

**Tasks**:
- [ ] Create script file
- [ ] Implement syntax check
- [ ] Implement duplicate ID check
- [ ] Implement FK integrity check
- [ ] Add color output (red=error, green=ok)
- [ ] Document all checks

---

### 3. ❌ scripts/calculate-ratings.sh
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Recalculate aggregate ratings from reviews

**Features**:
- [ ] Read all reviews from `review.json`
- [ ] Group by service_id
- [ ] Calculate average rating
- [ ] Count reviews per star (distribution)
- [ ] Update `rating.json`
- [ ] Update `_meta.last_calculated`

**Usage**:
```bash
./scripts/calculate-ratings.sh
# Output: ✓ Ratings updated for 15 services

./scripts/calculate-ratings.sh --service 1
# Output: ✓ Rating updated for service 1: 4.8 (15 reviews)
```

**Calculation**:
```bash
# For service_id = 1
# Reviews: [5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 3, 5, 5, 5]
# Average: 4.8
# Distribution: 5★:12, 4★:2, 3★:1, 2★:0, 1★:0
```

**Tasks**:
- [ ] Create script file
- [ ] Implement rating calculation
- [ ] Implement distribution calculation
- [ ] Update rating.json atomically
- [ ] Add dry-run mode
- [ ] Test with various review sets
- [ ] Document usage

---

### 4. ❌ scripts/migrate-service.sh
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Convert .md service file to JSON entries

**Features**:
- [ ] Read YAML frontmatter from .md file
- [ ] Generate node.json entry
- [ ] Generate node--service.json entry
- [ ] Assign next available IDs
- [ ] Update `_meta` counters
- [ ] Preserve all data fields
- [ ] Backup original file

**Usage**:
```bash
./scripts/migrate-service.sh _services/riksa-uji-forklift.md
# Output:
# ✓ Created node entry (ID: 157)
# ✓ Created service entry (node_id: 157)
# ✓ Updated _meta counters
# ✓ Backed up to _services/_archive/riksa-uji-forklift.md
```

**Tasks**:
- [ ] Create script file
- [ ] Parse YAML frontmatter
- [ ] Map YAML fields to JSON structure
- [ ] Implement ID generation
- [ ] Add backup functionality
- [ ] Add dry-run mode
- [ ] Test with sample service
- [ ] Document field mapping

---

### 5. ❌ scripts/add-service.sh
**Status**: Not Started
**Priority**: LOW
**Purpose**: Interactive wizard to add new service

**Features**:
- [ ] Interactive prompts for service data
- [ ] Validate inputs
- [ ] Generate IDs automatically
- [ ] Add to node.json
- [ ] Add to node--service.json
- [ ] Update _meta
- [ ] Create placeholder .md file (optional)

**Usage**:
```bash
./scripts/add-service.sh

# Prompts:
# Service title: Riksa Uji Crane
# Slug (auto: riksa-uji-crane): [Enter]
# Category ID: 3
# Description: Inspeksi crane profesional...
# ...
# ✓ Service created with ID: 158
```

**Tasks**:
- [ ] Create script file
- [ ] Implement interactive prompts
- [ ] Add input validation
- [ ] Generate JSON entries
- [ ] Update files atomically
- [ ] Add confirmation step
- [ ] Test workflow
- [ ] Document usage

---

### 6. ❌ scripts/add-review.sh
**Status**: Not Started
**Priority**: LOW
**Purpose**: Interactive wizard to add new review

**Features**:
- [ ] Prompt for service_id
- [ ] Prompt for review details
- [ ] Validate rating (1-5)
- [ ] Add to review.json
- [ ] Trigger rating recalculation
- [ ] Update _meta

**Usage**:
```bash
./scripts/add-review.sh

# Prompts:
# Service ID: 1
# Author name: PT. Example
# Rating (1-5): 5
# Review title: Great Service!
# Review content: Very professional team...
# Verified (y/n): y
# ✓ Review added (ID: 92)
# ✓ Ratings recalculated
```

**Tasks**:
- [ ] Create script file
- [ ] Implement prompts
- [ ] Validate inputs
- [ ] Add review to JSON
- [ ] Call calculate-ratings.sh
- [ ] Test workflow
- [ ] Document usage

---

### 7. ❌ scripts/backup-json.sh
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Backup JSON data files before editing

**Features**:
- [ ] Copy all `_data/*.json` to backup directory
- [ ] Timestamp backup folder
- [ ] Compress backups
- [ ] Keep last N backups (e.g., 10)
- [ ] Restore functionality

**Usage**:
```bash
./scripts/backup-json.sh
# Output: ✓ Backup created: _data/_backups/2025-11-25_103000/

./scripts/backup-json.sh --restore 2025-11-25_103000
# Output: ✓ Restored from backup
```

**Tasks**:
- [ ] Create script file
- [ ] Implement backup logic
- [ ] Add restore functionality
- [ ] Auto-cleanup old backups
- [ ] Test backup/restore
- [ ] Document usage

---

### 8. ❌ scripts/json-stats.sh
**Status**: Not Started
**Priority**: LOW
**Purpose**: Display statistics about JSON data

**Features**:
- [ ] Count nodes by type
- [ ] Count services by category
- [ ] Count articles
- [ ] Count reviews
- [ ] Average ratings
- [ ] Data completeness metrics

**Usage**:
```bash
./scripts/json-stats.sh

# Output:
# JSON Data Statistics
# =====================
# Nodes:           157 (services: 45, articles: 12, categories: 8)
# Reviews:         89 (avg rating: 4.7)
# Comments:        23
# Last updated:    2025-11-25
```

**Tasks**:
- [ ] Create script file
- [ ] Implement stat calculations
- [ ] Format output nicely
- [ ] Add color for readability
- [ ] Test with various data states
- [ ] Document usage

---

## Workflows & Documentation

### 9. ❌ docs/JSON-WORKFLOW.md
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Document JSON data management workflows

**Contents**:
- [ ] How to add a new service
- [ ] How to update a service
- [ ] How to add a review
- [ ] How to recalculate ratings
- [ ] How to validate data
- [ ] Common troubleshooting
- [ ] Best practices
- [ ] ID management guide

**Tasks**:
- [ ] Create documentation file
- [ ] Write step-by-step workflows
- [ ] Add examples
- [ ] Add troubleshooting section
- [ ] Include script usage
- [ ] Review for clarity

---

### 10. ❌ docs/JSON-SCHEMA.md
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Document JSON data schema and relationships

**Contents**:
- [ ] Schema for each JSON file
- [ ] Field descriptions
- [ ] Required vs optional fields
- [ ] Data types
- [ ] Foreign key relationships
- [ ] Example entries
- [ ] Validation rules

**Tasks**:
- [ ] Create documentation file
- [ ] Document all schemas
- [ ] Add ER diagram
- [ ] Add examples
- [ ] Document constraints
- [ ] Review for completeness

---

## Implementation Plan

### Phase 1: Essential Tools (Week 1)
**Goal**: Core management tools

- [ ] Create `next-id.sh`
- [ ] Create `validate-json.sh`
- [ ] Create `backup-json.sh`
- [ ] Test all three tools
- [ ] Document usage
- [ ] Commit Phase 1

**Deliverable**: Basic JSON management toolkit

---

### Phase 2: Automation (Week 2)
**Goal**: Automate common tasks

- [ ] Create `calculate-ratings.sh`
- [ ] Create `migrate-service.sh`
- [ ] Test migration workflow
- [ ] Document workflows
- [ ] Commit Phase 2

**Deliverable**: Migration and rating automation

---

### Phase 3: Interactive Tools (Week 3)
**Goal**: User-friendly wizards

- [ ] Create `add-service.sh`
- [ ] Create `add-review.sh`
- [ ] Create `json-stats.sh`
- [ ] Test interactive workflows
- [ ] Commit Phase 3

**Deliverable**: Interactive data entry

---

### Phase 4: Documentation (Week 4)
**Goal**: Complete documentation

- [ ] Create `JSON-WORKFLOW.md`
- [ ] Create `JSON-SCHEMA.md`
- [ ] Add examples and screenshots
- [ ] Review documentation
- [ ] Commit Phase 4

**Deliverable**: Complete JSON documentation

---

## Workflow Examples

### Workflow 1: Add New Service

```bash
# 1. Backup current data
./scripts/backup-json.sh

# 2. Get next available IDs
NODE_ID=$(./scripts/next-id.sh node)
echo "Next node ID: $NODE_ID"

# 3. Edit node.json - Add entry
# {
#   "id": 157,
#   "title": "Riksa Uji Crane",
#   "slug": "riksa-uji-crane",
#   "type": "service",
#   "status": "published"
# }

# 4. Edit node--service.json - Add entry
# {
#   "node_id": 157,
#   "category_id": 3,
#   "description": "...",
#   ...
# }

# 5. Update _meta.last_node_id to 157

# 6. Validate
./scripts/validate-json.sh

# 7. Rebuild Jekyll
./rebuild.sh

# 8. Test service page
# Visit: /layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-crane/

# 9. Commit
git add _data/
git commit -m "Add new service: Riksa Uji Crane"
```

---

### Workflow 2: Add Review

```bash
# 1. Backup
./scripts/backup-json.sh

# 2. Use interactive tool
./scripts/add-review.sh
# (follows prompts)

# 3. Validate
./scripts/validate-json.sh

# 4. Rebuild
./rebuild.sh

# 5. Test review display

# 6. Commit
git add _data/review.json _data/rating.json
git commit -m "Add review for service ID 1"
```

---

### Workflow 3: Migrate Existing Service

```bash
# 1. Backup
./scripts/backup-json.sh

# 2. Migrate service
./scripts/migrate-service.sh _services/riksa-uji-forklift.md

# 3. Validate
./scripts/validate-json.sh

# 4. Test rendering
./rebuild.sh

# 5. Compare old vs new
# Open old: /layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/
# Verify: Content matches

# 6. Commit
git add _data/
git add _services/_archive/riksa-uji-forklift.md
git commit -m "Migrate riksa-uji-forklift to JSON"
```

---

### Workflow 4: Update Rating

```bash
# After adding/editing reviews:

./scripts/calculate-ratings.sh

# Or for specific service:
./scripts/calculate-ratings.sh --service 1

# Check updated rating.json
cat _data/rating.json | jq '.ratings[] | select(.service_id == 1)'

# Rebuild and test
./rebuild.sh
```

---

## Validation Rules

### Node Validation
- [ ] ID is unique across all nodes
- [ ] Slug is unique across all nodes
- [ ] Type is valid enum: `service`, `article`, `category`, `page`
- [ ] Status is valid enum: `published`, `draft`, `archived`
- [ ] Title is not empty
- [ ] Dates are valid ISO 8601

### Service Validation
- [ ] node_id references valid node
- [ ] category_id references valid category
- [ ] parent_service_id is null or references valid service
- [ ] Permalink starts with `/`
- [ ] Icon class is valid Bootstrap icon
- [ ] Required fields: node_id, description, permalink

### Review Validation
- [ ] service_id references valid service
- [ ] Rating is integer 1-5
- [ ] Author name is not empty
- [ ] Status is valid: `pending`, `approved`, `rejected`
- [ ] Date is valid ISO 8601

### Rating Validation
- [ ] service_id references valid service
- [ ] Average is between 1.0 and 5.0
- [ ] Total reviews matches review count in review.json
- [ ] Distribution sums to total_reviews
- [ ] Distribution only contains 1-5 stars

---

## Error Handling

### Common Errors

**Error 1: Duplicate ID**
```
✗ Error in node.json: Duplicate ID 5 found
  - Line 45: {"id": 5, "title": "Service A"}
  - Line 123: {"id": 5, "title": "Service B"}

Fix: Change one ID to next available (./scripts/next-id.sh node)
```

**Error 2: Invalid FK**
```
✗ Error in node--service.json: Invalid category_id
  - Service ID 25 references category_id: 99
  - Category 99 does not exist in category.json

Fix: Update category_id to valid value or add category 99
```

**Error 3: Missing _meta**
```
✗ Error in review.json: _meta.last_review_id not found

Fix: Add _meta object with last_review_id field
```

---

## Testing Checklist

### Per Script
- [ ] Runs without errors
- [ ] Handles missing files gracefully
- [ ] Validates input parameters
- [ ] Provides helpful error messages
- [ ] Has --help flag
- [ ] Has dry-run mode (where applicable)
- [ ] Documented with usage examples

### Integration Tests
- [ ] All scripts work together
- [ ] Validate-json catches errors
- [ ] Backup/restore works
- [ ] Migration preserves data
- [ ] Rating calculation accurate
- [ ] ID generation no collisions

---

## Best Practices

### 1. Always Backup Before Editing
```bash
./scripts/backup-json.sh
```

### 2. Validate After Changes
```bash
./scripts/validate-json.sh
```

### 3. Use next-id.sh for IDs
Don't guess IDs manually

### 4. One Change at a Time
Make atomic commits per service/review

### 5. Test After Migration
Verify pages render correctly

### 6. Keep _meta Updated
Update `last_updated` timestamp

### 7. Use Git Branches
Create feature branch for large migrations

### 8. Document Breaking Changes
Note any schema changes in commits

---

## Progress Tracking

### Week 1: Essential Tools
**Target Date**: 2025-12-02

- [ ] next-id.sh
- [ ] validate-json.sh
- [ ] backup-json.sh

**Status**: Not Started
**Completion**: 0/3

---

### Week 2: Automation
**Target Date**: 2025-12-09

- [ ] calculate-ratings.sh
- [ ] migrate-service.sh

**Status**: Not Started
**Completion**: 0/2

---

### Week 3: Interactive Tools
**Target Date**: 2025-12-16

- [ ] add-service.sh
- [ ] add-review.sh
- [ ] json-stats.sh

**Status**: Not Started
**Completion**: 0/3

---

### Week 4: Documentation
**Target Date**: 2025-12-23

- [ ] JSON-WORKFLOW.md
- [ ] JSON-SCHEMA.md

**Status**: Not Started
**Completion**: 0/2

---

## Related TODOs

- **TODO-1203**: JSON Node Architecture (prerequisite)
- **TODO-1204**: Template Migration (parallel work)
- **TODO-1206**: Bulk content migration (uses these tools)

---

## Notes

- **Shell scripts** preferred for simplicity (no extra dependencies)
- **jq** required for JSON manipulation
- **Test thoroughly** before bulk operations
- **Document edge cases** in script comments
- **Keep scripts simple** - don't over-engineer
- **Version control** for scripts too

---

## Dependencies

### Required Tools
- `bash` 4.0+
- `jq` (JSON processor)
- `git` (version control)

### Installation
```bash
# Ubuntu/Debian
sudo apt install jq

# macOS
brew install jq
```

---

## References

- **jq Documentation**: https://stedolan.github.io/jq/
- **Bash Scripting Guide**: https://www.gnu.org/software/bash/manual/
- **JSON Specification**: https://www.json.org/

---

**Last Updated**: 2025-11-25
**Next Review**: After TODO-1203 Phase 1
**Owner**: Development Team
