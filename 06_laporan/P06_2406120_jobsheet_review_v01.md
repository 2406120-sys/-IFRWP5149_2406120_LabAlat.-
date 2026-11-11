## Deskripsi
Dokumen ini disusun sebagai bentuk evaluasi, verifikasi, dan peninjauan kritis (*review*) terhadap hasil pemodelan **Activity Diagram** pada Pertemuan 6. Pemodelan aktivitas pada pertemuan ini diturunkan secara langsung dari langkah-langkah **Skenario Use Case (Pertemuan 5)** untuk menggambarkan alur kerja (*workflow*), percabangan keputusan (*decision*), penggabungan (*merge*), eksekusi paralel (*fork & join*), serta pembagian tanggung jawab peran melalui *swimlane*.

Fokus peninjauan mencakup dua studi kasus:
1. **Studi Kasus Terbimbing (LAB):** Peninjauan 7 Activity Diagram untuk 7 Use Case utama pada Sistem Informasi Peminjaman dan Pengembalian Peralatan Laboratorium Kampus (`lihat_ketersediaan`, `kelola_data`, `peminjaman`, `cetak_bukti`, `keputusan`, `pengembalian`, dan `laporan`).
2. **Tugas Praktik Mandiri (SIA):** Peninjauan Activity Diagram Sistem Informasi Akademik yang mengintegrasikan alur `Input Nilai Mata Kuliah` sampai `Lihat KHS` menggunakan 4 *swimlane*, percabangan kelengkapan nilai, serta eksekusi paralel *fork & join*.

Evaluasi ini bertujuan untuk memastikan kepatuhan model terhadap standar **OMG UML 2.5.1**, keabsahan aliran *control flow*, serta keterlacakan (*traceability*) 100% dari tabel skenario Pertemuan 5 ke node aktivitas Pertemuan 6.

## Hasil Analisis

| No | Aspek Review | Temuan / Kondisi Model Pertemuan 6 | Perbaikan / Action Item | Kepatuhan Aturan Jobsheet & Notasi UML | Status Review |
|:--:|:---|:---|:---|:---|:--:|
| **1** | **Initial Node & Final Node** | Setiap Activity Diagram memiliki tepat 1 *initial node* dan minimal 1 *activity final node*. | Memastikan tidak ada *action* yang terputus atau tidak terhubung ke alur utama. | Sesuai Aturan OMG UML 2.5.1. | **VERIFIED** |
| **2** | **Penataan Swimlane (Partisi)** | Seluruh *action* ditempatkan pada *swimlane* pelakunya (Aktor Manusia atau Sistem). | *Action* sistem ditempatkan tegas di *swimlane* Sistem. Aktor yang tidak terlibat tidak dimasukkan ke *swimlane*. | Sesuai Struktur Partisi UML. | **VERIFIED** |
| **3** | **Percabangan Decision & Guard** | Setiap *decision* dilengkapi *guard* dalam kurung siku `[...]` yang bersifat saling lepas (*mutually exclusive*). | Seluruh cabang *decision* kembali melalui *merge* atau berakhir di *activity final node*. | Notasi Guard & Decision Valid. | **VERIFIED** |
| **4** | **Eksekusi Paralel (Fork & Join)** | Penggunaan *fork* untuk membagi alur paralel selalu dipasangkan secara konsisten dengan *join*. | Dilarang menggabungkan alur paralel menggunakan *merge*. *Merge* hanya untuk cabang *decision*. | Notasi Fork & Join Valid 100%. | **VERIFIED** |
| **5** | **Pemetaan Relasi Include & Extend** | Relasi `<<include>>` digambar sebagai *action* wajib di alur utama; relasi `<<extend>>` digambar sebagai cabang bersyarat. | `LAB-UC04` dan `LAB-UC12` menjadi *action include*; `LAB-UC05` menjadi cabang bersyarat `[ya, memilih cetak]`. | Pemetaan Relasi UML Sesuai. | **VERIFIED** |
| **6** | **Penyatuan Use Case Khusus** | `LAB-UC08` (Tambah), `LAB-UC09` (Ubah), dan `LAB-UC10` (Hapus) dilipat sebagai cabang varian di Activity Kelola Data. | Tidak membuat file tersendiri untuk use case khusus, melainkan digabung di `LAB-UC02`. | Penyederhanaan Diagram Valid. | **VERIFIED** |
| **7** | **Penandaan Unsur Proses Baru** | Action *Periksa kelengkapan aksesori peralatan* pada Activity Pengembalian diberi label *[Unsur Proses Baru]*. | Memastikan aksi baru untuk latihan *fork & join* tidak diklaim berasal dari kebutuhan lama. | Transparansi Pemodelan Valid. | **VERIFIED** |

## Penjelasan Hasil Analisis

### 1. Struktur Alur dan Pengelompokan Swimlane
* **Analisis Teoritis & Aturan:** Activity Diagram memodelkan urutan tindakan (*action*) dan aliran kontrol (*control flow*). *Swimlane* membagi tanggung jawab berdasarkan partisipan yang mengeksekusi langkah tersebut.
* **Hasil Evaluasi:** 
  * Pada kasus **LAB**, pemisahan *swimlane* (`Mahasiswa`, `Peminjam`, `Petugas Laboratorium`, `Kepala Laboratorium`, `Sistem`) sesuai dengan kolom *Kegiatan* dan *Respon Sistem* dari tabel skenario Pertemuan 5.
  * Aktor `Kepala Laboratorium` hanya muncul pada `Activity Lihat Laporan Peminjaman` (`LAB-UC07`) dan ditiadakan dari Activity Peminjaman/Pengembalian karena tidak memiliki interaksi pada alur tersebut.
  * Pada kasus **SIA**, diagram mengintegrasikan 4 *swimlane* utama (`Dosen`, `Sistem`, `Admin Akademik`, `Mahasiswa`) secara runtut dari proses input nilai hingga penerbitan KHS.

### 2. Kebenaran Notasi Decision, Guard, dan Merge
* **Analisis Teoritis & Aturan:** Cabang keputusan (*decision*) memerlukan kondisi evaluasi (*guard*) yang dinyatakan dalam kurung siku `[...]`. Setiap alur keputusan yang menyatu kembali ke alur utama wajib menggunakan *merge node* (bukan *join*).
* **Hasil Evaluasi:** 
  * Pada `Activity Peminjaman`, *decision* `Peralatan tersedia?` memiliki *guard* `[tersedia]` dan `[tidak tersedia]`. Cabang tidak tersedia mengarah ke pemberitahuan dan menyatu kembali melalui *merge* menuju pencatatan akhir.
  * Pada `Activity Kelola Data Peralatan`, *decision* bentuk pengelolaan membagi alur menjadi tiga cabang varian ([tambah], [ubah], [hapus]) yang seluruhnya bermuara ke satu *merge node* sebelum memanggil logika validasi bersama.

### 3. Keabsahan Pasangan Fork dan Join pada Proses Paralel
* **Analisis Teoritis & Aturan:** *Fork node* membagi satu alur masuk menjadi beberapa alur paralel yang berjalan bersamaan. *Join node* menyatukan kembali alur paralel tersebut dan menahan eksekusi hingga seluruh alur paralel selesai dijalankan.
* **Hasil Evaluasi:**
  * **Studi Kasus LAB (Pengembalian):** Setelah `Catat Pengembalian Peralatan`, *fork* membagi pemeriksaan menjadi dua alur paralel di *swimlane* Petugas: `Periksa Kondisi Peralatan` (kondisi fisik) dan `Periksa kelengkapan aksesori peralatan` (unsur proses baru). Kedua alur disatukan oleh *join* sebelum masuk ke *decision* `Kondisi peralatan baik dan lengkap?`.
  * **Tugas SIA (Layanan Hasil Studi):** Setelah pengesahan nilai oleh Admin Akademik, *fork* membagi alur sistem menjadi dua proses paralel: `Menerbitkan KHS pada portal akademik` dan `Mengirim pemberitahuan hasil studi kepada mahasiswa`. Kedua proses disatukan kembali oleh *join* sebelum Mahasiswa melakukan aksi `Melihat KHS`.

### 4. Pemetaan Relasi Use Case ke Notasi Aktivitas
* **Analisis Teoritis & Aturan:** Include adalah langkah wajib yang terintegrasi di alur utama, sedangkan Extend adalah cabang alternatif bersyarat.
* **Hasil Evaluasi:**
  * **Include:** `LAB-UC04 Periksa Ketersediaan` muncul sebagai *action* wajib di dalam `Activity Peminjaman`. `LAB-UC12 Periksa Kondisi Peralatan` muncul sebagai *action* wajib di dalam `Activity Pengembalian`.
  * **Extend:** `LAB-UC05 Cetak Bukti Pengajuan` digambarkan sebagai cabang bersyarat dari *decision* `Mahasiswa memilih cetak bukti?` dengan *guard* `[ya, memilih cetak]`. Jika *guard* `[tidak]` terpilih, alur langsung bermuara ke *activity final node* tanpa menggagalkan pencatatan pengajuan.

## Tabel Keterlacakan Activity Diagram (Traceability Matrix)

| Slug Berkas Activity | Use Case Utama / Skenario Acuan | Partisi Swimlane yang Digunakan | Elemen Spesifik (Decision / Fork-Join / Include / Extend) | Status |
|:---|:---|:---|:---|:--:|
| **activity_lihat_ketersediaan** | LAB-UC01 Lihat Ketersediaan Peralatan | Peminjam, Sistem | Decision `Peralatan tersedia?` (`[tersedia]`, `[tidak tersedia]`) & Merge. | **MATCHED** |
| **activity_kelola_data** | LAB-UC02 (Induk), UC08, UC09, UC10 | Petugas Laboratorium, Sistem | Decision Varian 3 Cabang (`[tambah]`, `[ubah]`, `[hapus]`), Syarat Hapus, & Merge. | **MATCHED** |
| **activity_peminjaman** | LAB-UC03 Ajukan Peminjaman | Mahasiswa, Sistem, Petugas Laboratorium | Action Include `LAB-UC04`, Decision Tersedia, & Extend `LAB-UC05`. | **MATCHED** |
| **activity_cetak_bukti** | LAB-UC05 Cetak Bukti Pengajuan | Mahasiswa, Sistem | Start pada Extension Point, Decision `[ya, memilih cetak]` & `[tidak]`. | **MATCHED** |
| **activity_keputusan** | LAB-UC06 Proses Keputusan Peminjaman | Petugas Laboratorium, Sistem | Decision `Dapat diproses?`, Decision `Disetujui?` (`[disetujui]`, `[ditolak]`). | **MATCHED** |
| **activity_pengembalian** | LAB-UC11 Catat Pengembalian Peralatan | Mahasiswa, Sistem, Petugas Laboratorium | **Fork & Join** (Kondisi Fisik + Kelengkapan Aksesori), Include `LAB-UC12`. | **MATCHED** |
| **activity_laporan** | LAB-UC07 Lihat Laporan Peminjaman | Kepala Laboratorium, Sistem | Stand-alone Activity, Decision `Ada data peminjaman?` (`[ada]`, `[tidak ada]`). | **MATCHED** |
| **P06_NIM_SIA_activity** | SIA-UC08 (Input Nilai) s.d. SIA-UC09 (KHS) | Dosen, Sistem, Admin Akademik, Mahasiswa | Decision Kelengkapan Nilai, **Fork & Join** (Terbit KHS + Kirim Notifikasi). | **MATCHED** |

## Kesimpulan
Berdasarkan hasil pengujian, verifikasi, dan peninjauan komprehensif terhadap artefak Activity Diagram Pertemuan 6:

1. **Kepatuhan Spesifikasi Notasi UML 2.5.1:** Seluruh simbol (*initial node*, *action*, *control flow*, *decision*, *merge*, *fork*, *join*, *activity final node*, dan *swimlane*) telah digunakan secara tepat sesuai kaidah OMG UML 2.5.1.
2. **Keterlacakan 100% dari Skenario:** Setiap *action* pada ketujuh Activity Diagram LAB dan satu Activity Diagram SIA dapat ditelusuri secara presisi ke langkah skenario Pertemuan 5 tanpa ada langkah yang terputus atau hilang.
3. **Penerapan Alur Kompleks:** Penggunaan struktur percabangan bersyarat (*decision-merge*) dan eksekusi paralel (*fork-join*) telah berhasil disimulasikan secara benar pada skenario pengembalian laboratorium dan layanan hasil studi akademik.
