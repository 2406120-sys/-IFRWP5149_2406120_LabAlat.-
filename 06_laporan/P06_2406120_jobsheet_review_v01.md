| No | Temuan | Perbaikan yang Diperlukan | Alasan |
|:--:|:------------------------------------------------|:----------------------------------------------------------------------|:-----------------------------------------------------------------------|
| 1 | Guard pada decision tidak lengkap | Tambahkan guard eksplisit `[...]` pada setiap cabang keluar | Syarat standar OMG UML 2.5.1 untuk percabangan decision |
| 2 | Alur paralel digabungkan dengan merge | Ganti titik penggabungan alur paralel menggunakan Join | Merge hanya untuk cabang decision, Join wajib pasangan dari Fork |
| 3 | Aksi aktor ada di kolom Respon sistem | Pindahkan aksi ke swimlane aktor pelakunya | Pemisahan yang jelas antara aktor & sistem |
| 4 | Alur cabang decision terputus | Hubungkan cabang ke Merge atau akhiri pada Final Node | Seluruh alur aktivitas wajib terhubung sampai kondisi selesai |