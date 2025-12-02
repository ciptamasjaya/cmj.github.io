# Release Notes - PT. Cipta Mas Jaya Website

## Version 1.0.4 - PJK3 City Pages & Code Quality
**Release Date**: November 29, 2025
**Build**: 126 files (12M)
**Commits**: 66

### 🎉 What's New

#### 🏙️ PJK3 City Content Type
Complete content system for city-specific PJK3 service pages (e.g., PJK3 Bekasi, PJK3 Jakarta):

- **node--pjk3-city template**: Complete page layout with 17 block sections
- **page--pjk3-city layout**: Wrapper with all schema includes
- **12 city-specific blocks**:
  - `block--hero-pjk3` - Hero section with contact CTA
  - `block--about-city` - City information and characteristics
  - `block--services-excellence` - Service highlights
  - `block--tips-choosing-pjk3` - Tips for choosing PJK3
  - `block--risk-analysis` - K3 risk analysis
  - `block--strategic-role` - Strategic role of PJK3
  - `block--business-potential` - Business opportunities
  - `block--service-coverage` - Area coverage with zones
  - `block--testimonials` - Customer testimonials (industri/komersial)
  - `block--faq-riksa-uji` - FAQ with 3 categories
  - `block--video` - Video section with fallback
  - `block--order-process` - 6-step ordering process
- **Media fallbacks**: Default images (i1-i4.svg) and video when not provided in frontmatter

#### 📊 Article Schema Enhancement
Extended Article schema with comprehensive hasPart references:

- **14 WebPageElement schemas created**:
  - `schema--webpage-hero.html`
  - `schema--webpage-company-intro.html`
  - `schema--webpage-services.html`
  - `schema--webpage-tips.html`
  - `schema--webpage-risks.html`
  - `schema--webpage-roles.html`
  - `schema--webpage-about-city.html`
  - `schema--webpage-business.html`
  - `schema--webpage-coverage.html`
  - `schema--webpage-testimonials.html`
  - `schema--webpage-faq.html`
  - `schema--webpage-video.html`
  - `schema--webpage-order.html`
  - `schema--webpage-conclusion.html`
- **Proper @id linking**: Article references WebPageElement by @id only (no @type/name in hasPart)
- **Schema files renamed**: All use `schema--webpage-*` prefix for clarity
- **Google Rich Results**: All sections have name, description, and text properties

#### 🎨 Code Quality - Inline Style Extraction
Moved all 48 inline styles to external SCSS file:

- **block--pjk3-city.scss** (326 lines):
  - Gradient variables: `$gradient-primary`, `$gradient-purple`, `$gradient-whatsapp`, etc.
  - Mixins: `header-gradient()`, `icon-circle()`, `text-muted-white`
  - High specificity selectors: `section.block--hero-pjk3 .card.hero-card`
- **No `!important`**: All styles work without !important flags
- **Conditional CSS loading**: Only loaded for `page--pjk3-city` and `node--pjk3-city` layouts
- **12 block files cleaned**: Zero inline `style=` attributes
- **Classes introduced**:
  - `.header-gradient` - Section header backgrounds
  - `.hero-card`, `.hero-description` - Hero section
  - `.step-number`, `.step-icon-wrapper` - Order process
  - `.faq-icon-circle` - FAQ icons
  - `.testimonial-avatar`, `.quote-icon` - Testimonials
  - `.gallery-image`, `.gallery-overlay` - Gallery hover effects
  - `.whatsapp-cta-card` - WhatsApp CTA buttons

#### 📦 JS Modularization
Extracted inline scripts and added frontmatter support:

- **gallery-modal.js** (35 lines): Lightbox functionality for gallery modal
- **extra_js mechanism in footer.html**:
  ```liquid
  {% if page.extra_js %}
    {% for js in page.extra_js %}
  <script src="{{ js | relative_url }}" defer></script>
    {% endfor %}
  {% endif %}
  ```
- **layout_extra_js**: Support for layout-specific JS files
- **Zero inline `<script>` tags**: All JS moved to external files
- **Frontmatter usage**:
  ```yaml
  extra_js:
    - /assets/js/gallery-modal.js
  ```

#### 🔧 Schema Verification Tool
New bash script for debugging schema output:

- **check-schema.sh**: Verify schema JSON-LD in built HTML
  - Count total schemas
  - Check for Ruby hash syntax leaks (`=>`)
  - Check for Liquid tag leaks (`{% %}`, `{{ }}`)
  - Verify WebPageElement content (name, description, text)
  - List hasPart references

### 🔧 Technical Improvements

#### CSS Architecture
- Conditional CSS loading per layout type in `head.html`
- High specificity selectors without `!important`
- SCSS variables and mixins for consistency
- Consistent class naming convention

#### JS Architecture
- `extra_js` frontmatter support (mirrors `extra_css` pattern)
- `layout_extra_js` for layout-level scripts
- `defer` attribute for non-blocking load
- Zero inline scripts in block files

#### Schema Architecture
- 14 WebPageElement schemas for Article hasPart
- Consistent `block--` prefix for section IDs
- FAQ schema using `pertanyaan/jawaban` (Indonesian field names)
- Reviews embedded in LocalBusiness schema
- LocalBusiness areaServed extended with containsPlace

#### Naming Conventions
- Block files: `block--{name}.html`
- Schema files: `schema--webpage-{section}.html`
- Section IDs: `#block--{name}` or `#{section}-section`
- CSS classes: `.block--{name}` for section wrapper

### 📊 Impact
- **66 commits** since v1.0.3
- **14 WebPageElement schemas** created
- **12 block files** cleaned (zero inline styles)
- **48 inline styles** extracted to SCSS
- **1 new JS file** (gallery-modal.js)
- **1 new SCSS file** (block--pjk3-city.scss, 326 lines)
- **1 new bash script** (check-schema.sh)
- **Build increased** from 106 to 126 files (12M)

### 📁 Files Added/Modified

#### New Files
```
assets/css/block--pjk3-city.scss
assets/js/gallery-modal.js
check-schema.sh
_includes/schema/node--pjk3-city/schema--webpage-hero.html
_includes/schema/node--pjk3-city/schema--webpage-company-intro.html
_includes/schema/node--pjk3-city/schema--webpage-services.html
_includes/schema/node--pjk3-city/schema--webpage-tips.html
_includes/schema/node--pjk3-city/schema--webpage-risks.html
_includes/schema/node--pjk3-city/schema--webpage-roles.html
_includes/schema/node--pjk3-city/schema--webpage-about-city.html
_includes/schema/node--pjk3-city/schema--webpage-business.html
_includes/schema/node--pjk3-city/schema--webpage-coverage.html
_includes/schema/node--pjk3-city/schema--webpage-testimonials.html
_includes/schema/node--pjk3-city/schema--webpage-faq.html
_includes/schema/node--pjk3-city/schema--webpage-video.html
_includes/schema/node--pjk3-city/schema--webpage-order.html
_includes/schema/node--pjk3-city/schema--webpage-conclusion.html
```

#### Modified Files
```
_includes/head.html (conditional CSS loading)
_includes/footer.html (extra_js mechanism)
_includes/schema/schema--article.html (14 hasPart references)
_includes/reusable/node--pjk3-city/block--hero-pjk3.html
_includes/reusable/node--pjk3-city/block--about-city.html
_includes/reusable/node--pjk3-city/block--services-excellence.html
_includes/reusable/node--pjk3-city/block--tips-choosing-pjk3.html
_includes/reusable/node--pjk3-city/block--order-process.html
_includes/reusable/node--pjk3-city/block--gallery.html
_includes/reusable/node--pjk3-city/block--video.html
_includes/reusable/node--pjk3-city/block--faq-riksa-uji.html
_includes/reusable/node--pjk3-city/block--testimonials.html
_includes/reusable/node--pjk3-city/block--service-coverage.html
_includes/reusable/node--pjk3-city/block--strategic-role.html
_includes/reusable/node--pjk3-city/block--business-potential.html
```
