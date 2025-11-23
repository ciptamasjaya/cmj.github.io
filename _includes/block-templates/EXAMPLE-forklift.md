# Example: Riksa Uji Forklift Page

## File Structure

```
_services/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/
└── riksa-uji-forklift.md
```

## Frontmatter (Data Layer)

```yaml
---
layout: node--service
title: "Riksa Uji Forklift"
description: "Jasa riksa uji dan inspeksi K3 forklift profesional..."
category: "Riksa Uji Pesawat Angkat Angkut"
sub_category: "Riksa Uji Forklift"

# Content Structure Pattern
content_structure: "1xh1, 2xpara, h2(para+3xh3@2xh4), h2(para+h3@h4), h2(para), h2(para)"

# Block 1: H1 + 2 Paragraphs
intro:
  h1: "Riksa Uji Forklift - Jasa Inspeksi K3 Profesional"
  para_1: "Apa yang dimaksud dengan riksa uji forklift? Riksa uji forklift merupakan pemeriksaan dan pengujian keselamatan terhadap forklift yang wajib dilakukan secara berkala sesuai Peraturan Menteri Ketenagakerjaan Nomor 8 Tahun 2020. Pemeriksaan ini bertujuan untuk memastikan forklift beroperasi dengan aman dan sesuai standar keselamatan kerja yang berlaku."
  para_2: "PT. Cipta Mas Jaya sebagai PJK3 (Perusahaan Jasa Keselamatan dan Kesehatan Kerja) yang telah mendapat izin resmi dari Kementerian Ketenagakerjaan RI, menyediakan layanan riksa uji forklift yang komprehensif dengan tim inspector bersertifikat dan peralatan testing yang terkalibrasi. Kami melayani berbagai jenis forklift termasuk counterbalance, reach truck, dan stacker untuk memastikan keselamatan operasional di tempat kerja Anda."

# Block 2: H2 + Para + 3× H3 (with H4 inside)
mengapa_penting:
  h2: "Mengapa Riksa Uji Forklift Penting?"
  para: "Riksa uji forklift bukan sekadar kewajiban regulasi, tetapi investasi keselamatan yang melindungi aset perusahaan dan keselamatan pekerja..."

  # Will create block--h2-h3sections.html for this pattern
  sections:
    - h3: "Komponen yang Diperiksa dalam Riksa Uji"
      para: "Pemeriksaan riksa uji forklift mencakup inspeksi menyeluruh..."
      subsections:
        - h4: "Sistem Hidrolik dan Lifting Mechanism"
          para: "Sistem hidrolik merupakan jantung dari forklift..."
        - h4: "Sistem Pengereman dan Kontrol"
          para: "Sistem rem pada forklift harus mampu menghentikan unit..."

    - h3: "Prosedur Pengujian Beban"
      para: "Pengujian beban merupakan bagian krusial..."
      subsections:
        - h4: "Pengujian Stabilitas dan Balance"
          para: "Stabilitas forklift diuji dalam berbagai kondisi..."

    - h3: "Dokumentasi dan Sertifikasi"
      para: "Setiap riksa uji yang kami lakukan didokumentasikan..."

# Block 3: H2 + Para (simple)
jenis_forklift:
  h2: "Jenis Forklift yang Kami Layani"
  para: "Kami melayani riksa uji untuk berbagai jenis forklift yang digunakan di industri..."

---
```

## Content Area (Presentation Layer)

```html
<!-- H1 + 2 Paragraphs -->
<section id="intro">
  {% include block-templates/block--h1-2para.html data=page.intro %}
</section>

<!-- H2 + Complex Nested Structure -->
<section id="mengapa-penting">
  {% include block-templates/block--h2-h3sections.html data=page.mengapa_penting %}
</section>

<!-- H2 + Simple Para -->
<section id="jenis-forklift">
  {% include block-templates/block--h2-para.html data=page.jenis_forklift %}
</section>
```

## Key Benefits

### ✅ Separation of Concerns
- **Data** = Frontmatter (content editor friendly)
- **Structure** = Block templates (developer maintains)
- **Styling** = Bootstrap classes (designer controls)

### ✅ Compact Block Files
- Old style: 777 lines (hardcoded 6 cards)
- New style: 38 lines (data-driven)
- **95% reduction!**

### ✅ Flexibility
- Add/remove sections via frontmatter
- No code changes needed
- Reusable across all service pages

### ✅ SEO Optimized
- Proper heading hierarchy (H1 → H2 → H3 → H4)
- Semantic HTML structure
- Lead paragraphs for featured snippets

## Next Steps

Create these blocks:
1. ✅ `block--h1-2para.html` (done)
2. ⬜ `block--h2-para.html`
3. ⬜ `block--h2-h3sections.html` (for complex nested structures)
4. ⬜ `block--h2-cards.html` (for card grids with loop)
