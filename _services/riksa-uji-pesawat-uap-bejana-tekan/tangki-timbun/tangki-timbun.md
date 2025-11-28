---
layout: page--subcategory
title: "Tangki Timbun"
description: "Jasa riksa uji dan inspeksi K3 tangki timbun profesional meliputi storage tank, LPG tank, fuel tank, dan tangki penyimpanan bahan cair atau gas bertekanan. Sertifikat resmi dari Disnaker setempat."
permalink: /layanan/riksa-uji-pesawat-uap-bejana-tekan/tangki-timbun/
category: "Riksa Uji Pesawat Uap Bejana Tekan"
sub_category: "Tangki Timbun"
is_subcategory_page: true
service_type: "Safety Inspection"
icon: "bi-database"
image: "/assets/images/services/default-bejana-tekan.svg"
area_served: "Indonesia"
content_structure: "1xh1, 2xpara, h2(list-services)"
date: 2025-11-28
last_modified_at: 2025-11-28
show_breadcrumb_schema: true

# ============================================================================
# BLOCK DATA - Content Sections
# ============================================================================

# Block 1: Intro Section (H1 + 2 Paragraphs)
intro:
  h1: "Tangki Timbun - Riksa Uji Tangki Penyimpanan Bertekanan"
  para_1: "Tangki timbun adalah peralatan yang digunakan untuk menyimpan bahan cair atau gas dalam jumlah besar, baik pada tekanan atmosfer maupun bertekanan. Kategori ini mencakup storage tank, LPG tank, fuel tank, chemical tank, nitrogen tank, oxygen tank, dan tangki penyimpanan lainnya yang wajib menjalani riksa uji berkala sesuai Peraturan Menteri Ketenagakerjaan Nomor 37 Tahun 2016."
  para_2: "PT. Cipta Mas Jaya sebagai PJK3 (Perusahaan Jasa Keselamatan dan Kesehatan Kerja) resmi dari Kementerian Ketenagakerjaan RI menyediakan layanan riksa uji tangki timbun yang komprehensif. Tim inspector bersertifikat kami siap melakukan inspeksi on-site di seluruh Indonesia dengan peralatan testing terkalibrasi untuk memastikan keselamatan operasional peralatan Anda."

# Block 2: Layanan Tangki Timbun
layanan_tangki_timbun:
  h2: "Layanan Riksa Uji Tangki Timbun"
  para: "Kami melayani riksa uji untuk berbagai jenis tangki timbun sesuai kebutuhan industri Anda. Setiap peralatan memiliki prosedur inspeksi khusus yang mengacu pada standar API 650, API 620, dan regulasi Kemnaker RI."

  # Detail pages untuk berbagai jenis tangki timbun (dari services.yml)
  sub_categories:
    - title: "Riksa Uji Tangki Timbun"
      description: "Inspeksi tangki penyimpan LPG, nitrogen, oksigen, dan BBM. Pemeriksaan shell, roof, floor, nozzle, foundation, dan cathodic protection."
      url: "/layanan/riksa-uji-pesawat-uap-bejana-tekan/tangki-timbun/riksa-uji-tangki-timbun/"
      icon: "bi-database-fill"

# Block 3: Mengapa Penting
mengapa_penting:
  h2: "Mengapa Riksa Uji Tangki Timbun Penting?"
  para: "Tangki timbun menyimpan bahan berbahaya dalam volume besar yang dapat menimbulkan risiko kebakaran, ledakan, pencemaran lingkungan, dan bahaya kesehatan. Korosi pada dinding tangki, kebocoran pada sambungan, dan kegagalan sistem keselamatan dapat menyebabkan kecelakaan fatal. Riksa uji berkala memastikan integritas struktural tangki melalui pengukuran ketebalan, pengujian kebocoran, dan pemeriksaan sistem proteksi. Pemeriksaan ini bukan hanya kewajiban legal sesuai Permenaker No. 37 Tahun 2016, tetapi investasi keselamatan yang melindungi nyawa pekerja, masyarakat sekitar, dan lingkungan."

# Block 4: Proses Riksa Uji
proses:
  h2: "Proses Riksa Uji Tangki Timbun"
  para: "Tim inspector kami datang ke lokasi Anda dengan peralatan testing seperti ultrasonic thickness gauge, magnetic flux leakage scanner, dan vacuum box testing kit. Proses inspeksi mencakup pemeriksaan dokumen dan nameplate, inspeksi visual eksternal dan internal (jika memungkinkan), pengukuran ketebalan shell dan floor, pengujian kebocoran, dan pemeriksaan foundation settlement. Setiap inspeksi didokumentasikan dalam laporan komprehensif dan dilengkapi sertifikat kelayakan operasional yang berlaku sesuai ketentuan."

---

<!-- ========================================================================== -->
<!-- CONTENT AREA - Block-Based -->
<!-- ========================================================================== -->

<!-- Block: Layanan Tangki Timbun (H2 + Cards Grid) -->
<section id="layanan-tangki-timbun">
  {% include block-templates/block--h2-subcategories.html data=page.layanan_tangki_timbun %}
</section>

<!-- Block: Mengapa Penting (H2 + Para) -->
<section id="mengapa-penting">
  {% include block-templates/block--h2-para.html data=page.mengapa_penting %}
</section>

<!-- Block: Proses (H2 + Para) -->
<section id="proses">
  {% include block-templates/block--h2-para.html data=page.proses %}
</section>
