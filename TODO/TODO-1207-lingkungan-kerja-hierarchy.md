# TODO-1207: Riksa Uji Lingkungan Kerja Hierarchy

**Created**: 2025-11-27
**Priority**: Medium
**Status**: Research Complete
**Depends On**: TODO-1206 (Service Hierarchy Structure)

---

## Overview

Kategori "Riksa Uji Lingkungan Kerja" saat ini masih draft dan belum memiliki subcategories. Dokumen ini mendefinisikan struktur hierarki berdasarkan riset dari:
- Permenaker No. 5 Tahun 2018 tentang K3 Lingkungan Kerja
- Layanan PJK3 yang ada di Indonesia
- Balai Besar K3 Jakarta

---

## Regulasi Utama

### Permenaker No. 5 Tahun 2018
Peraturan ini mengatur 5 faktor lingkungan kerja yang wajib diukur dan dikendalikan:

1. **Faktor Fisika** - iklim kerja, kebisingan, getaran, gelombang radio/mikro, sinar UV, medan magnet statis, tekanan udara, pencahayaan
2. **Faktor Kimia** - gas beracun, debu, uap pelarut, fume, mist
3. **Faktor Biologi** - mikroorganisme, bakteri, jamur, parasit
4. **Faktor Ergonomi** - postur kerja, beban kerja, desain tempat kerja
5. **Faktor Psikologi** - beban kerja kualitatif/kuantitatif, konflik peran

### NAB (Nilai Ambang Batas) yang Berlaku
| Parameter | NAB | Keterangan |
|-----------|-----|------------|
| Kebisingan | 85 dB | Untuk 8 jam kerja |
| Pencahayaan | 300-500 lux | Pekerjaan kantor umum |
| Pencahayaan | 500-1000 lux | Pekerjaan detail |
| Iklim Kerja | Sesuai ISBB | Indeks Suhu Basah dan Bola (WBGT) |

---

## Current State in services.yml

```yaml
- id: "lingkungan-kerja"
  name: "Riksa Uji Lingkungan Kerja"
  slug: "lingkungan-kerja"
  icon: "bi-heart-pulse"
  color: "info"
  description: "Pengukuran dan monitoring kualitas lingkungan kerja"
  status: draft
  # subcategories: BELUM ADA
```

---

## Proposed Hierarchy (3-Level)

### Category Info
- **Category ID**: `lingkungan-kerja`
- **Name**: Pengukuran Lingkungan Kerja
- **Slug**: `pengukuran-lingkungan-kerja`
- **Regulasi**: Permenaker No. 5 Tahun 2018 tentang K3 Lingkungan Kerja

---

## Sub-categories & Services

### 1. Faktor Fisika
**Slug**: `faktor-fisika`
**Description**: Pengukuran faktor fisika di lingkungan kerja sesuai Permenaker No. 5 Tahun 2018

| No | Service | Slug | Deskripsi | Alat Ukur |
|----|---------|------|-----------|-----------|
| 1 | Pengukuran Kebisingan | `pengukuran-kebisingan` | Pengukuran tingkat kebisingan (dB) di area kerja | Sound Level Meter, Dosimeter |
| 2 | Pengukuran Pencahayaan | `pengukuran-pencahayaan` | Pengukuran intensitas cahaya (lux) di tempat kerja | Lux Meter |
| 3 | Pengukuran Iklim Kerja | `pengukuran-iklim-kerja` | Pengukuran ISBB/WBGT (suhu, kelembaban, radiasi panas) | Heat Stress Monitor, Wet Bulb Globe |
| 4 | Pengukuran Getaran | `pengukuran-getaran` | Pengukuran getaran whole body dan hand-arm | Vibration Meter |
| 5 | Pengukuran Radiasi UV | `pengukuran-radiasi-uv` | Pengukuran paparan sinar ultraviolet | UV Meter |
| 6 | Pengukuran Gelombang Elektromagnetik | `pengukuran-gelombang-em` | Pengukuran radiasi gelombang radio/mikro dan medan magnet | EMF Meter |
| 7 | Pengukuran Tekanan Udara | `pengukuran-tekanan-udara` | Pengukuran tekanan atmosfer untuk kerja di ketinggian/kedalaman | Barometer |

**Total: 7 services**

---

### 2. Faktor Kimia
**Slug**: `faktor-kimia`
**Description**: Pengukuran faktor kimia dan kualitas udara di lingkungan kerja

| No | Service | Slug | Deskripsi | Parameter |
|----|---------|------|-----------|-----------|
| 1 | Pengukuran Kualitas Udara | `pengukuran-kualitas-udara` | Pengukuran Indoor Air Quality (IAQ) | CO2, O2, suhu, kelembaban |
| 2 | Pengukuran Debu | `pengukuran-debu` | Pengukuran partikulat (TSP, PM10, PM2.5) | Debu total, debu respirabel |
| 3 | Pengukuran Gas Beracun | `pengukuran-gas-beracun` | Pengukuran konsentrasi gas berbahaya | CO, H2S, NH3, NO2, SO2, Cl2 |
| 4 | Pengukuran Uap Organik | `pengukuran-uap-organik` | Pengukuran uap pelarut organik (VOC) | Benzene, Toluene, Xylene, dll |
| 5 | Pengukuran Fume dan Mist | `pengukuran-fume-mist` | Pengukuran welding fume dan oil mist | Metal fume, oil mist |
| 6 | Pengukuran Logam Berat | `pengukuran-logam-berat` | Pengukuran paparan logam berat di udara | Pb, Hg, Cd, Cr, As |

**Total: 6 services**

---

### 3. Faktor Biologi
**Slug**: `faktor-biologi`
**Description**: Pengukuran faktor biologi dan mikroorganisme di lingkungan kerja

| No | Service | Slug | Deskripsi | Parameter |
|----|---------|------|-----------|-----------|
| 1 | Pengukuran Mikrobiologi Udara | `pengukuran-mikrobiologi-udara` | Pengukuran bakteri dan jamur di udara | Total bacteria, fungi count |
| 2 | Pengukuran Kualitas Air | `pengukuran-kualitas-air` | Pengukuran kualitas air minum dan sanitasi | Coliform, E.coli, pH, TDS |

**Total: 2 services**

---

### 4. Faktor Ergonomi
**Slug**: `faktor-ergonomi`
**Description**: Analisis dan pengukuran faktor ergonomi di tempat kerja

| No | Service | Slug | Deskripsi | Metode |
|----|---------|------|-----------|--------|
| 1 | Analisis Ergonomi Kerja | `analisis-ergonomi-kerja` | Evaluasi postur dan metode kerja | RULA, REBA, OWAS |
| 2 | Pengukuran Beban Kerja Fisik | `pengukuran-beban-kerja-fisik` | Analisis beban angkat dan angkut manual | NIOSH Lifting Equation |

**Total: 2 services**

---

### 5. Faktor Psikologi (Opsional)
**Slug**: `faktor-psikologi`
**Description**: Pengukuran faktor psikologi dan beban kerja mental

| No | Service | Slug | Deskripsi | Metode |
|----|---------|------|-----------|--------|
| 1 | Analisis Beban Kerja Mental | `analisis-beban-kerja-mental` | Evaluasi stres kerja dan beban mental | NASA-TLX, Kuesioner |

**Total: 1 service**

---

## Summary Statistics

| Sub-category | Jumlah Services |
|--------------|-----------------|
| Faktor Fisika | 7 |
| Faktor Kimia | 6 |
| Faktor Biologi | 2 |
| Faktor Ergonomi | 2 |
| Faktor Psikologi | 1 |
| **Total** | **18** |

---

## URL Structure

```
/layanan/pengukuran-lingkungan-kerja/                                    ← Category
/layanan/pengukuran-lingkungan-kerja/faktor-fisika/                      ← Sub-category
/layanan/pengukuran-lingkungan-kerja/faktor-fisika/pengukuran-kebisingan/   ← Service
```

---

## File Structure

```
_services/
├── pengukuran-lingkungan-kerja.md                       ← Category page
└── pengukuran-lingkungan-kerja/
    ├── faktor-fisika.md                                 ← Sub-category
    ├── faktor-fisika/
    │   ├── pengukuran-kebisingan.md
    │   ├── pengukuran-pencahayaan.md
    │   ├── pengukuran-iklim-kerja.md
    │   ├── pengukuran-getaran.md
    │   ├── pengukuran-radiasi-uv.md
    │   ├── pengukuran-gelombang-em.md
    │   └── pengukuran-tekanan-udara.md
    ├── faktor-kimia.md                                  ← Sub-category
    ├── faktor-kimia/
    │   ├── pengukuran-kualitas-udara.md
    │   ├── pengukuran-debu.md
    │   ├── pengukuran-gas-beracun.md
    │   ├── pengukuran-uap-organik.md
    │   ├── pengukuran-fume-mist.md
    │   └── pengukuran-logam-berat.md
    ├── faktor-biologi.md                                ← Sub-category
    ├── faktor-biologi/
    │   ├── pengukuran-mikrobiologi-udara.md
    │   └── pengukuran-kualitas-air.md
    ├── faktor-ergonomi.md                               ← Sub-category
    ├── faktor-ergonomi/
    │   ├── analisis-ergonomi-kerja.md
    │   └── pengukuran-beban-kerja-fisik.md
    ├── faktor-psikologi.md                              ← Sub-category (opsional)
    └── faktor-psikologi/
        └── analisis-beban-kerja-mental.md
```

---

## Layanan PJK3 yang Umum Dijual

Berdasarkan riset dari beberapa PJK3 di Indonesia:

### Paling Populer (High Demand)
1. **Pengukuran Kebisingan** - hampir semua industri
2. **Pengukuran Pencahayaan** - perkantoran, pabrik
3. **Pengukuran Iklim Kerja** - pabrik, outdoor
4. **Pengukuran Debu** - pertambangan, konstruksi
5. **Pengukuran Gas Beracun** - migas, kimia

### Medium Demand
6. **Pengukuran Getaran** - operator alat berat
7. **Pengukuran Kualitas Udara** - perkantoran, mall
8. **Analisis Ergonomi** - manufaktur

### Low Demand (Spesialis)
9. **Pengukuran Radiasi** - rumah sakit, nuklir
10. **Pengukuran Logam Berat** - industri baterai, electroplating

---

## Perbedaan dengan Riksa Uji Peralatan

| Aspek | Riksa Uji Peralatan | Pengukuran Lingkungan Kerja |
|-------|---------------------|----------------------------|
| Objek | Peralatan/mesin | Lingkungan/area kerja |
| Output | Sertifikat kelayakan operasi | Laporan hasil pengukuran |
| Tujuan | Memastikan peralatan aman | Memastikan lingkungan aman |
| Masa Berlaku | 1-3 tahun | Rekomendasi: 1 tahun |
| Regulasi | Permenaker spesifik peralatan | Permenaker No. 5/2018 |

---

## Regulasi Terkait

1. **Permenaker No. 5 Tahun 2018** - K3 Lingkungan Kerja (utama)
2. **Kepmenaker No. 51 Tahun 1999** - NAB Faktor Fisika di Tempat Kerja
3. **SNI 16-7063-2004** - Nilai Ambang Batas Iklim Kerja (ISBB)
4. **SNI 7231:2009** - Metode Pengukuran Kebisingan
5. **SNI 16-7062-2004** - Pengukuran Intensitas Penerangan

---

## Implementation Tasks

- [x] Research faktor-faktor lingkungan kerja dari Permenaker
- [x] Research layanan PJK3 yang dijual di Indonesia
- [x] Definisikan sub-categories dan services
- [ ] Update services.yml dengan struktur lengkap
- [ ] Buat category page
- [ ] Buat sub-category pages (5 files)
- [ ] Buat service detail pages (18 files)
- [ ] Update status dari draft ke active
- [ ] Test navigasi dan breadcrumb

---

## Research Sources

- [PT. Cipta Mas Jaya - Pengukuran Lingkungan Kerja](https://www.ciptamasjaya.co.id/2025/06/16/pengukuran-lingkungan-kerja/)
- [Balai Besar K3 Jakarta - Pengujian Lingkungan Kerja](https://balaibesark3jakarta.kemnaker.go.id/pengujian-lingkungan-kerja)
- [Safety Sign Indonesia - Permenaker No. 5 Tahun 2018](https://safetysignindonesia.id/standar-k3-baru-ini-4-poin-penting-dalam-permenaker-no-5-tahun-2018-yang-wajib-anda-ketahui/)
- [Synergy Solusi - Pengukuran Lingkungan Kerja](https://synergysolusi.com/indonesia/berita-terbaru/pengukuran-lingkungan-kerja-apa-saja-yang-diukur/)
- [AAS Laboratory - PJK3 Services](https://www.aaslaboratory.com/news/det/38/40196/keselamatan_kerja_terjamin_dengan_laboratorium_yang_memberikan_pelayanan_keselamatan_dan_kesehatan_kerja_(pjk3))

---

## Notes

- Kategori ini berbeda dengan kategori riksa uji lain karena fokus pada **pengukuran/monitoring lingkungan**, bukan inspeksi peralatan
- Output berupa **laporan hasil pengukuran**, bukan sertifikat kelayakan operasi
- Perlu peralatan khusus: Sound Level Meter, Lux Meter, Heat Stress Monitor, Gas Detector, dll
- Faktor Psikologi bisa dijadikan opsional karena demand rendah

---

**Last Updated**: 2025-11-27
**Next Step**: Update services.yml dengan struktur lengkap
**Owner**: Development Team
