<!-- Spesifikasi hubungan diagram kumulatif LAB -->
| Sumber | Hubungan | Tujuan |
| :--- | :--- | :--- |
| Peminjam | Association | LAB-UC01 Lihat Ketersediaan Peralatan |
| Peminjam | Association | LAB-UC03 Ajukan Peminjaman |
| Mahasiswa | Association (khusus, tetap dari Pertemuan 3) | LAB-UC05 Cetak Bukti Pengajuan |
| Mahasiswa | Generalization &rarr; | Peminjam |
| Dosen | Generalization &rarr; | Peminjam |
| Petugas Laboratorium | Association | LAB-UC02 Kelola Data Peralatan |
| Petugas Laboratorium | Association | LAB-UC06 Proses Keputusan Peminjaman |
| Petugas Laboratorium | Association | LAB-UC11 Catat Pengembalian Peralatan |
| Kepala Laboratorium | Association | LAB-UC07 Lihat Laporan Peminjaman |
| LAB-UC03 Ajukan Peminjaman | &laquo;include&raquo; (tetap dari Pertemuan 3) | LAB-UC04 Periksa Ketersediaan |
| LAB-UC05 Cetak Bukti Pengajuan | &laquo;extend&raquo; (tetap dari Pertemuan 3) | LAB-UC03 Ajukan Peminjaman |
| LAB-UC08 Tambah Data Peralatan | Generalization &rarr; | LAB-UC02 Kelola Data Peralatan |
| LAB-UC09 Ubah Data Peralatan | Generalization &rarr; | LAB-UC02 Kelola Data Peralatan |
| LAB-UC10 Hapus Data Peralatan | Generalization &rarr; | LAB-UC02 Kelola Data Peralatan |
| LAB-UC11 Catat Pengembalian Peralatan | &laquo;include&raquo; | LAB-UC12 Periksa Kondisi Peralatan |
| LAB-CO01 (collaboration) | Realization &rarr; | LAB-UC03 Ajukan Peminjaman |
| LAB-CO02 (collaboration) | Realization &rarr; | LAB-UC11 Catat Pengembalian Peralatan |