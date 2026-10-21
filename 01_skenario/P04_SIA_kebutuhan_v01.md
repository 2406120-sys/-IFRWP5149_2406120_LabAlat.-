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


<!-- Batas dan asumsi  -->
• Kode kebutuhan dimulai dari SIA-R07 agar SIA-R01 dan SIA-R02 
(Pertemuan 2) serta SIA-R03 sampai SIA-R06 (Pertemuan 3) tetap 
mempunyai identitas berbeda. 
• Pengguna telah terautentikasi dan memiliki hak akses sesuai peran. 
• Kalender akademik pada tugas ini adalah agenda resmi institusi (awal 
semester, batas KRS, masa ujian, dan sejenisnya); jangan 
menyamakannya dengan jadwal kuliah pada Pertemuan 2. 
• Nilai hanya dapat diinput oleh dosen pengampu mata kuliah tersebut. Nilai 
yang diinput belum terpublikasi sebelum dinyatakan resmi oleh ketentuan 
tugas ini: KHS hanya menampilkan nilai yang sudah dipublikasikan. 
• Hapus Data Mahasiswa hanya untuk mahasiswa yang tidak memiliki data 
akademik aktif. Ketentuan ini fiktif untuk latihan. 
• Pengajuan KRS tetap digambar sebagai bagian diagram kumulatif dari 
Pertemuan 3. Pembayaran dan perancangan basis data berada di luar 
tugas ini.