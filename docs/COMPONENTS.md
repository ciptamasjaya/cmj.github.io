# Reusable Components Documentation

## Overview

Folder `_includes/components/` berisi reusable components yang dapat digunakan di berbagai halaman dengan parameter yang flexible. Semua components menggunakan **Bootstrap 5** dan mengikuti pola **include parameters** dari Jekyll.

---

## 1. Accordion Component

**File:** `_includes/components/accordion.html`

### Deskripsi
Bootstrap 5 accordion yang dapat menyimpan multiple items dengan collapse functionality.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `accordion_id` | string | `"defaultAccordion"` | Unique ID untuk accordion element |
| `items` | array | - | Array of accordion items (lihat struktur di bawah) |
| `flush` | boolean | `false` | Menghilangkan border dan rounded corners |
| `allow_multiple` | boolean | `false` | Izinkan multiple items terbuka bersamaan |
| `parent_id` | string | - | Parent accordion ID untuk nested accordions |

### Item Structure
```json
[
  {
    "title": "Item Title",
    "content": "Item content HTML",
    "icon": "bi-info-circle",
    "expanded": true
  }
]
```

### Contoh Penggunaan

**Simple FAQ:**
```liquid
{% capture faq_items %}
[
  {
    "title": "Apa itu Riksa Uji K3?",
    "content": "<p>Riksa uji K3 adalah pemeriksaan dan pengujian peralatan...</p>",
    "icon": "bi-question-circle",
    "expanded": true
  },
  {
    "title": "Berapa lama proses riksa uji?",
    "content": "<p>Proses riksa uji biasanya memakan waktu 1-3 hari...</p>",
    "icon": "bi-clock"
  }
]
{% endcapture %}

{% include components/accordion.html
   accordion_id="faqAccordion"
   items=faq_items
%}
```

---

## 2. Card Component

**File:** `_includes/components/card.html`

### Deskripsi
Bootstrap 5 card dengan banyak opsi kustomisasi untuk image, icon, badge, dan link.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `image` | string | - | Image URL |
| `image_position` | string | `"top"` | `"top"` atau `"bottom"` |
| `image_alt` | string | title | Alt text untuk image |
| `icon` | string | - | Bootstrap icon class (e.g., `"bi-shield-check"`) |
| `icon_size` | string | `"3rem"` | Ukuran icon |
| `icon_color` | string | `"text-primary"` | Warna icon |
| `title` | string | - | Card title |
| `subtitle` | string | - | Card subtitle |
| `badge` | string | - | Badge text |
| `badge_color` | string | `"bg-primary"` | Badge background class |
| `content` | string | - | Card body content (required) |
| `footer` | string | - | Card footer content |
| `link_url` | string | - | URL untuk card link |
| `link_text` | string | `"Selengkapnya"` | Text untuk card link |
| `hover_effect` | boolean | `true` | Hover transform effect |
| `border` | string | - | Border class (e.g., `"border-primary"`) |
| `shadow` | string | `"shadow-sm"` | Shadow class |
| `text_center` | boolean | `false` | Center align text |

### Contoh Penggunaan

**Service Card:**
```liquid
{% include components/card.html
   icon="bi-shield-check"
   icon_color="text-success"
   title="Riksa Uji Crane"
   badge="Populer"
   content="<p>Pemeriksaan dan pengujian alat angkat sesuai standar K3...</p>"
   link_url="/layanan/riksa-uji-crane"
   link_text="Lihat Detail"
   text_center=true
%}
```

**Card dengan Image:**
```liquid
{% include components/card.html
   image="/assets/images/service-crane.jpg"
   image_alt="Riksa Uji Crane"
   title="Riksa Uji Crane"
   content="<p>Layanan pemeriksaan crane berkala...</p>"
   shadow="shadow-lg"
%}
```

---

## 3. Ordered List Component

**File:** `_includes/components/ordered-list.html`

### Deskripsi
Styled ordered list dengan support untuk icons, titles, dan descriptions.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `items` | array | - | Array of list items (string atau object) |
| `list_style` | string | `"decimal"` | `"decimal"`, `"upper-alpha"`, `"lower-alpha"`, `"upper-roman"`, `"lower-roman"` |
| `icon_color` | string | `"text-primary"` | Warna icon |
| `title_bold` | boolean | `true` | Bold untuk title |
| `spacing` | string | `"mb-3"` | Spacing antar items |
| `wrapper` | string | `"none"` | `"card"` atau `"none"` |
| `card_title` | string | - | Title untuk card wrapper |

### Item Structure
```liquid
<!-- Simple array -->
{% assign steps = "Step 1|Step 2|Step 3" | split: "|" %}

<!-- Array with objects -->
[
  {
    "title": "Konsultasi Awal",
    "content": "Tim kami akan melakukan konsultasi...",
    "icon": "bi-chat-dots"
  }
]
```

### Contoh Penggunaan

**Process Steps:**
```liquid
{% capture process_steps %}
[
  {
    "title": "Konsultasi Awal",
    "content": "Tim kami akan melakukan konsultasi untuk memahami kebutuhan Anda",
    "icon": "bi-chat-dots"
  },
  {
    "title": "Jadwal Inspeksi",
    "content": "Tentukan jadwal yang sesuai untuk melakukan riksa uji",
    "icon": "bi-calendar-check"
  },
  {
    "title": "Proses Pengujian",
    "content": "Teknisi bersertifikat melakukan pemeriksaan menyeluruh",
    "icon": "bi-tools"
  },
  {
    "title": "Laporan & Sertifikat",
    "content": "Dapatkan laporan lengkap dan sertifikat resmi",
    "icon": "bi-file-earmark-check"
  }
]
{% endcapture %}

{% include components/ordered-list.html
   items=process_steps
   wrapper="card"
   card_title="Alur Proses Riksa Uji"
   icon_color="text-success"
%}
```

---

## 4. Unordered List Component

**File:** `_includes/components/unordered-list.html`

### Deskripsi
Styled unordered list dengan check icons, custom icons, atau bullets.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `items` | array | - | Array of list items (string atau object) |
| `style` | string | `"check"` | `"check"`, `"icon"`, `"bullet"`, `"none"` |
| `default_icon` | string | `"bi-check-circle-fill"` | Default icon untuk semua items |
| `icon_color` | string | `"text-success"` | Warna icon |
| `title_bold` | boolean | `true` | Bold untuk title |
| `spacing` | string | `"mb-2"` | Spacing antar items |
| `wrapper` | string | `"none"` | `"card"` atau `"none"` |
| `card_title` | string | - | Title untuk card wrapper |

### Contoh Penggunaan

**Features List:**
```liquid
{% assign features = "Sertifikat resmi|Teknisi bersertifikat|Harga kompetitif|Proses cepat" | split: "|" %}
{% include components/unordered-list.html
   items=features
   style="check"
   icon_color="text-success"
%}
```

**Benefits dengan Custom Icons:**
```liquid
{% capture benefits %}
[
  {
    "content": "Sertifikat resmi dari Kemnaker",
    "icon": "bi-award-fill"
  },
  {
    "content": "Teknisi bersertifikat dan berpengalaman",
    "icon": "bi-person-badge"
  },
  {
    "content": "Laporan detail dan komprehensif",
    "icon": "bi-file-earmark-text"
  }
]
{% endcapture %}

{% include components/unordered-list.html
   items=benefits
   style="icon"
   icon_color="text-primary"
   wrapper="card"
   card_title="Keunggulan Layanan Kami"
%}
```

---

## 5. CTA WhatsApp Component

**File:** `_includes/components/cta-whatsapp.html`

### Deskripsi
WhatsApp CTA dengan 4 style berbeda: floating, button, card, dan inline.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `style` | string | `"button"` | `"floating"`, `"button"`, `"card"`, `"inline"` |
| `message` | string | `"Halo, saya ingin informasi..."` | Custom WhatsApp message |
| `button_text` | string | `"Hubungi via WhatsApp"` | Text untuk button |
| `button_size` | string | `"md"` | `"sm"`, `"md"`, `"lg"` |
| `button_color` | string | `"success"` | `"success"`, `"primary"`, `"danger"` |
| `phone` | string | site.business.whatsapp | Custom phone number |
| `icon_only` | boolean | `false` | Floating button icon only |
| `position` | string | `"right"` | `"left"` atau `"right"` (floating only) |
| `title` | string | - | Title untuk card/inline style |
| `description` | string | - | Description untuk card/inline style |
| `show_phone` | boolean | `true` | Tampilkan nomor telepon |

### Contoh Penggunaan

**Floating Button:**
```liquid
{% include components/cta-whatsapp.html
   style="floating"
   position="right"
%}
```

**Button di Content:**
```liquid
{% include components/cta-whatsapp.html
   style="button"
   button_text="Chat Sekarang"
   button_size="lg"
   message="Halo, saya ingin konsultasi tentang riksa uji crane"
%}
```

**Card Style (untuk CTA Section):**
```liquid
{% include components/cta-whatsapp.html
   style="card"
   title="Butuh Konsultasi?"
   description="Hubungi kami sekarang untuk konsultasi gratis tentang layanan riksa uji K3"
   button_text="Hubungi Kami"
%}
```

**Inline Style:**
```liquid
{% include components/cta-whatsapp.html
   style="inline"
   title="Ada Pertanyaan?"
   description="Tim kami siap membantu Anda"
   button_size="sm"
%}
```

---

## 6. Carousel Component

**File:** `_includes/components/carousel.html`

### Deskripsi
Bootstrap 5 image carousel/slider dengan WebP optimization dan lazy loading.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `carousel_id` | string | `"imageCarousel"` | Unique ID untuk carousel (required) |
| `images` | array | - | Array of image paths atau objects (required) |
| `title` | string | - | Default title untuk alt text (required) |
| `max_height` | string | `"500px"` | Max height untuk images |
| `autoplay` | boolean | `false` | Auto-play carousel |
| `interval` | number | `5000` | Auto-play interval (ms) |
| `controls` | boolean | `true` | Show prev/next controls |
| `indicators` | boolean | `true` | Show slide indicators |
| `fade` | boolean | `false` | Use fade transition |

### Image Structure
```liquid
<!-- Simple array -->
{% assign gallery = "/img1.jpg,/img2.jpg,/img3.jpg" | split: "," %}

<!-- Array with captions -->
[
  {
    "image": "/assets/img1.jpg",
    "title": "Title 1",
    "caption": "Caption 1"
  }
]
```

### Contoh Penggunaan

**Simple Gallery:**
```liquid
{% assign gallery = "/assets/images/crane-1.jpg,/assets/images/crane-2.jpg,/assets/images/crane-3.jpg" | split: "," %}
{% include components/carousel.html
   carousel_id="craneGallery"
   images=gallery
   title="Riksa Uji Crane"
   max_height="600px"
%}
```

**Carousel dengan Captions:**
```liquid
{% capture slides %}
[
  {
    "image": "/assets/images/service-1.jpg",
    "title": "Riksa Uji Crane",
    "caption": "Pemeriksaan menyeluruh alat angkat"
  },
  {
    "image": "/assets/images/service-2.jpg",
    "title": "Riksa Uji Boiler",
    "caption": "Inspeksi bejana tekan dan pesawat uap"
  }
]
{% endcapture %}

{% include components/carousel.html
   carousel_id="servicesCarousel"
   images=slides
   title="Layanan Riksa Uji K3"
   autoplay=true
   interval=3000
%}
```

---

## 7. Card H2 Basic Component

**File:** `_includes/components/card--h2-basic.html`

### Deskripsi
Card wrapper untuk H2 heading dengan icon, gradient background, dan optional subtitle. Cocok untuk section headers.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `title` | string | - | H2 heading text (required) |
| `subtitle` | string | - | Optional subtitle/description |
| `icon` | string | - | Bootstrap icon class (e.g., `"bi-cash-coin"`) |
| `icon_size` | string | `"2.5rem"` | Icon font size |
| `gradient` | string | `"green"` | Gradient preset: green, blue, red, purple, orange, primary, custom |
| `custom_gradient` | string | - | Custom gradient CSS jika gradient="custom" |
| `text_color` | string | `"text-white"` | Text color class |
| `spacing` | string | `"my-5"` | Margin spacing class |
| `shadow` | string | `"shadow-sm"` | Shadow class |
| `border` | string | - | Optional border class |
| `padding` | string | `"py-4 px-3"` | Padding class |
| `text_align` | string | `"center"` | Text alignment |

### Gradient Presets
- `green`: #10b981 → #047857
- `blue`: #3b82f6 → #1d4ed8
- `red`: #ef4444 → #b91c1c
- `purple`: #a855f7 → #7e22ce
- `orange`: #f97316 → #c2410c
- `primary`: #0d6efd → #084298

### Contoh Penggunaan

**Basic dengan green gradient:**
```liquid
{% include components/card--h2-basic.html
   title="Harga dan Pengiriman"
   subtitle="Harga terjangkau dengan sistem pembayaran COD yang aman"
   icon="bi-cash-coin"
%}
```

**Blue gradient untuk layanan:**
```liquid
{% include components/card--h2-basic.html
   title="Layanan Kami"
   subtitle="Jasa riksa uji K3 terpercaya"
   icon="bi-shield-check"
   gradient="blue"
%}
```

**Custom gradient:**
```liquid
{% include components/card--h2-basic.html
   title="Hubungi Kami"
   icon="bi-telephone"
   gradient="custom"
   custom_gradient="linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
%}
```

---

## 8. Card H2 Gradient Component

**File:** `_includes/components/card--h2-gradient.html`

### Deskripsi
Enhanced variant dari card H2 dengan theme-based gradients dan decorative subtitle icons. Lebih decorative untuk content yang ingin lebih menonjol.

### Perbedaan dari card--h2-basic:
- Shadow lebih besar (shadow-lg default)
- More theme presets (coffee, ocean, sunset, dll)
- Customizable subtitle icons
- Lebih decorative

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `title` | string | - | H2 heading text (required) |
| `subtitle` | string | - | Optional subtitle/description |
| `icon` | string | - | Main Bootstrap icon class |
| `icon_size` | string | `"2.5rem"` | Main icon font size |
| `subtitle_icon` | string | `"bi-stars"` | Icon untuk subtitle (decorative) |
| `gradient` | string | `"coffee"` | Theme preset atau "custom" |
| `custom_gradient` | string | - | Custom gradient CSS |
| `text_color` | string | `"text-white"` | Text color class |
| `spacing` | string | `"my-5"` | Margin spacing |
| `shadow` | string | `"shadow-lg"` | Shadow class |
| `padding` | string | `"py-4 px-3"` | Padding class |

### Theme Gradient Presets
- `coffee`: #D4A574 → #6B5310 (untuk cafe/restaurant)
- `ocean`: #0ea5e9 → #0369a1 (biru laut)
- `sunset`: #f97316 → #dc2626 (orange-red)
- `forest`: #10b981 → #047857 (hijau)
- `royal`: #8b5cf6 → #6d28d9 (ungu)
- `fire`: #dc2626 → #991b1b (merah)
- `night`: #1e293b → #020617 (gelap)
- `sky`: #38bdf8 → #0284c7 (biru cerah)

### Contoh Penggunaan

**Coffee theme:**
```liquid
{% include components/card--h2-gradient.html
   title="6 Aplikasi Kayu Dolken di Interior Cafe"
   subtitle="Dari area indoor hingga outdoor, temukan inspirasi implementasi yang sesuai konsep cafe Anda"
   icon="bi-cup-hot-fill"
   gradient="coffee"
%}
```

**Ocean theme untuk layanan:**
```liquid
{% include components/card--h2-gradient.html
   title="Layanan Riksa Uji K3"
   subtitle="Profesional, Terpercaya, dan Bersertifikat"
   icon="bi-shield-check"
   subtitle_icon="bi-check-circle"
   gradient="ocean"
%}
```

**Custom subtitle icon:**
```liquid
{% include components/card--h2-gradient.html
   title="Sertifikasi Resmi"
   subtitle="Terdaftar dan diakui oleh Kementerian Ketenagakerjaan"
   icon="bi-award-fill"
   subtitle_icon="bi-shield-fill-check"
   gradient="royal"
%}
```

---

## 9. Unordered List With Text Component

**File:** `_includes/components/unordered-list--with-text.html`

### Deskripsi
Simple variant dari unordered list - hanya icon + text inline tanpa title/description separation. Lebih lightweight dan praktis untuk simple text lists.

### Perbedaan dari unordered-list.html:
- Lebih simple (no title/content structure)
- Minimal parameters
- Focus untuk text-only lists
- Lightweight & quick to use

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `items` | array | - | Array of simple text strings (required) |
| `icon` | string | `"bi-square"` | Bootstrap icon class |
| `icon_color` | string | `"text-secondary"` | Icon color class |
| `text_size` | string | `"small"` | Text size class |
| `spacing` | string | `"mb-2"` | Item spacing |
| `custom_class` | string | - | Additional list classes |

### Common Icons
- `bi-square` (default)
- `bi-circle`, `bi-dash`
- `bi-arrow-right`, `bi-chevron-right`, `bi-caret-right`
- `bi-check`, `bi-dot`

### Contoh Penggunaan

**Simple usage:**
```liquid
{% assign tips = "Combine dengan smooth surface|Use natural lighting|Perhatikan proporsi" | split: "|" %}
{% include components/unordered-list--with-text.html
   items=tips
%}
```

**With check icon (green):**
```liquid
{% assign features = "Sertifikat resmi|Teknisi berpengalaman|Harga kompetitif" | split: "|" %}
{% include components/unordered-list--with-text.html
   items=features
   icon="bi-check"
   icon_color="text-success"
%}
```

**With arrow icon:**
```liquid
{% assign steps = "Hubungi kami|Jadwalkan inspeksi|Terima sertifikat" | split: "|" %}
{% include components/unordered-list--with-text.html
   items=steps
   icon="bi-arrow-right"
   icon_color="text-primary"
   text_size=""
%}
```

**Larger spacing:**
```liquid
{% include components/unordered-list--with-text.html
   items=benefits
   icon="bi-chevron-right"
   spacing="mb-3"
%}
```

---

## 10. Item List Strong Title Component

**File:** `_includes/components/item-list--strong-title.html`

### Deskripsi
Individual list item dengan icon, strong/bold title, dan optional description. Flex layout untuk perfect alignment antara icon dan content.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `title` | string | - | Item title (required) |
| `description` | string | - | Item description (optional) |
| `icon` | string | - | Bootstrap icon class (required) |
| `icon_color` | string | `"text-primary"` | Icon color class |
| `icon_size` | string | `"1.5rem"` | Icon font size |
| `title_color` | string | `"text-wood"` | Title text color |
| `desc_color` | string | `"text-muted"` | Description color |
| `desc_size` | string | `"small"` | Description size |
| `spacing` | string | `"mb-3"` | Margin bottom |
| `icon_spacing` | string | `"me-3"` | Space between icon and text |

### Contoh Penggunaan

**Basic dengan description:**
```liquid
{% include components/item-list--strong-title.html
   title="Tahan Kelembaban Tinggi"
   description="Ideal untuk area dapur, bar basah, atau outdoor area yang sering terpapar air dan kelembaban"
   icon="bi-droplet-fill"
%}
```

**Custom icon color dan size:**
```liquid
{% include components/item-list--strong-title.html
   title="Sertifikat Resmi"
   description="Terdaftar dan diakui oleh Kementerian Ketenagakerjaan RI"
   icon="bi-award-fill"
   icon_color="text-warning"
   icon_size="2rem"
%}
```

**Tanpa description (title saja):**
```liquid
{% include components/item-list--strong-title.html
   title="Konsultasi Gratis"
   icon="bi-chat-dots"
   icon_color="text-success"
%}
```

**Success theme:**
```liquid
{% include components/item-list--strong-title.html
   title="Proses Cepat"
   description="Pengerjaan efisien tanpa mengorbankan kualitas"
   icon="bi-lightning-fill"
   icon_color="text-success"
   title_color="text-success"
%}
```

**Dalam loop (multiple items):**
```liquid
<div class="benefits-list">
  {% include components/item-list--strong-title.html
     title="Tahan Lama"
     description="Material berkualitas tinggi"
     icon="bi-shield-fill-check"
  %}

  {% include components/item-list--strong-title.html
     title="Ramah Lingkungan"
     description="Produk eco-friendly"
     icon="bi-tree-fill"
     icon_color="text-success"
  %}

  {% include components/item-list--strong-title.html
     title="Harga Kompetitif"
     description="Kualitas terbaik dengan harga terjangkau"
     icon="bi-cash-coin"
     icon_color="text-warning"
  %}
</div>
```

---

## 11. Heading H3 Circle Component

**File:** `_includes/components/heading--h3-circle.html`

### Deskripsi
H3 heading dengan icon dalam rounded circle background. Cocok untuk sub-sections, numbered lists, feature items, atau step indicators.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `title` | string | - | Heading text (required) |
| `icon` | string | - | Bootstrap icon class (required) |
| `color` | string | `"success"` | Color theme |
| `icon_size` | string | `"1.5rem"` | Icon font size |
| `circle_size` | string | `"50px"` | Circle width/height |
| `heading_level` | string | `"h3"` | HTML heading tag (h3, h4, h5, h6) |
| `heading_class` | string | `"h6 mb-0"` | Additional heading classes |
| `text_color` | string | `"text-wood"` | Text color class |
| `spacing` | string | `"mb-3"` | Margin bottom spacing |
| `align` | string | `"align-items-center"` | Flex alignment |

### Color Themes
- `success`: Green (#198754)
- `primary`: Blue (#0d6efd)
- `danger`: Red (#dc3545)
- `warning`: Yellow (#ffc107)
- `info`: Cyan (#0dcaf0)
- `secondary`: Gray (#6c757d)
- `dark`: Dark (#212529)

### Contoh Penggunaan

**Basic green theme:**
```liquid
{% include components/heading--h3-circle.html
   title="5. Kontras Material untuk Visual Interest"
   icon="bi-grid-3x3"
%}
```

**Blue theme untuk steps:**
```liquid
{% include components/heading--h3-circle.html
   title="Langkah 1: Konsultasi Awal"
   icon="bi-chat-dots"
   color="primary"
%}
```

**Warning theme dengan icon lebih besar:**
```liquid
{% include components/heading--h3-circle.html
   title="Keunggulan Layanan Kami"
   icon="bi-award-fill"
   color="warning"
   icon_size="2rem"
   circle_size="60px"
%}
```

**Sebagai H4 dengan spacing custom:**
```liquid
{% include components/heading--h3-circle.html
   title="Sub Section Detail"
   icon="bi-check-circle"
   heading_level="h4"
   spacing="mb-4"
%}
```

**Danger theme untuk peringatan:**
```liquid
{% include components/heading--h3-circle.html
   title="Perhatian Penting"
   icon="bi-exclamation-triangle"
   color="danger"
   text_color="text-danger"
%}
```

---

## 12. Heading H4 Icon Component

**File:** `_includes/components/heading--h4-icon.html`

### Deskripsi
Simple heading dengan inline icon prefix (tanpa circle background). Lebih lightweight daripada heading--h3-circle, cocok untuk sub-headings atau quick section titles.

### Perbedaan dari heading--h3-circle:
- Tidak ada circle background
- Lebih minimal dan lightweight
- Icon langsung inline dengan text
- Lebih compact

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `title` | string | - | Heading text (required) |
| `icon` | string | - | Bootstrap icon class (required) |
| `icon_color` | string | `"text-primary"` | Icon color class |
| `heading_level` | string | `"h4"` | HTML heading tag (h1-h6) |
| `heading_size` | string | `"h6"` | Heading size class |
| `text_color` | string | `"text-wood"` | Text color class |
| `font_weight` | string | `"fw-bold"` | Font weight class |
| `spacing` | string | `"mb-2"` | Margin bottom |
| `icon_spacing` | string | `"me-2"` | Space between icon and text |
| `custom_class` | string | - | Additional classes |

### Color Options
- `text-primary` (blue)
- `text-success` (green)
- `text-danger` (red)
- `text-warning` (yellow/orange)
- `text-info` (cyan)
- `text-secondary` (gray)
- `text-dark`, `text-wood`

### Contoh Penggunaan

**Basic usage:**
```liquid
{% include components/heading--h4-icon.html
   title="Kegunaan Utama & Aplikasi Spesial"
   icon="bi-check-circle-fill"
   icon_color="text-danger"
%}
```

**Success theme (green):**
```liquid
{% include components/heading--h4-icon.html
   title="Keunggulan Produk"
   icon="bi-check-circle-fill"
   icon_color="text-success"
   text_color="text-success"
%}
```

**Primary blue theme:**
```liquid
{% include components/heading--h4-icon.html
   title="Informasi Penting"
   icon="bi-info-circle-fill"
   icon_color="text-primary"
   text_color="text-primary"
%}
```

**Custom heading level and size:**
```liquid
{% include components/heading--h4-icon.html
   title="Section Title"
   icon="bi-star-fill"
   icon_color="text-warning"
   heading_level="h3"
   heading_size="h5"
%}
```

**Multiple headings in sequence:**
```liquid
<div class="content-section">
  {% include components/heading--h4-icon.html
     title="Kegunaan Utama"
     icon="bi-check-circle-fill"
     icon_color="text-danger"
  %}
  <p>Content here...</p>

  {% include components/heading--h4-icon.html
     title="Spesifikasi Teknis"
     icon="bi-tools"
     icon_color="text-secondary"
  %}
  <p>Technical specs...</p>

  {% include components/heading--h4-icon.html
     title="Cara Pemasangan"
     icon="bi-hammer"
     icon_color="text-warning"
  %}
  <p>Installation guide...</p>
</div>
```

---

## Best Practices

### 1. Naming Convention
- Component files: `lowercase-with-hyphens.html`
- Component IDs: `camelCase` (e.g., `faqAccordion`, `servicesCarousel`)
- Parameters: `snake_case` (e.g., `button_text`, `icon_color`)

### 2. Parameter Handling
```liquid
{% assign param_name = include.param_name | default: "default_value" %}
```

### 3. Conditional Rendering
```liquid
{% if include.show_title %}
  <h3>{{ include.title }}</h3>
{% endif %}
```

### 4. Responsive Design
Semua components sudah responsive dengan Bootstrap 5 classes dan custom media queries.

### 5. Accessibility
- Gunakan proper ARIA labels
- Alt text untuk images
- Semantic HTML
- Keyboard navigation support

---

## Kombinasi Components

Anda dapat mengkombinasikan multiple components dalam satu section:

```liquid
<section class="services-section py-5">
  <div class="container">
    <h2 class="text-center mb-5">Layanan Kami</h2>

    <div class="row g-4">
      <div class="col-md-6 col-lg-4">
        {% include components/card.html
           icon="bi-truck"
           title="Riksa Uji Crane"
           content="<p>Pemeriksaan alat angkat...</p>"
           link_url="/layanan/riksa-uji-crane"
        %}
      </div>
      <div class="col-md-6 col-lg-4">
        {% include components/card.html
           icon="bi-speedometer"
           title="Riksa Uji Boiler"
           content="<p>Inspeksi bejana tekan...</p>"
           link_url="/layanan/riksa-uji-boiler"
        %}
      </div>
    </div>

    <div class="row mt-5">
      <div class="col-lg-8 mx-auto">
        {% include components/cta-whatsapp.html
           style="card"
           title="Tertarik dengan Layanan Kami?"
        %}
      </div>
    </div>
  </div>
</section>
```

---

## Author

- arisciwek
- Date: 2025-11-22
- Version: 1.5.0

**Status:** ✅ 12 reusable components siap digunakan

### Components List:
1. accordion.html - Bootstrap 5 accordion
2. card.html - Flexible card component
3. ordered-list.html - Styled ordered list
4. unordered-list.html - Styled unordered list (with title/content)
5. unordered-list--with-text.html - Simple text-only list
6. item-list--strong-title.html - List item dengan icon, title, description
7. cta-whatsapp.html - WhatsApp CTA (4 styles)
8. carousel.html - Image carousel/slider
9. card--h2-basic.html - Section header dengan gradient
10. card--h2-gradient.html - Decorative section header dengan themes
11. heading--h3-circle.html - H3 heading dengan icon circle
12. **heading--h4-icon.html** - H4 heading dengan inline icon ✨ NEW
