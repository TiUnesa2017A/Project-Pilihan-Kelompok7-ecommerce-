-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2019 pada 15.05
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_adriano`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`, `email`, `phone`, `hak_akses`) VALUES
(1, 'Admin 1', 'adminweb', 'e10adc3949ba59abbe56e057f20f883e', 'adminweb@gmail.com', 85648263456, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `nama_pemilik` varchar(250) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nama_bank`, `nama_pemilik`, `no_rekening`, `gambar`) VALUES
(1, 'BCA', 'AYYU', '3452563356', 'bca.png'),
(2, 'Mandiri', 'SULIS', '7368765576', 'mandiri.png'),
(3, 'BRI', 'FARRAS', '9099748455', 'bri.png'),
(4, 'BTN', 'REKBER', '008857653627', 'btn.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id_brand` int(11) NOT NULL,
  `nama_brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_brand`
--

INSERT INTO `tbl_brand` (`id_brand`, `nama_brand`) VALUES
(1, 'ADIDAS'),
(2, 'POLO'),
(3, 'NIKE'),
(4, 'H&M'),
(5, 'OSELLA'),
(6, 'PUMA'),
(7, 'Lain-lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_carabelanja`
--

CREATE TABLE `tbl_carabelanja` (
  `id_carabelanja` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_carabelanja`
--

INSERT INTO `tbl_carabelanja` (`id_carabelanja`, `judul`, `deskripsi`) VALUES
(1, 'Cara Belanja di TOKOku.com', 'Berikut ini petunjuk pembelian secara Online melalui TOKOku.com :<div></div><ol><li>Lihat gambar barang yang akan dibeli beserta detail produknya</li><li>Klik tombol \"Beli\" pada barang yang akan dibeli<br></li><li>Masukan quantity barang yang akan Anda beli</li><li>Apabila ada perubahan data jangan lupa untuk klik tombol \"Refresh\"(untuk menampilkan kalkulasi harga)</li><li>Tidak ada minimal belanja, silahkan belanja berapapun jumlahnya</li><li>Untuk melanjutkan berbelanja silahkan klik tombol \"lanjut berbelanja\" dan cari produk lainnya.</li><li>Bila telah selesai membeli silahkan klik tombol \"Selesai Berbelanja\"</li><li>Bila anda belum login silahkan login terlebih dahulu. Dengan cara mengisi form yang sudah tersedia. Jika belum menjadi member silahkan mendaftar dahulu dengan cara yang mudah mengklik tombol \"Registrasi Member\".</li><li>Selanjutnya silahkan mengisi data lengkap pada form yang sudah tersedia</li><li>Periksa dahulu data yang anda isi kebenarannya atau barangkali ada yang lupa dikosongkan.</li><li>Tunggu paling lambat 1x24 jam kami akan mengkonfirmasi kiriman anda melalui Email atau nomor telepon yang anda cantumkan sebelumnya.\"</li><li>Anda akan menerima balasan melalui email atau Hp Anda tentang kalkulasi harga disertai jasa pengirmiannnya.</li><li>Jika Anda setuju silahkan kirim sejumlah uang yang kami konfimasikan. Berikut rekening Bank yang kami sediakan :</li><div>BANK BRI<br>9099748455 A/n : FARRAS</div><div>BANK BCA<br>3452563356 A/n : AYYU</div><div>BANK MANDIRI<br>7368765576 A/n : SULIS</div><div>BANK MANDIRI SYARIAH <br>008857653627 A/n : REKENING BERSAMA</div><li>Setelah melakukan transfer ke bank silahkan anda lakukan konfirmasi ke email kami atau hotline kami di 082134566788.</li><li>Pengiriman barang akan kami proses secepatnya dan Anda akan menerima nomer resi yang akan kami infokan melalui alamat email atau No Telepon Anda.</li><li>Jika Anda menemui kesulitan silahkan hubungi Costumer service kami.</li>Terimakasih Atas kepercayaan Anda. Tetap berbelanja di TOKOku.com. Terlengkap dan Terpercaya ..<br><br><br><br><br><br></ol>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategorigaleri_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `nama_galeri`, `gambar`, `kategorigaleri_id`) VALUES
(1, 'Jersea Motor', 'dec10698e402e54bbb65e199d1612127.gif', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hubungikami`
--

CREATE TABLE `tbl_hubungikami` (
  `id_hubungikami` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hp` bigint(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_hubungikami`
--

INSERT INTO `tbl_hubungikami` (`id_hubungikami`, `nama`, `email`, `hp`, `alamat`, `pesan`, `tanggal`, `status`) VALUES
(1, 'Muhammad Roziqin', 'roziqin_iqin@yahoo.com', 85648105447, 'Desa Pulo Dk Gayam RT 01 RW 04 Rembang', 'Mencoba Halaman Hubungi Kami', '2019-05-24', 1),
(2, 'Muhammad Roziqin', 'roziqin_iqin@yahoo.com', 85648105447, 'Rembang', 'Tes Komentar hubungi Kami', '2019-05-25', 1),
(3, 'Muhammad Imam Sulkarnaen', 'imam@gmail.com', 8493579345793, 'Jogja', 'Mau Tanya Cara Beli Di Toko adriano online shop', '2019-05-27', 1),
(4, 'Poliki', 'x@mail.com', 99, 'Bali', 'Hai', '2019-05-27', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hubungi_kami_kirim`
--

CREATE TABLE `tbl_hubungi_kami_kirim` (
  `id_hubungi_kami_kirim` int(11) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi_hubungi_kami_kirim` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_hubungi_kami_kirim`
--

INSERT INTO `tbl_hubungi_kami_kirim` (`id_hubungi_kami_kirim`, `kepada`, `judul`, `isi_hubungi_kami_kirim`) VALUES
(3, 'roziqin_iqin@yahoo.com', 'Balasan', 'Balasan Untuk roziqin'),
(4, 'roziqin_iqin@yahoo.com', 'ddd', 'undefined'),
(5, 'imam@gmail.com', 'Balas', 'fdsjfdsfdsfhdsu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jasapengiriman`
--

CREATE TABLE `tbl_jasapengiriman` (
  `id_jasapengiriman` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jasapengiriman`
--

INSERT INTO `tbl_jasapengiriman` (`id_jasapengiriman`, `nama`, `gambar`) VALUES
(1, 'JNE', 'jne.jpg'),
(2, 'SICEPAT EKSPRESS', 'scp.jpg'),
(3, 'J&T EXPRESS', 'jet.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Sepatu'),
(2, 'Sarung Tangan'),
(3, 'Tas'),
(4, 'Kacamata'),
(5, 'Jersey'),
(6, 'Helm'),
(7, 'Dewasa'),
(8, 'Celana'),
(9, 'Anak-anak'),
(10, 'Lain-lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategorigaleri`
--

CREATE TABLE `tbl_kategorigaleri` (
  `id_kategorigaleri` int(11) NOT NULL,
  `nama_kategorigaleri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategorigaleri`
--

INSERT INTO `tbl_kategorigaleri` (`id_kategorigaleri`, `nama_kategorigaleri`) VALUES
(1, 'Album Satu'),
(2, 'Album Dua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(11) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `alamat`, `phone`, `email`) VALUES
(1, 'Surabaya, Jawa Timur', 6282133445566, 'tokokusby@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kota`
--

INSERT INTO `tbl_kota` (`id_kota`, `nama_kota`) VALUES
(1, 'Purworejo'),
(2, 'Rembang'),
(3, 'Sleman'),
(4, 'Bantul'),
(5, 'Magelang'),
(6, 'Klaten'),
(7, 'Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id_logo` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_logo`
--

INSERT INTO `tbl_logo` (`id_logo`, `gambar`) VALUES
(1, 'logo1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` bigint(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `kode_produk`, `nama_produk`, `harga`, `stok`, `deskripsi`, `gambar`, `kategori_id`, `brand_id`) VALUES
(1, 'TK0001', 'Puma Arsenal Ori Vietnam', 300000, 10, 'Jersey asli Puma dari Vietnam', 'pumaa.jpg', 5, 6),
(2, 'TK0002', 'Adidas Casual KW 1', 75000, 20, 'Sensasi Adidas rasa Lokal', 'adidass.jpg', 1, 1),
(3, 'TK0003', 'Osella Kaos Polo', 100000, 2, 'Sebuah Polo Osella', 'osellanew.jpg', 7, 5),
(4, 'TK0004', 'Es Batu', 500, 10, 'Air yang dibekukan dengan kesegaran tak terhingga', 'esbatu.jpg', 10, 7),
(5, 'TK0005', 'Polo Asli Bandung', 25000, 1, 'Polo buatan pabrik cabang Bandung', 'polobdg.jpg', 7, 2),
(6, 'TK0006', 'H&M Ori Tanah Abang', 35000, 10, 'Baju lokal merk H&M', 'henm.jpg', 7, 4),
(7, 'TK0007', 'Nike Ordem VI', 800000, 5, 'Bola resmi yang bisa berputar dari Nike', 'niken.jpg', 9, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sambutan`
--

CREATE TABLE `tbl_sambutan` (
  `id_sambutan` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sambutan`
--

INSERT INTO `tbl_sambutan` (`id_sambutan`, `judul`, `deskripsi`) VALUES
(1, 'Kami ada untuk anda', 'isi sambutan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_seo`
--

CREATE TABLE `tbl_seo` (
  `id_seo` int(11) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_seo`
--

INSERT INTO `tbl_seo` (`id_seo`, `tittle`, `keyword`, `description`) VALUES
(1, 'TOKOku.com Online Shop', 'Adriano Shop, Shop Mx', 'TOKOku.com adalah Online Shop berbasis E-Commerce yang menyediakan segala jenis barang.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id_slider` int(11) NOT NULL,
  `tittle` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `tittle`, `description`, `gambar`, `status`) VALUES
(2, 'Barang Asli No Tipu-tipu', 'Ayo cari produk favoritmu. Dijamin asli dan tidak tipu-tipu. Segala produk yang kami jual sudah melewati standarisasi nasional dan internasional yang bersertifikat ORI. Beberapa barang KW kami jual ASLI tidak tipu-tipu.', 'a7a73ab63b2f7718b95d19a0e2564730.jpg', 1),
(3, 'Rebut Diskonmu, Raih Pahalamu', 'Bulan Ramadhan penuh berkah. Kalau di TOKOku.com juga banyak diskon loh. Belanja sebanyak-banyaknya. Raih diskonnya, siapa tahu bisa diamalkan buat yang membutuhkan. Pantau terus TOKOku.com untuk semua diskonnya. Diskon Ajib, Pahala Asyik.', 'rmd.jpg', 1),
(4, 'Mau Jadi Penjual? Yuk Gabung', 'Perlu uang cepat? Tapi dalam waktu singkat? Ya kerja... Segalanya lebih mudah bersama TOKOku.com dengan ratusan ribu retail dan jenis produk yang dapat diakses di seluruh Indonesia. Bergabunglah bersama kami. Raih Untungnya, Siap Kaya cepat.', 'pjl.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sosial_media`
--

CREATE TABLE `tbl_sosial_media` (
  `id_sosial_media` int(11) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `gp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sosial_media`
--

INSERT INTO `tbl_sosial_media` (`id_sosial_media`, `tw`, `fb`, `gp`) VALUES
(1, 'http://twitter.com', 'http://facebook.com', 'http://gplus.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tentangkami`
--

CREATE TABLE `tbl_tentangkami` (
  `id_tentangkami` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tentangkami`
--

INSERT INTO `tbl_tentangkami` (`id_tentangkami`, `judul`, `deskripsi`) VALUES
(1, 'Kami Ada Untuk Anda | TOKOku.com Online Shop', 'TOKOku.com adalah Online Shop berbasis E-Commerce masa kini yang menyediakan segala jenis kebutuhan apapun, kapanpun, dimanapun.<br>Salam TOKOku<br>Admin<br><br> ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_detail`
--

CREATE TABLE `tbl_transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `kode_transaksi` bigint(15) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transaksi_detail`
--

INSERT INTO `tbl_transaksi_detail` (`id_transaksi_detail`, `kode_transaksi`, `kode_produk`, `nama_produk`, `harga`, `jumlah`) VALUES
(1, 20140907001, 'AMX00007', 'Easy Polo Black Edition', '16000', 2),
(2, 20140907001, 'AMX00002', 'Easy Polo Black Edition', '56000', 1),
(3, 20140907002, 'AMX00007', 'Easy Polo Black Edition', '16000', 1),
(4, 20140907003, 'AMX00002', 'Easy Polo Black Edition', '56000', 2),
(5, 20140909001, 'AMX00007', 'Easy Polo Black Edition', '16000', 1),
(6, 20140909001, 'AMX00005', 'Easy Polo Black Edition', '36000', 1),
(7, 20141007001, 'AMX00007', 'Easy Polo Black Edition', '16000', 2),
(8, 20141007002, 'AMX00006', 'Easy Polo Black Edition', '26000', 1),
(9, 20141007002, 'AMX00003', 'Easy Polo Black Edition', '56000', 3),
(10, 20141007002, 'AMX00004', 'Easy Polo Black Edition', '56000', 1),
(11, 20190527001, 'TK0004', 'Es Batu', '500', 16),
(12, 20190527001, 'TK0005', 'Polo Asli Bandung', '25000', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_header`
--

CREATE TABLE `tbl_transaksi_header` (
  `id_transaksi_header` int(11) NOT NULL,
  `kode_transaksi` bigint(15) NOT NULL,
  `penerima` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `propinsi` varchar(20) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `jasapengiriman_id` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transaksi_header`
--

INSERT INTO `tbl_transaksi_header` (`id_transaksi_header`, `kode_transaksi`, `penerima`, `email`, `alamat`, `no_telepon`, `propinsi`, `kota`, `kode_pos`, `bank_id`, `jasapengiriman_id`, `status`) VALUES
(1, 20140907001, 'Muhammad Roziqin', 'roziqin_iqin@yahoo.com', 'rembang', '085648105447', 'Jawa Tengah', 'Rembang', 59216, 4, 3, 1),
(2, 20140907002, 'Muhammad Roziqin', 'roziqin_iqin@yahoo.com', 'rembang', '085648105447', 'Jawa Tengah', 'Rembang', 59216, 4, 3, 1),
(3, 20140907003, 'Muhammad Roziqin', 'roziqin_iqin@yahoo.com', 'rembang', '085648105447', 'Jawa Tengah', 'Rembang', 59216, 4, 3, 1),
(4, 20140909001, 'Redi', 'rediapri@gmail.com', 'Ponorogo', '085233639940', 'jawa timur', 'Ponorogo', 63451, 1, 3, 1),
(5, 20141007001, 'nicco', 'niccokathienk@gmail.com', 'Purworejo', '082242299013', 'Jawa Tengah', 'purworejo', 54111, 4, 3, 1),
(6, 20141007002, 'Bahpong', 'bahpong_@yahoo.com', 'Magelang', '0878675757', 'Jawa tengah', 'Magelang', 89087, 3, 2, 0),
(7, 20190527001, 'Farras', 'll@mail.com', 'Suraay', '0999999999', 'Bali', 'Bali', 80228, 3, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indeks untuk tabel `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
  ADD PRIMARY KEY (`id_carabelanja`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `tbl_hubungikami`
--
ALTER TABLE `tbl_hubungikami`
  ADD PRIMARY KEY (`id_hubungikami`);

--
-- Indeks untuk tabel `tbl_hubungi_kami_kirim`
--
ALTER TABLE `tbl_hubungi_kami_kirim`
  ADD PRIMARY KEY (`id_hubungi_kami_kirim`);

--
-- Indeks untuk tabel `tbl_jasapengiriman`
--
ALTER TABLE `tbl_jasapengiriman`
  ADD PRIMARY KEY (`id_jasapengiriman`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
  ADD PRIMARY KEY (`id_kategorigaleri`);

--
-- Indeks untuk tabel `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tbl_sambutan`
--
ALTER TABLE `tbl_sambutan`
  ADD PRIMARY KEY (`id_sambutan`);

--
-- Indeks untuk tabel `tbl_seo`
--
ALTER TABLE `tbl_seo`
  ADD PRIMARY KEY (`id_seo`);

--
-- Indeks untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
  ADD PRIMARY KEY (`id_sosial_media`);

--
-- Indeks untuk tabel `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
  ADD PRIMARY KEY (`id_tentangkami`);

--
-- Indeks untuk tabel `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- Indeks untuk tabel `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
  ADD PRIMARY KEY (`id_transaksi_header`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
  MODIFY `id_carabelanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_hubungikami`
--
ALTER TABLE `tbl_hubungikami`
  MODIFY `id_hubungikami` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_hubungi_kami_kirim`
--
ALTER TABLE `tbl_hubungi_kami_kirim`
  MODIFY `id_hubungi_kami_kirim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_jasapengiriman`
--
ALTER TABLE `tbl_jasapengiriman`
  MODIFY `id_jasapengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
  MODIFY `id_kategorigaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_sambutan`
--
ALTER TABLE `tbl_sambutan`
  MODIFY `id_sambutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_seo`
--
ALTER TABLE `tbl_seo`
  MODIFY `id_seo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
  MODIFY `id_sosial_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
  MODIFY `id_tentangkami` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
  MODIFY `id_transaksi_header` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
