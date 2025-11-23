# Documentation & Demo Files

Folder ini berisi dokumentasi dan file demo untuk development. **Folder ini tidak di-build ke production** (tercantum di `_config.yml` exclude list).

## 📁 Struktur

```
docs/
├── README.md                   # File ini
├── datatable.md                # Dokumentasi lengkap DataTable.js
└── datatable-demo.html         # Demo interaktif DataTable.js
```

## 📄 Files

### datatable.md
Dokumentasi lengkap untuk DataTable.js library meliputi:
- Installation & setup
- Configuration options
- API reference
- Usage examples
- Troubleshooting
- Browser compatibility
- Performance tips

### datatable-demo.html
Demo page interaktif yang menampilkan 3 contoh implementasi DataTable.js:
1. **Demo 1**: Full features (default configuration)
2. **Demo 2**: Custom configuration dengan Bahasa Indonesia
3. **Demo 3**: Minimal features (pagination only)

**Cara membuka demo:**
```bash
# Buka langsung di browser
open docs/datatable-demo.html

# Atau gunakan local server
python -m http.server 8000
# Kemudian buka: http://localhost:8000/docs/datatable-demo.html
```

## 🎯 Tujuan

Folder `docs/` digunakan untuk:
- ✅ Dokumentasi teknis library/component
- ✅ Demo/example files untuk testing
- ✅ Developer reference
- ❌ **TIDAK** di-deploy ke production
- ❌ **TIDAK** accessible dari website publik

## 📝 Notes

- Semua file di folder ini hanya untuk **development & documentation**
- Jika ada dokumentasi yang perlu di-publish ke website, pindahkan ke folder lain atau buat sebagai Jekyll page
- File demo harus tetap up-to-date dengan library yang sebenarnya di `assets/`

---

**Last Updated:** 2025-11-24
