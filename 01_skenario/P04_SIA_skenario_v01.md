<!-- Deskripsi Skenario -->
Tugas ini berbeda dari tugas pertemuan sebelumnya. Tugas Pertemuan 2
adalah jadwal kuliah dan tugas Pertemuan 3 adalah pengajuan KRS. Tugas
Pertemuan 4 adalah layanan hasil studi, dengan teknik generalization dan
collaboration yang sama seperti studi kasus, tetapi diterapkan pada skenario
baru tanpa contoh jawaban.
Skenario tugas berikut fiktif untuk praktikum dan berbeda dari tugas
Pertemuan 2 (jadwal kuliah) dan Pertemuan 3 (pengajuan KRS).
Mahasiswa dan dosen sama-sama merupakan Civitas Akademika yang
dapat melihat kalender akademik. Dosen menginput nilai mata kuliah yang
diampunya setelah masa perkuliahan berakhir. Mahasiswa melihat Kartu
Hasil Studi (KHS) untuk semester yang nilainya sudah dipublikasikan. Admin
Akademik mengelola data mahasiswa: menambah data mahasiswa baru,
mengubah data mahasiswa, dan menghapus data mahasiswa. Dua use case
utama, Input Nilai Mata Kuliah dan Lihat KHS, ditunjukkan realisasinya oleh
collaboration yang bersesuaian.



<!-- Identifikasi Aktor -->

| Aktor | Kedudukan | Tujuan terhadap sistem |
| :--- | :--- | :--- |
| Civitas Akademika | Umum (general), baru pada Pertemuan 4 | Peran umum bagi pengguna akademik. Mewariskan fungsinya (Lihat Kalender Akademik) kepada Mahasiswa dan Dosen. |
| Mahasiswa | Khusus dari Civitas Akademika | Melihat kalender akademik (diwarisi), melihat jadwal kuliah, mengajukan KRS, mengunduh bukti KRS, dan melihat KHS. |
| Dosen | Khusus dari Civitas Akademika | Melihat kalender akademik (diwarisi) dan menginput nilai mata kuliah yang diampu. |
| Admin Akademik | Tetap dari Pertemuan 2 & 3 | Mengelola jadwal kuliah dan mengelola data mahasiswa (tambah, ubah, hapus). |
| Dosen Wali | Tetap dari Pertemuan 3 | Memproses persetujuan atau penolakan KRS. |




<!-- Katalog Use Case Kumulatif -->

| ID | Nama use case | Peran dalam model | Sumber kebutuhan |
| :--- | :--- | :--- | :--- |
| SIA-UC01 | Lihat Jadwal Kuliah | Tetap dari Pertemuan 2; fungsi Mahasiswa | SIA-R01 |
| SIA-UC02 | Kelola Jadwal Kuliah | Tetap dari Pertemuan 2; fungsi Admin Akademik | SIA-R02 |
| SIA-UC03 | Ajukan KRS | Tetap dari Pertemuan 3; fungsi Mahasiswa (menyertakan SIA-UC04) | SIA-R03 |
| SIA-UC04 | Validasi KRS | Tetap dari Pertemuan 3; perilaku yang disertakan SIA-UC03 | SIA-R04 |
| SIA-UC05 | Unduh Bukti Pengajuan KRS | Tetap dari Pertemuan 3; tambahan bersyarat pada SIA-UC03 | SIA-R05 |
| SIA-UC06 | Proses Keputusan KRS | Tetap dari Pertemuan 3; fungsi Dosen Wali | SIA-R06 |
| SIA-UC07 | Lihat Kalender Akademik | Baru pada Pertemuan 4; fungsi aktor umum Civitas Akademika | SIA-R07 |
| SIA-UC08 | Input Nilai Mata Kuliah | Baru pada Pertemuan 4; fungsi Dosen; direalisasikan SIA-CO01 | SIA-R08 |
| SIA-UC09 | Lihat KHS | Baru pada Pertemuan 4; fungsi Mahasiswa; direalisasikan SIA-CO02 | SIA-R09 |
| SIA-UC10 | Kelola Data Mahasiswa | Baru pada Pertemuan 4; use case UMUM bagi SIA-UC11, SIA-UC12, SIA-UC13 | SIA-R10, SIA-R11 |
| SIA-UC11 | Tambah Data Mahasiswa | Baru pada Pertemuan 4; use case KHUSUS dari SIA-UC10 | SIA-R11 |
| SIA-UC12 | Ubah Data Mahasiswa | Baru pada Pertemuan 4; use case KHUSUS dari SIA-UC10 | SIA-R11 |
| SIA-UC13 | Hapus Data Mahasiswa | Baru pada Pertemuan 4; use case KHUSUS dari SIA-UC10 | SIA-R11 |

S