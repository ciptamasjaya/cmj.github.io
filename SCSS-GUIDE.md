# SCSS Architecture Guide

## Overview

Project ini menggunakan **SCSS (Sassy CSS)** untuk styling dengan arsitektur modular dan maintainable. SCSS dikompile otomatis oleh Jekyll menjadi CSS.

---

## File Structure

```
assets/css/
├── main.scss              # Entry point (import semua partials)
├── _variables.scss        # Global variables (colors, spacing, typography)
├── _mixins.scss           # Reusable mixins (responsive, gradients, dll)
├── _base.scss             # Base styles (resets, typography, utilities)
├── _components.scss       # Component styles (navbar, cards, buttons, dll)
└── main.css               # Compiled output (auto-generated, jangan edit!)
```

---

## Import Order (PENTING!)

Di `main.scss`, urutan import harus seperti ini:

```scss
1. @import "variables";    // Pertama: variables
2. @import "mixins";       // Kedua: mixins (menggunakan variables)
3. @import "base";         // Ketiga: base styles
4. @import "components";   // Keempat: components
```

**Jangan ubah urutan!** Variables harus pertama karena digunakan di file lain.

---

## 1. Variables (_variables.scss)

### Kapan Menggunakan

- Definisi colors, spacing, typography, shadows
- Gradient presets
- Breakpoints
- Component-specific values

### Contoh Penggunaan

```scss
// Di _variables.scss
$color-primary: #0d6efd;
$spacing-md: 1rem;
$shadow-lg: 0 1rem 3rem rgba(0, 0, 0, 0.175);

// Di file lain
.card {
  box-shadow: $shadow-lg;
  padding: $spacing-md;
  border-color: $color-primary;
}
```

### Brand Colors Tersedia

```scss
$color-wood: #8B4513;
$color-wood-light: #D4A574;
$color-wood-dark: #6B5310;
```

### Gradient Presets

```scss
$gradient-coffee: linear-gradient(135deg, #D4A574 0%, #8B6914 50%, #6B5310 100%);
$gradient-ocean: linear-gradient(135deg, #0ea5e9 0%, #0284c7 50%, #0369a1 100%);
$gradient-sunset: linear-gradient(135deg, #f97316 0%, #ea580c 50%, #dc2626 100%);
// ... dan lainnya
```

---

## 2. Mixins (_mixins.scss)

### Kapan Menggunakan

- Ketika ada pattern berulang yang memerlukan parameter
- Untuk responsive breakpoints
- Untuk efek hover yang konsisten
- Untuk positioning yang kompleks

### Responsive Mixins

```scss
// Mobile-first (min-width)
@include media-up(md) {
  .card {
    width: 50%;
  }
}

// Desktop-first (max-width)
@include media-down(md) {
  .card {
    width: 100%;
  }
}

// Range
@include media-between(sm, lg) {
  .card {
    width: 75%;
  }
}
```

### Flexbox Mixins

```scss
.centered-content {
  @include flex-center;  // display: flex + center both
}

.navbar {
  @include flex-between;  // justify-content: space-between
}

.sidebar {
  @include flex-column-center;  // column layout + center
}
```

### Hover Effects

```scss
.card {
  @include hover-lift;  // Lift up on hover dengan shadow
}

.image {
  @include hover-scale(1.1);  // Scale 1.1x on hover
}
```

### Icon Circle

```scss
.icon-wrapper {
  @include icon-circle(60px, $color-primary);
  // Creates circle dengan background + centered icon
}
```

### Typography

```scss
.truncate-text {
  @include text-truncate;  // Single line ellipsis
}

.clamp-text {
  @include text-line-clamp(3);  // Show 3 lines then ellipsis
}
```

### Gradient

```scss
.hero {
  @include gradient-bg($gradient-coffee);
}

.gradient-title {
  @include gradient-text($gradient-ocean);
}
```

---

## 3. Base Styles (_base.scss)

### Apa Yang Ada Di Sini

- Global resets (box-sizing, margin, padding)
- Typography base (headings, paragraphs, links)
- Image defaults
- List styling
- Code blocks
- Utility classes

### Utility Classes Tersedia

```scss
// Brand text colors
.text-wood
.text-wood-light
.text-wood-dark

// Background colors
.bg-wood
.bg-gradient-coffee
.bg-gradient-ocean

// Section spacing
.section       // Default padding
.section-sm    // Smaller padding
.section-lg    // Larger padding

// Effects
.hover-lift
.hover-scale

// Shadows
.shadow-custom
.shadow-custom-lg
.shadow-custom-xl
```

---

## 4. Components (_components.scss)

### Apa Yang Ada Di Sini

Styles untuk semua components di `_includes/components/`:

- Navbar & Footer
- Cards (custom, gradient, icon-top)
- Buttons (custom, whatsapp, wood)
- WhatsApp CTA (float, card)
- Headings (h3-circle, h4-icon)
- Lists (item-list-strong, list-with-icon)
- Accordion, Carousel
- Alerts, Badges, Breadcrumbs

### Custom Classes Tersedia

#### Navbar
```scss
.navbar-custom
.navbar-sticky
```

#### Footer
```scss
.footer-custom
.footer-copyright
```

#### Cards
```scss
.card-custom          // Dengan hover effect
.card-gradient        // Untuk gradient backgrounds
.card-icon-top        // Icon di atas
```

#### Buttons
```scss
.btn-custom
.btn-primary-custom
.btn-success-custom
.btn-wood
.btn-whatsapp
.btn-sm-custom
.btn-lg-custom
```

#### WhatsApp
```scss
.whatsapp-float       // Floating button (bottom-right)
.whatsapp-card-cta    // Card style CTA
```

#### Lists
```scss
.item-list-strong     // Icon + strong title + description
.list-with-icon       // Simple icon list
```

---

## Best Practices

### 1. Gunakan Variables, Jangan Hard-code

❌ **SALAH:**
```scss
.card {
  color: #8B4513;
  padding: 16px;
  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175);
}
```

✅ **BENAR:**
```scss
.card {
  color: $color-wood;
  padding: $spacing-md;
  box-shadow: $shadow-lg;
}
```

### 2. Gunakan Mixins Untuk Pattern Berulang

❌ **SALAH:**
```scss
.card {
  display: flex;
  justify-content: center;
  align-items: center;
}

.modal {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

✅ **BENAR:**
```scss
.card {
  @include flex-center;
}

.modal {
  @include flex-center;
}
```

### 3. Mobile-First Approach

✅ **BENAR:**
```scss
// Base: Mobile styles
.card {
  width: 100%;
  padding: $spacing-md;
}

// Tablet up
@include media-up(md) {
  .card {
    width: 50%;
    padding: $spacing-lg;
  }
}

// Desktop up
@include media-up(lg) {
  .card {
    width: 33.333%;
  }
}
```

### 4. Nesting Jangan Terlalu Dalam

❌ **SALAH:**
```scss
.navbar {
  .navbar-menu {
    .menu-item {
      .menu-link {
        .link-icon {
          color: red;  // 5 levels deep!
        }
      }
    }
  }
}
```

✅ **BENAR:**
```scss
.navbar {
  // level 1
}

.navbar-menu {
  // level 1
}

.menu-link {
  .link-icon {
    // max 2-3 levels
    color: $color-primary;
  }
}
```

### 5. Gunakan BEM atau Modifier Classes

```scss
// Block
.card {
  padding: $spacing-md;
}

// Modifier
.card--large {
  padding: $spacing-xl;
}

.card--gradient {
  @include gradient-bg($gradient-coffee);
}
```

---

## Workflow Development

### Saat Membuat Reusable Block Baru

1. **Buat HTML component** di `_includes/components/`
2. **Tambahkan styles** di `_components.scss`
3. **Gunakan variables & mixins** yang sudah ada
4. **Test responsive** dengan media queries
5. **Document di COMPONENTS.md**

### Saat Perlu Warna/Spacing Baru

1. **Tambahkan di `_variables.scss`** dulu
2. **Gunakan variable** di component
3. **Jangan hard-code** nilai

### Compile SCSS

Jekyll **auto-compile** SCSS saat:
- `jekyll serve` (development)
- `jekyll build` (production)

Output: `assets/css/main.css` (jangan edit file ini!)

---

## Troubleshooting

### Error: "Undefined variable"

**Penyebab:** Variable belum didefinisikan atau typo.

**Solusi:**
1. Check `_variables.scss` apakah variable sudah ada
2. Check spelling (case-sensitive!)
3. Pastikan `_variables.scss` di-import pertama di `main.scss`

### Error: "Undefined mixin"

**Penyebab:** Mixin belum didefinisikan atau import order salah.

**Solusi:**
1. Check `_mixins.scss` apakah mixin sudah ada
2. Pastikan `_mixins.scss` di-import setelah `_variables.scss`

### Styles Tidak Muncul

**Penyebab:** Jekyll belum compile atau cache issue.

**Solusi:**
```bash
# Stop Jekyll
Ctrl+C

# Clear cache
rm -rf .sass-cache .jekyll-cache

# Restart
bundle exec jekyll serve
```

### Changes Tidak Keliatan

**Penyebab:** Browser cache.

**Solusi:**
- Hard refresh: Ctrl+Shift+R (Chrome/Firefox)
- Clear browser cache
- Check file `main.css` apakah sudah terupdate

---

## Examples

### Membuat Custom Section dengan SCSS

**HTML:**
```html
<section class="features-section">
  <div class="container">
    <h2 class="section-title">Our Features</h2>
    <div class="features-grid">
      <!-- feature cards -->
    </div>
  </div>
</section>
```

**SCSS (_components.scss):**
```scss
.features-section {
  padding: $spacing-4xl 0;
  background: rgba($color-wood, 0.05);

  .section-title {
    text-align: center;
    margin-bottom: $spacing-3xl;
    @include gradient-text($gradient-coffee);
  }

  .features-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: $spacing-xl;

    @include media-down(md) {
      grid-template-columns: 1fr;
      gap: $spacing-lg;
    }
  }
}
```

---

## Resources

- **SCSS Documentation:** https://sass-lang.com/documentation
- **Jekyll SCSS:** https://jekyllrb.com/docs/assets/
- **Bootstrap 5:** https://getbootstrap.com/docs/5.3/

---

## Author

- arisciwek
- Date: 2025-11-22
- Version: 1.0.0

**Status:** ✅ SCSS Architecture siap digunakan
