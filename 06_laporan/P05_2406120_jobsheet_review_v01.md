## Deskripsi
Dokumen ini disusun sebagai bentuk evaluasi, verifikasi, dan peninjauan kritis (*review*) terhadap penyusunan **Skenario Use Case** (langkah kegiatan dan respon sistem) pada Pertemuan 5. Pemodelan skenario ini bertindak sebagai penjabaran terperinci dari Use Case Diagram kumulatif Pertemuan 4 tanpa merubah struktur diagram acuan.

Fokus peninjauan mencakup dua studi kasus utama:
1. **Studi Kasus Terbimbing (LAB):** Penelaahan dan verifikasi 12 Tabel Skenario Use Case pada Sistem Informasi Peminjaman dan Pengembalian Peralatan Laboratorium Kampus (LAB-UC01 s.d. LAB-UC12).
2. **Tugas Praktik Mandiri (SIA):** Penyusunan dan peninjauan 7 Tabel Skenario Use Case pada Sistem Informasi Akademik - Layanan Hasil Studi (SIA-UC07 s.d. SIA-UC13).

Evaluasi ini bertujuan untuk memastikan kepatuhan perancangan skenario terhadap aturan penulisan langkah interaksi aktif, pemisahan kolom Kegiatan vs Respon Sistem, penomoran berlanjut pada alur alternatif (*Scenario Alternative*), konsistensi rujukan relasi `<<include>>` dan `<<extend>>`, serta penerapan *Generalization Aktor* dan *Generalization Use Case*.

---

## Hasil Analisis

| No | Aspek Review | Temuan / Kondisi Model Pertemuan 5 | Perbaikan / Action Item | Kepatuhan Aturan Jobsheet & Notasi UML | Status Review |
|:--:|:---|:---|:---|:---|:--:|
| **1** | **Kelengkapan Struktur Tabel** | Seluruh tabel memuat header lengkap (Nama Use Case, Aktor, Tujuan, Deskripsi), dua kolom interaksi, Skenario Normal, Skenario Alternative, dan Skenario Akhir. | Pertahankan kelengkapan field pada 12 tabel LAB dan 7 tabel SIA tanpa ada bagian yang kosong. | 100% Terisi Utuh sesuai Spesifikasi. | **VERIFIED** |
| **2** | **Pemisahan Kolom Interaksi** | Aksi aktor ditulis tegas di kolom `Kegiatan`, sedangkan tanggapan sistem ditulis di kolom `Respon Sistem`. | Pastikan kalimat diawali kata kerja aktif (memilih, menginput, menampilkan, memvalidasi). | Struktur Interaksi Terpisah Presisi. | **VERIFIED** |
| **3** | **Penomoran Berlanjut (Sequential)** | Penomoran langkah pada *Skenario Alternative* melanjutkan nomor terakhir dari *Skenario Normal*. | Dilarang mengulang penomoran dari 1 pada alur alternatif agar rujukan langkah asal tidak ambigu. | Aturan Penomoran Berlanjut Dipenuhi. | **VERIFIED** |
| **4** | **Pemetaan Relasi `<<include>>`** | Relasi `<<include>>` dipetakan sebagai langkah rujukan wajib di *Skenario Normal* tanpa menyalin ulang alurnya. | Disebutkan secara eksplisit pada langkah eksekusi (contoh: memanggil Periksa Ketersediaan / Validasi KRS). | Pemetaan Include Sesuai Aturan. | **VERIFIED** |
| **5** | **Pemetaan Relasi `<<extend>>`** | Relasi `<<extend>>` dipetakan sebagai cabang bersyarat di *Skenario Alternative*. | Cantumkan rujukan nama use case tambahan, `condition`, dan `extension point` (contoh: Cetak/Unduh Bukti). | Pemetaan Extend Sesuai Aturan. | **VERIFIED** |
| **6** | **Penerapan Generalization Aktor** | Skenario ditulis satu kali atas nama Aktor Umum (`Peminjam` / `Civitas Akademika`). | Aktor khusus (`Mahasiswa`, `Dosen`) mewarisi alur tersebut dengan catatan perbedaan khusus jika ada. | Prinsip Generalization Aktor Valid. | **VERIFIED** |
| **7** | **Penerapan Generalization Use Case** | Skenario Use Case Umum (`Kelola Data`) memuat alur bersama, sedangkan Use Case Khusus (`Tambah`, `Ubah`, `Hapus`) merujuk alur bersama. | Skenario khusus hanya mendokumentasikan alur pembeda dan syarat khususnya. | Prinsip Generalization Use Case Valid. | **VERIFIED** |
| **8** | **Pencatatan Collaboration** | *Collaboration* (`LAB-CO01`, `LAB-CO02`, `SIA-CO01`, `SIA-CO02`) dicatat pada bagian keterangan di bawah tabel. | *Collaboration* tidak dibuatkan langkah kegiatan sendiri atau tabel skenario terpisah. | Notasi Penanda Realisasi Valid. | **VERIFIED** |

---

## Penjelasan Hasil Analisis

### 1. Struktur Terstandar dan Pemisahan Interaksi
* **Analisis Teoritis & Aturan:** Skenario use case merinci interaksi dinamis antara aktor eksternal dengan sistem. Kolom `Kegiatan` hanya boleh diisi aksi yang dilakukan oleh aktor, sedangkan kolom `Respon Sistem` berisi reaksi atau pemrosesan logika oleh sistem.
* **Hasil Evaluasi:** Seluruh tabel pada studi kasus LAB dan tugas SIA telah memenuhi standar dua kolom interaksi. Penulisan langkah menggunakan kata kerja aktif yang eksplisit (menyebutkan nama field, nilai, atau status secara jelas, seperti *status Menunggu Keputusan*, *tanggal pinjam*, atau *kondisi Rusak Ringan*).

### 2. Aturan Penomoran Berlanjut pada Alur Alternatif
* **Analisis Teoritis & Aturan:** Penomoran pada bagian *Skenario Alternative* harus melanjutkan penomoran dari *Skenario Normal*. Pengulangan nomor dari angka 1 di alur alternatif akan merusak keterlacakan rujukan langkah asal (*cabang dari langkah N*).
* **Hasil Evaluasi:** Baik pada 12 tabel LAB maupun 7 tabel SIA, alur alternatif selalu diawali dengan nomor yang melanjutkan alur normal. Rujukan cabang disebutkan di awal langkah alternatif (contoh: *Peralatan yang dipilih tidak tersedia (cabang dari langkah 2)*) sehingga alur pengecualian dapat ditelusuri dengan pasti.

### 3. Pemetaan Relasi `<<include>>` dan `<<extend>>` ke Dalam Skenario
* **Analisis Teoritis & Aturan:** Relasi `<<include>>` merupakan alur wajib yang harus selalu dieksekusi saat use case utama berjalan, sehingga ditempatkan di *Skenario Normal*. Relasi `<<extend>>` merupakan perluasan bersyarat, sehingga ditempatkan pada *Skenario Alternative*.
* **Hasil Evaluasi:**
  * **Include:** Pada `LAB-UC03 Ajukan Peminjaman`, langkah 2 pada Skenario Normal memanggil `LAB-UC04 Periksa Ketersediaan`. Pada `LAB-UC11 Catat Pengembalian Peralatan`, langkah 6 memanggil `LAB-UC12 Periksa Kondisi Peralatan`. Pada `SIA-UC08 Input Nilai Mata Kuliah`, proses validasi hak akses pengampu dipanggil secara terintegrasi.
  * **Extend:** Pada `LAB-UC03`, langkah 11 dan 12 pada Skenario Alternative memuat rujukan ke `LAB-UC05 Cetak Bukti Pengajuan` lengkap dengan keterangan `condition: [mahasiswa memilih cetak]` dan `extension point: Bukti pengajuan tersedia`. Jika pilihan cetak tidak diambil, alur pengajuan utama tetap dinyatakan selesai dengan status berhasil.

### 4. Implementasi Generalization Aktor pada Skenario
* **Analisis Teoritis & Aturan:** Dalam *Generalization Aktor*, aktor khusus mewarisi perilaku aktor umum. Oleh karena itu, skenario tidak perlu ditulis berulang untuk setiap aktor khusus.
* **Hasil Evaluasi:** 
  * Skenario `LAB-UC01` dan `LAB-UC03` ditulis satu kali atas nama **Peminjam** dengan catatan berlaku untuk **Mahasiswa** dan **Dosen**. Catatan khusus untuk `Mahasiswa` (seperti cetak bukti) ditangani pada alur extend bersyarat.
  * Skenario `SIA-UC07 Lihat Kalender Akademik` ditulis satu kali atas nama **Civitas Akademika** dan berlaku penuh untuk **Mahasiswa** maupun **Dosen**.

### 5. Implementasi Generalization Use Case pada Skenario
* **Analisis Teoritis & Aturan:** Skenario Use Case Umum memuat alur pengelolaan secara generik (membuka formulir, validasi, dan simpan). Skenario Use Case Khusus hanya merinci langkah pembeda (perilaku spesifik) dan merujuk pada alur bersama.
* **Hasil Evaluasi:**
  * **Studi Kasus LAB:** `LAB-UC02 Kelola Data Peralatan` bertindak sebagai skenario induk bersama. `LAB-UC08 Tambah`, `LAB-UC09 Ubah`, dan `LAB-UC10 Hapus` merujuk ke langkah bersama pada `LAB-UC02`, namun mencantumkan alur pembeda spesifik (contoh: `LAB-UC10 Hapus` menambahkan alur alternatif *Peralatan sedang dipinjam atau memiliki pengajuan aktif*, di mana sistem menolak penghapusan).
  * **Tugas SIA:** `SIA-UC10 Kelola Data Mahasiswa` mendefinisikan alur umum, sedangkan `SIA-UC11 Tambah`, `SIA-UC12 Ubah`, dan `SIA-UC13 Hapus` merinci perilaku spesifiknya (contoh: `SIA-UC13 Hapus` memverifikasi syarat *tidak memiliki data akademik aktif*).

### 6. Pencatatan Collaboration dan Kasus Khusus Aktor Single
* **Analisis & Evaluasi:** 
  * *Collaboration* tidak digambarkan sebagai tabel skenario baru. Keterangan keberadaan *collaboration* (seperti `LAB-CO01`, `LAB-CO02`, `SIA-CO01`, `SIA-CO02`) dicantumkan pada catatan di bawah tabel use case yang direalisasikannya.
  * Aktor **Kepala Laboratorium** pada `LAB-UC07 Lihat Laporan Peminjaman` diverifikasi hanya terhubung ke satu use case yang berdiri sendiri tanpa relasi `include`, `extend`, `generalization`, atau `realization`. Tabel skenario `LAB-UC07` dibuat independen dan tetap valid.

---

## Tabel Penelusuran Keterlacakan (Traceability Matrix)

| ID Use Case | Nama Use Case | Relasi Diagram Pertemuan 4 yang Ditelusuri | Hasil Pencocokan Skenario Pertemuan 5 | Status |
|:---|:---|:---|:---|:--:|
| **LAB-UC01** | Lihat Ketersediaan Peralatan | Asosiasi Aktor Umum `Peminjam` | Skenario ditulis atas nama Peminjam; alur normal menampilkan ketersediaan. | **MATCHED** |
| **LAB-UC03** | Ajukan Peminjaman | `<<include>>` LAB-UC04, `<<extend>>` LAB-UC05, Realization LAB-CO01 | Include dipanggil pada Langkah 2; Extend dipanggil di Langkah 11-12; Collaboration dicatat di keterangan. | **MATCHED** |
| **LAB-UC04** | Periksa Ketersediaan | Include dari LAB-UC03 | Dipanggil oleh alur pengajuan; tidak ada aksi aktor langsung (sistem ke sistem). | **MATCHED** |
| **LAB-UC05** | Cetak Bukti Pengajuan | Extend ke LAB-UC03 (khusus Mahasiswa) | Berjalan jika condition terpenuhi; pengajuan utama tetap berhasil tanpa cetak. | **MATCHED** |
| **LAB-UC02** | Kelola Data Peralatan | Generalization Parent dari UC08, UC09, UC10 | Memuat alur umum pengelolaan bersama. | **MATCHED** |
| **LAB-UC08** | Tambah Data Peralatan | Generalization Child ke LAB-UC02 | Merujuk alur bersama UC02; perilaku pembeda: data baru tersimpan. | **MATCHED** |
| **LAB-UC09** | Ubah Data Peralatan | Generalization Child ke LAB-UC02 | Merujuk alur bersama UC02; perilaku pembeda: data peralatan terbarui. | **MATCHED** |
| **LAB-UC10** | Hapus Data Peralatan | Generalization Child ke LAB-UC02 | Merujuk alur bersama UC02; perilaku pembeda: penolakan jika alat sedang dipinjam. | **MATCHED** |
| **LAB-UC06** | Proses Keputusan Peminjaman | Asosiasi Petugas Laboratorium | Alur normal mengubah status jadi Disetujui; alur alternatif mengubah jadi Ditolak. | **MATCHED** |
| **LAB-UC07** | Lihat Laporan Peminjaman | Asosiasi Kepala Laboratorium (Stand-alone) | Skenario berdiri sendiri tanpa relasi tambahan. | **MATCHED** |
| **LAB-UC11** | Catat Pengembalian Peralatan | `<<include>>` LAB-UC12, Realization LAB-CO02 | Include dipanggil di Langkah 6; syarat prasyarat status `Dipinjam` diverifikasi. | **MATCHED** |
| **LAB-UC12** | Periksa Kondisi Peralatan | Include dari LAB-UC11 | Mencatat kondisi Baik, Rusak Ringan, atau Rusak Berat pada alur pengembalian. | **MATCHED** |
| **SIA-UC07** | Lihat Kalender Akademik | Asosiasi Aktor Umum `Civitas Akademika` | Skenario berlaku untuk Mahasiswa dan Dosen. | **MATCHED** |
| **SIA-UC08** | Input Nilai Mata Kuliah | Asosiasi Dosen, Realization SIA-CO01 | Prasyarat Dosen Pengampu; nilai di luar rentang ditolak pada alur alternatif. | **MATCHED** |
| **SIA-UC09** | Lihat KHS | Asosiasi Mahasiswa, Realization SIA-CO02 | Hanya menampilkan nilai semester yang sudah dipublikasikan. | **MATCHED** |
| **SIA-UC10** | Kelola Data Mahasiswa | Generalization Parent dari UC11, UC12, UC13 | Memuat alur pengelolaan umum oleh Admin Akademik. | **MATCHED** |
| **SIA-UC11** | Tambah Data Mahasiswa | Generalization Child ke SIA-UC10 | Merujuk UC10; perilaku pembeda: data mahasiswa baru tersimpan. | **MATCHED** |
| **SIA-UC12** | Ubah Data Mahasiswa | Generalization Child ke SIA-UC10 | Merujuk UC10; perilaku pembeda: perbaikan profil mahasiswa tersimpan. | **MATCHED** |
| **SIA-UC13** | Hapus Data Mahasiswa | Generalization Child ke SIA-UC10 | Merujuk UC10; syarat penolakan jika mahasiswa memiliki data akademik aktif. | **MATCHED** |

---

## Kesimpulan

Berdasarkan hasil pengujian, penelaahan, dan peninjauan menyeluruh terhadap dokumen Skenario Use Case Pertemuan 5:

1. **Konsistensi terhadap Diagram Acuan:** Seluruh 12 tabel skenario LAB dan 7 tabel skenario SIA telah terbukti 100% konsisten dengan diagram kumulatif Pertemuan 4 dalam hal penamaan use case, ID, aktor, serta pemetaan relasi UML.
2. **Kepatuhan Aturan Penulisan:** Penulisan alur interaksi telah memisahkan dengan tegas antara aksi aktor dan respon sistem, menggunakan penomoran berlanjut pada alur alternatif, dan mendokumentasikan skenario akhir (berhasil maupun gagal) secara eksplisit.
3. **Keterlacakan Model:** Penerapan konsep *Generalization Aktor*, *Generalization Use Case*, *Include*, *Extend*, dan *Collaboration* telah berhasil dipetakan ke dalam struktur tabel skenario tanpa merusak semantik sistem.

Dengan demikian, artefak **Skenario Use Case Pertemuan 5** dinyatakan **VALID, KONSISTEN, DAN LULUS REVIEW**, serta siap dijadikan acuan utama untuk tahap perancangan *Behavioral Model* lanjutan