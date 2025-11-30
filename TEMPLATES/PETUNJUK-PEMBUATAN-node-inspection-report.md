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

## BATCH 1: FRONT MATTER

### title
```yaml
title: "Riksa Uji [Nama Alat] [Merek] Nomor Seri [Serial]"
```
- Format: "Riksa Uji" + nama alat + merek + nomor seri
- Contoh: "Riksa Uji Boiler John Thompson - ACTOM (Pty) Ltd Nomor Seri 74910"

### date & inspection_date
```yaml
date: 2024-10-16
inspection_date: 2024-10-16
```
- date: Tanggal publikasi artikel
- inspection_date: Tanggal pelaksanaan inspeksi
- Format: YYYY-MM-DD

### description
```yaml
description: "Laporan hasil riksa uji [nama alat] [merek] nomor seri [serial] meliputi pemeriksaan visual, pengujian operasional, teknis, dan NDT."
```
- 150-160 karakter untuk SEO meta description
- Sebutkan jenis pengujian yang dilakukan

### Report Metadata
```yaml
header_bg: "#1a5276"
report_number: "CMJ/RU/2024/1016-001"
inspector: "Tim Inspeksi PT. Cipta Mas Jaya"
```
- header_bg: Warna background header menggunakan **custom hex color** (format: `#xxxxxx`)
- report_number: Format CMJ/RU/YYYY/MMDD-XXX
- inspector: Nama tim/inspektur

#### Contoh header_bg per Jenis Alat:
```yaml
# Boiler / Pesawat Uap (Biru tua)
header_bg: "#1a5276"

# Forklift / Pesawat Angkut (Oranye)
header_bg: "#e67e22"

# Crane / Pesawat Angkat (Hijau)
header_bg: "#28a745"

# Bejana Tekan (Merah)
header_bg: "#dc3545"

# Instalasi Listrik (Cyan)
header_bg: "#17a2b8"

# Tangki Timbun (Ungu)
header_bg: "#8e44ad"
```

### categories
```yaml
categories:
  - Layanan
  - [Kategori Induk]
```
- Kategori 1: Selalu "Layanan"
- Kategori 2: Nama kategori induk
- Contoh kategori induk:
  - "Riksa Uji Pesawat Uap dan Bejana Tekan" (untuk boiler, bejana tekan)
  - "Riksa Uji Pesawat Angkat dan Angkut" (untuk crane, forklift)
  - "Riksa Uji Instalasi Listrik" (untuk panel listrik, grounding)

### tags
```yaml
tags:
  - Inspeksi
  - Inspeksi K3
  - Jasa Riksa Uji
  - PJK3
  - Riksa Uji [Nama Alat]
  - [Nama Alat]
```
- 6 tags relevan
- Selalu sertakan: "Inspeksi", "Inspeksi K3", "Jasa Riksa Uji", "PJK3"
- Tambahkan tag spesifik alat

### images
```yaml
images:
  - "/path/to/featured-image.jpg"
  - "/path/to/image-2.jpg"
  - "/path/to/image-3.jpg"
  - "/path/to/image-4.jpg"
```
- images[0]: Featured image untuk og:image, schema, thumbnail
- images[1-3]: Gallery images (optional)
- Jika kosong, fallback ke default i1-i4.svg

### video
```yaml
video:
  name: "Video Proses Riksa Uji [Nama Alat]"
  description: "Dokumentasi proses inspeksi dan pengujian [nama alat] oleh tim PT. Cipta Mas Jaya"
  src: "https://www.youtube.com/watch?v=XXXXX"
  thumbnail: "/path/to/thumbnail.jpg"
  duration: "PT5M30S"
```
- duration: Format ISO 8601 (PT5M30S = 5 menit 30 detik)
- Kosongkan jika tidak ada video

### paragraphs
```yaml
paragraphs:
  - "[Paragraf 1: Definisi riksa uji + link ke halaman layanan]"
  - "[Paragraf 2: Penjelasan proses riksa uji secara umum]"
  - "[Paragraf 3: Penjelasan tentang NDT/thickness test]"
  - "[Paragraf 4: Link ke kategori induk + penjelasan spesifik alat]"
```
- 4 paragraf pembuka setelah H1
- Sertakan internal link ke halaman layanan terkait
- Format link: `<a href="/url/">anchor text</a>`
- Gunakan `<strong>` untuk penekanan kata kunci

---

## BATCH 2: GLOSSARY + DATA UMUM + OBJECT

### section_glossary
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
- 7 istilah standar yang harus ada
- Setiap definisi menyebutkan nama alat dan nomor seri yang sedang diinspeksi
- Sertakan internal link ke halaman terkait

### data_umum
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
- perusahaan: Data pemilik alat
- instalatir: Data perusahaan yang memasang/merawat alat
- Gunakan data dummy jika tidak tersedia

### object
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
    # ... dst (6 spesifikasi)
```
- type: Jenis pesawat sesuai kategori K3
  - "Pesawat Uap" (untuk boiler)
  - "Bejana Tekan" (untuk pressure vessel)
  - "Pesawat Angkat" (untuk crane, hoist)
  - "Pesawat Angkut" (untuk forklift, conveyor)
- specifications: 6 parameter teknis utama sesuai jenis alat

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

## BATCH 3: SECTION INTRO + VISUAL

### section_intro
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
- paragraphs: 2 paragraf pengantar
- background: Latar belakang pelaksanaan riksa uji
- objectives: 4 tujuan utama inspeksi

### section_visual
```yaml
section_visual:
  title: "Pemeriksaan Visual [Nama Alat] [Merek] Seri [Serial]"
  intro: "Pemeriksaan visual dilakukan pada berbagai komponen [nama alat] untuk mendeteksi kerusakan atau keausan yang terlihat secara langsung."
  items:
    - component: "[Nama Komponen]"
      result: "[Hasil pemeriksaan]"
      condition: "[baik/perlu_perhatian/tidak_layak]"
      notes: "[Catatan tambahan]"
    # ... dst (6 items)
  summary: "[Ringkasan hasil pemeriksaan visual]"
```
- items: 6 komponen yang diperiksa
- condition: Gunakan nilai:
  - `baik` - kondisi normal
  - `perlu_perhatian` - ada masalah ringan yang perlu ditangani
  - `tidak_layak` - kondisi kritis, harus diperbaiki

#### Contoh Komponen per Jenis Alat:

**Boiler:**
- Dinding luar boiler
- Pipa uap utama
- Ruang pembakaran
- Penukar panas (Heat Exchanger)
- Katup pengaman
- Pelapis insulasi

**Forklift:**
- Body/rangka forklift
- Fork/garpu angkat
- Mast/tiang angkat
- Sistem hidrolik
- Roda dan ban
- Cabin operator

**Overhead Crane:**
- Struktur utama (girder)
- Hoist dan trolley
- Wire rope/kawat baja
- Hook/kait pengangkat
- End carriage
- Panel kontrol

---

## BATCH 4: SECTION OPERATIONAL + TECHNICAL

### section_operational
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
- procedure: 4 langkah prosedur pengujian
- items: 6 parameter yang diuji
- status: `lulus` atau `tidak_lulus`

#### Contoh Parameter per Jenis Alat:

**Boiler:**
- Tekanan Operasional
- Suhu Operasional
- Aliran Uap
- Efisiensi Pembakaran
- Fungsi Kontrol Otomatis
- Kinerja Katup Pengaman

**Forklift:**
- Fungsi Pengangkatan
- Kecepatan Travel
- Sistem Pengereman
- Sistem Kemudi
- Fungsi Hidrolik
- Indikator dan Alarm

**Overhead Crane:**
- Fungsi Hoisting
- Fungsi Travel (Long/Cross)
- Sistem Pengereman
- Load Indicator
- Limit Switch
- Emergency Stop

### section_technical
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

---

## BATCH 5: SECTION NDT

### section_ndt
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
- items: 7 titik pengukuran ketebalan
- result dan standard: Dalam satuan mm (tanpa unit)

#### Contoh Titik Pengukuran per Jenis Alat:

**Boiler:**
- Dinding Ruang Pembakaran (bagian bawah, tengah, atas)
- Pipa Uap Utama (inlet, outlet)
- Penukar Panas (tube bundle)
- Tangki Air (dinding samping)

**Pressure Vessel:**
- Shell (bagian atas, tengah, bawah)
- Head/Dish End (atas, bawah)
- Nozzle
- Manhole

---

## BATCH 6: SECTION HYDROTEST + SAFETY VALVE

### section_hydrotest
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
- test_pressure: Biasanya 1.5x tekanan kerja
- steps: 8 langkah standar hydrotest
- items: 5 komponen yang diuji
- faq: 6 FAQ tentang hydrotest

### section_safety_valve
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
      # ... dst sesuai jumlah unit
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
- total_units: Jumlah safety valve yang diuji (integer)
- steps: 7 langkah standar pengujian safety valve
- items: Sesuai jumlah unit (minimal 2)
- faq: 6 FAQ tentang safety valve

---

## BATCH 7: SECTION ANALYSIS

### section_analysis
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
- analyses: 6 analisis sesuai jumlah pengujian
- key_findings: 5 temuan utama
- discussion: 3 paragraf pembahasan

---

## BATCH 8: SECTION CONCLUSION

### section_conclusion
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
- verdict: Gunakan nilai:
  - `layak` - alat layak operasi
  - `tidak_layak` - alat tidak layak operasi
  - `layak_bersyarat` - layak dengan syarat perbaikan
- conclusions: 5 kesimpulan
- recommendations: 5 rekomendasi
- validity_period: Biasanya "1 Tahun"
- next_inspection: Tanggal inspeksi berikutnya

---

## STATUS VALUES REFERENCE

### condition (section_visual)
- `baik` - Kondisi normal, tidak ada masalah
- `perlu_perhatian` - Ada masalah ringan, perlu perawatan preventif
- `tidak_layak` - Kondisi kritis, harus diperbaiki sebelum operasi

### status (section_operational, section_technical, section_ndt, section_hydrotest, section_safety_valve)
- `lulus` - Memenuhi standar
- `tidak_lulus` - Tidak memenuhi standar

### verdict (section_conclusion)
- `layak` - Alat layak operasi tanpa syarat
- `tidak_layak` - Alat tidak layak operasi
- `layak_bersyarat` - Alat layak operasi dengan syarat perbaikan tertentu

---

## CHECKLIST SEBELUM PUBLISH

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
