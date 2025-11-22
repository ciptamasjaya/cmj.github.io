# Changelog

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
