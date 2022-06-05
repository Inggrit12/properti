-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 07:56 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `properti`
--

-- --------------------------------------------------------

--
-- Table structure for table `blok`
--

CREATE TABLE `blok` (
  `nama_blok` char(1) NOT NULL,
  `jalan` varchar(100) DEFAULT NULL,
  `keterangan_lokasi` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blok`
--

INSERT INTO `blok` (`nama_blok`, `jalan`, `keterangan_lokasi`, `created_at`, `updated_at`) VALUES
('A', 'Kematian', 'Jl. Artisan No. 104', '2021-06-10 21:15:38', '2021-06-15 22:59:56'),
('B', 'Jl. Artisan', 'Lapangan Bola', '2021-07-02 09:30:17', '2021-07-02 09:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_10_113909_create_blocks_table', 1),
(5, '2021_06_10_114014_create_types_table', 2),
(6, '2021_06_10_114104_create_notarypublics_table', 3),
(7, '2021_06_10_114210_create_homes_table', 4),
(8, '2021_06_29_090117_create_shoppingcart_table', 5),
(9, '2021_07_01_050831_create_transaksi_table', 6),
(10, '2021_07_01_070213_create_transaksi_table', 7),
(11, '2021_07_01_071905_create_transaksi_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notaris`
--

CREATE TABLE `notaris` (
  `id_notaris` varchar(10) NOT NULL,
  `nama_notaris` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notaris`
--

INSERT INTO `notaris` (`id_notaris`, `nama_notaris`, `created_at`, `updated_at`) VALUES
('33128', 'Muhammad Taufik Hidayanto, S.T.', '2021-06-11 04:13:33', '2021-06-11 05:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rumah`
--

CREATE TABLE `rumah` (
  `nomor_rumah` varchar(11) NOT NULL,
  `blok` char(1) DEFAULT NULL,
  `tipe` int(3) DEFAULT NULL,
  `harga` int(100) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rumah`
--

INSERT INTO `rumah` (`nomor_rumah`, `blok`, `tipe`, `harga`, `gambar`, `status`, `created_at`, `updated_at`) VALUES
('A012', 'A', 4, 300000000, 'mbar-Rumah-Minimalis-Tampak-Depan-16.jpg', 'Tersedia', '2021-06-23 08:05:02', '2021-07-01 08:20:10'),
('B013', 'B', 4, 13, 'Helm.jpg', 'Ada', '2021-07-02 10:07:57', '2021-07-02 10:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `tipe`
--

CREATE TABLE `tipe` (
  `id_tipe` int(3) NOT NULL,
  `nama_tipe` varchar(100) DEFAULT NULL,
  `luas_tanah` int(11) DEFAULT NULL,
  `luas_rumah` int(11) DEFAULT NULL,
  `jml_lantai` int(2) DEFAULT NULL,
  `jml_kamar` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipe`
--

INSERT INTO `tipe` (`id_tipe`, `nama_tipe`, `luas_tanah`, `luas_rumah`, `jml_lantai`, `jml_kamar`, `created_at`, `updated_at`) VALUES
(4, 'Sedang', 13, 10, 3, 8, '2021-06-11 02:57:35', '2021-06-11 03:04:02'),
(6, 'Besar', 100, 100, 2, 4, '2021-06-28 23:58:47', '2021-06-28 23:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(30) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `desa` varchar(100) DEFAULT NULL,
  `kodepos` int(10) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `metode_pembayaran` varchar(100) DEFAULT NULL,
  `biaya` int(255) DEFAULT NULL,
  `nomor_rumah` varchar(11) DEFAULT NULL,
  `notaris` varchar(10) DEFAULT NULL,
  `tgl_pembelian` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama`, `email`, `alamat`, `provinsi`, `kota`, `kecamatan`, `desa`, `kodepos`, `nohp`, `metode_pembayaran`, `biaya`, `nomor_rumah`, `notaris`, `tgl_pembelian`, `created_at`, `updated_at`) VALUES
('01072021152010', 'Muhammad Taufik Hidayanto', 'hid09h@gmail.com', 'Jl. Artisan', 'tes', 'tes', 'tes', 'tes', 10110, '085740737372', 'Cash', 300000000, 'A012', '33128', '01-07-2021', '2021-07-01 08:20:10', '2021-07-01 08:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blok`
--
ALTER TABLE `blok`
  ADD PRIMARY KEY (`nama_blok`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notaris`
--
ALTER TABLE `notaris`
  ADD PRIMARY KEY (`id_notaris`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rumah`
--
ALTER TABLE `rumah`
  ADD PRIMARY KEY (`nomor_rumah`),
  ADD KEY `fk_blok` (`blok`),
  ADD KEY `fk_tipe` (`tipe`);

--
-- Indexes for table `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_rumah` (`nomor_rumah`),
  ADD KEY `fk_notaris` (`notaris`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tipe`
--
ALTER TABLE `tipe`
  MODIFY `id_tipe` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rumah`
--
ALTER TABLE `rumah`
  ADD CONSTRAINT `fk_blok` FOREIGN KEY (`blok`) REFERENCES `blok` (`nama_blok`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipe` FOREIGN KEY (`tipe`) REFERENCES `tipe` (`id_tipe`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_notaris` FOREIGN KEY (`notaris`) REFERENCES `notaris` (`id_notaris`),
  ADD CONSTRAINT `fk_rumah` FOREIGN KEY (`nomor_rumah`) REFERENCES `rumah` (`nomor_rumah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
