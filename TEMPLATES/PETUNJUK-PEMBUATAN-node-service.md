# ============================================================================
# PETUNJUK PENGISIAN TEMPLATE NODE SERVICE
# ============================================================================
# File: TEMPLATE-node-service.md
# Lokasi: /TEMPLATES/TEMPLATE-node-service.md
# ============================================================================

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

## CARA KERJA (BATCH SYSTEM + TODO)

Konten template ini sangat panjang. JANGAN mengisi sekali jalan.
Gunakan sistem batch dengan TodoWrite untuk menjaga kualitas konten.

### WAJIB: Gunakan TodoWrite untuk Setiap Batch

```
SEBELUM MULAI, buat todo list dengan 4 batch:
┌─────────────────────────────────────────────────────────────┐
│ TodoWrite:                                                  │
│ 1. [pending] BATCH 1: Front Matter + Copy template          │
│ 2. [pending] BATCH 2: Intro + Jenis Alat + Komponen         │
│ 3. [pending] BATCH 3: Proses + Cara Pemesanan + Video       │
│ 4. [pending] BATCH 4: Offer + Schedule + FAQ + Rating File  │
└─────────────────────────────────────────────────────────────┘

UNTUK SETIAP BATCH:
1. Mark todo as [in_progress]
2. Baca section terkait dari file sumber (jika ada)
3. Tulis konten ke file tujuan (Edit tool)
4. Mark todo as [completed]
5. JANGAN lanjut ke batch berikutnya sebelum completed
```

### Alur Kerja Detail:

```
BATCH 1: Salin template + Front Matter
         STATUS: [in_progress] saat dikerjakan
         - Copy TEMPLATE-node-service.md ke folder tujuan
         - Isi: title, description, para_1
         - Isi: permalink, category, sub_category
         - Isi: certification_category, service_type, icon
         - Isi: image, images, area_served
         - Isi: date, last_modified_at, rating_id
         - SIMPAN → Mark [completed]

BATCH 2: Intro + Jenis Alat + Komponen
         STATUS: [in_progress] saat dikerjakan
         - Isi: intro (name, para, subsections)
         - Isi: jenis_alat (name, description, items, footer)
         - Isi: komponen_inspeksi (name, description, items)
         - SIMPAN → Mark [completed]

BATCH 3: Proses + Cara Pemesanan + Video
         STATUS: [in_progress] saat dikerjakan
         - Isi: proses_inspeksi (HowTo schema)
         - Isi: cara_pemesanan (HowTo schema)
         - Isi: video_riksa_uji (jika ada video)
         - SIMPAN → Mark [completed]

BATCH 4: Offer + Schedule + FAQ + Rating File
         STATUS: [in_progress] saat dikerjakan
         - Isi: offer_riksa_uji (Offer schema)
         - Isi: schedule_riksa_uji (Event schema)
         - Isi: faq_riksa_uji (FAQ schema)
         - Buat file rating (lihat section Rating File)
         - SIMPAN → Mark [completed]
         - REBUILD & VERIFY
```

---

## BATCH 1: FRONT MATTER

### title
```yaml
title: "Riksa Uji [Nama Alat]"
```
- Format: "Riksa Uji" + nama alat
- Tanpa kata "Jasa" di depan
- Contoh: "Riksa Uji Boiler", "Riksa Uji Forklift"

### description
```yaml
description: "[150-160 karakter untuk SEO meta description]"
```
- Jelaskan singkat layanan riksa uji alat tersebut
- Sertakan kata kunci: "jasa", "riksa uji", "inspeksi K3", "sertifikat"
- Contoh: "Jasa riksa uji dan inspeksi K3 boiler profesional dengan sertifikat resmi Kementerian Ketenagakerjaan RI."

### para_1
```yaml
para_1: "[Paragraf pertama konten - definisi riksa uji alat tersebut]"
```
- Paragraf pembuka setelah H1
- Jelaskan apa itu riksa uji alat tersebut
- Sebutkan dasar hukum (Permenaker)

### permalink
```yaml
permalink: "/layanan/[kategori]/[subkategori]/riksa-uji-[nama-alat]/"
```
- Format: /layanan/[kategori]/[subkategori]/riksa-uji-[nama-alat]/
- Contoh:
  - /layanan/riksa-uji-pesawat-uap-bejana-tekan/pesawat-uap/riksa-uji-boiler/
  - /layanan/riksa-uji-pesawat-angkat-angkut/pesawat-angkut/riksa-uji-forklift/

### category & sub_category
```yaml
category: "[Kategori Induk]"
sub_category: "Riksa Uji [Nama Alat]"
```
- category: Nama kategori induk
  - "Riksa Uji Pesawat Uap Bejana Tekan"
  - "Riksa Uji Pesawat Angkat Angkut"
  - "Riksa Uji Elevator"
  - "Riksa Uji Instalasi Listrik"
- sub_category: "Riksa Uji" + nama alat spesifik

### certification_category
```yaml
certification_category: "[jenis-sertifikasi]"
```
- Kategori sertifikasi untuk schema
- Opsi: pesawat-uap, bejana-tekan, pesawat-angkat, pesawat-angkut, elevator, listrik

### service_type
```yaml
service_type: "Safety Inspection"
```
- Tipe layanan (biasanya "Safety Inspection")

### icon
```yaml
icon: "[bi-xxx]"
```
- Bootstrap Icon untuk layanan
- Contoh: bi-fire (boiler), bi-box-arrow-up (forklift), bi-arrows-vertical (crane)

### image & images
```yaml
image: "/assets/images/services/[nama-file].jpg"
images:
  - "/assets/images/services/1.jpg"
  - "/assets/images/services/2.jpg"
  - "/assets/images/services/3.jpg"
```
- image: Featured image untuk og:image dan schema
- images: 3 gambar untuk gallery
- Gunakan default jika belum ada: "/assets/images/services/default-[kategori].svg"

### area_served
```yaml
area_served: "Indonesia"
```
- Area layanan (biasanya "Indonesia")

### date & last_modified_at
```yaml
date: 2025-12-01
last_modified_at: 2025-12-01
```
- date: Tanggal publikasi pertama
- last_modified_at: Tanggal update terakhir

### rating_id
```yaml
rating_id: riksa-uji-[nama-alat]
```
- ID untuk menghubungkan service dengan file rating/review
- Format: `riksa-uji-[nama-alat]` (lowercase, dash-separated)
- File rating harus dibuat di: `_includes/reusable/services/ratings/block--rating--[rating_id].html`
- **Template**: Copy dari `TEMPLATES/TEMPLATE-block-rating-service.html`

### custom_schema
```yaml
custom_schema:
  - schema/schema--service-reviews.html
```
- Schema tambahan yang di-include
- Untuk service dengan rating, gunakan: schema/schema--service-reviews.html

### lastmod
```yaml
lastmod: '2025-12-01T16:40:00+0700'
```
- Auto-updated oleh propagate-timestamp plugin
- Digunakan untuk sorting

---

## BATCH 2: INTRO + JENIS ALAT + KOMPONEN

### intro
```yaml
intro:
  name: "Layanan Riksa Uji [Nama Alat] Profesional"
  para: "[Paragraf pembuka tentang layanan PT. Cipta Mas Jaya]"
  subsections:
    - h3: "Dasar Hukum dan Standar Keselamatan"
      para: "[Penjelasan tentang regulasi yang berlaku]"
      subsections:
        - h4: "[Permenaker terkait]"
          para: "[Detail peraturan]"
        - h4: "[Standar Internasional - ASME/SNI/dll]"
          para: "[Detail standar]"
    - h3: "Tim Inspector Bersertifikat"
      para: "[Penjelasan tentang kualifikasi inspector]"
    - h3: "Cakupan Layanan Nasional"
      para: "[Penjelasan tentang coverage area]"
```
- 3 subsections: Dasar Hukum, Tim Inspector, Cakupan Layanan
- Subsection 1 memiliki nested subsections untuk detail peraturan

### jenis_alat (ItemList)
```yaml
jenis_boiler:  # Ganti dengan jenis_[nama-alat]
  name: "Jenis [Nama Alat] yang Kami Layani"
  description: "Kami melayani riksa uji untuk berbagai jenis [nama alat]"
  items:
    - name: "[Jenis 1]"
      description: "[Deskripsi jenis 1]"
      icon: "bi-xxx"
    - name: "[Jenis 2]"
      description: "[Deskripsi jenis 2]"
      icon: "bi-xxx"
    # ... dst (6 items)
  footer: "Untuk jenis [nama alat] lainnya..."
```
- Nama field: `jenis_[nama-alat]` (misal: jenis_boiler, jenis_forklift)
- 6 items jenis alat yang dilayani
- Setiap item: name, description, icon

### komponen_inspeksi (ItemList)
```yaml
komponen_inspeksi:
  name: "Komponen yang Diperiksa"
  description: "Inspeksi menyeluruh pada seluruh komponen keselamatan"
  items:
    - name: "[Komponen 1]"
      description: "[Apa yang diperiksa]"
      icon: "bi-xxx"
    - name: "[Komponen 2]"
      description: "[Apa yang diperiksa]"
      icon: "bi-xxx"
    # ... dst (6 items)
```
- 6 komponen utama yang diperiksa
- Sesuaikan dengan jenis alat

---

## BATCH 3: PROSES + CARA PEMESANAN + VIDEO

### proses_inspeksi (HowTo Schema)
```yaml
proses_inspeksi:
  name: "Proses Riksa Uji [Nama Alat]"
  description: "Tahapan inspeksi dan pengujian K3 [nama alat] oleh inspector bersertifikat"
  totalTime: "PT2H"  # Format ISO 8601
  steps:
    - name: "Pemeriksaan Dokumen"
      text: "[Detail langkah 1]"
    - name: "Inspeksi Visual"
      text: "[Detail langkah 2]"
    - name: "[Uji Spesifik Alat]"
      text: "[Detail langkah 3]"
    - name: "[Uji Fungsi]"
      text: "[Detail langkah 4]"
    - name: "[Load Test / Pressure Test]"
      text: "[Detail langkah 5]"
    - name: "Dokumentasi & Laporan"
      text: "[Detail langkah 6]"
```
- totalTime: Format ISO 8601 (PT2H = 2 jam, PT4H = 4 jam)
- 6 langkah proses inspeksi
- Digunakan untuk Google HowTo rich snippet

### cara_pemesanan (HowTo Schema)
```yaml
cara_pemesanan:
  name: "Cara Pemesanan Riksa Uji [Nama Alat]"
  description: "Langkah-langkah mudah untuk memesan jasa riksa uji"
  totalTime: "P7D"  # 7 hari
  steps:
    - name: "Hubungi Kami"
      text: "Hubungi tim kami via WhatsApp atau telepon..."
    - name: "Penjadwalan Inspeksi"
      text: "Tim kami akan mengatur jadwal inspeksi..."
    - name: "Inspeksi On-Site"
      text: "Inspector bersertifikat kami datang ke lokasi..."
    - name: "Penerbitan Sertifikat"
      text: "Setelah lulus inspeksi, sertifikat diterbitkan..."
```
- 4 langkah standar pemesanan
- totalTime: Estimasi waktu total (P7D = 7 hari)

### video_riksa_uji (VideoObject Schema)
```yaml
video_riksa_uji:
  name: "Proses Riksa Uji [Nama Alat] - PT. Cipta Mas Jaya"
  description: "Video dokumentasi proses riksa uji..."
  thumbnail: "/assets/images/services/video-thumb.jpg"
  src: "/assets/videos/service-page/riksa-uji-[nama-alat].webm"
  duration: "PT1M30S"  # 1 menit 30 detik
  upload_date: "2025-12-01"
```
- Kosongkan src dan duration jika belum ada video
- Digunakan untuk Google Video rich snippet

---

## BATCH 4: OFFER + SCHEDULE + FAQ + RATING

### offer_riksa_uji (Offer Schema)
```yaml
offer_riksa_uji:
  name: "Paket Riksa Uji [Nama Alat]"
  description: "Layanan riksa uji dan inspeksi K3 dengan sertifikat resmi"
  note: "Harga belum termasuk biaya transportasi..."
  offers:
    - name: "Riksa Uji [Nama Alat] Standar"
      description: "Inspeksi lengkap untuk 1 unit..."
      price: 2500000
      price_currency: IDR
      price_label: "per unit"
      features:
        - "Inspeksi visual lengkap"
        - "Pengujian sistem..."
        - "Sertifikat resmi Disnaker"
        - "Laporan inspeksi detail"
      availability: InStock
      valid_from: "2025-01-01"
      valid_through: "2025-12-31"
    - name: "Riksa Uji [Nama Alat] Heavy Duty"
      description: "Inspeksi untuk kapasitas besar..."
      price: 3500000
      # ... sama seperti di atas
    - name: "Paket Riksa Uji Multi Unit"
      description: "Inspeksi untuk 3+ unit dengan diskon..."
      price: 2000000
      price_label: "per unit (min. 3 unit)"
      is_featured: true
      # ... sama seperti di atas
```
- 3 paket penawaran (Standar, Heavy Duty, Multi Unit)
- is_featured: true untuk paket yang di-highlight

### schedule_riksa_uji (Event Schema)
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
  note: "Jadwal dapat disesuaikan dengan kebutuhan..."
```
- Konfigurasi untuk widget jadwal inspeksi
- weeks_ahead_min/max: Range minggu yang ditampilkan
- count: Jumlah slot yang ditampilkan

### faq_riksa_uji (FAQPage Schema)
```yaml
faq_riksa_uji:
  name: "FAQ Riksa Uji [Nama Alat]"
  description: "Pertanyaan yang sering diajukan seputar layanan"
  faqs:
    - question: "Apa itu riksa uji [nama alat]?"
      answer: "[Jawaban lengkap]"
    - question: "Berapa lama proses riksa uji?"
      answer: "[Jawaban dengan detail waktu]"
    - question: "Apa saja yang diperiksa?"
      answer: "[Daftar komponen yang diperiksa]"
    - question: "Berapa biaya riksa uji?"
      answer: "[Jawaban dengan range harga atau 'hubungi kami']"
    - question: "Apakah sertifikat berlaku nasional?"
      answer: "[Konfirmasi berlaku nasional]"
    - question: "Berapa lama masa berlaku sertifikat?"
      answer: "[Jawaban dengan periode - 1 tahun/2 tahun]"
```
- 6 FAQ standar
- Digunakan untuk Google FAQ rich snippet

---

## RATING FILE

### Membuat File Rating

1. **Copy template**:
   ```
   TEMPLATES/TEMPLATE-block-rating-service.html
   ```

2. **Paste ke lokasi**:
   ```
   _includes/reusable/services/ratings/block--rating--riksa-uji-[nama-alat].html
   ```

3. **Isi data rating**:
   ```liquid
   {% assign rating_average = 4.5 %}
   {% assign rating_count = 3 %}
   {% assign rating_dist_5 = 2 %}
   {% assign rating_dist_4 = 1 %}
   {% assign rating_updated = "2025-12-01" %}
   ```

4. **Isi data review** (2-3 review):
   ```liquid
   {% assign review_1_nama = "Hendra Kusuma" %}
   {% assign review_1_usaha = "Pabrik Tekstil di Bandung" %}
   {% assign review_1_rating = 5 %}
   {% assign review_1_judul = "Inspeksi yang Sangat Teliti" %}
   {% assign review_1_komentar = "Tim PT. Cipta Mas Jaya sangat detail..." %}
   {% assign review_1_tanggal = "2025-11-25" %}
   ```

5. **Pastikan rating_id di frontmatter sama**:
   ```yaml
   rating_id: riksa-uji-[nama-alat]
   ```

### Review Guidelines
- Review adalah testimoni tentang **LAYANAN**, bukan artikel
- Isi: nama pelanggan, jenis usaha, rating (1-5), judul, komentar
- 2-3 review featured (featured: true)
- Review harus realistis dan spesifik

---

## ICON REFERENCE (Bootstrap Icons)

### Kategori Alat
- bi-fire : Boiler/Pesawat Uap
- bi-box : Bejana Tekan
- bi-box-arrow-up : Forklift/Pesawat Angkat
- bi-arrows-vertical : Crane
- bi-building : Elevator
- bi-lightning : Instalasi Listrik

### Proses & Inspeksi
- bi-clipboard-check : Dokumen/Checklist
- bi-eye : Pemeriksaan Visual
- bi-gear : Pengujian Mekanis
- bi-shield-check : Safety Testing
- bi-file-earmark-text : Laporan

### Komponen
- bi-droplet-half : Hidrolik
- bi-sign-stop : Rem
- bi-arrows-move : Kemudi
- bi-plug : Elektrikal
- bi-thermometer : Suhu
- bi-speedometer : Tekanan

---

## CHECKLIST SEBELUM PUBLISH

- [ ] Semua field terisi (tidak ada yang kosong "")
- [ ] permalink sesuai struktur folder
- [ ] rating_id sesuai dengan file rating
- [ ] File rating sudah dibuat di _includes/reusable/services/ratings/
- [ ] custom_schema berisi schema/schema--service-reviews.html
- [ ] 6 items di jenis_alat dan komponen_inspeksi
- [ ] 6 steps di proses_inspeksi
- [ ] 4 steps di cara_pemesanan
- [ ] 3 offers di offer_riksa_uji
- [ ] 6 FAQs di faq_riksa_uji
- [ ] Icon Bootstrap valid (bi-xxx)
- [ ] Tanggal format YYYY-MM-DD
- [ ] Preview di localhost sebelum deploy

---

## CONTOH PENGGUNAAN

```
User: "Buat halaman service untuk riksa uji pressure vessel"