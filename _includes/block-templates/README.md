# Block Templates - CMJ Project

## Philosophy

**Compact & Efficient Blocks**
- Data di frontmatter (.md file)
- Block hanya mapping data ke HTML
- No hardcoded content in blocks
- Minimal code, maximum flexibility

## Available Blocks

### 1. block--h1-2para.html
**Structure:** 1× H1 + 2× Paragraphs
**Size:** ~30 lines (vs 777 lines old style)

**Frontmatter:**
```yaml
intro_section:
  h1: "Riksa Uji Forklift - Jasa Inspeksi K3 Profesional"
  para_1: "Apa yang dimaksud dengan riksa uji forklift? Riksa uji forklift merupakan pemeriksaan dan pengujian keselamatan..."
  para_2: "PT. Cipta Mas Jaya sebagai PJK3 yang telah mendapat izin resmi..."
```

**Include:**
```liquid
{% include block-templates/block--h1-2para.html data=page.intro_section %}
```

**Output:**
```html
<div class="intro-section mb-5">
  <h1 class="display-5 fw-bold text-primary mb-4">Riksa Uji Forklift...</h1>
  <p class="lead mb-4">Apa yang dimaksud...</p>
  <p class="mb-4">PT. Cipta Mas Jaya...</p>
</div>
```

---

### 2. block--h2-para.html
**Structure:** 1× H2 + 1× Paragraph
**Size:** ~36 lines

**Frontmatter:**
```yaml
manfaat_section:
  h2: "Manfaat Riksa Uji Berkala"
  para: "Melakukan riksa uji forklift secara berkala memberikan berbagai manfaat jangka panjang bagi perusahaan..."
```

**Include:**
```liquid
{% include block-templates/block--h2-para.html data=page.manfaat_section %}
```

---

### 3. block--h2-h3sections.html
**Structure:** 1× H2 + N× H3 (with nested H4 via loop)
**Size:** ~81 lines

**Frontmatter:**
```yaml
mengapa_penting:
  h2: "Mengapa Riksa Uji Forklift Penting?"
  para: "Riksa uji forklift bukan sekadar kewajiban regulasi..."
  sections:
    - h3: "Komponen yang Diperiksa"
      para: "Pemeriksaan mencakup inspeksi menyeluruh..."
      subsections:
        - h4: "Sistem Hidrolik"
          para: "Sistem hidrolik merupakan jantung forklift..."
        - h4: "Sistem Pengereman"
          para: "Sistem rem harus mampu menghentikan unit..."
    - h3: "Prosedur Pengujian"
      para: "Pengujian dilakukan secara sistematis..."
```

**Include:**
```liquid
{% include block-templates/block--h2-h3sections.html data=page.mengapa_penting %}
```

---

## Naming Convention

**Blocks:** `block--[structure].html`
- `block--h1-2para.html` = 1 H1 + 2 paragraphs
- `block--h2-cards.html` = 1 H2 + multiple cards (with loop)
- `block--h2-3h3.html` = 1 H2 + 3 H3 sections

**Pattern:** `[count]x[element]` or nested `[element]([children])`

## Best Practices

1. **Always use `data=page.section_name`** untuk pass data
2. **Assign to short variable** di block (`{% assign d = include.data %}`)
3. **Conditional rendering** untuk optional fields (`{% if d.field %}`)
4. **Semantic classes** yang match frontmatter keys
5. **Minimal comments** - let code speak

## Semantic Class Mapping

**Pattern:** Frontmatter key → CSS class/ID identifier

| Frontmatter Key | HTML Class | Purpose |
|----------------|------------|---------|
| `h1` | `class="h1"` | H1 heading identifier |
| `h2` | `class="h2"` | H2 heading identifier |
| `h3` | `class="h3"` | H3 heading identifier |
| `h4` | `class="h4"` | H4 heading identifier |
| `para_1` | `class="para_1"` | First paragraph identifier |
| `para_2` | `class="para_2"` | Second paragraph identifier |
| `para` | `class="para"` | Generic paragraph identifier |
| `sections` | `class="section-item"` | Section wrapper in loop |
| `subsections` | `class="subsection-item"` | Subsection wrapper in loop |

**Example Output:**
```html
<h1 class="h1 display-5 fw-bold text-primary mb-4">...</h1>
<p class="para_1 lead mb-4">...</p>
<p class="para_2 mb-4">...</p>
```

**Benefits:**
- ✅ Easy CSS targeting: `.para_1 { }` or `#intro .para_2 { }`
- ✅ JavaScript selection: `document.querySelector('.para_1')`
- ✅ Consistent naming across project
- ✅ Self-documenting HTML structure

## Size Comparison

| Style | Lines | Maintainability |
|-------|-------|-----------------|
| Old (hardcoded 6 cards) | 777 | Low (repeat code) |
| New (loop-based) | ~100 | High (DRY) |
| New (simple blocks) | ~30 | Very High |

## Available Blocks Summary

Based on `content_structure: "1xh1, 2xpara, h2(para+3xh3@2xh4), h2(para+h3@h4), h2(para), h2(para)"`

| Block | Lines | Purpose |
|-------|-------|---------|
| ✅ `block--h1-2para.html` | 38 | H1 + 2 paragraphs (intro section) |
| ✅ `block--h2-para.html` | 36 | H2 + 1 paragraph (simple section) |
| ✅ `block--h2-h3sections.html` | 81 | H2 + nested H3/H4 (complex sections with loop) |

**Total:** 155 lines (vs 777 lines old style = **80% reduction!**)

## Future Blocks (Optional)

- ⬜ `block--h2-cards.html` (generic card grid with loop)
- ⬜ `block--h2-list.html` (H2 + bullet/numbered list)
- ⬜ `block--cta.html` (call-to-action section)
