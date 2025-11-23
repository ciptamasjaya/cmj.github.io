# Changelog

## v1.0.2 - Content Migration & SEO Enhancement (2025-11-23)

Major content migration from WordPress, comprehensive SEO improvements with proper heading hierarchy, and enhanced styling across all pages.

### 🎯 Major Features

#### 📄 Content Migration from WordPress
Complete content migration with modular block architecture:
- **Homepage**: Hero, services showcase, CTA sections
- **About Page**: 9 modular blocks (hero, definitions, TAMASYA values, visi-misi)
- **Layanan Page**: Service intro, features, coverage, PJK3 terdekat, pengesahan gambar
- **Git LFS Integration**: Optimized image management for better repository performance

#### 🔍 SEO & Accessibility Improvements
Comprehensive heading hierarchy fixes across all pages:
- **About Page**: Fixed TAMASYA section hierarchy (H2→H3→H4)
  - Added H3 grouping: "Filosofi Nama TAMASYA" and "Empat Pilar Nilai"
  - Removed duplicate headings
  - Proper semantic structure throughout
- **Contact Page**: Added missing H1, fixed H3→H2 for PJK3 section
- **Layanan Page**: Added H2 groupings with visually-hidden headers
- **Footer**: Converted semantic H5/H6 to styled paragraphs
- **Sitemap**: Added `<lastmod>` timestamps via jekyll-last-modified-at plugin

#### 🎨 Enhanced Styling & Components
- **TAMASYA Values**: Custom icons with hover effects and animations
- **Visi-Misi Blocks**: Card-based layout with icons and modern styling
- **About Definitions**: Enhanced with icons and hover effects
- **Icon-Text Utility**: New alignment classes for consistent icon+text layout
- **CTA Contact**: Improved readability and cleaned up inline styles

#### 🛠️ Build Optimization
Exclude development files from production build:
- Folders: RELEASE/, TEMPLATES/, TODO/
- Docs: CHANGELOG.md, COMPONENTS.md, SCSS-GUIDE.md, STRUKTUR-PROJECT.md
- Scripts: rebuild.sh
- Result: Build reduced from 100 to 88 files (9.5M)

### 📝 Detailed Changes

#### Content & Pages (10 commits)
```
7f463ce - Migrate homepage content from WordPress with SEO-optimized blocks
79ff8ce - Enhance layanan page with modular blocks and SEO improvements
60866e1 - Add complete about page content from WordPress with 9 modular blocks
528755c - Add Pengesahan Gambar Rencana block to layanan page
f2df051 - Add images using Git LFS for optimal repository performance
6a1e974 - Remove duplicate CTA question block from about page
115f9cb - Reorder about hero section to appear before company profile
782e740 - Update block--pjk3-terdekat.html text improvements
6615fc2 - Improve card spacing in block--pengesahan-gambar.html
3a0eb9a - Apply icon-text utility class across all layanan page blocks
```

#### SEO & Accessibility (4 commits)
```
edba072 - Add lastmod to sitemap and exclude dev files from build
e4e7eda - Fix heading hierarchy and styling in contact page
ad95ac9 - Fix heading hierarchy in service pages for better SEO
34ba013 - Fix heading hierarchy for better SEO and accessibility
```

#### Styling & Components (14 commits)
```
ec63706 - Enhance CTA contact readability and cleanup inline styles
f53b4de - Rename and refactor visi-misi blocks with enhanced styling
3ee5253 - Transform visi-misi block with cards, icons, and advanced animations
d2ecde7 - Add icons and enhanced hover effects to about definitions block
31a7bcb - Refactor about TAMASYA block styling and add enhanced hover effects
7069365 - Improve TAMASYA icon layout with center alignment and hover effects
6ad478a - Add custom icons for TAMASYA company values
a4c639b - Add icon-text alignment utility classes and apply to service intro
```

#### Bug Fixes (1 commit)
```
b95ee0e - Fix Liquid syntax error in block--quick-contact-form.html
```

### 📊 Impact
- **30 commits** in one day
- **3 major pages** fully migrated from WordPress
- **20+ modular blocks** implemented
- **Proper heading hierarchy** across all pages (H1→H2→H3→H4)
- **Sitemap with lastmod** for better SEO
- **12 files excluded** from production build
- **Git LFS integration** for optimized image management

### 🔧 Technical Improvements
- jekyll-last-modified-at plugin for automatic sitemap timestamps
- Icon-text utility classes for consistent layout
- Semantic HTML improvements (heading hierarchy)
- Production build optimization (88 files vs 100)
- Enhanced hover effects and animations
- Card-based modern layouts

### 📚 Documentation
- All new blocks documented with version numbers
- YAML structure maintained for all data files
- Git LFS configuration for image assets

---

## v1.0.1 - Data-Driven Architecture Release (2025-11-23)

Complete refactoring of reusable blocks to data-driven architecture. All content now separated from templates into YAML data files for better maintainability, scalability, and content management.

### 🎯 Major Features

#### ✅ Data-Driven Blocks (8 blocks fully refactored)
All reusable blocks now use YAML data files with template variable support:
- `_data/commitments.yml` → block--commitment.html
- `_data/faq_contact.yml` → block--faq-contact.html
- `_data/service_intro.yml` → block--service-intro.html
- `_data/business_info.yml` → block--business-info.html
- `_data/company_profile.yml` → block--company-profile.html
- `_data/contact_form.yml` → block--quick-contact-form.html
- `_data/contact_cards.yml` → block--contact-cards.html
- `_data/cta_contact.yml` → block--cta-contact.html

#### 📦 Template Variables
Support for dynamic content replacement:
- `{company_name}` → site.business.name
- `{phone}` → site.business.phone
- `{email}` → site.business.email
- `{whatsapp}` → site.business.whatsapp
- `{founding_year}` → site.business.foundingDate

#### 🎨 CSS Class Customization
All blocks support optional CSS class overrides while preserving defaults

### 📝 Detailed Changes

```
5c0ba6d - Refactor block--cta-contact.html to data-driven architecture (2025-11-23 00:28:34 +0700)
59451ff - Refactor block--contact-cards.html to data-driven architecture (2025-11-23 00:24:54 +0700)
f7e479a - Refactor block--company-profile.html to data-driven architecture (2025-11-23 00:03:21 +0700)
fe1f6b1 - Refactor block--business-info.html to data-driven architecture (2025-11-23 00:00:18 +0700)
da1755d - Refactor block--service-intro.html to data-driven and fix versioning (2025-11-22 23:50:37 +0700)
90e0d06 - Refactor block--faq-contact.html to data-driven architecture (2025-11-22 23:48:21 +0700)
d25fe39 - Refactor block--commitment.html to data-driven architecture (2025-11-22 23:43:26 +0700)
576485d - Refactor blocks to data-driven architecture and add css_class support (2025-11-22 23:27:42 +0700)
19abcca - Refactor service intro heading and add icon hover animations (2025-11-22 22:30:14 +0700)
c1e26fc - Fix variable rendering and add icon hover effects to service page (2025-11-22 22:16:09 +0700)
dc5e0a3 - Add CSS class customization to service features component (2025-11-22 21:36:02 +0700)
8f86c2e - Add sticky navbar and refactor service features to data-driven (2025-11-22 21:27:34 +0700)
ba96d8e - Add service card hover effects and floating WhatsApp button (2025-11-22 21:03:21 +0700)
0450cac - Activate all reusable blocks across homepage and main pages (2025-11-22 20:08:18 +0700)
47e970f - Fix CSS file conflict by removing duplicate main.css (2025-11-22 20:03:11 +0700)
```

### 📊 Impact
- **8 YAML data files** created
- **8 blocks** fully data-driven (100% content separation)
- **15+ template variables** supported
- **~1500 lines** of hardcoded content moved to YAML
- **Improved maintainability** - content updates without touching templates
- **Better scalability** - easy to add/remove items
- **i18n ready** - structure prepared for multi-language support

### 🔧 Technical Improvements
- Consistent YAML structure across all data files
- CSS class customization support (append to defaults)
- Icon and color configuration per item
- Responsive grid configuration
- Button and CTA configuration
- Form field validation messages
- WhatsApp/Email message templates

### 📚 Documentation
- All blocks updated with data source documentation
- Version numbers bumped to v2.0.0 for refactored blocks
- Comprehensive YAML comments and structure notes
- TODO-1202 tracking document maintained

---

## v1.0.0 - Initial Release (2025-11-22)

```
9afddb6 - Move 404 page inline CSS to modular SCSS architecture (2025-11-22 17:40:31 +0700)
142a27a - Add standard pages, PWA icons, and site configuration (2025-11-22 17:35:47 +0700)
51d2dc4 - Standardize components with BEM naming and documentation (2025-11-22 17:34:12 +0700)
3123ff0 - Add rebuild.sh and enhance Schema.org markup (2025-11-22 16:00:00 +0700)
71906da - Add brand logo, favicon and PWA support (2025-11-22 15:40:03 +0700)
bd003c9 - Add item-list--strong-title component (missing file) (2025-11-22 15:21:53 +0700)
7200ff2 - Add SCSS architecture with modular partials (2025-11-22 15:19:45 +0700)
8057978 - Add heading H4 icon component (2025-11-22 15:00:22 +0700)
757ec1f - Add simple text list component (2025-11-22 14:53:06 +0700)
9e324f1 - Add heading H3 circle component (2025-11-22 14:48:53 +0700)
e90c758 - Add card H2 components for section headers (2025-11-22 14:31:41 +0700)
6714e22 - Add reusable components with flexible parameters (2025-11-22 14:16:37 +0700)
21d89b8 - Remove unnecessary node--page.html layout (2025-11-22 14:00:47 +0700)
c59438e - Initial setup: Jekyll structure with Drupal-style naming convention (2025-11-22 13:59:21 +0700)
b732bd9 - Initial commit (2025-11-22 13:25:33 +0700)
```
