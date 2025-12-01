# ============================================================================
# PETUNJUK PENGISIAN TEMPLATE NODE INSPECTION REPORT
# ============================================================================
# File: TEMPLATE-node-inspection-report.md
# Lokasi: /TEMPLATES/TEMPLATE-node-inspection-report.md
# ============================================================================

## CARA KERJA (BATCH SYSTEM + TODO)

Konten template ini sangat panjang. JANGAN mengisi sekali jalan.
Gunakan sistem batch dengan TodoWrite untuk menjaga kualitas konten.

### WAJIB: Gunakan TodoWrite untuk Setiap Batch

```
SEBELUM MULAI, buat todo list dengan 8 batch:
┌─────────────────────────────────────────────────────────────┐
│ TodoWrite:                                                  │
│ 1. [pending] BATCH 1: Front Matter + Copy template          │
│ 2. [pending] BATCH 2: Glossary + Data Umum + Object         │
│ 3. [pending] BATCH 3: Section Intro + Visual                │
│ 4. [pending] BATCH 4: Section Operational + Technical       │
│ 5. [pending] BATCH 5: Section NDT                           │
│ 6. [pending] BATCH 6: Section Hydrotest + Safety Valve      │
│ 7. [pending] BATCH 7: Section Analysis                      │
│ 8. [pending] BATCH 8: Section Conclusion                    │
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
         - Copy TEMPLATE-node-inspection-report.md ke file tujuan
         - Isi: title, date, description
         - Isi: header_bg, report_number, inspection_date, inspector
         - Isi: categories, tags, images, video
         - Isi: paragraphs (4 paragraf pembuka)
         - SIMPAN → Mark [completed]

BATCH 2: Glossary + Data Umum + Object
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_glossary (title, intro, 7 terms)
         - Isi: data_umum (perusahaan, instalatir)
         - Isi: object (semua field + 6 specifications)
         - SIMPAN → Mark [completed]

BATCH 3: Section Intro + Visual
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_intro (title, paragraphs, background, objectives)
         - Isi: section_visual (title, intro, 6 items, summary)
         - SIMPAN → Mark [completed]

BATCH 4: Section Operational + Technical
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_operational (title, intro, procedure, 6 items, summary)
         - Isi: section_technical (title, intro, procedure, 6 items, summary)
         - SIMPAN → Mark [completed]

BATCH 5: Section NDT
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_ndt (title, intro, method, 7 items, summary)
         - SIMPAN → Mark [completed]

BATCH 6: Section Hydrotest + Safety Valve
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_hydrotest (semua field + 8 steps + 5 items + 6 faq)
         - Isi: section_safety_valve (semua field + 7 steps + items + 6 faq)
         - SIMPAN → Mark [completed]

BATCH 7: Section Analysis
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_analysis (intro, 6 analyses, key_findings, discussion)
         - SIMPAN → Mark [completed]

BATCH 8: Section Conclusion
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_conclusion (verdict, conclusions, recommendations, dll)
         - SIMPAN → Mark [completed]
         - REVIEW & REBUILD
```

### Mengapa Batch + Todo Penting?

1. **Memory Management**: Setiap batch fokus pada 1-2 section saja
2. **Quality Control**: Konten lebih detail karena tidak terburu-buru
3. **Checkpoint**: Jika ada error, bisa lanjut dari batch terakhir
4. **Review**: User bisa review setiap batch sebelum lanjut
5. **Traceability**: Todo list menunjukkan progress yang jelas

---

## Section

Berdasarkan template, ada **10 section** utama:

| No | Section               | Deskripsi                                              |
|----|-----------------------|--------------------------------------------------------|
| 1  | `section_glossary`    | Istilah dan definisi (7 terms)                         |
| 2  | `data_umum`           | Data perusahaan dan instalatir                         |
| 3  | `object`              | Data alat yang diuji (6 specifications)                |
| 4  | `section_intro`       | Pendahuluan (paragraphs, background, objectives)       |
| 5  | `section_visual`      | Pemeriksaan visual (6 items)                           |
| 6  | `section_operational` | Pengujian operasional (procedure, 6 items)             |
| 7  | `section_technical`   | Pengujian teknis (procedure, 6 items)                  |
| 8  | `section_ndt`         | Pengujian NDT/thickness (7 items)                      |
| 9  | `section_hydrotest`   | Pengujian hidrostatik (8 steps, 5 items, 6 faq)        |
| 10 | `section_safety_valve`| Pengujian safety valve (7 steps, items, 6 faq)         |
| 11 | `section_analysis`    | Analisis data dan pembahasan (6 analyses, key_findings)|
| 12 | `section_conclusion`  | Kesimpulan dan rekomendasi (verdict, 5+5 items)        |

**Plus 4 bagian pendukung:**

| Bagian       | Deskripsi                           |
|--------------|-------------------------------------|
| `paragraphs` | 4 paragraf pembuka setelah H1       |
| `video`      | Video dokumentasi proses inspeksi   |
| `images`     | 4 gambar (featured + gallery)       |
| `categories` & `tags` | SEO taxonomy               |

---

## Section 1: Front Matter

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

# Images
images:
  - "/path/to/featured-image.jpg"
  - "/path/to/image-2.jpg"
  - "/path/to/image-3.jpg"
  - "/path/to/image-4.jpg"

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

**Catatan:**
- `header_bg`: Custom hex color (#1a5276, #e67e22, #28a745, #dc3545, #17a2b8)
- `report_number`: Format CMJ/RU/YYYY/MMDD-XXX
- `duration`: Format ISO 8601 (PT5M30S = 5 menit 30 detik)

#### Contoh header_bg per Jenis Alat:
| Jenis Alat | Warna | Hex Code |
|------------|-------|----------|
| Boiler / Pesawat Uap | Biru tua | `#1a5276` |
| Forklift / Pesawat Angkut | Oranye | `#e67e22` |
| Crane / Pesawat Angkat | Hijau | `#28a745` |
| Bejana Tekan | Merah | `#dc3545` |
| Instalasi Listrik | Cyan | `#17a2b8` |
| Tangki Timbun | Ungu | `#8e44ad` |

---

## Section 2: section_glossary

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

**Catatan:**
- 7 istilah standar yang harus ada
- Sertakan internal link ke halaman terkait
- Sebutkan nama alat dan nomor seri di setiap definisi

---

## Section 3: data_umum

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

**Catatan:**
- `perusahaan`: Data pemilik alat
- `instalatir`: Data perusahaan yang memasang/merawat alat
- Gunakan data dummy jika tidak tersedia

---

## Section 4: object

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

**Catatan:**
- `type`: Jenis pesawat sesuai kategori K3:
  - "Pesawat Uap" (untuk boiler)
  - "Bejana Tekan" (untuk pressure vessel)
  - "Pesawat Angkat" (untuk crane, hoist)
  - "Pesawat Angkut" (untuk forklift, conveyor)
- `specifications`: 6 parameter teknis utama

#### Contoh Specifications per Jenis Alat:

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

---

## Section 5: section_intro

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

**Catatan:**
- `paragraphs`: 2 paragraf pengantar
- `background`: Latar belakang pelaksanaan riksa uji
- `objectives`: 4 tujuan utama inspeksi

---

## Section 6: section_visual

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

**Catatan:**
- `items`: 6 komponen yang diperiksa
- `condition`: Gunakan nilai:
  - `baik` - kondisi normal
  - `perlu_perhatian` - ada masalah ringan
  - `tidak_layak` - kondisi kritis

#### Contoh Komponen per Jenis Alat:

| Boiler | Forklift | Overhead Crane |
|--------|----------|----------------|
| Dinding luar boiler | Body/rangka forklift | Struktur utama (girder) |
| Pipa uap utama | Fork/garpu angkat | Hoist dan trolley |
| Ruang pembakaran | Mast/tiang angkat | Wire rope/kawat baja |
| Penukar panas | Sistem hidrolik | Hook/kait pengangkat |
| Katup pengaman | Roda dan ban | End carriage |
| Pelapis insulasi | Cabin operator | Panel kontrol |

---

## Section 7: section_operational

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

**Catatan:**
- `procedure`: 4 langkah prosedur pengujian
- `items`: 6 parameter yang diuji
- `status`: `lulus` atau `tidak_lulus`

#### Contoh Parameter per Jenis Alat:

| Boiler | Forklift | Overhead Crane |
|--------|----------|----------------|
| Tekanan Operasional | Fungsi Pengangkatan | Fungsi Hoisting |
| Suhu Operasional | Kecepatan Travel | Fungsi Travel |
| Aliran Uap | Sistem Pengereman | Sistem Pengereman |
| Efisiensi Pembakaran | Sistem Kemudi | Load Indicator |
| Fungsi Kontrol Otomatis | Fungsi Hidrolik | Limit Switch |
| Kinerja Katup Pengaman | Indikator dan Alarm | Emergency Stop |

---

## Section 8: section_technical

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

**Catatan:**
- `procedure`: 4 langkah prosedur
- `items`: 6 komponen/parameter yang diuji

---

## Section 9: section_ndt

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

**Catatan:**
- `items`: 7 titik pengukuran ketebalan
- `result` dan `standard`: Dalam satuan mm

#### Contoh Titik Pengukuran:

| Boiler | Pressure Vessel |
|--------|-----------------|
| Dinding Ruang Pembakaran (bawah) | Shell (atas) |
| Dinding Ruang Pembakaran (tengah) | Shell (tengah) |
| Dinding Ruang Pembakaran (atas) | Shell (bawah) |
| Pipa Uap Utama (inlet) | Head/Dish End (atas) |
| Pipa Uap Utama (outlet) | Head/Dish End (bawah) |
| Penukar Panas | Nozzle |
| Tangki Air | Manhole |

---

## Section 10: section_hydrotest

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

**Catatan:**
- `test_pressure`: Biasanya 1.5x tekanan kerja
- `steps`: 8 langkah standar hydrotest
- `items`: 5 komponen yang diuji
- `faq`: 6 FAQ tentang hydrotest

---

## Section 11: section_safety_valve

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

**Catatan:**
- `total_units`: Jumlah safety valve yang diuji (integer)
- `steps`: 7 langkah standar pengujian
- `items`: Sesuai jumlah unit (minimal 2)
- `faq`: 6 FAQ tentang safety valve

---

## Section 12: section_analysis

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

**Catatan:**
- `analyses`: 6 analisis sesuai jumlah pengujian
- `key_findings`: 5 temuan utama
- `discussion`: 3 paragraf pembahasan

---

## Section 13: section_conclusion

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

**Catatan:**
- `verdict`: Gunakan nilai:
  - `layak` - alat layak operasi
  - `tidak_layak` - alat tidak layak operasi
  - `layak_bersyarat` - layak dengan syarat perbaikan
- `conclusions`: 5 kesimpulan
- `recommendations`: 5 rekomendasi
- `validity_period`: Biasanya "1 Tahun"

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

## CHECKLIST SEBELUM PUBLISH

### Checklist Umum
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

### Checklist Per Section

#### Front Matter
- [ ] `title` - Format: "Riksa Uji [Nama Alat] [Merek] Nomor Seri [Serial]"
- [ ] `date` & `inspection_date` - Format YYYY-MM-DD
- [ ] `description` - 150-160 karakter
- [ ] `header_bg` - Custom hex color valid
- [ ] `report_number` - Format CMJ/RU/YYYY/MMDD-XXX
- [ ] `inspector` - Nama tim inspektur
- [ ] `categories` - 2 kategori (Layanan + Kategori Induk)
- [ ] `tags` - 6 tags relevan
- [ ] `images` - 4 gambar
- [ ] `video` - Lengkap jika ada, kosong jika tidak
- [ ] `paragraphs` - 4 paragraf pembuka

#### Section 2: section_glossary
- [ ] `title` - Judul section
- [ ] `intro` - Pengantar dengan nama alat dan serial
- [ ] `terms` - 7 istilah dengan definisi dan link

#### Section 3: data_umum
- [ ] `perusahaan` - nama, alamat, telepon, email
- [ ] `instalatir` - nama, alamat, telepon, sertifikat

#### Section 4: object
- [ ] `name`, `brand`, `model`, `serial` - Data identifikasi
- [ ] `type` - Jenis pesawat K3
- [ ] `year` - Tahun pembuatan (integer)
- [ ] `capacity`, `pressure` - Dengan satuan
- [ ] `location`, `owner` - Lokasi dan pemilik
- [ ] `specifications` - 6 parameter dengan label dan value

#### Section 5: section_intro
- [ ] `title` - Judul pendahuluan
- [ ] `paragraphs` - 2 paragraf pengantar
- [ ] `background` - Latar belakang
- [ ] `objectives` - 4 tujuan inspeksi

#### Section 6: section_visual
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar pemeriksaan
- [ ] `items` - 6 komponen dengan component, result, condition, notes
- [ ] `summary` - Ringkasan hasil

#### Section 7: section_operational
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar pengujian
- [ ] `procedure` - 4 langkah prosedur
- [ ] `items` - 6 parameter dengan parameter, result, standard, status, notes
- [ ] `summary` - Ringkasan hasil

#### Section 8: section_technical
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar pengujian
- [ ] `procedure` - 4 langkah prosedur
- [ ] `items` - 6 komponen dengan component, result, standard, status, notes
- [ ] `summary` - Ringkasan hasil

#### Section 9: section_ndt
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar NDT
- [ ] `method` - Metode pengujian
- [ ] `items` - 7 titik dengan component, location, result, standard, status
- [ ] `summary` - Ringkasan hasil

#### Section 10: section_hydrotest
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar hydrotest
- [ ] `working_pressure`, `test_pressure`, `duration` - Parameter uji
- [ ] `method` - Metode pengujian
- [ ] `steps` - 8 langkah dengan name dan text
- [ ] `items` - 5 komponen dengan component, pressure, duration, result, status
- [ ] `summary` - Ringkasan hasil
- [ ] `faq` - 6 FAQ dengan question dan answer

#### Section 11: section_safety_valve
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar pengujian
- [ ] `total_units` - Jumlah unit (integer)
- [ ] `steps` - 7 langkah dengan name dan text
- [ ] `items` - Minimal 2 unit dengan unit, brand, size, set_pressure, test_pressure, result, status
- [ ] `summary` - Ringkasan hasil
- [ ] `faq` - 6 FAQ dengan question dan answer

#### Section 12: section_analysis
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `intro` - Pengantar analisis
- [ ] `analyses` - 6 analisis dengan title, intro, findings, interpretation
- [ ] `key_findings` - 5 temuan utama
- [ ] `discussion_title`, `discussion_intro`, `discussion_findings`, `discussion_result` - Pembahasan

#### Section 13: section_conclusion
- [ ] `title` - Dengan nama alat, merek, serial
- [ ] `verdict` - layak/tidak_layak/layak_bersyarat
- [ ] `verdict_text` - Kalimat verdict lengkap
- [ ] `conclusions` - 5 kesimpulan
- [ ] `recommendations` - 5 rekomendasi
- [ ] `validity_period` - Periode berlaku
- [ ] `next_inspection` - Tanggal inspeksi berikutnya
- [ ] `paragraphs` - 2 paragraf (disclaimer, CTA)
