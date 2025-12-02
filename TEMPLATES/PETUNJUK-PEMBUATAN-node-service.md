# ============================================================================
# PETUNJUK PENGISIAN TEMPLATE NODE SERVICE
# ============================================================================
# File: TEMPLATE-node-service.md
# Lokasi: /TEMPLATES/TEMPLATE-node-service.md
# ============================================================================

## CARA KERJA (PER-SECTION + TODOWRITE)

Konten template ini sangat panjang. JANGAN mengisi sekali jalan.
Gunakan sistem per-section dengan TodoWrite untuk menjaga kualitas konten.

### WAJIB: Gunakan TodoWrite untuk Setiap Section

```
SEBELUM MULAI, buat todo list dengan 12 section:
┌─────────────────────────────────────────────────────────────────────────────┐
│ TodoWrite:                                                                  │
│  1. [pending] Section 1: Front Matter                                       │
│  2. [pending] Section 2: intro                                              │
│  3. [pending] Section 3: jenis_alat (ItemList Schema)                       │
│  4. [pending] Section 4: komponen_inspeksi (ItemList Schema)                │
│  5. [pending] Section 5: proses_inspeksi (HowTo Schema)                     │
│  6. [pending] Section 6: cara_pemesanan (HowTo Schema)                      │
│  7. [pending] Section 7: video_riksa_uji (VideoObject Schema)               │
│  8. [pending] Section 8: offer_riksa_uji (Offer Schema)                     │
│  9. [pending] Section 9: schedule_riksa_uji (Event Schema)                  │
│ 10. [pending] Section 10: faq_riksa_uji (FAQPage Schema)                    │
│ 11. [pending] Section 11: Rating File                                       │
│ 12. [pending] Section 12: Final verification                                │
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

Template ini memiliki **8 Section** + **1 Bagian Pendukung**:

| No | Section | Deskripsi | Schema |
|----|---------|-----------|--------|
| 1 | Front Matter | Metadata halaman (title, permalink, dll) | - |
| 2 | intro | Pengenalan layanan dengan subsections | - |
| 3 | jenis_alat | Jenis alat yang dilayani (6 items) | ItemList |
| 4 | komponen_inspeksi | Komponen yang diperiksa (6 items) | ItemList |
| 5 | proses_inspeksi | Tahapan inspeksi (6 steps) | HowTo |
| 6 | cara_pemesanan | Langkah pemesanan (4 steps) | HowTo |
| 7 | video_riksa_uji | Video dokumentasi inspeksi | VideoObject |
| 8 | offer_riksa_uji | Paket penawaran harga (3 offers) | Offer |
| 9 | schedule_riksa_uji | Konfigurasi jadwal inspeksi | Event |
| 10 | faq_riksa_uji | FAQ seputar layanan (6 items) | FAQPage |

**Bagian Pendukung:**
- Rating File (file terpisah di `_includes/reusable/services/ratings/`)

---

## STRUKTUR FOLDER SERVICE

```
_services/
├── riksa-uji-pesawat-uap-bejana-tekan/
│   ├── pesawat-uap/
│   │   └── riksa-uji-boiler/
│   │       └── riksa-uji-boiler.md
│   ├── bejana-tekan/
│   │   └── riksa-uji-pressure-vessel/
│   │       └── riksa-uji-pressure-vessel.md
│   └── tangki-timbun/
│       └── riksa-uji-storage-tank/
│           └── riksa-uji-storage-tank.md
├── riksa-uji-pesawat-angkat-angkut/
│   ├── pesawat-angkat/
│   │   ├── riksa-uji-overhead-crane/
│   │   │   └── riksa-uji-overhead-crane.md
│   │   └── riksa-uji-tower-crane/
│   │       └── riksa-uji-tower-crane.md
│   └── pesawat-angkut/
│       └── riksa-uji-forklift/
│           └── riksa-uji-forklift.md
└── ... (kategori lainnya)
```

---

## REFERENSI NILAI

### Category Options
```
Riksa Uji Pesawat Uap Bejana Tekan
Riksa Uji Pesawat Angkat Angkut
Riksa Uji Elevator
Riksa Uji Instalasi Listrik
```

### Certification Category
```
pesawat-uap, bejana-tekan, pesawat-angkat, pesawat-angkut, elevator, listrik
```

### Service Type
```
Safety Inspection
```

### Availability (Offer)
```
InStock, OutOfStock, PreOrder
```

### ISO 8601 Duration Format
```
PT1H = 1 jam
PT2H = 2 jam
PT4H = 4 jam
P1D = 1 hari
P7D = 7 hari
PT1M30S = 1 menit 30 detik
```

---

## SECTION 1: FRONT MATTER

```
TodoWrite: Mark "Section 1: Front Matter" as [in_progress]
```

```yaml
layout: node/node--service
title: "Riksa Uji Boiler"
description: "Jasa riksa uji dan inspeksi K3 boiler profesional dengan sertifikat resmi Kementerian Ketenagakerjaan RI."
para_1: "Riksa uji boiler adalah pemeriksaan dan pengujian terhadap pesawat uap sesuai dengan Permenaker No. 37 Tahun 2016 tentang Keselamatan dan Kesehatan Kerja Bejana Tekanan dan Tangki Timbun."
permalink: "/layanan/riksa-uji-pesawat-uap-bejana-tekan/pesawat-uap/riksa-uji-boiler/"
category: "Riksa Uji Pesawat Uap Bejana Tekan"
sub_category: "Riksa Uji Boiler"
certification_category: "pesawat-uap"
service_type: Safety Inspection
icon: "bi-fire"
image: "/assets/images/services/riksa-uji-boiler.jpg"
images:
  - "/assets/images/services/boiler-1.jpg"
  - "/assets/images/services/boiler-2.jpg"
  - "/assets/images/services/boiler-3.jpg"
area_served: Indonesia
content_structure: ""
date: 2025-12-01
last_modified_at: 2025-12-01
show_breadcrumb_schema: true
keywords: "riksa uji boiler, jasa riksa uji boiler, inspeksi boiler, inspeksi ketel uap, hydrotest boiler, PJK3, sertifikasi K3"
rating_id: riksa-uji-boiler
custom_schema:
  - schema/schema--service-reviews.html
lastmod: '2025-12-01T16:40:00+0700'
```

**Catatan:**
- `title`: Format "Riksa Uji [Nama Alat]" (tanpa kata "Jasa")
- `description`: 150-160 karakter, sertakan kata kunci: jasa, riksa uji, inspeksi K3, sertifikat
- `para_1`: Paragraf pembuka setelah H1, jelaskan definisi dan dasar hukum
- `permalink`: Format /layanan/[kategori]/[subkategori]/riksa-uji-[nama-alat]/
- `rating_id`: ID untuk menghubungkan dengan file rating (lowercase, dash-separated)
- `lastmod`: Auto-updated oleh propagate-timestamp plugin
- `image` & `images`: Jika tidak ada gambar khusus, gunakan fallback default:
  ```yaml
  image: "/assets/images/services/1.svg"
  images:
    - "/assets/images/services/2.svg"
    - "/assets/images/services/3.svg"
    - "/assets/images/services/4.svg"
  ```

```
TodoWrite: Mark "Section 1: Front Matter" as [completed]
```

---

## SECTION 2: intro

```
TodoWrite: Mark "Section 2: intro" as [in_progress]
```

```yaml
intro:
  name: "Layanan Riksa Uji Boiler Profesional"
  para: "PT. Cipta Mas Jaya menyediakan layanan riksa uji boiler dengan inspector bersertifikat dan berpengalaman. Kami memastikan boiler Anda memenuhi standar keselamatan yang ditetapkan oleh Kementerian Ketenagakerjaan RI."
  subsections:
    - h3: "Dasar Hukum dan Standar Keselamatan"
      para: "Riksa uji boiler wajib dilakukan berdasarkan regulasi keselamatan kerja yang berlaku di Indonesia."
      subsections:
        - h4: "Permenaker No. 37 Tahun 2016"
          para: "Peraturan Menteri Ketenagakerjaan tentang Keselamatan dan Kesehatan Kerja Bejana Tekanan dan Tangki Timbun mewajibkan pengujian berkala untuk semua pesawat uap."
        - h4: "Standar ASME dan SNI"
          para: "Pengujian dilakukan mengacu pada standar internasional ASME Boiler and Pressure Vessel Code serta Standar Nasional Indonesia (SNI)."
    - h3: "Tim Inspector Bersertifikat"
      para: "Tim inspector kami memiliki sertifikat kompetensi dari BNSP dan telah berpengalaman lebih dari 10 tahun dalam bidang inspeksi pesawat uap dan bejana tekan."
    - h3: "Cakupan Layanan Nasional"
      para: "Kami melayani riksa uji boiler di seluruh Indonesia, dari Sabang sampai Merauke. Tim kami siap datang ke lokasi Anda kapanpun dibutuhkan."
```

**Catatan:**
- `name`: Judul section intro
- `para`: Paragraf pembuka section
- `subsections`: 3 subsection (Dasar Hukum, Tim Inspector, Cakupan Layanan)
- Subsection pertama memiliki nested subsections untuk detail peraturan (h4)

```
TodoWrite: Mark "Section 2: intro" as [completed]
```

---

## SECTION 3: jenis_alat (ItemList Schema)

```
TodoWrite: Mark "Section 3: jenis_alat" as [in_progress]
```

```yaml
jenis_boiler:  # Ganti dengan jenis_[nama-alat]
  name: "Jenis Boiler yang Kami Layani"
  description: "Kami melayani riksa uji untuk berbagai jenis boiler industri"
  items:
    - name: "Fire Tube Boiler"
      description: "Boiler dengan pipa api di dalam drum berisi air, umum digunakan untuk kapasitas menengah."
      icon: "bi-fire"
    - name: "Water Tube Boiler"
      description: "Boiler dengan air mengalir di dalam pipa dan api di luar, untuk kapasitas besar dan tekanan tinggi."
      icon: "bi-droplet"
    - name: "Electric Boiler"
      description: "Boiler yang menggunakan elemen listrik sebagai sumber panas, cocok untuk area dengan regulasi emisi ketat."
      icon: "bi-lightning"
    - name: "Steam Boiler"
      description: "Boiler penghasil uap untuk proses industri, laundry, dan kebutuhan sterilisasi."
      icon: "bi-cloud"
    - name: "Hot Water Boiler"
      description: "Boiler penghasil air panas untuk sistem pemanas ruangan dan proses industri."
      icon: "bi-thermometer-half"
    - name: "Package Boiler"
      description: "Boiler siap pakai dalam satu unit kompak, mudah diinstal dan dioperasikan."
      icon: "bi-box"
  footer: "Untuk jenis boiler lainnya yang tidak tercantum di atas, silakan hubungi kami untuk konsultasi lebih lanjut."
```

**Catatan:**
- Nama field: `jenis_[nama-alat]` (misal: jenis_boiler, jenis_forklift, jenis_crane)
- `items`: 6 jenis alat yang dilayani
- Setiap item: name, description, icon (Bootstrap icon)

```
TodoWrite: Mark "Section 3: jenis_alat" as [completed]
```

---

## SECTION 4: komponen_inspeksi (ItemList Schema)

```
TodoWrite: Mark "Section 4: komponen_inspeksi" as [in_progress]
```

```yaml
komponen_inspeksi:
  name: "Komponen Boiler yang Diperiksa"
  description: "Inspeksi menyeluruh pada seluruh komponen keselamatan boiler"
  items:
    - name: "Drum dan Shell"
      description: "Pemeriksaan ketebalan dinding, korosi, dan integritas struktural drum boiler."
      icon: "bi-cylinder"
    - name: "Pipa dan Tube"
      description: "Inspeksi kondisi pipa api atau pipa air, kebocoran, dan kerak."
      icon: "bi-diagram-3"
    - name: "Safety Valve"
      description: "Pengujian fungsi dan kalibrasi katup pengaman tekanan."
      icon: "bi-shield-check"
    - name: "Pressure Gauge"
      description: "Verifikasi akurasi pengukur tekanan dan kalibrasi."
      icon: "bi-speedometer"
    - name: "Water Level Indicator"
      description: "Pemeriksaan indikator level air dan sistem low water cutoff."
      icon: "bi-water"
    - name: "Sistem Kontrol"
      description: "Inspeksi panel kontrol, sensor, dan sistem otomatisasi keselamatan."
      icon: "bi-cpu"
```

**Catatan:**
- `items`: 6 komponen utama yang diperiksa
- Sesuaikan dengan jenis alat yang diinspeksi

```
TodoWrite: Mark "Section 4: komponen_inspeksi" as [completed]
```

---

## SECTION 5: proses_inspeksi (HowTo Schema)

```
TodoWrite: Mark "Section 5: proses_inspeksi" as [in_progress]
```

```yaml
proses_inspeksi:
  name: "Proses Riksa Uji Boiler"
  description: "Tahapan inspeksi dan pengujian K3 boiler oleh inspector bersertifikat"
  totalTime: "PT4H"
  steps:
    - name: "Pemeriksaan Dokumen"
      text: "Verifikasi dokumen teknis boiler termasuk gambar teknik, manual operasi, dan catatan pemeliharaan sebelumnya."
    - name: "Inspeksi Visual Eksternal"
      text: "Pemeriksaan kondisi fisik luar boiler meliputi casing, isolasi, dan komponen eksternal."
    - name: "Inspeksi Visual Internal"
      text: "Pemeriksaan kondisi dalam drum, pipa, dan permukaan pemanas untuk mendeteksi korosi atau kerusakan."
    - name: "Pengujian Non-Destructive (NDT)"
      text: "Pelaksanaan thickness test menggunakan ultrasonic untuk mengukur ketebalan dinding boiler."
    - name: "Pengujian Hidrostatik"
      text: "Uji tekanan dengan media air untuk memastikan integritas struktural dan tidak ada kebocoran."
    - name: "Dokumentasi dan Laporan"
      text: "Penyusunan laporan inspeksi lengkap dengan rekomendasi dan penerbitan sertifikat kelayakan."
```

**Catatan:**
- `totalTime`: Format ISO 8601 (PT4H = 4 jam)
- `steps`: 6 langkah proses inspeksi
- Digunakan untuk Google HowTo rich snippet

```
TodoWrite: Mark "Section 5: proses_inspeksi" as [completed]
```

---

## SECTION 6: cara_pemesanan (HowTo Schema)

```
TodoWrite: Mark "Section 6: cara_pemesanan" as [in_progress]
```

```yaml
cara_pemesanan:
  name: "Cara Pemesanan Riksa Uji Boiler"
  description: "Langkah-langkah mudah untuk memesan jasa riksa uji boiler"
  totalTime: "P7D"
  steps:
    - name: "Hubungi Kami"
      text: "Hubungi tim kami via WhatsApp di 08568258841 atau email untuk konsultasi awal dan penawaran harga."
    - name: "Penjadwalan Inspeksi"
      text: "Tim kami akan mengatur jadwal inspeksi yang sesuai dengan ketersediaan Anda, biasanya dalam 3-7 hari kerja."
    - name: "Inspeksi On-Site"
      text: "Inspector bersertifikat kami datang ke lokasi untuk melakukan inspeksi menyeluruh sesuai standar."
    - name: "Penerbitan Sertifikat"
      text: "Setelah lulus inspeksi, sertifikat kelayakan operasi diterbitkan dalam 3-5 hari kerja."
```

**Catatan:**
- `totalTime`: Estimasi waktu total proses (P7D = 7 hari)
- `steps`: 4 langkah standar pemesanan

```
TodoWrite: Mark "Section 6: cara_pemesanan" as [completed]
```

---

## SECTION 7: video_riksa_uji (VideoObject Schema)

```
TodoWrite: Mark "Section 7: video_riksa_uji" as [in_progress]
```

```yaml
video_riksa_uji:
  name: "Proses Riksa Uji Boiler - PT. Cipta Mas Jaya"
  description: "Video dokumentasi proses riksa uji boiler oleh tim inspector bersertifikat PT. Cipta Mas Jaya."
  thumbnail: "/assets/images/services/video-thumb-boiler.jpg"
  src: "/assets/videos/service-page/riksa-uji-boiler.webm"
  duration: "PT2M30S"
  upload_date: "2025-12-01"
```

**Catatan:**
- `duration`: Format ISO 8601 (PT2M30S = 2 menit 30 detik)
- Digunakan untuk Google Video rich snippet
- Jika tidak ada video khusus, gunakan default video:
  ```yaml
  video_riksa_uji:
    name: "Proses Riksa Uji [Nama Alat] - PT. Cipta Mas Jaya"
    description: "Video dokumentasi proses riksa uji [nama alat] oleh tim inspector bersertifikat PT. Cipta Mas Jaya."
    thumbnail: "/assets/images/videos/default-riksa-uji-thumb.jpg"
    src: "/assets/videos/service-page/riksa-uji-forklift.webm"
    duration: "PT1M30S"
    upload_date: "2025-11-26"
  ```

```
TodoWrite: Mark "Section 7: video_riksa_uji" as [completed]
```

---

## SECTION 8: offer_riksa_uji (Offer Schema)

```
TodoWrite: Mark "Section 8: offer_riksa_uji" as [in_progress]
```

```yaml
offer_riksa_uji:
  name: "Paket Riksa Uji Boiler"
  description: "Layanan riksa uji dan inspeksi K3 boiler dengan sertifikat resmi"
  note: "Harga belum termasuk biaya transportasi untuk lokasi di luar Jabodetabek."
  offers:
    - name: "Riksa Uji Boiler Standar"
      description: "Inspeksi lengkap untuk 1 unit boiler kapasitas hingga 10 ton/jam"
      price: 3500000
      price_currency: IDR
      price_label: "per unit"
      features:
        - "Inspeksi visual internal & eksternal"
        - "Thickness test (NDT)"
        - "Pengujian safety valve"
        - "Sertifikat resmi Disnaker"
        - "Laporan inspeksi detail"
        - "Garansi konsultasi 30 hari"
      availability: InStock
      valid_from: "2025-01-01"
      valid_through: "2025-12-31"
    - name: "Riksa Uji Boiler Heavy Duty"
      description: "Inspeksi untuk boiler kapasitas besar di atas 10 ton/jam"
      price: 5500000
      price_currency: IDR
      price_label: "per unit"
      features:
        - "Inspeksi visual internal & eksternal"
        - "Thickness test multi-point"
        - "Hydrotest"
        - "Pengujian safety valve"
        - "Sertifikat resmi Disnaker"
        - "Laporan inspeksi komprehensif"
      availability: InStock
      valid_from: "2025-01-01"
      valid_through: "2025-12-31"
    - name: "Paket Riksa Uji Multi Unit"
      description: "Inspeksi untuk 3 unit boiler atau lebih dengan harga khusus"
      price: 3000000
      price_currency: IDR
      price_label: "per unit (min. 3 unit)"
      features:
        - "Inspeksi visual internal & eksternal"
        - "Thickness test (NDT)"
        - "Pengujian safety valve"
        - "Sertifikat resmi Disnaker"
        - "Laporan inspeksi detail"
      availability: InStock
      valid_from: "2025-01-01"
      valid_through: "2025-12-31"
      is_featured: true
```

**Catatan:**
- `offers`: 3 paket penawaran (Standar, Heavy Duty, Multi Unit)
- `is_featured: true`: Untuk paket yang di-highlight
- `availability`: InStock, OutOfStock, atau PreOrder

```
TodoWrite: Mark "Section 8: offer_riksa_uji" as [completed]
```

---

## SECTION 9: schedule_riksa_uji (Event Schema)

```
TodoWrite: Mark "Section 9: schedule_riksa_uji" as [in_progress]
```

```yaml
schedule_riksa_uji:
  name: "Jadwal Riksa Uji Tersedia"
  description: "Pilih tanggal inspeksi yang sesuai dengan jadwal Anda"
  location: "On-site di lokasi Anda"
  time_start: "09:00"
  time_end: "17:00"
  weeks_ahead_min: 1
  weeks_ahead_max: 6
  count: 4
  exclude_weekend: true
  note: "Jadwal dapat disesuaikan dengan kebutuhan. Untuk inspeksi di luar jam kerja atau akhir pekan, hubungi kami untuk pengaturan khusus."
```

**Catatan:**
- `weeks_ahead_min/max`: Range minggu yang ditampilkan di widget
- `count`: Jumlah slot jadwal yang ditampilkan
- `exclude_weekend`: true untuk tidak menampilkan Sabtu-Minggu

```
TodoWrite: Mark "Section 9: schedule_riksa_uji" as [completed]
```

---

## SECTION 10: faq_riksa_uji (FAQPage Schema)

```
TodoWrite: Mark "Section 10: faq_riksa_uji" as [in_progress]
```

```yaml
faq_riksa_uji:
  name: "FAQ Riksa Uji Boiler"
  description: "Pertanyaan yang sering diajukan seputar layanan riksa uji boiler"
  faqs:
    - question: "Apa itu riksa uji boiler?"
      answer: "Riksa uji boiler adalah pemeriksaan dan pengujian terhadap pesawat uap untuk memastikan kelaikan operasi dan keselamatan kerja sesuai Permenaker No. 37 Tahun 2016."
    - question: "Berapa lama proses riksa uji boiler?"
      answer: "Proses inspeksi on-site memakan waktu 2-4 jam tergantung kapasitas dan kondisi boiler. Penerbitan sertifikat membutuhkan 3-5 hari kerja."
    - question: "Apa saja yang diperiksa dalam riksa uji boiler?"
      answer: "Inspeksi meliputi pemeriksaan visual internal dan eksternal, thickness test, pengujian safety valve, pressure gauge, water level indicator, dan sistem kontrol keselamatan."
    - question: "Berapa biaya riksa uji boiler?"
      answer: "Biaya riksa uji boiler mulai dari Rp 3.500.000 per unit untuk kapasitas standar. Hubungi kami untuk penawaran khusus sesuai kebutuhan Anda."
    - question: "Apakah sertifikat riksa uji berlaku nasional?"
      answer: "Ya, sertifikat yang kami terbitkan diakui oleh Dinas Tenaga Kerja di seluruh Indonesia karena kami adalah PJK3 resmi berlisensi Kemenaker RI."
    - question: "Berapa lama masa berlaku sertifikat riksa uji boiler?"
      answer: "Masa berlaku sertifikat riksa uji boiler adalah 1 tahun untuk boiler operasional. Setelah itu, wajib dilakukan riksa uji ulang untuk memperpanjang izin operasi."
```

**Catatan:**
- `faqs`: 6 FAQ standar
- Digunakan untuk Google FAQ rich snippet

```
TodoWrite: Mark "Section 10: faq_riksa_uji" as [completed]
```

---

## RATING FILE (Bagian Pendukung)

```
TodoWrite: Mark "Section 11: Rating File" as [in_progress]
```

### Mengapa Rating File Penting?

Rating file diperlukan untuk menghasilkan **schema Product dengan AggregateRating dan Review** yang valid. Tanpa rating file:
- Google akan menampilkan warning "Kolom 'review' tidak ada"
- Google akan menampilkan warning "Kolom 'aggregateRating' tidak ada"
- Halaman tidak eligible untuk Review Snippets di hasil pencarian

### Lokasi File Rating
```
_includes/reusable/services/ratings/block--rating--riksa-uji-[nama-alat].html
```

### Cara Membuat File Rating

1. **Copy template**:
   ```
   TEMPLATES/TEMPLATE-block-rating-service.html
   ```

2. **Paste ke lokasi**:
   ```
   _includes/reusable/services/ratings/block--rating--riksa-uji-boiler.html
   ```

3. **Isi data rating**:
   ```liquid
   {% assign rating_average = 4.8 %}
   {% assign rating_count = 3 %}
   {% assign rating_best = 5 %}
   {% assign rating_worst = 1 %}
   {% assign rating_dist_5 = 2 %}
   {% assign rating_dist_4 = 1 %}
   {% assign rating_dist_3 = 0 %}
   {% assign rating_dist_2 = 0 %}
   {% assign rating_dist_1 = 0 %}
   {% assign rating_updated = "2025-12-01" %}
   ```

4. **Isi data review** (minimal 2-3 review):
   ```liquid
   {% comment %} Review 1 {% endcomment %}
   {% assign review_1_nama = "Hendra Kusuma" %}
   {% assign review_1_usaha = "Pabrik Tekstil di Bandung" %}
   {% assign review_1_rating = 5 %}
   {% assign review_1_judul = "Inspeksi yang Sangat Teliti" %}
   {% assign review_1_komentar = "Tim PT. Cipta Mas Jaya sangat detail dalam melakukan inspeksi boiler kami. Laporan yang diberikan sangat komprehensif." %}
   {% assign review_1_tanggal = "2025-11-25" %}
   {% assign review_1_verified = true %}
   {% assign review_1_helpful = 12 %}
   {% assign review_1_featured = true %}

   {% comment %} Review 2 {% endcomment %}
   {% assign review_2_nama = "Siti Rahayu" %}
   {% assign review_2_usaha = "Hotel di Jakarta" %}
   {% assign review_2_rating = 5 %}
   {% assign review_2_judul = "Pelayanan Cepat dan Profesional" %}
   {% assign review_2_komentar = "Proses riksa uji boiler hotel kami berjalan lancar. Sertifikat terbit tepat waktu." %}
   {% assign review_2_tanggal = "2025-11-28" %}
   {% assign review_2_verified = true %}
   {% assign review_2_helpful = 8 %}
   {% assign review_2_featured = true %}

   {% comment %} Review 3 {% endcomment %}
   {% assign review_3_nama = "Ahmad Wijaya" %}
   {% assign review_3_usaha = "Rumah Sakit di Surabaya" %}
   {% assign review_3_rating = 4 %}
   {% assign review_3_judul = "Hasil Inspeksi Memuaskan" %}
   {% assign review_3_komentar = "Inspector sangat kompeten dan memberikan penjelasan detail tentang kondisi boiler kami." %}
   {% assign review_3_tanggal = "2025-12-01" %}
   {% assign review_3_verified = true %}
   {% assign review_3_helpful = 5 %}
   {% assign review_3_featured = false %}
   ```

5. **Pastikan rating_id cocok**:
   - Front matter: `rating_id: riksa-uji-boiler`
   - File rating: `block--rating--riksa-uji-boiler.html`

### Schema yang Dihasilkan

Dengan rating file yang lengkap, schema Product akan otomatis memiliki:

```json
{
  "@type": "Product",
  "@id": "...#product",
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.8",
    "ratingCount": "3",
    "bestRating": "5",
    "worstRating": "1"
  },
  "review": [
    {
      "@type": "Review",
      "author": { "@type": "Person", "name": "Hendra Kusuma" },
      "datePublished": "2025-11-25",
      "name": "Inspeksi yang Sangat Teliti",
      "reviewRating": { "@type": "Rating", "ratingValue": "5" },
      "reviewBody": "Tim PT. Cipta Mas Jaya sangat detail..."
    }
  ]
}
```

### Review Guidelines
- Review adalah testimoni tentang **LAYANAN**, bukan artikel
- Isi: nama pelanggan, jenis usaha, rating (1-5), judul, komentar, tanggal
- Minimal 2-3 review (maksimal 4 review)
- `rating_count` harus sama dengan jumlah review
- `rating_average` harus dihitung dari rating semua review
- Review harus realistis dan spesifik

```
TodoWrite: Mark "Section 11: Rating File" as [completed]
TodoWrite: Mark "Section 12: Final verification" as [in_progress]
```

---

## ICON REFERENCE (Bootstrap Icons)

### Kategori Alat
```
bi-fire             : Boiler/Pesawat Uap
bi-box              : Bejana Tekan
bi-box-arrow-up     : Forklift/Pesawat Angkut
bi-arrows-vertical  : Crane
bi-building         : Elevator
bi-lightning        : Instalasi Listrik
```

### Proses & Inspeksi
```
bi-clipboard-check  : Dokumen/Checklist
bi-eye              : Pemeriksaan Visual
bi-gear             : Pengujian Mekanis
bi-shield-check     : Safety Testing
bi-file-earmark-text: Laporan
bi-award            : Sertifikat
```

### Komponen
```
bi-cylinder         : Drum/Tank
bi-diagram-3        : Pipa/Tube
bi-droplet-half     : Hidrolik
bi-sign-stop        : Rem
bi-arrows-move      : Kemudi
bi-plug             : Elektrikal
bi-thermometer      : Suhu
bi-speedometer      : Tekanan
bi-water            : Water Level
bi-cpu              : Sistem Kontrol
```

### Jenis Alat
```
bi-fire             : Fire Tube
bi-droplet          : Water Tube
bi-lightning        : Electric
bi-cloud            : Steam
bi-thermometer-half : Hot Water
bi-box              : Package
```

---

## CHECKLIST VERIFIKASI

### Front Matter
- [ ] layout: `node/node--service`
- [ ] title terisi dengan format "Riksa Uji [Nama Alat]"
- [ ] description 150-160 karakter, sertakan kata kunci
- [ ] para_1 terisi dengan definisi dan dasar hukum
- [ ] permalink sesuai struktur folder
- [ ] category terisi dengan kategori induk
- [ ] sub_category terisi
- [ ] certification_category valid
- [ ] service_type: "Safety Inspection"
- [ ] icon terisi (bi-xxx)
- [ ] image dan images[0-2] terisi
- [ ] area_served: "Indonesia"
- [ ] date dan last_modified_at format YYYY-MM-DD
- [ ] rating_id terisi (lowercase, dash-separated)
- [ ] custom_schema berisi schema/schema--service-reviews.html

### Section 2: intro
- [ ] name, para terisi
- [ ] subsections: 3 item (Dasar Hukum, Tim Inspector, Cakupan)
- [ ] Subsection 1 memiliki 2 nested subsections (h4)
- [ ] Setiap subsection: h3, para terisi

### Section 3: jenis_alat
- [ ] Nama field: jenis_[nama-alat]
- [ ] name, description terisi
- [ ] items: 6 item
- [ ] Setiap item: name, description, icon valid
- [ ] footer terisi

### Section 4: komponen_inspeksi
- [ ] name, description terisi
- [ ] items: 6 item
- [ ] Setiap item: name, description, icon valid

### Section 5: proses_inspeksi
- [ ] name, description terisi
- [ ] totalTime format ISO 8601 (PTxH)
- [ ] steps: 6 langkah
- [ ] Setiap step: name, text terisi

### Section 6: cara_pemesanan
- [ ] name, description terisi
- [ ] totalTime format ISO 8601 (PxD)
- [ ] steps: 4 langkah
- [ ] Setiap step: name, text terisi

### Section 7: video_riksa_uji
- [ ] name, description terisi
- [ ] thumbnail terisi (atau kosong untuk fallback)
- [ ] src terisi (atau kosong jika belum ada video)
- [ ] duration format ISO 8601 (PTxMxS)
- [ ] upload_date format YYYY-MM-DD

### Section 8: offer_riksa_uji
- [ ] name, description, note terisi
- [ ] offers: 3 paket
- [ ] Setiap offer: name, description, price, price_currency, price_label terisi
- [ ] Setiap offer: features (5-6 item)
- [ ] Setiap offer: availability (InStock/OutOfStock/PreOrder)
- [ ] Setiap offer: valid_from, valid_through format YYYY-MM-DD
- [ ] Satu offer dengan is_featured: true

### Section 9: schedule_riksa_uji
- [ ] name, description, location terisi
- [ ] time_start, time_end format HH:MM
- [ ] weeks_ahead_min, weeks_ahead_max terisi (integer)
- [ ] count terisi (integer)
- [ ] exclude_weekend: true/false
- [ ] note terisi

### Section 10: faq_riksa_uji
- [ ] name, description terisi
- [ ] faqs: 6 item
- [ ] Setiap faq: question, answer terisi

### Rating File
- [ ] File rating dibuat di _includes/reusable/services/ratings/
- [ ] Nama file: block--rating--[rating_id].html
- [ ] rating_average, rating_count, rating_best, rating_worst terisi
- [ ] rating_dist_1 sampai rating_dist_5 terisi (jumlah harus = rating_count)
- [ ] rating_updated format YYYY-MM-DD
- [ ] Minimal 2-3 review dengan data lengkap (nama, usaha, rating, judul, komentar, tanggal)
- [ ] Setiap review: verified, helpful, featured terisi
- [ ] rating_average harus sesuai dengan rata-rata rating review

### Final Check
- [ ] Semua field terisi (tidak ada yang kosong "")
- [ ] Semua icon Bootstrap valid (bi-xxx)
- [ ] Semua tanggal format YYYY-MM-DD
- [ ] Semua durasi format ISO 8601
- [ ] permalink sesuai struktur folder
- [ ] rating_id cocok dengan nama file rating
- [ ] Preview di localhost sebelum deploy

---

## CONTOH FILE LENGKAP

Lihat: `_services/riksa-uji-pesawat-uap-bejana-tekan/pesawat-uap/riksa-uji-boiler/riksa-uji-boiler.md`

```
TodoWrite: Mark "Section 12: Final verification" as [completed]
```

### Build & Preview
```bash
./rebuild.sh
# Buka browser: http://localhost:4000/[path-to-service]
```
