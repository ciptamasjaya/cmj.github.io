# ============================================================================
# PETUNJUK PENGISIAN TEMPLATE NODE ALAT K3
# ============================================================================
# File: TEMPLATE-node-alat-k3.md
# Lokasi: /TEMPLATES/TEMPLATE-node-alat-k3.md
# ============================================================================

## CARA KERJA (PER-SECTION + TODOWRITE)

Konten template ini cukup panjang. JANGAN mengisi sekali jalan.
Gunakan sistem per-section dengan TodoWrite untuk menjaga kualitas konten.

### WAJIB: Gunakan TodoWrite untuk Setiap Section

```
SEBELUM MULAI, buat todo list dengan 16 section:
┌─────────────────────────────────────────────────────────────────────────────┐
│ TodoWrite:                                                                  │
│  1. [pending] Section 1: Front Matter                                       │
│  2. [pending] Section 2: section_definition                                 │
│  3. [pending] Section 3: section_functions                                  │
│  4. [pending] Section 4: section_types                                      │
│  5. [pending] Section 5: section_components                                 │
│  6. [pending] Section 6: section_specifications                             │
│  7. [pending] Section 7: section_regulations                                │
│  8. [pending] Section 8: section_risks                                      │
│  9. [pending] Section 9: section_applications                               │
│ 10. [pending] Section 10: section_howto_penggunaan                          │
│ 11. [pending] Section 11: section_howto_perawatan                           │
│ 12. [pending] Section 12: section_howto_inspeksi                            │
│ 13. [pending] Section 13: section_faq                                       │
│ 14. [pending] Section 14: section_gallery                                   │
│ 15. [pending] Section 15: section_video                                     │
│ 16. [pending] Section 16: section_related_service + section_cta             │
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

Template ini memiliki **16 section** utama:

| No | Section                    | Block                        | Grid         | Jumlah Ideal |
|----|----------------------------|------------------------------|--------------|--------------|
| 1  | Front Matter               | -                            | -            | -            |
| 2  | `section_definition`       | block--definition.html       | -            | 3 terms      |
| 3  | `section_functions`        | block--functions.html        | col-lg-4     | 6 items      |
| 4  | `section_types`            | block--types.html            | col-lg-6     | 4 items      |
| 5  | `section_components`       | block--components.html       | col-lg-4     | 6 items      |
| 6  | `section_specifications`   | block--specifications.html   | col-lg-6     | 4-6 items    |
| 7  | `section_regulations`      | block--regulations.html      | full-width   | 3 items      |
| 8  | `section_risks`            | block--risks.html            | col-lg-6     | 4 items      |
| 9  | `section_applications`     | block--applications.html     | col-lg-4     | 6 items      |
| 10 | `section_howto_penggunaan` | block--howto-penggunaan.html | -            | 3-5 steps    |
| 11 | `section_howto_perawatan`  | block--howto-perawatan.html  | -            | 3-5 steps    |
| 12 | `section_howto_inspeksi`   | block--howto-inspeksi.html   | -            | 3-5 steps    |
| 13 | `section_faq`              | block--faq.html              | accordion    | 5 items      |
| 14 | `section_gallery`          | block--gallery.html          | col-lg-3     | 4 images     |
| 15 | `section_video`            | block--video.html            | -            | 1 video      |
| 16 | `section_related_service`  | block--related-service.html  | -            | 1 link       |
|    | `section_cta`              | block--cta-pjk3.html         | -            | 3 benefits   |

---

## Section 1: Front Matter

```
TodoWrite: Mark "Section 1: Front Matter" as [in_progress]
```

Metadata dasar artikel.

```yaml
layout: node/node--alat-k3
title: "[Nama Alat K3]: Pengertian, Jenis, dan Keselamatan Kerja"
description: "[150-160 karakter untuk SEO meta description]"
keywords: "[nama alat], [sinonim], K3, keselamatan kerja, inspeksi"
permalink: /artikel/[nama-alat]/
redirect_from:
  - /blog/[nama-alat]/
date: 2024-12-01
last_modified_at: 2024-12-01
author: "Tim K3 CMJ"
categories:
  - Alat K3
  - [Kategori Spesifik]
tags:
  - [nama alat]
  - K3
  - keselamatan kerja
  - inspeksi
  - riksa uji
# Format object untuk SEO - alt minimal 180 karakter
image:
  src: "/assets/images/posts/[nama-alat]-featured.jpg"
  alt: "[Deskripsi SEO minimal 180 karakter - kalimat lengkap yang menjelaskan gambar, relevan dengan konten artikel, mengandung keyword utama]"
theme_color: "success"
rating_id: "[nama-alat]"
```

### Referensi Nilai

#### theme_color:
| Nilai | Warna | Penggunaan |
|-------|-------|------------|
| `primary` | Biru | Default/umum |
| `success` | Hijau | Alat keselamatan |
| `info` | Cyan | Alat monitoring |
| `warning` | Kuning | Alat berbahaya |
| `danger` | Merah | Alat sangat berbahaya |

#### categories:
- Kategori 1: Selalu "Alat K3"
- Kategori 2: Kategori spesifik (Pesawat Angkat, Bejana Tekan, dll)

#### rating_id:
- Format: `[nama-alat]` (lowercase, dash-separated)
- File rating di: `_includes/reusable/node--alat-k3/ratings/block--rating--[rating_id].html`

### Checklist Section 1
- [ ] `title` - Format: "[Nama Alat]: Pengertian, Jenis, dan Keselamatan Kerja"
- [ ] `description` - 150-160 karakter
- [ ] `keywords` - 5-7 kata kunci relevan
- [ ] `permalink` - Format /artikel/[nama-alat]/
- [ ] `date` & `last_modified_at` - Format YYYY-MM-DD
- [ ] `categories` - 2 kategori
- [ ] `tags` - 5 tags relevan
- [ ] `image` - Object {src, alt} - alt minimal 180 karakter
- [ ] `theme_color` - Sesuai jenis alat
- [ ] `rating_id` - Untuk rating system

```
TodoWrite: Mark "Section 1: Front Matter" as [completed]
```

---

## Section 2: section_definition

```
TodoWrite: Mark "Section 2: section_definition" as [in_progress]
```

Pengertian dan definisi istilah-istilah penting.

```yaml
section_definition:
  title: "Pengertian [Nama Alat]"
  icon: "bi-book"
  intro: "Memahami definisi dan terminologi dasar [nama alat]"
  terms:
  - name: "[Nama Alat]"
    definition: "[Definisi lengkap alat dalam 1-2 kalimat]"
  - name: "[Istilah Teknis 1]"
    definition: "[Penjelasan istilah]"
  - name: "[Istilah Teknis 2]"
    definition: "[Penjelasan istilah]"
```

### Pedoman Penulisan
- **title**: "Pengertian [Nama Alat]"
- **icon**: Gunakan `bi-book` untuk definisi
- **intro**: 1 kalimat pengantar
- **terms**: Minimal 3 istilah penting

### Checklist Section 2
- [ ] `title` - Format: "Pengertian [Nama Alat]"
- [ ] `icon` - `bi-book`
- [ ] `intro` - 1 kalimat pengantar
- [ ] `terms` - Minimal 3 definisi
- [ ] Setiap term punya `name` dan `definition`
- [ ] Definisi jelas dan tidak ambigu

```
TodoWrite: Mark "Section 2: section_definition" as [completed]
```

---

## Section 3: section_functions

```
TodoWrite: Mark "Section 3: section_functions" as [in_progress]
```

Fungsi dan kegunaan alat. **Grid: col-lg-4 (3 kolom), idealnya 6 items.**

```yaml
section_functions:
  title: "Fungsi [Nama Alat]"
  icon: "bi-gear"
  intro: "Berbagai fungsi dan kegunaan [nama alat] dalam industri"
  functions:
  - name: "[Fungsi 1]"
    description: "[Penjelasan fungsi dalam 1-2 kalimat]"
    icon: "bi-[icon-name]"
  - name: "[Fungsi 2]"
    description: "[Penjelasan fungsi]"
    icon: "bi-[icon-name]"
  # ... total 6 items untuk grid seimbang
```

### Pedoman Penulisan
- **Jumlah**: 6 items (grid 2x3 seimbang)
- **icon per item**: Pilih icon relevan dari Bootstrap Icons
- **description**: Singkat, 1-2 kalimat

### Icon Rekomendasi untuk Functions
| Fungsi | Icon |
|--------|------|
| Penyimpanan | `bi-box` |
| Pemindahan | `bi-arrows-move` |
| Pengangkatan | `bi-arrow-up-circle` |
| Keamanan | `bi-shield-check` |
| Monitoring | `bi-speedometer2` |
| Produksi | `bi-gear` |

### Checklist Section 3
- [ ] `title` - Format: "Fungsi [Nama Alat]"
- [ ] `icon` - `bi-gear`
- [ ] `intro` - 1 kalimat pengantar
- [ ] `functions` - 6 items untuk grid seimbang
- [ ] Setiap function punya `name`, `description`, `icon`

```
TodoWrite: Mark "Section 3: section_functions" as [completed]
```

---

## Section 4: section_types

```
TodoWrite: Mark "Section 4: section_types" as [in_progress]
```

Jenis-jenis alat. **Grid: col-lg-6 (2 kolom), idealnya 4 items.**

```yaml
section_types:
  title: "Jenis-jenis [Nama Alat]"
  icon: "bi-diagram-3"
  intro: "Klasifikasi [nama alat] berdasarkan bentuk dan fungsi"
  types:
  - name: "[Jenis 1]"
    description: "[Penjelasan jenis dalam 1-2 kalimat]"
    icon: "bi-[icon-name]"
    image: "/assets/images/types/[jenis-1].jpg"
  - name: "[Jenis 2]"
    description: "[Penjelasan jenis]"
    icon: "bi-[icon-name]"
    image: ""
  # ... total 4 items untuk grid seimbang
```

### Pedoman Penulisan
- **Jumlah**: 4 items (grid 2x2 seimbang)
- **image**: Opsional, jika ada gambar spesifik
- **icon**: Fallback jika tidak ada image

### Checklist Section 4
- [ ] `title` - Format: "Jenis-jenis [Nama Alat]"
- [ ] `icon` - `bi-diagram-3`
- [ ] `intro` - 1 kalimat pengantar
- [ ] `types` - 4 items untuk grid seimbang
- [ ] Setiap type punya `name`, `description`, `icon`
- [ ] `image` opsional - Object {src, alt} jika ada, alt minimal 180 karakter

```
TodoWrite: Mark "Section 4: section_types" as [completed]
```

---

## Section 5: section_components

```
TodoWrite: Mark "Section 5: section_components" as [in_progress]
```

Komponen/bagian utama alat. **Grid: col-lg-4 (3 kolom), idealnya 6 items.**

```yaml
section_components:
  title: "Komponen Utama [Nama Alat]"
  icon: "bi-puzzle"
  intro: "Bagian-bagian penting yang menyusun [nama alat]"
  components:
  - name: "[Komponen 1]"
    description: "[Deskripsi komponen]"
    icon: "bi-[icon-name]"
    function: "[Fungsi spesifik komponen]"
  # ... total 6 items untuk grid seimbang
```

### Pedoman Penulisan
- **Jumlah**: 6 items (grid 2x3 seimbang)
- **function**: Badge yang menjelaskan fungsi (bisa teks panjang, akan word-wrap)
- **icon**: Icon tanpa class `text-primary` (dihandle CSS)

### Checklist Section 5
- [ ] `title` - Format: "Komponen Utama [Nama Alat]"
- [ ] `icon` - `bi-puzzle`
- [ ] `intro` - 1 kalimat pengantar
- [ ] `components` - 6 items untuk grid seimbang
- [ ] Setiap component punya `name`, `description`, `icon`, `function`
- [ ] `function` menjelaskan kegunaan spesifik

```
TodoWrite: Mark "Section 5: section_components" as [completed]
```

---

## Section 6: section_specifications

```
TodoWrite: Mark "Section 6: section_specifications" as [in_progress]
```

Spesifikasi teknis alat.

```yaml
section_specifications:
  title: "Spesifikasi Teknis [Nama Alat]"
  icon: "bi-clipboard-data"
  intro: "Parameter teknis standar [nama alat]"
  specs:
  - name: "[Parameter 1]"
    value: "[Nilai]"
    unit: "[Satuan]"
    description: "[Penjelasan parameter]"
  - name: "[Parameter 2]"
    value: "[Rentang nilai]"
    unit: "[Satuan]"
    description: "[Penjelasan]"
  # ... 4-6 items
```

### Contoh Spesifikasi per Jenis Alat
| Jenis Alat | Parameter Umum |
|------------|----------------|
| Forklift | Kapasitas angkat, Tinggi angkat, Tipe ban, Mesin |
| Crane | SWL, Boom length, Lifting height, Radius |
| Bejana Tekan | MAWP, Volume, Material, Suhu operasi |
| Boiler | Tekanan kerja, Kapasitas uap, Efisiensi |

### Checklist Section 6
- [ ] `title` - Format: "Spesifikasi Teknis [Nama Alat]"
- [ ] `icon` - `bi-clipboard-data`
- [ ] `specs` - 4-6 parameter teknis
- [ ] Setiap spec punya `name`, `value`, `unit`, `description`
- [ ] Unit menggunakan satuan standar (kg, bar, mm, dll)

```
TodoWrite: Mark "Section 6: section_specifications" as [completed]
```

---

## Section 7: section_regulations

```
TodoWrite: Mark "Section 7: section_regulations" as [in_progress]
```

Standar dan regulasi K3 terkait.

```yaml
section_regulations:
  title: "Standar dan Regulasi K3"
  icon: "bi-shield-check"
  intro: "Peraturan yang mengatur keselamatan [nama alat]"
  regulations:
  - name: "Permenaker"
    number: "No. XX"
    year: "20XX"
    description: "Tentang [subjek peraturan]"
    issuer: "Kementerian Ketenagakerjaan"
    icon: "bi-file-earmark-text"
  - name: "[Standar Internasional]"
    number: "[Nomor]"
    year: ""
    description: "[Deskripsi standar]"
    issuer: "[Organisasi]"
    icon: "bi-globe"
  # ... minimal 3 items
```

### Regulasi Umum per Jenis Alat
| Jenis Alat | Permenaker | Standar Internasional |
|------------|------------|----------------------|
| Pesawat Angkat | No. 5/2018 | ASME B30, ISO 4309 |
| Bejana Tekan | No. 37/2016 | ASME BPVC Section VIII |
| Pesawat Uap | No. 37/2016 | ASME BPVC Section I |
| Listrik | PUIL 2011 | IEC 60364 |

### Checklist Section 7
- [ ] `title` - "Standar dan Regulasi K3"
- [ ] `icon` - `bi-shield-check`
- [ ] `regulations` - Minimal 3 regulasi
- [ ] Setiap regulation punya `name`, `number`, `description`, `issuer`, `icon`
- [ ] Minimal 1 Permenaker + 1 standar internasional

```
TodoWrite: Mark "Section 7: section_regulations" as [completed]
```

---

## Section 8: section_risks

```
TodoWrite: Mark "Section 8: section_risks" as [in_progress]
```

Risiko dan bahaya. **Grid: col-lg-6 (2 kolom), idealnya 4 items.**

```yaml
section_risks:
  title: "Risiko dan Bahaya [Nama Alat]"
  icon: "bi-exclamation-triangle"
  intro: "Potensi bahaya yang harus diwaspadai"
  risks:
  - name: "[Risiko 1]"
    description: "[Penjelasan risiko]"
    severity: "tinggi"
    prevention: "[Cara pencegahan]"
    icon: "bi-[icon-name]"
  # ... total 4 items untuk grid seimbang
```

### Severity Level
| Level | Nilai | Warna | Penggunaan |
|-------|-------|-------|------------|
| Tinggi | `tinggi` atau `high` | Merah | Risiko fatal/kematian |
| Sedang | `sedang` atau `medium` | Kuning | Risiko cedera serius |
| Rendah | `rendah` atau `low` | Hijau | Risiko cedera ringan |

### Checklist Section 8
- [ ] `title` - Format: "Risiko dan Bahaya [Nama Alat]"
- [ ] `icon` - `bi-exclamation-triangle`
- [ ] `risks` - 4 items untuk grid seimbang
- [ ] Setiap risk punya `name`, `description`, `severity`, `prevention`, `icon`
- [ ] `severity` menggunakan nilai yang benar
- [ ] `prevention` memberikan solusi konkret

```
TodoWrite: Mark "Section 8: section_risks" as [completed]
```

---

## Section 9: section_applications

```
TodoWrite: Mark "Section 9: section_applications" as [in_progress]
```

Aplikasi industri. **Grid: col-lg-4 (3 kolom), idealnya 6 items.**

```yaml
section_applications:
  title: "Aplikasi Industri"
  icon: "bi-building"
  intro: "Penggunaan [nama alat] di berbagai sektor"
  applications:
  - name: "[Aplikasi 1]"
    description: "[Penjelasan penggunaan]"
    industry: "[Nama Industri]"
    icon: "bi-[icon-name]"
  # ... total 6 items untuk grid seimbang
```

### Industry Badge
Badge `industry` akan ditampilkan di card. Teks panjang akan word-wrap otomatis.

### Icon Rekomendasi per Industri
| Industri | Icon |
|----------|------|
| Konstruksi | `bi-building` |
| Manufaktur | `bi-gear` |
| Logistik | `bi-truck` |
| Pertambangan | `bi-minecart` |
| Petrokimia | `bi-droplet-half` |
| Makanan | `bi-cup-straw` |

### Checklist Section 9
- [ ] `title` - "Aplikasi Industri"
- [ ] `icon` - `bi-building`
- [ ] `applications` - 6 items untuk grid seimbang
- [ ] Setiap application punya `name`, `description`, `industry`, `icon`

```
TodoWrite: Mark "Section 9: section_applications" as [completed]
```

---

## Section 10: section_howto_penggunaan

```
TodoWrite: Mark "Section 10: section_howto_penggunaan" as [in_progress]
```

Cara penggunaan/operasi alat (HowTo Schema).

```yaml
section_howto_penggunaan:
  title: "Cara Penggunaan [Nama Alat]"
  icon: "bi-play-circle"
  description: "Panduan langkah demi langkah mengoperasikan [nama alat]"
  totalTime: "PT30M"
  steps:
  - name: "[Langkah 1]"
    text: "[Instruksi detail langkah 1]"
    image: "/assets/images/howto/step1.jpg"
  - name: "[Langkah 2]"
    text: "[Instruksi detail langkah 2]"
    image: ""
  # ... 3-5 steps
```

### Format totalTime (ISO 8601)
| Durasi | Format |
|--------|--------|
| 30 menit | `PT30M` |
| 1 jam | `PT1H` |
| 1 jam 30 menit | `PT1H30M` |
| 5 menit 30 detik | `PT5M30S` |

### Checklist Section 10
- [ ] `title` - Format: "Cara Penggunaan [Nama Alat]"
- [ ] `icon` - `bi-play-circle`
- [ ] `description` - Penjelasan singkat
- [ ] `totalTime` - Format ISO 8601
- [ ] `steps` - 3-5 langkah
- [ ] Setiap step punya `name` dan `text`
- [ ] `image` opsional - Object {src, alt} jika ada, alt minimal 180 karakter

```
TodoWrite: Mark "Section 10: section_howto_penggunaan" as [completed]
```

---

## Section 11: section_howto_perawatan

```
TodoWrite: Mark "Section 11: section_howto_perawatan" as [in_progress]
```

Cara perawatan/maintenance alat.

```yaml
section_howto_perawatan:
  title: "Cara Perawatan [Nama Alat]"
  icon: "bi-tools"
  description: "Panduan perawatan rutin untuk menjaga performa optimal"
  totalTime: "PT1H"
  steps:
  - name: "[Langkah Perawatan 1]"
    text: "[Instruksi perawatan]"
    image: ""
  # ... 3-5 steps
```

### Checklist Section 11
- [ ] `title` - Format: "Cara Perawatan [Nama Alat]"
- [ ] `icon` - `bi-tools`
- [ ] `description` - Penjelasan singkat
- [ ] `totalTime` - Format ISO 8601
- [ ] `steps` - 3-5 langkah perawatan

```
TodoWrite: Mark "Section 11: section_howto_perawatan" as [completed]
```

---

## Section 12: section_howto_inspeksi

```
TodoWrite: Mark "Section 12: section_howto_inspeksi" as [in_progress]
```

Cara inspeksi K3/pemeriksaan keselamatan.

```yaml
section_howto_inspeksi:
  title: "Cara Inspeksi K3 [Nama Alat]"
  icon: "bi-clipboard-check"
  description: "Panduan pemeriksaan keselamatan sesuai standar K3"
  totalTime: "PT2H"
  steps:
  - name: "[Tahap Inspeksi 1]"
    text: "[Instruksi inspeksi]"
    image: ""
  # ... 3-5 steps
```

### Tahapan Inspeksi Umum
1. Pemeriksaan dokumen
2. Pemeriksaan visual
3. Pengujian operasional
4. Pengujian teknis/NDT
5. Evaluasi dan pelaporan

### Checklist Section 12
- [ ] `title` - Format: "Cara Inspeksi K3 [Nama Alat]"
- [ ] `icon` - `bi-clipboard-check`
- [ ] `description` - Penjelasan singkat
- [ ] `totalTime` - Format ISO 8601
- [ ] `steps` - 3-5 tahapan inspeksi

```
TodoWrite: Mark "Section 12: section_howto_inspeksi" as [completed]
```

---

## Section 13: section_faq

```
TodoWrite: Mark "Section 13: section_faq" as [in_progress]
```

Pertanyaan yang sering diajukan (FAQPage Schema).

```yaml
section_faq:
  title: "Pertanyaan Umum"
  icon: "bi-question-circle"
  intro: "Jawaban untuk pertanyaan yang sering diajukan"
  faqs:
  - question: "Apa itu [nama alat]?"
    answer: "[Jawaban lengkap, bisa mengandung HTML link]"
  - question: "Mengapa [nama alat] perlu riksa uji?"
    answer: "[Penjelasan pentingnya riksa uji]"
  - question: "Berapa lama masa berlaku sertifikat?"
    answer: "[Jawaban dengan referensi peraturan]"
  - question: "Bagaimana cara merawat [nama alat]?"
    answer: "[Tips perawatan singkat]"
  - question: "Di mana bisa mendapatkan jasa riksa uji?"
    answer: "[Promosi PT. Cipta Mas Jaya + link]"
  # ... minimal 5 FAQ
```

### Tips FAQ
- Gunakan pertanyaan yang sering dicari di Google
- Jawaban bisa mengandung HTML link: `<a href='/path/'>teks</a>`
- FAQ terakhir bisa promosi layanan CMJ

### Checklist Section 13
- [ ] `title` - "Pertanyaan Umum"
- [ ] `icon` - `bi-question-circle`
- [ ] `faqs` - Minimal 5 FAQ
- [ ] Setiap faq punya `question` dan `answer`
- [ ] Jawaban informatif dan lengkap
- [ ] Ada FAQ tentang riksa uji

```
TodoWrite: Mark "Section 13: section_faq" as [completed]
```

---

## Section 14: section_gallery

```
TodoWrite: Mark "Section 14: section_gallery" as [in_progress]
```

Galeri gambar alat.

```yaml
section_gallery:
  title: "Galeri [Nama Alat]"
  icon: "bi-images"
  intro: "Dokumentasi visual [nama alat]"
  images:
  - src: "/assets/images/gallery/[nama-alat]-1.jpg"
    alt: "[Deskripsi gambar 1]"
    caption: "[Caption gambar 1]"
  - src: "/assets/images/gallery/[nama-alat]-2.jpg"
    alt: "[Deskripsi gambar 2]"
    caption: "[Caption gambar 2]"
  # ... 4 images untuk grid seimbang
```

### Checklist Section 14
- [ ] `title` - Format: "Galeri [Nama Alat]"
- [ ] `icon` - `bi-images`
- [ ] `images` - 4 gambar untuk grid seimbang
- [ ] Setiap image punya `src`, `alt`, `caption`
- [ ] `alt` deskriptif untuk SEO dan accessibility

```
TodoWrite: Mark "Section 14: section_gallery" as [completed]
```

---

## Section 15: section_video

```
TodoWrite: Mark "Section 15: section_video" as [in_progress]
```

Video tentang alat (VideoObject Schema).

```yaml
section_video:
  title: "Video [Nama Alat]"
  icon: "bi-play-circle"
  name: "Video Pengenalan [Nama Alat]"
  description: "Video edukatif tentang [nama alat] dan cara penggunaannya"
  thumbnail: "/assets/images/video/thumbnail.jpg"
  src: "https://www.youtube.com/watch?v=XXXXX"
  duration: "PT5M30S"
  upload_date: "2024-12-01"
```

### Checklist Section 15
- [ ] `title` - Format: "Video [Nama Alat]"
- [ ] `name` - Judul video
- [ ] `description` - Deskripsi video
- [ ] `thumbnail` - Path gambar thumbnail
- [ ] `src` - URL YouTube
- [ ] `duration` - Format ISO 8601
- [ ] `upload_date` - Format YYYY-MM-DD

```
TodoWrite: Mark "Section 15: section_video" as [completed]
```

---

## Section 16: section_related_service + section_cta

```
TodoWrite: Mark "Section 16: section_related_service + section_cta" as [in_progress]
```

Link ke layanan terkait dan CTA.

```yaml
# Related Service
section_related_service:
  title: "Layanan Terkait"
  icon: "bi-link-45deg"
  intro: "Layanan riksa uji untuk [nama alat]"
  path: "/layanan/[kategori]/[subkategori]/riksa-uji-[nama-alat]/"

# CTA PJK3
section_cta:
  headline: "Butuh Riksa Uji [Nama Alat]?"
  icon: "bi-telephone"
  description: "PT. Cipta Mas Jaya siap membantu inspeksi dan sertifikasi [nama alat] Anda"
  benefits:
  - "Inspeksi oleh tim ahli bersertifikat"
  - "Laporan lengkap sesuai standar K3"
  - "Proses cepat dan efisien"
  button_text: "Hubungi Kami"
  button_url: "/contact/"
  phone: "021-12345678"
  whatsapp: "6281234567890"
```

### Checklist Section 16
- [ ] `section_related_service.path` - Path ke halaman layanan
- [ ] `section_cta.headline` - Ajakan bertindak
- [ ] `section_cta.description` - Penjelasan singkat
- [ ] `section_cta.benefits` - 3 keunggulan
- [ ] `section_cta.phone` dan `whatsapp` - Nomor kontak

```
TodoWrite: Mark "Section 16: section_related_service + section_cta" as [completed]
```

---

## TIPS PENGISIAN

### Icon Bootstrap
Gunakan class icon dari Bootstrap Icons. Referensi: https://icons.getbootstrap.com/

| Kategori | Icon Umum |
|----------|-----------|
| Definisi | `bi-book` |
| Fungsi | `bi-gear` |
| Jenis | `bi-diagram-3` |
| Komponen | `bi-puzzle` |
| Spesifikasi | `bi-clipboard-data` |
| Regulasi | `bi-shield-check` |
| Risiko | `bi-exclamation-triangle` |
| Aplikasi | `bi-building` |
| HowTo | `bi-play-circle`, `bi-tools`, `bi-clipboard-check` |
| FAQ | `bi-question-circle` |
| Gallery | `bi-images` |
| Video | `bi-play-circle` |

### Path Gambar
```
/assets/images/posts/[nama-file].jpg      # Featured image
/assets/images/gallery/[nama-file].jpg    # Gallery images
/assets/images/howto/[nama-file].jpg      # HowTo step images
/assets/images/types/[nama-file].jpg      # Type images
/assets/images/video/[nama-file].jpg      # Video thumbnails
```

### Format Link dalam Answer FAQ
```yaml
answer: "Lihat <a href='/layanan/'>halaman layanan</a> untuk info lebih lanjut."
```

---

## VERIFIKASI AKHIR

Sebelum publish, pastikan:

- [ ] Semua 16 section sudah terisi
- [ ] Jumlah item sesuai grid (lihat tabel DAFTAR SECTION)
- [ ] Semua path gambar valid
- [ ] Tidak ada placeholder kosong (`""`)
- [ ] `theme_color` sesuai jenis alat
- [ ] `rating_id` sudah ada file rating-nya
- [ ] Build Jekyll berhasil tanpa error
- [ ] Preview di browser tampil dengan benar
