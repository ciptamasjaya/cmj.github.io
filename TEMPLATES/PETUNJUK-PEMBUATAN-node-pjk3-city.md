# ============================================================================
# PETUNJUK PENGISIAN TEMPLATE NODE PJK3 CITY
# ============================================================================
# File: TEMPLATE-node-pjk3-city.md
# Lokasi: /TEMPLATES/TEMPLATE-node-pjk3-city.md
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
│ 2. [pending] BATCH 2: Hero + Company Intro                  │
│ 3. [pending] BATCH 3: Services + Area                       │
│ 4. [pending] BATCH 4: Risks + Role + Business               │
│ 5. [pending] BATCH 5: City + Coverage                       │
│ 6. [pending] BATCH 6: Order + Testimonials                  │
│ 7. [pending] BATCH 7: Tips + FAQ                            │
│ 8. [pending] BATCH 8: About City + Conclusion               │
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
         - Copy TEMPLATE-node-pjk3-city.md ke file tujuan
         - Isi: title, date, author, description, area_served
         - Isi: categories, tags
         - Isi: images, section_gallery, video, section_video
         - SIMPAN → Mark [completed]

BATCH 2: Hero + Company Intro
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_hero
         - Isi: section_company_intro
         - SIMPAN → Mark [completed]

BATCH 3: Services + Area
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_services
         - Isi: section_area
         - SIMPAN → Mark [completed]

BATCH 4: Risks + Role + Business
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_risks
         - Isi: section_role
         - Isi: section_business
         - SIMPAN → Mark [completed]

BATCH 5: City + Coverage
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_city
         - Isi: section_coverage
         - SIMPAN → Mark [completed]

BATCH 6: Order + Testimonials
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_order
         - Isi: section_testimonials
         - SIMPAN → Mark [completed]

BATCH 7: Tips + FAQ
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_tips
         - Isi: section_faq
         - SIMPAN → Mark [completed]

BATCH 8: About City + Conclusion
         STATUS: [in_progress] saat dikerjakan
         - Isi: section_about_city
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
User: "Konversi pjk3-bandung.md ke template baru"

Assistant Response:
┌─────────────────────────────────────────────────────────────┐
│ [TodoWrite] Membuat todo list untuk konversi:               │
│                                                             │
│ 1. [pending] BATCH 1: Front Matter + Copy template          │
│ 2. [pending] BATCH 2: Hero + Company Intro                  │
│ 3. [pending] BATCH 3: Services + Area                       │
│ 4. [pending] BATCH 4: Risks + Role + Business               │
│ 5. [pending] BATCH 5: City + Coverage                       │
│ 6. [pending] BATCH 6: Order + Testimonials                  │
│ 7. [pending] BATCH 7: Tips + FAQ                            │
│ 8. [pending] BATCH 8: About City + Conclusion               │
└─────────────────────────────────────────────────────────────┘

[TodoWrite] Mark BATCH 1 as [in_progress]
[Read] Baca file sumber: pjk3-bandung.md
[Read] Baca template: TEMPLATE-node-pjk3-city.md
[Write] Copy template ke _posts/2025-05-24-pjk3-bandung.md
[Edit] Isi front matter dari data sumber
[TodoWrite] Mark BATCH 1 as [completed]

[TodoWrite] Mark BATCH 2 as [in_progress]
[Read] Baca section hero dan company intro dari sumber
[Edit] Isi section_hero
[Edit] Isi section_company_intro
[TodoWrite] Mark BATCH 2 as [completed]

... (lanjut sampai BATCH 8)

[TodoWrite] Semua batch completed
[Bash] ./rebuild.sh
```

---

## BATCH 1: FRONT MATTER

### title
```yaml
title: "PJK3 [Nama Kota]"
```
- Format: "PJK3" + nama kota
- Contoh: "PJK3 Bekasi", "PJK3 Jakarta", "PJK3 Surabaya"

### date
```yaml
date: 2025-05-24 18:21:24
```
- Format: YYYY-MM-DD HH:MM:SS
- Tanggal publikasi pertama

### author
```yaml
author: admin
```
- Nama penulis/editor

### description
```yaml
description: "PT. Cipta Mas Jaya adalah PJK3 yang melayani jasa riksa uji K3 di wilayah [Nama Kota]. Hubungi 08568258841 untuk semua kebutuhan riksa uji Anda."
```
- 150-160 karakter untuk SEO meta description
- Sertakan nama kota dan nomor telepon

### area_served
```yaml
area_served: "Bekasi"
```
- Nama kota/wilayah yang dilayani
- Digunakan di berbagai section sebagai fallback

### extra_js
```yaml
extra_js:
  - /assets/js/gallery-modal.js
```
- JavaScript tambahan untuk halaman
- Untuk gallery modal, selalu sertakan gallery-modal.js

### categories
```yaml
categories:
  - Artikel
```
- Kategori utama: "Artikel"

### tags
```yaml
tags:
  - Jasa Inspeksi
  - Jasa Riksa Uji
  - Jasa Riksa Uji K3
  - PJK3
  - PJK3 Riksa Uji
  - Riksa Uji
  - Riksa Uji K3
```
- 7 tags standar untuk halaman PJK3 city
- Bisa ditambahkan tag spesifik kota jika perlu

### images
```yaml
images:
  - ""
  - ""
  - ""
  - ""
```
- images[0]: Featured image untuk og:image, schema, thumbnail
- images[1-3]: Gallery images
- Jika kosong, fallback ke default i1-i4.svg

### section_gallery
```yaml
section_gallery:
  title: "Galeri Layanan"
  area: "Bekasi"
  description: "Dokumentasi kegiatan riksa uji K3 di wilayah Bekasi dan sekitarnya"
  caption: "Foto dokumentasi layanan PT. Cipta Mas Jaya"
```
- title: Judul section gallery
- area: Nama kota (untuk display)
- description: Deskripsi singkat gallery
- caption: Caption untuk gambar

### video & section_video
```yaml
video: ""
section_video:
  title: "Video Layanan"
  area: "Bekasi"
  description: "Lihat proses inspeksi dan pengujian K3 oleh tim profesional kami"
  caption: "Dokumentasi video layanan PT. Cipta Mas Jaya"
  cta_text: "Ingin melihat langsung proses inspeksi K3 di lokasi Anda?"
  cta_button: "Hubungi Kami"
```
- video: Path ke file video (kosong = fallback ke default)
- title: Judul section video
- area: Nama kota
- description: Deskripsi video
- caption: Caption video
- cta_text: Teks ajakan di bawah video
- cta_button: Label tombol CTA

---

## BATCH 2: HERO + COMPANY INTRO

### section_hero
```yaml
section_hero:
  title: "Butuh Layanan Riksa Uji K3"
  theme: "blue"
  area: "Bekasi"
  description: "Sedang mencari jasa riksa uji K3 terpercaya di [Kota]? PT. Cipta Mas Jaya adalah PJK3 resmi berlisensi Kemenaker yang melayani inspeksi dan pengujian peralatan K3 dengan standar profesional untuk seluruh wilayah [Kota] dan sekitarnya."
  label_wilayah: "Melayani Wilayah:"
  wilayah_layanan:
    - [Wilayah 1]
    - [Wilayah 2]
    - ...
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

**Theme options:**
- `blue` - Default, professional
- `orange` - Industrial, warehouse
- `red` - Heat, danger (boiler)
- `green` - Safety, compliance
- `purple` - Premium, specialized
- `teal` - Technical, precision
- `amber` - Warning, caution
- `indigo` - Corporate

**wilayah_layanan:**
- Daftar 6-10 wilayah/kecamatan utama yang dilayani
- Prioritaskan kawasan industri dan area strategis

### section_company_intro
```yaml
section_company_intro:
  title: "PT. Cipta Mas Jaya: sebagai PJK3 Riksa Uji di [Kota]"
  company_name: "PT. Cipta Mas Jaya"
  area: "Bekasi"
  intro: "PT. Cipta Mas Jaya adalah Perusahaan Jasa Keselamatan dan Kesehatan Kerja Riksa Uji (PJK3 Riksa Uji) resmi yang melayani kebutuhan riksa uji peralatan kerja di wilayah [Kota]."
  subsections:
    - title: "Apa Itu PJK3 dan Perannya dalam Keselamatan Kerja"
      paragraphs:
        - "[Paragraf 1: Definisi PJK3]"
        - "[Paragraf 2: Pentingnya PJK3 di wilayah tersebut]"
        - "[Paragraf 3: Peran edukatif dan konsultatif]"

    - title: "Layanan Riksa Uji K3 dari PT. Cipta Mas Jaya di [Kota]"
      paragraphs:
        - "[Paragraf 1: Jenis layanan yang tersedia]"
        - "[Paragraf 2: Keunggulan dan jangkauan layanan]"
```
- 2 subsections dengan 2-3 paragraf masing-masing
- Sesuaikan dengan karakteristik kota

---

## BATCH 3: SERVICES + AREA

### section_services
```yaml
section_services:
  title: "Keunggulan PT. Cipta Mas Jaya sebagai PJK3 Terdekat dan Profesional"
  intro: "PT. Cipta Mas Jaya telah dikenal luas sebagai perusahaan jasa inspeksi dan pengujian keselamatan kerja (PJK3) yang terpercaya dan profesional."
  services:
    - title: "Riksa Uji Pesawat Angkat Angkut"
      description: "Pemeriksaan menyeluruh terhadap crane, forklift, hoist, dan alat angkut lainnya..."
      icon: "bi-box-seam"

    - title: "Riksa Uji Pesawat Uap dan Bejana Tekan"
      description: "Pemeriksaan ketat terhadap tekanan, kebocoran, dan kondisi fisik..."
      icon: "bi-thermometer-half"

    - title: "Riksa Uji Pesawat Tenaga dan Produksi"
      description: "Inspeksi berbagai mesin dan alat berat..."
      icon: "bi-gear"

    - title: "Riksa Uji Elevator dan Eskalator"
      description: "Pemeriksaan komponen mekanik, sistem pengaman..."
      icon: "bi-arrow-up-square"

    - title: "Riksa Uji Instalasi Listrik dan Penyalur Petir"
      description: "Pengecekan isolasi, grounding, serta sistem penyalur petir..."
      icon: "bi-lightning"

    - title: "Riksa Uji Sarana Proteksi Kebakaran"
      description: "Pemeriksaan perangkat pemadam kebakaran, hydrant..."
      icon: "bi-fire"
```
- 6 layanan utama (standar)
- Sesuaikan deskripsi dengan kebutuhan industri di kota tersebut

### section_area
```yaml
section_area:
  title: "Karakteristik Wilayah dan Industri di [Kota]"
  intro: "[Pengantar tentang karakteristik wilayah]"
  characteristics:
    - title: "[Karakteristik 1 - misal: Zona Industri]"
      description: "[Deskripsi]"
      icon: "bi-building"

    - title: "[Karakteristik 2 - misal: Permukiman]"
      description: "[Deskripsi]"
      icon: "bi-house"

    - title: "[Karakteristik 3 - misal: Infrastruktur]"
      description: "[Deskripsi]"
      icon: "bi-signpost-2"

    - title: "[Karakteristik 4 - misal: Pusat Komersial]"
      description: "[Deskripsi]"
      icon: "bi-shop"
```
- 4 karakteristik utama wilayah
- Sesuaikan dengan kondisi geografis dan ekonomi kota

---

## BATCH 4: RISKS + ROLE + BUSINESS

### section_risks
```yaml
section_risks:
  title: "Risiko K3 di Kawasan Industri dan Hunian [Kota]"
  intro: "[Pengantar tentang risiko K3 di wilayah tersebut]"
  risks:
    - title: "[Risiko 1]"
      description: "[Deskripsi risiko]"
      severity: "high"
      icon: "bi-exclamation-octagon"

    - title: "[Risiko 2]"
      description: "[Deskripsi risiko]"
      severity: "high"
      icon: "bi-lightning-charge"

    - title: "[Risiko 3]"
      description: "[Deskripsi risiko]"
      severity: "medium"
      icon: "bi-fire"

    - title: "[Risiko 4]"
      description: "[Deskripsi risiko]"
      severity: "medium"
      icon: "bi-cone-striped"
```
- 4 risiko K3 utama
- severity: "high", "medium", atau "low"

### section_role
```yaml
section_role:
  title: "Peran Strategis PJK3 dalam Pembangunan Kota [Kota]"
  intro: "[Pengantar tentang peran PJK3]"
  roles:
    - title: "[Peran 1 - misal: Mendukung Proyek Konstruksi]"
      description: "[Deskripsi]"
      icon: "bi-building-add"

    - title: "[Peran 2 - misal: Kepatuhan K3 Sektor Swasta]"
      description: "[Deskripsi]"
      icon: "bi-clipboard-check"

    - title: "[Peran 3 - misal: Edukasi UMKM]"
      description: "[Deskripsi]"
      icon: "bi-mortarboard"

    - title: "[Peran 4 - misal: Keselamatan Transportasi]"
      description: "[Deskripsi]"
      icon: "bi-train-front"
```
- 4 peran strategis PJK3

### section_business
```yaml
section_business:
  title: "Potensi Bisnis dan Investasi di Wilayah [Kota]"
  intro: "[Pengantar tentang potensi bisnis]"
  potentials:
    - title: "[Potensi 1 - misal: Kawasan Industri Terpadu]"
      description: "[Deskripsi]"
      icon: "bi-buildings"

    - title: "[Potensi 2 - misal: Startup dan Teknologi]"
      description: "[Deskripsi]"
      icon: "bi-rocket-takeoff"

    - title: "[Potensi 3 - misal: Kelancaran Operasional]"
      description: "[Deskripsi]"
      icon: "bi-graph-up"

    - title: "[Potensi 4 - misal: Minimalkan Downtime]"
      description: "[Deskripsi]"
      icon: "bi-clock-history"
```
- 4 potensi bisnis/investasi

---

## BATCH 5: CITY + COVERAGE

### section_city
```yaml
section_city:
  title: "Tentang Kota [Kota]"
  city_name: "[Kota]"
  intro: "[Pengantar singkat tentang kota]"
  highlights:
    - title: "[Highlight 1 - misal: Posisi Strategis]"
      description: "[Deskripsi]"
      icon: "bi-geo-alt"

    - title: "[Highlight 2 - misal: Pertumbuhan Ekonomi]"
      description: "[Deskripsi]"
      icon: "bi-graph-up-arrow"

    - title: "[Highlight 3 - misal: Komitmen Pemerintah]"
      description: "[Deskripsi]"
      icon: "bi-shield-check"

    - title: "[Highlight 4 - misal: Layanan Terintegrasi]"
      description: "[Deskripsi]"
      icon: "bi-cpu"
```
- 4 highlights tentang kota

### section_coverage
```yaml
section_coverage:
  title: "Area Pelayanan Riksa Uji"
  area: "[Kota]"
  intro: "PT. Cipta Mas Jaya melayani inspeksi dan riksa uji K3 ke seluruh wilayah [Kota] dan sekitarnya..."

  zona_industri:
    - nama: "[Kawasan Industri 1]"
      kawasan:
        - "[Sub-kawasan 1]"
        - "[Sub-kawasan 2]"
        - "[Sub-kawasan 3]"
      warna: "primary"

    - nama: "[Kawasan Industri 2]"
      kawasan:
        - "[Sub-kawasan 1]"
        - "[Sub-kawasan 2]"
        - "[Sub-kawasan 3]"
      warna: "success"

    - nama: "[Kawasan Industri 3]"
      kawasan:
        - "[Sub-kawasan 1]"
        - "[Sub-kawasan 2]"
        - "[Sub-kawasan 3]"
      warna: "info"

  judul_industri: "Kawasan Industri Utama"
  deskripsi_industri: "Kawasan industri strategis dengan kebutuhan inspeksi K3 tinggi..."

  wilayah_kota:
    - nama: "[Kecamatan 1]"
      kelurahan:
        - "[Kelurahan 1, Kelurahan 2]"
        - "[Kelurahan 3, Kelurahan 4]"
        - "[Kelurahan 5]"
      warna: "primary"
    # ... (4 wilayah kota)

  judul_kota: "Wilayah Kota [Kota]"
  deskripsi_kota: "Kecamatan dan kelurahan di pusat Kota [Kota]..."

  wilayah_pinggiran:
    - nama: "[Kecamatan Pinggiran 1]"
      kelurahan:
        - "[Kelurahan 1, Kelurahan 2]"
        - "[Kelurahan 3, Kelurahan 4]"
      warna: "info"
    # ... (2 wilayah pinggiran)

  judul_pinggiran: "Wilayah [Nama Area] & Sekitarnya"
  deskripsi_pinggiran: "Area industri dan pengembangan..."

  kecamatan_lainnya:
    - "[Kecamatan 1]"
    - "[Kecamatan 2]"
    # ... (8 kecamatan)

  landmark_industri:
    - nama: "[Landmark 1]"
      icon: "bi-water"
      warna: "primary"
    - nama: "[Landmark 2]"
      icon: "bi-box-seam"
      warna: "info"
    - nama: "[Landmark 3]"
      icon: "bi-building"
      warna: "success"

  judul_landmark_industri: "Fasilitas Logistik & Pergudangan"
  deskripsi_landmark_industri: "Area logistik strategis..."

  landmark_komersial:
    - nama: "[Mall 1]"
      icon: "bi-shop"
      warna: "warning"
    - nama: "[Mall 2]"
      icon: "bi-shop-window"
      warna: "info"
    - nama: "[Mall 3]"
      icon: "bi-building"
      warna: "danger"
    - nama: "[Mall 4]"
      icon: "bi-buildings"
      warna: "success"

  judul_landmark_komersial: "Pusat Perbelanjaan & Komersial"
  deskripsi_landmark_komersial: "Mall dan gedung komersial..."
```

**Warna Bootstrap:**
- primary (biru)
- success (hijau)
- info (cyan)
- warning (kuning)
- danger (merah)
- secondary (abu-abu)

---

## BATCH 6: ORDER + TESTIMONIALS

### section_order
```yaml
section_order:
  title: "Cara Pemesanan Layanan Riksa Uji"
  area: "[Kota]"
  phone: "08568258841"
  intro: "Proses pemesanan layanan riksa uji K3 di [Kota] sangat mudah dan praktis..."
  initial_steps:
    - title: "Identifikasi Kebutuhan"
      description: "Tentukan jenis peralatan yang perlu diinspeksi..."
      icon: "bi-search"
      color: "primary"

    - title: "Hubungi Tim Kami"
      description: "Langsung via telepon atau WhatsApp..."
      icon: "bi-telephone-fill"
      color: "success"

    - title: "Konsultasi Gratis"
      description: "Tim ahli kami akan membantu menganalisis..."
      icon: "bi-chat-dots-fill"
      color: "warning"

  final_steps:
    - title: "Pelaksanaan Inspeksi"
      description: "Tim teknisi bersertifikat akan datang ke lokasi..."
      icon: "bi-clipboard-check"
      color: "info"

    - title: "Pembuatan Laporan"
      description: "Hasil inspeksi disusun dalam laporan teknis..."
      icon: "bi-file-earmark-text"
      color: "danger"

    - title: "Penerbitan Sertifikat"
      description: "Setelah dinyatakan layak, sertifikat resmi..."
      icon: "bi-award"
      color: "success"
```
- 3 initial_steps + 3 final_steps = 6 langkah total

### section_testimonials
```yaml
section_testimonials:
  title: "Testimoni Pelanggan"
  area: "[Kota]"

  testimoni_industri:
    - nama: "[Nama Pelanggan]"
      jenis_usaha: "[Jenis Usaha di Lokasi]"
      jabatan: "[Jabatan]"
      rating: 5
      judul: "[Judul Singkat Testimoni]"
      komentar: "[Komentar lengkap]"
      warna: "primary"

    - nama: "[Nama Pelanggan 2]"
      # ... (sama)
      warna: "info"

  judul_industri: "Testimoni Klien Industri"
  deskripsi_industri: "Review dari klien pabrik dan kawasan industri di [Kota]"

  testimoni_komersial:
    - nama: "[Nama Pelanggan]"
      jenis_usaha: "[Jenis Usaha]"
      jabatan: "[Jabatan]"
      rating: 5
      judul: "[Judul Singkat]"
      komentar: "[Komentar]"
      warna: "success"

    - nama: "[Nama Pelanggan 2]"
      # ... (sama)
      warna: "warning"

  judul_komersial: "Testimoni Klien Komersial"
  deskripsi_komersial: "Review dari klien gedung perkantoran, mall, dan fasilitas publik"
```
- 2 testimoni industri + 2 testimoni komersial
- rating: 1-5 (integer)

---

## BATCH 7: TIPS + FAQ

### section_tips
```yaml
section_tips:
  title: "Tips Memilih PJK3"
  area: "[Kota]"
  intro: "Pastikan Anda memilih PJK3 yang memenuhi kriteria berikut..."

  tips:
    - kategori: "Legalitas & Izin"
      deskripsi: "Pastikan izin resmi dari Kemenaker"
      kriteria:
        - "Memiliki SK Penunjukan PJK3 yang masih berlaku"
        - "Terdaftar di Kemenaker RI"
        - "Memiliki izin operasional sesuai bidang layanan"
      warna: "primary"
      icon: "bi-file-earmark-check"

    - kategori: "Kompetensi Tim"
      deskripsi: "Tenaga ahli bersertifikat & berpengalaman"
      kriteria:
        - "Teknisi memiliki sertifikat kompetensi K3"
        - "Pengalaman minimal 5 tahun di bidangnya"
        - "Update terhadap regulasi K3 terbaru"
      warna: "success"
      icon: "bi-person-badge"

    - kategori: "Layanan & Harga"
      deskripsi: "Transparansi biaya & kualitas layanan"
      kriteria:
        - "Penawaran harga yang jelas dan transparan"
        - "Jadwal inspeksi yang fleksibel"
        - "Laporan hasil inspeksi yang detail dan tepat waktu"
      warna: "warning"
      icon: "bi-cash-coin"
```
- 3 kategori tips dengan 3 kriteria masing-masing

### section_faq
```yaml
section_faq:
  title: "FAQ Riksa Uji K3"
  area: "[Kota]"

  faq_layanan:
    - pertanyaan: "Apa saja jenis peralatan yang bisa diinspeksi...?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-tools"

    - pertanyaan: "Berapa lama proses inspeksi...?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-clock"

    - pertanyaan: "Apakah inspeksi dilakukan di lokasi...?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-geo-alt"

  judul_layanan: "Layanan & Proses Inspeksi"
  deskripsi_layanan: "Informasi seputar jenis layanan dan proses inspeksi K3 kami"

  faq_sertifikasi:
    - pertanyaan: "Apakah sertifikat dari PT. Cipta Mas Jaya diakui...?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-award"

    - pertanyaan: "Berapa lama masa berlaku sertifikat...?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-calendar-check"

  judul_sertifikasi: "Sertifikasi & Legalitas"
  deskripsi_sertifikasi: "Informasi seputar sertifikat dan keabsahan hasil inspeksi"

  faq_biaya:
    - pertanyaan: "Berapa biaya inspeksi riksa uji K3?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-cash-coin"

    - pertanyaan: "Apakah ada diskon untuk inspeksi dalam jumlah banyak?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-percent"

    - pertanyaan: "Bagaimana sistem pembayarannya?"
      jawaban: "[Jawaban lengkap]"
      icon: "bi-credit-card"

  judul_biaya: "Biaya & Pembayaran"
  deskripsi_biaya: "Informasi seputar biaya inspeksi dan metode pembayaran"
```
- 3 kategori FAQ: layanan (3), sertifikasi (2), biaya (3)

---

## BATCH 8: ABOUT CITY + CONCLUSION

### section_about_city
```yaml
section_about_city:
  title: "Tentang"
  area: "[Kota]"
  tagline: "[Tagline Kota - misal: Kota Industri & Perdagangan]"
  deskripsi_singkat: "[Deskripsi singkat 10-15 kata]"
  overview: "[Paragraf overview 100-150 kata tentang kota dan pentingnya layanan K3]"

  paragraphs:
    - judul: "Sejarah & Perkembangan [Kota]"
      icon: "bi-clock-history"
      subjudul: "[Subjudul - misal: Dari Desa Agraris ke Kota Metropolitan]"
      deskripsi: "[Deskripsi singkat 2-3 kalimat]"
      fakta:
        - "[Fakta menarik 1]"
        - "[Fakta menarik 2]"
        - "[Fakta menarik 3]"

    - judul: "Ekonomi & Industri [Kota]"
      icon: "bi-graph-up-arrow"
      subjudul: "[Subjudul - misal: Kontribusi terhadap Perekonomian]"
      deskripsi: "[Deskripsi singkat]"
      fakta:
        - "[Fakta ekonomi 1]"
        - "[Fakta ekonomi 2]"
        - "[Fakta ekonomi 3 - hubungkan dengan kebutuhan PJK3]"

    - judul: "Kawasan Industri di [Kota]"
      icon: "bi-building"
      subjudul: "[Subjudul - misal: Pusat Manufaktur]"
      deskripsi: "[Deskripsi singkat]"
      list_item:
        - "[Kawasan industri 1 - dengan deskripsi singkat]"
        - "[Kawasan industri 2]"
        - "[Kawasan industri 3]"
        - "[Kawasan industri 4]"
        - "[Kawasan industri 5]"
      info_tambahan: "[Kalimat penutup tentang kebutuhan riksa uji K3]"

    - judul: "Infrastruktur & Aksesibilitas"
      icon: "bi-signpost-split"
      subjudul: "[Subjudul - misal: Konektivitas yang Memudahkan]"
      deskripsi: "[Deskripsi singkat]"
      list_item:
        - "[Infrastruktur 1 - jalan tol, stasiun, dll]"
        - "[Infrastruktur 2]"
        - "[Infrastruktur 3]"
        - "[Infrastruktur 4]"
      info_tambahan: "[Kalimat tentang kemudahan akses tim CMJ]"
```
- 4 paragraphs dengan struktur berbeda:
  - Paragraf 1-2: menggunakan `fakta` (array string)
  - Paragraf 3-4: menggunakan `list_item` dan `info_tambahan`

### section_conclusion
```yaml
section_conclusion:
  title: "Kesimpulan"
  paragraphs:
    - "PT. Cipta Mas Jaya adalah PJK3 yang melayani jasa riksa uji K3 di wilayah [Kota]. Hubungi 08568258841 untuk semua kebutuhan riksa uji Anda."
```
- 1 paragraf kesimpulan dengan CTA

---

## ICON REFERENCE (Bootstrap Icons)

### Umum
- bi-shield-check : Keselamatan, Izin
- bi-person-badge : Tenaga Ahli, Sertifikasi
- bi-cash-coin : Harga, Biaya
- bi-building : Gedung, Industri
- bi-buildings : Kawasan, Multiple buildings
- bi-building-add : Konstruksi Baru
- bi-geo-alt : Lokasi
- bi-graph-up-arrow : Pertumbuhan, Ekonomi
- bi-clock-history : Sejarah, Waktu
- bi-signpost-split : Infrastruktur

### Layanan
- bi-box-seam : Angkat Angkut
- bi-thermometer-half : Bejana Tekan, Boiler
- bi-gear : Mesin, Produksi
- bi-arrow-up-square : Elevator
- bi-lightning : Listrik
- bi-fire : Kebakaran

### Risiko
- bi-exclamation-octagon : Bahaya Tinggi
- bi-lightning-charge : Risiko Listrik
- bi-cone-striped : Konstruksi

### Proses
- bi-search : Identifikasi
- bi-telephone-fill : Kontak
- bi-chat-dots-fill : Konsultasi
- bi-clipboard-check : Inspeksi
- bi-file-earmark-text : Laporan
- bi-award : Sertifikat

### FAQ
- bi-tools : Layanan
- bi-clock : Waktu
- bi-calendar-check : Jadwal
- bi-percent : Diskon
- bi-credit-card : Pembayaran

---

## CHECKLIST SEBELUM PUBLISH

- [ ] Semua field terisi (tidak ada yang kosong "")
- [ ] area_served konsisten di semua section
- [ ] Nomor telepon benar (08568258841)
- [ ] Icon Bootstrap valid (bi-xxx)
- [ ] Warna Bootstrap valid (primary, success, info, warning, danger, secondary)
- [ ] Rating testimoni adalah integer (1-5)
- [ ] Severity risiko valid (high, medium, low)
- [ ] Theme hero valid (blue, orange, red, green, purple, teal, amber, indigo)
- [ ] Tanggal format YYYY-MM-DD HH:MM:SS
- [ ] Categories dan tags lengkap
- [ ] Gambar tersedia atau gunakan fallback
- [ ] Preview di localhost sebelum deploy

---

## CONTOH FILE LENGKAP

Lihat: `_posts/2025-05-24-pjk3-bekasi.md`
