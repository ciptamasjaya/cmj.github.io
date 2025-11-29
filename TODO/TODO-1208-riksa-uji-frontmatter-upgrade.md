# TODO-1208: Upgrade Riksa Uji Frontmatter ke Format PJK3-City

## Target Files
- `_posts/2024-08-26-jasa-riksa-uji-forklift.md`
- `_posts/2024-08-26-jasa-riksa-uji-boiler.md`

## Reference File
- `_posts/2025-05-24-pjk3-bekasi.md` (template lengkap)

## Date: 2025-11-29

---

## Comparison Analysis

### Current State (node--riksa-uji)

| Aspek | Forklift/Boiler | PJK3 Bekasi |
|-------|-----------------|-------------|
| Layout | `node/node--riksa-uji` | `node/node--pjk3-city` |
| Lines | ~400 lines | ~575 lines |
| Sections | 7 sections | 14 sections |
| Schema Types | 4 (HowTo, ItemList, FAQ, Video) | Implicit dalam layout |
| Area Focus | Generic/National | City-specific (Bekasi) |
| Testimonials | Tidak ada | Ada (4 testimoni) |
| Coverage Area | Tidak ada | Detail (zona industri, kecamatan) |
| City Profile | Tidak ada | Ada (sejarah, ekonomi, infrastruktur) |

### Missing Sections in Riksa Uji Files

| Section | Field Name | Description |
|---------|------------|-------------|
| Hero | `section_hero` | Hero section dengan badges, wilayah layanan, CTA |
| Gallery | `section_gallery` | Galeri foto dokumentasi |
| Video | `section_video` | Video section dengan CTA |
| Company Intro | `section_company_intro` | Pengenalan perusahaan dengan subsections |
| Services | `section_services` | Layanan dengan icon dan deskripsi |
| Area Characteristics | `section_area` | Karakteristik wilayah industri |
| Risk Analysis | `section_risks` | Analisis risiko K3 dengan severity |
| Strategic Role | `section_role` | Peran strategis PJK3 |
| Business Potential | `section_business` | Potensi bisnis dan investasi |
| City Profile | `section_city` | Profil kota dengan highlights |
| Coverage Area | `section_coverage` | Detail zona industri, kecamatan, landmark |
| Order Process | `section_order` | Proses pemesanan 6 langkah |
| Testimonials | `section_testimonials` | Testimoni klien industri & komersial |
| Tips | `section_tips` | Tips memilih PJK3 |
| FAQ | `section_faq` | FAQ dengan kategori (layanan, sertifikasi, biaya) |
| About City | `section_about_city` | Tentang kota untuk SEO word count |
| Conclusion | `section_conclusion` | Kesimpulan |

---

## Migration Checklist

### Phase 1: Layout Change
- [ ] Evaluate: Keep `node--riksa-uji` or migrate to `node--pjk3-city`?
- [ ] Option A: Create new layout `node--riksa-uji-v2` based on `node--pjk3-city`
- [ ] Option B: Add missing blocks to existing `node--riksa-uji` layout

### Phase 2: Add Extra JS
```yaml
extra_js:
  - /assets/js/gallery-modal.js
```

### Phase 3: Add Gallery Section
```yaml
section_gallery:
  title: "Galeri Layanan"
  area: "[Service Type]"
  description: "Dokumentasi kegiatan riksa uji [type] di berbagai lokasi"
  caption: "Foto dokumentasi layanan PT. Cipta Mas Jaya"
```

### Phase 4: Add Video Section
```yaml
section_video:
  title: "Video Layanan"
  area: "[Service Type]"
  description: "Lihat proses inspeksi dan pengujian [type] oleh tim profesional kami"
  caption: "Dokumentasi video layanan PT. Cipta Mas Jaya"
  cta_text: "Ingin melihat langsung proses inspeksi K3 di lokasi Anda?"
  cta_button: "Hubungi Kami"
```

### Phase 5: Add Hero Section
```yaml
section_hero:
  title: "Butuh Layanan Riksa Uji [Type]"
  area: "[Area/National]"
  description: "[Description]"
  label_wilayah: "Melayani Wilayah:"
  wilayah_layanan:
    - [List of areas]
  badges:
    - text: "Izin Resmi Kemenaker"
      icon: "bi-shield-check"
    - text: "Tenaga Ahli Bersertifikat"
      icon: "bi-person-badge"
    - text: "Harga Kompetitif"
      icon: "bi-cash-coin"
  cta_title: "Hubungi Kami Sekarang!"
  cta_button: "Chat WhatsApp"
  cta_notice: "Respon cepat 24/7"
```

### Phase 6: Add Company Intro Section
```yaml
section_company_intro:
  title: "PT. Cipta Mas Jaya: PJK3 Riksa Uji [Type]"
  company_name: "PT. Cipta Mas Jaya"
  area: "[Area]"
  intro: "[Introduction paragraph]"
  subsections:
    - title: "[Subsection title]"
      paragraphs:
        - "[Paragraph 1]"
        - "[Paragraph 2]"
```

### Phase 7: Add Services Section
```yaml
section_services:
  title: "Keunggulan PT. Cipta Mas Jaya"
  intro: "[Introduction]"
  services:
    - title: "[Service name]"
      description: "[Description]"
      icon: "bi-[icon]"
```

### Phase 8: Add Order Process Section
```yaml
section_order:
  title: "Cara Pemesanan Layanan Riksa Uji"
  area: "[Area]"
  phone: "08568258841"
  intro: "[Introduction]"
  initial_steps:
    - title: "[Step name]"
      description: "[Description]"
      icon: "bi-[icon]"
      color: "[color]"
  final_steps:
    - title: "[Step name]"
      description: "[Description]"
      icon: "bi-[icon]"
      color: "[color]"
```

### Phase 9: Add Testimonials Section
```yaml
section_testimonials:
  title: "Testimoni Pelanggan"
  area: "[Area]"
  testimoni_industri:
    - nama: "[Name]"
      jenis_usaha: "[Business type]"
      jabatan: "[Position]"
      rating: 5
      judul: "[Title]"
      komentar: "[Comment]"
      warna: "[color]"
```

### Phase 10: Add Tips Section
```yaml
section_tips:
  title: "Tips Memilih PJK3"
  area: "[Area]"
  intro: "[Introduction]"
  tips:
    - kategori: "[Category]"
      deskripsi: "[Description]"
      kriteria:
        - "[Criteria 1]"
        - "[Criteria 2]"
      warna: "[color]"
      icon: "bi-[icon]"
```

### Phase 11: Upgrade FAQ Section
Current format:
```yaml
faq_post:
  faqs:
    - question: ""
      answer: ""
```

New format:
```yaml
section_faq:
  title: "FAQ Riksa Uji K3"
  area: "[Area]"
  faq_layanan:
    - pertanyaan: ""
      jawaban: ""
      icon: "bi-[icon]"
  judul_layanan: "Layanan & Proses Inspeksi"
  deskripsi_layanan: "[Description]"
  faq_sertifikasi:
    - pertanyaan: ""
      jawaban: ""
      icon: "bi-[icon]"
  judul_sertifikasi: "Sertifikasi & Legalitas"
  deskripsi_sertifikasi: "[Description]"
  faq_biaya:
    - pertanyaan: ""
      jawaban: ""
      icon: "bi-[icon]"
  judul_biaya: "Biaya & Pembayaran"
  deskripsi_biaya: "[Description]"
```

### Phase 12: Add Conclusion Section
```yaml
section_conclusion:
  title: "Kesimpulan"
  paragraphs:
    - "[Conclusion paragraph]"
```

---

## Content Requirements

### For Forklift Article
- [ ] Research forklift industry in Indonesia
- [ ] Identify key industrial areas using forklifts
- [ ] Create testimonials (can be fictional but realistic)
- [ ] Add coverage areas (national/regional)
- [ ] Add city-specific information if targeting specific area

### For Boiler Article
- [ ] Research boiler industry in Indonesia
- [ ] Identify industries heavily using boilers (power plants, manufacturing)
- [ ] Create testimonials
- [ ] Add coverage areas
- [ ] Add risk analysis specific to boiler operations

---

## Technical Decisions Required

### Question 1: Layout Strategy
**Options:**
1. Create new layout `node--riksa-uji-v2` with all PJK3-city features
2. Modify existing `node--riksa-uji` to support optional sections
3. Keep separate layouts but share blocks via includes

**Recommendation:** Option 2 - Modify existing layout with conditional sections

### Question 2: Area Focus
**Options:**
1. Keep as generic/national service articles
2. Create city-specific versions (e.g., "Riksa Uji Forklift Bekasi")
3. Create both generic and city-specific versions

**Recommendation:** Option 3 - Generic articles + city-specific articles

### Question 3: Existing Content
**Options:**
1. Keep existing sections (importance, process, regulation, etc.)
2. Replace with new section structure
3. Merge both structures

**Recommendation:** Option 3 - Keep technical content, add marketing sections

---

## Priority Order

| Priority | Task | Effort |
|----------|------|--------|
| 1 | Add `section_hero` | Medium |
| 2 | Add `section_order` | Low |
| 3 | Add `section_testimonials` | Medium |
| 4 | Upgrade `section_faq` to categorized format | Medium |
| 5 | Add `section_company_intro` | Medium |
| 6 | Add `section_services` | Low |
| 7 | Add `section_tips` | Low |
| 8 | Add `section_gallery` | Low |
| 9 | Add `section_video` | Low |
| 10 | Add `section_conclusion` | Low |

---

## Estimated Impact

| Metric | Before | After |
|--------|--------|-------|
| Frontmatter Lines | ~400 | ~600 |
| Sections | 7 | 14-17 |
| Schema Types | 4 | 6+ |
| Word Count | ~2000 | ~4000 |
| SEO Potential | Medium | High |
| User Engagement | Medium | High |

---

---

## Block Comparison

### node--riksa-uji Blocks (24 files)
```
_includes/reusable/node--riksa-uji/
├── block--announce.html          # Paragraf penutup
├── block--breadcrumb-post.html   # Breadcrumb navigation
├── block--certification.html     # Sertifikasi K3
├── block--comments.html          # Komentar/review
├── block--conclusion.html        # Kesimpulan
├── block--content-intro.html     # Paragraf pembuka
├── block--content-sections.html  # Container sections
├── block--faq-post.html          # FAQ simple format
├── block--featured-image.html    # Gambar utama
├── block--gallery.html           # Galeri foto
├── block--howto-post.html        # Schema HowTo
├── block--importance.html        # Pentingnya riksa uji
├── block--itemlist-post.html     # Schema ItemList
├── block--permit.html            # Perizinan/SLO
├── block--post-description.html  # Meta description
├── block--post-header.html       # Header post
├── block--process.html           # Proses riksa uji
├── block--regulation.html        # Regulasi/dasar hukum
├── block--related-post.html      # Artikel terkait
├── block--reviews.html           # Reviews/rating
├── block--sidebar-post.html      # Sidebar
├── block--specs.html             # Spesifikasi teknis
├── block--training.html          # Pelatihan operator
└── block--video-post.html        # Video dokumentasi
```

### node--pjk3-city Blocks (17 files)
```
_includes/reusable/node--pjk3-city/
├── block--about-city.html        # Tentang kota (SEO)
├── block--area-characteristics.html # Karakteristik wilayah
├── block--business-potential.html   # Potensi bisnis
├── block--city-profile.html      # Profil kota
├── block--company-intro.html     # Pengenalan perusahaan
├── block--conclusion.html        # Kesimpulan
├── block--faq-riksa-uji.html     # FAQ kategoris
├── block--gallery.html           # Galeri foto
├── block--hero-pjk3.html         # Hero section + CTA
├── block--order-process.html     # Proses pemesanan
├── block--risk-analysis.html     # Analisis risiko K3
├── block--service-coverage.html  # Area pelayanan detail
├── block--services-excellence.html # Layanan unggulan
├── block--strategic-role.html    # Peran strategis PJK3
├── block--testimonials.html      # Testimoni pelanggan
├── block--tips-choosing-pjk3.html # Tips memilih PJK3
└── block--video.html             # Video section
```

### Block Feature Comparison

| Feature | riksa-uji | pjk3-city | Shared? |
|---------|-----------|-----------|---------|
| Hero + CTA | ❌ | ✅ `block--hero-pjk3` | No |
| Content Intro | ✅ `block--content-intro` | ✅ `block--company-intro` | Similar |
| Process Steps | ✅ `block--process` | ❌ | No |
| HowTo Schema | ✅ `block--howto-post` | ❌ | No |
| ItemList Schema | ✅ `block--itemlist-post` | ❌ | No |
| Services List | ❌ | ✅ `block--services-excellence` | No |
| Area Coverage | ❌ | ✅ `block--service-coverage` | No |
| Testimonials | ❌ | ✅ `block--testimonials` | No |
| FAQ | ✅ Simple | ✅ Categorized | Different |
| Order Process | ❌ | ✅ `block--order-process` | No |
| Gallery | ✅ `block--gallery` | ✅ `block--gallery` | **Yes** |
| Video | ✅ `block--video-post` | ✅ `block--video` | Similar |
| Conclusion | ✅ `block--conclusion` | ✅ `block--conclusion` | **Yes** |
| Regulation | ✅ `block--regulation` | ❌ | No |
| Training | ✅ `block--training` | ❌ | No |
| Specs | ✅ `block--specs` | ❌ | No |
| City Profile | ❌ | ✅ `block--city-profile` | No |
| Risk Analysis | ❌ | ✅ `block--risk-analysis` | No |
| Tips | ❌ | ✅ `block--tips-choosing-pjk3` | No |

---

## Schema Comparison

### node--riksa-uji Schema
Uses `schema--riksa-uji.html` with:
- Article schema
- HowTo schema (from `howto_post`)
- ItemList schema (from `itemlist_post`)
- FAQPage schema (from `faq_post`)
- VideoObject schema (from `video_post`)
- Breadcrumb schema

### node--pjk3-city Schema
Uses embedded schema in layout with:
- Article schema (with `hasPart` WebPageElement)
- LocalBusiness schema (with reviews, areaServed)
- FAQPage schema (categorized)
- VideoObject schema
- ImageGallery schema
- HowTo schema (implicit in order process)
- BreadcrumbList schema
- SiteNavigationElement schema

### Schema Feature Comparison

| Schema Type | riksa-uji | pjk3-city |
|-------------|-----------|-----------|
| Article | ✅ | ✅ Enhanced |
| HowTo | ✅ Explicit | ✅ Implicit |
| ItemList | ✅ | ✅ Multiple |
| FAQPage | ✅ Simple | ✅ Categorized |
| VideoObject | ✅ | ✅ |
| LocalBusiness | ❌ | ✅ With reviews |
| ImageGallery | ❌ | ✅ |
| AggregateRating | ❌ | ✅ |
| Review | ❌ | ✅ 4 reviews |
| areaServed | ❌ | ✅ containsPlace |
| hasPart | ❌ | ✅ 14 sections |

---

## Blocks to Create for riksa-uji

### Priority 1: Marketing Blocks
| Block | Purpose | Effort |
|-------|---------|--------|
| `block--hero-riksa-uji.html` | Hero + badges + CTA | Medium |
| `block--order-process-riksa-uji.html` | Proses pemesanan | Low |
| `block--testimonials-riksa-uji.html` | Testimoni klien | Medium |

### Priority 2: Enhanced Blocks
| Block | Purpose | Effort |
|-------|---------|--------|
| `block--faq-categorized.html` | FAQ dengan kategori | Medium |
| `block--services-riksa-uji.html` | Daftar layanan | Low |
| `block--tips-riksa-uji.html` | Tips memilih PJK3 | Low |

### Priority 3: Reusable from pjk3-city
| Block | Can Reuse? | Notes |
|-------|------------|-------|
| `block--gallery.html` | ✅ Already similar | Minor adjustment |
| `block--video.html` | ✅ Already similar | Minor adjustment |
| `block--conclusion.html` | ✅ Already exists | Same structure |

---

## Schema Enhancement for riksa-uji

### Add to schema--riksa-uji.html
```json
{
  "@type": "LocalBusiness",
  "name": "PT. Cipta Mas Jaya",
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "{{ rating }}",
    "reviewCount": "{{ review_count }}"
  },
  "review": [/* from testimonials */]
}
```

### Add hasPart for Sections
```json
{
  "@type": "Article",
  "hasPart": [
    {
      "@type": "WebPageElement",
      "name": "section_importance",
      "cssSelector": "#section-importance"
    }
  ]
}
```

---

## Recommended Approach

### Option A: Extend riksa-uji Layout (Recommended)
1. Keep existing blocks (process, regulation, specs, etc.)
2. Add new marketing blocks (hero, testimonials, order)
3. Enhance schema with LocalBusiness + reviews
4. Make new sections optional via frontmatter flags

### Option B: Create riksa-uji-v2 Layout
1. New layout based on pjk3-city structure
2. Include both technical and marketing sections
3. Full schema parity with pjk3-city
4. Requires migration of existing posts

### Option C: Merge into Single Universal Layout
1. One layout for all article types
2. Sections enabled/disabled via frontmatter
3. Schema generated based on available data
4. Maximum code reuse, complex logic

**Recommendation:** Option A - Minimal disruption, gradual enhancement

---

## Notes

- PJK3 Bekasi menggunakan layout `node--pjk3-city` yang khusus untuk artikel kota
- Riksa Uji Forklift/Boiler menggunakan layout `node--riksa-uji` untuk artikel layanan
- Perlu evaluasi apakah kedua layout bisa di-merge atau tetap terpisah
- Fokus pada menambahkan section yang meningkatkan SEO dan user engagement
- Schema pjk3-city mendapat score 100/100 di Google Rich Results Test
