# ============================================================================
# PETUNJUK PENGISIAN TEMPLATE NODE RIKSA UJI
# ============================================================================
# File: TEMPLATE-node-riksa-uji.md
# Lokasi: /TEMPLATES/TEMPLATE-node-riksa-uji.md
# ============================================================================

## CARA KERJA (PER-SECTION + TODOWRITE)

Konten template ini sangat panjang. JANGAN mengisi sekali jalan.
Gunakan sistem per-section dengan TodoWrite untuk menjaga kualitas konten.

### WAJIB: Gunakan TodoWrite untuk Setiap Section

```
SEBELUM MULAI, buat todo list dengan 17 section:
┌─────────────────────────────────────────────────────────────────────────────┐
│ TodoWrite:                                                                  │
│  1. [pending] Section 1: Front Matter                                       │
│  2. [pending] Section 2: content_intro + announce                           │
│  3. [pending] Section 3: section_hero                                       │
│  4. [pending] Section 4: section_order                                      │
│  5. [pending] Section 5: section_faq                                        │
│  6. [pending] Section 6: section_company_intro                              │
│  7. [pending] Section 7: section_services                                   │
│  8. [pending] Section 8: section_tips                                       │
│  9. [pending] Section 9: section_importance                                 │
│ 10. [pending] Section 10: section_process                                   │
│ 11. [pending] Section 11: section_regulation                                │
│ 12. [pending] Section 12: section_training                                  │
│ 13. [pending] Section 13: section_specs                                     │
│ 14. [pending] Section 14: section_certification                             │
│ 15. [pending] Section 15: section_permit                                    │
│ 16. [pending] Section 16: section_conclusion                                │
│ 17. [pending] Section 17: Schema Data (howto, itemlist, video)              │
└─────────────────────────────────────────────────────────────────────────────┘

UNTUK SETIAP SECTION:
1. Mark todo as [in_progress]
2. Baca petunjuk section dari file ini
3. Tulis konten ke file tujuan (Edit tool)
4. Verifikasi dengan checklist section
5. Mark todo as [completed]
6. JANGAN lanjut ke section berikutnya sebelum completed
```

### Mengapa Per-Section + TodoWrite Penting?

1. **Memory Management**: Setiap section fokus pada 1 bagian saja
2. **Quality Control**: Konten lebih detail karena tidak terburu-buru
3. **Checkpoint**: Jika ada error, bisa lanjut dari section terakhir
4. **Review**: User bisa review setiap section sebelum lanjut
5. **Traceability**: Todo list menunjukkan progress yang jelas

---

## DAFTAR SECTION

Template ini memiliki **14 section** utama + **3 bagian pendukung**:

| No | Section                 | Deskripsi                                              |
|----|-------------------------|--------------------------------------------------------|
| 1  | Front Matter            | Metadata artikel (title, description, dll)             |
| 2  | `content_intro` + `announce` | Paragraf intro dan CTA                            |
| 3  | `section_hero`          | Hero banner dengan title, badges, wilayah layanan, CTA |
| 4  | `section_order`         | Cara pemesanan layanan (6 langkah)                     |
| 5  | `section_faq`           | FAQ layanan, sertifikasi, dan biaya                    |
| 6  | `section_company_intro` | Perkenalan perusahaan dengan subsections               |
| 7  | `section_services`      | 6 keunggulan/layanan dengan icon                       |
| 8  | `section_tips`          | 3 tips memilih PJK3                                    |
| 9  | `section_importance`    | Pentingnya riksa uji (3 subsections)                   |
| 10 | `section_process`       | Proses riksa uji (4 tahapan dengan substeps)           |
| 11 | `section_regulation`    | Sanksi hukum dan regulasi (3 subsections)              |
| 12 | `section_training`      | Pelatihan dan sertifikasi operator (6 cards)           |
| 13 | `section_specs`         | Standar spesifikasi teknis (6 specs)                   |
| 14 | `section_certification` | Pengesahan gambar (5 topics)                           |
| 15 | `section_permit`        | Izin pemakaian pesawat (2 topics)                      |
| 16 | `section_conclusion`    | Kesimpulan dengan highlights dan CTA                   |
| 17 | Schema Data             | howto_post, itemlist_post, video_post                  |

---

## Section 1: Front Matter

```
TodoWrite: Mark "Section 1: Front Matter" as [in_progress]
```

Metadata dasar artikel.

```yaml
layout: node/node--riksa-uji
title: "Riksa Uji [Nama Alat]"
description: "[150-160 karakter untuk SEO meta description]"
keywords: "riksa uji [nama alat], jasa riksa uji [nama alat], inspeksi [nama alat], [kategori alat], PJK3, sertifikasi K3"
permalink: /2024/08/26/jasa-riksa-uji-[nama-alat]/
redirect_from:
  - /blog/2024/08/26/jasa-riksa-uji-[nama-alat]/
date: 2024-08-26
last_modified_at: 2025-11-28
author: "Editor"
categories:
  - Layanan
  - [Kategori Induk]
tags:
  - Inspeksi K3
  - Jasa Riksa Uji
  - [Kategori Alat]
  - Riksa Uji
  - [Nama Alat]
image: "/path/to/featured-image.jpg"
images:
  - "/path/to/image-1.jpg"
  - "/path/to/image-2.jpg"
  - "/path/to/image-3.jpg"
  - "/path/to/image-4.jpg"
rating_id: riksa-uji-[nama-alat]
related_service: /layanan/[kategori]/[subkategori]/riksa-uji-[nama-alat]/
lastmod: '2025-12-01T16:40:00+0700'
```

### Referensi Nilai

#### title:
- Format: "Riksa Uji" + nama alat
- Tanpa kata "Jasa" di depan
- Contoh: "Riksa Uji Boiler", "Riksa Uji Forklift", "Riksa Uji Overhead Crane"

#### categories:
- Kategori 1: Selalu "Layanan"
- Kategori 2: Nama kategori induk
- Contoh: "Riksa Uji Pesawat Uap dan Bejana Tekan", "Riksa Uji Pesawat Angkat dan Angkut"

#### rating_id:
- ID untuk menghubungkan artikel dengan file rating/review
- Format: `riksa-uji-[nama-alat]` (lowercase, dash-separated)
- File rating di: `_includes/reusable/node--riksa-uji/ratings/block--rating--[rating_id].html`

### Checklist Section 1
- [ ] `title` - Format: "Riksa Uji [Nama Alat]"
- [ ] `description` - 150-160 karakter
- [ ] `permalink` - Format /YYYY/MM/DD/jasa-riksa-uji-[nama]/
- [ ] `redirect_from` - URL lama jika migrasi
- [ ] `date` & `last_modified_at` - Format YYYY-MM-DD
- [ ] `author` - Nama penulis
- [ ] `categories` - 2 kategori (Layanan + Kategori Induk)
- [ ] `tags` - 5 tags relevan
- [ ] `image` - Featured image path
- [ ] `images` - 4 gambar untuk gallery
- [ ] `rating_id` - ID untuk rating system
- [ ] `related_service` - Path ke halaman layanan

```
TodoWrite: Mark "Section 1: Front Matter" as [completed]
```

---

## Section 2: content_intro + announce

```
TodoWrite: Mark "Section 2: content_intro + announce" as [in_progress]
```

Paragraf pembuka dan penutup artikel.

```yaml
content_intro:
  paragraphs:
    - "[Paragraf 1: Definisi + link ke kategori induk]"
    - "[Paragraf 2: Kewajiban riksa uji + link ke PJK3]"
    - "[Paragraf 3: Penjelasan umum tentang alat + link Wikipedia]"

announce:
  paragraphs:
    - "[Paragraf tentang PT. Cipta Mas Jaya sebagai PJK3]"
```

### Catatan
- `content_intro`: 3 paragraf pembuka setelah H1
- Sertakan internal link ke kategori induk (misal: /layanan/riksa-uji-pesawat-uap-bejana-tekan/)
- Sertakan link ke halaman PJK3: /about/pjk3/
- `announce`: 1 paragraf promosi/CTA di akhir artikel
- Format link: `<a href="/url/">anchor text</a>`

### Checklist Section 2
- [ ] `content_intro.paragraphs` - 3 paragraf dengan internal link
- [ ] `announce.paragraphs` - 1 paragraf CTA

```
TodoWrite: Mark "Section 2: content_intro + announce" as [completed]
```

---

## Section 3: section_hero

```
TodoWrite: Mark "Section 3: section_hero" as [in_progress]
```

Hero banner di bagian atas halaman.

```yaml
section_hero:
  title: "Butuh Layanan Riksa Uji [Nama Alat]"
  theme: "red"
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

### Referensi theme:
| Theme | Penggunaan |
|-------|------------|
| `red` | Alat berbahaya (boiler, bejana tekan) |
| `blue` | Alat umum |
| `green` | Alat ramah lingkungan |
| `orange` | Alat angkat angkut |

### Checklist Section 3
- [ ] `title` - Judul hero
- [ ] `theme` - Warna tema (red/blue/green/orange)
- [ ] `area` - Area layanan
- [ ] `description` - Deskripsi singkat
- [ ] `label_wilayah` - Label wilayah
- [ ] `wilayah_layanan` - 8 wilayah
- [ ] `badges` - 3 badge dengan text dan icon
- [ ] `cta_title`, `cta_button`, `cta_notice` - CTA

```
TodoWrite: Mark "Section 3: section_hero" as [completed]
```

---

## Section 4: section_order

```
TodoWrite: Mark "Section 4: section_order" as [in_progress]
```

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

### Referensi color:
- `primary` - Biru
- `info` - Cyan
- `warning` - Kuning
- `success` - Hijau
- `danger` - Merah

### Checklist Section 4
- [ ] `title` - Judul cara pemesanan
- [ ] `area` - Area layanan
- [ ] `phone` - Nomor telepon
- [ ] `intro` - Pengantar
- [ ] `initial_steps` - 3 langkah awal (title, description, icon, color)
- [ ] `final_steps` - 3 langkah akhir (title, description, icon, color)

```
TodoWrite: Mark "Section 4: section_order" as [completed]
```

---

## Section 5: section_faq

```
TodoWrite: Mark "Section 5: section_faq" as [in_progress]
```

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

### Checklist Section 5
- [ ] `title` & `subtitle` - Judul FAQ
- [ ] `faq_layanan` - 3 FAQ dengan pertanyaan, jawaban, icon
- [ ] `judul_layanan` & `deskripsi_layanan`
- [ ] `faq_sertifikasi` - 3 FAQ dengan pertanyaan, jawaban, icon
- [ ] `judul_sertifikasi` & `deskripsi_sertifikasi`
- [ ] `faq_biaya` - 3 FAQ dengan pertanyaan, jawaban, icon
- [ ] `judul_biaya` & `deskripsi_biaya`

```
TodoWrite: Mark "Section 5: section_faq" as [completed]
```

---

## Section 6: section_company_intro

```
TodoWrite: Mark "Section 6: section_company_intro" as [in_progress]
```

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

### Checklist Section 6
- [ ] `title` - Judul perkenalan
- [ ] `company_name` - Nama perusahaan
- [ ] `intro` - Tagline
- [ ] `subsections` - 2 subsection dengan title dan paragraphs

```
TodoWrite: Mark "Section 6: section_company_intro" as [completed]
```

---

## Section 7: section_services

```
TodoWrite: Mark "Section 7: section_services" as [in_progress]
```

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

### Checklist Section 7
- [ ] `title` - Judul keunggulan
- [ ] `intro` - Pengantar
- [ ] `services` - 6 layanan dengan title, description, icon

```
TodoWrite: Mark "Section 7: section_services" as [completed]
```

---

## Section 8: section_tips

```
TodoWrite: Mark "Section 8: section_tips" as [in_progress]
```

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

### Checklist Section 8
- [ ] `title` & `subtitle` - Judul tips
- [ ] `intro` - Pengantar
- [ ] `tips` - 3 tips dengan kategori, deskripsi, kriteria (3), warna, icon

```
TodoWrite: Mark "Section 8: section_tips" as [completed]
```

---

## Section 9: section_importance

```
TodoWrite: Mark "Section 9: section_importance" as [in_progress]
```

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

### Checklist Section 9
- [ ] `title` & `subtitle` - Judul pentingnya
- [ ] `icon` - Icon utama
- [ ] `paragraphs` - 1 paragraf pembuka
- [ ] `subsections` - 3 subsection dengan title, icon, paragraphs, bullets (2)

```
TodoWrite: Mark "Section 9: section_importance" as [completed]
```

---

## Section 10: section_process

```
TodoWrite: Mark "Section 10: section_process" as [in_progress]
```

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

### Catatan
- 4 tahapan utama: Persiapan, Visual, Uji Fungsi, Keselamatan
- Setiap tahapan memiliki 2-4 substeps
- Setiap substep memiliki 2-4 bullets

### Checklist Section 10
- [ ] `title`, `icon`, `subtitle` - Header
- [ ] `description` - Deskripsi umum
- [ ] `steps_heading` & `steps_intro` - Pengantar langkah
- [ ] `steps` - 4 langkah dengan substeps dan bullets
- [ ] `summary` - Ringkasan proses

```
TodoWrite: Mark "Section 10: section_process" as [completed]
```

---

## Section 11: section_regulation

```
TodoWrite: Mark "Section 11: section_regulation" as [in_progress]
```

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

### Referensi Permenaker per Jenis Alat:
- **Boiler/Bejana Tekan**: Permenaker No. 37 Tahun 2016
- **Pesawat Angkat**: Permenaker No. 8 Tahun 2020
- **Elevator**: Permenaker No. 6 Tahun 2017

### Checklist Section 11
- [ ] `title`, `icon`, `subtitle` - Header
- [ ] `description` - Pengantar
- [ ] `summary` - Ringkasan
- [ ] `subsections` - 3 subsection (Kepatuhan, Sanksi, Dasar Hukum) masing-masing 3 bullets

```
TodoWrite: Mark "Section 11: section_regulation" as [completed]
```

---

## Section 12: section_training

```
TodoWrite: Mark "Section 12: section_training" as [in_progress]
```

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

### Checklist Section 12
- [ ] `title`, `icon`, `subtitle` - Header
- [ ] `description` - Pengantar
- [ ] `cards_heading` & `cards_intro` - Pengantar cards
- [ ] `bullets_heading` & `bullets_intro` - Pengantar bullets
- [ ] `summary` - Ringkasan
- [ ] `cards` - 6 cards dengan title, icon, content
- [ ] `bullets` - 4 bullets dengan key-value

```
TodoWrite: Mark "Section 12: section_training" as [completed]
```

---

## Section 13: section_specs

```
TodoWrite: Mark "Section 13: section_specs" as [in_progress]
```

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
    # ... dst (6 specs)
```

### Referensi Parameter per Jenis Alat:
- **Boiler**: Kapasitas uap, Tekanan kerja, Temperatur, Bahan bakar, Efisiensi, Surface area
- **Forklift**: Kapasitas angkat, Tinggi angkat, Kecepatan, Radius putar, Sistem rem, Power
- **Crane**: SWL, Span, Lifting height, Speed, Rail gauge, Power supply

### Checklist Section 13
- [ ] `title` & `subtitle` - Header
- [ ] `icon` - Icon utama
- [ ] `description` - Pengantar
- [ ] `specs_heading` & `specs_intro` - Pengantar specs
- [ ] `specs` - 6 specs dengan title, icon, value, paragraphs

```
TodoWrite: Mark "Section 13: section_specs" as [completed]
```

---

## Section 14: section_certification

```
TodoWrite: Mark "Section 14: section_certification" as [in_progress]
```

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

### Catatan
- Topic 1-2: menggunakan `items` dengan icon
- Topic 3: menggunakan `bullets` array sederhana
- Topic 4-5: menggunakan `bullets` dengan key-value

### Checklist Section 14
- [ ] `title` & `subtitle` - Header
- [ ] `icon` - Icon utama
- [ ] `paragraphs` - 2 paragraf
- [ ] `topics` - 5 topics dengan struktur berbeda

```
TodoWrite: Mark "Section 14: section_certification" as [completed]
```

---

## Section 15: section_permit

```
TodoWrite: Mark "Section 15: section_permit" as [in_progress]
```

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

### Referensi Istilah per Jenis Alat:
- **Forklift/Crane**: SLO (Surat Izin Layak Operasi)
- **Boiler**: Izin Pemakaian Pesawat Uap
- **Bejana Tekan**: Izin Pemakaian Bejana Tekan
- **Elevator**: Izin Penggunaan Lift

### Checklist Section 15
- [ ] `title` & `subtitle` - Header
- [ ] `icon` - Icon utama
- [ ] `intro` - Definisi izin
- [ ] `topics` - 2 topics (Pentingnya: 4 bullets, Perbedaan: 2 bullets)
- [ ] `summary` - Ringkasan

```
TodoWrite: Mark "Section 15: section_permit" as [completed]
```

---

## Section 16: section_conclusion

```
TodoWrite: Mark "Section 16: section_conclusion" as [in_progress]
```

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

### Checklist Section 16
- [ ] `title` - Judul kesimpulan
- [ ] `icon` - Icon
- [ ] `intro` - Ringkasan dengan link Google Maps (opsional)
- [ ] `highlights` - 3 highlights key-value
- [ ] `closing` - Paragraf penutup
- [ ] `cta` - CTA dengan text, link, label, icon

```
TodoWrite: Mark "Section 16: section_conclusion" as [completed]
```

---

## Section 17: Schema Data

```
TodoWrite: Mark "Section 17: Schema Data" as [in_progress]
```

Schema data untuk SEO.

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

### video_post (Schema Video) - Opsional

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

### Checklist Section 17
- [ ] `howto_post` - name, description, totalTime, 6 steps
- [ ] `itemlist_post` - name, description, 5 items
- [ ] `video_post` - Lengkap jika ada video, kosong jika tidak

```
TodoWrite: Mark "Section 17: Schema Data" as [completed]
```

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

## CHECKLIST FINAL SEBELUM PUBLISH

### Checklist Umum
- [ ] Semua 17 section sudah [completed] di TodoWrite
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

### Build & Preview
```bash
./rebuild.sh
# Buka browser: http://localhost:4000/[path-to-article]
```
