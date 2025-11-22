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
- Version: 1.0.0

**Status:** ✅ 6 reusable components siap digunakan
