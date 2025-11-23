---
layout: page--subcategory
title: "Riksa Uji Forklift"
description: "Jasa riksa uji dan inspeksi K3 forklift profesional untuk berbagai jenis forklift. Melayani seluruh Indonesia dengan sertifikat resmi Kementerian Ketenagakerjaan RI."
permalink: /layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/
category: "Riksa Uji Pesawat Angkat Angkut"
sub_category: "Riksa Uji Forklift"
is_subcategory_page: true
service_type: "Safety Inspection"
icon: "bi-box-arrow-up"
image: "/assets/images/services/default-pesawat-angkat-angkut.svg"
area_served: "Indonesia"
content_structure: "1xh1, 2xpara, h2(list-types)"
date: 2025-11-24
last_modified_at: 2025-11-24
show_breadcrumb_schema: true

# ============================================================================
# BLOCK DATA - Content Sections
# ============================================================================

# Block 1: Intro Section (H1 + 2 Paragraphs)
intro:
  h1: "Riksa Uji Forklift - Jasa Inspeksi K3 Profesional"
  para_1: "Apa yang dimaksud dengan riksa uji forklift? Riksa uji forklift merupakan pemeriksaan dan pengujian keselamatan terhadap forklift yang wajib dilakukan secara berkala sesuai Peraturan Menteri Ketenagakerjaan Nomor 8 Tahun 2020. Layanan kami mencakup berbagai jenis forklift untuk memastikan keselamatan operasional di tempat kerja Anda."
  para_2: "PT. Cipta Mas Jaya sebagai PJK3 (Perusahaan Jasa Keselamatan dan Kesehatan Kerja) yang telah mendapat izin resmi dari Kementerian Ketenagakerjaan RI, menyediakan layanan riksa uji forklift yang komprehensif dengan tim inspector bersertifikat dan peralatan testing yang terkalibrasi untuk semua jenis forklift."

# Block 2: Jenis-Jenis Forklift
jenis_forklift:
  h2: "Jenis-Jenis Forklift yang Kami Layani"
  para: "Kami melayani riksa uji untuk berbagai jenis dan tipe forklift sesuai kebutuhan industri Anda. Setiap jenis forklift memiliki prosedur inspeksi khusus yang mengacu pada standar teknis dan regulasi Kemnaker RI."

  # Detail pages untuk berbagai jenis forklift
  sub_categories:
    - title: "Riksa Uji Forklift Counterbalance"
      description: "Inspeksi forklift counterbalance (diesel, LPG, electric) dengan kapasitas 1-10 ton. Jenis paling umum - cocok untuk warehouse & loading dock"
      url: "/layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/riksa-uji-forklift/"
      icon: "bi-box-seam"

    - title: "Riksa Uji Reach Truck"
      description: "Inspeksi reach truck untuk operasi gang sempit dengan lifting height hingga 12 meter. Ideal untuk warehouse dengan rack tinggi"
      url: "/layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/riksa-uji-reach-truck/"
      icon: "bi-arrows-expand"

    - title: "Riksa Uji Stacker / Hand Pallet"
      description: "Inspeksi electric stacker dan manual/powered pallet truck. Untuk material handling ringan"
      url: "/layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/riksa-uji-stacker/"
      icon: "bi-stack"

    - title: "Riksa Uji Order Picker"
      description: "Inspeksi order picker dan man-up forklift untuk picking operations. Specialized untuk order fulfillment"
      url: "/layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/riksa-uji-order-picker/"
      icon: "bi-arrow-up-circle"

# Block 3: Mengapa Penting
mengapa_penting:
  h2: "Mengapa Riksa Uji Forklift Penting?"
  para: "Forklift adalah salah satu peralatan dengan tingkat risiko kecelakaan tertinggi di tempat kerja. Riksa uji berkala memastikan semua komponen kritis seperti sistem hidrolik, rem, steering, mast, dan fork berfungsi optimal. Pemeriksaan ini bukan hanya kewajiban legal, tetapi investasi keselamatan yang melindungi nyawa pekerja dan aset perusahaan."

# Block 4: Proses Riksa Uji
proses:
  h2: "Proses Riksa Uji Forklift"
  para: "Proses riksa uji kami dirancang efisien dengan tim inspector datang ke lokasi Anda membawa peralatan testing portable yang terkalibrasi. Setiap inspeksi didokumentasikan detail dalam laporan komprehensif dan dilengkapi sertifikat kelayakan operasional yang berlaku 1 tahun. Kami melayani seluruh Indonesia dengan standar kualitas yang sama."

---

<!-- ========================================================================== -->
<!-- CONTENT AREA - Block-Based -->
<!-- ========================================================================== -->

<!-- Block: Jenis Forklift (H2 + Cards Grid) -->
<section id="jenis-forklift">
  {% include block-templates/block--h2-subcategories.html data=page.jenis_forklift %}
</section>

<!-- Block: Mengapa Penting (H2 + Para) -->
<section id="mengapa-penting">
  {% include block-templates/block--h2-para.html data=page.mengapa_penting %}
</section>

<!-- Block: Proses (H2 + Para) -->
<section id="proses">
  {% include block-templates/block--h2-para.html data=page.proses %}
</section>
