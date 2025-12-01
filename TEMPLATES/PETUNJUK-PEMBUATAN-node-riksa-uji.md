# ============================================================================
# PETUNJUK PENGISIAN TEMPLATE NODE RIKSA UJI
# ============================================================================
# File: TEMPLATE-node-riksa-uji.md
# Lokasi: /TEMPLATES/TEMPLATE-node-riksa-uji.md
# ============================================================================

## CARA KERJA (BATCH SYSTEM + TODO)

Konten template ini sangat panjang. JANGAN mengisi sekali jalan.
Gunakan sistem batch dengan TodoWrite untuk menjaga kualitas konten.

### WAJIB: Gunakan TodoWrite untuk Setiap Batch

```
SEBELUM MULAI, buat todo list dengan 6 batch:
┌─────────────────────────────────────────────────────────────┐
│ TodoWrite:                                                  │
│ 1. [pending] BATCH 1: Front Matter + Copy template          │
│ 2. [pending] BATCH 2: Schema Data (howto, itemlist, faq)    │
│ 3. [pending] BATCH 3: Section 1-2 (importance, process)     │
│ 4. [pending] BATCH 4: Section 3-4 (regulation, training)    │
│ 5. [pending] BATCH 5: Section 5-6 (specs, certification)    │
│ 6. [pending] BATCH 6: Section 7-8 (permit, conclusion)      │
└─────────────────────────────────────────────────────────────┘

UNTUK SETIAP BATCH:
1. Mark todo as [in_progress]
2. Baca section terkait dari file sumber
3. Tulis konten ke file tujuan (Edit tool)
4. Mark todo as [completed]
5. JANGAN lanjut ke batch berikutnya sebelum completed
```

### Alur Kerja Detail:

```
BATCH 1: Salin template + Front Matter
         STATUS: [in_progress] saat dikerjakan
         - Copy TEMPLATE-node-riksa-uji.md ke file tujuan
         - Isi: title, description, content_intro, announce
         - Isi: permalink, date, author, categories, tags
         - Isi: image, images
         - SIMPAN → Mark [completed]

BATCH 2: Schema Data
         STATUS: [in_progress] saat dikerjakan
         - Isi: howto_post
         - Isi: itemlist_post
         - Isi: faq_post
         - Isi: video_post (jika ada)
         - SIMPAN → Mark [completed]

BATCH 3: Section 1-2
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_importance
         - Isi: section_process
         - SIMPAN → Mark [completed]

BATCH 4: Section 3-4
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_regulation
         - Isi: section_training
         - SIMPAN → Mark [completed]

BATCH 5: Section 5-6
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_specs
         - Isi: section_certification
         - SIMPAN → Mark [completed]

BATCH 6: Section 7-8
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_permit
         - Isi: section_conclusion
         - SIMPAN → Mark [completed]
         - REVIEW & REBUILD
```

### Mengapa Batch + Todo Penting?

1. **Memory Management**: Setiap batch fokus pada 2-3 section saja
2. **Quality Control**: Konten lebih detail karena tidak terburu-buru
3. **Checkpoint**: Jika ada error, bisa lanjut dari batch terakhir
4. **Review**: User bisa review setiap batch sebelum lanjut
5. **Traceability**: Todo list menunjukkan progress yang jelas

### Contoh Penggunaan Todo:

```
User: "Konversi riksa-uji-crane.md ke template baru"

Assistant Response:
┌─────────────────────────────────────────────────────────────┐
│ [TodoWrite] Membuat todo list untuk konversi:               │
│                                                             │
│ 1. [pending] BATCH 1: Front Matter + Copy template          │
│ 2. [pending] BATCH 2: Schema Data (howto, itemlist, faq)    │
│ 3. [pending] BATCH 3: Section 1-2 (importance, process)     │
│ 4. [pending] BATCH 4: Section 3-4 (regulation, training)    │
│ 5. [pending] BATCH 5: Section 5-6 (specs, certification)    │
│ 6. [pending] BATCH 6: Section 7-8 (permit, conclusion)      │
└─────────────────────────────────────────────────────────────┘

[TodoWrite] Mark BATCH 1 as [in_progress]
[Read] Baca file sumber: riksa-uji-crane.md
[Read] Baca template: TEMPLATE-node-riksa-uji.md
[Write] Copy template ke _posts/2024-08-26-jasa-riksa-uji-crane.md
[Edit] Isi front matter dari data sumber
[TodoWrite] Mark BATCH 1 as [completed]

[TodoWrite] Mark BATCH 2 as [in_progress]
[Read] Baca konten untuk schema data dari sumber
[Edit] Isi howto_post, itemlist_post, faq_post
[TodoWrite] Mark BATCH 2 as [completed]

... (lanjut sampai BATCH 6)

[TodoWrite] Semua batch completed
[Bash] ./rebuild.sh
```

---

## BATCH 1: FRONT MATTER

### title
```yaml
title: "Riksa Uji [Nama Alat]"
```
- Format: "Riksa Uji" + nama alat
- Tanpa kata "Jasa" di depan
- Contoh: "Riksa Uji Boiler", "Riksa Uji Forklift", "Riksa Uji Overhead Crane"

### description
```yaml
description: "[150-160 karakter untuk SEO meta description]"
```
- Jelaskan singkat apa itu riksa uji alat tersebut
- Sertakan kata kunci utama
- Contoh: "Riksa uji boiler adalah proses pemeriksaan dan pengujian keselamatan ketel uap untuk memastikan operasional aman sesuai standar K3."

### content_intro
```yaml
content_intro:
  paragraphs:
    - "[Paragraf 1: Definisi + link ke kategori induk]"
    - "[Paragraf 2: Kewajiban riksa uji + link ke PJK3]"
    - "[Paragraf 3: Penjelasan umum tentang alat + link Wikipedia]"
```
- 3 paragraf pembuka setelah H1
- Sertakan internal link ke kategori induk (misal: /layanan/riksa-uji-pesawat-uap-bejana-tekan/)
- Sertakan link ke halaman PJK3: /about/pjk3/
- Boleh sertakan link eksternal ke Wikipedia untuk definisi alat
- Format link: `<a href="/url/">anchor text</a>`

### announce
```yaml
announce:
  paragraphs:
    - "[Paragraf penutup tentang PT. Cipta Mas Jaya sebagai PJK3]"
```
- Paragraf promosi/CTA di akhir artikel
- Sebutkan PT. Cipta Mas Jaya sebagai PJK3 Riksa Uji
- Sertakan link ke halaman layanan terkait

### permalink
```yaml
permalink: /2024/08/26/jasa-riksa-uji-[nama-alat]/
```
- Format: /YYYY/MM/DD/jasa-riksa-uji-[nama-alat]/
- Gunakan slug lowercase dengan dash

### redirect_from
```yaml
redirect_from:
  - /blog/2024/08/26/jasa-riksa-uji-[nama-alat]/
```
- URL lama yang perlu di-redirect (jika migrasi dari WordPress)
- Bisa lebih dari satu

### date & last_modified_at
```yaml
date: 2024-08-26
last_modified_at: 2025-11-28
```
- date: Tanggal publikasi pertama
- last_modified_at: Tanggal update terakhir

### author
```yaml
author: "Editor"
```
- Nama penulis/editor

### categories
```yaml
categories:
  - Layanan
  - [Kategori Induk]
```
- Kategori 1: Selalu "Layanan"
- Kategori 2: Nama kategori induk
- Contoh: "Riksa Uji Pesawat Uap dan Bejana Tekan", "Riksa Uji Pesawat Angkat dan Angkut"

### tags
```yaml
tags:
  - Inspeksi K3
  - Jasa Riksa Uji
  - [Kategori Alat]
  - Riksa Uji
  - [Nama Alat]
```
- 5 tags relevan
- Selalu sertakan: "Inspeksi K3", "Jasa Riksa Uji", "Riksa Uji"
- Tambahkan kategori alat dan nama alat spesifik

### image & images
```yaml
image: "/path/to/featured-image.jpg"
images:
  - "/path/to/image-1.jpg"
  - "/path/to/image-2.jpg"
  - "/path/to/image-3.jpg"
  - "/path/to/image-4.jpg"
```
- image: Featured image untuk og:image, schema, thumbnail
- images: 4 gambar untuk gallery slider
- Jika kosong, akan fallback ke default SVG (i1.svg - i4.svg)

### rating_id
```yaml
rating_id: riksa-uji-boiler
```
- ID untuk menghubungkan artikel dengan file rating/review
- Format: `riksa-uji-[nama-alat]` (lowercase, dash-separated)
- File rating harus dibuat di: `_includes/reusable/node--riksa-uji/ratings/block--rating--[rating_id].html`
- Berisi data review pembaca (bukan testimoni layanan)
- **Template**: Copy dari `TEMPLATES/TEMPLATE-block-rating-riksa-uji.html`
- **Cara buat**:
  1. Copy template ke `_includes/reusable/node--riksa-uji/ratings/`
  2. Rename: `block--rating--riksa-uji-[nama-alat].html`
  3. Isi data rating (average, count, distribution)
  4. Isi data review (3-4 review pembaca tentang artikel)

### related_service
```yaml
related_service: /layanan/riksa-uji-pesawat-uap-bejana-tekan/pesawat-uap/riksa-uji-boiler/
```
- Path ke halaman layanan terkait
- Digunakan untuk menampilkan blok "Related Service" di artikel
- Harus sesuai dengan URL halaman layanan di `_services/`

### lastmod
```yaml
lastmod: '2025-12-01T16:40:00+0700'
```
- Timestamp terakhir artikel dimodifikasi
- Format: ISO 8601 dengan timezone
- Auto-updated oleh propagate-timestamp plugin saat build
- Digunakan untuk sorting artikel terbaru di homepage

---

## Section

Berdasarkan template, ada **14 section** utama:

| No | Section                 | Deskripsi                                              |
|----|-------------------------|--------------------------------------------------------|
| 1  | `section_hero`          | Hero banner dengan title, badges, wilayah layanan, CTA |
| 2  | `section_order`         | Cara pemesanan layanan (6 langkah)                     |
| 3  | `section_faq`           | FAQ layanan, sertifikasi, dan biaya                    |
| 4  | `section_company_intro` | Perkenalan perusahaan dengan subsections               |
| 5  | `section_services`      | 6 keunggulan/layanan dengan icon                       |
| 6  | `section_tips`          | 3 tips memilih PJK3                                    |
| 7  | `section_importance`    | Pentingnya riksa uji (3 subsections)                   |
| 8  | `section_process`       | Proses riksa uji (4 tahapan dengan substeps)           |
| 9  | `section_regulation`    | Sanksi hukum dan regulasi (3 subsections)              |
| 10 | `section_training`      | Pelatihan dan sertifikasi operator (6 cards)           |
| 11 | `section_specs`         | Standar spesifikasi teknis (6 specs)                   |
| 12 | `section_certification` | Pengesahan gambar (5 topics)                           |
| 13 | `section_permit`        | Izin pemakaian pesawat (2 topics)                      |
| 14 | `section_conclusion`    | Kesimpulan dengan highlights dan CTA                   |

**Plus 6 bagian pendukung:**

| Bagian          | Deskripsi                    |
|-----------------|------------------------------|
| `content_intro` | Paragraf intro               |
| `announce`      | Pengumuman                   |
| `howto_post`    | Schema HowTo (6 steps)       |
| `itemlist_post` | Schema ItemList (5 items)    |
| `video_post`    | Schema Video                 |
| `related_service` | Link ke halaman layanan terkait |

---

## Section 1: section_hero

Hero banner di bagian atas halaman.

```yaml
section_hero:
  title: "Butuh Layanan Riksa Uji [Nama Alat]"
  theme: "red"                    # Warna tema: red, blue, green, orange
  area: "Seluruh Indonesia"
  description: "[Deskripsi singkat layanan dan PJK3]"
  label_wilayah: "Melayani Wilayah:"
  wilayah_layanan:
    - "Jabodetabek"
    - "Jawa Barat"
    - "Jawa Tengah"
    - "Jawa Timur"
    - "Sumatera"
    - "Kalimantan"
    - "Sulawesi"
    - "Bali & NTB"
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

**Catatan:**
- `theme`: Menentukan warna aksen hero (red untuk alat berbahaya, blue untuk umum)
- `wilayah_layanan`: Maksimal 8 wilayah
- `badges`: 3 badge keunggulan utama

---

## Section 2: section_order

Cara pemesanan layanan riksa uji.

```yaml
section_order:
  title: "Cara Pemesanan Layanan Riksa Uji [Nama Alat]"
  area: "Seluruh Indonesia"
  phone: "08568258841"
  intro: "[Pengantar proses pemesanan]"
  initial_steps:
    - title: "Hubungi Kami"
      description: "[Deskripsi langkah 1]"
      icon: "bi-telephone"
      color: "primary"
    - title: "Identifikasi Kebutuhan"
      description: "[Deskripsi langkah 2]"
      icon: "bi-clipboard-data"
      color: "info"
    - title: "Penawaran Harga"
      description: "[Deskripsi langkah 3]"
      icon: "bi-receipt"
      color: "warning"
  final_steps:
    - title: "Pelaksanaan Inspeksi"
      description: "[Deskripsi langkah 4]"
      icon: "bi-search"
      color: "success"
    - title: "Pembuatan Laporan"
      description: "[Deskripsi langkah 5]"
      icon: "bi-file-earmark-text"
      color: "primary"
    - title: "Penerbitan Sertifikat"
      description: "[Deskripsi langkah 6]"
      icon: "bi-award"
      color: "success"
```

**Catatan:**
- `initial_steps`: 3 langkah awal (kontak, identifikasi, penawaran)
- `final_steps`: 3 langkah akhir (inspeksi, laporan, sertifikat)
- `color`: primary, info, warning, success, danger

---

## Section 3: section_faq

FAQ dengan 3 kategori: layanan, sertifikasi, biaya.

```yaml
section_faq:
  title: "FAQ Riksa Uji [Nama Alat]"
  subtitle: "Jawaban untuk Pertanyaan Umum"
  faq_layanan:
    - pertanyaan: "Apa itu riksa uji [nama alat]?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-question-circle"
    - pertanyaan: "Berapa tahun sekali riksa uji dilakukan?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-clock"
    - pertanyaan: "Apa saja yang diperiksa?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-clipboard-check"
  judul_layanan: "Layanan & Proses Inspeksi"
  deskripsi_layanan: "[Deskripsi kategori]"
  faq_sertifikasi:
    - pertanyaan: "Apa dasar hukum riksa uji?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-bank"
    - pertanyaan: "Berapa lama masa berlaku izin?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-calendar-check"
    - pertanyaan: "Apakah sertifikat diakui Kemenaker?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-patch-check"
  judul_sertifikasi: "Sertifikasi & Legalitas"
  deskripsi_sertifikasi: "[Deskripsi kategori]"
  faq_biaya:
    - pertanyaan: "Berapa biaya riksa uji?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-cash-coin"
    - pertanyaan: "Apakah ada diskon untuk banyak unit?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-percent"
    - pertanyaan: "Metode pembayaran apa yang diterima?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-credit-card"
  judul_biaya: "Biaya & Pembayaran"
  deskripsi_biaya: "[Deskripsi kategori]"
```

**Catatan:**
- 3 FAQ per kategori (total 9 FAQ)
- Setiap kategori memiliki judul dan deskripsi

---

## Section 4: section_company_intro

Perkenalan perusahaan PT. Cipta Mas Jaya.

```yaml
section_company_intro:
  title: "PT. Cipta Mas Jaya: PJK3 Riksa Uji [Nama Alat]"
  company_name: "PT. Cipta Mas Jaya"
  intro: "[Tagline singkat tentang layanan]"
  subsections:
    - title: "Tentang Layanan Riksa Uji [Nama Alat]"
      paragraphs:
        - "[Paragraf 1: Penjelasan layanan]"
        - "[Paragraf 2: Keunggulan tim dan peralatan]"
    - title: "Komitmen Kami"
      paragraphs:
        - "[Paragraf tentang komitmen perusahaan]"
```

**Catatan:**
- 2 subsections: Tentang Layanan dan Komitmen
- Setiap subsection memiliki 1-2 paragraf

---

## Section 5: section_services

6 keunggulan/layanan PT. Cipta Mas Jaya.

```yaml
section_services:
  title: "Keunggulan PT. Cipta Mas Jaya"
  intro: "Mengapa memilih kami untuk riksa uji [nama alat] Anda?"
  services:
    - title: "Izin Resmi Kemenaker"
      description: "[Deskripsi keunggulan]"
      icon: "bi-shield-check"
    - title: "Inspector Bersertifikat"
      description: "[Deskripsi keunggulan]"
      icon: "bi-person-badge"
    - title: "Peralatan Terkalibrasi"
      description: "[Deskripsi keunggulan]"
      icon: "bi-tools"
    - title: "Laporan Komprehensif"
      description: "[Deskripsi keunggulan]"
      icon: "bi-file-earmark-text"
    - title: "Harga Kompetitif"
      description: "[Deskripsi keunggulan]"
      icon: "bi-cash-coin"
    - title: "Layanan Nasional"
      description: "[Deskripsi keunggulan]"
      icon: "bi-geo-alt"
```

**Catatan:**
- 6 keunggulan dengan icon Bootstrap Icons
- Keunggulan standar: izin, SDM, peralatan, laporan, harga, jangkauan

---

## Section 6: section_tips

3 tips memilih PJK3 yang tepat.

```yaml
section_tips:
  title: "Tips Memilih PJK3 Riksa Uji [Nama Alat]"
  subtitle: "Panduan Memilih Mitra Inspeksi Terpercaya"
  intro: "[Pengantar tips]"
  tips:
    - kategori: "Legalitas"
      deskripsi: "Pastikan izin resmi"
      kriteria:
        - "Memiliki izin PJK3 dari Kemenaker yang masih berlaku"
        - "Terdaftar di database resmi Kemenaker"
        - "Sertifikat yang diterbitkan diakui untuk perpanjangan izin"
      warna: "primary"
      icon: "bi-shield-check"
    - kategori: "Kompetensi"
      deskripsi: "Tenaga ahli berkualitas"
      kriteria:
        - "[Kriteria 1]"
        - "[Kriteria 2]"
        - "[Kriteria 3]"
      warna: "success"
      icon: "bi-person-badge"
    - kategori: "Peralatan"
      deskripsi: "Alat uji memadai"
      kriteria:
        - "[Kriteria 1]"
        - "[Kriteria 2]"
        - "[Kriteria 3]"
      warna: "info"
      icon: "bi-tools"
```

**Catatan:**
- 3 tips: Legalitas, Kompetensi, Peralatan
- Setiap tips memiliki 3 kriteria
- `warna`: primary, success, info, warning, danger

---

## Section 7: section_importance

Pentingnya riksa uji dengan 3 subsection.

```yaml
section_importance:
  title: "Pentingnya Riksa Uji [Nama Alat]"
  subtitle: "Keselamatan & Kepatuhan Regulasi K3"
  icon: "bi-shield-check"
  paragraphs:
    - "[Paragraf pembuka tentang pentingnya riksa uji]"
  subsections:
    - title: "Keselamatan Pengoperasian"
      icon: "bi-exclamation-triangle"
      paragraphs:
        - "[Penjelasan subsection]"
      bullets:
        - key: "Mencegah Kecelakaan"
          value: "[Detail]"
        - key: "Standar Keselamatan"
          value: "[Detail]"
    - title: "Efisiensi Energi"
      icon: "bi-graph-up-arrow"
      paragraphs:
        - "[Penjelasan subsection]"
      bullets:
        - key: "Optimalisasi Kinerja"
          value: "[Detail]"
        - key: "Peningkatan Produktivitas"
          value: "[Detail]"
    - title: "Pemeliharaan dan Perpanjangan Umur"
      icon: "bi-clock-history"
      paragraphs:
        - "[Penjelasan subsection]"
      bullets:
        - key: "Perawatan Preventif"
          value: "[Detail]"
        - key: "Penggantian Komponen"
          value: "[Detail]"
```

**Catatan:**
- 3 subsections dengan masing-masing 2 bullets
- Topik: Keselamatan, Efisiensi, Pemeliharaan

---

## Section 8: section_process

Proses riksa uji dengan 4 tahapan dan substeps.

```yaml
section_process:
  title: "Proses Riksa Uji [Nama Alat]"
  icon: "bi-gear"
  subtitle: "Tahapan Lengkap Pemeriksaan"
  description: "[Deskripsi umum proses]"
  steps_heading: "Tahapan Proses Riksa Uji"
  steps_intro: "Berikut adalah 4 tahapan utama:"
  steps:
    - title: "Persiapan Sebelum Riksa Uji"
      icon: "bi-clipboard-check"
      description: "[Deskripsi singkat]"
      substeps:
        - title: "Pengumpulan Dokumen"
          bullets:
            - key: "Manual Pengguna"
              value: "[Detail]"
            - key: "Catatan Pemeliharaan"
              value: "[Detail]"
        - title: "Peralatan Uji dan APD"
          bullets:
            - key: "Peralatan yang Diperlukan"
              value: "[Detail]"
            - key: "Alat Pelindung Diri"
              value: "[Detail]"
    - title: "Pemeriksaan Visual"
      icon: "bi-eye"
      description: "[Deskripsi singkat]"
      substeps:
        - title: "Kondisi Fisik"
          desc: "[Deskripsi opsional]"
          bullets:
            - key: "[Komponen 1]"
              value: "[Detail pemeriksaan]"
            - key: "[Komponen 2]"
              value: "[Detail pemeriksaan]"
            - key: "[Komponen 3]"
              value: "[Detail pemeriksaan]"
            - key: "[Komponen 4]"
              value: "[Detail pemeriksaan]"
        - title: "Komponen Eksternal"
          desc: "[Deskripsi opsional]"
          bullets:
            - key: "[Komponen 1]"
              value: "[Detail]"
            - key: "[Komponen 2]"
              value: "[Detail]"
            - key: "[Komponen 3]"
              value: "[Detail]"
            - key: "[Komponen 4]"
              value: "[Detail]"
    - title: "Uji Fungsi"
      icon: "bi-gear-wide-connected"
      description: "[Deskripsi singkat]"
      substeps:
        - title: "Uji Tekanan/Beban"
          bullets:
            - key: "[Jenis Uji 1]"
              value: "[Detail]"
            - key: "[Jenis Uji 2]"
              value: "[Detail]"
        - title: "Uji Operasional"
          bullets:
            - key: "[Jenis Uji 1]"
              value: "[Detail]"
            - key: "[Jenis Uji 2]"
              value: "[Detail]"
        - title: "Uji Hidrostatik/NDT"
          bullets:
            - key: "[Jenis Uji 1]"
              value: "[Detail]"
            - key: "[Jenis Uji 2]"
              value: "[Detail]"
        - title: "Uji Lanjutan"
          bullets:
            - key: "[Jenis Uji 1]"
              value: "[Detail]"
            - key: "[Jenis Uji 2]"
              value: "[Detail]"
    - title: "Pemeriksaan Alat Keselamatan"
      icon: "bi-shield-check"
      description: "[Deskripsi singkat]"
      substeps:
        - title: "Sistem Peringatan"
          bullets:
            - key: "Pemeriksaan Alarm"
              value: "[Detail]"
            - key: "Indikator Keselamatan"
              value: "[Detail]"
        - title: "Katup dan Sensor"
          bullets:
            - key: "Uji Katup Pengaman"
              value: "[Detail]"
            - key: "Sensor Keselamatan"
              value: "[Detail]"
  summary: "[Ringkasan proses riksa uji]"
```

**Catatan:**
- 4 tahapan utama: Persiapan, Visual, Uji Fungsi, Keselamatan
- Setiap tahapan memiliki 2-4 substeps
- Setiap substep memiliki 2-4 bullets

---

## Section 9: section_regulation

Sanksi hukum dan regulasi K3.

```yaml
section_regulation:
  title: "Sanksi Hukum dan Regulasi"
  icon: "bi-bank"
  subtitle: "Dasar Hukum Riksa Uji [Nama Alat]"
  description: "[Pengantar tentang regulasi]"
  summary: "[Ringkasan pentingnya kepatuhan]"
  subsections:
    - title: "Kepatuhan Terhadap Peraturan"
      icon: "bi-clipboard-check"
      description: "[Penjelasan kewajiban]"
      bullets:
        - key: "Undang-Undang Ketenagakerjaan"
          value: "[Detail UU No. 1 Tahun 1970]"
        - key: "Regulasi Spesifik"
          value: "[Detail Permenaker terkait]"
        - key: "Standar Internasional"
          value: "[Detail standar - ASME, API, SNI]"
    - title: "Sanksi Pelanggaran"
      icon: "bi-exclamation-triangle"
      description: "[Konsekuensi pelanggaran]"
      bullets:
        - key: "Sanksi Administratif"
          value: "[Detail sanksi]"
        - key: "Sanksi Pidana"
          value: "[Detail sanksi]"
        - key: "Tuntutan Perdata"
          value: "[Detail sanksi]"
    - title: "Dasar Hukum"
      icon: "bi-journal-bookmark"
      description: "[Daftar peraturan]"
      bullets:
        - key: "UU No. 1 Tahun 1970"
          value: "Undang-Undang tentang Keselamatan Kerja"
        - key: "[Permenaker terkait]"
          value: "[Deskripsi peraturan]"
        - key: "[Standar terkait]"
          value: "[Deskripsi standar]"
```

**Catatan:**
- 3 subsections: Kepatuhan, Sanksi, Dasar Hukum
- Permenaker sesuai jenis alat:
  - Boiler/Bejana Tekan: Permenaker No. 37 Tahun 2016
  - Pesawat Angkat: Permenaker No. 8 Tahun 2020
  - Elevator: Permenaker No. 6 Tahun 2017

---

## Section 10: section_training

Pelatihan dan sertifikasi operator.

```yaml
section_training:
  title: "Pelatihan dan Sertifikasi Operator [Nama Alat]"
  icon: "bi-mortarboard"
  subtitle: "Program Pelatihan K3 Bersertifikat"
  description: "[Pengantar pentingnya sertifikasi]"
  cards_heading: "Program Sertifikasi dan Materi Pelatihan"
  cards_intro: "[Pengantar cards]"
  bullets_heading: "Manfaat Pelatihan Operator"
  bullets_intro: "[Pengantar bullets]"
  summary: "[Ringkasan section]"
  cards:
    - title: "Sertifikasi Operator"
      icon: "bi-award"
      content: "[Penjelasan SIO/sertifikasi]"
    - title: "Materi Pelatihan"
      icon: "bi-book"
      content: "[Materi yang dipelajari]"
    - title: "Proses Ujian Kompetensi"
      icon: "bi-clipboard-check"
      content: "[Proses ujian]"
    - title: "Kualifikasi Operator"
      icon: "bi-person-badge"
      content: "[Kelas/tingkat operator]"
    - title: "Pelatihan Berkala"
      icon: "bi-arrow-repeat"
      content: "[Pentingnya refresh training]"
    - title: "Durasi dan Biaya"
      icon: "bi-clock-history"
      content: "[Info durasi dan biaya]"
  bullets:
    - key: "Mengurangi Risiko Kecelakaan"
      value: "[Detail]"
    - key: "Meningkatkan Efisiensi"
      value: "[Detail]"
    - key: "Memperbarui Pengetahuan"
      value: "[Detail]"
    - key: "Meningkatkan Keselamatan"
      value: "[Detail]"
```

**Catatan:**
- 6 cards tentang program pelatihan
- 4 bullets tentang manfaat

---

## Section 11: section_specs

Standar spesifikasi teknis alat.

```yaml
section_specs:
  title: "Standar Spesifikasi [Nama Alat]"
  subtitle: "Parameter Teknis yang Wajib Diperiksa"
  icon: "bi-gear-wide-connected"
  description: "[Pengantar spesifikasi teknis]"
  specs_heading: "Parameter Teknis [Nama Alat]"
  specs_intro: "Berikut adalah 6 parameter teknis utama:"
  specs:
    - title: "[Parameter 1]"
      icon: "bi-box-arrow-up"
      value: "[Nilai/Range]"
      paragraphs:
        - "[Penjelasan parameter]"
        - "[Detail tambahan]"
    - title: "[Parameter 2]"
      icon: "bi-speedometer"
      value: "[Nilai/Range]"
      paragraphs:
        - "[Penjelasan parameter]"
    - title: "[Parameter 3]"
      icon: "bi-thermometer-half"
      value: "[Nilai/Range]"
      paragraphs:
        - "[Penjelasan parameter]"
    - title: "[Parameter 4]"
      icon: "bi-fire"
      value: "[Nilai/Range]"
      paragraphs:
        - "[Penjelasan parameter]"
    - title: "[Parameter 5]"
      icon: "bi-graph-up-arrow"
      value: "[Nilai/Range]"
      paragraphs:
        - "[Penjelasan parameter]"
        - "[Detail tambahan]"
    - title: "[Parameter 6]"
      icon: "bi-grid-3x3"
      value: "[Nilai/Range]"
      paragraphs:
        - "[Penjelasan parameter]"
        - "[Detail tambahan]"
```

**Catatan:**
- 6 parameter teknis sesuai jenis alat:
  - **Boiler**: Kapasitas uap, Tekanan kerja, Temperatur, Bahan bakar, Efisiensi, Surface area
  - **Forklift**: Kapasitas angkat, Tinggi angkat, Kecepatan, Radius putar, Sistem rem, Power
  - **Crane**: SWL, Span, Lifting height, Speed, Rail gauge, Power supply

---

## Section 12: section_certification

Pengesahan gambar/desain teknis.

```yaml
section_certification:
  title: "Pengesahan Gambar [Nama Alat]"
  subtitle: "Verifikasi Desain Teknis Resmi"
  icon: "bi-file-earmark-check"
  intro: ""
  paragraphs:
    - "[Paragraf 1: Definisi pengesahan gambar]"
    - "[Paragraf 2: Link ke layanan pengesahan gambar]"
  topics:
    - title: "Proses Pengesahan Gambar"
      icon: "bi-list-check"
      items:
        - title: "Pengajuan Permohonan"
          icon: "bi-file-earmark-arrow-up"
          content: "[Penjelasan langkah]"
        - title: "Verifikasi Berkas"
          icon: "bi-pencil-square"
          content: "[Penjelasan langkah]"
        - title: "Pemeriksaan dan Pengujian"
          icon: "bi-search"
          content: "[Penjelasan langkah]"
        - title: "Penerbitan Sertifikat"
          icon: "bi-award"
          content: "[Penjelasan langkah]"
    - title: "Pentingnya Pengesahan Gambar"
      icon: "bi-exclamation-circle"
      items:
        - title: "Keselamatan"
          icon: "bi-shield-check"
          content: "[Penjelasan]"
        - title: "Kepatuhan Hukum"
          icon: "bi-bank"
          content: "[Penjelasan]"
    - title: "Siapa yang Melakukan Pengesahan?"
      icon: "bi-people"
      bullets:
        - "[Kemenaker RI melalui Direktorat Pengawasan Norma K3]"
        - "[Frekuensi pemeriksaan]"
    - title: "Dokumen yang Perlu Disiapkan"
      icon: "bi-clipboard-check"
      bullets:
        - key: "Surat Permohonan Bermaterai"
          value: "[Detail]"
        - key: "KTP dan NPWP"
          value: "[Detail]"
        - key: "NIB (Nomor Induk Berusaha)"
          value: "[Detail]"
        - key: "Gambar Teknis"
          value: "[Detail]"
        - key: "Daftar Bahan"
          value: "[Detail]"
        - key: "Laporan Pemeriksaan"
          value: "[Detail]"
    - title: "Manfaat Pengesahan Gambar"
      icon: "bi-award"
      bullets:
        - key: "Jaminan Keselamatan"
          value: "[Detail]"
        - key: "Legalitas Operasi"
          value: "[Detail]"
        - key: "Mitigasi Risiko"
          value: "[Detail]"
        - key: "Kepercayaan Stakeholder"
          value: "[Detail]"
```

**Catatan:**
- 5 topics dengan struktur berbeda (items atau bullets)
- Topic 1-2: menggunakan `items` dengan icon
- Topic 3: menggunakan `bullets` array sederhana
- Topic 4-5: menggunakan `bullets` dengan key-value

---

## Section 13: section_permit

Izin pemakaian/SLO alat.

```yaml
section_permit:
  title: "Izin Pemakaian [Nama Alat]"
  subtitle: "Dokumen Resmi Kelayakan Operasi Kemenaker"
  icon: "bi-file-earmark-medical"
  intro: "[Definisi izin pemakaian/SLO]"
  topics:
    - title: "Pentingnya Izin Pemakaian"
      icon: "bi-shield-check"
      bullets:
        - key: "Keamanan"
          value: "[Penjelasan]"
        - key: "Kepatuhan"
          value: "[Penjelasan]"
        - key: "Legalitas"
          value: "[Penjelasan]"
        - key: "Kepercayaan"
          value: "[Penjelasan]"
    - title: "Perbedaan Izin Pemakaian dan SIO"
      icon: "bi-arrows-angle-expand"
      bullets:
        - key: "Izin Pemakaian/SLO"
          value: "[Izin untuk alat - berlaku 2 tahun]"
        - key: "SIO (Surat Izin Operator)"
          value: "[Izin untuk operator - dari pelatihan]"
  summary: "[Ringkasan pentingnya izin operasi]"
```

**Catatan:**
- Istilah sesuai jenis alat:
  - **Forklift/Crane**: SLO (Surat Izin Layak Operasi)
  - **Boiler**: Izin Pemakaian Pesawat Uap
  - **Bejana Tekan**: Izin Pemakaian Bejana Tekan
  - **Elevator**: Izin Penggunaan Lift

---

## Section 14: section_conclusion

Kesimpulan dengan CTA.

```yaml
section_conclusion:
  title: "Kesimpulan"
  icon: "bi-check2-square"
  intro: "[Ringkasan artikel - bisa sertakan link Google Maps]"
  highlights:
    - key: "Mencegah Kecelakaan Kerja"
      value: "[Ringkasan manfaat 1]"
    - key: "Meningkatkan Efisiensi"
      value: "[Ringkasan manfaat 2]"
    - key: "Mematuhi Regulasi"
      value: "[Ringkasan manfaat 3]"
  closing: "[Paragraf penutup - ajakan melakukan riksa uji]"
  cta:
    text: "[Teks CTA - ajakan menghubungi PT. Cipta Mas Jaya]"
    link: "/layanan/[kategori]/riksa-uji-[nama-alat]/"
    label: "Hubungi Kami"
    icon: "bi-telephone"
```

**Catatan:**
- `intro`: Bisa sertakan link Google Maps
- `highlights`: 3 poin utama manfaat
- `cta`: Call-to-action dengan link ke halaman layanan

---

## Bagian Pendukung

### content_intro

Paragraf intro setelah H1.

```yaml
content_intro:
  paragraphs:
    - "[Paragraf 1: Definisi + link ke kategori induk]"
    - "[Paragraf 2: Kewajiban riksa uji + link ke PJK3]"
    - "[Paragraf 3: Penjelasan umum tentang alat + link Wikipedia]"
```

### announce

Paragraf promosi/CTA di akhir artikel.

```yaml
announce:
  paragraphs:
    - "[Paragraf tentang PT. Cipta Mas Jaya sebagai PJK3]"
```

### howto_post (Schema HowTo)

```yaml
howto_post:
  name: "Proses Riksa Uji [Nama Alat]"
  description: "[Deskripsi proses]"
  totalTime: "PT4H"
  steps:
    - name: "[Langkah 1]"
      text: "[Deskripsi langkah 1]"
    - name: "[Langkah 2]"
      text: "[Deskripsi langkah 2]"
    # ... dst (6 langkah)
```

- `totalTime`: Format ISO 8601 duration (PT4H = 4 jam)
- `steps`: 6 langkah utama proses riksa uji

### itemlist_post (Schema ItemList)

```yaml
itemlist_post:
  name: "Komponen yang Diperiksa dalam Riksa Uji [Nama Alat]"
  description: "[Deskripsi daftar]"
  items:
    - name: "[Komponen 1]"
      description: "[Detail pemeriksaan]"
    - name: "[Komponen 2]"
      description: "[Detail pemeriksaan]"
    # ... dst (5 items)
```

- 5 komponen utama yang diperiksa

### video_post (Schema Video)

```yaml
video_post:
  name: "[Judul video]"
  description: "[Deskripsi video]"
  thumbnail: "[Path thumbnail]"
  src: "[URL video]"
  duration: "PT5M30S"
  upload_date: "2024-08-26"
```

- Kosongkan jika tidak ada video

### related_service

```yaml
related_service: /layanan/[kategori]/[subkategori]/riksa-uji-[nama-alat]/
```

- Path ke halaman layanan terkait

---

## ICON REFERENCE (Bootstrap Icons)

### Umum
- `bi-shield-check` : Keselamatan
- `bi-exclamation-triangle` : Peringatan/Bahaya
- `bi-graph-up-arrow` : Efisiensi/Peningkatan
- `bi-clock-history` : Waktu/Umur pakai
- `bi-gear` : Proses/Mekanik
- `bi-gear-wide-connected` : Sistem/Mesin
- `bi-eye` : Visual/Pemeriksaan
- `bi-clipboard-check` : Checklist/Dokumen
- `bi-bank` : Hukum/Regulasi
- `bi-mortarboard` : Pelatihan/Edukasi
- `bi-award` : Sertifikasi/Penghargaan
- `bi-book` : Materi/Buku
- `bi-file-earmark-check` : Dokumen/Pengesahan
- `bi-file-earmark-medical` : Izin/Sertifikat
- `bi-check2-square` : Kesimpulan/Selesai
- `bi-telephone` : Kontak/CTA

### Spesifik Alat
- `bi-thermometer-half` : Suhu/Temperatur
- `bi-speedometer` : Tekanan/Kecepatan
- `bi-box-arrow-up` : Kapasitas angkat
- `bi-arrows-expand` : Tinggi/Dimensi
- `bi-battery-charging` : Baterai/Energi
- `bi-fire` : Api/Pembakaran
- `bi-droplet` : Cairan/Fluida
- `bi-wind` : Udara/Gas
- `bi-lightning-charge` : Listrik

---

## CHECKLIST SEBELUM PUBLISH

### Checklist Umum
- [ ] Semua field terisi (tidak ada yang kosong "")
- [ ] Internal link valid (cek URL)
- [ ] External link menggunakan target="_blank"
- [ ] Icon Bootstrap valid (bi-xxx)
- [ ] Tanggal format YYYY-MM-DD
- [ ] Permalink sesuai format
- [ ] Categories dan tags relevan
- [ ] Schema data lengkap (howto, itemlist)
- [ ] Gambar tersedia atau gunakan fallback
- [ ] Preview di localhost sebelum deploy

### Checklist Per Section

#### Front Matter & Bagian Pendukung
- [ ] `title` - Judul artikel (Riksa Uji [Nama Alat])
- [ ] `rating_id` - ID untuk rating system
- [ ] `description` - Meta description (150-160 karakter)
- [ ] `content_intro` - 3 paragraf intro dengan link
- [ ] `announce` - 1 paragraf CTA
- [ ] `permalink` - Format /YYYY/MM/DD/jasa-riksa-uji-[nama]/
- [ ] `redirect_from` - URL lama jika migrasi
- [ ] `date` & `last_modified_at` - Format YYYY-MM-DD
- [ ] `author` - Nama penulis
- [ ] `categories` - 2 kategori (Layanan + Kategori Induk)
- [ ] `tags` - 5 tags relevan
- [ ] `images` - 4 gambar (featured + gallery)
- [ ] `related_service` - Path ke halaman layanan

#### Section 1: section_hero
- [ ] `title` - Judul hero
- [ ] `theme` - Warna tema (red/blue/green/orange)
- [ ] `area` - Area layanan
- [ ] `description` - Deskripsi singkat
- [ ] `label_wilayah` - Label wilayah
- [ ] `wilayah_layanan` - 8 wilayah
- [ ] `badges` - 3 badge dengan icon
- [ ] `cta_title`, `cta_button`, `cta_notice` - CTA

#### Section 2: section_order
- [ ] `title` - Judul cara pemesanan
- [ ] `area` - Area layanan
- [ ] `phone` - Nomor telepon
- [ ] `intro` - Pengantar
- [ ] `initial_steps` - 3 langkah awal (title, description, icon, color)
- [ ] `final_steps` - 3 langkah akhir (title, description, icon, color)

#### Section 3: section_faq
- [ ] `title` & `subtitle` - Judul FAQ
- [ ] `faq_layanan` - 3 FAQ dengan pertanyaan, jawaban, icon
- [ ] `judul_layanan` & `deskripsi_layanan`
- [ ] `faq_sertifikasi` - 3 FAQ dengan pertanyaan, jawaban, icon
- [ ] `judul_sertifikasi` & `deskripsi_sertifikasi`
- [ ] `faq_biaya` - 3 FAQ dengan pertanyaan, jawaban, icon
- [ ] `judul_biaya` & `deskripsi_biaya`

#### Section 4: section_company_intro
- [ ] `title` - Judul perkenalan
- [ ] `company_name` - Nama perusahaan
- [ ] `intro` - Tagline
- [ ] `subsections` - 2 subsection dengan title dan paragraphs

#### Section 5: section_services
- [ ] `title` - Judul keunggulan
- [ ] `intro` - Pengantar
- [ ] `services` - 6 layanan dengan title, description, icon

#### Section 6: section_tips
- [ ] `title` & `subtitle` - Judul tips
- [ ] `intro` - Pengantar
- [ ] `tips` - 3 tips dengan kategori, deskripsi, kriteria (3), warna, icon

#### Section 7: section_importance
- [ ] `title` & `subtitle` - Judul pentingnya
- [ ] `icon` - Icon utama
- [ ] `paragraphs` - 1 paragraf pembuka
- [ ] `subsections` - 3 subsection dengan title, icon, paragraphs, bullets (2)

#### Section 8: section_process
- [ ] `title`, `icon`, `subtitle` - Header
- [ ] `description` - Deskripsi umum
- [ ] `steps_heading` & `steps_intro` - Pengantar langkah
- [ ] `steps` - 4 langkah dengan:
  - [ ] Step 1: Persiapan (2 substeps, masing-masing 2 bullets)
  - [ ] Step 2: Pemeriksaan Visual (2 substeps, masing-masing 4 bullets)
  - [ ] Step 3: Uji Fungsi (4 substeps, masing-masing 2 bullets)
  - [ ] Step 4: Pemeriksaan Keselamatan (2 substeps, masing-masing 2 bullets)
- [ ] `summary` - Ringkasan proses

#### Section 9: section_regulation
- [ ] `title`, `icon`, `subtitle` - Header
- [ ] `description` - Pengantar
- [ ] `summary` - Ringkasan
- [ ] `subsections` - 3 subsection:
  - [ ] Kepatuhan (3 bullets)
  - [ ] Sanksi Pelanggaran (3 bullets)
  - [ ] Dasar Hukum (3 bullets)

#### Section 10: section_training
- [ ] `title`, `icon`, `subtitle` - Header
- [ ] `description` - Pengantar
- [ ] `cards_heading` & `cards_intro` - Pengantar cards
- [ ] `bullets_heading` & `bullets_intro` - Pengantar bullets
- [ ] `summary` - Ringkasan
- [ ] `cards` - 6 cards dengan title, icon, content
- [ ] `bullets` - 4 bullets dengan key-value

#### Section 11: section_specs
- [ ] `title` & `subtitle` - Header
- [ ] `icon` - Icon utama
- [ ] `description` - Pengantar
- [ ] `specs_heading` & `specs_intro` - Pengantar specs
- [ ] `specs` - 6 specs dengan title, icon, value, paragraphs

#### Section 12: section_certification
- [ ] `title` & `subtitle` - Header
- [ ] `icon` - Icon utama
- [ ] `intro` - Intro (bisa kosong)
- [ ] `paragraphs` - 2 paragraf
- [ ] `topics` - 5 topics:
  - [ ] Topic 1: Proses (4 items dengan title, icon, content)
  - [ ] Topic 2: Pentingnya (2 items dengan title, icon, content)
  - [ ] Topic 3: Siapa (2 bullets simple)
  - [ ] Topic 4: Dokumen (6 bullets key-value)
  - [ ] Topic 5: Manfaat (4 bullets key-value)

#### Section 13: section_permit
- [ ] `title` & `subtitle` - Header
- [ ] `icon` - Icon utama
- [ ] `intro` - Definisi izin
- [ ] `topics` - 2 topics:
  - [ ] Topic 1: Pentingnya (4 bullets key-value)
  - [ ] Topic 2: Perbedaan (2 bullets key-value)
- [ ] `summary` - Ringkasan

#### Section 14: section_conclusion
- [ ] `title` - Judul kesimpulan
- [ ] `icon` - Icon
- [ ] `intro` - Ringkasan dengan link Google Maps
- [ ] `highlights` - 3 highlights key-value
- [ ] `closing` - Paragraf penutup
- [ ] `cta` - CTA dengan text, link, label, icon

#### Schema Data
- [ ] `howto_post` - name, description, totalTime, 6 steps
- [ ] `itemlist_post` - name, description, 5 items
- [ ] `video_post` - Lengkap jika ada video, kosong jika tidak
