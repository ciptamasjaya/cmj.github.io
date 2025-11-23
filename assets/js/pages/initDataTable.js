/**
 * initDataTable.js - Generic DataTable initializer
 * Version: 1.0.0
 * Date: 2025-11-24
 *
 * Auto-initializes DataTable for any table with id="service-list-table"
 * Can be included in any page that needs DataTable functionality.
 *
 * Usage:
 * <script src="{{ '/assets/js/datatable.js' | relative_url }}"></script>
 * <script src="{{ '/assets/js/pages/initDataTable.js' | relative_url }}"></script>
 */

// Initialize DataTable when DOM is ready
document.addEventListener('DOMContentLoaded', function() {
  const serviceTable = document.querySelector('#service-list-table');

  if (serviceTable) {
    new DataTable('#service-list-table', {
      perPage: 10,
      searchable: true,
      sortable: true,
      pagination: true,
      responsive: true,
      exportable: true,
      labels: {
        placeholder: 'Cari layanan...',
        perPage: 'Tampilkan {select} data',
        noRows: 'Tidak ada layanan ditemukan',
        info: 'Menampilkan {start} sampai {end} dari {rows} layanan'
      }
    });
  }
});
