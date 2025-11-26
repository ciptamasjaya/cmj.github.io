# Changelog

## v1.0.3 - Service Schema & Certification Enhancement (2025-11-26)

Comprehensive Schema.org implementation for service pages, PJK3 certification system, and enhanced geographic coverage with 53 commits.

### 🎯 Major Features

#### 📋 Service Page Schema System
Complete Schema.org markup for Google Rich Results:
- **Product Schema**: Service as Product for review snippets
- **Article Schema**: Intro content with h2/h3/h4 nesting
- **ImageGallery Schema**: Service images with copyright
- **Video Schema**: Riksa uji demonstration videos
- **ItemList Schema**: Equipment types and components
- **HowTo Schema**: Inspection process and ordering steps
- **Offer Schema**: Service pricing catalog
- **Schedule Schema**: Dynamic event dates (JavaScript-generated)
- **FAQ Schema**: Service-specific questions

#### 🏆 PJK3 Certification System
New certification display for company and expert credentials:
- **Certification Schema** for PJK3 company certificates
- **EducationalOccupationalCredential** for expert SKP
- **Dual-mode block**: Full (About) / Single (Service)
- 6 categories × 2 experts = 12 expert certificates
- Auto status detection (active/expired)

#### 🗺️ Geographic Coverage Enhancement
- **areaServed** with all Jawa & Bali cities
- 17 provinces with ibukota and cities
- Visual service area block with province cards
- Standardized `#organization` @id

#### ⭐ Dynamic Reviews System
- Rating and review data files
- Homepage testimonials
- Service page review blocks
- Q&A comment system

### 📝 Detailed Changes

#### Schema Implementation (15 commits)
```
87e1a1d - Remove microdata from FAQ contact block to fix duplicate FAQPage
0657a7a - Standardize schema @id to #organization and fix type warnings
2d20c52 - Standardize schema @id to #organization across all schemas
105e2a1 - Use @id reference for LocalBusiness to avoid schema duplication
25e0897 - Add areaServed to LocalBusiness schema with service area block
e5cadbd - Add ImageGallery
fb9cb79 - Add Article schema with nested intro subsections (h2/h3/h4)
fa01c01 - Add Schedule block and schema for riksa uji services
8f5bc65 - Add ItemList block and schema for riksa uji services
d10999e - Add Offer block and schema for riksa uji pricing
2c099a4 - Add video block and schema for riksa uji services
962af87 - Add FAQ block and schema for riksa uji services
9b1faa0 - Add HowTo block and schema for inspection process
9370e1a - Add HowTo schema and block for service ordering process
731e09d - Add LocalBusiness schema and remove duplicate Organization
a5a3d6c - Refactor service schema to use Product type for Google review snippets
```

#### Certification System (4 commits)
```
8503af1 - Add certifications block to About page
6960d30 - Add Certification schema and block for PJK3 credentials
```

#### Service Blocks (8 commits)
```
ca271c4 - Refactor service layout into reusable block components
854f359 - Split ItemList block into specialized jenis-forklift and komponen-inspeksi variants
5744966 - Move intro block include from markdown to layout template
314d26f - Reorganize service blocks and schemas into services/ subdirectory
eab88f4 - Change Kemnaker RI to Disanker Setempat
```

#### Reviews System (6 commits)
```
1237fe7 - Add Phase 5: Blog posts reviews support
17ea3d7 - Add Phase 3: Layout integration and SEO schema
7e776a8 - Add Phase 2: Scripts, comments, and homepage testimonials
bc583dc - Add dynamic reviews system (Phase 1)
b924f46 - Add review system with Schema.org markup and Drupal naming convention
```

#### Service Architecture (10 commits)
```
65efcc0 - Add 2-column layout to layanan page with DataTable integration
b8393e5 - Implement DataTable.js integration for page--category service list
30e1a71 - Add service list block template and fix service card image display
08f51c3 - Add Schema.org service list with @graph architecture
67770a3 - Add reusable service card component and refactor latest service updates
04aaddc - Add dynamic category/subcategory pages with auto-update system
d80ca44 - Add block templates system and subcategory breadcrumb support
6ece858 - Add HTML compression, Schema.org markup, and forklift service page
```

#### Layout & UI (8 commits)
```
b08ee81 - Move buttons to card-footer in block--riksa-uji-k3 for alignment
0336948 - Move buttons to card-footer in block--jasa-inspeksi-k3 for alignment
c8a9e88 - Change block--mitra-riksa-uji layout to 2-column (col-6)
af05d32 - Add latest service updates to homepage with auto-update
f373ce9 - Update founding year to 2019 and use YAML variable
ca223f5 - Remove 'Meliputi' section from service cards for cleaner design
b8c0e96 - Add status field to services and eliminate duplication
```

#### Documentation & Config (2 commits)
```
ce16021 - Update TODO-1204-json-template-migration.md
d530ba0 - Update TODO-1203-dynamic-content-json.md
```

### 📊 Impact
- **53 commits** since v1.0.2
- **15+ schema types** implemented
- **13 new service blocks** created
- **5 new data files** added
- **Google Rich Results ready** for services
- **Build**: 106 files (11M)

### 🔧 Technical Improvements
- Consistent `#organization` @id across all schemas
- `["ProfessionalService", "Organization"]` dual type for LocalBusiness
- Fixed duplicate FAQPage (microdata → JSON-LD only)
- @id referencing to avoid entity duplication
- Service-specific blocks in `_includes/reusable/services/`

---

## v1.0.2 - Content Migration & SEO Enhancement (2025-11-23)

Major content migration from WordPress, comprehensive SEO improvements with proper heading hierarchy, enhanced styling across all pages, and custom DataTable.js library.

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

#### 📊 DataTable.js Library (2025-11-24)
Custom vanilla JavaScript DataTable library with full features:
- **Sorting**: Ascending/descending sort on all columns (smart numeric/text detection)
- **Pagination**: Configurable rows per page with navigation controls
- **Search/Filter**: Real-time global search across all table data
- **Responsive Design**: Mobile-friendly layout with breakpoint at 768px
- **Export Functions**:
  - CSV export with proper encoding
  - PDF export via print dialog
- **Customization**:
  - Multi-language support via labels configuration
  - Optional features (enable/disable individually)
  - Custom CSS class support
- **Pure Vanilla JS**: Zero dependencies, lightweight (~15KB)
- **Files Added**:
  - `assets/js/datatable.js` - Main library
  - `assets/css/datatable.css` - Styling with dark mode support
  - `docs/datatable.md` - Complete documentation
  - `docs/datatable-demo.html` - Interactive demo with 3 examples

### 📊 Impact
- **30 commits** in one day
- **3 major pages** fully migrated from WordPress
- **20+ modular blocks** implemented
- **Proper heading hierarchy** across all pages (H1→H2→H3→H4)
- **Sitemap with lastmod** for better SEO
- **12 files excluded** from production build
- **Git LFS integration** for optimized image management
- **DataTable.js library** added (~15KB vanilla JS, zero dependencies)

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

### 📊 Impact
- **8 YAML data files** created
- **8 blocks** fully data-driven (100% content separation)
- **~1500 lines** of hardcoded content moved to YAML
- **i18n ready** - structure prepared for multi-language support

---

## v1.0.0 - Initial Release (2025-11-22)

Initial Jekyll setup with Drupal-style naming convention, SCSS architecture, and reusable components.

### Features
- Jekyll structure with compress layout
- Drupal-style template naming (page.html, node--*.html)
- SCSS architecture with modular partials
- Reusable components library
- Schema.org markup foundation
- PWA icons and favicon
- rebuild.sh build script
