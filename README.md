# Aplikasi Distribusi Agen Mobile

## Introduction

Aplikasi Distribusi Agen Mobile adalah aplikasi yang dirancang untuk membantu admin agen dalam mengelola dan memantau performa agen mereka. Aplikasi ini menyediakan berbagai fitur yang memungkinkan admin untuk melihat data penjualan, rating agen, dan mengedit stok barang. Aplikasi ini dibangun menggunakan Flutter, yang memungkinkan aplikasi berjalan di berbagai platform seperti Android.

## Objective

- Memudahkan admin agen melihat performa agennya.
- Admin dapat melihat data penjualan dan rating.

## Scope

- Admin agen yang mau melihat performa para agennya.

## Criteria

- Admin dapat melihat performa agen.
- Admin dapat mengedit stok barang.
- Admin dapat melihat rating yang tersedia di aplikasi.

---

## Business Requirement Document

### 1. Business Requirement Definition

**Produk:**  
Jenis Layanan: Aplikasi Distribusi Agen Mobile  
Definisi:  
Aplikasi Distribusi Agen Mobile adalah sebuah platform digital yang dirancang untuk memfasilitasi proses manajemen, pemantauan, dan evaluasi kinerja agen distribusi produk secara terpusat dan real-time. Aplikasi ini memungkinkan perusahaan untuk mengelola data agen, memonitor status pesanan, serta mengatur produk yang didistribusikan melalui agen dengan lebih efisien.

Melalui aplikasi ini, pengguna dapat memantau performa agen, melihat laporan pesanan, serta melakukan penyesuaian yang dibutuhkan untuk memastikan bahwa proses distribusi berjalan sesuai target dan standar yang telah ditetapkan.

**Abstrak (Narasi):**  
Dalam industri distribusi, keterlambatan informasi dan kurangnya visibilitas terhadap kinerja agen sering kali menghambat efisiensi dan akurasi dalam pengiriman produk ke pelanggan. Untuk mengatasi tantangan ini, Aplikasi Distribusi Agen Mobile dikembangkan sebagai solusi terpadu untuk mempermudah manajemen distribusi melalui agen secara mobile.

Aplikasi ini menyediakan fitur utama seperti:

- **Dashboard** yang menampilkan data kinerja dan statistik agen secara real-time.
- Halaman **Agen** yang memungkinkan pengguna melihat performa setiap agen.
- Halaman **Pesanan** untuk memantau dan mengelola status pesanan dari awal hingga selesai.
- **Manajemen Produk** untuk menambahkan, mengedit, dan menghapus produk yang tersedia bagi agen.

Aplikasi ini dikembangkan untuk berjalan di perangkat Android, memungkinkan akses dan pemantauan kapan saja dan di mana saja. Dengan antarmuka yang intuitif dan navigasi yang mudah, aplikasi ini tidak hanya meningkatkan produktivitas tetapi juga memperkuat kontrol dan transparansi dalam rantai distribusi.

---

### 2. Penjelasan Fungsi

| No  | Keterangan                                                                                                                                                                    |
| --- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | **Fungsi Teknis**                                                                                                                                                             |
|     | - **Manajemen Data Produk dan Agen**                                                                                                                                          |
|     | - Input Data Produk: Memungkinkan pengguna untuk menambahkan, mengedit, dan menghapus data produk yang didistribusikan, termasuk detail seperti nama produk, harga, dan stok. |
|     | - Manajemen Data Agen: Memberikan fitur untuk melihat rating agennya.                                                                                                         |
|     | - **Transaksi Penjualan**                                                                                                                                                     |
|     | - Pencatatan Penjualan: Memfasilitasi pencatatan transaksi penjualan oleh agen, termasuk jumlah produk yang terjual, harga per unit, dan total pendapatan.                    |
|     | - **Manajemen Stok**                                                                                                                                                          |
|     | - Pembaruan Stok: Mengurangi jumlah stok secara otomatis ketika transaksi penjualan dicatat, untuk menjaga keakuratan data stok produk.                                       |
|     | - **Monitoring Kinerja Agen**                                                                                                                                                 |
|     | - Pencatatan Performa Penjualan: Memantau jumlah penjualan yang berhasil dicapai oleh masing-masing agen untuk evaluasi kinerja.                                              |

---

### 3. Process Flows

Berikut adalah alur proses aplikasi ini:

![Process Flow](assets/images/pemmob.png)
