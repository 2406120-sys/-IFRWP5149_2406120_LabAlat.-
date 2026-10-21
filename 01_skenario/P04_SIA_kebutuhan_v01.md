<!-- Tabel Spesifikasi Hubungan Diagram Kumulatif SIA -->
| Sumber | Hubungan | Tujuan |
| :--- | :--- | :--- |
| Civitas Akademika | Association | SIA-UC07 Lihat Kalender Akademik |
| Mahasiswa | Generalization &rarr; | Civitas Akademika |
| Dosen | Generalization &rarr; | Civitas Akademika |
| Mahasiswa | Association | SIA-UC01 Lihat Jadwal Kuliah |
| Mahasiswa | Association | SIA-UC03 Ajukan KRS |
| Mahasiswa | Association | SIA-UC05 Unduh Bukti Pengajuan KRS |
| Mahasiswa | Association | SIA-UC09 Lihat KHS |
| Dosen | Association | SIA-UC08 Input Nilai Mata Kuliah |
| Admin Akademik | Association | SIA-UC02 Kelola Jadwal Kuliah |
| Admin Akademik | Association | SIA-UC10 Kelola Data Mahasiswa |
| Dosen Wali | Association | SIA-UC06 Proses Keputusan KRS |
| SIA-UC03 Ajukan KRS | &laquo;include&raquo; | SIA-UC04 Validasi KRS |
| SIA-UC05 Unduh Bukti Pengajuan KRS | &laquo;extend&raquo; | SIA-UC03 Ajukan KRS |
| SIA-UC11 Tambah Data Mahasiswa | Generalization &rarr; | SIA-UC10 Kelola Data Mahasiswa |
| SIA-UC12 Ubah Data Mahasiswa | Generalization &rarr; | SIA-UC10 Kelola Data Mahasiswa |
| SIA-UC13 Hapus Data Mahasiswa | Generalization &rarr; | SIA-UC10 Kelola Data Mahasiswa |
| SIA-CO01 (collaboration) | Realization &rarr; | SIA-UC08 Input Nilai Mata Kuliah |
| SIA-CO02 (collaboration) | Realization &rarr; | SIA-UC09 Lihat KHS |