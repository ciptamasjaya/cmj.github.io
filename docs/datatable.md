# DataTable.js Documentation

**Version:** 1.0.2
**Type:** Vanilla JavaScript (No Dependencies)
**File:** `assets/js/datatable.js`

## Overview

DataTable.js adalah library JavaScript vanilla yang menyediakan fitur-fitur DataTable lengkap tanpa memerlukan jQuery atau library lainnya. Library ini dirancang untuk semua tabel di website dengan fitur sorting, pagination, search, responsive, dan export data.

## Features

- ✅ **Sorting** - Sort kolom ascending/descending
- ✅ **Pagination** - Navigasi halaman dengan konfigurasi rows per page
- ✅ **Search/Filter** - Pencarian global di seluruh tabel
- ✅ **Responsive** - Mobile-friendly table layout
- ✅ **Export CSV** - Export data ke format CSV
- ✅ **Export PDF** - Export data ke format PDF (print-based)
- ✅ **Customizable** - Konfigurasi label dan opsi
- ✅ **Lightweight** - Pure vanilla JavaScript, no dependencies

## Installation

### 1. Include JavaScript File

```html
<script src="assets/js/datatable.js"></script>
```

### 2. Include CSS (Optional - Create Your Own)

Anda perlu membuat styling sendiri atau gunakan contoh CSS di bawah.

## Basic Usage

### HTML Structure

```html
<table id="myTable">
  <thead>
    <tr>
      <th>Name</th>
      <th>Email</th>
      <th>Phone</th>
      <th>City</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>John Doe</td>
      <td>john@example.com</td>
      <td>081234567890</td>
      <td>Jakarta</td>
    </tr>
    <tr>
      <td>Jane Smith</td>
      <td>jane@example.com</td>
      <td>081234567891</td>
      <td>Bandung</td>
    </tr>
    <!-- More rows... -->
  </tbody>
</table>
```

### JavaScript Initialization

**Method 1: Single Table**

```javascript
const table = new DataTable('#myTable');
```

**Method 2: Single Table with Options**

```javascript
const table = new DataTable('#myTable', {
  perPage: 10,
  searchable: true,
  sortable: true,
  pagination: true,
  responsive: true,
  exportable: true
});
```

**Method 3: Multiple Tables**

```javascript
// Initialize semua tabel dengan class 'datatable'
DataTable.init('.datatable');
```

**Method 4: Multiple Tables with Options**

```javascript
DataTable.init('.datatable', {
  perPage: 25,
  searchable: true
});
```

## Configuration Options

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `perPage` | Number | `10` | Jumlah baris per halaman |
| `perPageSelect` | Array | `[5, 10, 25, 50, 100]` | Opsi dropdown untuk rows per page |
| `searchable` | Boolean | `true` | Aktifkan fitur search |
| `sortable` | Boolean | `true` | Aktifkan fitur sorting |
| `pagination` | Boolean | `true` | Aktifkan fitur pagination |
| `responsive` | Boolean | `true` | Aktifkan responsive table |
| `exportable` | Boolean | `true` | Aktifkan tombol export |
| `labels` | Object | See below | Customize label text |

### Labels Configuration

```javascript
{
  labels: {
    placeholder: 'Search...',           // Search input placeholder
    perPage: 'Show {select} entries',  // Per page selector label
    noRows: 'No entries found',        // Empty table message
    info: 'Showing {start} to {end} of {rows} entries' // Info text
  }
}
```

## Examples

### Example 1: Simple DataTable

```javascript
const table = new DataTable('#myTable');
```

### Example 2: Custom Configuration

```javascript
const table = new DataTable('#myTable', {
  perPage: 25,
  perPageSelect: [10, 25, 50, 100],
  searchable: true,
  sortable: true,
  pagination: true,
  responsive: true,
  exportable: true,
  labels: {
    placeholder: 'Cari data...',
    perPage: 'Tampilkan {select} data',
    noRows: 'Tidak ada data',
    info: 'Menampilkan {start} sampai {end} dari {rows} data'
  }
});
```

### Example 3: Disable Features

```javascript
const table = new DataTable('#myTable', {
  searchable: false,  // Disable search
  sortable: false,    // Disable sorting
  exportable: false   // Disable export buttons
});
```

### Example 4: Pagination Only

```javascript
const table = new DataTable('#myTable', {
  perPage: 20,
  searchable: false,
  sortable: false,
  exportable: false
});
```

## Public Methods

### refresh()

Refresh tabel setelah ada perubahan data (add/remove rows).

```javascript
const table = new DataTable('#myTable');

// Tambah baris baru secara manual
// ...

// Refresh tabel
table.refresh();
```

### destroy()

Hapus DataTable dan kembalikan tabel ke kondisi original.

```javascript
const table = new DataTable('#myTable');

// Destroy DataTable
table.destroy();
```

## Events & Callbacks

Currently, DataTable.js tidak memiliki event system. Namun Anda bisa extend class untuk menambahkan custom events.

## Styling (CSS)

Berikut adalah contoh CSS untuk styling DataTable:

```css
/* DataTable Wrapper */
.datatable-wrapper {
  width: 100%;
  margin: 20px 0;
}

/* Top Controls */
.datatable-top {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 15px;
  gap: 15px;
  flex-wrap: wrap;
}

.datatable-perpage {
  display: flex;
  align-items: center;
  gap: 8px;
}

.datatable-search-export {
  display: flex;
  align-items: center;
  gap: 10px;
}

/* Inputs and Selects */
.datatable-selector,
.datatable-input {
  padding: 8px 12px;
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 14px;
}

.datatable-input {
  min-width: 200px;
}

/* Export Buttons */
.datatable-export {
  display: flex;
  gap: 8px;
}

.datatable-export-btn {
  padding: 8px 16px;
  background: #007bff;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
  transition: background 0.3s;
}

.datatable-export-btn:hover {
  background: #0056b3;
}

/* Table Styles */
.datatable-wrapper table {
  width: 100%;
  border-collapse: collapse;
  background: white;
}

.datatable-wrapper thead th {
  background: #f8f9fa;
  padding: 12px;
  text-align: left;
  border-bottom: 2px solid #dee2e6;
  font-weight: 600;
}

.datatable-sortable {
  user-select: none;
}

.datatable-sort-indicator {
  font-size: 12px;
  color: #999;
}

.datatable-wrapper tbody td {
  padding: 12px;
  border-bottom: 1px solid #dee2e6;
}

.datatable-wrapper tbody tr:hover {
  background: #f8f9fa;
}

.datatable-empty {
  text-align: center;
  padding: 40px !important;
  color: #999;
}

/* Bottom Controls */
.datatable-bottom {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-top: 15px;
  gap: 15px;
  flex-wrap: wrap;
}

.datatable-info {
  font-size: 14px;
  color: #666;
}

/* Pagination */
.datatable-pagination {
  display: flex;
  gap: 4px;
}

.datatable-page-btn {
  padding: 6px 12px;
  border: 1px solid #dee2e6;
  background: white;
  cursor: pointer;
  font-size: 14px;
  border-radius: 4px;
  transition: all 0.3s;
}

.datatable-page-btn:hover:not(:disabled) {
  background: #007bff;
  color: white;
  border-color: #007bff;
}

.datatable-page-btn.active {
  background: #007bff;
  color: white;
  border-color: #007bff;
}

.datatable-page-btn:disabled {
  opacity: 0.5;
  cursor: not-allowed;
}

.datatable-ellipsis {
  padding: 6px 8px;
  color: #999;
}

/* Responsive Table */
@media screen and (max-width: 768px) {
  .datatable-top {
    flex-direction: column;
    align-items: stretch;
  }

  .datatable-search-export {
    flex-direction: column;
  }

  .datatable-input {
    width: 100%;
  }

  .datatable-responsive thead {
    display: none;
  }

  .datatable-responsive tbody tr {
    display: block;
    margin-bottom: 15px;
    border: 1px solid #dee2e6;
    border-radius: 4px;
  }

  .datatable-responsive tbody td {
    display: flex;
    justify-content: space-between;
    padding: 10px;
    border-bottom: 1px solid #f0f0f0;
  }

  .datatable-responsive tbody td:last-child {
    border-bottom: none;
  }

  .datatable-responsive tbody td::before {
    content: attr(data-label);
    font-weight: 600;
    margin-right: 10px;
  }

  .datatable-bottom {
    flex-direction: column;
    align-items: stretch;
  }

  .datatable-pagination {
    justify-content: center;
  }
}
```

## Browser Compatibility

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Opera (latest)

## Performance Tips

1. **Large Datasets**: Untuk tabel dengan banyak data (>1000 rows), pertimbangkan untuk menggunakan server-side processing.

2. **Initial Load**: Set `perPage` yang reasonable (10-25) untuk performance optimal.

3. **Responsive**: Disable responsive jika tidak diperlukan untuk meningkatkan performance.

## Advanced Usage

### Custom Export Filename

Edit method `exportCSV()` di `datatable.js`:

```javascript
exportCSV() {
  // ... existing code ...

  // Change filename
  link.setAttribute('download', 'my-custom-filename.csv');
}
```

### Add Custom Buttons

Extend DataTable class:

```javascript
class MyDataTable extends DataTable {
  createTopControls() {
    super.createTopControls();

    // Add custom button
    const customBtn = document.createElement('button');
    customBtn.textContent = 'Custom Action';
    customBtn.onclick = () => this.customAction();

    this.wrapper.querySelector('.datatable-search-export')
      .appendChild(customBtn);
  }

  customAction() {
    console.log('Custom action executed!');
  }
}
```

## Troubleshooting

### Table tidak ter-initialize

**Problem:** DataTable tidak berjalan setelah include file JS.

**Solution:**
```javascript
// Pastikan DOM sudah ready
document.addEventListener('DOMContentLoaded', function() {
  const table = new DataTable('#myTable');
});
```

### Sorting tidak bekerja untuk angka

**Problem:** Angka di-sort sebagai string (10 sebelum 2).

**Solution:** DataTable.js sudah handle numeric sorting otomatis. Pastikan format angka konsisten (tanpa karakter khusus).

### Export CSV encoding issue

**Problem:** Karakter khusus tidak muncul dengan benar di Excel.

**Solution:** Buka CSV dengan encoding UTF-8, atau gunakan Excel import wizard.

## Version History

### v1.0.2 (Current)
- Initial release
- Full features: Sorting, Pagination, Search, Responsive, Export

## Support

Untuk bug reports dan feature requests, silakan hubungi developer.

## License

Internal use - PT Cipta Mas Jaya

---

**Last Updated:** 2025-11-24
