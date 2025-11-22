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

- **HTML5** - Struktur halaman
- **CSS3/SCSS** - Styling dengan arsitektur modular
- **Bootstrap 5.3** - Framework CSS responsif
- **JavaScript** - Interaktivitas
- **Jekyll** - Static site generator (optional)
- **PWA Ready** - Progressive Web App support

## 📁 Struktur Proyek

```
public_html/
├── _data/                      # Data configuration files
│   ├── navigation.yml         # Menu navigasi
│   ├── services.yml          # Konfigurasi layanan
│   └── social.yml            # Kontak & social media
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

- **Menu Navigasi**: Edit `_data/navigation.yml`
- **Layanan**: Edit `_data/services.yml`
- **Kontak**: Edit `_data/social.yml`

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

Copyright © 2024 PT. Cipta Mas Jaya. All rights reserved.

## 🤝 Contributing

Untuk development dan maintenance internal:

1. Fork repository
2. Buat feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buat Pull Request

## 📝 Changelog

### Version 1.0.0 (2024-11-22)

- ✅ Initial release
- ✅ Homepage dengan hero section
- ✅ Halaman layanan lengkap
- ✅ Halaman kontak dengan form
- ✅ Privacy policy & Terms of service
- ✅ 404 error page
- ✅ PWA support dengan icons
- ✅ Security headers
- ✅ SEO optimization
- ✅ Mobile responsive design

## 🔮 Roadmap

- [ ] Blog system dengan CMS
- [ ] Client testimonials section
- [ ] Portfolio/case studies
- [ ] Multi-language support (EN/ID)
- [ ] Online quotation form
- [ ] Client dashboard
- [ ] Integration dengan payment gateway
- [ ] Live chat support

---

**Dibuat dengan ❤️ oleh Tim PT. Cipta Mas Jaya**
