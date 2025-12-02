# Release Notes v1.0.5

**Tanggal:** 2025-12-03
**Commits:** 135 sejak v1.0.4

---

## Fitur Baru

### node--alat-k3 Content Type
Halaman artikel untuk alat K3 dengan struktur lengkap:
- 22 blocks (Definition, Functions, Types, Components, HowTo, FAQ, dll)
- 15 schema files untuk Google Rich Results
- Rating system dengan testimonials
- 5 tema warna (primary, success, info, warning, danger)

### node--inspection-report Content Type
Laporan hasil inspeksi riksa uji:
- 19 blocks termasuk 6 tabel hasil pengujian
- Table schemas untuk setiap jenis pengujian
- HowTo schemas (safety valve, hydrotest)
- Gallery slider dan video block

### Robot System
Sistem otomatis untuk content freshness:
- Robot Propagator - propagasi timestamp
- Robot Sinonim - ekspansi sinonim
- Pre-commit hook dengan ON/OFF setting
- Config-driven layout filter

### Template Documentation
Dokumentasi per-section dengan TodoWrite workflow:
- PETUNJUK-PEMBUATAN untuk 4 node types
- Contoh YAML lengkap per section
- Checklist verifikasi schema

---

## Schema Validation

### node--alat-k3
| Schema Type | Items | Status |
|-------------|-------|--------|
| TechArticle | 1 | Valid |
| HowTo | 3 | Valid |
| ItemList | 4 | Valid |
| FAQPage | 1 | Valid |
| Dataset | 1 | Valid |
| DefinedTermSet | 1 | Valid |
| Product | 1 | Valid |

**Google Rich Results:** 10 item valid

---

## Technical Improvements

- BEM semantic classes di semua blocks
- Modular SCSS partials (`_sass/blocks/`)
- Standardized block IDs (`block--[name]`)
- Keywords meta field untuk SEO
- Pre-commit hook dengan propagator

---

## Breaking Changes

Tidak ada breaking changes.

---

## Upgrade Notes

1. Pull latest changes
2. Run `./rebuild.sh`
3. Verify build output

---

*Full changelog: [CHANGELOG.md](CHANGELOG.md)*
