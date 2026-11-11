# Deskripsi
Dokumen ini disusun sebagai bentuk evaluasi, verifikasi, dan peninjauan kritis (*review*) terhadap hasil pemodelan perangkat lunak pada Pertemuan 3[cite: 13]. Fokus utama review ini mencakup pembuatan **Use Case Diagram** dan **Use Case Description** untuk dua studi kasus, yaitu:
1. **Kasus LAB:** Sistem Informasi Peminjaman dan Pengembalian Peralatan Laboratorium Kampus
2. **Kasus SIA:** Sistem Informasi Akademik (Pengajuan dan Persetujuan KRS)

Proses peninjauan ini bertujuan untuk memastikan bahwa seluruh aturan pemodelan berorientasi objek yang ditetapkan dalam jobsheet telah dipenuhi dengan benar[cite: 6]. Penilaian berfokus pada ketepatan penentuan batas sistem (*system boundary*), identifikasi aktor eksternal, validitas nama use case, kebenaran notasi relasi `<<include>>` dan `<<extend>>`, konsistensi alur utama/alternatif, serta keterlacakan (*traceability*) dari kebutuhan perangkat lunak (*requirements*) ke elemen model

# Hasil Analisis

| No | Aspek Review | Temuan / Kondisi Model Saat Ini | Perbaikan / Action Item | Kepatuhan Notasi UML & Rules | Status Review |
|:--:|:---|:---|:---|:---|:--:|
| **1** | **Batas Sistem & Letak Aktor** | Seluruh aktor (`Mahasiswa`, `Petugas Laboran`, `Kepala Laboran`, `Dosen Wali`) digambarkan di luar kotak batas sistem | Pertahankan posisi aktor di luar batas sistem (*boundary*) dan seluruh *use case* berada di dalam sistem | Sesuai aturan OMG UML 2.5.1[cite: 8, 22]. | **VERIFIED** |
| **2** | **Penamaan Use Case** | Setiap elips menggunakan kata kerja + objek (contoh: `Ajukan peminjaman`, `Periksa ketersediaan`, `Proses keputusan KRS`) | Hindari penamaan yang menggunakan kata benda murni, nama tombol, atau rincian teknis antarmuka[cite: 9]. | Sesuai dengan standar penamaan fungsi *verb-noun*[cite: 9]. | **VERIFIED** |
| **3** | **Relasi `<<include>>`** | Relasi `<<include>>` menghubungkan `Ajukan peminjaman` -> `Periksa ketersediaan` dan `Ajukan KRS` -> `Validasi KRS` | Arah panah berasal dari *use case* utama menuju ke *use case* yang wajib disertakan | Arah panah dan label `<<include>>` benar | **VERIFIED** |
| **4** | **Relasi `<<extend>>`** | Relasi `<<extend>>` menghubungkan `Cetak bukti` -> `Ajukan peminjaman` dan `Unduh bukti` -> `Ajukan KRS` | Arah panah berasal dari *use case* tambahan ke *use case* dasar, dilengkapi *extension point* dan *condition* | Arah panah dan penulisan kondisi bersyarat benar | **VERIFIED** |
| **5** | **Alur Alternatif & Penolakan** | Skenario kegagalan (stok habis, validasi KRS gagal, pengajuan ditolak) dicatat pada alur alternatif | Memastikan *postcondition* gagal tidak membuat data terkonfirmasi tersimpan sebagai pengajuan sukses | Sesuai dengan spesifikasi *use case description* | **VERIFIED** |
| **6** | **Keterlacakan (Traceability)** | Setiap *use case* dan deskripsinya mereferensikan Kode Kebutuhan (contoh: `LAB-R03`, `SIA-R03`, `SIA-R04`) | Seluruh *Requirement ID* dari jobsheet terpetakan 100% tanpa ada kebutuhan yang hilang | Keterlacakan matriks terpenuhi utuh[cite: 6, 11]. | **VERIFIED** |

---

# Penjelasan Hasil Analisis

## 1. Batas Sistem dan Identifikasi Aktor Eksternal
* **Analisis Teoritis & Aturan:** Dalam UML 2.5.1, aktor merepresentasikan peran (*role*) pengguna eksternal atau sistem luar yang berinteraksi secara langsung dengan sistem
* **Hasil Evaluasi:** Pada kedua studi kasus (LAB dan SIA), batas sistem (*system boundary*) digambarkan menggunakan kotak tegas yang memisahkan area internal aplikasi dengan dunia luar Aktor `Mahasiswa`, `Petugas Laboran`, `Kepala Laboran`, dan `Dosen Wali` diletakkan di luar batas sistem. Hal ini telah mengoreksi kesalahan umum di mana pengguna diletakkan di dalam sistem.

## 2. Standar Penamaan dan Cakupan Use Case
* **Analisis Teoritis & Aturan:** Penamaan *use case* harus fokus pada tujuan bernilai bagi aktor (*actor goal*), bukan rincian antarmuka seperti `Klik Tombol Simpan` atau nama entitas tabel.
* **Hasil Evaluasi:** Seluruh entitas *use case* yang dibuat telah mengikuti pola **Kata Kerja + Objek** . Sebagai contoh, fungsi `Ajukan peminjaman`, `Kelola data peralatan`, dan `Proses keputusan peminjaman` merepresentasikan perilaku sistem lengkap yang memberikan *business outcome* yang jelas.

## 3. Keabsahan Pemakaian Notasi Relasi `<<include>>`
* **Analisis Teoritis & Aturan:** Relasi `<<include>>` menandakan bahwa perilaku dari *use case* yang dituju merupakan bagian wajib (*mandatory*) dari langkah eksekusi *use case* pemanggil. Arah panah putus-putus dengan kepala panah terbuka harus mengarah dari *use case* utama menuju *use case* yang disertakan.
* **Hasil Evaluasi:** 
  * Kasus LAB: `Ajukan peminjaman` menyertakan `Periksa ketersediaan`. Pemeriksaan ketersediaan selalu dijalankan oleh sistem ketika mahasiswa melakukan validasi pengajuan.
  * Kasus SIA: `Ajukan KRS` menyertakan `Validasi KRS`. Sistem secara otomatis memeriksa kelengkapan SKS, prasyarat mata kuliah, dan benturan jadwal sebagai langkah terintegrasi. Arah panah sudah dipastikan benar.

## 4. Keabsahan Pemakaian Notasi Relasi `<<extend>>`
* **Analisis Teoritis & Aturan:** Relasi `<<extend>>` merepresentasikan perilaku opsional/tambahan yang hanya dieksekusi jika kondisi tertentu terpenuhi (*extension point*). Arah panah harus berasal dari *use case* tambahan mengarah kembali ke *use case* dasar.
* **Hasil Evaluasi:**
  * Kasus LAB: `Cetak bukti pengajuan` memperluas `Ajukan peminjaman`.
  * Kasus SIA: `Unduh bukti pengajuan` memperluas `Ajukan KRS`.
  * *Extension Point* diletakkan pada langkah konfirmasi pengajuan berhasil. Kondisi `[mahasiswa memilih cetak/unduh]` secara tegas didokumentasikan baik pada diagram maupun tabel *use case description*. Jika mahasiswa memilih untuk tidak mencetak/mengunduh, proses pengajuan utama tetap sah dan terkonfirmasi berhasil.

## 5. Kelengkapan Spesifikasi Use Case Description
* **Analisis Teoritis & Aturan:** Dokumentasi *use case description* harus mencakup *trigger*, *precondition*, *main success scenario*, *alternate flows*, dan *postconditions* (berhasil & gagal).
* **Hasil Evaluasi:** Deskripsi yang dirancang telah mencakup skenario sukses dan skenario penanganan masalah. Sebagai contoh, pada alur alternatif jika `Validasi KRS Gagal` atau `Peralatan Tidak Tersedia`, sistem mencatat bahwa *postcondition* gagal adalah "Data pengajuan tidak tersimpan di dalam basis data", sehingga konsistensi status data tetap terjaga.

# Kesimpulan

Berdasarkan hasil pengujian, verifikasi, dan analisis menyeluruh terhadap artefak model analisis pada Pertemuan 3:

1. **Kepatuhan Notasi:** Seluruh simbol UML, letak *boundary*, arah panah relasi `<<include>>` dan `<<extend>>`, serta penulisan *extension point* telah sesuai dengan standar OMG UML 2.5.1.
2. **Keterlacakan Model:** Semua kebutuhan bisnis yang tertuang pada *requirement list* (`LAB-R01` s.d. `LAB-R06` dan `SIA-R01` s.d. `SIA-R06`) telah terpetakan 100% ke dalam *use case* dan deskripsi terkait tanpa ada poin yang terlewat.
3. **Ketersediaan Dokumen Kerja:** Seluruh struktur folder, berkas kerja `.drawio`, ekspor gambar `.png`, serta dokumen deskripsi Markdown telah ditata secara sistematis sesuai standar direktori `IFRWP5149_<NIM>_LabAlat`.