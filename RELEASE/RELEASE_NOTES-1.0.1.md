# Release Notes - PT. Cipta Mas Jaya Website

## Version 1.0.0 (2025-11-22)

### 🎉 Initial Release

Website company profile PT. Cipta Mas Jaya dengan Jekyll static site generator, menggunakan Bootstrap 5 dan arsitektur template 3-layer dengan Drupal-style naming convention.

---

## Feature Highlights

### 1. Jekyll Structure & Template Architecture
**Commit**: `c59438e` - Initial setup: Jekyll structure with Drupal-style naming convention

Setup struktur dasar Jekyll dengan:
- **3-layer template hierarchy**: page, node, reusable blocks
- **Drupal-style naming convention**: page.html, page--front.html, node--service.html
- **5 halaman utama**: index, layanan, about, contact, blog
- **Bootstrap 5 integration**
- **Schema.org markup templates**
- **Collection setup**: services dan posts

**Struktur Folder**:
```
_layouts/         # Page wrappers dan node templates
_includes/        # head, header, footer, schema files
_services/        # Collection untuk layanan K3
_posts/           # Collection untuk blog
assets/           # CSS dan JS
```

**Files Created**: 29 files, 2056 insertions

---

### 2. Reusable Components Library
**Commit**: `6714e22` - Add reusable components with flexible parameters

Menambahkan 6 reusable components di `_includes/components/` dengan parameter yang flexible:

**Components**:
- **accordion.html**: Bootstrap 5 accordion dengan multi-item support
- **card.html**: Flexible card component dengan icon, image, badge
- **ordered-list.html**: Styled ordered list dengan icon dan title support
- **unordered-list.html**: Styled unordered list dengan check/custom icons
- **cta-whatsapp.html**: WhatsApp CTA dengan 4 styles (floating, button, card, inline)
- **carousel.html**: Image carousel/slider dengan WebP optimization

**Features**:
- Semua components menggunakan include parameters
- Support untuk berbagai use cases
- Bootstrap 5 based
- Responsive design
- Accessibility compliant
- Documented dengan contoh penggunaan lengkap

**Documentation**: COMPONENTS.md dengan dokumentasi lengkap

**Files Created**: 7 files, 1447 insertions

---

### 3. Section Header Components
**Commit**: `e90c758` - Add card H2 components for section headers

Menambahkan 2 variant card components untuk section headers:

**1. card--h2-basic.html**:
- Basic section header dengan gradient background
- 6 gradient presets (green, blue, red, purple, orange, primary)
- Optional icon dan subtitle
- Customizable spacing, shadow, padding
- Perfect untuk section dividers

**2. card--h2-gradient.html**:
- Enhanced decorative variant
- 8 theme-based gradients (coffee, ocean, sunset, forest, royal, fire, night, sky)
- Customizable subtitle icons (stars, shields, checks, dll)
- Larger shadow (shadow-lg) untuk emphasis
- Ideal untuk featured sections

**Updates**:
- COMPONENTS.md: Documentation section 7 & 8
- Total components: 6 → 8

**Files Created**: 3 files, 449 insertions

---

### 4. Heading Components
**Commit**: `9e324f1` - Add heading H3 circle component
**Commit**: `8057978` - Add heading H4 icon component

**heading--h3-circle.html**:
- H3 heading dengan icon dalam rounded circle
- Icon dalam circle background dengan opacity 10%
- 7 color themes (success, primary, danger, warning, info, secondary, dark)
- Flex layout untuk perfect alignment
- Customizable icon size, circle size, spacing
- Dapat digunakan sebagai h3, h4, h5, atau h6

**heading--h4-icon.html**:
- Simple inline icon headings
- Lightweight alternative to heading--h3-circle (no background)
- Support flexible heading levels (h1-h6)
- Color themes support

**Use Cases**:
- Numbered sections (1., 2., 3.)
- Feature lists dengan icon
- Step-by-step guides
- Sub-headings dalam content
- Process indicators

**Files Created**: 4 files, 553 insertions

---

### 5. List Components
**Commit**: `757ec1f` - Add simple text list component
**Commit**: `bd003c9` - Add item-list--strong-title component

**unordered-list--with-text.html**:
- Simple icon + text inline list
- Lightweight untuk simple text lists
- No title/content structure (just icon + text)
- Minimal parameters
- Quick to use untuk daily lists

**item-list--strong-title.html**:
- List items dengan icon, strong title, dan description
- Flex layout dengan perfect alignment
- Customizable icon colors, sizes, and spacing
- Icon size presets: sm | md | lg | xl | 2xl

**Total Components**: 12 reusable components

**Files Created**: 2 files, 224 insertions

---

### 6. SCSS Architecture
**Commit**: `7200ff2` - Add SCSS architecture with modular partials

Implementasi modular SCSS architecture untuk maintainability:

**Files**:
- **_variables.scss**: Global variables (colors, spacing, typography, gradients)
- **_mixins.scss**: Reusable mixins (responsive, flexbox, hover effects, etc)
- **_base.scss**: Base styles (resets, typography, utility classes)
- **_components.scss**: Component-specific styles (navbar, cards, buttons, etc)
- **main.scss**: Entry point yang mengimport semua partials

**Features**:
- Modular SCSS architecture untuk maintainability
- Mobile-first responsive design
- Brand colors dan gradient presets
- Reusable mixins untuk common patterns
- Support untuk semua components di `_includes/components/`
- No more inline styles atau debugging alignment issues
- Auto-compile by Jekyll

**Documentation**: SCSS-GUIDE.md dengan comprehensive guide

**Files Created**: 7 files, 2373 insertions

---

### 7. Brand Assets & PWA
**Commit**: `71906da` - Add brand logo, favicon and PWA support

Create SVG-based brand assets dan Progressive Web App support:

**Brand Assets**:
- logo.svg: Main brand logo
- logo-horizontal.svg: Horizontal logo untuk navbar
- favicon.svg: Scalable favicon

**PWA Support**:
- site.webmanifest: PWA manifest untuk mobile experience
- browserconfig.xml: Windows tile configuration
- Enhanced head.html dengan PWA meta tags

**Files Created**: 7 files, 165 insertions

---

### 8. Schema.org & SEO Enhancement
**Commit**: `3123ff0` - Add rebuild.sh and enhance Schema.org markup

Comprehensive Schema.org implementation untuk SEO:

**Schema Types**:
- **Organization schema**: Complete business details (address, geo, hours, social media)
- **LocalBusiness schema**: Local SEO dengan service offerings
- **Service catalog schema**: Detailed 5 services (ItemList)
- **FAQPage schema**: 8 common questions
- **Breadcrumb schema**: Navigation support

**Business Data**:
- Phone: +62-856-8258-841
- Location: Serang, Banten
- Address: Jl Raya Taktakan
- Geo coordinates: -6.114722, 106.138402

**Build Script**:
- **rebuild.sh**: Comprehensive Jekyll build script
  - Commands: install, build, serve, clean
  - Auto-detection of installed gems
  - Colored output untuk readability

**Files Created**: 11 files, 723 insertions

---

## File Structure

```
cmj.github.io/
├── _config.yml              # Jekyll configuration
├── _layouts/                # Template layouts
│   ├── page.html
│   ├── page--front.html
│   ├── page--post.html
│   ├── page--service.html
│   ├── node.html
│   ├── node--post.html
│   └── node--service.html
├── _includes/
│   ├── components/          # 12 reusable components
│   ├── schema/              # Schema.org templates
│   ├── head.html
│   ├── header.html
│   └── footer.html
├── assets/
│   ├── css/
│   │   ├── _variables.scss
│   │   ├── _mixins.scss
│   │   ├── _base.scss
│   │   ├── _components.scss
│   │   └── main.scss
│   ├── js/
│   │   └── contact-form.js
│   └── images/
│       ├── logo.svg
│       ├── logo-horizontal.svg
│       └── favicon.svg
├── index.html               # Homepage
├── layanan.html             # Services catalog
├── about.html               # About page
├── contact.html             # Contact page
├── blog.html                # Blog catalog
├── rebuild.sh               # Build script
├── site.webmanifest         # PWA manifest
├── browserconfig.xml        # Windows tile config
├── COMPONENTS.md            # Component documentation
├── SCSS-GUIDE.md           # SCSS architecture guide
└── STRUKTUR-PROJECT.md     # Project structure guide
```

---

## Technical Stack

- **Static Site Generator**: Jekyll 4.x
- **CSS Framework**: Bootstrap 5
- **CSS Preprocessor**: SCSS with modular architecture
- **JavaScript**: Vanilla JS (contact form validation)
- **Schema Markup**: JSON-LD (Schema.org)
- **PWA**: Web Manifest + Service Worker ready
- **Icons**: Bootstrap Icons
- **Naming Convention**: Drupal-style (BEM-inspired)

---

## Components Library (12 Total)

1. ✅ accordion.html - Bootstrap accordion
2. ✅ card.html - Flexible card component
3. ✅ card--h2-basic.html - Section header basic
4. ✅ card--h2-gradient.html - Section header gradient
5. ✅ carousel.html - Image carousel
6. ✅ cta-whatsapp.html - WhatsApp CTA (4 variants)
7. ✅ heading--h3-circle.html - Circle icon heading
8. ✅ heading--h4-icon.html - Inline icon heading
9. ✅ item-list--strong-title.html - Icon + title + description list
10. ✅ ordered-list.html - Styled ordered list
11. ✅ unordered-list.html - Styled unordered list
12. ✅ unordered-list--with-text.html - Simple icon list

---

## Documentation

- **COMPONENTS.md**: Comprehensive component library documentation
- **SCSS-GUIDE.md**: SCSS architecture and usage guide
- **STRUKTUR-PROJECT.md**: Project structure and template hierarchy
- **README.md**: Project overview and quick start

---

## Performance & SEO

✅ **Schema.org markup**: Organization, LocalBusiness, Service, FAQ, Breadcrumb
✅ **Mobile-first responsive**: Bootstrap 5 grid system
✅ **PWA ready**: Manifest + browserconfig
✅ **SVG assets**: Scalable brand assets
✅ **Modular CSS**: SCSS partials untuk maintainability
✅ **Semantic HTML**: Proper heading hierarchy
✅ **Accessibility**: ARIA labels dan semantic markup

---

## Build & Deployment

```bash
# Install dependencies
./rebuild.sh install

# Build site
./rebuild.sh build

# Serve locally (http://localhost:4000)
./rebuild.sh serve

# Clean build artifacts
./rebuild.sh clean
```

---

## Next Steps (Roadmap)

- [ ] Populate `_services` collection dengan layanan K3
- [ ] Populate `_posts` collection dengan blog content
- [ ] Add contact form backend integration
- [ ] Implement service worker untuk PWA
- [ ] Add more reusable blocks untuk content assembly
- [ ] Create tutorial/documentation untuk content editors

---

## Credits

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>

---

**Total Stats**: 12 commits, 68 files changed, 6,400+ insertions
