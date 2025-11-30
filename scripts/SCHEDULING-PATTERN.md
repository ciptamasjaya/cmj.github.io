# Frontmatter Rotation Scheduling Pattern

## Overview

Script `rotate-frontmatter.rb` menggunakan **escalating probability system** untuk menentukan apakah sebuah post akan dirotasi. Semakin lama tidak diupdate, semakin tinggi probabilitasnya.

## Probability Table

| Days Since Last Rotation | Probability |
|--------------------------|-------------|
| 0-6 hari (minggu ini)    | 5%          |
| 7-13 hari (1-2 minggu)   | 15%         |
| 14-20 hari (2-3 minggu)  | 30%         |
| 21-27 hari (3-4 minggu)  | 50%         |
| 28-34 hari (4-5 minggu)  | 70%         |
| > 35 hari (5+ minggu)    | 90%         |

## What Gets Rotated

### 1. Description (Meta Description)
Building blocks kombinasi:
- **Intro**: "Laporan lengkap hasil", "Dokumentasi resmi", "Hasil pemeriksaan"
- **Service**: "riksa uji", "pemeriksaan K3", "inspeksi berkala"
- **Object**: auto-detect dari title (forklift, boiler, crane, etc.)
- **Closing**: variasi kalimat penutup

### 2. Section Titles (Generic Only)
Hanya section titles yang **generic** (pendek, tanpa nama objek spesifik) yang dirotasi.

Contoh yang DIROTASI:
- "Pendahuluan" → "Latar Belakang"
- "Kesimpulan" → "Simpulan dan Saran"

Contoh yang TIDAK DIROTASI (custom/spesifik):
- "Pemeriksaan Visual Forklift Caterpillar EP20 Seri E2B00501"
- "Analisis Data dan Pembahasan Laporan Riksa Uji Boiler John Thompson"

## Log File

Setiap rotasi dicatat di `_data/frontmatter-rotation-log.json`:

```json
{
  "2024-12-16-riksa-uji-forklift-caterpillar-ep20-5ss25am.md": {
    "date": "2025-12-01",
    "changes": ["description", "section_titles"]
  }
}
```

## Usage

### Manual Run
```bash
# Dry run (preview tanpa perubahan)
ruby scripts/rotate-frontmatter.rb --dry-run --verbose

# Live run
ruby scripts/rotate-frontmatter.rb
```

### GitHub Actions
Lihat `.github/workflows/rotate-frontmatter.yml` untuk scheduled runs.

## SEO Purpose

Rotasi ini bertujuan untuk:
1. **Trigger lastmod** - Perubahan konten membuat lastmod berubah
2. **Content freshness signal** - Google melihat konten "fresh"
3. **Re-crawl trigger** - Sitemap update → Googlebot re-crawl
4. **Natural variation** - Tidak semua post update bersamaan (probability system)

## Notes

- Script hanya memproses layout `inspection-report` atau `riksa-uji`
- Tidak mengubah konten utama (body markdown)
- Rating/review rotation terpisah di `block--rating--*.html`
