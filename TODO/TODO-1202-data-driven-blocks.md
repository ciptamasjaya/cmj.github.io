# TODO-1202: Refactor Reusable Blocks to Data-Driven Architecture

**Created**: 2025-11-22
**Priority**: High
**Context**: Refactoring hardcoded content in `_includes/reusable/` blocks to use YAML data
**Goal**: All 15 reusable blocks fully data-driven with content separated from templates

---

## Status Summary

- **Total Blocks**: 15
- **Already Data-Driven**: 5 ✅ (33%)
- **Needs Refactoring**: 7 ❌ (47%)
- **Partially Done**: 3 ⚠️ (20%)
- **Progress**: 33%

---

## ✅ Already Data-Driven (5 blocks)

1. ✅ **block--blog-preview.html** - Uses `site.posts` (Jekyll native)
2. ✅ **block--breadcrumb.html** - Uses `page.breadcrumbs` frontmatter
3. ✅ **block--service-coverage.html** - Uses `page.service_coverage` frontmatter
4. ✅ **block--service-features.html** - Uses `_data/service_features.yml`
5. ✅ **block--why-choose-us.html** - Uses `_data/services.yml` (features array)

---

## ❌ Needs Refactoring (7 blocks)

### HIGH PRIORITY (3 blocks)

#### 1. ❌ block--commitment.html
**Status**: Completely hardcoded
**Content**: 8 commitment cards (Kualitas Terjamin, Profesionalisme, Transparansi, etc.)
**Data Source**: `_data/commitments.yml`
**Priority**: HIGH - High reusability across pages

**YAML Structure**:
```yaml
# _data/commitments.yml
header:
  title: "Komitmen Kami"
  icon: "bi-hand-thumbs-up"
  icon_color: "text-success"
  description: "Kami berkomitmen memberikan layanan terbaik..."

items:
  - title: "Kualitas Terjamin"
    description: "Layanan berkualitas dengan standar internasional..."
    icon: "bi-award"
    icon_color: "text-primary"
  # ... 7 more items
```

---

#### 2. ❌ block--faq-contact.html
**Status**: Completely hardcoded
**Content**: 8 FAQ items + CTA section
**Data Source**: `_data/faq_contact.yml`
**Priority**: HIGH - High content volume, frequently updated

**YAML Structure**:
```yaml
# _data/faq_contact.yml
header:
  title: "Pertanyaan yang Sering Diajukan"
  icon: "bi-question-circle"
  description: "Temukan jawaban untuk pertanyaan umum..."

faqs:
  - id: "faq1"
    icon: "bi-clock-history"
    question: "Berapa lama waktu yang dibutuhkan untuk mendapat respon?"
    answer: "Kami berkomitmen memberikan respon maksimal <strong>1x24 jam</strong>..."
    default_open: true
  # ... 7 more FAQs

cta:
  title: "Masih Ada Pertanyaan?"
  description: "Tim kami siap membantu..."
  buttons:
    - text: "Chat WhatsApp"
      icon: "bi-whatsapp"
      type: "whatsapp"
```

---

#### 3. ❌ block--service-intro.html
**Status**: Completely hardcoded
**Content**: Heading, lead text, 3 feature badges, CTA button, 4 info cards
**Data Source**: `_data/service_intro.yml`
**Priority**: HIGH - Frequently used on service pages

**YAML Structure**:
```yaml
# _data/service_intro.yml
heading:
  title: "Layanan Riksa Uji K3 Profesional"
  icon: "bi-shield-check"
  icon_color: "text-primary"

content:
  lead_template: "<strong>{company_name}</strong> adalah penyedia jasa..."
  description: "Kami menyediakan layanan riksa uji yang lengkap..."

feature_badges:
  - icon: "bi-patch-check-fill"
    icon_color: "text-success"
    text: "Sertifikat Resmi"
  # ... 2 more badges

info_cards:
  - icon: "bi-geo-alt-fill"
    title: "Seluruh Indonesia"
    subtitle: "Area Layanan"
  # ... 3 more cards
```

---

### MEDIUM PRIORITY (3 blocks)

#### 4. ⚠️ block--business-info.html
**Status**: Partially done (uses `site.business.*` but labels hardcoded)
**Content**: 12 field labels, 4 certification badges, 3 footer stats
**Data Source**: `_data/business_info.yml`
**Priority**: MEDIUM

**YAML Structure**:
```yaml
# _data/business_info.yml
header:
  title: "Informasi Perusahaan"
  icon: "bi-building"

fields:
  company_name:
    label: "Nama Perusahaan"
    icon: "bi-building-fill"
    icon_color: "text-primary"
  phone:
    label: "Telepon"
    icon: "bi-telephone-fill"
    icon_color: "text-info"
  # ... more fields

certifications:
  title: "Sertifikasi & Legalitas"
  badges:
    - text: "Kemnaker RI"
      color: "primary"
    # ... 3 more badges
```

---

#### 5. ⚠️ block--company-profile.html
**Status**: Partially done (uses `site.business.*` but labels hardcoded)
**Content**: Section headers, 9 field labels
**Data Source**: `_data/company_profile.yml`
**Priority**: MEDIUM

**YAML Structure**:
```yaml
# _data/company_profile.yml
header:
  title: "Profil Perusahaan"
  icon: "bi-building"

sections:
  information:
    title: "Informasi Perusahaan"
    icon: "bi-info-circle"
    fields:
      - key: "name"
        label: "Nama Perusahaan"
        icon: "bi-building"
  # ... more sections
```

---

#### 6. ⚠️ block--quick-contact-form.html
**Status**: Partially done (uses `site.business.*` but form labels hardcoded)
**Content**: 9 form field labels, 6 service options, button text
**Data Source**: `_data/contact_form.yml`
**Priority**: MEDIUM

**YAML Structure**:
```yaml
# _data/contact_form.yml
header:
  title: "Hubungi Kami"
  icon: "bi-envelope-paper"

form_fields:
  name:
    label: "Nama Lengkap"
    icon: "bi-person"
    placeholder: "Masukkan nama lengkap Anda"
    required: true
    error_message: "Nama lengkap wajib diisi"
  # ... more fields

  service:
    label: "Layanan yang Diminati"
    options:
      - "Riksa Uji Pesawat Angkat & Angkut"
      # ... more options
```

---

### LOW PRIORITY (4 blocks)

#### 7. ⚠️ block--contact-cards.html
**Status**: Partially done (uses `site.business.*`, only UI text hardcoded)
**Content**: Section header, 3 card descriptions, button text
**Data Source**: `_data/contact_cards.yml`
**Priority**: LOW

---

#### 8. ⚠️ block--cta-contact.html
**Status**: Partially done (similar to contact-cards)
**Content**: Heading, description, button text, footer info labels
**Data Source**: `_data/cta_contact.yml`
**Priority**: LOW

---

#### 9. ✅ block--service-list.html
**Status**: 95% data-driven (only section header hardcoded)
**Content**: Section header text
**Data Source**: Enhance `_data/services.yml`
**Priority**: LOW - Already mostly done

---

#### 10. ✅ block--services-grid.html
**Status**: 90% data-driven (only section header hardcoded)
**Content**: Section header and feature badges
**Data Source**: Enhance `_data/services.yml`
**Priority**: LOW - Already mostly done

---

## Implementation Plan

### Phase 1: HIGH Priority (Week 1)
**Goal**: Refactor 3 high-impact blocks

- [ ] Create `_data/commitments.yml`
- [ ] Refactor `block--commitment.html`
- [ ] Create `_data/faq_contact.yml`
- [ ] Refactor `block--faq-contact.html`
- [ ] Create `_data/service_intro.yml`
- [ ] Refactor `block--service-intro.html`
- [ ] Update documentation headers
- [ ] Test all 3 blocks
- [ ] Commit Phase 1

**Deliverable**: 3 blocks fully data-driven

---

### Phase 2: MEDIUM Priority (Week 2)
**Goal**: Refactor 3 partially-done blocks

- [ ] Create `_data/business_info.yml`
- [ ] Refactor `block--business-info.html`
- [ ] Create `_data/company_profile.yml`
- [ ] Refactor `block--company-profile.html`
- [ ] Create `_data/contact_form.yml`
- [ ] Refactor `block--quick-contact-form.html`
- [ ] Sync service options with `services.yml`
- [ ] Update documentation headers
- [ ] Test all 3 blocks
- [ ] Commit Phase 2

**Deliverable**: 3 more blocks fully data-driven

---

### Phase 3: LOW Priority (Week 3 - Optional)
**Goal**: Polish remaining blocks

- [ ] Create `_data/contact_cards.yml`
- [ ] Refactor `block--contact-cards.html`
- [ ] Create `_data/cta_contact.yml`
- [ ] Refactor `block--cta-contact.html`
- [ ] Enhance `_data/services.yml` with headers
- [ ] Update `block--service-list.html`
- [ ] Update `block--services-grid.html`
- [ ] Update documentation headers
- [ ] Test all 4 blocks
- [ ] Commit Phase 3

**Deliverable**: All 15 blocks 100% data-driven

---

## YAML Data Files Structure

### New Files to Create

1. **_data/commitments.yml** (HIGH)
   - 8 commitment items
   - Section header

2. **_data/faq_contact.yml** (HIGH)
   - 8 FAQ items
   - CTA section

3. **_data/service_intro.yml** (HIGH)
   - Heading and content
   - 3 feature badges
   - 4 info cards
   - CTA button

4. **_data/business_info.yml** (MEDIUM)
   - Field labels (12 items)
   - Certification badges (4 items)
   - Footer stats (3 items)

5. **_data/company_profile.yml** (MEDIUM)
   - Section headers
   - Field labels (9 items)

6. **_data/contact_form.yml** (MEDIUM)
   - Form field labels
   - Service options
   - Validation messages

7. **_data/contact_cards.yml** (LOW)
   - 3 contact card descriptions
   - Additional info section

8. **_data/cta_contact.yml** (LOW)
   - Heading and description
   - Button configuration

### Enhanced Files

9. **_data/services.yml** (Enhancement)
   - Add section headers
   - Add feature badge data

---

## Design Principles

### 1. Consistent YAML Structure
All data files should follow similar patterns:
```yaml
header:
  title: "Section Title"
  icon: "bi-icon-name"
  icon_color: "text-primary"
  description: "Section description"

items: # or cards, faqs, fields, etc.
  - title: "Item Title"
    description: "Item description"
    icon: "bi-icon-name"
    icon_color: "text-primary"

cta: # optional call-to-action section
  title: "CTA Title"
  buttons:
    - text: "Button Text"
      type: "button-type"
```

### 2. Template Variable Support
Support dynamic variables in YAML strings:
- `{company_name}` → `site.business.name`
- `{phone}` → `site.business.phone`
- `{email}` → `site.business.email`
- `{whatsapp}` → `site.business.whatsapp`
- `{founding_year}` → `site.business.foundingDate | date: "%Y"`

### 3. CSS Class Support
Follow `block--service-coverage.html` pattern:
```yaml
css_class:
  section: "custom-class"
  header: "header-class"
  item: "item-class"
```
Classes are **appended** to defaults, not replaced.

### 4. Icon Consistency
Use Bootstrap Icons with consistent color classes:
- `text-primary` (blue)
- `text-success` (green)
- `text-danger` (red)
- `text-warning` (yellow)
- `text-info` (cyan)

### 5. Documentation Headers
Every refactored block must update its header comment:
```liquid
{% comment %}
Data Source:
------------
Data YAML berasal dari:
- _data/[filename].yml

Atau bisa juga dari:
- page.[key] (frontmatter)
{% endcomment %}
```

---

## Testing Checklist

For each refactored block:
- [ ] No hardcoded content remains
- [ ] All text from YAML data
- [ ] Template variables work correctly
- [ ] CSS classes append to defaults
- [ ] Icons and colors display correctly
- [ ] Responsive on all screen sizes
- [ ] No console errors
- [ ] Documentation header updated
- [ ] Works with optional parameters
- [ ] Fallback values for missing data

---

## Benefits

### Maintainability
- ✅ Content updates in single YAML file
- ✅ No need to edit HTML templates
- ✅ Version control for content changes
- ✅ Easy to review content diffs

### Reusability
- ✅ Same block, different data on different pages
- ✅ A/B testing with different content
- ✅ Multiple language support (future i18n)

### Scalability
- ✅ Add new items without touching templates
- ✅ Remove items without breaking layouts
- ✅ Easy to reorganize content order

### Developer Experience
- ✅ Clear separation of concerns
- ✅ Content editors don't touch code
- ✅ Developers focus on structure
- ✅ Consistent data patterns across site

---

## Migration Guide

### Step-by-Step Refactoring Process

1. **Analyze Current Block**
   - Identify all hardcoded content
   - List all data points (text, icons, colors)
   - Check for dynamic `site.*` references

2. **Design YAML Structure**
   - Follow consistent naming patterns
   - Group related data logically
   - Include all variants/options

3. **Create YAML Data File**
   - Place in `_data/` directory
   - Use descriptive filename
   - Add comments for complex sections

4. **Update Block Template**
   - Replace hardcoded content with YAML references
   - Add conditional checks for optional data
   - Preserve existing `site.*` references

5. **Update Documentation**
   - Update header comment with data source
   - Add usage examples
   - Document all YAML parameters

6. **Test Thoroughly**
   - Test with full data
   - Test with minimal data
   - Test with missing optional data
   - Test on different pages

7. **Commit Changes**
   - Descriptive commit message
   - List all changes made
   - Reference TODO-1202

---

## Progress Tracking

### Week 1: HIGH Priority (Target: 3 blocks)
**Target Date**: 2025-11-29

- [ ] block--commitment.html → `_data/commitments.yml`
- [ ] block--faq-contact.html → `_data/faq_contact.yml`
- [ ] block--service-intro.html → `_data/service_intro.yml`

**Status**: Not Started
**Completion**: 0/3

---

### Week 2: MEDIUM Priority (Target: 3 blocks)
**Target Date**: 2025-12-06

- [ ] block--business-info.html → `_data/business_info.yml`
- [ ] block--company-profile.html → `_data/company_profile.yml`
- [ ] block--quick-contact-form.html → `_data/contact_form.yml`

**Status**: Not Started
**Completion**: 0/3

---

### Week 3: LOW Priority (Target: 4 blocks)
**Target Date**: 2025-12-13

- [ ] block--contact-cards.html → `_data/contact_cards.yml`
- [ ] block--cta-contact.html → `_data/cta_contact.yml`
- [ ] block--service-list.html (header extraction)
- [ ] block--services-grid.html (header extraction)

**Status**: Not Started
**Completion**: 0/4

---

## Content Volume Statistics

### Data Points to Migrate
- **Text Labels**: 50+ instances
- **List Items**: 30+ instances
- **Icons**: 60+ instances
- **Descriptions**: 40+ instances
- **Buttons/CTAs**: 20+ instances

### Total Lines of Hardcoded Content
- **High Priority Blocks**: ~800 lines
- **Medium Priority Blocks**: ~500 lines
- **Low Priority Blocks**: ~200 lines
- **Total**: ~1500 lines to refactor

---

## Related Tasks

### Blockers
- None (can start immediately)

### Dependencies
- Existing `_data/services.yml` structure
- Existing `_data/service_features.yml` structure
- `site.business.*` configuration in `_config.yml`

### Future Enhancements
- [ ] Multi-language support (i18n)
- [ ] Content validation schema
- [ ] Admin UI for content editing
- [ ] Content versioning system

---

## Notes

- **Priority can change** based on business needs
- **Commit per block or per phase** (max 3 blocks per commit)
- **Test on staging** before production deployment
- **Backup original blocks** before major refactoring
- **Document any breaking changes** in commit messages
- **Update CHANGELOG.md** after each phase completion

---

## References

- **Existing Data-Driven Examples**:
  - `_includes/reusable/block--service-coverage.html`
  - `_includes/reusable/block--service-features.html`
  - `_data/services.yml`
  - `_data/service_features.yml`

- **Jekyll Data Files Documentation**: https://jekyllrb.com/docs/datafiles/
- **YAML Syntax Guide**: https://yaml.org/spec/1.2/spec.html
- **Project Standards**: See existing `_data/*.yml` files

---

**Last Updated**: 2025-11-22 23:45
**Next Review**: After Phase 1 completion
