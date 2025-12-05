# ============================================================================
# PETUNJUK PENGISIAN TEMPLATE NODE INSPECTION REPORT
# ============================================================================
# File: TEMPLATE-node-inspection-report.md
# Lokasi: /TEMPLATES/TEMPLATE-node-inspection-report.md
# ============================================================================

## CARA KERJA (PER-SECTION + TODOWRITE)

Konten template ini sangat panjang. JANGAN mengisi sekali jalan.
Gunakan sistem per-section dengan TodoWrite untuk menjaga kualitas konten.

### WAJIB: Gunakan TodoWrite untuk Setiap Section

```
SEBELUM MULAI, buat todo list dengan 13 section:
┌─────────────────────────────────────────────────────────────────────────────┐
│ TodoWrite:                                                                  │
│  1. [pending] Section 1: Front Matter + paragraphs + images + video         │
│  2. [pending] Section 2: section_glossary                                   │
│  3. [pending] Section 3: data_umum                                          │
│  4. [pending] Section 4: object                                             │
│  5. [pending] Section 5: section_intro                                      │
│  6. [pending] Section 6: section_visual                                     │
│  7. [pending] Section 7: section_operational                                │
│  8. [pending] Section 8: section_technical                                  │
│  9. [pending] Section 9: section_ndt                                        │
│ 10. [pending] Section 10: section_hydrotest                                 │
│ 11. [pending] Section 11: section_safety_valve                              │
│ 12. [pending] Section 12: section_analysis                                  │
│ 13. [pending] Section 13: section_conclusion                                │
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

Template ini memiliki **13 section** utama:

| No | Section               | Deskripsi                                              |
|----|-----------------------|--------------------------------------------------------|
| 1  | Front Matter          | Metadata, paragraphs, images, video                    |
| 2  | `section_glossary`    | Istilah dan definisi (7 terms)                         |
| 3  | `data_umum`           | Data perusahaan dan instalatir                         |
| 4  | `object`              | Data alat yang diuji (6 specifications)                |
| 5  | `section_intro`       | Pendahuluan (paragraphs, background, objectives)       |
| 6  | `section_visual`      | Pemeriksaan visual (6 items)                           |
| 7  | `section_operational` | Pengujian operasional (procedure, 6 items)             |
| 8  | `section_technical`   | Pengujian teknis (procedure, 6 items)                  |
| 9  | `section_ndt`         | Pengujian NDT/thickness (7 items)                      |
| 10 | `section_hydrotest`   | Pengujian hidrostatik (8 steps, 5 items, 6 faq)        |
| 11 | `section_safety_valve`| Pengujian safety valve (7 steps, items, 6 faq)         |
| 12 | `section_analysis`    | Analisis data dan pembahasan (6 analyses, key_findings)|
| 13 | `section_conclusion`  | Kesimpulan dan rekomendasi (verdict, 5+5 items)        |

---

## Section 1: Front Matter

```
TodoWrite: Mark "Section 1: Front Matter" as [in_progress]
```

Metadata dasar artikel.

```yaml
layout: node/node--inspection-report
title: "Riksa Uji [Nama Alat] [Merek] Nomor Seri [Serial]"
date: 2024-10-16
description: "Laporan hasil riksa uji [nama alat] [merek] nomor seri [serial] meliputi pemeriksaan visual, pengujian operasional, teknis, dan NDT."

# Report Metadata
header_bg: "#1a5276"
report_number: "CMJ/RU/2024/1016-001"
inspection_date: 2024-10-16
inspector: "Tim Inspeksi PT. Cipta Mas Jaya"

# SEO & Taxonomy
categories:
  - Layanan
  - [Kategori Induk]
tags:
  - Inspeksi
  - Inspeksi K3
  - Jasa Riksa Uji
  - PJK3
  - Riksa Uji [Nama Alat]
  - [Nama Alat]

# Schema flags
skip_page_schema: false
show_breadcrumb_schema: true

# SEO Keywords (spesifik per halaman)
keywords: "riksa uji [nama alat], inspeksi [nama alat], laporan riksa uji, [merek], hydrotest, thickness test, PJK3, inspeksi K3"

# Image - Format object {src, alt} untuk SEO - alt minimal 180 karakter
# Digunakan untuk og:image dan schema primaryImage
image:
  src: "/path/to/featured-image.jpg"
  alt: "[Deskripsi SEO minimal 180 karakter - kalimat lengkap yang menjelaskan gambar, relevan dengan konten, mengandung keyword]"

# Images - Gallery images, format object {src, alt} - alt minimal 180 karakter
images:
  - src: "/path/to/image-1.jpg"
    alt: "[Deskripsi SEO minimal 180 karakter]"
  - src: "/path/to/image-2.jpg"
    alt: "[Deskripsi SEO minimal 180 karakter]"
  - src: "/path/to/image-3.jpg"
    alt: "[Deskripsi SEO minimal 180 karakter]"
  - src: "/path/to/image-4.jpg"
    alt: "[Deskripsi SEO minimal 180 karakter]"

# Video Section
video:
  name: "Video Proses Riksa Uji [Nama Alat]"
  description: "Dokumentasi proses inspeksi"
  src: "https://www.youtube.com/watch?v=XXXXX"
  thumbnail: "/path/to/thumbnail.jpg"
  duration: "PT5M30S"

# Paragraphs - Paragraf pembuka setelah H1
paragraphs:
  - "[Paragraf 1: Definisi riksa uji + link ke halaman layanan]"
  - "[Paragraf 2: Penjelasan proses riksa uji secara umum]"
  - "[Paragraf 3: Penjelasan tentang NDT/thickness test]"
  - "[Paragraf 4: Link ke kategori induk + penjelasan spesifik alat]"
```

### Referensi Nilai

#### header_bg per Jenis Alat:
| Jenis Alat | Warna | Hex Code |
|------------|-------|----------|
| Boiler / Pesawat Uap | Biru tua | `#1a5276` |
| Forklift / Pesawat Angkut | Oranye | `#e67e22` |
| Crane / Pesawat Angkat | Hijau | `#28a745` |
| Bejana Tekan | Merah | `#dc3545` |
| Instalasi Listrik | Cyan | `#17a2b8` |
| Tangki Timbun | Ungu | `#8e44ad` |

#### Format Penting:
- `report_number`: Format CMJ/RU/YYYY/MMDD-XXX
- `duration`: Format ISO 8601 (PT5M30S = 5 menit 30 detik)
- `date` & `inspection_date`: Format YYYY-MM-DD

### Checklist Section 1
- [ ] `title` - Format: "Riksa Uji [Nama Alat] [Merek] Nomor Seri [Serial]"
- [ ] `date` & `inspection_date` - Format YYYY-MM-DD
- [ ] `description` - 150-160 karakter
- [ ] `header_bg` - Custom hex color valid
- [ ] `report_number` - Format CMJ/RU/YYYY/MMDD-XXX
- [ ] `inspector` - Nama tim inspektur
- [ ] `categories` - 2 kategori (Layanan + Kategori Induk)
- [ ] `tags` - 6 tags relevan
- [ ] `image` - Object {src, alt} untuk og:image dan schema - alt minimal 180 karakter
- [ ] `images` - 4 gambar gallery, format object {src, alt} - alt minimal 180 karakter
- [ ] `video` - Lengkap jika ada, kosong jika tidak
- [ ] `paragraphs` - 4 paragraf pembuka

```
TodoWrite: Mark "Section 1: Front Matter" as [completed]
```

---

## Section 2: section_glossary

```
TodoWrite: Mark "Section 2: section_glossary" as [in_progress]
```

Istilah dan definisi yang digunakan dalam laporan.

```yaml
section_glossary:
  title: "Istilah dan Definisi"
  intro: "Sebelum membahas lebih lanjut mengenai Riksa Uji [Nama Alat] [Merek] nomor seri [Serial], penting untuk memahami beberapa istilah yang sering digunakan dalam konteks keselamatan kerja dan proses inspeksi ini."
  terms:
    - term: "PJK3"
      definition: "<strong><a href=\"/about/pjk3/\">PJK3 adalah</a></strong> singkatan dari..."
    - term: "Riksa Uji"
      definition: "<strong><a href=\"/about/riksa-uji/\">Riksa Uji</a></strong> adalah..."
    - term: "PJK3 Riksa Uji"
      definition: "<strong><a href=\"/about/pjk3-riksa-uji/\">PJK3 Riksa Uji</a></strong> adalah..."
    - term: "PT. Cipta Mas Jaya sebagai PJK3 Riksa Uji"
      definition: "<strong>PT. Cipta Mas Jaya</strong> adalah perusahaan..."
    - term: "Inspeksi"
      definition: "<strong>Inspeksi adalah</strong> proses pemeriksaan..."
    - term: "Inspeksi K3"
      definition: "<strong>Inspeksi K3 adalah</strong> pemeriksaan..."
    - term: "Jasa Inspeksi K3"
      definition: "<strong><a href=\"/\">Jasa Inspeksi K3</a></strong> layanan..."
```

### Catatan
- 7 istilah standar yang harus ada
- Sertakan internal link ke halaman terkait
- Sebutkan nama alat dan nomor seri di setiap definisi

### Checklist Section 2
- [ ] `title` - Judul section
- [ ] `intro` - Pengantar dengan nama alat dan serial
- [ ] `terms` - 7 istilah dengan definisi dan link

```
TodoWrite: Mark "Section 2: section_glossary" as [completed]
```

---

## Section 3: data_umum

```
TodoWrite: Mark "Section 3: data_umum" as [in_progress]
```

Data perusahaan pemilik alat dan instalatir.

```yaml
data_umum:
  perusahaan:
    nama: "PT. [Nama Perusahaan]"
    alamat: "[Alamat lengkap]"
    telepon: "(021) XXXX-XXXX"
    email: "info@perusahaan.co.id"
  instalatir:
    nama: "CV. [Nama Instalatir]"
    alamat: "[Alamat lengkap]"
    telepon: "(021) XXXX-XXXX"
    sertifikat: "SIUJK No. XXXX/SIUJK/YYYY"
```

### Catatan
- `perusahaan`: Data pemilik alat
- `instalatir`: Data perusahaan yang memasang/merawat alat
- Gunakan data dummy jika tidak tersedia

### Checklist Section 3
- [ ] `perusahaan` - nama, alamat, telepon, email
- [ ] `instalatir` - nama, alamat, telepon, sertifikat

```
TodoWrite: Mark "Section 3: data_umum" as [completed]
```

---

## Section 4: object

```
TodoWrite: Mark "Section 4: object" as [in_progress]
```

Data alat yang diuji.

```yaml
object:
  name: "[Nama Alat]"
  brand: "[Merek/Pabrikan]"
  model: "[Model/Tipe]"
  serial: "[Nomor Seri]"
  type: "[Jenis Pesawat]"
  year: [Tahun Pembuatan]
  capacity: "[Kapasitas]"
  pressure: "[Tekanan Kerja]"
  location: "[Lokasi Penempatan]"
  owner: "[Nama Pemilik]"
  specifications:
    - label: "[Parameter 1]"
      value: "[Nilai]"
    - label: "[Parameter 2]"
      value: "[Nilai]"
    - label: "[Parameter 3]"
      value: "[Nilai]"
    - label: "[Parameter 4]"
      value: "[Nilai]"
    - label: "[Parameter 5]"
      value: "[Nilai]"
    - label: "[Parameter 6]"
      value: "[Nilai]"
```

### Referensi type (Jenis Pesawat K3)
- "Pesawat Uap" (untuk boiler)
- "Bejana Tekan" (untuk pressure vessel)
- "Pesawat Angkat" (untuk crane, hoist)
- "Pesawat Angkut" (untuk forklift, conveyor)

### Contoh Specifications per Jenis Alat

**Boiler:**
```yaml
specifications:
  - label: "Kapasitas Uap"
    value: "20 Ton/jam"
  - label: "Tekanan Kerja"
    value: "10.5 Bar"
  - label: "Suhu Kerja"
    value: "375°C"
  - label: "Bahan Bakar"
    value: "Gas Alam"
  - label: "Efisiensi"
    value: "88%"
  - label: "Tahun Pembuatan"
    value: "2015"
```

**Forklift:**
```yaml
specifications:
  - label: "Kapasitas Angkat"
    value: "3 Ton"
  - label: "Tinggi Angkat"
    value: "4.5 m"
  - label: "Jenis Penggerak"
    value: "Diesel"
  - label: "Daya Mesin"
    value: "55 HP"
  - label: "Berat Operasional"
    value: "4,500 kg"
  - label: "Tahun Pembuatan"
    value: "2018"
```

**Overhead Crane:**
```yaml
specifications:
  - label: "Safe Working Load (SWL)"
    value: "10 Ton"
  - label: "Span"
    value: "15 m"
  - label: "Lifting Height"
    value: "8 m"
  - label: "Hoist Speed"
    value: "6 m/min"
  - label: "Travel Speed"
    value: "20 m/min"
  - label: "Power Supply"
    value: "380V/50Hz"
```

### Checklist Section 4
- [ ] `name`, `brand`, `model`, `serial` - Data identifikasi
- [ ] `type` - Jenis pesawat K3
- [ ] `year` - Tahun pembuatan (integer)
- [ ] `capacity`, `pressure` - Dengan satuan
- [ ] `location`, `owner` - Lokasi dan pemilik
- [ ] `specifications` - 6 parameter dengan label dan value

```
TodoWrite: Mark "Section 4: object" as [completed]
```

---

## Section 5: section_intro

```
TodoWrite: Mark "Section 5: section_intro" as [in_progress]
```

Pendahuluan laporan.

```yaml
section_intro:
  title: "Pendahuluan"
  paragraphs:
    - "[Paragraf 1: Pentingnya alat dalam industri + tujuan riksa uji]"
    - "[Paragraf 2: Penjelasan spesifik alat yang diuji + aspek teknis]"
  background: "[Latar belakang dilakukannya riksa uji - kewajiban pemeliharaan berkala, kepatuhan regulasi]"
  objectives:
    - "[Tujuan 1: Memastikan alat beroperasi dengan aman dan efisien]"
    - "[Tujuan 2: Mendeteksi potensi kerusakan atau keausan]"
    - "[Tujuan 3: Memverifikasi kepatuhan terhadap standar keselamatan]"
    - "[Tujuan 4: Memberikan rekomendasi pemeliharaan dan perbaikan]"
```

### Catatan
- `paragraphs`: 2 paragraf pengantar
- `background`: Latar belakang pelaksanaan riksa uji
- `objectives`: 4 tujuan utama inspeksi

### Checklist Section 5
- [ ] `title` - Judul pendahuluan
- [ ] `paragraphs` - 2 paragraf pengantar
- [ ] `background` - Latar belakang
- [ ] `objectives` - 4 tujuan inspeksi

```
TodoWrite: Mark "Section 5: section_intro" as [completed]
```

---

## Section 6: section_visual

```
TodoWrite: Mark "Section 6: section_visual" as [in_progress]
```

Pemeriksaan visual komponen alat.

```yaml
section_visual:
  title: "Pemeriksaan Visual [Nama Alat] [Merek] Seri [Serial]"
  intro: "Pemeriksaan visual dilakukan pada berbagai komponen [nama alat] untuk mendeteksi kerusakan atau keausan yang terlihat secara langsung."
  items:
    - component: "[Nama Komponen]"
      result: "[Hasil pemeriksaan]"
      condition: "[baik/perlu_perhatian/tidak_layak]"
      notes: "[Catatan tambahan]"
    - component: "[Nama Komponen 2]"
      result: "[Hasil pemeriksaan]"
      condition: "[baik/perlu_perhatian/tidak_layak]"
      notes: "[Catatan tambahan]"
    # ... dst (6 items)
  summary: "[Ringkasan hasil pemeriksaan visual]"
```

### Nilai condition
| Value | Deskripsi |
|-------|-----------|
| `baik` | Kondisi normal, tidak ada masalah |
| `perlu_perhatian` | Ada masalah ringan, perlu perawatan preventif |
| `tidak_layak` | Kondisi kritis, harus diperbaiki sebelum operasi |

### Contoh Komponen per Jenis Alat
| Boiler | Forklift | Overhead Crane |
|--------|----------|----------------|
| Dinding luar boiler | Body/rangka forklift | Struktur utama (girder) |
| Pipa uap utama | Fork/garpu angkat | Hoist dan trolley |
| Ruang pembakaran | Mast/tiang angkat | Wire rope/kawat baja |
| Penukar panas | Sistem hidrolik | Hook/kait pengangkat |
| Katup pengaman | Roda dan ban | End carriage |
| Pelapis insulasi | Cabin operator | Panel kontrol |

### Checklist Section 6
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar pemeriksaan
- [ ] `items` - 6 komponen dengan component, result, condition, notes
- [ ] `summary` - Ringkasan hasil

```
TodoWrite: Mark "Section 6: section_visual" as [completed]
```

---

## Section 7: section_operational

```
TodoWrite: Mark "Section 7: section_operational" as [in_progress]
```

Pengujian operasional alat.

```yaml
section_operational:
  title: "Pengujian Operasional [Nama Alat] [Merek] Seri [Serial]"
  intro: "Pengujian operasional dilakukan untuk memastikan bahwa [nama alat] berfungsi sesuai dengan spesifikasi teknis dan mampu beroperasi dengan aman."
  procedure:
    - "[Langkah 1 prosedur pengujian]"
    - "[Langkah 2 prosedur pengujian]"
    - "[Langkah 3 prosedur pengujian]"
    - "[Langkah 4 prosedur pengujian]"
  items:
    - parameter: "[Nama Parameter]"
      result: "[Hasil Pengukuran]"
      standard: "[Standar/Batas yang Diterima]"
      status: "[lulus/tidak_lulus]"
      notes: "[Catatan]"
    # ... dst (6 items)
  summary: "[Ringkasan hasil pengujian operasional]"
```

### Nilai status
| Value | Deskripsi |
|-------|-----------|
| `lulus` | Memenuhi standar |
| `tidak_lulus` | Tidak memenuhi standar |

### Contoh Parameter per Jenis Alat
| Boiler | Forklift | Overhead Crane |
|--------|----------|----------------|
| Tekanan Operasional | Fungsi Pengangkatan | Fungsi Hoisting |
| Suhu Operasional | Kecepatan Travel | Fungsi Travel |
| Aliran Uap | Sistem Pengereman | Sistem Pengereman |
| Efisiensi Pembakaran | Sistem Kemudi | Load Indicator |
| Fungsi Kontrol Otomatis | Fungsi Hidrolik | Limit Switch |
| Kinerja Katup Pengaman | Indikator dan Alarm | Emergency Stop |

### Checklist Section 7
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar pengujian
- [ ] `procedure` - 4 langkah prosedur
- [ ] `items` - 6 parameter dengan parameter, result, standard, status, notes
- [ ] `summary` - Ringkasan hasil

```
TodoWrite: Mark "Section 7: section_operational" as [completed]
```

---

## Section 8: section_technical

```
TodoWrite: Mark "Section 8: section_technical" as [in_progress]
```

Pengujian teknis alat.

```yaml
section_technical:
  title: "Pengujian Teknis [Nama Alat] [Merek] Seri [Serial]"
  intro: "Pengujian teknis dilakukan untuk mengevaluasi kondisi struktural dan mekanis dari [nama alat]."
  procedure:
    - "[Langkah 1 prosedur pengujian teknis]"
    - "[Langkah 2 prosedur pengujian teknis]"
    - "[Langkah 3 prosedur pengujian teknis]"
    - "[Langkah 4 prosedur pengujian teknis]"
  items:
    - component: "[Nama Komponen/Parameter]"
      result: "[Hasil Pengukuran]"
      standard: "[Standar]"
      status: "[lulus/tidak_lulus]"
      notes: "[Catatan]"
    # ... dst (6 items)
  summary: "[Ringkasan hasil pengujian teknis]"
```

### Checklist Section 8
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar pengujian
- [ ] `procedure` - 4 langkah prosedur
- [ ] `items` - 6 komponen dengan component, result, standard, status, notes
- [ ] `summary` - Ringkasan hasil

```
TodoWrite: Mark "Section 8: section_technical" as [completed]
```

---

## Section 9: section_ndt

```
TodoWrite: Mark "Section 9: section_ndt" as [in_progress]
```

Pengujian Non-Destruktif (Thickness Test).

```yaml
section_ndt:
  title: "Pengujian Non-Destruktif (Thickness Test) [Nama Alat] [Merek] Seri [Serial]"
  intro: "Pengujian non-destruktif menggunakan teknologi ultrasonik untuk memeriksa ketebalan dinding dan komponen tanpa merusak struktur [nama alat]."
  method: "Pengukuran ketebalan menggunakan alat Ultrasonic Thickness Gauge pada titik-titik kritis yang sering terkena [panas/tekanan/beban] tinggi."
  items:
    - component: "[Nama Komponen]"
      location: "[Lokasi Pengukuran]"
      result: "[Hasil dalam mm]"
      standard: "[Standar minimum dalam mm]"
      status: "[lulus/tidak_lulus]"
    # ... dst (7 items)
  summary: "[Ringkasan hasil pengujian NDT]"
```

### Contoh Titik Pengukuran
| Boiler | Pressure Vessel |
|--------|-----------------|
| Dinding Ruang Pembakaran (bawah) | Shell (atas) |
| Dinding Ruang Pembakaran (tengah) | Shell (tengah) |
| Dinding Ruang Pembakaran (atas) | Shell (bawah) |
| Pipa Uap Utama (inlet) | Head/Dish End (atas) |
| Pipa Uap Utama (outlet) | Head/Dish End (bawah) |
| Penukar Panas | Nozzle |
| Tangki Air | Manhole |

### Checklist Section 9
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar NDT
- [ ] `method` - Metode pengujian
- [ ] `items` - 7 titik dengan component, location, result, standard, status
- [ ] `summary` - Ringkasan hasil

```
TodoWrite: Mark "Section 9: section_ndt" as [completed]
```

---

## Section 10: section_hydrotest

```
TodoWrite: Mark "Section 10: section_hydrotest" as [in_progress]
```

Pengujian Hidrostatik.

```yaml
section_hydrotest:
  title: "Pengujian Hidrostatik (Hydrotest) [Nama Alat] [Merek] Seri [Serial]"
  intro: "Pengujian hidrostatik dilakukan untuk memverifikasi integritas struktural dan kekuatan bejana tekan dengan memberikan tekanan uji yang lebih tinggi dari tekanan kerja normal."
  working_pressure: "[Tekanan Kerja] Bar"
  test_pressure: "[Tekanan Uji] Bar (1.5x)"
  duration: "[Durasi] Menit"
  method: "[Deskripsi metode pengujian hidrostatik]"
  steps:
    - name: "Persiapan Alat dan Kondisi Awal"
      text: "[Deskripsi langkah]"
    - name: "Pengisian Air"
      text: "[Deskripsi langkah]"
    - name: "Pemasangan Alat Ukur"
      text: "[Deskripsi langkah]"
    - name: "Aplikasi Tekanan Bertahap"
      text: "[Deskripsi langkah]"
    - name: "Hold Test"
      text: "[Deskripsi langkah]"
    - name: "Inspeksi Visual"
      text: "[Deskripsi langkah]"
    - name: "Pelepasan Tekanan"
      text: "[Deskripsi langkah]"
    - name: "Dokumentasi Hasil"
      text: "[Deskripsi langkah]"
  items:
    - component: "[Nama Komponen]"
      pressure: "[Tekanan Uji]"
      duration: "[Durasi]"
      result: "[Hasil]"
      status: "[lulus/tidak_lulus]"
    # ... dst (5 items)
  summary: "[Ringkasan hasil pengujian hidrostatik]"
  faq:
    - question: "Apa itu pengujian hidrostatik (hydrotest) pada [nama alat]?"
      answer: "[Jawaban]"
    - question: "Mengapa hydrotest penting untuk [nama alat]?"
      answer: "[Jawaban]"
    - question: "Berapa tekanan uji yang digunakan dalam hydrotest [nama alat] ini?"
      answer: "[Jawaban]"
    - question: "Berapa lama durasi pengujian hidrostatik dilakukan?"
      answer: "[Jawaban]"
    - question: "Apa saja komponen yang diperiksa saat hydrotest?"
      answer: "[Jawaban]"
    - question: "Apakah hydrotest wajib dilakukan pada setiap riksa uji [nama alat]?"
      answer: "[Jawaban]"
```

### Catatan
- `test_pressure`: Biasanya 1.5x tekanan kerja
- `steps`: 8 langkah standar hydrotest
- `items`: 5 komponen yang diuji
- `faq`: 6 FAQ tentang hydrotest

### Checklist Section 10
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar hydrotest
- [ ] `working_pressure`, `test_pressure`, `duration` - Parameter uji
- [ ] `method` - Metode pengujian
- [ ] `steps` - 8 langkah dengan name dan text
- [ ] `items` - 5 komponen dengan component, pressure, duration, result, status
- [ ] `summary` - Ringkasan hasil
- [ ] `faq` - 6 FAQ dengan question dan answer

```
TodoWrite: Mark "Section 10: section_hydrotest" as [completed]
```

---

## Section 11: section_safety_valve

```
TodoWrite: Mark "Section 11: section_safety_valve" as [in_progress]
```

Pengujian Safety Valve.

```yaml
section_safety_valve:
  title: "Pengujian Safety Valve [Nama Alat] [Merek] Seri [Serial]"
  intro: "Pengujian safety valve dilakukan untuk memastikan katup pengaman berfungsi dengan baik dan dapat melepaskan tekanan berlebih pada set pressure yang telah ditentukan."
  total_units: [Jumlah unit safety valve]
  steps:
    - name: "Persiapan dan Pemeriksaan Visual"
      text: "[Deskripsi langkah]"
    - name: "Verifikasi Data Nameplate"
      text: "[Deskripsi langkah]"
    - name: "Pemasangan Alat Ukur"
      text: "[Deskripsi langkah]"
    - name: "Aplikasi Tekanan Bertahap"
      text: "[Deskripsi langkah]"
    - name: "Pengujian Pop Test"
      text: "[Deskripsi langkah]"
    - name: "Verifikasi Reseat"
      text: "[Deskripsi langkah]"
    - name: "Dokumentasi Hasil"
      text: "[Deskripsi langkah]"
  items:
    - unit: "1"
      brand: "[Merek]"
      size: "[Ukuran]"
      set_pressure: "[Set Pressure]"
      test_pressure: "[Tekanan Uji Aktual]"
      result: "[Hasil]"
      status: "[lulus/tidak_lulus]"
    - unit: "2"
      brand: "[Merek]"
      size: "[Ukuran]"
      set_pressure: "[Set Pressure]"
      test_pressure: "[Tekanan Uji Aktual]"
      result: "[Hasil]"
      status: "[lulus/tidak_lulus]"
  summary: "[Ringkasan hasil pengujian safety valve]"
  faq:
    - question: "Apa itu safety valve pada [nama alat]?"
      answer: "[Jawaban]"
    - question: "Mengapa pengujian safety valve penting?"
      answer: "[Jawaban]"
    - question: "Berapa jumlah safety valve yang diuji pada [nama alat] ini?"
      answer: "[Jawaban]"
    - question: "Apa yang dimaksud dengan set pressure pada safety valve?"
      answer: "[Jawaban]"
    - question: "Bagaimana cara mengetahui safety valve berfungsi dengan baik?"
      answer: "[Jawaban]"
    - question: "Kapan safety valve perlu diganti atau dikalibrasi ulang?"
      answer: "[Jawaban]"
```

### Catatan
- `total_units`: Jumlah safety valve yang diuji (integer)
- `steps`: 7 langkah standar pengujian
- `items`: Sesuai jumlah unit (minimal 2)
- `faq`: 6 FAQ tentang safety valve

### Checklist Section 11
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar pengujian
- [ ] `total_units` - Jumlah unit (integer)
- [ ] `steps` - 7 langkah dengan name dan text
- [ ] `items` - Minimal 2 unit dengan unit, brand, size, set_pressure, test_pressure, result, status
- [ ] `summary` - Ringkasan hasil
- [ ] `faq` - 6 FAQ dengan question dan answer

```
TodoWrite: Mark "Section 11: section_safety_valve" as [completed]
```

---

## Section 12: section_analysis

```
TodoWrite: Mark "Section 12: section_analysis" as [in_progress]
```

Analisis Data dan Pembahasan.

```yaml
section_analysis:
  title: "Analisis Data dan Pembahasan Laporan Riksa Uji [Nama Alat] [Merek] Seri [Serial]"
  intro: "[Paragraf pengantar analisis - tujuan analisis, data yang dianalisis]"
  analyses:
    - title: "Analisis Hasil Pemeriksaan Visual"
      intro: "[Pengantar analisis visual]"
      findings: "[Temuan dari pemeriksaan visual]"
      interpretation: "[Interpretasi/kesimpulan dari temuan]"
    - title: "Analisis Hasil Pengujian Operasional"
      intro: "[Pengantar analisis operasional]"
      findings: "[Temuan dari pengujian operasional]"
      interpretation: "[Interpretasi/kesimpulan dari temuan]"
    - title: "Analisis Hasil Pengujian Teknis"
      intro: "[Pengantar analisis teknis]"
      findings: "[Temuan dari pengujian teknis]"
      interpretation: "[Interpretasi/kesimpulan dari temuan]"
    - title: "Analisis Pengujian Non-Destruktif (Thickness)"
      intro: "[Pengantar analisis NDT]"
      findings: "[Temuan dari pengujian NDT]"
      interpretation: "[Interpretasi/kesimpulan dari temuan]"
    - title: "Analisis Pengujian Hidrostatik"
      intro: "[Pengantar analisis hydrotest]"
      findings: "[Temuan dari pengujian hidrostatik]"
      interpretation: "[Interpretasi/kesimpulan dari temuan]"
    - title: "Analisis Pengujian Safety Valve"
      intro: "[Pengantar analisis safety valve]"
      findings: "[Temuan dari pengujian safety valve]"
      interpretation: "[Interpretasi/kesimpulan dari temuan]"
  key_findings:
    - "[Temuan utama 1]"
    - "[Temuan utama 2]"
    - "[Temuan utama 3]"
    - "[Temuan utama 4]"
    - "[Temuan utama 5]"
  discussion_title: "Pembahasan Temuan Penelitian"
  discussion_intro: "[Paragraf pengantar pembahasan]"
  discussion_findings: "[Paragraf pembahasan temuan]"
  discussion_result: "[Paragraf hasil pembahasan]"
```

### Catatan
- `analyses`: 6 analisis sesuai jumlah pengujian
- `key_findings`: 5 temuan utama
- `discussion`: 3 paragraf pembahasan

### Checklist Section 12
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar analisis
- [ ] `analyses` - 6 analisis dengan title, intro, findings, interpretation
- [ ] `key_findings` - 5 temuan utama
- [ ] `discussion_title`, `discussion_intro`, `discussion_findings`, `discussion_result` - Pembahasan

```
TodoWrite: Mark "Section 12: section_analysis" as [completed]
```

---

## Section 13: section_conclusion

```
TodoWrite: Mark "Section 13: section_conclusion" as [in_progress]
```

Kesimpulan dan Rekomendasi.

```yaml
section_conclusion:
  title: "Kesimpulan dan Rekomendasi Laporan Riksa Uji [Nama Alat] [Merek] Seri [Serial]"
  verdict: "[layak/tidak_layak/layak_bersyarat]"
  verdict_text: "[Nama Alat] [Merek] nomor seri [Serial] dinyatakan [LAYAK OPERASI/TIDAK LAYAK OPERASI/LAYAK BERSYARAT] berdasarkan hasil pemeriksaan dan pengujian yang telah dilakukan."
  conclusions:
    - "[Kesimpulan 1]"
    - "[Kesimpulan 2]"
    - "[Kesimpulan 3]"
    - "[Kesimpulan 4]"
    - "[Kesimpulan 5]"
  recommendations:
    - "[Rekomendasi 1]"
    - "[Rekomendasi 2]"
    - "[Rekomendasi 3]"
    - "[Rekomendasi 4]"
    - "[Rekomendasi 5]"
  validity_period: "[Periode] Tahun"
  next_inspection: "[Bulan] [Tahun]"
  paragraphs:
    - "[Paragraf disclaimer - data contoh]"
    - "[Paragraf CTA - hubungi kami]"
```

### Nilai verdict
| Value | Deskripsi |
|-------|-----------|
| `layak` | Alat layak operasi tanpa syarat |
| `tidak_layak` | Alat tidak layak operasi |
| `layak_bersyarat` | Alat layak operasi dengan syarat perbaikan tertentu |

### Catatan
- `conclusions`: 5 kesimpulan
- `recommendations`: 5 rekomendasi
- `validity_period`: Biasanya "1 Tahun"

### Checklist Section 13
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `verdict` - layak/tidak_layak/layak_bersyarat
- [ ] `verdict_text` - Kalimat verdict lengkap
- [ ] `conclusions` - 5 kesimpulan
- [ ] `recommendations` - 5 rekomendasi
- [ ] `validity_period` - Periode berlaku
- [ ] `next_inspection` - Tanggal inspeksi berikutnya
- [ ] `paragraphs` - 2 paragraf (disclaimer, CTA)

```
TodoWrite: Mark "Section 13: section_conclusion" as [completed]
```

---

## STATUS VALUES REFERENCE

### condition (section_visual)
| Value | Deskripsi |
|-------|-----------|
| `baik` | Kondisi normal, tidak ada masalah |
| `perlu_perhatian` | Ada masalah ringan, perlu perawatan preventif |
| `tidak_layak` | Kondisi kritis, harus diperbaiki sebelum operasi |

### status (section_operational, section_technical, section_ndt, section_hydrotest, section_safety_valve)
| Value | Deskripsi |
|-------|-----------|
| `lulus` | Memenuhi standar |
| `tidak_lulus` | Tidak memenuhi standar |

### verdict (section_conclusion)
| Value | Deskripsi |
|-------|-----------|
| `layak` | Alat layak operasi tanpa syarat |
| `tidak_layak` | Alat tidak layak operasi |
| `layak_bersyarat` | Alat layak operasi dengan syarat perbaikan tertentu |

---

## CHECKLIST FINAL SEBELUM PUBLISH

### Checklist Umum
- [ ] Semua 13 section sudah [completed] di TodoWrite
- [ ] Semua field terisi (tidak ada yang kosong "")
- [ ] Nama alat, merek, dan nomor seri konsisten di seluruh dokumen
- [ ] Internal link valid (cek URL)
- [ ] Tanggal format YYYY-MM-DD
- [ ] report_number format CMJ/RU/YYYY/MMDD-XXX
- [ ] Categories dan tags relevan
- [ ] Semua status values valid (lulus/tidak_lulus, baik/perlu_perhatian/tidak_layak)
- [ ] verdict sesuai dengan hasil pengujian
- [ ] FAQ questions diakhiri tanda tanya (?)
- [ ] Gambar tersedia atau gunakan fallback
- [ ] Preview di localhost sebelum deploy

### Build & Preview
```bash
./rebuild.sh
# Buka browser: http://localhost:4000/[path-to-article]
```
