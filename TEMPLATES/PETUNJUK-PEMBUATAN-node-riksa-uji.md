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

## BATCH 2: SCHEMA DATA

### howto_post (HowTo Schema)
```yaml
howto_post:
  name: "Proses Riksa Uji [Nama Alat]"
  description: "Tahapan pemeriksaan dan pengujian keselamatan [nama alat]"
  totalTime: "PT2H"
  steps:
    - name: "[Nama Langkah 1]"
      text: "[Deskripsi singkat langkah 1]"
    - name: "[Nama Langkah 2]"
      text: "[Deskripsi singkat langkah 2]"
    # ... dst (6 langkah)
```
- totalTime: Format ISO 8601 duration (PT2H = 2 jam, PT30M = 30 menit)
- steps: Ringkasan dari section_process (6 langkah utama)
- Digunakan untuk Google rich snippet "How To"

### itemlist_post (ItemList Schema)
```yaml
itemlist_post:
  name: "Komponen yang Diperiksa dalam Riksa Uji [Nama Alat]"
  description: "Daftar komponen utama yang diperiksa saat riksa uji"
  items:
    - name: "[Nama Komponen 1]"
      description: "[Detail komponen yang diperiksa]"
    - name: "[Nama Komponen 2]"
      description: "[Detail komponen yang diperiksa]"
    # ... dst (5 items)
```
- Daftar komponen/bagian yang diperiksa
- 5 items utama
- Digunakan untuk Google rich snippet "ItemList"

### faq_post (FAQ Schema)
```yaml
faq_post:
  name: "FAQ Riksa Uji [Nama Alat]"
  description: "Pertanyaan yang sering diajukan tentang riksa uji [nama alat]"
  faqs:
    - question: "[Pertanyaan 1]?"
      answer: "[Jawaban lengkap untuk pertanyaan 1]"
    - question: "[Pertanyaan 2]?"
      answer: "[Jawaban lengkap untuk pertanyaan 2]"
    # ... dst (4 FAQ)
```
- 4 pertanyaan umum tentang riksa uji alat tersebut
- Pertanyaan yang sering dicari: berapa lama, berapa biaya, berapa tahun sekali, apa bedanya SLO/SIO
- Digunakan untuk Google rich snippet "FAQ"

### video_post (Video Schema)
```yaml
video_post:
  name: "Proses Riksa Uji [Nama Alat]"
  description: "Video dokumentasi proses riksa uji [nama alat]"
  thumbnail: "/path/to/video-thumbnail.jpg"
  src: "https://www.youtube.com/watch?v=XXXXX"
  duration: "PT5M30S"
  upload_date: "2024-08-26"
```
- Isi jika artikel memiliki video
- duration: Format ISO 8601 (PT5M30S = 5 menit 30 detik)
- Kosongkan jika tidak ada video

---

## BATCH 3: SECTION 1-2

### section_importance (Pentingnya Riksa Uji)
```yaml
section_importance:
  title: "Pentingnya Riksa Uji [Nama Alat]"
  icon: "bi-shield-check"
  paragraphs:
    - "[Paragraf pembuka tentang pentingnya riksa uji]"
  subsections:
    - title: "[Manfaat 1 - misal: Mencegah Kecelakaan Kerja]"
      icon: "bi-exclamation-triangle"
      paragraphs:
        - "[Penjelasan subsection]"
      bullets:
        - key: "[Poin 1]"
          value: "[Penjelasan detail poin 1]"
        - key: "[Poin 2]"
          value: "[Penjelasan detail poin 2]"
    - title: "[Manfaat 2 - misal: Meningkatkan Efisiensi]"
      icon: "bi-graph-up-arrow"
      # ... struktur sama
    - title: "[Manfaat 3 - misal: Memperpanjang Umur Alat]"
      icon: "bi-clock-history"
      # ... struktur sama
```
- 3 subsections tentang manfaat/pentingnya riksa uji
- Setiap subsection: title, icon, paragraphs, bullets (2 poin)
- Icon: gunakan Bootstrap Icons (bi-xxx)

### section_process (Proses Riksa Uji)
```yaml
section_process:
  title: "Proses Riksa Uji [Nama Alat]"
  icon: "bi-gear"
  subtitle: "Tahapan Lengkap Pemeriksaan [Nama Alat]"
  description: "[Deskripsi umum proses riksa uji]"
  steps_heading: "Tahapan Proses Riksa Uji"
  steps_intro: "Berikut adalah [X] tahapan utama dalam proses riksa uji:"
  steps:
    - title: "[Langkah 1 - Persiapan]"
      icon: "bi-clipboard-check"
      description: "[Deskripsi singkat langkah]"
      substeps:
        - title: "[Sub-langkah 1a]"
          bullets:
            - key: "[Poin]"
              value: "[Detail]"
            - key: "[Poin]"
              value: "[Detail]"
        - title: "[Sub-langkah 1b]"
          bullets:
            # ... sama
    - title: "[Langkah 2 - Pemeriksaan Visual]"
      icon: "bi-eye"
      # ... struktur sama
    - title: "[Langkah 3 - Uji Fungsi]"
      icon: "bi-gear-wide-connected"
      # ... struktur sama
    - title: "[Langkah 4 - Uji Keselamatan]"
      icon: "bi-shield-check"
      # ... struktur sama
  summary: "[Ringkasan proses riksa uji]"
```
- 4 langkah utama (bisa disesuaikan)
- Setiap langkah: title, icon, description, substeps
- Setiap substep: title, desc (opsional), bullets (2-4 poin)

---

## BATCH 4: SECTION 3-4

### section_regulation (Sanksi Hukum dan Regulasi)
```yaml
section_regulation:
  title: "Sanksi Hukum dan Regulasi"
  icon: "bi-bank"
  subtitle: "Dasar Hukum Riksa Uji [Nama Alat]"
  description: "[Pengantar tentang regulasi yang berlaku]"
  summary: "[Ringkasan pentingnya kepatuhan regulasi]"
  subsections:
    - title: "Kepatuhan Terhadap Peraturan"
      icon: "bi-clipboard-check"
      description: "[Penjelasan kewajiban kepatuhan]"
      bullets:
        - key: "[Aspek 1]"
          value: "[Detail]"
        - key: "[Aspek 2]"
          value: "[Detail]"
        - key: "[Aspek 3]"
          value: "[Detail]"
    - title: "Sanksi Pelanggaran"
      icon: "bi-exclamation-triangle"
      description: "[Konsekuensi jika tidak patuh]"
      bullets:
        - key: "Sanksi Administratif"
          value: "[Detail sanksi]"
        - key: "Sanksi Pidana"
          value: "[Detail sanksi]"
        - key: "Tuntutan Perdata"
          value: "[Detail sanksi]"
    - title: "Dasar Hukum"
      icon: "bi-journal-bookmark"
      description: "[Daftar peraturan yang berlaku]"
      bullets:
        - key: "UU No. 1 Tahun 1970"
          value: "Undang-Undang tentang Keselamatan Kerja"
        - key: "[Permenaker terkait]"
          value: "[Deskripsi peraturan]"
        - key: "[Standar terkait]"
          value: "[Deskripsi standar - ASME, API, SNI, dll]"
```
- 3 subsections: Kepatuhan, Sanksi, Dasar Hukum
- Sesuaikan peraturan dengan jenis alat:
  - Boiler/Bejana Tekan: Permenaker No. 37 Tahun 2016
  - Pesawat Angkat: Permenaker No. 8 Tahun 2020
  - Elevator: Permenaker No. 6 Tahun 2017
  - Instalasi Listrik: Permenaker No. 12 Tahun 2015

### section_training (Pelatihan dan Sertifikasi Operator)
```yaml
section_training:
  title: "Pelatihan dan Sertifikasi Operator [Nama Alat]"
  icon: "bi-mortarboard"
  subtitle: "Program Pelatihan K3 [Nama Alat] Bersertifikat"
  description: "[Pengantar tentang pentingnya sertifikasi operator]"
  cards_heading: "Program Sertifikasi dan Materi Pelatihan"
  cards_intro: "[Pengantar untuk cards]"
  bullets_heading: "Manfaat Pelatihan Operator"
  bullets_intro: "[Pengantar untuk bullets]"
  summary: "[Ringkasan section]"
  cards:
    - title: "Sertifikasi Operator"
      icon: "bi-award"
      content: "[Penjelasan tentang sertifikasi]"
    - title: "Materi Pelatihan"
      icon: "bi-book"
      content: "[Penjelasan materi yang dipelajari]"
    - title: "Proses Ujian"
      icon: "bi-clipboard-check"
      content: "[Penjelasan proses ujian]"
    - title: "Keuntungan Sertifikasi"
      icon: "bi-graph-up-arrow"
      content: "[Manfaat memiliki sertifikasi]"
    - title: "Pelatihan Berkala"
      icon: "bi-arrow-repeat"
      content: "[Pentingnya pelatihan berkala]"
    - title: "Durasi dan Biaya"
      icon: "bi-clock-history"
      content: "[Info durasi dan estimasi biaya]"
  bullets:
    - key: "[Manfaat 1]"
      value: "[Detail]"
    - key: "[Manfaat 2]"
      value: "[Detail]"
    - key: "[Manfaat 3]"
      value: "[Detail]"
    - key: "[Manfaat 4]"
      value: "[Detail]"
```
- 6 cards tentang program pelatihan
- 4 bullets tentang manfaat pelatihan
- Sesuaikan dengan jenis sertifikasi operator (SIO) untuk alat tersebut

---

## BATCH 5: SECTION 5-6

### section_specs (Standar Spesifikasi)
```yaml
section_specs:
  title: "Standar Spesifikasi [Nama Alat]"
  icon: "bi-gear-wide-connected"
  description: "[Pengantar tentang spesifikasi teknis]"
  specs_heading: "Parameter Teknis [Nama Alat]"
  specs_intro: "Berikut adalah [X] parameter teknis utama:"
  specs:
    - title: "[Parameter 1 - misal: Kapasitas]"
      icon: "bi-box-arrow-up"
      value: "[Nilai - misal: 1-10 Ton/jam]"
      paragraphs:
        - "[Penjelasan parameter]"
        - "[Detail tambahan jika perlu]"
    - title: "[Parameter 2 - misal: Tekanan Kerja]"
      icon: "bi-speedometer"
      value: "[Nilai - misal: 10-20 bar]"
      paragraphs:
        - "[Penjelasan parameter]"
    # ... dst (6 specs)
```
- 6 parameter teknis utama
- Sesuaikan dengan jenis alat:
  - Boiler: Kapasitas uap, Tekanan kerja, Temperatur, Jenis bahan bakar, Efisiensi, Surface area
  - Forklift: Kapasitas angkat, Tinggi angkat, Kecepatan, Radius putar, Sistem rem, Baterai/BBM
  - Crane: SWL, Span, Lifting height, Speed, Rail gauge, Power supply

### section_certification (Pengesahan Gambar)
```yaml
section_certification:
  title: "Pengesahan Gambar [Nama Alat]"
  icon: "bi-file-earmark-check"
  intro:
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
        - title: "Verifikasi Desain"
          icon: "bi-pencil-square"
          content: "[Penjelasan langkah]"
        - title: "Pemeriksaan Kelayakan"
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
        - "[Pihak yang berwenang]"
        - "[Frekuensi pemeriksaan]"
    - title: "Aspek Teknis yang Dipertimbangkan"
      icon: "bi-clipboard-check"
      bullets:
        - key: "[Aspek 1]"
          value: "[Detail]"
        # ... dst (6 aspek)
    - title: "Manfaat Pengesahan Gambar"
      icon: "bi-award"
      bullets:
        - key: "[Manfaat 1]"
          value: "[Detail]"
        # ... dst (4 manfaat)
```
- 5 topics dengan struktur berbeda (items, bullets)
- Sesuaikan dengan proses pengesahan untuk jenis alat tersebut

---

## BATCH 6: SECTION 7-8

### section_permit (SLO/Izin Pemakaian)
```yaml
section_permit:
  title: "[SLO/Izin Pemakaian] [Nama Alat]"
  icon: "bi-file-earmark-medical"
  intro: "[Definisi SLO/Izin Pemakaian untuk alat ini]"
  topics:
    - title: "Pentingnya [SLO/Izin Pemakaian]"
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
    - title: "Perbedaan [SLO dan SIO / Izin Alat dan Izin Operator]"
      icon: "bi-arrows-angle-expand"
      bullets:
        - key: "[Izin Alat]"
          value: "[Penjelasan - fokus pada alat]"
        - key: "[Izin Operator]"
          value: "[Penjelasan - fokus pada operator]"
  summary: "[Ringkasan pentingnya izin operasi]"
```
- Sesuaikan istilah dengan jenis alat:
  - Forklift/Crane: SLO (Surat Izin Layak Operasi)
  - Boiler: Izin Pemakaian Pesawat Uap
  - Bejana Tekan: Izin Pemakaian Bejana Tekan
  - Elevator: Izin Penggunaan Lift

### section_conclusion (Kesimpulan)
```yaml
section_conclusion:
  title: "Kesimpulan"
  icon: "bi-check2-square"
  intro: "[Ringkasan artikel + link Google Maps ke PT. Cipta Mas Jaya]"
  highlights:
    - key: "Mencegah Kecelakaan Kerja"
      value: "[Ringkasan manfaat 1]"
    - key: "Meningkatkan Efisiensi"
      value: "[Ringkasan manfaat 2]"
    - key: "Mematuhi Regulasi"
      value: "[Ringkasan manfaat 3]"
  closing: "[Paragraf penutup - ajakan untuk melakukan riksa uji]"
  cta:
    text: "[Teks CTA - ajakan menghubungi PT. Cipta Mas Jaya]"
    link: "/layanan/[kategori]/[subkategori]/riksa-uji-[nama-alat]/"
    label: "Hubungi Kami"
    icon: "bi-telephone"
```
- intro: Bisa sertakan link Google Maps
- highlights: 3 poin utama manfaat
- cta: Call-to-action dengan link ke halaman layanan

---

## ICON REFERENCE (Bootstrap Icons)

### Umum
- bi-shield-check : Keselamatan
- bi-exclamation-triangle : Peringatan/Bahaya
- bi-graph-up-arrow : Efisiensi/Peningkatan
- bi-clock-history : Waktu/Umur pakai
- bi-gear : Proses/Mekanik
- bi-gear-wide-connected : Sistem/Mesin
- bi-eye : Visual/Pemeriksaan
- bi-clipboard-check : Checklist/Dokumen
- bi-bank : Hukum/Regulasi
- bi-mortarboard : Pelatihan/Edukasi
- bi-award : Sertifikasi/Penghargaan
- bi-book : Materi/Buku
- bi-file-earmark-check : Dokumen/Pengesahan
- bi-file-earmark-medical : Izin/Sertifikat
- bi-check2-square : Kesimpulan/Selesai
- bi-telephone : Kontak/CTA

### Spesifik Alat
- bi-thermometer-half : Suhu/Temperatur
- bi-speedometer : Tekanan/Kecepatan
- bi-box-arrow-up : Kapasitas angkat
- bi-arrows-expand : Tinggi/Dimensi
- bi-battery-charging : Baterai/Energi
- bi-fire : Api/Pembakaran
- bi-droplet : Cairan/Fluida
- bi-wind : Udara/Gas
- bi-lightning-charge : Listrik

---

## CHECKLIST SEBELUM PUBLISH

- [ ] Semua field terisi (tidak ada yang kosong "")
- [ ] Internal link valid (cek URL)
- [ ] External link menggunakan target="_blank"
- [ ] Icon Bootstrap valid (bi-xxx)
- [ ] Tanggal format YYYY-MM-DD
- [ ] Permalink sesuai format
- [ ] Categories dan tags relevan
- [ ] Schema data lengkap (howto, itemlist, faq)
- [ ] Gambar tersedia atau gunakan fallback
- [ ] Preview di localhost sebelum deploy
