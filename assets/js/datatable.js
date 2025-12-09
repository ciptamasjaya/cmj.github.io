/**
 * DataTable.js - Vanilla JavaScript DataTable
 * Version: 1.0.2
 *
 * Features:
 * - Sorting (Ascending/Descending)
 * - Pagination
 * - Search/Filter
 * - Responsive Table
 * - Export to CSV
 * - Export to PDF
 *
 * Usage:
 *
 * HTML:
 * <table class="datatable" id="myTable">
 *   <thead>
 *     <tr>
 *       <th>Column 1</th>
 *       <th>Column 2</th>
 *     </tr>
 *   </thead>
 *   <tbody>
 *     <tr>
 *       <td>Data 1</td>
 *       <td>Data 2</td>
 *     </tr>
 *   </tbody>
 * </table>
 *
 * JavaScript:
 * const table = new DataTable('#myTable', {
 *   perPage: 10,
 *   searchable: true,
 *   sortable: true,
 *   pagination: true,
 *   responsive: true,
 *   exportable: true,
 *   labels: {
 *     placeholder: 'Search...',
 *     perPage: 'Show {select} entries',
 *     noRows: 'No entries found',
 *     info: 'Showing {start} to {end} of {rows} entries'
 *   }
 * });
 *
 * Or auto-initialize all tables with class 'datatable':
 * DataTable.init('.datatable');
 */

class DataTable {
  constructor(selector, options = {}) {
    // Default options
    this.options = {
      perPage: options.perPage || 5,
      perPageSelect: options.perPageSelect || [5, 10, 25, 50, 100],
      searchable: options.searchable !== false,
      sortable: options.sortable !== false,
      pagination: options.pagination !== false,
      responsive: options.responsive !== false,
      exportable: options.exportable !== false,
      minRowsForControls: options.minRowsForControls !== undefined ? options.minRowsForControls : 1, // Minimum rows to show search/export
      labels: {
        placeholder: 'Search...',
        perPage: 'Show {select} entries',
        noRows: 'No entries found',
        info: 'Showing {start} to {end} of {rows} entries',
        ...options.labels
      }
    };

    // Get table element
    this.table = typeof selector === 'string'
      ? document.querySelector(selector)
      : selector;

    if (!this.table) {
      console.error('DataTable: Table not found');
      return;
    }

    // Initialize variables
    this.currentPage = 1;
    this.sortColumn = -1;
    this.sortDirection = 'asc';
    this.searchTerm = '';
    this.rows = [];
    this.filteredRows = [];

    // Initialize
    this.init();
  }

  init() {
    // Wrap table in container
    this.createWrapper();

    // Get original rows
    this.rows = Array.from(this.table.querySelectorAll('tbody tr'));
    this.filteredRows = [...this.rows];

    // Create controls only if we have minimum rows
    const hasEnoughRows = this.rows.length >= this.options.minRowsForControls;
    if (hasEnoughRows && (this.options.searchable || this.options.exportable)) {
      this.createTopControls();
    }

    // Add sorting
    if (this.options.sortable) {
      this.addSorting();
    }

    // Add pagination
    if (this.options.pagination) {
      this.createPagination();
    }

    // Make responsive
    if (this.options.responsive) {
      this.makeResponsive();
    }

    // Initial render
    this.render();
  }

  createWrapper() {
    // Create wrapper div
    this.wrapper = document.createElement('div');
    this.wrapper.className = 'datatable-wrapper';

    // Wrap table
    this.table.parentNode.insertBefore(this.wrapper, this.table);
    this.wrapper.appendChild(this.table);
  }

  createTopControls() {
    const topControls = document.createElement('div');
    topControls.className = 'datatable-top';

    // Left side - Per page selector
    if (this.options.pagination) {
      const perPageDiv = document.createElement('div');
      perPageDiv.className = 'datatable-perpage';

      const label = this.options.labels.perPage.split('{select}');

      if (label[0]) {
        const span1 = document.createElement('span');
        span1.textContent = label[0];
        perPageDiv.appendChild(span1);
      }

      const select = document.createElement('select');
      select.className = 'datatable-selector';
      this.options.perPageSelect.forEach(value => {
        const option = document.createElement('option');
        option.value = value;
        option.textContent = value;
        if (value === this.options.perPage) option.selected = true;
        select.appendChild(option);
      });

      select.addEventListener('change', (e) => {
        this.options.perPage = parseInt(e.target.value);
        this.currentPage = 1;
        this.render();
      });

      perPageDiv.appendChild(select);

      if (label[1]) {
        const span2 = document.createElement('span');
        span2.textContent = label[1];
        perPageDiv.appendChild(span2);
      }

      topControls.appendChild(perPageDiv);
    }

    // Right side - Search and export
    const rightControls = document.createElement('div');
    rightControls.className = 'datatable-search-export';

    // Export buttons
    if (this.options.exportable) {
      const exportDiv = document.createElement('div');
      exportDiv.className = 'datatable-export';

      const csvBtn = document.createElement('button');
      csvBtn.type = 'button';
      csvBtn.className = 'datatable-export-btn';
      csvBtn.innerHTML = '📥 CSV';
      csvBtn.addEventListener('click', () => this.exportCSV());
      exportDiv.appendChild(csvBtn);

      const pdfBtn = document.createElement('button');
      pdfBtn.type = 'button';
      pdfBtn.className = 'datatable-export-btn';
      pdfBtn.innerHTML = '📄 PDF';
      pdfBtn.addEventListener('click', () => this.exportPDF());
      exportDiv.appendChild(pdfBtn);

      rightControls.appendChild(exportDiv);
    }

    // Search input
    if (this.options.searchable) {
      const searchDiv = document.createElement('div');
      searchDiv.className = 'datatable-search';

      const searchInput = document.createElement('input');
      searchInput.type = 'text';
      searchInput.className = 'datatable-input';
      searchInput.placeholder = this.options.labels.placeholder;

      searchInput.addEventListener('input', (e) => {
        this.searchTerm = e.target.value.toLowerCase();
        this.currentPage = 1;
        this.filter();
      });

      searchDiv.appendChild(searchInput);
      rightControls.appendChild(searchDiv);
    }

    topControls.appendChild(rightControls);
    this.wrapper.insertBefore(topControls, this.table);
  }

  addSorting() {
    const headers = this.table.querySelectorAll('thead th');

    headers.forEach((header, index) => {
      // Add sorting indicator
      header.style.cursor = 'pointer';
      header.classList.add('datatable-sortable');

      const indicator = document.createElement('span');
      indicator.className = 'datatable-sort-indicator';
      indicator.innerHTML = ' ⇅';
      header.appendChild(indicator);

      // Add click event
      header.addEventListener('click', () => {
        this.sort(index);
      });
    });
  }

  sort(columnIndex) {
    // Toggle direction if same column
    if (this.sortColumn === columnIndex) {
      this.sortDirection = this.sortDirection === 'asc' ? 'desc' : 'asc';
    } else {
      this.sortColumn = columnIndex;
      this.sortDirection = 'asc';
    }

    // Update indicators
    const headers = this.table.querySelectorAll('thead th');
    headers.forEach((header, index) => {
      const indicator = header.querySelector('.datatable-sort-indicator');
      if (index === columnIndex) {
        indicator.innerHTML = this.sortDirection === 'asc' ? ' ▲' : ' ▼';
      } else {
        indicator.innerHTML = ' ⇅';
      }
    });

    // Sort rows
    this.filteredRows.sort((a, b) => {
      const aValue = a.cells[columnIndex].textContent.trim();
      const bValue = b.cells[columnIndex].textContent.trim();

      // Try to parse as numbers
      const aNum = parseFloat(aValue.replace(/[^0-9.-]/g, ''));
      const bNum = parseFloat(bValue.replace(/[^0-9.-]/g, ''));

      let comparison = 0;
      if (!isNaN(aNum) && !isNaN(bNum)) {
        comparison = aNum - bNum;
      } else {
        comparison = aValue.localeCompare(bValue);
      }

      return this.sortDirection === 'asc' ? comparison : -comparison;
    });

    this.currentPage = 1;
    this.render();
  }

  filter() {
    if (!this.searchTerm) {
      this.filteredRows = [...this.rows];
    } else {
      this.filteredRows = this.rows.filter(row => {
        const text = row.textContent.toLowerCase();
        return text.includes(this.searchTerm);
      });
    }

    this.render();
  }

  createPagination() {
    // Bottom controls
    const bottomControls = document.createElement('div');
    bottomControls.className = 'datatable-bottom';

    // Info
    this.infoDiv = document.createElement('div');
    this.infoDiv.className = 'datatable-info';
    bottomControls.appendChild(this.infoDiv);

    // Pagination
    this.paginationDiv = document.createElement('div');
    this.paginationDiv.className = 'datatable-pagination';
    bottomControls.appendChild(this.paginationDiv);

    this.wrapper.appendChild(bottomControls);
  }

  updatePagination() {
    if (!this.options.pagination) return;

    const totalRows = this.filteredRows.length;
    const totalPages = Math.ceil(totalRows / this.options.perPage);

    // Update info
    const start = totalRows === 0 ? 0 : (this.currentPage - 1) * this.options.perPage + 1;
    const end = Math.min(this.currentPage * this.options.perPage, totalRows);

    this.infoDiv.textContent = this.options.labels.info
      .replace('{start}', start)
      .replace('{end}', end)
      .replace('{rows}', totalRows);

    // Update pagination buttons
    this.paginationDiv.innerHTML = '';

    if (totalPages <= 1) return;

    // Previous button
    const prevBtn = this.createPageButton('‹', this.currentPage - 1, this.currentPage === 1);
    this.paginationDiv.appendChild(prevBtn);

    // Page numbers
    const maxButtons = 5;
    let startPage = Math.max(1, this.currentPage - Math.floor(maxButtons / 2));
    let endPage = Math.min(totalPages, startPage + maxButtons - 1);

    if (endPage - startPage < maxButtons - 1) {
      startPage = Math.max(1, endPage - maxButtons + 1);
    }

    if (startPage > 1) {
      this.paginationDiv.appendChild(this.createPageButton(1, 1));
      if (startPage > 2) {
        const ellipsis = document.createElement('span');
        ellipsis.className = 'datatable-ellipsis';
        ellipsis.textContent = '...';
        this.paginationDiv.appendChild(ellipsis);
      }
    }

    for (let i = startPage; i <= endPage; i++) {
      this.paginationDiv.appendChild(this.createPageButton(i, i, false, i === this.currentPage));
    }

    if (endPage < totalPages) {
      if (endPage < totalPages - 1) {
        const ellipsis = document.createElement('span');
        ellipsis.className = 'datatable-ellipsis';
        ellipsis.textContent = '...';
        this.paginationDiv.appendChild(ellipsis);
      }
      this.paginationDiv.appendChild(this.createPageButton(totalPages, totalPages));
    }

    // Next button
    const nextBtn = this.createPageButton('›', this.currentPage + 1, this.currentPage === totalPages);
    this.paginationDiv.appendChild(nextBtn);
  }

  createPageButton(text, page, disabled = false, active = false) {
    const button = document.createElement('button');
    button.type = 'button';
    button.className = 'datatable-page-btn';
    button.textContent = text;

    if (disabled) button.disabled = true;
    if (active) button.classList.add('active');

    button.addEventListener('click', () => {
      if (!disabled && !active) {
        this.currentPage = page;
        this.render();
      }
    });

    return button;
  }

  makeResponsive() {
    // Add responsive class
    this.table.classList.add('datatable-responsive');

    // Get headers
    const headers = Array.from(this.table.querySelectorAll('thead th')).map(th =>
      th.textContent.replace('⇅', '').replace('▲', '').replace('▼', '').trim()
    );

    // Add data-label to each cell
    this.rows.forEach(row => {
      Array.from(row.cells).forEach((cell, index) => {
        cell.setAttribute('data-label', headers[index]);
      });
    });
  }

  render() {
    const tbody = this.table.querySelector('tbody');

    // Clear tbody
    tbody.innerHTML = '';

    // Calculate pagination
    const start = (this.currentPage - 1) * this.options.perPage;
    const end = this.options.pagination
      ? start + this.options.perPage
      : this.filteredRows.length;

    // Show rows
    const rowsToShow = this.filteredRows.slice(start, end);

    if (rowsToShow.length === 0) {
      const tr = document.createElement('tr');
      const td = document.createElement('td');
      td.colSpan = this.table.querySelectorAll('thead th').length;
      td.className = 'datatable-empty';
      td.textContent = this.options.labels.noRows;
      tr.appendChild(td);
      tbody.appendChild(tr);
    } else {
      rowsToShow.forEach(row => tbody.appendChild(row));
    }

    // Update pagination
    if (this.options.pagination) {
      this.updatePagination();
    }
  }

  exportCSV() {
    const headers = Array.from(this.table.querySelectorAll('thead th')).map(th =>
      th.textContent.replace('⇅', '').replace('▲', '').replace('▼', '').trim()
    );

    let csv = headers.map(h => `"${h}"`).join(',') + '\n';

    this.filteredRows.forEach(row => {
      const values = Array.from(row.cells).map(cell => {
        const text = cell.textContent.trim().replace(/"/g, '""');
        return `"${text}"`;
      });
      csv += values.join(',') + '\n';
    });

    // Download
    const blob = new Blob([csv], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement('a');
    const url = URL.createObjectURL(blob);

    link.setAttribute('href', url);
    link.setAttribute('download', 'table-export.csv');
    link.style.visibility = 'hidden';
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  }

  exportPDF() {
    // Simple PDF export using print
    // For better PDF, integrate with jsPDF library

    const printWindow = window.open('', '', 'height=600,width=800');

    printWindow.document.write('<html><head><title>Table Export</title>');
    printWindow.document.write('<style>');
    printWindow.document.write('table { border-collapse: collapse; width: 100%; }');
    printWindow.document.write('th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }');
    printWindow.document.write('th { background-color: #f2f2f2; font-weight: bold; }');
    printWindow.document.write('</style>');
    printWindow.document.write('</head><body>');

    // Create clean table
    const exportTable = this.table.cloneNode(true);

    // Remove sort indicators
    exportTable.querySelectorAll('.datatable-sort-indicator').forEach(el => el.remove());

    // Clear tbody and add filtered rows
    const tbody = exportTable.querySelector('tbody');
    tbody.innerHTML = '';
    this.filteredRows.forEach(row => {
      tbody.appendChild(row.cloneNode(true));
    });

    printWindow.document.write(exportTable.outerHTML);
    printWindow.document.write('</body></html>');

    printWindow.document.close();
    printWindow.focus();

    setTimeout(() => {
      printWindow.print();
      printWindow.close();
    }, 250);
  }

  // Public methods
  refresh() {
    this.rows = Array.from(this.table.querySelectorAll('tbody tr'));
    this.filter();
  }

  destroy() {
    // Remove wrapper and restore original table
    const parent = this.wrapper.parentNode;
    parent.insertBefore(this.table, this.wrapper);
    parent.removeChild(this.wrapper);

    // Remove added classes and elements
    this.table.classList.remove('datatable-responsive');
    this.table.querySelectorAll('.datatable-sort-indicator').forEach(el => el.remove());
    this.table.querySelectorAll('[data-label]').forEach(el => el.removeAttribute('data-label'));
  }

  // Static method to initialize multiple tables
  static init(selector, options = {}) {
    const tables = document.querySelectorAll(selector);
    const instances = [];

    tables.forEach(table => {
      instances.push(new DataTable(table, options));
    });

    return instances;
  }
}

// Auto-initialize on DOM ready
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', () => {
    // Auto-initialize tables with class 'datatable'
    // Uncomment below to enable auto-init:
    // DataTable.init('.datatable');
  });
} else {
  // DOM already loaded
  // Uncomment below to enable auto-init:
  // DataTable.init('.datatable');
}

// Export for module systems
if (typeof module !== 'undefined' && module.exports) {
  module.exports = DataTable;
}
