# TODO-1206: Service Hierarchy Structure

**Created**: 2025-11-26
**Updated**: 2025-11-27
**Priority**: High
**Context**: Define complete service hierarchy before creating service pages
**Goal**: Establish consistent 3-level structure for all service categories
**Depends On**: None (Research phase)

---

## Status Summary

- **Total Categories**: 6 (active)
- **Completed**: 6 ✅ (100%)
- **In Progress**: 0
- **Not Started**: 0
- **Progress**: 100% (Research Phase Complete)

---

## Overview

Sebelum membuat halaman service, perlu didefinisikan struktur hierarki yang konsisten untuk semua kategori layanan. Struktur ini akan menjadi acuan untuk:
- Pembuatan folder dan file markdown
- URL permalink
- Navigasi dan breadcrumb
- Schema.org markup
- Data di `_data/services.yml`

---

## Struktur Hierarki (3 Level)

```
Level 1: Category (Kategori Utama)
├── Level 2: Sub-category (Jenis Peralatan)
│   └── Level 3: Service (Halaman Detail)
```

### Contoh Implementasi (Pesawat Angkat)

```
_services/
├── riksa-uji-pesawat-angkat-angkut.md              ← Category page
└── riksa-uji-pesawat-angkat-angkut/
    ├── riksa-uji-forklift.md                       ← Sub-category page
    └── riksa-uji-forklift/
        └── riksa-uji-forklift.md                   ← Service detail page
```

### URL Structure

```
/layanan/                                           ← Service index
/layanan/riksa-uji-pesawat-angkat-angkut/          ← Category
/layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/
                                                    ← Sub-category
/layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/riksa-uji-forklift/
                                                    ← Service detail
```

---

## Kategori Layanan

### 1. ✅ Riksa Uji Pesawat Uap dan Bejana Tekan
**Status**: Complete (8 sub-categories)
**Category ID**: `pesawat-uap`
**Slug**: `riksa-uji-pesawat-uap-bejana-tekan`
**Regulasi**: Permenaker No. 37 Tahun 2016
**Certification Category**: `pesawat-uap`

#### Sub-categories (8 items):
| No | Sub-category | Slug | Deskripsi |
|----|--------------|------|-----------|
| 1 | Riksa Uji Boiler | `riksa-uji-boiler` | Ketel uap pipa api, pipa air, steam generator |
| 2 | Riksa Uji Thermal Oil Heater | `riksa-uji-thermal-oil-heater` | Pemanas dengan media oli thermal |
| 3 | Riksa Uji Air Receiver | `riksa-uji-air-receiver` | Tangki udara bertekanan dari kompresor |
| 4 | Riksa Uji Pressure Vessel | `riksa-uji-pressure-vessel` | Bejana tekan untuk berbagai aplikasi industri |
| 5 | Riksa Uji Heat Exchanger | `riksa-uji-heat-exchanger` | Alat penukar kalor antar media |
| 6 | Riksa Uji Deaerator | `riksa-uji-deaerator` | Penghilang oksigen dari air umpan boiler |
| 7 | Riksa Uji Autoclave | `riksa-uji-autoclave` | Sterilisasi dengan uap bertekanan tinggi |
| 8 | Riksa Uji Tangki Timbun | `riksa-uji-tangki-timbun` | Tangki penyimpan LPG, nitrogen, oksigen, BBM |

**Tasks**:
- [x] Research sub-categories
- [x] Add to services.yml
- [ ] Verify dengan sumber resmi (Permenaker/Kemnaker)
- [ ] Create folder structure
- [ ] Create markdown files

---

### 2. ✅ Riksa Uji Pesawat Angkat dan Angkut
**Status**: Complete (19 sub-categories)
**Category ID**: `pesawat-angkat`
**Slug**: `riksa-uji-pesawat-angkat-angkut`
**Regulasi**: Permenaker No. 8 Tahun 2020
**Certification Category**: `pesawat-angkat`

#### Sub-categories (19 items):
| No | Sub-category | Slug | Deskripsi |
|----|--------------|------|-----------|
| 1 | Riksa Uji Overhead Crane | `riksa-uji-overhead-crane` | Crane overhead untuk pabrik dan gudang |
| 2 | Riksa Uji Gantry Crane | `riksa-uji-gantry-crane` | Crane gantry untuk area outdoor |
| 3 | Riksa Uji Tower Crane | `riksa-uji-tower-crane` | Crane tower untuk konstruksi gedung |
| 4 | Riksa Uji Mobile Crane | `riksa-uji-mobile-crane` | Crane bergerak dengan roda/truk |
| 5 | Riksa Uji Crawler Crane | `riksa-uji-crawler-crane` | Crane dengan roda rantai |
| 6 | Riksa Uji Jib Crane | `riksa-uji-jib-crane` | Wall crane dan jib crane |
| 7 | Riksa Uji Hoist | `riksa-uji-hoist` | Electric hoist dan chain block |
| 8 | Riksa Uji Chain Block | `riksa-uji-chain-block` | Takel rantai manual dan elektrik |
| 9 | Riksa Uji Dongkrak Hidrolik | `riksa-uji-dongkrak-hidrolik` | Dongkrak hidrolik, car lift, post lift |
| 10 | Riksa Uji Gondola | `riksa-uji-gondola` | Building maintenance unit (BMU) |
| 11 | Riksa Uji Passenger Hoist | `riksa-uji-passenger-hoist` | Hoist penumpang untuk konstruksi |
| 12 | Riksa Uji Forklift | `riksa-uji-forklift` | Forklift diesel, elektrik, LPG |
| 13 | Riksa Uji Excavator | `riksa-uji-excavator` | Excavator dan backhoe |
| 14 | Riksa Uji Wheel Loader | `riksa-uji-wheel-loader` | Wheel loader dan pay loader |
| 15 | Riksa Uji Bulldozer | `riksa-uji-bulldozer` | Bulldozer dan dozer |
| 16 | Riksa Uji Reach Stacker | `riksa-uji-reach-stacker` | Reach stacker untuk container |
| 17 | Riksa Uji Manlift | `riksa-uji-manlift` | Manlift dan boom lift |
| 18 | Riksa Uji Scissor Lift | `riksa-uji-scissor-lift` | Scissor lift untuk kerja ketinggian |
| 19 | Riksa Uji Conveyor | `riksa-uji-conveyor` | Belt conveyor dan rantai berjalan |

**Tasks**:
- [x] Research complete sub-categories
- [x] Update services.yml
- [ ] Verify dengan sumber resmi
- [ ] Create folder structure
- [ ] Create markdown files

---

### 3. ✅ Riksa Uji Pesawat Tenaga dan Produksi
**Status**: Complete (18 sub-categories)
**Category ID**: `pesawat-tenaga`
**Slug**: `riksa-uji-pesawat-tenaga-produksi`
**Regulasi**: Permenaker No. 38 Tahun 2016
**Certification Category**: `pesawat-tenaga`

#### Sub-categories (18 items):
| No | Sub-category | Slug | Deskripsi |
|----|--------------|------|-----------|
| **Penggerak Mula (Prime Mover)** |||
| 1 | Riksa Uji Generator Set | `riksa-uji-genset` | Genset diesel, gas, dan hybrid |
| 2 | Riksa Uji Motor Bakar | `riksa-uji-motor-bakar` | Motor bakar diesel dan bensin |
| 3 | Riksa Uji Turbin | `riksa-uji-turbin` | Turbin gas, uap, dan air |
| 4 | Riksa Uji Motor Listrik | `riksa-uji-motor-listrik` | Motor listrik AC dan DC |
| **Mesin Perkakas (Machine Tools)** |||
| 5 | Riksa Uji Mesin Bubut | `riksa-uji-mesin-bubut` | Mesin bubut manual dan CNC |
| 6 | Riksa Uji Mesin Frais | `riksa-uji-mesin-frais` | Mesin milling manual dan CNC |
| 7 | Riksa Uji Mesin Bor | `riksa-uji-mesin-bor` | Mesin bor duduk dan radial |
| 8 | Riksa Uji Mesin Gerinda | `riksa-uji-mesin-gerinda` | Mesin gerinda datar dan silinder |
| 9 | Riksa Uji Mesin Gergaji | `riksa-uji-mesin-gergaji` | Band saw dan circular saw |
| **Mesin Produksi (Production Machines)** |||
| 10 | Riksa Uji Mesin Press | `riksa-uji-mesin-press` | Press hidrolik dan mekanik |
| 11 | Riksa Uji Mesin Potong | `riksa-uji-mesin-potong` | Mesin potong plat dan laser cutting |
| 12 | Riksa Uji Mesin Las | `riksa-uji-mesin-las` | Mesin las SMAW, MIG, TIG |
| 13 | Riksa Uji Mesin CNC | `riksa-uji-mesin-cnc` | Mesin CNC machining center |
| **Pompa dan Kompresor** |||
| 14 | Riksa Uji Kompresor | `riksa-uji-kompresor` | Kompresor udara dan gas |
| 15 | Riksa Uji Pompa | `riksa-uji-pompa` | Pompa sentrifugal dan submersible |
| 16 | Riksa Uji Blower | `riksa-uji-blower` | Industrial blower dan fan |
| **Tanur (Furnace)** |||
| 17 | Riksa Uji Tanur | `riksa-uji-tanur` | Furnace dan oven industri |
| 18 | Riksa Uji Chiller | `riksa-uji-chiller` | Industrial chiller dan cooling tower |

**Tasks**:
- [x] Research complete sub-categories
- [x] Add to services.yml
- [ ] Verify dengan sumber resmi
- [ ] Create folder structure
- [ ] Create markdown files

---

### 4. ✅ Riksa Uji Elevator dan Eskalator
**Status**: Complete (12 sub-categories)
**Category ID**: `elevator-eskalator`
**Slug**: `riksa-uji-elevator-eskalator`
**Regulasi**: Permenaker No. 6 Tahun 2017
**Certification Category**: `elevator-eskalator`

#### Sub-categories (12 items):
| No | Sub-category | Slug | Deskripsi |
|----|--------------|------|-----------|
| **Elevator Penumpang** |||
| 1 | Riksa Uji Elevator Penumpang | `riksa-uji-elevator-penumpang` | Lift penumpang gedung perkantoran, hotel, apartemen |
| 2 | Riksa Uji Elevator Panorama | `riksa-uji-elevator-panorama` | Lift kaca/kapsul untuk mall dan gedung komersial |
| 3 | Riksa Uji Home Lift | `riksa-uji-home-lift` | Lift rumah tinggal pribadi |
| **Elevator Khusus** |||
| 4 | Riksa Uji Elevator Pasien | `riksa-uji-elevator-pasien` | Bed elevator untuk rumah sakit |
| 5 | Riksa Uji Elevator Disabilitas | `riksa-uji-elevator-disabilitas` | Lift khusus penyandang disabilitas |
| 6 | Riksa Uji Fire Elevator | `riksa-uji-fire-elevator` | Elevator penanggulangan kebakaran |
| **Elevator Barang** |||
| 7 | Riksa Uji Elevator Barang | `riksa-uji-elevator-barang` | Freight elevator untuk pengangkutan barang |
| 8 | Riksa Uji Service Elevator | `riksa-uji-service-elevator` | Elevator pelayanan untuk staf hotel/gedung |
| 9 | Riksa Uji Dumbwaiter | `riksa-uji-dumbwaiter` | Lift makanan untuk restoran dan hotel |
| **Elevator Miring** |||
| 10 | Riksa Uji Incline Elevator | `riksa-uji-incline-elevator` | Elevator miring untuk medan berbukit |
| **Eskalator** |||
| 11 | Riksa Uji Eskalator | `riksa-uji-eskalator` | Eskalator mall, stasiun, bandara |
| 12 | Riksa Uji Moving Walk | `riksa-uji-moving-walk` | Travelator/palet berjalan datar atau miring |

**Tasks**:
- [x] Research complete sub-categories
- [x] Add to services.yml
- [ ] Verify dengan sumber resmi
- [ ] Create folder structure
- [ ] Create markdown files

---

### 5. ✅ Riksa Uji Instalasi Listrik dan Penyalur Petir
**Status**: Complete (12 sub-categories)
**Category ID**: `instalasi-listrik-petir`
**Slug**: `riksa-uji-instalasi-listrik-petir`
**Regulasi**: Permenaker No. 12 Tahun 2015
**Certification Category**: `instalasi-listrik-petir`

#### Sub-categories (12 items):
| No | Sub-category | Slug | Deskripsi |
|----|--------------|------|-----------|
| **Panel Tegangan Menengah** |||
| 1 | Riksa Uji Kubikel | `riksa-uji-kubikel` | Panel tegangan menengah (MVMDP/Switchgear) |
| **Panel Tegangan Rendah** |||
| 2 | Riksa Uji LVMDP | `riksa-uji-lvmdp` | Low Voltage Main Distribution Panel |
| 3 | Riksa Uji MDP | `riksa-uji-mdp` | Main Distribution Panel |
| 4 | Riksa Uji SDP | `riksa-uji-sdp` | Sub Distribution Panel |
| 5 | Riksa Uji Panel Kapasitor | `riksa-uji-panel-kapasitor` | Panel kapasitor bank untuk perbaikan faktor daya |
| **Transformator** |||
| 6 | Riksa Uji Transformator | `riksa-uji-transformator` | Trafo distribusi step-up dan step-down |
| **Pembangkit Cadangan** |||
| 7 | Riksa Uji Genset | `riksa-uji-genset` | Generator set untuk sumber listrik cadangan |
| **Instalasi Kabel** |||
| 8 | Riksa Uji Instalasi Kabel | `riksa-uji-instalasi-kabel` | Instalasi kabel tegangan rendah dan menengah |
| **Sistem Pentanahan** |||
| 9 | Riksa Uji Grounding | `riksa-uji-grounding` | Sistem pentanahan/grounding |
| **Penyalur Petir** |||
| 10 | Riksa Uji Penangkal Petir Konvensional | `riksa-uji-penangkal-petir-konvensional` | Penangkal petir tipe Franklin/konvensional |
| 11 | Riksa Uji Penangkal Petir ESE | `riksa-uji-penangkal-petir-ese` | Early Streamer Emission lightning rod |
| 12 | Riksa Uji Surge Arrester | `riksa-uji-surge-arrester` | Surge Protection Device (SPD) |

**Tasks**:
- [x] Research complete sub-categories
- [x] Add to services.yml
- [ ] Verify dengan sumber resmi
- [ ] Create folder structure
- [ ] Create markdown files

---

### 6. ✅ Riksa Uji Proteksi Kebakaran
**Status**: Complete (12 sub-categories)
**Category ID**: `proteksi-kebakaran`
**Slug**: `riksa-uji-proteksi-kebakaran`
**Regulasi**: Permenaker No. 4 Tahun 1980
**Certification Category**: `proteksi-kebakaran`

#### Sub-categories (12 items):
| No | Sub-category | Slug | Deskripsi |
|----|--------------|------|-----------|
| **Pemadam Api Ringan** |||
| 1 | Riksa Uji APAR | `riksa-uji-apar` | Alat Pemadam Api Ringan (powder, CO2, foam, liquid) |
| **Sistem Hydrant** |||
| 2 | Riksa Uji Fire Hydrant | `riksa-uji-fire-hydrant` | Sistem hydrant gedung dan halaman |
| 3 | Riksa Uji Fire Pump | `riksa-uji-fire-pump` | Pompa pemadam (jockey pump, main pump, diesel pump) |
| 4 | Riksa Uji Hose Reel | `riksa-uji-hose-reel` | Gulungan selang pemadam indoor |
| **Sistem Sprinkler** |||
| 5 | Riksa Uji Sprinkler | `riksa-uji-sprinkler` | Sistem sprinkler otomatis wet/dry |
| **Sistem Alarm** |||
| 6 | Riksa Uji Fire Alarm | `riksa-uji-fire-alarm` | Sistem alarm kebakaran dan MCFA |
| 7 | Riksa Uji Smoke Detector | `riksa-uji-smoke-detector` | Detektor asap ionization/photoelectric |
| 8 | Riksa Uji Heat Detector | `riksa-uji-heat-detector` | Detektor panas fixed/rate-of-rise |
| **Suppression System** |||
| 9 | Riksa Uji Foam System | `riksa-uji-foam-system` | Sistem pemadam busa (foam suppression) |
| 10 | Riksa Uji Gas Suppression | `riksa-uji-gas-suppression` | FM200, CO2, NOVEC, Inergen system |
| **Fire Door dan Damper** |||
| 11 | Riksa Uji Fire Door | `riksa-uji-fire-door` | Pintu tahan api (fire-rated door) |
| 12 | Riksa Uji Fire Damper | `riksa-uji-fire-damper` | Damper kebakaran pada sistem HVAC |

**Tasks**:
- [x] Research complete sub-categories
- [x] Add to services.yml
- [ ] Verify dengan sumber resmi
- [ ] Create folder structure
- [ ] Create markdown files

---

## Summary Statistics

| Category | Sub-categories | Status |
|----------|----------------|--------|
| Pesawat Uap & Bejana Tekan | 8 | ✅ Complete |
| Pesawat Angkat & Angkut | 19 | ✅ Complete |
| Pesawat Tenaga & Produksi | 18 | ✅ Complete |
| Elevator & Eskalator | 12 | ✅ Complete |
| Instalasi Listrik & Petir | 12 | ✅ Complete |
| Proteksi Kebakaran | 12 | ✅ Complete |
| **Total** | **81** | **100%** |

---

## Data Structure in services.yml

### Current Structure
```yaml
categories:
  - id: "pesawat-uap"
    name: "Riksa Uji Pesawat Uap dan Bejana Tekan"
    slug: "riksa-uji-pesawat-uap-bejana-tekan"
    items:  # Sub-categories
      - name: "Riksa Uji Boiler"
        slug: "riksa-uji-boiler"
        url: "/layanan/riksa-uji-pesawat-uap-bejana-tekan/riksa-uji-boiler/"
        description: "Ketel uap pipa api, pipa air, steam generator"
```

### Relationship with certifications.yml
```yaml
# services.yml category
- id: "pesawat-uap"
  certification_category: "pesawat-uap"  # Links to certifications.yml

# certifications.yml
- category_id: "pesawat-uap"
  company:
    name: "Sertifikat PJK3 Pesawat Uap dan Bejana Tekan"
```

---

## File Structure Plan

### Per Category
```
_services/
├── [category-slug].md                    # Category landing page
└── [category-slug]/
    ├── [subcategory-slug].md             # Sub-category page
    └── [subcategory-slug]/
        └── [subcategory-slug].md         # Service detail page
```

### Example for PUBT
```
_services/
├── riksa-uji-pesawat-uap-bejana-tekan.md
└── riksa-uji-pesawat-uap-bejana-tekan/
    ├── riksa-uji-boiler.md
    ├── riksa-uji-boiler/
    │   └── riksa-uji-boiler.md
    ├── riksa-uji-air-receiver.md
    ├── riksa-uji-air-receiver/
    │   └── riksa-uji-air-receiver.md
    └── ... (8 sub-categories total)
```

---

## Research Sources

### Official Regulations
1. **Permenaker No. 37 Tahun 2016** - K3 Bejana Tekan dan Tangki Timbun
2. **Permenaker No. 8 Tahun 2020** - K3 Pesawat Angkat dan Angkut
3. **Permenaker No. 38 Tahun 2016** - K3 Pesawat Tenaga dan Produksi
4. **Permenaker No. 6 Tahun 2017** - K3 Elevator dan Eskalator
5. **Permenaker No. 12 Tahun 2015** - K3 Listrik
6. **Permenaker No. 31 Tahun 2015** - K3 Penyalur Petir
7. **Permenaker No. 4 Tahun 1980** - Syarat Pemasangan APAR

### Industry References
- Website PJK3 lain (referensi layanan)
- Kemnaker RI official website
- BNSP (Badan Nasional Sertifikasi Profesi)
- SNI/ISO standards

---

## Implementation Plan

### Phase 1: Research & Documentation ✅ COMPLETE
**Target**: Complete hierarchy for all 6 categories

- [x] Research PUBT sub-categories (8 items)
- [x] Research Pesawat Angkat sub-categories (19 items)
- [x] Research Pesawat Tenaga sub-categories (18 items)
- [x] Research Elevator sub-categories (12 items)
- [x] Research Listrik sub-categories (12 items)
- [x] Research Proteksi Kebakaran sub-categories (12 items)
- [x] Update services.yml with complete structure

### Phase 2: Create Category Pages
**Target**: Landing page for each category

- [ ] Create 6 category markdown files
- [ ] Set up proper frontmatter
- [ ] Link to certification schema
- [ ] Test URL structure

### Phase 3: Create Sub-category Pages
**Target**: Sub-category pages for all items

- [ ] Create folder structure
- [ ] Create sub-category markdown files
- [ ] Set up proper frontmatter
- [ ] Test navigation

### Phase 4: Create Service Detail Pages
**Target**: Full detail pages

- [ ] Create service detail folders
- [ ] Create service markdown files
- [ ] Add complete content
- [ ] Add schema markup
- [ ] Test all pages

---

## Notes

- **Consistency is key** - semua kategori harus mengikuti struktur yang sama
- **Research first** - pastikan sub-category sudah lengkap sebelum membuat file
- **Verify with regulations** - sesuaikan dengan Permenaker yang berlaku
- **Link to certifications** - setiap category harus terhubung dengan certification yang sesuai
- **SEO consideration** - gunakan slug yang SEO-friendly dan konsisten

---

## Temuan & Perbaikan

### 1. Struktur Hierarki: 2-Level (Bukan 3-Level)
**Tanggal**: 2025-11-27

Struktur yang benar adalah **2-level**, bukan 3-level:
```
Level 1: Category (Kategori Utama)
└── Level 2: Service Detail (Halaman Detail Layanan)
```

**URL yang benar:**
```
/layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/
```

**Bukan:**
```
/layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/riksa-uji-forklift/
```

**Keputusan**: Gunakan struktur **3-level** dengan sub-category (lihat Temuan #2)

**Action Items:**
- [x] ~~Pindahkan konten~~ → Tidak jadi, tetap 3-level
- [x] ~~Hapus folder~~ → Tidak jadi, folder tetap diperlukan
- [x] ~~Hapus layout page--subcategory.html~~ → Tidak jadi, layout tetap diperlukan

**Struktur File yang Benar (3-Level):**
```
_services/
├── riksa-uji-pesawat-angkat-angkut.md                    ← Category
└── riksa-uji-pesawat-angkat-angkut/
    ├── pesawat-angkut.md                                  ← Sub-category
    └── pesawat-angkut/
        └── riksa-uji-forklift.md                          ← Service Detail
```

**URL yang Benar:**
```
/layanan/riksa-uji-pesawat-angkat-angkut/pesawat-angkut/riksa-uji-forklift/
```

### 2. Struktur 3-Level dengan Sub-category
**Tanggal**: 2025-11-27

Setiap kategori memiliki pengelompokan natural yang bisa dijadikan sub-category. Struktur menjadi **3-level**:

```
Level 1: Category (Kategori Utama)
└── Level 2: Sub-category (Pengelompokan)
    └── Level 3: Service Detail (Halaman Detail)
```

#### Sub-categories per Kategori (Final):

**1. Riksa Uji Pesawat Uap dan Bejana Tekan** (3 sub-categories)
| Sub-category | Slug | Services |
|--------------|------|----------|
| Pesawat Uap | `pesawat-uap` | Boiler, Thermal Oil Heater |
| Bejana Tekan | `bejana-tekan` | Air Receiver, Pressure Vessel, Heat Exchanger, Deaerator, Autoclave |
| Tangki Timbun | `tangki-timbun` | Tangki Timbun (LPG, N2, O2, BBM) |

**2. Riksa Uji Pesawat Angkat dan Angkut** (2 sub-categories)
| Sub-category | Slug | Services |
|--------------|------|----------|
| Pesawat Angkat | `pesawat-angkat` | Crane (6 jenis), Hoist, Chain Block, Dongkrak, Gondola, Passenger Hoist, Manlift, Scissor Lift |
| Pesawat Angkut | `pesawat-angkut` | Forklift, Excavator, Wheel Loader, Bulldozer, Reach Stacker, Conveyor |

**3. Riksa Uji Pesawat Tenaga dan Produksi** (5 sub-categories)
| Sub-category | Slug | Services |
|--------------|------|----------|
| Penggerak Mula | `penggerak-mula` | Genset, Motor Bakar, Turbin, Motor Listrik |
| Mesin Perkakas | `mesin-perkakas` | Mesin Bubut, Frais, Bor, Gerinda, Gergaji |
| Mesin Produksi | `mesin-produksi` | Mesin Press, Potong, Las, CNC |
| Pompa & Kompresor | `pompa-kompresor` | Kompresor, Pompa, Blower |
| Tanur | `tanur` | Tanur, Chiller |

**4. Riksa Uji Elevator dan Eskalator** (2 sub-categories)
| Sub-category | Slug | Services |
|--------------|------|----------|
| Elevator | `elevator` | Elevator Penumpang, Panorama, Home Lift, Pasien, Disabilitas, Fire Elevator, Barang, Service, Dumbwaiter, Incline |
| Eskalator | `eskalator` | Eskalator, Moving Walk |

**5. Riksa Uji Instalasi Listrik dan Penyalur Petir** (2 sub-categories)
| Sub-category | Slug | Services |
|--------------|------|----------|
| Instalasi Listrik | `instalasi-listrik` | Kubikel, LVMDP, MDP, SDP, Panel Kapasitor, Transformator, Genset, Instalasi Kabel |
| Instalasi Penyalur Petir | `instalasi-penyalur-petir` | Grounding, Penangkal Petir Konvensional, ESE, Surge Arrester |

**6. Riksa Uji Proteksi Kebakaran** (2 sub-categories)
| Sub-category | Slug | Services |
|--------------|------|----------|
| Proteksi Aktif | `proteksi-aktif` | APAR, Fire Hydrant, Fire Pump, Hose Reel, Sprinkler, Fire Alarm, Smoke Detector, Heat Detector, Foam System, Gas Suppression |
| Proteksi Pasif | `proteksi-pasif` | Fire Door, Fire Damper |

#### Summary Sub-categories (Final):
| Category | Sub-categories | Jumlah |
|----------|----------------|--------|
| Pesawat Uap & Bejana Tekan | Pesawat Uap, Bejana Tekan, Tangki Timbun | 3 |
| Pesawat Angkat & Angkut | Pesawat Angkat, Pesawat Angkut | 2 |
| Pesawat Tenaga & Produksi | Penggerak Mula, Mesin Perkakas, Mesin Produksi, Pompa/Kompresor, Tanur | 5 |
| Elevator & Eskalator | Elevator, Eskalator | 2 |
| Instalasi Listrik & Petir | Instalasi Listrik, Instalasi Penyalur Petir | 2 |
| Proteksi Kebakaran | Proteksi Aktif, Proteksi Pasif | 2 |
| **Total** | | **16** |

**Action Items:**
- [ ] Update services.yml dengan struktur sub-category
- [ ] Buat layout `page--subcategory.html` (tetap diperlukan)
- [ ] Update URL structure di services.yml
- [ ] Test navigasi dan breadcrumb

---

## Related TODOs

- **TODO-1203**: JSON Node Architecture
- **TODO-1204**: Template Migration
- **TODO-1205**: JSON Workflow Automation

---

**Last Updated**: 2025-11-27
**Next Step**: Phase 2 - Create Category Pages
**Owner**: Development Team
