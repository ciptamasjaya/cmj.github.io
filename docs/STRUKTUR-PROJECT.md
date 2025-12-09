# PT. Cipta Mas Jaya - Struktur Project Jekyll

## Overview

Project ini menggunakan **Jekyll** dengan **Bootstrap 5** dan mengikuti **Drupal-style naming convention** untuk template hierarchy. Semua halaman dirancang untuk menggunakan **reusable blocks/components** yang akan diisi kemudian.

## Struktur Menu (Sesuai Website Online)

Berdasarkan https://www.ciptamasjaya.co.id:

1. **Beranda** → `/` (index.html)
2. **Jasa Riksa Uji K3** → `/layanan/` (layanan.html)
3. **Tentang Kami** → `/about/` (about.html)
4. **Hubungi Kami** → `/contact/` (contact.html)
5. **Blog** → `/blog/` (blog.html)

## Arsitektur Template (3 Layer - Drupal Style)

### Layer 1: Page Wrappers (_layouts/page*.html)

**Base:**
- `page.html` - Base page wrapper untuk semua halaman standar
  - Menyediakan struktur: head, header, main, footer
  - Include schema global dan page-specific

**Variants:**
- `page--front.html` - Homepage wrapper (khusus untuk index.html)
- `page--service.html` - Service detail page wrapper (untuk _services/*.md)
- `page--post.html` - Blog post page wrapper (untuk _posts/*.md)

### Layer 2: Node Templates (_layouts/node*.html)

**Base:**
- `node.html` - Base content template (fallback)

**Variants:**
- `node--page.html` - Static pages (About, Contact, dll)
- `node--post.html` - Blog posts
- `node--service.html` - Service detail pages

### Layer 3: Reusable Blocks (_includes/reusable/)

**Folder kosong sementara**, akan diisi dengan:
- `block--hero-homepage.html`
- `block--services-grid.html`
- `block--why-choose-us.html`
- `block--cta-contact.html`
- `block--blog-preview.html`
- `block--breadcrumb.html`
- dll.

## Struktur Folder

```
/home/mkt01/Public/cmj.github/public_html/
├── _config.yml              # Konfigurasi Jekyll
├── Gemfile                  # Dependencies Ruby
├── index.html               # Homepage (layout: page--front)
├── layanan.html             # Service catalog page
├── about.html               # About page
├── contact.html             # Contact page
├── blog.html                # Blog listing page
│
├── _layouts/                # Template layouts (3-layer hierarchy)
│   ├── page.html           # Base page wrapper
│   ├── page--front.html    # Homepage wrapper
│   ├── page--service.html  # Service page wrapper
│   ├── page--post.html     # Blog post wrapper
│   ├── node.html           # Base content template
│   ├── node--page.html     # Static page content
│   ├── node--post.html     # Blog post content
│   └── node--service.html  # Service detail content
│
├── _includes/              # Partial templates
│   ├── head.html           # HTML head (meta, CSS)
│   ├── header.html         # Site header & navigation
│   ├── footer.html         # Site footer
│   ├── schema/             # Schema.org markup files
│   │   ├── schema--global.html
│   │   ├── schema--page.html
│   │   ├── schema--front.html
│   │   ├── schema--about-page.html
│   │   ├── schema--contact-page.html
│   │   ├── schema--service-catalog.html
│   │   ├── schema--blog-catalog.html
│   │   └── schema--faq-contact.html
│   ├── reusable/           # Reusable blocks (KOSONG - akan diisi)
│   └── components/         # Smaller components (KOSONG - akan diisi)
│
├── _services/              # Service collection (KOSONG - akan diisi)
│   # Contoh struktur yang akan dibuat:
│   # ├── riksa-uji-crane.md
│   # ├── riksa-uji-boiler.md
│   # └── riksa-uji-instalasi-listrik.md
│
├── _posts/                 # Blog posts collection (KOSONG)
│
└── assets/                 # Static assets
    ├── css/
    │   └── main.css        # Main stylesheet (Bootstrap 5 + custom)
    ├── js/
    │   └── contact-form.js # Contact form handler
    └── images/             # Images folder (KOSONG)
```

## Konfigurasi (_config.yml)

### Business Info
```yaml
business:
  name: "PT. Cipta Mas Jaya"
  phone: "+62-21-XXXX-XXXX"
  whatsapp: "62812XXXXXXXX"
  location: "Jakarta, Indonesia"
  email: "info@ciptamasjaya.co.id"
```

**⚠️ CATATAN:** Update informasi kontak yang sebenarnya!

### Collections
```yaml
collections:
  services:
    output: true
    permalink: /layanan/:name/
```

## Status Halaman (Current)

Semua halaman sudah dibuat dengan **placeholder content** dan **struktur frontmatter yang benar**:

### ✅ index.html (Homepage)
- Layout: `page--front`
- Schema: `schema--global.html`, `schema--front.html`
- Placeholder untuk: Hero, Services Grid, Why Choose Us, CTA, Blog Preview

### ✅ layanan.html (Services Catalog)
- Layout: `page`
- Schema: `schema--service-catalog.html`
- Placeholder untuk: Service Intro, Service List, Features, CTA

### ✅ about.html (About Page)
- Layout: `page`
- Schema: `schema--about-page.html`
- Placeholder untuk: Company Profile, Why Choose Us, Coverage, Commitment

### ✅ contact.html (Contact Page)
- Layout: `page`
- Schema: `schema--contact-page.html`, `schema--faq-contact.html`
- Placeholder untuk: Contact Cards, Business Info, Contact Form, FAQ

### ✅ blog.html (Blog Listing)
- Layout: `page`
- Schema: `schema--blog-catalog.html`
- Sudah ada loop untuk pagination (jika ada posts)

## Next Steps

### 1. Update Informasi Bisnis
Edit `_config.yml` dan update:
- phone
- whatsapp
- email
- location
- coverage

### 2. Buat Reusable Blocks
Folder: `_includes/reusable/`

**Homepage blocks:**
- `block--hero-homepage.html`
- `block--services-grid.html`
- `block--why-choose-us.html`
- `block--cta-contact.html`
- `block--blog-preview.html`

**Shared blocks:**
- `block--breadcrumb.html`
- `block--service-list.html`
- `block--contact-cards.html`
- `block--quick-contact-form.html`
- dll.

### 3. Buat Service Collection
Folder: `_services/`

Contoh file: `riksa-uji-crane.md`
```markdown
---
layout: node--service
title: Riksa Uji Pesawat Angkat dan Angkut
description: Jasa riksa uji crane dan alat angkat...
icon: "bi-truck"
category: "K3 Inspection"
---

Detail layanan riksa uji pesawat angkat...
```

### 4. Testing Lokal
```bash
# Install dependencies
bundle install

# Run Jekyll server
bundle exec jekyll serve

# Open browser
http://localhost:4000
```

### 5. Deploy ke GitHub Pages
```bash
# Add repository URL di _config.yml
url: "https://ciptamasjaya.github.io"
baseurl: ""  # atau "/nama-repo" jika bukan di root

# Push ke GitHub
git add .
git commit -m "Initial Jekyll structure"
git push origin main
```

## Drupal-Style Naming Convention

### Page Templates
- Base: `page.html`
- Variants: `page--{type}.html`
  - `page--front.html` (homepage)
  - `page--service.html` (service detail)
  - `page--post.html` (blog post)

### Node Templates
- Base: `node.html`
- Variants: `node--{type}.html`
  - `node--page.html` (static pages)
  - `node--service.html` (service detail)
  - `node--post.html` (blog post)

### Reusable Blocks
- Pattern: `block--{name}.html`
  - `block--hero-homepage.html`
  - `block--services-grid.html`
  - `block--breadcrumb.html`

### Schema Files
- Pattern: `schema--{name}.html`
  - `schema--global.html`
  - `schema--page.html`
  - `schema--service-catalog.html`

## Referensi

Project ini mengikuti pola dari:
`/home/mkt01/Public/jualkayudolkengelam.github.io/public_html/`

Key learnings:
- 3-layer template hierarchy
- Drupal naming convention
- Reusable blocks pattern
- Schema.org best practices
- Bootstrap 5 integration

## Author

- arisciwek
- Date: 2025-11-22
- Version: 1.0.0

---

**Status:** ✅ Struktur dasar selesai, siap untuk pengisian reusable blocks
