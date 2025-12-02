# ============================================================================
# PETUNJUK PENGISIAN TEMPLATE NODE PJK3 CITY
# ============================================================================
# File: TEMPLATE-node-pjk3-city.md
# Lokasi: /TEMPLATES/TEMPLATE-node-pjk3-city.md
# ============================================================================

## CARA KERJA (PER-SECTION + TODOWRITE)

Konten template ini sangat panjang. JANGAN mengisi sekali jalan.
Gunakan sistem per-section dengan TodoWrite untuk menjaga kualitas konten.

### WAJIB: Gunakan TodoWrite untuk Setiap Section

```
SEBELUM MULAI, buat todo list dengan 19 section:
┌─────────────────────────────────────────────────────────────────────────────┐
│ TodoWrite:                                                                  │
│  1. [pending] Section 1: Front Matter                                       │
│  2. [pending] Section 2: Images + section_gallery                           │
│  3. [pending] Section 3: video + section_video                              │
│  4. [pending] Section 4: section_hero                                       │
│  5. [pending] Section 5: section_company_intro                              │
│  6. [pending] Section 6: section_services                                   │
│  7. [pending] Section 7: section_area                                       │
│  8. [pending] Section 8: section_risks                                      │
│  9. [pending] Section 9: section_role                                       │
│ 10. [pending] Section 10: section_business                                  │
│ 11. [pending] Section 11: section_city                                      │
│ 12. [pending] Section 12: section_coverage                                  │
│ 13. [pending] Section 13: section_order                                     │
│ 14. [pending] Section 14: section_testimonials                              │
│ 15. [pending] Section 15: section_tips                                      │
│ 16. [pending] Section 16: section_faq                                       │
│ 17. [pending] Section 17: section_about_city                                │
│ 18. [pending] Section 18: section_conclusion                                │
│ 19. [pending] Section 19: Final verification                                │
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

Template ini memiliki **15 Section** + **4 Bagian Pendukung**:

| No | Section | Deskripsi |
|----|---------|-----------|
| 1 | section_hero | Hero banner dengan CTA dan wilayah layanan |
| 2 | section_company_intro | Pengenalan perusahaan dan layanan PJK3 |
| 3 | section_services | 6 layanan utama riksa uji K3 |
| 4 | section_area | 4 karakteristik wilayah dan industri |
| 5 | section_risks | 4 risiko K3 dengan severity level |
| 6 | section_role | 4 peran strategis PJK3 |
| 7 | section_business | 4 potensi bisnis dan investasi |
| 8 | section_city | 4 highlights tentang kota |
| 9 | section_coverage | Area pelayanan lengkap (zona, kecamatan, landmark) |
| 10 | section_order | 6 langkah pemesanan layanan |
| 11 | section_testimonials | 4 testimoni (2 industri + 2 komersial) |
| 12 | section_tips | 3 tips memilih PJK3 |
| 13 | section_faq | FAQ (3 layanan + 2 sertifikasi + 3 biaya) |
| 14 | section_about_city | Informasi lengkap tentang kota (untuk SEO) |
| 15 | section_conclusion | Kesimpulan dan CTA |

**Bagian Pendukung:**
- Front Matter (title, date, description, categories, tags)
- images (4 gambar)
- section_gallery (judul dan deskripsi gallery)
- video & section_video (video dan metadata)

---

## REFERENSI NILAI

### Theme Hero
```
blue, orange, red, green, purple, teal, amber, indigo
```

### Warna Bootstrap
```
primary (biru), success (hijau), info (cyan), warning (kuning), danger (merah), secondary (abu-abu)
```

### Severity Level
```
high, medium, low
```

### Rating Testimoni
```
1, 2, 3, 4, 5 (integer)
```

---

## FRONT MATTER

```
TodoWrite: Mark "Section 1: Front Matter" as [in_progress]
```

```yaml
layout: node/node--pjk3-city
title: "PJK3 [Nama Kota]"
date: 2025-05-24 18:21:24
author: admin
description: "PT. Cipta Mas Jaya adalah PJK3 yang melayani jasa riksa uji K3 di wilayah [Nama Kota]. Hubungi 08568258841 untuk semua kebutuhan riksa uji Anda."
area_served: "[Nama Kota]"
keywords: "PJK3 [Nama Kota], jasa riksa uji [Nama Kota], inspeksi K3 [Nama Kota], sertifikasi K3, riksa pengujian [Nama Kota]"
extra_js:
  - /assets/js/gallery-modal.js
categories:
  - Artikel
tags:
  - Jasa Inspeksi
  - Jasa Riksa Uji
  - Jasa Riksa Uji K3
  - PJK3
  - PJK3 Riksa Uji
  - Riksa Uji
  - Riksa Uji K3
```

**Catatan:**
- `title`: Format "PJK3" + nama kota
- `date`: Format YYYY-MM-DD HH:MM:SS
- `description`: 150-160 karakter untuk SEO, sertakan nama kota dan nomor telepon
- `area_served`: Nama kota (digunakan sebagai fallback di berbagai section)

```
TodoWrite: Mark "Section 1: Front Matter" as [completed]
```

---

## IMAGES

```
TodoWrite: Mark "Section 2: Images + section_gallery" as [in_progress]
```

```yaml
images:
  - "/assets/images/pjk3-city/featured.webp"
  - "/assets/images/pjk3-city/gallery-1.webp"
  - "/assets/images/pjk3-city/gallery-2.webp"
  - "/assets/images/pjk3-city/gallery-3.webp"
```

**Catatan:**
- `images[0]`: Featured image untuk og:image, schema, thumbnail
- `images[1-3]`: Gallery images
- Jika kosong, fallback ke default i1-i4.svg

---

## SECTION GALLERY

```yaml
section_gallery:
  title: "Galeri Layanan"
  area: "Bekasi"
  description: "Dokumentasi kegiatan riksa uji K3 di wilayah Bekasi dan sekitarnya"
  caption: "Foto dokumentasi layanan PT. Cipta Mas Jaya"
```

```
TodoWrite: Mark "Section 2: Images + section_gallery" as [completed]
```

---

## VIDEO & SECTION VIDEO

```
TodoWrite: Mark "Section 3: video + section_video" as [in_progress]
```

```yaml
video: "/assets/videos/service-page/riksa-uji-forklift.webm"
section_video:
  title: "Video Layanan"
  area: "Bekasi"
  description: "Lihat proses inspeksi dan pengujian K3 oleh tim profesional kami"
  caption: "Dokumentasi video layanan PT. Cipta Mas Jaya"
  cta_text: "Ingin melihat langsung proses inspeksi K3 di lokasi Anda?"
  cta_button: "Hubungi Kami"
```

**Catatan:**
- `video`: Path ke file video (kosong = fallback ke default)

```
TodoWrite: Mark "Section 3: video + section_video" as [completed]
```

---

## SECTION 1: section_hero

```
TodoWrite: Mark "Section 4: section_hero" as [in_progress]
```

```yaml
section_hero:
  title: "Butuh Layanan Riksa Uji K3"
  theme: "blue"
  area: "Bekasi"
  description: "Sedang mencari jasa riksa uji K3 terpercaya di Bekasi? PT. Cipta Mas Jaya adalah PJK3 resmi berlisensi Kemenaker yang melayani inspeksi dan pengujian peralatan K3 dengan standar profesional untuk seluruh wilayah Bekasi dan sekitarnya."
  label_wilayah: "Melayani Wilayah:"
  wilayah_layanan:
    - Bekasi Utara
    - Bekasi Selatan
    - Bekasi Barat
    - Bekasi Timur
    - Cikarang
    - Tambun
    - Cibitung
    - Karawang
    - Cileungsi
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
- `theme`: blue, orange, red, green, purple, teal, amber, indigo
- `wilayah_layanan`: 6-10 wilayah/kecamatan utama
- `badges`: 3 badge keunggulan dengan icon Bootstrap

```
TodoWrite: Mark "Section 4: section_hero" as [completed]
```

---

## SECTION 2: section_company_intro

```
TodoWrite: Mark "Section 5: section_company_intro" as [in_progress]
```

```yaml
section_company_intro:
  title: "PT. Cipta Mas Jaya: sebagai PJK3 Riksa Uji di Bekasi"
  company_name: "PT. Cipta Mas Jaya"
  area: "Bekasi"
  intro: "PT. Cipta Mas Jaya adalah Perusahaan Jasa Keselamatan dan Kesehatan Kerja Riksa Uji (PJK3 Riksa Uji) resmi yang melayani kebutuhan riksa uji peralatan kerja di wilayah Bekasi."
  subsections:
    - title: "Apa Itu PJK3 dan Perannya dalam Keselamatan Kerja"
      paragraphs:
        - "Paragraf 1: Definisi PJK3..."
        - "Paragraf 2: Pentingnya PJK3 di wilayah tersebut..."
        - "Paragraf 3: Peran edukatif dan konsultatif..."

    - title: "Layanan Riksa Uji K3 dari PT. Cipta Mas Jaya di Bekasi"
      paragraphs:
        - "Paragraf 1: Jenis layanan yang tersedia..."
        - "Paragraf 2: Keunggulan dan jangkauan layanan..."
```

**Catatan:**
- 2 subsections dengan 2-3 paragraf masing-masing
- Sesuaikan dengan karakteristik kota

```
TodoWrite: Mark "Section 5: section_company_intro" as [completed]
```

---

## SECTION 3: section_services

```
TodoWrite: Mark "Section 6: section_services" as [in_progress]
```

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

**Catatan:**
- 6 layanan standar PJK3
- Sesuaikan deskripsi dengan kebutuhan industri di kota tersebut

```
TodoWrite: Mark "Section 6: section_services" as [completed]
```

---

## SECTION 4: section_area

```
TodoWrite: Mark "Section 7: section_area" as [in_progress]
```

```yaml
section_area:
  title: "Karakteristik Wilayah dan Industri di Bekasi"
  intro: "Bekasi adalah salah satu kota industri terbesar di Indonesia..."
  characteristics:
    - title: "Zona Industri Terpadu"
      description: "Kawasan industri MM2100, EJIP, Jababeka..."
      icon: "bi-building"

    - title: "Permukiman Padat"
      description: "Area perumahan dan apartemen yang berkembang pesat..."
      icon: "bi-house"

    - title: "Infrastruktur Modern"
      description: "Akses tol Jakarta-Cikampek, stasiun kereta..."
      icon: "bi-signpost-2"

    - title: "Pusat Komersial"
      description: "Mall, ruko, dan kawasan perdagangan..."
      icon: "bi-shop"
```

**Catatan:**
- 4 karakteristik utama wilayah
- Sesuaikan dengan kondisi geografis dan ekonomi kota

```
TodoWrite: Mark "Section 7: section_area" as [completed]
```

---

## SECTION 5: section_risks

```
TodoWrite: Mark "Section 8: section_risks" as [in_progress]
```

```yaml
section_risks:
  title: "Risiko K3 di Kawasan Industri dan Hunian Bekasi"
  intro: "Sebagai kawasan industri dan permukiman padat, Bekasi memiliki berbagai risiko K3..."
  risks:
    - title: "Kecelakaan Alat Angkat"
      description: "Risiko kecelakaan crane dan forklift di kawasan industri..."
      severity: "high"
      icon: "bi-exclamation-octagon"

    - title: "Bahaya Listrik"
      description: "Risiko korsleting dan kebakaran akibat instalasi tidak layak..."
      severity: "high"
      icon: "bi-lightning-charge"

    - title: "Kebakaran"
      description: "Risiko kebakaran di pabrik dan gedung bertingkat..."
      severity: "medium"
      icon: "bi-fire"

    - title: "Kecelakaan Konstruksi"
      description: "Risiko di proyek pembangunan gedung dan infrastruktur..."
      severity: "medium"
      icon: "bi-cone-striped"
```

**Catatan:**
- 4 risiko K3 utama
- `severity`: high, medium, atau low

```
TodoWrite: Mark "Section 8: section_risks" as [completed]
```

---

## SECTION 6: section_role

```
TodoWrite: Mark "Section 9: section_role" as [in_progress]
```

```yaml
section_role:
  title: "Peran Strategis PJK3 dalam Pembangunan Kota Bekasi"
  intro: "PJK3 memiliki peran penting dalam mendukung pembangunan dan keselamatan kerja..."
  roles:
    - title: "Mendukung Proyek Konstruksi"
      description: "Memastikan keselamatan peralatan di proyek pembangunan..."
      icon: "bi-building-add"

    - title: "Kepatuhan K3 Sektor Swasta"
      description: "Membantu perusahaan memenuhi regulasi K3..."
      icon: "bi-clipboard-check"

    - title: "Edukasi UMKM"
      description: "Memberikan pemahaman K3 kepada pelaku usaha kecil..."
      icon: "bi-mortarboard"

    - title: "Keselamatan Transportasi"
      description: "Inspeksi peralatan di sektor transportasi dan logistik..."
      icon: "bi-train-front"
```

**Catatan:**
- 4 peran strategis PJK3

```
TodoWrite: Mark "Section 9: section_role" as [completed]
```

---

## SECTION 7: section_business

```
TodoWrite: Mark "Section 10: section_business" as [in_progress]
```

```yaml
section_business:
  title: "Potensi Bisnis dan Investasi di Wilayah Bekasi"
  intro: "Bekasi menawarkan berbagai peluang bisnis dan investasi..."
  potentials:
    - title: "Kawasan Industri Terpadu"
      description: "Investasi di kawasan industri dengan infrastruktur lengkap..."
      icon: "bi-buildings"

    - title: "Startup dan Teknologi"
      description: "Perkembangan ekosistem startup dan digital..."
      icon: "bi-rocket-takeoff"

    - title: "Kelancaran Operasional"
      description: "Peralatan yang terawat menjamin kelancaran produksi..."
      icon: "bi-graph-up"

    - title: "Minimalkan Downtime"
      description: "Inspeksi berkala mencegah kerusakan mendadak..."
      icon: "bi-clock-history"
```

**Catatan:**
- 4 potensi bisnis/investasi

```
TodoWrite: Mark "Section 10: section_business" as [completed]
```

---

## SECTION 8: section_city

```
TodoWrite: Mark "Section 11: section_city" as [in_progress]
```

```yaml
section_city:
  title: "Tentang Kota Bekasi"
  city_name: "Bekasi"
  intro: "Kota Bekasi adalah kota metropolitan yang berkembang pesat..."
  highlights:
    - title: "Posisi Strategis"
      description: "Berbatasan langsung dengan Jakarta..."
      icon: "bi-geo-alt"

    - title: "Pertumbuhan Ekonomi"
      description: "Salah satu kota dengan PDRB tertinggi..."
      icon: "bi-graph-up-arrow"

    - title: "Komitmen Pemerintah"
      description: "Pemerintah kota aktif mendukung standar K3..."
      icon: "bi-shield-check"

    - title: "Layanan Terintegrasi"
      description: "Kemudahan akses layanan publik dan perizinan..."
      icon: "bi-cpu"
```

**Catatan:**
- 4 highlights tentang kota

```
TodoWrite: Mark "Section 11: section_city" as [completed]
```

---

## SECTION 9: section_coverage

```
TodoWrite: Mark "Section 12: section_coverage" as [in_progress]
```

```yaml
section_coverage:
  title: "Area Pelayanan Riksa Uji"
  area: "Bekasi"
  intro: "PT. Cipta Mas Jaya melayani inspeksi dan riksa uji K3 ke seluruh wilayah Bekasi dan sekitarnya..."

  zona_industri:
    - nama: "Kawasan MM2100"
      kawasan:
        - "Blok A-D"
        - "Blok E-H"
        - "Blok I-L"
      warna: "primary"

    - nama: "Kawasan EJIP"
      kawasan:
        - "Plot 1-5"
        - "Plot 6-10"
        - "Plot 11-15"
      warna: "success"

    - nama: "Kawasan Jababeka"
      kawasan:
        - "Jababeka 1"
        - "Jababeka 2"
        - "Jababeka 3"
      warna: "info"

  judul_industri: "Kawasan Industri Utama"
  deskripsi_industri: "Kawasan industri strategis dengan kebutuhan inspeksi K3 tinggi..."

  wilayah_kota:
    - nama: "Bekasi Utara"
      kelurahan:
        - "Harapan Jaya, Kaliabang Tengah"
        - "Teluk Pucung, Perwira"
        - "Harapan Baru"
      warna: "primary"

    - nama: "Bekasi Selatan"
      kelurahan:
        - "Jaka Mulya, Jaka Setia"
        - "Pekayon Jaya, Marga Jaya"
        - "Kayuringin Jaya"
      warna: "success"

    - nama: "Bekasi Barat"
      kelurahan:
        - "Bintara, Bintara Jaya"
        - "Jakasampurna, Kranji"
        - "Kota Baru"
      warna: "info"

    - nama: "Bekasi Timur"
      kelurahan:
        - "Aren Jaya, Bekasi Jaya"
        - "Duren Jaya, Margahayu"
        - "Cimuning"
      warna: "warning"

  judul_kota: "Wilayah Kota Bekasi"
  deskripsi_kota: "Kecamatan dan kelurahan di pusat Kota Bekasi..."

  wilayah_pinggiran:
    - nama: "Cikarang"
      kelurahan:
        - "Cikarang Utara, Cikarang Selatan"
        - "Cikarang Barat, Cikarang Timur"
      warna: "info"

    - nama: "Tambun & Cibitung"
      kelurahan:
        - "Tambun Utara, Tambun Selatan"
        - "Cibitung, Cikarang Pusat"
      warna: "success"

  judul_pinggiran: "Wilayah Cikarang & Sekitarnya"
  deskripsi_pinggiran: "Area industri dan pengembangan..."

  kecamatan_lainnya:
    - "Pondok Gede"
    - "Jatiasih"
    - "Jatisampurna"
    - "Bantargebang"
    - "Mustikajaya"
    - "Rawalumbu"
    - "Medansatria"
    - "Pondok Melati"

  landmark_industri:
    - nama: "Pelabuhan Marunda"
      icon: "bi-water"
      warna: "primary"
    - nama: "Dry Port Cikarang"
      icon: "bi-box-seam"
      warna: "info"
    - nama: "Gudang Logistik"
      icon: "bi-building"
      warna: "success"

  judul_landmark_industri: "Fasilitas Logistik & Pergudangan"
  deskripsi_landmark_industri: "Area logistik strategis..."

  landmark_komersial:
    - nama: "Summarecon Mall Bekasi"
      icon: "bi-shop"
      warna: "warning"
    - nama: "Metropolitan Mall"
      icon: "bi-shop-window"
      warna: "info"
    - nama: "Grand Galaxy Park"
      icon: "bi-building"
      warna: "danger"
    - nama: "Mega Bekasi"
      icon: "bi-buildings"
      warna: "success"

  judul_landmark_komersial: "Pusat Perbelanjaan & Komersial"
  deskripsi_landmark_komersial: "Mall dan gedung komersial..."
```

**Catatan:**
- `warna`: primary, success, info, warning, danger, secondary
- 3 zona_industri, 4 wilayah_kota, 2 wilayah_pinggiran
- 8 kecamatan_lainnya
- 3 landmark_industri, 4 landmark_komersial

```
TodoWrite: Mark "Section 12: section_coverage" as [completed]
```

---

## SECTION 10: section_order

```
TodoWrite: Mark "Section 13: section_order" as [in_progress]
```

```yaml
section_order:
  title: "Cara Pemesanan Layanan Riksa Uji"
  area: "Bekasi"
  phone: "08568258841"
  intro: "Proses pemesanan layanan riksa uji K3 di Bekasi sangat mudah dan praktis..."
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

**Catatan:**
- 3 initial_steps + 3 final_steps = 6 langkah total
- `color`: primary, success, info, warning, danger

```
TodoWrite: Mark "Section 13: section_order" as [completed]
```

---

## SECTION 11: section_testimonials

```
TodoWrite: Mark "Section 14: section_testimonials" as [in_progress]
```

```yaml
section_testimonials:
  title: "Testimoni Pelanggan"
  area: "Bekasi"

  testimoni_industri:
    - nama: "Budi Santoso"
      jenis_usaha: "Pabrik Manufaktur di MM2100"
      jabatan: "Plant Manager"
      rating: 5
      judul: "Pelayanan Profesional"
      komentar: "Tim CMJ sangat profesional dan detail dalam melakukan inspeksi..."
      warna: "primary"

    - nama: "Agus Wijaya"
      jenis_usaha: "Gudang Logistik di EJIP"
      jabatan: "HSE Manager"
      rating: 5
      judul: "Cepat dan Tepat"
      komentar: "Proses inspeksi cepat tanpa mengganggu operasional..."
      warna: "info"

  judul_industri: "Testimoni Klien Industri"
  deskripsi_industri: "Review dari klien pabrik dan kawasan industri di Bekasi"

  testimoni_komersial:
    - nama: "Dewi Lestari"
      jenis_usaha: "Mall Summarecon Bekasi"
      jabatan: "Building Manager"
      rating: 5
      judul: "Terpercaya dan Bersertifikat"
      komentar: "Kami percayakan inspeksi elevator dan eskalator ke CMJ..."
      warna: "success"

    - nama: "Rudi Hartono"
      jenis_usaha: "Apartemen Grand Kamala"
      jabatan: "Facility Manager"
      rating: 5
      judul: "Harga Kompetitif"
      komentar: "Harga bersaing dengan kualitas layanan prima..."
      warna: "warning"

  judul_komersial: "Testimoni Klien Komersial"
  deskripsi_komersial: "Review dari klien gedung perkantoran, mall, dan fasilitas publik"
```

**Catatan:**
- 2 testimoni industri + 2 testimoni komersial
- `rating`: integer 1-5
- `warna`: primary, success, info, warning, danger

```
TodoWrite: Mark "Section 14: section_testimonials" as [completed]
```

---

## SECTION 12: section_tips

```
TodoWrite: Mark "Section 15: section_tips" as [in_progress]
```

```yaml
section_tips:
  title: "Tips Memilih PJK3"
  area: "Bekasi"
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

**Catatan:**
- 3 kategori tips dengan 3 kriteria masing-masing

```
TodoWrite: Mark "Section 15: section_tips" as [completed]
```

---

## SECTION 13: section_faq

```
TodoWrite: Mark "Section 16: section_faq" as [in_progress]
```

```yaml
section_faq:
  title: "FAQ Riksa Uji K3"
  area: "Bekasi"

  faq_layanan:
    - pertanyaan: "Apa saja jenis peralatan yang bisa diinspeksi oleh PT. Cipta Mas Jaya?"
      jawaban: "Kami melayani inspeksi untuk crane, forklift, boiler, pressure vessel, elevator, eskalator, instalasi listrik, penyalur petir, dan alat pemadam kebakaran."
      icon: "bi-tools"

    - pertanyaan: "Berapa lama proses inspeksi dilakukan?"
      jawaban: "Durasi inspeksi tergantung jenis dan jumlah peralatan. Umumnya 1-3 hari kerja untuk inspeksi standar."
      icon: "bi-clock"

    - pertanyaan: "Apakah inspeksi dilakukan di lokasi klien?"
      jawaban: "Ya, tim kami akan datang ke lokasi Anda untuk melakukan inspeksi secara langsung."
      icon: "bi-geo-alt"

  judul_layanan: "Layanan & Proses Inspeksi"
  deskripsi_layanan: "Informasi seputar jenis layanan dan proses inspeksi K3 kami"

  faq_sertifikasi:
    - pertanyaan: "Apakah sertifikat dari PT. Cipta Mas Jaya diakui secara resmi?"
      jawaban: "Ya, kami adalah PJK3 resmi berlisensi Kemenaker RI, sehingga sertifikat yang kami terbitkan diakui secara nasional."
      icon: "bi-award"

    - pertanyaan: "Berapa lama masa berlaku sertifikat riksa uji?"
      jawaban: "Masa berlaku sertifikat bervariasi sesuai jenis peralatan, umumnya 1-2 tahun tergantung regulasi yang berlaku."
      icon: "bi-calendar-check"

  judul_sertifikasi: "Sertifikasi & Legalitas"
  deskripsi_sertifikasi: "Informasi seputar sertifikat dan keabsahan hasil inspeksi"

  faq_biaya:
    - pertanyaan: "Berapa biaya inspeksi riksa uji K3?"
      jawaban: "Biaya disesuaikan dengan jenis dan jumlah peralatan. Hubungi kami untuk penawaran harga yang kompetitif."
      icon: "bi-cash-coin"

    - pertanyaan: "Apakah ada diskon untuk inspeksi dalam jumlah banyak?"
      jawaban: "Ya, kami memberikan harga khusus untuk inspeksi dalam jumlah besar atau kontrak tahunan."
      icon: "bi-percent"

    - pertanyaan: "Bagaimana sistem pembayarannya?"
      jawaban: "Pembayaran dapat dilakukan via transfer bank setelah inspeksi selesai dan laporan diterbitkan."
      icon: "bi-credit-card"

  judul_biaya: "Biaya & Pembayaran"
  deskripsi_biaya: "Informasi seputar biaya inspeksi dan metode pembayaran"
```

**Catatan:**
- 3 kategori FAQ: layanan (3), sertifikasi (2), biaya (3)

```
TodoWrite: Mark "Section 16: section_faq" as [completed]
```

---

## SECTION 14: section_about_city

```
TodoWrite: Mark "Section 17: section_about_city" as [in_progress]
```

```yaml
section_about_city:
  title: "Tentang"
  area: "Bekasi"
  tagline: "Kota Industri & Perdagangan"
  deskripsi_singkat: "Pusat industri manufaktur terbesar di Indonesia"
  overview: "Kota Bekasi adalah kota metropolitan yang terletak di sebelah timur Jakarta. Sebagai salah satu kota industri terbesar di Indonesia, Bekasi memiliki kebutuhan tinggi akan layanan inspeksi K3..."

  paragraphs:
    - judul: "Sejarah & Perkembangan Bekasi"
      icon: "bi-clock-history"
      subjudul: "Dari Desa Agraris ke Kota Metropolitan"
      deskripsi: "Bekasi telah berkembang pesat dari desa agraris menjadi kota industri modern..."
      fakta:
        - "Bekasi resmi menjadi kotamadya pada tahun 1997"
        - "Luas wilayah mencapai 210,49 km²"
        - "Populasi lebih dari 2,5 juta jiwa"

    - judul: "Ekonomi & Industri Bekasi"
      icon: "bi-graph-up-arrow"
      subjudul: "Kontribusi terhadap Perekonomian Nasional"
      deskripsi: "Bekasi menyumbang kontribusi signifikan terhadap PDRB Jawa Barat..."
      fakta:
        - "Lebih dari 1.000 pabrik beroperasi di Bekasi"
        - "Sektor industri menyerap 60% tenaga kerja"
        - "Kebutuhan inspeksi K3 meningkat setiap tahun"

    - judul: "Kawasan Industri di Bekasi"
      icon: "bi-building"
      subjudul: "Pusat Manufaktur Terbesar"
      deskripsi: "Bekasi memiliki beberapa kawasan industri terbesar di Indonesia..."
      list_item:
        - "MM2100 - Kawasan industri multinasional terbesar"
        - "EJIP - East Jakarta Industrial Park"
        - "Jababeka - Kawasan industri terintegrasi"
        - "Delta Silicon - Pusat industri elektronik"
        - "Hyundai Industrial Park - Kawasan otomotif"
      info_tambahan: "Seluruh kawasan ini membutuhkan layanan inspeksi K3 berkala."

    - judul: "Infrastruktur & Aksesibilitas"
      icon: "bi-signpost-split"
      subjudul: "Konektivitas yang Memudahkan"
      deskripsi: "Bekasi memiliki infrastruktur transportasi yang lengkap..."
      list_item:
        - "Tol Jakarta-Cikampek dengan 5 gerbang tol"
        - "Stasiun Bekasi dan Bekasi Timur"
        - "LRT Jabodebek"
        - "Akses ke Bandara Soekarno-Hatta"
      info_tambahan: "Akses mudah memungkinkan tim CMJ menjangkau seluruh wilayah Bekasi dengan cepat."
```

**Catatan:**
- 4 paragraphs dengan struktur berbeda:
  - Paragraf 1-2: menggunakan `fakta` (array string)
  - Paragraf 3-4: menggunakan `list_item` dan `info_tambahan`

```
TodoWrite: Mark "Section 17: section_about_city" as [completed]
```

---

## SECTION 15: section_conclusion

```
TodoWrite: Mark "Section 18: section_conclusion" as [in_progress]
```

```yaml
section_conclusion:
  title: "Kesimpulan"
  paragraphs:
    - "PT. Cipta Mas Jaya adalah PJK3 yang melayani jasa riksa uji K3 di wilayah Bekasi. Hubungi 08568258841 untuk semua kebutuhan riksa uji Anda."
```

**Catatan:**
- 1 paragraf kesimpulan dengan CTA

```
TodoWrite: Mark "Section 18: section_conclusion" as [completed]
TodoWrite: Mark "Section 19: Final verification" as [in_progress]
```

---

## ICON REFERENCE (Bootstrap Icons)

### Umum
```
bi-shield-check     : Keselamatan, Izin
bi-person-badge     : Tenaga Ahli, Sertifikasi
bi-cash-coin        : Harga, Biaya
bi-building         : Gedung, Industri
bi-buildings        : Kawasan, Multiple buildings
bi-building-add     : Konstruksi Baru
bi-geo-alt          : Lokasi
bi-graph-up-arrow   : Pertumbuhan, Ekonomi
bi-clock-history    : Sejarah, Waktu
bi-signpost-split   : Infrastruktur
```

### Layanan
```
bi-box-seam         : Angkat Angkut
bi-thermometer-half : Bejana Tekan, Boiler
bi-gear             : Mesin, Produksi
bi-arrow-up-square  : Elevator
bi-lightning        : Listrik
bi-fire             : Kebakaran
```

### Risiko
```
bi-exclamation-octagon : Bahaya Tinggi
bi-lightning-charge    : Risiko Listrik
bi-cone-striped        : Konstruksi
```

### Proses
```
bi-search           : Identifikasi
bi-telephone-fill   : Kontak
bi-chat-dots-fill   : Konsultasi
bi-clipboard-check  : Inspeksi
bi-file-earmark-text: Laporan
bi-award            : Sertifikat
```

### FAQ
```
bi-tools            : Layanan
bi-clock            : Waktu
bi-calendar-check   : Jadwal
bi-percent          : Diskon
bi-credit-card      : Pembayaran
```

---

## CHECKLIST VERIFIKASI

### Front Matter
- [ ] layout: `node/node--pjk3-city`
- [ ] title terisi dengan format "PJK3 [Nama Kota]"
- [ ] date format YYYY-MM-DD HH:MM:SS
- [ ] description 150-160 karakter, sertakan nama kota dan telepon
- [ ] area_served terisi nama kota
- [ ] extra_js terisi `/assets/js/gallery-modal.js`
- [ ] categories terisi
- [ ] tags terisi (7 tags standar)

### Images & Gallery
- [ ] images[0-3] terisi atau kosong untuk fallback
- [ ] section_gallery: title, area, description, caption terisi

### Video
- [ ] video terisi path atau kosong untuk fallback
- [ ] section_video: title, area, description, caption, cta_text, cta_button terisi

### Section 1: section_hero
- [ ] title terisi
- [ ] theme valid (blue/orange/red/green/purple/teal/amber/indigo)
- [ ] area terisi nama kota
- [ ] description terisi
- [ ] label_wilayah terisi
- [ ] wilayah_layanan: 6-10 wilayah
- [ ] badges: 3 item dengan text dan icon valid
- [ ] cta_title, cta_button, cta_notice terisi

### Section 2: section_company_intro
- [ ] title, company_name, area, intro terisi
- [ ] subsections: 2 item
- [ ] Setiap subsection: title dan 2-3 paragraphs

### Section 3: section_services
- [ ] title, intro terisi
- [ ] services: 6 layanan
- [ ] Setiap service: title, description, icon valid

### Section 4: section_area
- [ ] title, intro terisi
- [ ] characteristics: 4 item
- [ ] Setiap characteristic: title, description, icon valid

### Section 5: section_risks
- [ ] title, intro terisi
- [ ] risks: 4 item
- [ ] Setiap risk: title, description, severity (high/medium/low), icon valid

### Section 6: section_role
- [ ] title, intro terisi
- [ ] roles: 4 item
- [ ] Setiap role: title, description, icon valid

### Section 7: section_business
- [ ] title, intro terisi
- [ ] potentials: 4 item
- [ ] Setiap potential: title, description, icon valid

### Section 8: section_city
- [ ] title, city_name, intro terisi
- [ ] highlights: 4 item
- [ ] Setiap highlight: title, description, icon valid

### Section 9: section_coverage
- [ ] title, area, intro terisi
- [ ] zona_industri: 3 item dengan nama, kawasan (3), warna valid
- [ ] judul_industri, deskripsi_industri terisi
- [ ] wilayah_kota: 4 item dengan nama, kelurahan (3), warna valid
- [ ] judul_kota, deskripsi_kota terisi
- [ ] wilayah_pinggiran: 2 item dengan nama, kelurahan (2), warna valid
- [ ] judul_pinggiran, deskripsi_pinggiran terisi
- [ ] kecamatan_lainnya: 8 item
- [ ] landmark_industri: 3 item dengan nama, icon, warna valid
- [ ] judul_landmark_industri, deskripsi_landmark_industri terisi
- [ ] landmark_komersial: 4 item dengan nama, icon, warna valid
- [ ] judul_landmark_komersial, deskripsi_landmark_komersial terisi

### Section 10: section_order
- [ ] title, area, phone, intro terisi
- [ ] initial_steps: 3 item dengan title, description, icon, color valid
- [ ] final_steps: 3 item dengan title, description, icon, color valid

### Section 11: section_testimonials
- [ ] title, area terisi
- [ ] testimoni_industri: 2 item
- [ ] Setiap testimoni: nama, jenis_usaha, jabatan, rating (1-5), judul, komentar, warna valid
- [ ] judul_industri, deskripsi_industri terisi
- [ ] testimoni_komersial: 2 item
- [ ] judul_komersial, deskripsi_komersial terisi

### Section 12: section_tips
- [ ] title, area, intro terisi
- [ ] tips: 3 item
- [ ] Setiap tip: kategori, deskripsi, kriteria (3), warna valid, icon valid

### Section 13: section_faq
- [ ] title, area terisi
- [ ] faq_layanan: 3 item dengan pertanyaan, jawaban, icon valid
- [ ] judul_layanan, deskripsi_layanan terisi
- [ ] faq_sertifikasi: 2 item dengan pertanyaan, jawaban, icon valid
- [ ] judul_sertifikasi, deskripsi_sertifikasi terisi
- [ ] faq_biaya: 3 item dengan pertanyaan, jawaban, icon valid
- [ ] judul_biaya, deskripsi_biaya terisi

### Section 14: section_about_city
- [ ] title, area, tagline, deskripsi_singkat, overview terisi
- [ ] paragraphs: 4 item
- [ ] Paragraf 1-2: judul, icon, subjudul, deskripsi, fakta (3) terisi
- [ ] Paragraf 3-4: judul, icon, subjudul, deskripsi, list_item (4-5), info_tambahan terisi

### Section 15: section_conclusion
- [ ] title terisi
- [ ] paragraphs: 1 item dengan CTA dan nomor telepon

### Final Check
- [ ] area_served konsisten di semua section
- [ ] Nomor telepon benar (08568258841)
- [ ] Semua icon Bootstrap valid (bi-xxx)
- [ ] Semua warna Bootstrap valid (primary, success, info, warning, danger, secondary)
- [ ] Preview di localhost sebelum deploy

---

## CONTOH FILE LENGKAP

Lihat: `_posts/2025-05-24-pjk3-bekasi.md`

```
TodoWrite: Mark "Section 19: Final verification" as [completed]
```

### Build & Preview
```bash
./rebuild.sh
# Buka browser: http://localhost:4000/[path-to-article]
```
