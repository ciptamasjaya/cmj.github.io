# Petunjuk Pembuatan Artikel Alat K3

## Pendahuluan

Dokumen ini berisi panduan lengkap untuk membuat artikel tentang alat K3 (Keselamatan dan Kesehatan Kerja) menggunakan template `node--alat-k3`.

## Struktur File

```
public_html/
├── _layouts/
│   ├── node/
│   │   └── node--alat-k3.html          # Content template
│   └── page/
│       └── page--alat-k3.html          # Page wrapper
├── _includes/
│   ├── reusable/node--alat-k3/         # Blocks
│   │   ├── block--definition.html
│   │   ├── block--functions.html
│   │   ├── block--types.html
│   │   ├── block--components.html
│   │   ├── block--specifications.html
│   │   ├── block--regulations.html
│   │   ├── block--risks.html
│   │   ├── block--applications.html
│   │   ├── block--howto.html
│   │   ├── block--faq.html
│   │   ├── block--gallery.html
│   │   ├── block--video.html
│   │   ├── block--related-service.html
│   │   ├── block--cta-pjk3.html
│   │   ├── block--sidebar.html
│   │   └── block--related-post.html
│   └── schema/node--alat-k3/
│       └── schema--techarticle.html    # Comprehensive schema
├── TEMPLATES/
│   ├── TEMPLATE-node-alat-k3.md        # Frontmatter template
│   └── PETUNJUK-PEMBUATAN-node-alat-k3.md  # Dokumentasi ini
└── _posts/                              # Lokasi artikel
```

## Langkah Pembuatan Artikel

### 1. Copy Template

```bash
cp TEMPLATES/TEMPLATE-node-alat-k3.md _posts/YYYY-MM-DD-nama-alat.md
```

Contoh:
```bash
cp TEMPLATES/TEMPLATE-node-alat-k3.md _posts/2024-12-02-bejana-tekan.md
```

### 2. Isi Frontmatter Dasar

```yaml
layout: node/node--alat-k3
title: "Bejana Tekan: Pengertian, Jenis, dan Keselamatan Kerja"
description: "Panduan lengkap tentang bejana tekan meliputi pengertian, jenis, komponen, regulasi K3, dan tips keselamatan kerja."
keywords: "bejana tekan, pressure vessel, K3, keselamatan kerja"
permalink: /artikel/bejana-tekan/
date: 2024-12-02
author: Tim K3 CMJ
categories:
  - Alat K3
  - Pesawat Uap dan Bejana Tekan
tags:
  - bejana tekan
  - pressure vessel
  - K3
  - keselamatan kerja
  - inspeksi
image: /assets/images/posts/bejana-tekan-featured.jpg
```

### 3. Isi Section-Section

#### Section Definition (Pengertian)
```yaml
section_definition:
  title: "Pengertian Bejana Tekan"
  icon: "bi-book"
  intro: "Memahami definisi dan terminologi dasar"
  terms:
  - name: "Bejana Tekan"
    definition: "Wadah tertutup yang dirancang untuk menampung fluida pada tekanan berbeda dari tekanan atmosfer."
  - name: "Pressure Vessel"
    definition: "Istilah internasional untuk bejana tekan."
  - name: "MAWP"
    definition: "Maximum Allowable Working Pressure - tekanan kerja maksimum yang diizinkan."
```

#### Section Functions (Fungsi)
```yaml
section_functions:
  title: "Fungsi Bejana Tekan"
  icon: "bi-gear"
  intro: "Berbagai fungsi dan kegunaan bejana tekan dalam industri"
  functions:
  - name: "Penyimpanan Fluida Bertekanan"
    description: "Menyimpan gas atau cairan pada tekanan tinggi untuk berbagai keperluan industri."
    icon: "bi-box"
  - name: "Pemisahan Fase"
    description: "Memisahkan gas dari cairan dalam proses produksi."
    icon: "bi-funnel"
```

#### Section Types (Jenis)
```yaml
section_types:
  title: "Jenis-jenis Bejana Tekan"
  icon: "bi-diagram-3"
  intro: "Klasifikasi bejana tekan berdasarkan bentuk dan fungsi"
  types:
  - name: "Bejana Tekan Horizontal"
    description: "Bejana dengan orientasi horizontal, cocok untuk kapasitas besar."
    icon: "bi-box"
    image: "/assets/images/types/bejana-horizontal.jpg"
  - name: "Bejana Tekan Vertikal"
    description: "Bejana dengan orientasi vertikal, hemat ruang."
    icon: "bi-box"
    image: "/assets/images/types/bejana-vertikal.jpg"
```

#### Section Components (Komponen)
```yaml
section_components:
  title: "Komponen Utama Bejana Tekan"
  icon: "bi-puzzle"
  intro: "Bagian-bagian penting yang menyusun bejana tekan"
  components:
  - name: "Shell (Badan)"
    description: "Bagian utama yang menampung fluida bertekanan"
    icon: "bi-circle"
    function: "Menahan tekanan internal dan menjadi wadah utama fluida"
  - name: "Head (Tutup)"
    description: "Penutup pada ujung bejana"
    icon: "bi-circle-half"
    function: "Menutup dan menyegel bejana dari kedua sisi"
```

#### Section Specifications (Spesifikasi)
```yaml
section_specifications:
  title: "Spesifikasi Teknis"
  icon: "bi-clipboard-data"
  intro: "Parameter teknis standar bejana tekan"
  specs:
  - name: "Tekanan Kerja"
    value: "1-100"
    unit: "bar"
    description: "Rentang tekanan operasi normal"
  - name: "Suhu Operasi"
    value: "-20 s/d 450"
    unit: "°C"
    description: "Rentang suhu kerja yang diizinkan"
```

#### Section Regulations (Regulasi)
```yaml
section_regulations:
  title: "Standar dan Regulasi K3"
  icon: "bi-shield-check"
  intro: "Peraturan yang mengatur keselamatan bejana tekan"
  regulations:
  - name: "Permenaker"
    number: "No. 37"
    year: "2016"
    description: "Tentang Keselamatan dan Kesehatan Kerja Bejana Tekan"
    issuer: "Kementerian Ketenagakerjaan"
    icon: "bi-file-earmark-text"
  - name: "ASME BPVC"
    number: "Section VIII"
    description: "Boiler and Pressure Vessel Code"
    issuer: "ASME International"
    icon: "bi-globe"
```

#### Section Risks (Risiko)
```yaml
section_risks:
  title: "Risiko dan Bahaya"
  icon: "bi-exclamation-triangle"
  intro: "Potensi bahaya yang harus diwaspadai"
  risks:
  - name: "Ledakan"
    description: "Kegagalan struktur akibat tekanan berlebih"
    severity: "high"
    prevention: "Inspeksi berkala dan pemasangan safety valve"
    icon: "bi-lightning"
  - name: "Kebocoran"
    description: "Pelepasan fluida berbahaya ke lingkungan"
    severity: "medium"
    prevention: "Pemeriksaan seal dan gasket secara rutin"
    icon: "bi-droplet"
```

#### Section Applications (Aplikasi)
```yaml
section_applications:
  title: "Aplikasi Industri"
  icon: "bi-building"
  intro: "Penggunaan bejana tekan di berbagai sektor"
  applications:
  - name: "Industri Petrokimia"
    description: "Penyimpanan dan pemrosesan bahan kimia bertekanan"
    industry: "Petrokimia"
    icon: "bi-droplet-half"
  - name: "Industri Makanan"
    description: "Sterilisasi dan pengawetan produk makanan"
    industry: "Food & Beverage"
    icon: "bi-cup-straw"
```

#### Section HowTo (Cara Kerja)
```yaml
section_howto:
  title: "Cara Kerja Bejana Tekan"
  icon: "bi-list-ol"
  description: "Prinsip kerja dan tahapan operasi bejana tekan"
  totalTime: "PT30M"
  steps:
  - name: "Pengisian Fluida"
    text: "Fluida dimasukkan melalui inlet valve dengan tekanan terkontrol."
    image: "/assets/images/howto/step1-pengisian.jpg"
  - name: "Proses Bertekanan"
    text: "Tekanan dijaga pada level operasi sesuai kebutuhan proses."
    image: "/assets/images/howto/step2-proses.jpg"
  - name: "Pengeluaran Fluida"
    text: "Fluida dikeluarkan melalui outlet valve setelah proses selesai."
    image: "/assets/images/howto/step3-pengeluaran.jpg"
```

#### Section FAQ
```yaml
section_faq:
  title: "Pertanyaan Umum"
  icon: "bi-question-circle"
  intro: "Jawaban untuk pertanyaan yang sering diajukan"
  faqs:
  - question: "Berapa lama masa berlaku sertifikat riksa uji bejana tekan?"
    answer: "Masa berlaku sertifikat riksa uji bejana tekan adalah 1 tahun untuk bejana tekan baru dan 2 tahun untuk perpanjangan, sesuai Permenaker No. 37 Tahun 2016."
  - question: "Apa saja dokumen yang diperlukan untuk riksa uji?"
    answer: "Dokumen yang diperlukan meliputi: gambar teknik, data sheet, sertifikat material, welding procedure, dan hasil NDT."
```

#### Section Gallery
```yaml
section_gallery:
  title: "Galeri Foto"
  icon: "bi-images"
  intro: "Dokumentasi visual bejana tekan"
  images:
  - src: "/assets/images/gallery/bejana-1.jpg"
    alt: "Bejana tekan horizontal 5000 liter"
    caption: "Bejana tekan horizontal kapasitas 5000 liter"
  - src: "/assets/images/gallery/bejana-2.jpg"
    alt: "Inspeksi bejana tekan"
    caption: "Proses inspeksi internal bejana tekan"
```

#### Section Video
```yaml
section_video:
  title: "Video Edukasi"
  icon: "bi-play-circle"
  name: "Pengenalan Bejana Tekan"
  description: "Video penjelasan tentang komponen dan cara kerja bejana tekan"
  thumbnail: "/assets/videos/thumbnails/bejana-tekan.jpg"
  src: "/assets/videos/bejana-tekan.webm"
  duration: "PT5M30S"
  upload_date: 2024-12-02
```

#### Section Related Service
```yaml
section_related_service:
  title: "Layanan Terkait"
  icon: "bi-link-45deg"
  intro: "Layanan riksa uji untuk bejana tekan"
  path: "/layanan/riksa-uji-pesawat-uap-bejana-tekan/bejana-tekan/"
```

#### Section CTA
```yaml
section_cta:
  headline: "Butuh Riksa Uji Bejana Tekan?"
  icon: "bi-shield-check"
  description: "PT. Cipta Mas Jaya siap membantu inspeksi dan sertifikasi bejana tekan Anda"
  benefits:
  - "Inspeksi oleh tim ahli bersertifikat"
  - "Laporan lengkap sesuai standar"
  - "Proses cepat dan efisien"
  button_text: "Hubungi Kami"
  button_url: "/contact/"
  phone: "021-12345678"
  whatsapp: "6281234567890"
```

### 4. Tambah Konten Markdown (Opsional)

Setelah frontmatter (setelah `---`), Anda bisa menambahkan konten markdown tambahan:

```markdown
---
# ... frontmatter di atas ...
---

## Catatan Tambahan

Konten markdown tambahan akan muncul setelah semua block dari frontmatter.

Ini bisa berisi:
- Penjelasan lebih detail
- Tabel perbandingan
- Link referensi
- dll.
```

## Tips Pengisian

### Format Durasi (ISO 8601)
- `PT30M` = 30 menit
- `PT1H30M` = 1 jam 30 menit
- `PT5M30S` = 5 menit 30 detik

### Severity Level untuk Risks
- `high` - Merah (bahaya tinggi)
- `medium` - Kuning (bahaya sedang)
- `low` - Hijau (bahaya rendah)

### Icon Bootstrap
Gunakan class icon dari Bootstrap Icons:
- `bi-book` - Buku
- `bi-gear` - Gear
- `bi-diagram-3` - Diagram
- `bi-puzzle` - Puzzle
- `bi-clipboard-data` - Clipboard
- `bi-shield-check` - Shield
- `bi-exclamation-triangle` - Warning
- `bi-building` - Building
- `bi-list-ol` - Numbered list
- `bi-question-circle` - Question
- `bi-images` - Images
- `bi-play-circle` - Play

Referensi lengkap: https://icons.getbootstrap.com/

### Path Gambar
Semua path gambar relatif dari root site:
```
/assets/images/posts/nama-file.jpg
/assets/images/gallery/nama-file.jpg
/assets/videos/nama-file.webm
```

## Schema Markup

Schema yang dihasilkan otomatis (TechArticle dengan hasPart):
- **TechArticle** - Artikel utama
  - **DefinedTermSet** - Definisi istilah
  - **ItemList** - Functions, Types, Components, Risks, Applications
  - **PropertyValue** - Specifications
  - **Legislation** - Regulations
  - **HowTo** - Langkah-langkah
  - **FAQ Questions** - Pertanyaan umum
  - **ImageGallery** - Galeri gambar
  - **VideoObject** - Video

## Validasi

Setelah artikel dibuat, validasi schema dengan:
1. Build site: `jekyll build`
2. Buka halaman artikel
3. Cek dengan [Google Rich Results Test](https://search.google.com/test/rich-results)
4. Validasi dengan [Schema.org Validator](https://validator.schema.org/)

## Contoh Artikel Lengkap

Lihat contoh artikel yang sudah ada:
- `_posts/2024-08-26-bejana-tekan.md`
- `_posts/2024-08-26-pesawat-uap.md`
- `_posts/2024-08-26-forklift-listrik-linde-e30.md`
