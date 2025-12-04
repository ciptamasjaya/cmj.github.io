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
    // Read options from data-attributes (synced with Liquid/schema)
    const perPage = parseInt(serviceTable.dataset.perPage) || 10;
    const sortColumnName = serviceTable.dataset.sortColumn || null;
    const sortDirection = serviceTable.dataset.sortDirection || 'desc';

    const dt = new DataTable('#service-list-table', {
      perPage: perPage,
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

    // Apply default sort if specified
    if (sortColumnName && dt.table) {
      const headers = dt.table.querySelectorAll('thead th');
      let sortColumnIndex = -1;

      headers.forEach((th, index) => {
        if (th.dataset.column === sortColumnName) {
          sortColumnIndex = index;
        }
      });

      if (sortColumnIndex >= 0) {
        // Set initial sort direction (will be toggled by sort())
        dt.sortDirection = sortDirection === 'desc' ? 'asc' : 'desc';
        dt.sort(sortColumnIndex);
      }
    }
  }
});
