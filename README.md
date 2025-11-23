# PT. Cipta Mas Jaya - Corporate Website

Website resmi PT. Cipta Mas Jaya, perusahaan jasa inspeksi dan riksa uji K3 (Keselamatan dan Kesehatan Kerja) yang terpercaya di Indonesia.

## 📋 Tentang Proyek

Website ini dibangun untuk memberikan informasi lengkap tentang layanan inspeksi K3 yang kami tawarkan, serta memudahkan klien untuk menghubungi kami.

### Layanan Kami

1. **Riksa Uji Pesawat Uap dan Bejana Tekan**
   - Boiler, Air Receiver, Autoclave, Pressure Vessel

2. **Riksa Uji Pesawat Angkat Angkut**
   - Crane, Hoist, Forklift, Gondola

3. **Riksa Uji Pesawat Tenaga Dan Produksi**
   - Mesin-mesin produksi dan peralatan industri

4. **Riksa Uji Elevator dan Eskalator**
   - Lift penumpang, lift barang, eskalator

5. **Riksa Uji Instalasi Listrik dan Penyalur Petir**
   - Instalasi listrik tegangan tinggi/rendah, grounding system

6. **Riksa Uji Proteksi Sarana Kebakaran**
   - APAR, Hydrant, Sprinkler, Fire Alarm

7. **Riksa Uji Lifeline**
   - Sistem keselamatan kerja di ketinggian

8. **Riksa Uji Lingkungan Kerja**
   - Pengukuran kebisingan, pencahayaan, suhu, dll

9. **Pengesahan Gambar Kemnaker RI**
   - Pengesahan gambar teknis peralatan K3

## 🚀 Teknologi

- **Jekyll 4.4.1** - Static site generator dengan data-driven architecture
- **HTML5** - Struktur halaman dengan semantic markup
- **CSS3/SCSS** - Styling dengan arsitektur modular dan BEM naming
- **Bootstrap 5.3** - Framework CSS responsif
- **JavaScript** - Interaktivitas
- **Git LFS** - Large file storage untuk optimasi images
- **jekyll-last-modified-at** - Automatic sitemap timestamps
- **PWA Ready** - Progressive Web App support

## 📁 Struktur Proyek

```
public_html/
├── _data/                      # Data configuration files (YAML)
│   ├── navigation.yml         # Menu navigasi
│   ├── services.yml          # Konfigurasi layanan
│   ├── social.yml            # Kontak & social media
│   ├── commitments.yml       # Komitmen perusahaan
│   ├── faq_contact.yml       # FAQ kontak
│   ├── service_intro.yml     # Service introduction
│   ├── business_info.yml     # Informasi bisnis
│   ├── company_profile.yml   # Profil perusahaan
│   ├── contact_form.yml      # Konfigurasi form kontak
│   ├── contact_cards.yml     # Kartu kontak
│   └── cta_contact.yml       # Call-to-action kontak
├── _layouts/                  # Jekyll layouts
│   ├── default.html
│   ├── page.html
│   └── post.html
├── _includes/                 # Reusable components
│   ├── header.html
│   ├── footer.html
│   └── ...
├── _scss/                     # SCSS source files
│   ├── base/
│   ├── components/
│   ├── layout/
│   ├── pages/
│   └── main.scss
├── assets/
│   ├── css/                   # Compiled CSS
│   ├── js/                    # JavaScript files
│   ├── images/               # Images & logos
│   │   ├── logo.svg
│   │   ├── logo-horizontal.svg
│   │   └── favicon.svg
│   └── icons/                # PWA icons
│       ├── icon-72x72.png
│       ├── icon-96x96.png
│       ├── icon-128x128.png
│       ├── icon-144x144.png
│       ├── icon-152x152.png
│       ├── icon-192x192.png
│       ├── icon-384x384.png
│       └── icon-512x512.png
├── 404.html                   # Error page
├── about.html                 # Tentang kami
├── blog.html                  # Blog listing
├── contact.html               # Kontak
├── index.html                 # Homepage
├── layanan.html              # Layanan
├── privacy.html              # Kebijakan privasi
├── terms.html                # Syarat & ketentuan
├── _headers                  # Security headers
├── favicon.ico               # Website favicon
├── manifest.json             # PWA manifest
├── robots.txt                # SEO crawling rules
├── rebuild.sh               # Build script
└── sw.js                     # Service worker

```

## 🛠️ Setup & Installation

### Prerequisites

- Node.js (optional, untuk build tools)
- Ruby & Jekyll (optional, untuk static site generation)
- Web server (Apache, Nginx, atau hosting static)

### Local Development

1. **Clone repository**
   ```bash
   git clone https://github.com/ciptamasjaya/website.git
   cd website
   ```

2. **Jalankan local server**

   Menggunakan Python:
   ```bash
   python -m http.server 8000
   ```

   Atau menggunakan PHP:
   ```bash
   php -S localhost:8000
   ```

   Atau menggunakan Jekyll:
   ```bash
   bundle install
   jekyll serve
   ```

3. **Buka browser**
   ```
   http://localhost:8000
   ```

### Build untuk Production

Jika menggunakan SCSS, compile terlebih dahulu:

```bash
./rebuild.sh
```

Script ini akan:
- Compile SCSS ke CSS
- Minify CSS dan JavaScript
- Optimize images
- Generate sitemap

## 📱 PWA (Progressive Web App)

Website ini mendukung PWA dengan fitur:
- **Offline Support** - Service worker untuk caching
- **Installable** - Bisa di-install di home screen
- **Fast Loading** - Optimized assets & caching
- **Responsive** - Mobile-first design

### PWA Icons

Icons tersedia dalam ukuran:
- 72x72, 96x96, 128x128, 144x144
- 152x152, 192x192, 384x384, 512x512

## 🔒 Security

Website dilengkapi dengan security headers di file `_headers`:
- Content Security Policy (CSP)
- X-Frame-Options (Clickjacking protection)
- X-Content-Type-Options (MIME sniffing protection)
- Strict-Transport-Security (HTTPS enforcement)
- Referrer-Policy
- Permissions-Policy

## 🎨 Customization

### Mengubah Warna Brand

Edit file `_scss/base/_variables.scss`:

```scss
$primary-color: #003366;
$secondary-color: #ff6600;
```

### Mengubah Konten

Semua konten menggunakan data-driven architecture dengan YAML files:

- **Menu Navigasi**: Edit `_data/navigation.yml`
- **Layanan**: Edit `_data/services.yml`
- **Kontak & Social Media**: Edit `_data/social.yml`
- **Profil Perusahaan**: Edit `_data/company_profile.yml`
- **Komitmen**: Edit `_data/commitments.yml`
- **FAQ**: Edit `_data/faq_contact.yml`
- **CTA Contact**: Edit `_data/cta_contact.yml`
- **Business Info**: Edit `_data/business_info.yml`

Semua data files mendukung template variables seperti `{company_name}`, `{phone}`, `{email}`, dll.

### Menambah Halaman Baru

1. Buat file HTML baru (misal: `new-page.html`)
2. Tambahkan front matter:
   ```yaml
   ---
   layout: page
   title: Judul Halaman
   description: Deskripsi halaman
   permalink: /new-page/
   ---
   ```
3. Tambahkan ke navigation di `_data/navigation.yml`

## 📞 Kontak

**PT. Cipta Mas Jaya**

- **Alamat**: Jalan Raya Cikunir No. 88, Bekasi, Jawa Barat 17530
- **Telepon**: +62 21 8243 3033
- **Email**: info@ciptamasjaya.co.id
- **Website**: https://www.ciptamasjaya.co.id

## 📄 License

Copyright © 2025 PT. Cipta Mas Jaya. All rights reserved.

## 🤝 Contributing

Untuk development dan maintenance internal:

1. Fork repository
2. Buat feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buat Pull Request

## 📝 Changelog

> Untuk changelog lengkap, lihat [CHANGELOG.md](CHANGELOG.md) dan [RELEASE_NOTES.md](RELEASE_NOTES.md)

### Version 1.0.2 (2025-11-23) - Content Migration & SEO Enhancement

- ✅ Complete content migration from WordPress (homepage, about, layanan)
- ✅ 20+ modular blocks implemented
- ✅ Comprehensive heading hierarchy fixes (SEO & accessibility)
- ✅ TAMASYA company values with custom icons
- ✅ Enhanced Visi-Misi sections with card layout
- ✅ Sitemap with automatic lastmod timestamps
- ✅ Build optimization (reduced to 88 files)
- ✅ Git LFS integration for images
- ✅ Icon-text utility classes

**30 commits** | **3 major pages migrated**

### Version 1.0.1 (2025-11-23) - Data-Driven Architecture

- ✅ 8 blocks refactored to data-driven architecture
- ✅ Content separated to YAML data files
- ✅ Template variables support ({company_name}, {phone}, etc.)
- ✅ CSS class customization support
- ✅ ~1500 lines moved from hardcoded to YAML
- ✅ i18n ready structure

**15 commits** | **8 YAML data files created**

### Version 1.0.0 (2025-11-22) - Initial Release

- ✅ Initial release with Jekyll 4.4.1
- ✅ Homepage dengan hero section
- ✅ Halaman layanan lengkap
- ✅ Halaman kontak dengan form
- ✅ Privacy policy & Terms of service
- ✅ 404 error page
- ✅ PWA support dengan icons
- ✅ Security headers
- ✅ SEO optimization with Schema.org markup
- ✅ Mobile responsive design
- ✅ Modular SCSS architecture dengan BEM naming

**14 commits**

## 🔮 Roadmap

### Completed ✅
- [x] Content migration from WordPress
- [x] Data-driven architecture dengan YAML
- [x] SEO optimization (heading hierarchy, sitemap)
- [x] Git LFS integration

### In Progress 🚧
- [ ] Blog system dengan CMS
- [ ] Client testimonials section
- [ ] Portfolio/case studies

### Planned 📋
- [ ] Multi-language support (EN/ID)
- [ ] Online quotation form
- [ ] Client dashboard
- [ ] Integration dengan payment gateway
- [ ] Live chat support

---

**Dibuat dengan ❤️ oleh Tim PT. Cipta Mas Jaya**
