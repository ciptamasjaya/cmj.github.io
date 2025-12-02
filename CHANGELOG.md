# Changelog

## v1.0.5 - Multi Content Types & Robot System (2025-12-03)

Three new content types (alat-k3, inspection-report, pjk3-city enhancements), automated robot system for content freshness, and comprehensive template documentation. **135 commits** since v1.0.4.

### 🎯 Major Features

#### 🔧 node--alat-k3 Content Type (New)
Complete content type for K3 equipment articles:
- **22 blocks**: Definition, Functions, Types, Components, Specifications, 3x HowTo, Risks, Applications, FAQ, Gallery, Video, Rating, etc.
- **15 schema files**: TechArticle, DefinedTermSet, 5x ItemList, Dataset, 3x HowTo, FAQPage, ImageGallery, Video, Rating
- **Rating system**: Product schema with AggregateRating and Review testimonials
- **Theme variants**: 5 color themes (primary, success, info, warning, danger)
- **Google Rich Results**: 10 valid items (Article, FAQ, HowTo, Dataset, Product, etc.)

#### 📋 node--inspection-report Content Type (New)
Technical inspection report layout for riksa uji results:
- **19 blocks**: Header, Gallery, Definition, 6x Test Result Tables, HowTo, FAQ, Video, Rating, etc.
- **Table schemas**: 6 separate schemas for inspection test results
- **HowTo schemas**: Safety valve and hydrotest procedures
- **Combined FAQPage**: Multiple FAQ sections merged
- **Semantic CSS classes**: BEM naming convention throughout

#### 🤖 Robot System (New)
Automated content freshness maintenance:
- **Multi-robot system**: Rotation scripts for measurements and frontmatter
- **Robot Propagator**: Timestamp propagation across related files
- **Robot Sinonim**: Synonym expansion for posts and services
- **Config-driven**: Layout filter and maintenance mode
- **Git pre-commit hook**: Auto lastmod update with ON/OFF setting

#### 📝 Template Documentation Overhaul
Per-section workflow with TodoWrite integration:
- **PETUNJUK-PEMBUATAN files**: Restructured for all 4 node types
- **TodoWrite workflow**: 16-section checklist for content creation
- **YAML examples**: Complete frontmatter samples per section
- **Verification checklists**: Schema and build validation steps

### 📝 Detailed Changes

#### node--alat-k3 System (11 commits)
```
674b529 - Rewrite PETUNJUK-PEMBUATAN-node-alat-k3.md with comprehensive format
bd808ab - Improve alat-k3 grid layout and hover effects
383b4d1 - Add comprehensive CSS styling for alat-k3 content type
d93aa03 - Add rating system with testimonials UI for alat-k3 content type
644e16d - Add alat-k3 variant to block--content-header.html
c6b001e - Split generic HowTo into 3 specific types for node--alat-k3
f12b136 - Add separate schema files for node--alat-k3 blocks
dab16dc - Update blocks for HTML support and add migration example
d9723b9 - Add node--alat-k3 content type for K3 equipment articles
```

#### node--inspection-report System (15 commits)
```
06a9e26 - Add testimonials block and rating display for inspection reports
b8f2a55 - Add inspection report template and forklift riksa uji content
547452e - Fix UI issues and add semantic classes to report header
48c94be - Add semantic CSS classes to all inspection-report blocks
30cd7c1 - Add HowTo schema for safety valve and FAQ for hydrotest
06c5f25 - Add FAQ section for hydrotest with FAQPage schema
95653e0 - Add HowTo schema for hydrotest procedure
d09de5c - Add Table schemas for all inspection test results
15de020 - Add Table schema for visual inspection and update section titles
d15d414 - Add DefinedTermSet for inspection report
c5d787f - Add Product schema with AggregateRating for inspection report rating
ed3b5ac - Add shared gallery slider component and video block
2c47085 - Add blocks and schemas for node--inspection-report
7de9529 - Add node--inspection-report layout for technical inspection reports
```

#### Robot System (12 commits)
```
6e450e5 - Add git pre-commit hook for propagator with ON/OFF setting
488c325 - Add lastmod sorting for blog preview and propagator hook
a6c9df6 - Add propagator hook system for timestamp propagation
fe0e87a - Add Robot Propagator and expand synonym support
38b18e9 - Expand Robot Sinonim to support _services folder
146574d - Add config-driven layout filter for robots
def3416 - Expand Robot Sinonim to work on all layouts
b941d97 - Add robot config file and maintenance mode
7a7f500 - Add multi-robot system for content freshness
9aba7da - Add measurement rotation script for content freshness
dec8f51 - Add frontmatter rotation script for content freshness
```

#### node--riksa-uji Enhancements (20 commits)
```
d6bf4fc - Remove isPartOf from HowTo and FAQ schemas in page--riksa-uji
72c7758 - Add HowTo steps to TechArticle.about as Thing
05ecd5d - Complete overhead crane article with all content sections
3ae2d19 - Add Riksa Uji Overhead Crane article and service
03a0f5d - Add JSON-based rating system for riksa-uji articles
1f4c576 - Implement block rating system for services
0b12cb6 - Add related service feature and fix Product schema
7011a69 - Add shared block--content-header.html with lastmod display
44e4502 - Add CSS for riksa-uji blocks and fix subtitle styling
a0b049e - Add marketing sections to riksa-uji-boiler frontmatter
242ea7b - Add marketing blocks to riksa-uji layout
c86b1ef - Add WebPageElement schemas and hasPart for riksa-uji TechArticle
9b7b8e1 - Add specific schemas for riksa-uji sections
```

#### Code Quality & Refactoring (20 commits)
```
4758f18 - Apply BEM semantic classes based on frontmatter child arrays
dcb4a7a - Standardize block IDs to block--[name] pattern
5b10355 - Standardize jenis_alat field name across all services
e46d4d0 - Refactor: Split blocks.scss into modular partials (v1.0.5)
c82628c - Consolidate block cards into universal template (v1.0.5)
401abbe - Reorganize layouts into subfolders and add semantic card classes
72e4202 - Standardize heading hierarchy and add reusable CSS components
49a4148 - Standardize heading hierarchy and add card-float class
f206689 - Refactor: Move gallery inline styles and script to external files
65eb05e - Fix whitespace: remove blank lines before DOCTYPE
ec0637f - Refactor: Remove !important from hover box-shadow effects
```

#### SEO & Schema (15 commits)
```
da330c6 - Fix node--inspection-report schema to match node--riksa-uji pattern
5afa606 - Fix TechArticle schema newline error in articleBody
7261217 - Add Liquid variables for reviews in rating blocks
8851cd1 - Add review to Product schema and ReserveAction to Event schema
0ec8696 - Fix speakable cssSelector and add address/image to Organization
3da24ce - Add keywords field to node-service templates
a724859 - Add specific meta keywords to all service files
39576d0 - Add specific meta keywords to all posts
```

#### Template Documentation (10 commits)
```
cf0607c - Add TodoWrite per-section workflow to all PETUNJUK template guides
ea1f2db - Restructure PETUNJUK-PEMBUATAN-node-service.md with per-section format
ef43207 - Restructure PETUNJUK-PEMBUATAN-node-pjk3-city.md with per-section format
0b289c1 - Restructure node-inspection-report documentation with per-section format
af882f3 - Restructure node-riksa-uji template and documentation
d61f438 - Add templates for node-service pages
58821d0 - Update templates for riksa-uji with rating system fields
303a094 - Update PETUNJUK node-service with rating/review and default video docs
2d725ed - Update PETUNJUK-PEMBUATAN-node-service with rating/review documentation
```

### 📊 Impact
- **135 commits** since v1.0.4
- **3 content types** added/enhanced (alat-k3, inspection-report, riksa-uji)
- **56 new blocks** created across all content types
- **30+ schema files** for Google Rich Results
- **4 PETUNJUK files** restructured with per-section workflow
- **5 robot scripts** for automated content maintenance
- **BEM semantic classes** standardized across all blocks

### 🔧 Technical Improvements
- Modular SCSS partials (`_sass/blocks/` split)
- Universal block card template
- Config-driven robot system
- Pre-commit hook with propagator
- Standardized block IDs (`block--[name]`)
- Keywords meta field for SEO

---

## v1.0.4 - PJK3 City Pages & Code Quality (2025-11-29)

Complete PJK3 city page system with 14 WebPageElement schemas, inline style extraction, and JS modularization. **66 commits** since v1.0.3.

### 🎯 Major Features

#### 🏙️ PJK3 City Content Type
New content type for city-specific PJK3 service pages:
- **node--pjk3-city template**: Complete page layout with 17 block sections
- **page--pjk3-city layout**: Wrapper with all schema includes
- **12 city-specific blocks**: hero, about-city, services, tips, risks, roles, business, coverage, testimonials, FAQ, video, order process
- **Media fallbacks**: Default images (i1-i4.svg) and video when not provided

#### 📊 Article Schema Enhancement
Extended Article schema with comprehensive hasPart references:
- **14 WebPageElement schemas**: Each section referenced in Article hasPart
- **Schema files renamed**: `schema--webpage-*` prefix for clarity
- **Proper @id linking**: Article references WebPageElement by @id only
- **Google Rich Results**: All sections properly indexed

#### 🎨 Code Quality - Inline Style Extraction
Moved all 48 inline styles to external SCSS:
- **block--pjk3-city.scss**: New 326-line SCSS file
- **High specificity selectors**: No `!important` needed
- **Conditional CSS loading**: Only loaded for PJK3 city layouts
- **12 block files cleaned**: Zero inline `style=` attributes

#### 📦 JS Modularization
Extracted inline scripts and added frontmatter support:
- **gallery-modal.js**: Lightbox functionality extracted
- **extra_js mechanism**: Like extra_css in head.html
- **layout_extra_js**: Support for layout-specific JS
- **Zero inline `<script>` tags**: All JS in external files

### 📝 Detailed Changes

#### PJK3 City System (20 commits)
```
be0ca09 - Rename node--article to node--pjk3-city for city-specific content
19dab81 - Add complete node--article blocks with media fallbacks
6ac8ea0 - Rename reusable/post folder to reusable/node--riksa-uji
5929392 - Add article content type with templates and schema
d64aac6 - Update block--articles-related-service to use reusable blocks
b63365a - Add reusable blocks and schemas for posts and services
```

#### Schema Enhancement (15 commits)
```
26b3ff2 - Add 14 WebPageElement schemas for Article hasPart references
6f6961a - Add schemas for blocks and extend LocalBusiness areaServed
b650c92 - Change company-intro schema from FAQPage to WebPageElement
c934114 - Add schema documentation and block-- prefix to section IDs
380bb89 - Add schemas for business-potential and company-intro blocks
90f32e1 - Simplify about-city structure and add area keywords to schema
2bcf5a2 - Embed reviews in LocalBusiness to fix duplicate schema error
7c4df5a - Migrate schemas to reusable folder with parameter-based approach
d1c6b1f - Fix schema--howto.html to use initial_steps/final_steps structure
db12258 - Add complete schemas for node--pjk3-city blocks
```

#### Post/Riksa Uji Blocks (15 commits)
```
84214cf - Add riksa uji boiler post and template files
a0ddd95 - Add reviews data and upgrade block--reviews
95e7a77 - Upgrade block--related-post
fe47a01 - Upgrade block--faq-post with question theme
863732f - Upgrade block--video-post to HEBOH edition with cinema theme
0f24100 - Add block--conclusion with celebration theme
ccec962 - Upgrade block--certification and merge section_technical
8b5a919 - Add block--certification
14bd23f - Add block--permit with GovernmentPermit schema
35596c5 - Add block--specs with DataCatalog schema
9288929 - Add block--training with Course schema
1dfe52f - Add block--regulation HEBOH EDITION with ItemList schema
fd4fb8a - Add block--process fancy style with HowTo schema
```

#### Code Quality (10 commits)
```
b62896b - Add extra_js mechanism and extract inline script to separate file
f0866dd - Move gallery hover styles from inline <style> to SCSS
9e28b7f - Extract inline styles to block--pjk3-city.scss
8c8b94c - Create check-schema.sh
84c5615 - Refactor SCSS: use @each loops, remove !important, add more color variants
b50400b - Add block-- prefix to all section IDs in node--pjk3-city blocks
```

### 📊 Impact
- **66 commits** since v1.0.3
- **14 WebPageElement schemas** for Article hasPart
- **12 city blocks** with zero inline styles
- **48 inline styles** extracted to SCSS
- **1 new JS file** (gallery-modal.js)
- **check-schema.sh** verification script
- **Build**: 126 files (12M)

### 🔧 Technical Improvements
- High specificity CSS selectors (no `!important`)
- Conditional asset loading (CSS/JS per layout)
- Schema verification script for debugging
- Consistent `block--` prefix for section IDs
- Proper frontmatter support for extra_js

---

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
