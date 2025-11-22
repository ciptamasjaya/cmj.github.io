# Template: Membuat Block Baru

**File:** `TEMPLATES/TEMPLATE-membuat-block.md`
**Version:** 1.0.1
**Date:** 2025-11-22
**Author:** arisciwek (PT. Cipta Mas Jaya)

---

## 📋 Daftar Isi

1. [Overview](#overview)
2. [⚠️ ATURAN PENTING](#️-aturan-penting)
3. [Workflow Membuat Block](#workflow-membuat-block)
4. [Step-by-Step Process](#step-by-step-process)
5. [Contoh Konkret](#contoh-konkret)
6. [Best Practices](#best-practices)
7. [Checklist](#checklist)

---

## Overview

Template ini adalah panduan untuk membuat block baru menggunakan **existing components** yang sudah terdaftar di `COMPONENT-COLLECTION.yml`. Dengan menggunakan existing components, kita memastikan:

✅ **Konsistensi**: Semua block menggunakan component yang sama
✅ **Maintainability**: Perubahan di component akan otomatis apply ke semua block
✅ **Reusability**: Component dapat digunakan ulang di berbagai block
✅ **Documentation**: Semua component sudah terdokumentasi dengan baik

---

## ⚠️ ATURAN PENTING

### Default Paragraph Rules

**🔴 WAJIB DIIKUTI - SANGAT PENTING UNTUK SEO DAN CONTENT STRUCTURE:**

#### 1. Minimal 1 Paragraf Setelah H2

**Jika user LUPA memberikan perintah tentang paragraf setelah H2, ALWAYS tambahkan minimal 1 paragraf intro.**

```yaml
# ❌ SALAH - H2 tanpa paragraf
section_name:
  heading_2_title: "Judul Section"
  # Langsung ke cards - SALAH!

# ✅ BENAR - H2 dengan minimal 1 paragraf
section_name:
  heading_2_title: "Judul Section"
  intro_paragraph: "<p>Minimal 1 paragraf intro di sini</p>"
  # Baru kemudian cards/content lainnya
```

**Alasan:**
- ✅ SEO: Search engines butuh context dari H2
- ✅ UX: User butuh penjelasan tentang section
- ✅ Accessibility: Screen readers butuh intro text
- ✅ Content Structure: Heading tanpa content adalah bad practice

#### 2. Minimal 1 Paragraf Setelah Setiap H3

**Jika user LUPA memberikan perintah tentang paragraf setelah H3 (di dalam cards), ALWAYS tambahkan minimal 1 paragraf.**

```yaml
# ❌ SALAH - H3 tanpa paragraf/content
heading_3_title_1: "Title Card 1"
# Langsung ke H4 atau kosong - SALAH!

# ✅ BENAR - H3 dengan minimal 1 paragraf
heading_3_title_1: "Title Card 1"
card_paragraph_1: "<p>Minimal 1 paragraf penjelasan card</p>"
# Baru kemudian H4 sub-sections (jika ada)
```

**Alasan:**
- ✅ Every heading needs supporting content
- ✅ Cards tanpa content terlihat kosong dan tidak informatif
- ✅ Better content structure dan hierarchy
- ✅ Improved user experience

#### 3. Default Pattern untuk Block

**Pattern Standar (jika user tidak specify):**

```
H2 Section Title
├── Minimal 1 paragraf intro ← WAJIB
├── (Optional) Alert/Notice
├── Card 1 (H3)
│   ├── Minimal 1 paragraf content ← WAJIB
│   └── (Optional) H4 sub-sections
├── Card 2 (H3)
│   ├── Minimal 1 paragraf content ← WAJIB
│   └── (Optional) H4 sub-sections
└── ...
```

#### 4. Contoh Frontmatter dengan Default Paragraphs

```yaml
---
section_example:
  # H2 dengan WAJIB minimal 1 paragraf
  heading_2_title: "Layanan Riksa Uji K3"
  intro_paragraph: "<p>PT. Cipta Mas Jaya menyediakan layanan riksa uji K3 profesional dan terpercaya untuk berbagai jenis peralatan industri.</p>"

  # Card 1 dengan WAJIB minimal 1 paragraf
  heading_3_title_1: "Riksa Uji Crane"
  card_paragraph_1: "<p>Pemeriksaan dan pengujian menyeluruh untuk alat angkat crane sesuai standar K3.</p>"

  # Card 2 dengan WAJIB minimal 1 paragraf
  heading_3_title_2: "Riksa Uji Forklift"
  card_paragraph_2: "<p>Inspeksi teknis forklift untuk memastikan keselamatan operasional.</p>"

  # Card 3 dengan WAJIB minimal 1 paragraf
  heading_3_title_3: "Riksa Uji Instalasi Listrik"
  card_paragraph_3: "<p>Pengujian sistem kelistrikan dan grounding untuk keselamatan kerja.</p>"
---
```

#### 5. Exception Cases

**Kapan boleh skip paragraf:**

1. **H4 Sub-sections** - Boleh tanpa paragraf jika langsung list/items
2. **Technical specifications** - Jika pakai table/list format
3. **Image galleries** - Jika content utamanya adalah gambar

**Tapi H2 dan H3 TETAP WAJIB ada minimal 1 paragraf!**

#### 6. Quick Decision Tree

```
User request block baru?
├─ Ada spec paragraf untuk H2?
│  ├─ Ya → Follow spec
│  └─ Tidak → TAMBAHKAN MINIMAL 1 PARAGRAF ← DEFAULT
│
├─ Ada spec paragraf untuk H3/Cards?
│  ├─ Ya → Follow spec
│  └─ Tidak → TAMBAHKAN MINIMAL 1 PARAGRAF PER CARD ← DEFAULT
│
└─ User explicitly bilang "tanpa paragraf"?
   ├─ Ya → OK, skip (tapi confirm dulu)
   └─ Tidak → USE DEFAULT (tambahkan paragraf)
```

#### 7. Template Variables Naming

**Konsisten naming untuk paragraphs:**

```yaml
# Untuk H2 section intro
intro_paragraph: "..."           # Single paragraph
intro_paragraph_1: "..."         # Multiple paragraphs
intro_paragraph_2: "..."

# Untuk H3 cards
card_paragraph_1: "..."          # Card 1 content
card_paragraph_2: "..."          # Card 2 content
card_paragraph_3: "..."          # Card 3 content

# Untuk H4 content (optional)
h4_content_1_1: "..."           # H4 pertama di card 1
h4_content_1_2: "..."           # H4 kedua di card 1
```

#### 8. Reminder Saat Membuat Block

**Sebelum finalize block, check:**

- [ ] ✅ H2 ada minimal 1 paragraf intro?
- [ ] ✅ Setiap H3/Card ada minimal 1 paragraf content?
- [ ] ✅ Frontmatter template include semua paragraph variables?
- [ ] ✅ Documentation explain paragraph requirements?
- [ ] ✅ Example frontmatter show proper content structure?

**Jika semua YES → Block ready!**
**Jika ada NO → FIX dulu sebelum register di BLOCK-COLLECTION.yml**

---

### 📌 Summary Aturan Paragraf

| Element | Paragraf Required? | Default Count | Exception |
|---------|-------------------|---------------|-----------|
| **H2** | ✅ WAJIB | Min. 1 | Never |
| **H3** (Cards) | ✅ WAJIB | Min. 1 | Never |
| **H4** | ⚪ Optional | 0-1 | Technical/Lists OK tanpa paragraf |
| **H5/H6** | ⚪ Optional | 0-1 | Rare usage |

**INGAT: Jika user lupa/tidak specify → USE DEFAULT (tambahkan paragraf)!**

---

## Workflow Membuat Block

```
┌─────────────────────────────────┐
│ 1. TERIMA REQUIREMENTS          │
│    User request block baru      │
└────────────┬────────────────────┘
             │
             ▼
┌─────────────────────────────────┐
│ 2. ANALISA STRUKTUR             │
│    - Heading structure?         │
│    - Paragraphs berapa?         │
│    - Cards berapa?              │
│    - Sub-sections?              │
└────────────┬────────────────────┘
             │
             ▼
┌─────────────────────────────────┐
│ 3. CEK COMPONENT-COLLECTION.yml │
│    Cari component yang sesuai   │
└────────────┬────────────────────┘
             │
             ▼
┌─────────────────────────────────┐
│ 4. BACA FILE COMPONENT          │
│    Study parameters & usage     │
└────────────┬────────────────────┘
             │
             ▼
┌─────────────────────────────────┐
│ 5. BUAT BLOCK FILE              │
│    Susun components jadi block  │
└────────────┬────────────────────┘
             │
             ▼
┌─────────────────────────────────┐
│ 6. BUAT FRONTMATTER TEMPLATE    │
│    List semua variables         │
└────────────┬────────────────────┘
             │
             ▼
┌─────────────────────────────────┐
│ 7. DAFTARKAN DI REGISTRY        │
│    Update BLOCK-COLLECTION.yml  │
└─────────────────────────────────┘
```

---

## Step-by-Step Process

### Step 1: Analisa Requirements

**Contoh Request:**
> "Buat block H2 dengan 2 paragraf, 4 card H3, masing-masing H3 ada 4 buah H4, boleh pakai alert"

**Breakdown:**
- **H2**: 1 buah (main title)
- **Paragraphs**: 2 buah (intro)
- **H3**: 4 buah (card titles)
- **H4**: 16 buah (4 H4 per card × 4 cards)
- **Alert**: Optional (bisa ada di intro atau di cards)
- **Total Headings**: 21 (1 H2 + 4 H3 + 16 H4)

**Struktur:**
```
H2 Section Title
├── Paragraph 1
├── Paragraph 2
├── (Optional) Alert
├── Card 1 (H3)
│   ├── H4-1
│   ├── H4-2
│   ├── H4-3
│   └── H4-4
├── Card 2 (H3)
│   ├── H4-1
│   ├── H4-2
│   ├── H4-3
│   └── H4-4
├── Card 3 (H3)
│   └── ... (4 H4s)
└── Card 4 (H3)
    └── ... (4 H4s)
```

---

### Step 2: Cek COMPONENT-COLLECTION.yml

**Buka file:** `/home/mkt01/Public/cmj.github/public_html/TEMPLATES/COMPONENT-COLLECTION.yml`

**Cari components yang dibutuhkan:**

1. **Untuk H2 + paragraphs:**
   - Search: `card-h2-basic` atau `card-h2-gradient`
   - File: `components/card--h2-basic.html`

2. **Untuk Cards dengan H3:**
   - Search: `card`
   - File: `components/card.html`

3. **Untuk H4 headings:**
   - Search: `heading-h4-icon`
   - File: `components/heading--h4-icon.html`

4. **Untuk Alert:**
   - Search: `alert`
   - File: `components/alert.html`

**Tips:**
- Gunakan `Ctrl+F` untuk search di COMPONENT-COLLECTION.yml
- Lihat bagian `use_cases` untuk match dengan kebutuhan
- Check `heading_structure` jika ada untuk tahu heading pattern

---

### Step 3: Baca File Components

**Read each component file:**

```bash
# Read H2 card component
cat _includes/components/card--h2-basic.html

# Read card component
cat _includes/components/card.html

# Read H4 heading component
cat _includes/components/heading--h4-icon.html

# Read alert component
cat _includes/components/alert.html
```

**Study:**
- Parameters yang required
- Parameters yang optional
- Default values
- Usage examples
- Frontmatter template

---

### Step 4: Buat Block File

**Filename Convention:**
```
_includes/reusable-blocks/block--[description].html
```

**Contoh:**
```
block--h2-with-4-cards-detailed.html
```

**Structure Template:**

```liquid
{% comment %}
============================================================================
Block: [Block Name]
============================================================================

@file        _includes/reusable-blocks/block--[name].html
@description [Description]
@version     1.0.0
@date        2025-11-22
@author      arisciwek

Features:
---------
- [Feature 1]
- [Feature 2]
- [Feature 3]

Heading Structure:
------------------
- h2: [count]
- h3: [count]
- h4: [count]
- Total: [total]

Instructions:
-------------
[Instructions untuk user]

Frontmatter Template:
---------------------
[Copy frontmatter template here]

============================================================================
{% endcomment %}

{% if page.section_[block_name] %}
<section class="block--[block-name] my-5">

  <!-- H2 Section Header -->
  {% include components/card--h2-basic.html
     title=page.section_[block_name].heading_2_title
     subtitle=page.section_[block_name].subtitle
     icon=page.section_[block_name].icon
     gradient=page.section_[block_name].gradient
  %}

  <!-- ⚠️ WAJIB: Intro Paragraphs setelah H2 (minimal 1) -->
  <div class="container">
    <div class="row">
      <div class="col-12">
        {{ page.section_[block_name].intro_paragraph_1 }}
        {% if page.section_[block_name].intro_paragraph_2 %}
        {{ page.section_[block_name].intro_paragraph_2 }}
        {% endif %}
      </div>
    </div>
  </div>

  <!-- Alert (Optional) -->
  {% if page.section_[block_name].alert_content %}
  {% include components/alert.html
     content=page.section_[block_name].alert_content
     variant=page.section_[block_name].alert_variant
     icon=page.section_[block_name].alert_icon
  %}
  {% endif %}

  <!-- 4 Cards Grid -->
  <div class="row g-4 mt-4">

    <!-- Card 1 -->
    <div class="col-md-6 col-lg-3">
      {% capture card_1_content %}
        <!-- ⚠️ WAJIB: Card intro paragraph setelah H3 (minimal 1) -->
        {{ page.section_[block_name].card_paragraph_1 }}

        <!-- 4 H4 Sub-sections -->
        {% include components/heading--h4-icon.html
           title=page.section_[block_name].h4_title_1_1
           icon=page.section_[block_name].h4_icon_1_1
           icon_color=page.section_[block_name].h4_icon_color_1_1
        %}
        <p>{{ page.section_[block_name].h4_content_1_1 }}</p>

        {% include components/heading--h4-icon.html
           title=page.section_[block_name].h4_title_1_2
           icon=page.section_[block_name].h4_icon_1_2
           icon_color=page.section_[block_name].h4_icon_color_1_2
        %}
        <p>{{ page.section_[block_name].h4_content_1_2 }}</p>

        {% include components/heading--h4-icon.html
           title=page.section_[block_name].h4_title_1_3
           icon=page.section_[block_name].h4_icon_1_3
           icon_color=page.section_[block_name].h4_icon_color_1_3
        %}
        <p>{{ page.section_[block_name].h4_content_1_3 }}</p>

        {% include components/heading--h4-icon.html
           title=page.section_[block_name].h4_title_1_4
           icon=page.section_[block_name].h4_icon_1_4
           icon_color=page.section_[block_name].h4_icon_color_1_4
        %}
        <p>{{ page.section_[block_name].h4_content_1_4 }}</p>
      {% endcapture %}

      {% include components/card.html
         icon=page.section_[block_name].card_icon_1
         icon_size="xl"
         icon_color=page.section_[block_name].card_icon_color_1
         title=page.section_[block_name].heading_3_title_1
         content=card_1_content
         hover_effect=true
         shadow="shadow-sm"
      %}
    </div>

    <!-- Card 2, 3, 4 dengan struktur yang sama -->
    <!-- ... repeat untuk card 2, 3, 4 ... -->

  </div>
</section>
{% endif %}
```

---

### Step 5: Buat Frontmatter Template

**Di dalam comment block file, tambahkan:**

```yaml
---
section_[block_name]:
  # ========================================================================
  # H2 SECTION HEADER
  # ========================================================================
  heading_2_title: "Isi judul H2 section di sini"
  subtitle: "Isi subtitle section di sini"
  icon: "bi-award"
  gradient: "green"

  # ========================================================================
  # INTRO PARAGRAPHS
  # ========================================================================
  intro_paragraph_1: "<p>Isi paragraf pertama di sini</p>"
  intro_paragraph_2: "<p>Isi paragraf kedua di sini</p>"

  # ========================================================================
  # ALERT (OPTIONAL)
  # ========================================================================
  alert_content: "Informasi penting di sini" # Optional, bisa dihapus
  alert_variant: "info" # Optional
  alert_icon: "bi-info-circle-fill" # Optional

  # ========================================================================
  # CARD 1
  # ========================================================================
  heading_3_title_1: "Isi judul H3 card 1"
  card_icon_1: "bi-shield-check"
  card_icon_color_1: "text-primary"

  # ⚠️ WAJIB: Card intro paragraph (minimal 1)
  card_paragraph_1: "<p>Isi paragraf intro card 1 di sini</p>"

  # H4 Sub-sections Card 1
  h4_title_1_1: "H4 pertama card 1"
  h4_icon_1_1: "bi-check-circle-fill"
  h4_icon_color_1_1: "text-success"
  h4_content_1_1: "<p>Konten H4 pertama</p>"

  h4_title_1_2: "H4 kedua card 1"
  h4_icon_1_2: "bi-check-circle-fill"
  h4_icon_color_1_2: "text-success"
  h4_content_1_2: "<p>Konten H4 kedua</p>"

  h4_title_1_3: "H4 ketiga card 1"
  h4_icon_1_3: "bi-check-circle-fill"
  h4_icon_color_1_3: "text-success"
  h4_content_1_3: "<p>Konten H4 ketiga</p>"

  h4_title_1_4: "H4 keempat card 1"
  h4_icon_1_4: "bi-check-circle-fill"
  h4_icon_color_1_4: "text-success"
  h4_content_1_4: "<p>Konten H4 keempat</p>"

  # ========================================================================
  # CARD 2
  # ========================================================================
  heading_3_title_2: "Isi judul H3 card 2"
  card_icon_2: "bi-lightning-fill"
  card_icon_color_2: "text-warning"

  # ⚠️ WAJIB: Card intro paragraph (minimal 1)
  card_paragraph_2: "<p>Isi paragraf intro card 2 di sini</p>"

  # H4 Sub-sections Card 2 (sama seperti Card 1)
  # h4_title_2_1, h4_title_2_2, h4_title_2_3, h4_title_2_4...

  # ========================================================================
  # CARD 3
  # ========================================================================
  heading_3_title_3: "Isi judul H3 card 3"
  card_icon_3: "bi-gear-fill"
  card_icon_color_3: "text-info"

  # ⚠️ WAJIB: Card intro paragraph (minimal 1)
  card_paragraph_3: "<p>Isi paragraf intro card 3 di sini</p>"

  # H4 Sub-sections Card 3 (sama seperti Card 1)
  # h4_title_3_1, h4_title_3_2, h4_title_3_3, h4_title_3_4...

  # ========================================================================
  # CARD 4
  # ========================================================================
  heading_3_title_4: "Isi judul H3 card 4"
  card_icon_4: "bi-trophy-fill"
  card_icon_color_4: "text-success"

  # ⚠️ WAJIB: Card intro paragraph (minimal 1)
  card_paragraph_4: "<p>Isi paragraf intro card 4 di sini</p>"

  # H4 Sub-sections Card 4 (sama seperti Card 1)
  # h4_title_4_1, h4_title_4_2, h4_title_4_3, h4_title_4_4...
---
```

---

### Step 6: Daftarkan di BLOCK-COLLECTION.yml

**Edit file:** `/home/mkt01/Public/cmj.github/public_html/TEMPLATES/BLOCK-COLLECTION.yml`

**Tambahkan entry baru:**

```yaml
  - id: h2-with-4-cards-detailed
    file: reusable-blocks/block--h2-with-4-cards-detailed.html
    name: "H2 Section with 4 Detailed Cards"
    category: general
    tags:
      - general-purpose
      - detailed
      - features
      - 4-column
      - h4-subsections
    use_cases:
      - detailed_service_showcase
      - comprehensive_features
      - multi_card_layout
    description: |
      Block dengan H2 heading, 2 intro paragraphs, optional alert, dan 4 detailed cards.
      Setiap card berisi H3 title dan 4 H4 sub-sections dengan icons.
      Layout 4-column responsive dengan struktur heading yang kompleks (21 total headings).

    heading_structure:
      h2: 1   # Main section title
      h3: 4   # Card titles
      h4: 16  # 4 H4 per card × 4 cards
      h5: 0
      h6: 0
      total: 21

    frontmatter_variables:
      section_name: "section_h2_with_4_cards_detailed"
      required_fields:
        - heading_2_title
        - intro_paragraph_1
        - intro_paragraph_2
        # Card 1
        - heading_3_title_1
        - card_icon_1
        # H4s for card 1
        - h4_title_1_1
        - h4_title_1_2
        - h4_title_1_3
        - h4_title_1_4
        # ... repeat untuk card 2, 3, 4 ...

    component_dependencies:
      - components/card--h2-basic.html
      - components/card.html
      - components/heading--h4-icon.html
      - components/alert.html

    css_classes:
      - block--h2-with-4-cards-detailed
      - # ... list semua CSS classes ...
```

---

## Contoh Konkret

### Contoh 1: Block Simple dengan 3 Cards

**Request:**
> "Buat block H2 dengan 1 paragraf, 3 cards biasa"

**Analisa:**
- H2: 1
- Paragraphs: 1
- H3: 3
- Total: 4 headings

**Components:**
1. `card--h2-basic.html` untuk H2 + paragraph
2. `card.html` untuk 3 cards

**File:**
```liquid
{% comment %}
Block: H2 with 3 Simple Cards
Total Headings: 4 (1 H2 + 3 H3)
{% endcomment %}

{% if page.section_h2_with_3_simple_cards %}
<section class="block--h2-with-3-simple-cards my-5">

  <!-- H2 Header -->
  {% include components/card--h2-basic.html
     title=page.section_h2_with_3_simple_cards.heading_2_title
     subtitle=page.section_h2_with_3_simple_cards.intro_paragraph
     icon=page.section_h2_with_3_simple_cards.icon
  %}

  <!-- 3 Cards -->
  <div class="row g-4 mt-4">
    <div class="col-md-4">
      {% include components/card.html
         icon=page.section_h2_with_3_simple_cards.card_icon_1
         title=page.section_h2_with_3_simple_cards.heading_3_title_1
         content=page.section_h2_with_3_simple_cards.card_content_1
      %}
    </div>
    <!-- Card 2, 3 ... -->
  </div>
</section>
{% endif %}
```

---

### Contoh 2: Block dengan Alert

**Request:**
> "Buat block H2, 1 alert warning, 2 cards"

**Components:**
1. `card--h2-basic.html`
2. `alert.html`
3. `card.html` (2x)

**File:**
```liquid
{% if page.section_h2_alert_2_cards %}
<section class="block--h2-alert-2-cards my-5">

  <!-- H2 Header -->
  {% include components/card--h2-basic.html
     title=page.section_h2_alert_2_cards.heading_2_title
  %}

  <!-- Alert -->
  {% include components/alert.html
     content=page.section_h2_alert_2_cards.alert_content
     variant="warning"
     icon="bi-exclamation-triangle-fill"
     dismissible=true
  %}

  <!-- 2 Cards -->
  <div class="row g-4 mt-4">
    <!-- Cards... -->
  </div>
</section>
{% endif %}
```

---

## Best Practices

### 1. Naming Conventions

**Block Files:**
```
block--[purpose]-[variant].html
```

**Examples:**
- `block--h2-with-3-cards.html`
- `block--h2-with-3-cards-detailed.html`
- `block--h2-with-4-cards-detailed.html`
- `block--hero-with-cta.html`

**Frontmatter Section Names:**
```
section_[block_purpose]
```

**Examples:**
- `section_h2_with_3_cards`
- `section_h2_with_3_cards_detailed`
- `section_hero_with_cta`

### 2. CSS Class Naming

**Pattern:**
```
block--[name]
block__[element]
block__[element]--[modifier]
```

**Example:**
```html
<section class="block--h2-with-cards">
  <div class="block__header">...</div>
  <div class="block__card block__card-1">...</div>
  <div class="block__card block__card-2">...</div>
</section>
```

### 3. Frontmatter Organization

**Group by sections:**
```yaml
section_name:
  # H2 SECTION HEADER
  heading_2_title: "..."

  # INTRO PARAGRAPHS
  intro_paragraph_1: "..."

  # CARD 1
  heading_3_title_1: "..."
  # H4s for Card 1
  h4_title_1_1: "..."

  # CARD 2
  # ...
```

### 4. Documentation

**Always include:**
- File header comment dengan metadata
- Features list
- Heading structure breakdown
- Instructions untuk user
- Frontmatter template
- Usage example

### 5. Component Selection

**Prefer reusable components:**
- ✅ Use `components/card.html` untuk cards
- ✅ Use `components/heading--h4-icon.html` untuk H4
- ✅ Use `components/alert.html` untuk alerts
- ❌ Jangan buat custom HTML jika ada component yang sesuai

### 6. Responsive Design

**Always use Bootstrap grid:**
```html
<div class="row g-4">
  <div class="col-md-6 col-lg-3">...</div> <!-- 4 columns on large -->
  <div class="col-md-6 col-lg-4">...</div> <!-- 3 columns on large -->
  <div class="col-md-4">...</div>          <!-- 3 columns on medium -->
</div>
```

### 7. Icon Consistency

**Use consistent icon themes:**
- Success: `bi-check-circle-fill` dengan `text-success`
- Info: `bi-info-circle-fill` dengan `text-primary`
- Warning: `bi-exclamation-triangle-fill` dengan `text-warning`
- Danger: `bi-exclamation-circle-fill` dengan `text-danger`

---

## Checklist

### Before Creating Block

- [ ] Baca dan pahami requirements dengan jelas
- [ ] Breakdown struktur heading (H2, H3, H4, dll)
- [ ] Hitung total headings
- [ ] ⚠️ **Check: Apakah user specify paragraf untuk H2 dan H3?** (Jika tidak → USE DEFAULT)
- [ ] Identifikasi components yang dibutuhkan
- [ ] Check COMPONENT-COLLECTION.yml untuk component yang tersedia

### During Development

- [ ] Baca file component yang akan digunakan
- [ ] Study parameters dan usage examples
- [ ] Buat block file dengan naming convention yang benar
- [ ] Include proper documentation di comment block
- [ ] ⚠️ **WAJIB: Tambahkan minimal 1 paragraf setelah H2** (jika user lupa specify)
- [ ] ⚠️ **WAJIB: Tambahkan minimal 1 paragraf setelah setiap H3** (jika user lupa specify)
- [ ] Test frontmatter template di sample page
- [ ] Verify responsive behavior di berbagai screen sizes
- [ ] Check heading hierarchy (H2 → H3 → H4, no skipping)

### After Creating Block

- [ ] Tambahkan entry di BLOCK-COLLECTION.yml
- [ ] Update metadata: id, name, description, tags
- [ ] List semua component dependencies
- [ ] Document heading structure
- [ ] List semua frontmatter variables (required + optional)
- [ ] List CSS classes untuk debugging
- [ ] Test block di actual page
- [ ] Verify all components render correctly
- [ ] Check accessibility (alt texts, aria labels)
- [ ] Commit ke git dengan clear message

---

## Component Quick Reference

### Most Used Components

| Component | Use For | File |
|-----------|---------|------|
| `card--h2-basic` | H2 section headers | `components/card--h2-basic.html` |
| `card--h2-gradient` | Themed H2 headers | `components/card--h2-gradient.html` |
| `card` | Content cards | `components/card.html` |
| `heading--h3-circle` | H3 with circle icon | `components/heading--h3-circle.html` |
| `heading--h4-icon` | H4 with inline icon | `components/heading--h4-icon.html` |
| `alert` | Notifications/alerts | `components/alert.html` |
| `button` | CTA buttons | `components/button.html` |
| `badge` | Labels/tags | `components/badge.html` |
| `modal` | Popups/dialogs | `components/modal.html` |
| `accordion` | Collapsible content | `components/accordion.html` |
| `carousel` | Image sliders | `components/carousel.html` |
| `table` | Tabular data | `components/table.html` |
| `unordered-list` | Bullet lists | `components/unordered-list.html` |
| `ordered-list` | Numbered lists | `components/ordered-list.html` |

### Grid Layouts

**2 Columns:**
```html
<div class="col-md-6">...</div>
```

**3 Columns:**
```html
<div class="col-md-4">...</div>
```

**4 Columns:**
```html
<div class="col-md-6 col-lg-3">...</div>
```

**6 Columns:**
```html
<div class="col-md-4 col-lg-2">...</div>
```

---

## Troubleshooting

### Block tidak muncul di page
- ✅ Check frontmatter section name match dengan block condition
- ✅ Verify `{% if page.section_name %}` condition
- ✅ Check indentation di frontmatter YAML

### Component tidak render dengan benar
- ✅ Verify component path di `{% include %}`
- ✅ Check parameter names (case-sensitive)
- ✅ Verify required parameters ada di frontmatter
- ✅ Check COMPONENT-COLLECTION.yml untuk parameter list

### Heading hierarchy issues
- ✅ Jangan skip heading levels (H2 → H4 is wrong)
- ✅ Each section should start with appropriate level
- ✅ Use heading components untuk consistency

### Responsive layout broken
- ✅ Use Bootstrap grid classes correctly
- ✅ Test di berbagai screen sizes
- ✅ Check `g-4` atau `gx-*/gy-*` for proper spacing

---

## References

- **COMPONENT-COLLECTION.yml**: Component registry dengan full documentation
- **BLOCK-COLLECTION.yml**: Block registry dengan metadata
- **Bootstrap 5 Docs**: https://getbootstrap.com/docs/5.3/
- **Bootstrap Icons**: https://icons.getbootstrap.com/

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0.1 | 2025-11-22 | ⚠️ Added CRITICAL default paragraph rules: Min 1 paragraph after H2 and each H3 |
| 1.0.0 | 2025-11-22 | Initial template creation |

---

**Notes:**
- Template ini adalah living document, update jika ada workflow baru
- Selalu gunakan existing components jika tersedia
- Konsistensi lebih penting daripada kustomisasi
- Document semua yang dibuat untuk maintainability

---

**END OF TEMPLATE**
