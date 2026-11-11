## Deskripsi
Dokumen ini disusun sebagai bentuk evaluasi, verifikasi, dan peninjauan kritis (*review*) terhadap hasil pemodelan perangkat lunak berorientasi objek pada Pertemuan 4. Pemodelan pada pertemuan ini bersifat **kumulatif**, yaitu mempertahankan secara utuh seluruh elemen diagram Pertemuan 3 (LAB-UC01 s.d. LAB-UC07 / SIA-UC01 s.d. SIA-UC06) serta menambahkan konsep pemodelan lanjutan. 

Fokus peninjauan mencakup dua studi kasus:
1. **Studi Kasus Terbimbing (LAB):** Sistem Informasi Peminjaman dan Pengembalian Peralatan Laboratorium Kampus (Kebutuhan `LAB-R01` s.d. `LAB-R11`).
2. **Tugas Praktik Mandiri (SIA):** Sistem Informasi Akademik - Layanan Hasil Studi (Kebutuhan `SIA-R01` s.d. `SIA-R12`).

Evaluasi ini bertujuan untuk memastikan kepatuhan model terhadap standar **OMG UML 2.5.1**, mencakup penerapan *Generalization Aktor*, *Generalization Use Case*, notasi *Collaboration* beserta relasi *Realization*, serta keterlacakan (*traceability*) kebutuhan ke dalam model dan deskripsi terperinci.

## Hasil Analisis

| No | Aspek Review | Temuan / Kondisi Model Pertemuan 4 | Perbaikan / Action Item | Kepatuhan Notasi UML 2.5.1 & Rules | Status Review |
|:--:|:---|:---|:---|:---|:--:|
| **1** | **Batas Sistem & Elemen Diagram** | Seluruh aktor digambarkan di luar batas sistem, sedangkan seluruh *use case* dan *collaboration* berada di dalam batas sistem. | Pertahankan posisi aktor di luar *boundary* dan elemen sistem di dalam *boundary*. | Sesuai Aturan OMG UML 2.5.1. | **VERIFIED** |
| **2** | **Generalization Aktor** | Panah berujung segitiga kosong mengarah dari aktor khusus (`Mahasiswa`, `Dosen`) menuju aktor umum (`Peminjam` / `Civitas Akademika`). | Asosiasi fungsi bersama digambar **satu kali** dari aktor umum. Tidak menggambar ulang garis asosiasi warisan dari aktor khusus. | Pewarisan asosiasi dan notasi segitiga kosong sudah benar. | **VERIFIED** |
| **3** | **Asosiasi Khusus Aktor** | `Mahasiswa` tetap memiliki asosiasi langsung ke `Cetak Bukti Pengajuan` (LAB) / `Unduh Bukti Pengajuan` (SIA). | Pertahankan garis asosiasi langsung khusus milik aktor khusus yang tidak diwariskan ke aktor khusus setingkat (`Dosen`). | Pewarisan selektif terpenuhi secara sah. | **VERIFIED** |
| **4** | **Generalization Use Case** | Panah berujung segitiga kosong mengarah dari *use case* khusus (`Tambah`, `Ubah`, `Hapus`) menuju *use case* umum (`Kelola Data`). | Aktor mengelola terhubung ke *use case* umum, dan setiap *use case* khusus memiliki perilaku pembeda yang jelas. | Notasi *Generalization Use Case* valid. | **VERIFIED** |
| **5** | **Collaboration & Realization** | *Collaboration* digambarkan sebagai elips garis putus-putus dengan nama sama persis dengan *use case* utama yang direalisasikan. | Relasi *Realization* digambar dengan garis putus-putus berujung segitiga kosong mengarah dari *collaboration* ke *use case*. | Notasi *Collaboration* & *Realization* valid 100%. | **VERIFIED** |
| **6** | **Ketersambungan Integrasi Relasi** | Diagram mempertahankan relasi `<<include>>` dan `<<extend>>` (beserta *condition* & *extension point*) dari Pertemuan 3. | Dipastikan tidak ada relasi ganda yang tumpang tindih antara *generalization*, *include*, *extend*, dan *realization*. | Semantik relasi UML konsisten. | **VERIFIED** |
| **7** | **Keterlacakan & Identabilitas** | Setiap elemen baru berasosiasi langsung dengan Kebutuhan `LAB-R07` s.d. `LAB-R11` dan `SIA-R07` s.d. `SIA-R12`. | Matriks keterlacakan tercatat utuh pada katalog *use case* dan tabel *use case description*. | Keterlacakan matriks terpenuhi utuh. | **VERIFIED** |


## Penjelasan Hasil Analisis

### 1. Batas Sistem dan Pemisahan Elemen
* **Analisis Teoritis & Aturan:** Sesuai standar OMG UML 2.5.1, *System Boundary* memisahkan lingkungan eksternal aplikasi dari struktur internalnya. Aktor adalah entitas eksternal yang berinteraksi dengan sistem.
* **Hasil Evaluasi:** Kotak batas sistem digambar secara jelas. Aktor `Peminjam`, `Mahasiswa`, `Dosen`, `Petugas Laboratorium`, `Kepala Laboratorium`, `Civitas Akademika`, `Dosen Wali`, dan `Admin Akademik` berada di luar batas sistem. Seluruh *use case* dan *collaboration* bertempat di dalam kotak batas sistem.

### 2. Generalization Aktor dan Pewarisan Asosiasi
* **Analisis Teoritis & Aturan:** *Generalization Aktor* menyatakan bahwa aktor khusus mewarisi (*inherit*) seluruh asosiasi dan kemampuan interaksi dari aktor umum. Arah panah berupa garis utuh dengan kepala panah segitiga kosong menunjuk ke aktor umum.
* **Hasil Evaluasi (LAB & SIA):** 
  * Pada kasus LAB, `Peminjam` ditetapkan sebagai aktor umum, sedangkan `Mahasiswa` dan `Dosen` adalah aktor khusus. Garis asosiasi menuju `Lihat Ketersediaan Peralatan` (`LAB-UC01`) dan `Ajukan Peminjaman` (`LAB-UC03`) hanya ditarik **satu kali** dari `Peminjam`. 
  * `Mahasiswa` dan `Dosen` otomatis mewarisi kedua fungsi tersebut tanpa perlu digambar ulang garis asosiasinya.
  * `Mahasiswa` mempertahankan asosiasi langsung khusus ke `Cetak Bukti Pengajuan` (`LAB-UC05`) yang tidak dimiliki oleh `Dosen`.
  * Pada kasus SIA, `Civitas Akademika` menjadi aktor umum bagi `Mahasiswa` dan `Dosen` untuk mengakses `Lihat Kalender Akademik` (`SIA-UC07`).

### 3. Generalization Use Case
* **Analisis Teoritis & Aturan:** *Generalization Use Case* menggambarkan hubungan parent-child antar-fungsi di mana *use case* khusus mewarisi tujuan dasar *use case* umum tetapi memiliki perilaku spesifik yang membedakan hasil akhirnya.
* **Hasil Evaluasi:**
  * Pada kasus LAB, `Kelola Data Peralatan` (`LAB-UC02`) menjadi *use case* umum, yang memiliki tiga bentuk khusus: `Tambah Data Peralatan` (`LAB-UC08`), `Ubah Data Peralatan` (`LAB-UC09`), dan `Hapus Data Peralatan` (`LAB-UC10`). 
  * Pada kasus SIA, `Kelola Data Mahasiswa` (`SIA-UC10`) bertindak sebagai *use case* umum bagi `Tambah Data Mahasiswa` (`SIA-UC11`), `Ubah Data Mahasiswa` (`SIA-UC12`), dan `Hapus Data Mahasiswa` (`SIA-UC13`).
  * Ujung segitiga kosong pada ketiga panah *generalization* menunjuk tepat pada *use case* umum (`Kelola Data`).

### 4. Collaboration dan Realization
* **Analisis Teoritis & Aturan:** *Collaboration* menjelaskan *bagaimana* elemen di dalam sistem bekerja sama untuk mewujudkan perilaku yang didefinisikan oleh sebuah *use case*. Dipetakan sebagai elips garis putus-putus dengan nama persis sama dengan *use case*-nya, dan dihubungkan oleh relasi *Realization* (garis putus-putus berujung segitiga kosong mengarah dari *collaboration* ke *use case*). *Collaboration* tidak pernah dihubungkan langsung ke aktor.
* **Hasil Evaluasi:**
  * Kasus LAB memodelkan dua *collaboration*: `Ajukan Peminjaman` (`LAB-CO01` -> `LAB-UC03`) dan `Catat Pengembalian Peralatan` (`LAB-CO02` -> `LAB-UC11`).
  * Kasus SIA memodelkan dua *collaboration*: `Input Nilai Mata Kuliah` (`SIA-CO01` -> `SIA-UC08`) dan `Lihat KHS` (`SIA-CO02` -> `SIA-UC09`).
  * Seluruh nama *collaboration* sama persis dengan *use case* tujuan dan tidak ada garis langsung yang menghubungkan *collaboration* dengan aktor eksternal.

### 5. Sintesis Perbandingan Empat Relasi UML (Include, Extend, Generalization, Realization)
Model Pertemuan 4 berhasil mengintegrasikan 4 relasi UML secara harmonis tanpa saling menggantikan:
* **`<<include>>`**: Digunakan untuk perilaku wajib, contoh: `Catat Pengembalian Peralatan` menyertakan `Periksa Kondisi Peralatan` (`LAB-UC11` -> `LAB-UC12`).
* **`<<extend>>`**: Digunakan untuk perilaku opsional bersyarat, contoh: `Cetak Bukti Pengajuan` memperluas `Ajukan Peminjaman` (`LAB-UC05` -> `LAB-UC03`).
* **`Generalization`**: Digunakan untuk pewarisan hirarki (Aktor & Use Case), digambar dengan garis utuh segitiga kosong.
* **`Realization`**: Digunakan untuk menghubungkan *collaboration* ke *use case*, digambar dengan garis putus-putus segitiga kosong.

### 6. Kelengkapan Spesifikasi Use Case Description Lanjutan
* **Analisis Teoritis & Aturan:** Dokumen *Use Case Description* pada Pertemuan 4 memperluas template standar Pertemuan 3 dengan menyertakan dua baris penanda keterlacakan baru, yaitu **Generalization** dan **Collaboration**.
* **Hasil Evaluasi:** Spesifikasi untuk `LAB-UC11 Catat Pengembalian Peralatan` dan `SIA-UC08 Input Nilai Mata Kuliah` telah memuat rincian *Trigger*, *Preconditions*, *Main Success Scenario*, *Alternate Flows* (seperti penanganan kondisi peralatan rusak atau input nilai di luar rentang sah), *Postconditions*, serta mencantumkan ID *Collaboration* yang merealisasikannya secara eksplisit.


## Kesimpulan

Berdasarkan hasil pengujian, verifikasi, dan analisis komprehensif terhadap artefak pemodelan Pertemuan 4:

1. **Kepatuhan Notasi UML 2.5.1:** Penggunaan *Generalization Aktor*, *Generalization Use Case*, *Collaboration*, dan relasi *Realization* telah diimplementasikan 100% sesuai dengan spesifikasi normatif UML dan panduan jobsheet.
2. **Keutuhan Model Kumulatif:** Seluruh struktur model dari Pertemuan 3 dipertahankan secara utuh tanpa ada fungsi yang hilang, serta penambahan elemen baru Pertemuan 4 terintegrasi secara runtut dan presisi.
3. **Traceability Kebutuhan:** Semua kebutuhan baru (`LAB-R07` s.d. `LAB-R11` dan `SIA-R07` s.d. `SIA-R12`) terpetakan secara valid ke dalam elips diagram dan dokumen deskripsi terperinci.
