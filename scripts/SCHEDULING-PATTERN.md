# Content Freshness Robots

## Overview

Sistem multi-robot untuk trigger lastmod / content freshness signal. Setiap run, satu robot dipilih secara random untuk beraksi.

## Available Robots

### 🤖 Robot Measurement (`rotate-frontmatter.rb`)
Variasi kecil pada angka pengukuran:
- NDT thickness: 10.5 → 10.4, 10.8 → 10.6
- Operational: 10.8 Bar → 10.7 Bar, 375°C → 374°C
- Technical: 11.2 mm → 11.1 mm, 88% → 87%
- Hydrotest: 15.75 Bar → 15.65 Bar, 30 Menit → 29 Menit

### 🤖 Robot Sinonim (`rotate-synonyms.rb`)
Ganti kata dengan sinonim:
- "dilakukan" ↔ "dilaksanakan" ↔ "dijalankan"
- "memiliki" ↔ "mempunyai"
- "dan" ↔ "serta"
- "untuk" ↔ "guna" ↔ "bagi"
- "dengan" ↔ "secara"
- "sangat" ↔ "amat" ↔ "sungguh"
- 50+ synonym groups lainnya

## Robot Scheduler

Script `run-random-robot.rb` memilih robot berdasarkan **weighted random**:
- Robot yang lama tidak dijalankan punya probabilitas lebih tinggi
- Mencegah satu robot dominan

### Weight Table

| Days Since Last Run | Weight |
|---------------------|--------|
| 0 (hari ini)        | 1      |
| 1-2 hari            | 3      |
| 3-6 hari            | 5      |
| 7-13 hari           | 8      |
| > 14 hari           | 10     |

## Probability System (Per Robot)

Setiap robot juga punya internal probability untuk per-post:

| Days Since Last Rotation | Probability |
|--------------------------|-------------|
| 0-6 hari                 | 5%          |
| 7-13 hari                | 15%         |
| 14-20 hari               | 30%         |
| 21-27 hari               | 50%         |
| 28-34 hari               | 70%         |
| > 35 hari                | 90%         |

## Log Files

Setiap komponen punya log terpisah:

```
_data/
├── robot-scheduler-log.json      # Which robot ran when
├── frontmatter-rotation-log.json # Measurement changes per post
└── synonym-rotation-log.json     # Synonym changes per post
```

## Usage

### Manual Run

```bash
# Random robot (recommended)
ruby scripts/run-random-robot.rb

# Specific robot
ruby scripts/rotate-frontmatter.rb
ruby scripts/rotate-synonyms.rb

# Dry run (preview)
ruby scripts/run-random-robot.rb --dry-run --verbose
```

### GitHub Actions

Workflow: `.github/workflows/rotate-frontmatter.yml`

**Scheduled:** Daily at 3 AM UTC (10 AM WIB)

**Manual trigger dengan pilihan:**
- `robot: random` - Pilih robot random (default)
- `robot: measurement` - Jalankan Robot Measurement
- `robot: synonym` - Jalankan Robot Sinonim

## SEO Purpose

1. **File modified** → lastmod di sitemap berubah
2. **Content freshness signal** → Google sees "updated" content
3. **Natural variation** → Perubahan terlihat natural
4. **Rotating robots** → Variasi jenis perubahan

## What's Safe

✅ **Changed:**
- Angka pengukuran (dalam range wajar)
- Kata-kata umum (diganti sinonim)
- Text dalam paragraphs, intro, summary

❌ **NOT Changed:**
- Title dan URL
- Struktur data (keys, arrays)
- Status fields ("lulus", "baik")
- Standard/threshold values
- Links dan HTML tags

## Adding New Robots

1. Create new script in `scripts/` folder
2. Add robot config to `ROBOTS` array in `run-random-robot.rb`:
   ```ruby
   {
     id: 'new-robot',
     name: 'Robot Baru',
     script: 'rotate-new.rb',
     description: 'Deskripsi robot'
   }
   ```
3. Script harus support `--dry-run` dan `--verbose` flags
