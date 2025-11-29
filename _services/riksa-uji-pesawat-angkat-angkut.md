---
layout: page/page--category
title: "Riksa Uji Pesawat Angkat Angkut"
description: "Jasa riksa uji dan inspeksi K3 pesawat angkat angkut profesional meliputi forklift, crane, hoist, dan conveyor sesuai standar Kementerian Ketenagakerjaan RI. Melayani seluruh Indonesia dengan sertifikat resmi."
permalink: /layanan/riksa-uji-pesawat-angkat-angkut/
category: "Riksa Uji Pesawat Angkat Angkut"
is_category_page: true
service_type: "Safety Inspection"
icon: "bi-box-arrow-up"
image: "/assets/images/services/default-pesawat-angkat-angkut.svg"
area_served: "Indonesia"
content_structure: "1xh1, 2xpara, h2(list-subcategories), h2(para), h2(para)"
date: 2025-11-24
last_modified_at: 2025-11-24
show_breadcrumb_schema: true

# ============================================================================
# BLOCK DATA - Content Sections
# ============================================================================

# Block 1: Intro Section (H1 + 2 Paragraphs)
intro:
  h1: "Riksa Uji Pesawat Angkat Angkut - Inspeksi K3 Profesional"
  para_1: "Apa yang dimaksud dengan riksa uji pesawat angkat angkut? Riksa uji pesawat angkat angkut adalah pemeriksaan dan pengujian keselamatan berkala terhadap semua jenis peralatan angkat seperti forklift, crane, hoist, conveyor, dan lift barang yang diatur dalam Peraturan Menteri Ketenagakerjaan. Pemeriksaan ini wajib dilakukan untuk memastikan peralatan beroperasi dengan aman dan sesuai standar K3 yang berlaku di Indonesia."
  para_2: "PT. Cipta Mas Jaya sebagai PJK3 (Perusahaan Jasa Keselamatan dan Kesehatan Kerja) yang telah mendapat izin resmi dari Kementerian Ketenagakerjaan RI, menyediakan layanan riksa uji pesawat angkat angkut yang komprehensif dengan tim inspector bersertifikat dan peralatan testing yang terkalibrasi. Kami melayani berbagai industri termasuk manufaktur, logistik, konstruksi, dan pertambangan untuk memastikan keselamatan operasional dan compliance terhadap regulasi pemerintah."

# Block 2: Sub-Categories List
jenis_layanan:
  h2: "Jenis Layanan Riksa Uji Pesawat Angkat Angkut"
  para: "Layanan riksa uji pesawat angkat angkut terbagi menjadi dua kategori utama berdasarkan fungsi peralatan: Pesawat Angkat untuk mengangkat beban secara vertikal, dan Pesawat Angkut untuk memindahkan beban secara horizontal. Setiap kategori memiliki prosedur inspeksi khusus yang mengacu pada Permenaker No. 8 Tahun 2020."

  # Sub-categories yang akan di-loop (2 sub-category)
  sub_categories:
    - title: "Pesawat Angkat"
      description: "Peralatan mengangkat beban secara vertikal: Overhead Crane, Gantry Crane, Tower Crane, Mobile Crane, Crawler Crane, Jib Crane, Hoist, Chain Block, Dongkrak Hidrolik, Gondola, Passenger Hoist, Manlift, dan Scissor Lift."
      url: "/layanan/riksa-uji-pesawat-angkat-angkut/pesawat-angkat/"
      icon: "bi-arrow-up-square"

    - title: "Pesawat Angkut"
      description: "Peralatan memindahkan beban secara horizontal: Forklift, Excavator, Wheel Loader, Bulldozer, Reach Stacker, dan Conveyor."
      url: "/layanan/riksa-uji-pesawat-angkat-angkut/pesawat-angkut/"
      icon: "bi-truck"

# Block 3: Mengapa Penting
mengapa_penting:
  h2: "Mengapa Riksa Uji Pesawat Angkat Angkut Penting?"
  para: "Riksa uji pesawat angkat angkut bukan hanya kewajiban regulasi, tetapi investasi keselamatan yang melindungi nyawa pekerja dan aset perusahaan. Kegagalan peralatan angkat dapat menyebabkan kecelakaan fatal, kerusakan material, dan kerugian finansial besar. Pemeriksaan berkala memastikan semua komponen kritis seperti sistem hidrolik, rem, struktur penahan beban, dan sistem kontrol berfungsi optimal sesuai spesifikasi pabrikan dan standar keselamatan."

# Block 4: Proses Riksa Uji
proses_riksa_uji:
  h2: "Proses Riksa Uji di PT. Cipta Mas Jaya"
  para: "Proses riksa uji kami dirancang efisien dan tidak mengganggu operasional perusahaan Anda. Tim inspector kami datang ke lokasi dengan peralatan testing portable yang lengkap dan terkalibrasi. Setiap inspeksi didokumentasikan detail dalam laporan komprehensif dan dilengkapi sertifikat kelayakan operasional yang berlaku secara legal. Kami melayani seluruh Indonesia dengan standar kualitas yang sama tingginya."

---

<!-- ========================================================================== -->
<!-- CONTENT AREA - Block-Based -->
<!-- ========================================================================== -->

<!-- Block: Jenis Layanan (H2 + Sub-Categories Grid) -->
<section id="jenis-layanan">
  {% include block-templates/block--h2-subcategories.html data=page.jenis_layanan %}
</section>

<!-- Block: Mengapa Penting (H2 + Para) -->
<section id="mengapa-penting">
  {% include block-templates/block--h2-para.html data=page.mengapa_penting %}
</section>

<!-- Block: Proses Riksa Uji (H2 + Para) -->
<section id="proses">
  {% include block-templates/block--h2-para.html data=page.proses_riksa_uji %}
</section>

<!-- Block: Service List Table with DataTable -->
<section id="daftar-layanan">
  {% include block-templates/block--service-list.html %}
</section>
