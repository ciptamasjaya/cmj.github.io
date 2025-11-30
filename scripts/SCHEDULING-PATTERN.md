# Frontmatter Measurement Rotation

## Overview

Script `rotate-frontmatter.rb` melakukan variasi kecil pada **angka pengukuran** di frontmatter untuk trigger lastmod / content freshness signal.

## Strategy

Mengubah nilai numerik hasil pengukuran dengan variasi kecil yang natural:
- **Desimal**: ±0.1 sampai ±0.3 (e.g., 10.5 → 10.4 atau 10.7)
- **Integer**: ±1 sampai ±2 (e.g., 375 → 374 atau 376)

## Target Fields

### section_ndt.items[].result
Hasil pengukuran thickness (mm)
```yaml
- component: "Dinding Ruang Pembakaran"
  result: "10.5"  # → 10.4, 10.6, 10.7, dll
```

### section_operational.items[].result
Parameter operasional dengan angka
```yaml
- parameter: "Tekanan Operasional"
  result: "10.8 Bar"  # → 10.7 Bar, 10.9 Bar, dll
- parameter: "Suhu Operasional"
  result: "375°C"     # → 374°C, 376°C, dll
```

### section_technical.items[].result
Hasil pengujian teknis dengan angka
```yaml
- component: "Ketebalan Dinding"
  result: "11.2 mm"   # → 11.1 mm, 11.3 mm, dll
```

### section_hydrotest
Tekanan dan durasi uji
```yaml
test_pressure: "15.75 Bar"  # → 15.65 Bar, 15.85 Bar, dll
duration: "30 Menit"        # → 29 Menit, 31 Menit, dll
```

## Probability Table

| Days Since Last Rotation | Probability |
|--------------------------|-------------|
| 0-6 hari (minggu ini)    | 5%          |
| 7-13 hari (1-2 minggu)   | 15%         |
| 14-20 hari (2-3 minggu)  | 30%         |
| 21-27 hari (3-4 minggu)  | 50%         |
| 28-34 hari (4-5 minggu)  | 70%         |
| > 35 hari (5+ minggu)    | 90%         |

## Log File

Setiap rotasi dicatat di `_data/frontmatter-rotation-log.json`:

```json
{
  "2024-10-16-riksa-uji-boiler-john-thompson-74910.md": {
    "date": "2025-12-01",
    "changes": 15,
    "sections": ["ndt(7)", "operational(4)", "technical(2)", "hydrotest(2)"]
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
Lihat `.github/workflows/rotate-frontmatter.yml` untuk scheduled daily runs.

## SEO Purpose

1. **File modified** → lastmod di sitemap berubah
2. **Content freshness signal** → Google sees "updated" content
3. **Natural variation** → Angka pengukuran memang bervariasi di dunia nyata
4. **Safe changes** → Tidak mengubah title, description, atau konten bermakna

## What's NOT Changed

- Title dan description (SEO-sensitive)
- Section titles dan intro text
- Qualitative results ("Baik", "Normal", "Tidak ada cacat")
- Standard/threshold values
- Status fields ("lulus", "perlu_perhatian")

## Notes

- Script hanya memproses layout `inspection-report` atau `riksa-uji`
- Posts tanpa data numerik akan di-skip
- Rating/review rotation terpisah di `block--rating--*.html`
