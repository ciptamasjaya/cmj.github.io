# Release Notes - PT. Cipta Mas Jaya Website

## Version 1.0.2 - Content Migration & SEO Enhancement
**Release Date**: November 23, 2025
**Build**: 88 files (9.5M)
**Commits**: 30

### 🎉 What's New

#### Complete Content Migration from WordPress
We've successfully migrated all major content from WordPress to Jekyll with a modern, modular block architecture:

- **Homepage Transformation**
  - Hero section with company introduction
  - Services showcase grid
  - Call-to-action sections
  - Modern, responsive layout

- **About Page (9 Modular Blocks)**
  - Company hero section
  - PJK3, Riksa Uji, and service definitions with icons
  - TAMASYA company values with custom icons and hover effects
  - Enhanced Visi-Misi sections with card layout
  - Professional team information

- **Layanan Page Enhancement**
  - Comprehensive service introduction
  - Service features showcase
  - Coverage area information
  - PJK3 terdekat details
  - Pengesahan gambar rencana section

#### Major SEO & Accessibility Improvements
Comprehensive fixes for proper semantic HTML structure:

- **Proper Heading Hierarchy** across all pages
  - About page: Fixed TAMASYA section (added H3 groupings, removed duplicates)
  - Contact page: Added missing H1, fixed section headings
  - Layanan page: Added proper H2 groupings
  - Footer: Converted semantic headings to styled paragraphs

- **Enhanced Sitemap**
  - Automatic `<lastmod>` timestamps via jekyll-last-modified-at plugin
  - Better crawling priority for search engines
  - Git history-based modification dates

#### Visual & Component Enhancements

- **TAMASYA Company Values**
  - Custom icon set (box, flash, thumbup, flag)
  - Smooth hover effects with scale and shadow animations
  - Professional card-based layout

- **Visi-Misi Sections**
  - Modern card design with icons
  - Advanced CSS animations
  - Improved readability and visual hierarchy

- **Icon-Text Utility Classes**
  - Consistent icon + text alignment across all pages
  - Flexible positioning (left, center, right)
  - Applied to service intro and multiple blocks

#### Build Optimization

**Production Build Cleanup:**
- Excluded development folders: `RELEASE/`, `TEMPLATES/`, `TODO/`
- Excluded documentation: `CHANGELOG.md`, `COMPONENTS.md`, `SCSS-GUIDE.md`, `STRUKTUR-PROJECT.md`
- Excluded build scripts: `rebuild.sh`
- **Result**: Reduced from 100 files to 88 files for cleaner production

#### Git LFS Integration
- Optimized image asset management
- Better repository performance
- Efficient large file handling

### 🔧 Technical Details

**New Dependencies:**
- `jekyll-last-modified-at` (1.3.2) - Automatic sitemap lastmod generation

**Semantic HTML Improvements:**
- H1 → H2 → H3 → H4 hierarchy enforcement
- Removed duplicate headings
- Added visually-hidden grouping headers where needed
- Converted non-semantic headings to styled paragraphs

**CSS Enhancements:**
- Icon-text utility classes (`.icon-text`, `.icon-left`, `.icon-center`)
- Enhanced hover effects (scale, shadow, color transitions)
- Card-based modern layouts
- Responsive grid improvements

### 📊 Statistics

- **30 commits** in one day
- **3 major pages** fully migrated
- **20+ modular blocks** implemented
- **12 files** excluded from production
- **100%** semantic HTML compliance
- **Git LFS** integrated for images

### 🐛 Bug Fixes

- Fixed Liquid syntax error in contact form block
- Fixed heading hierarchy issues across all pages
- Cleaned up inline styles in CTA contact block
- Improved card spacing in pengesahan gambar block

### 📚 For Developers

**Files Modified:**
- `Gemfile` & `Gemfile.lock` - Added jekyll-last-modified-at
- `_config.yml` - Added plugin and exclude list
- `_includes/reusable/block--about-tamasya.html` - Heading hierarchy fixes
- `_includes/reusable/block--contact-cards.html` - H1 addition, H2 fixes
- `_includes/reusable/block--service-intro.html` - H2 grouping, styling
- `_includes/reusable/block--service-features.html` - H2 grouping
- `_includes/footer.html` - Semantic heading to paragraph conversion
- `assets/css/_utilities.scss` - Icon-text utility classes

**New Blocks Added:**
- `block--about-hero.html`
- `block--about-definitions.html`
- `block--about-pjk3-text.html`
- `block--about-visi-ciptamasjaya.html`
- `block--about-misi-ciptamasjaya.html`
- `block--about-tamasya.html`
- `block--about-jasa-inspeksi.html`
- `block--pengesahan-gambar.html`
- `block--pjk3-terdekat.html`

### ⚠️ Breaking Changes
None - All changes are backward compatible.

### 🚀 Upgrade Notes
1. Run `bundle install` to install jekyll-last-modified-at plugin
2. Rebuild site with `./rebuild.sh`
3. Verify sitemap includes lastmod timestamps
4. Check that dev files are excluded from _site/

---

## Version 1.0.1 - Data-Driven Architecture Release
**Release Date**: November 23, 2025
**Commits**: 15

### 🎉 What's New

Complete refactoring of reusable blocks to data-driven architecture. All content separated from templates into YAML data files for better maintainability and scalability.

#### Data-Driven Blocks (8 Blocks Refactored)
All reusable blocks now use YAML data files with template variable support:
- `_data/commitments.yml` → block--commitment.html
- `_data/faq_contact.yml` → block--faq-contact.html
- `_data/service_intro.yml` → block--service-intro.html
- `_data/business_info.yml` → block--business-info.html
- `_data/company_profile.yml` → block--company-profile.html
- `_data/contact_form.yml` → block--quick-contact-form.html
- `_data/contact_cards.yml` → block--contact-cards.html
- `_data/cta_contact.yml` → block--cta-contact.html

#### Template Variables Support
Dynamic content replacement:
- `{company_name}` → site.business.name
- `{phone}` → site.business.phone
- `{email}` → site.business.email
- `{whatsapp}` → site.business.whatsapp
- `{founding_year}` → site.business.foundingDate

#### CSS Class Customization
All blocks support optional CSS class overrides while preserving defaults.

### 📊 Impact
- **8 YAML data files** created
- **8 blocks** fully data-driven (100% content separation)
- **15+ template variables** supported
- **~1500 lines** of hardcoded content moved to YAML
- **i18n ready** - structure prepared for multi-language support

---

## Version 1.0.0 - Initial Release
**Release Date**: November 22, 2025
**Commits**: 14

### 🎉 What's New

Initial Jekyll setup with modern architecture:

- **Jekyll 4.4.1** with modular SCSS architecture
- **BEM naming convention** for components
- **Schema.org markup** for better SEO
- **PWA support** with icons and manifest
- **Responsive design** with Bootstrap 5
- **Reusable components** with flexible parameters

### Core Features
- Standard pages (404, Privacy, Terms)
- Blog with pagination
- Service pages structure
- Contact forms
- Site navigation and footer
- Brand logo and favicon

---

## Support & Documentation

For detailed technical documentation, see:
- `CHANGELOG.md` - Detailed commit history
- `COMPONENTS.md` - Component usage guide
- `SCSS-GUIDE.md` - Styling guidelines
- `STRUKTUR-PROJECT.md` - Project structure

For issues or questions, contact: info@ciptamasjaya.co.id
