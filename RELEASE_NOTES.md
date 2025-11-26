# Release Notes - PT. Cipta Mas Jaya Website

## Version 1.0.3 - Service Schema & Certification Enhancement
**Release Date**: November 26, 2025
**Build**: 106 files (11M)
**Commits**: 53

### 🎉 What's New

#### Complete Service Page Schema System
Comprehensive Schema.org markup for service pages with Google Rich Results support:

- **Product Schema** (for Google Review Snippets)
  - Service as Product type for star ratings in search results
  - AggregateRating and Review support
  - Offers with pricing information

- **Article Schema** for intro content with nested headings (h2/h3/h4)
- **ImageGallery Schema** with copyright and license information
- **Video Schema** for riksa uji demonstration videos
- **ItemList Schema** for equipment types and inspection components
- **HowTo Schema** for inspection process and ordering steps
- **Offer Schema** for service pricing catalog
- **Schedule Schema** with dynamic event dates
- **FAQ Schema** for service-specific questions

#### PJK3 Certification Schema & Block
New certification system displaying company and expert credentials:

- **Certification Schema** for PJK3 company certificates
- **EducationalOccupationalCredential Schema** for expert SKP
- **Dual-mode block**: Full mode (About page) / Single mode (Service page)
- 6 service categories with certificates and 2 experts each
- Auto status detection (active/expired) based on dates

#### LocalBusiness & areaServed Enhancement
Enhanced geographic coverage with detailed service areas:

- **areaServed** property with all Jawa & Bali cities
- Ibukota provinsi for outer islands (17 provinces total)
- Visual block showing coverage areas with province cards
- Consistent `#organization` @id across all schemas

#### Dynamic Reviews System
Complete review management with Schema.org support:

- Separate rating and review data files per content type
- Homepage testimonials integration
- Service page review blocks
- Comment/Q&A system

### 🔧 Technical Improvements

#### Schema Architecture
- Standardized all schema @id to `#organization`
- Added `["ProfessionalService", "Organization"]` dual type
- Fixed duplicate FAQPage (removed microdata, kept JSON-LD)
- @id referencing to avoid entity duplication

#### Reusable Blocks System
New service-specific blocks in `_includes/reusable/services/`:
- `block--service-detail.html` - Main service content
- `block--video-riksa-uji.html` - Video section
- `block--itemlist-jenis-forklift.html` - Equipment types
- `block--itemlist-komponen-inspeksi.html` - Inspection components
- `block--howto-proses-inspeksi.html` - Process steps
- `block--howto-cara-pemesanan.html` - Ordering steps
- `block--offer-riksa-uji.html` - Pricing offers
- `block--schedule-riksa-uji.html` - Event schedule
- `block--faq-riksa-uji.html` - FAQ accordion
- `block--service-area.html` - Geographic coverage
- `block--certifications.html` - PJK3 certificates
- `block--reviews.html` - Customer reviews
- `block--qna.html` - Questions & answers

#### Data Files Added
- `_data/certifications.yml` - 6 PJK3 certificate categories
- `_data/area_pelayanan.yml` - 17 provinces with cities
- `_data/rating--service.yml` - Service ratings
- `_data/review--service.yml` - Customer reviews
- `_data/comment--service.yml` - Q&A comments

### 📊 Impact
- **53 commits** since v1.0.2
- **15+ schema types** implemented
- **13 new service blocks** created
- **5 new data files** for content management
- **Google Rich Results ready** for all service pages
- **Consistent entity references** across all schemas

---

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
  - Company profile with mission/vision
  - TAMASYA values with custom icons
  - PJK3 definitions and explanations
  - Service coverage map

- **Layanan Page**
  - Service introduction with features
  - PJK3 terdekat section
  - Pengesahan Gambar Rencana block

#### DataTable.js Library
Custom vanilla JavaScript DataTable with full features:
- Sorting, pagination, search/filter
- CSV and PDF export
- Mobile-responsive design
- Zero dependencies (~15KB)

### 📊 Impact
- **30 commits** in one day
- **3 major pages** fully migrated from WordPress
- **20+ modular blocks** implemented
- **Git LFS integration** for optimized image management

---

## Version 1.0.1 - Data-Driven Architecture Release
**Release Date**: November 23, 2025

Complete refactoring of reusable blocks to data-driven architecture with YAML data files.

### 🎯 Major Features
- **8 blocks** fully data-driven
- **Template variables** support ({company_name}, {phone}, etc.)
- **CSS class customization** for all blocks

---

## Version 1.0.0 - Initial Release
**Release Date**: November 22, 2025

Initial Jekyll setup with Drupal-style naming convention, SCSS architecture, and reusable components.
