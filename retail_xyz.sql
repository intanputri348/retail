-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2026 at 08:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `retail_xyz`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_cabang`
--

CREATE TABLE `dim_cabang` (
  `id_cabang` int(11) NOT NULL,
  `nama_cabang` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_cabang`
--

INSERT INTO `dim_cabang` (`id_cabang`, `nama_cabang`, `kota`, `region`) VALUES
(1, 'Cabang A', 'Jakarta', 'Barat'),
(2, 'Cabang B', 'Surabaya', 'Timur'),
(3, 'Cabang C', 'Bandung', 'Pusat');

-- --------------------------------------------------------

--
-- Table structure for table `dim_pelanggan`
--

CREATE TABLE `dim_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `golongan_umur` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_pelanggan`
--

INSERT INTO `dim_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `golongan_umur`) VALUES
(1, 'Andi', 'L', 'Dewasa'),
(2, 'Siti', 'P', 'Remaja'),
(3, 'Budi', 'L', 'Dewasa'),
(4, 'Rina', 'P', 'Dewasa'),
(5, 'Dewi', 'P', 'Lansia'),
(6, 'Joko', 'L', 'Dewasa'),
(7, 'Tina', 'P', 'Remaja'),
(8, 'Rudi', 'L', 'Lansia'),
(9, 'Ani', 'P', 'Dewasa'),
(10, 'Nada', 'P', 'Remaja'),
(11, 'Intan', 'P', 'Remaja'),
(12, 'Didin', 'L', 'Lansia'),
(13, 'Weni', 'P', 'Lansia'),
(14, 'Putri', 'P', 'Remaja'),
(15, 'Sony', 'L', 'Dewasa');

-- --------------------------------------------------------

--
-- Table structure for table `dim_produk`
--

CREATE TABLE `dim_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `kategori` varchar(30) DEFAULT NULL,
  `harga_satuan` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_produk`
--

INSERT INTO `dim_produk` (`id_produk`, `nama_produk`, `kategori`, `harga_satuan`) VALUES
(1, 'Nasi Goreng', 'Makanan', 20000.00),
(2, 'Mie Ayam', 'Makanan', 15000.00),
(3, 'Teh Botol', 'Minuman', 5000.00),
(4, 'Kopi', 'Minuman', 10000.00),
(5, 'Keripik', 'Snack', 8000.00),
(6, 'Coklat', 'Snack', 12000.00),
(7, 'Ayam Geprek', 'Makanan', 18000.00),
(8, 'Sate Ayam', 'Makanan', 25000.00),
(9, 'Bakso', 'Makanan', 17000.00),
(10, 'Soto Ayam', 'Makanan', 16000.00),
(11, 'Rendang', 'Makanan', 30000.00),
(12, 'Nasi Uduk', 'Makanan', 12000.00),
(13, 'Jus Jeruk', 'Minuman', 10000.00),
(14, 'Jus Mangga', 'Minuman', 12000.00),
(15, 'Air Mineral', 'Minuman', 4000.00),
(16, 'Es Teh', 'Minuman', 5000.00),
(17, 'Milkshake Coklat', 'Minuman', 15000.00),
(18, 'Kopi Latte', 'Minuman', 18000.00),
(19, 'Biskuit', 'Snack', 7000.00),
(20, 'Wafer', 'Snack', 8000.00),
(21, 'Permen', 'Snack', 5000.00),
(22, 'Popcorn', 'Snack', 10000.00),
(23, 'Kacang', 'Snack', 9000.00),
(24, 'Donat', 'Snack', 6000.00),
(25, 'Nasi Kuning', 'Makanan', 14000.00),
(26, 'Nasi Campur', 'Makanan', 20000.00),
(27, 'Ayam Bakar', 'Makanan', 22000.00),
(28, 'Ikan Goreng', 'Makanan', 21000.00),
(29, 'Mie Goreng', 'Makanan', 15000.00),
(30, 'Capcay', 'Makanan', 17000.00),
(31, 'Teh Tarik', 'Minuman', 12000.00),
(32, 'Cappuccino', 'Minuman', 15000.00),
(33, 'Smoothie Strawberry', 'Minuman', 16000.00),
(34, 'Jus Alpukat', 'Minuman', 14000.00),
(35, 'Es Coklat', 'Minuman', 13000.00),
(36, 'Soda', 'Minuman', 8000.00),
(37, 'Kerupuk', 'Snack', 5000.00),
(38, 'Cireng', 'Snack', 7000.00),
(39, 'Siomay', 'Snack', 10000.00),
(40, 'Batagor', 'Snack', 12000.00),
(41, 'Martabak Mini', 'Snack', 15000.00),
(42, 'Pisang Goreng', 'Snack', 8000.00),
(43, 'Nasi Padang', 'Makanan', 25000.00),
(44, 'Ayam Penyet', 'Makanan', 20000.00),
(45, 'Tongseng', 'Makanan', 23000.00),
(46, 'Gado-Gado', 'Makanan', 15000.00),
(47, 'Potato Chips', 'Snack', 10000.00),
(48, 'Brownies', 'Snack', 12000.00),
(49, 'Cheesecake', 'Snack', 18000.00),
(50, 'Croissant', 'Snack', 15000.00);

-- --------------------------------------------------------

--
-- Table structure for table `dim_waktu`
--

CREATE TABLE `dim_waktu` (
  `id_waktu` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `kuartal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_waktu`
--

INSERT INTO `dim_waktu` (`id_waktu`, `tanggal`, `hari`, `bulan`, `tahun`, `kuartal`) VALUES
(20240101, '2024-01-01', 'Senin', 1, 2024, 1),
(20240102, '2024-01-02', 'Selasa', 1, 2024, 1),
(20240110, '2024-01-10', 'Rabu', 1, 2024, 1),
(20240115, '2024-01-15', 'Senin', 1, 2024, 1),
(20240201, '2024-02-01', 'Kamis', 2, 2024, 1),
(20240210, '2024-02-10', 'Sabtu', 2, 2024, 1),
(20240214, '2024-02-14', 'Rabu', 2, 2024, 1),
(20240220, '2024-02-20', 'Selasa', 2, 2024, 1),
(20240301, '2024-03-01', 'Jumat', 3, 2024, 1),
(20240310, '2024-03-10', 'Minggu', 3, 2024, 1),
(20240315, '2024-03-15', 'Jumat', 3, 2024, 1),
(20240325, '2024-03-25', 'Senin', 3, 2024, 1),
(20240401, '2024-04-01', 'Senin', 4, 2024, 2),
(20240410, '2024-04-10', 'Rabu', 4, 2024, 2),
(20240415, '2024-04-15', 'Senin', 4, 2024, 2),
(20240425, '2024-04-25', 'Kamis', 4, 2024, 2),
(20240501, '2024-05-01', 'Rabu', 5, 2024, 2),
(20240510, '2024-05-10', 'Jumat', 5, 2024, 2),
(20240515, '2024-05-15', 'Rabu', 5, 2024, 2),
(20240525, '2024-05-25', 'Sabtu', 5, 2024, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fact_penjualan`
--

CREATE TABLE `fact_penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_cabang` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_waktu` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fact_penjualan`
--

INSERT INTO `fact_penjualan` (`id_transaksi`, `id_cabang`, `id_produk`, `id_pelanggan`, `id_waktu`, `jumlah`, `total_harga`) VALUES
(1, 1, 1, 1, 20240101, 2, 40000.00),
(2, 2, 3, 2, 20240102, 3, 15000.00),
(3, 3, 5, 3, 20240201, 1, 8000.00),
(4, 1, 2, 4, 20240301, 2, 30000.00),
(5, 2, 4, 5, 20240401, 1, 10000.00),
(6, 1, 7, 6, 20240110, 2, 36000.00),
(7, 2, 8, 7, 20240115, 1, 25000.00),
(8, 3, 9, 8, 20240210, 3, 51000.00),
(9, 1, 10, 9, 20240214, 2, 32000.00),
(10, 2, 11, 10, 20240220, 1, 30000.00),
(11, 3, 12, 11, 20240310, 2, 24000.00),
(12, 1, 13, 12, 20240315, 3, 30000.00),
(13, 2, 14, 13, 20240325, 2, 24000.00),
(14, 3, 15, 14, 20240410, 4, 16000.00),
(15, 1, 16, 15, 20240415, 2, 10000.00),
(16, 2, 17, 1, 20240425, 1, 15000.00),
(17, 3, 18, 2, 20240501, 2, 36000.00),
(18, 1, 19, 3, 20240510, 3, 21000.00),
(19, 2, 20, 4, 20240515, 2, 16000.00),
(20, 3, 21, 5, 20240525, 5, 25000.00),
(21, 1, 22, 6, 20240101, 2, 20000.00),
(22, 2, 23, 7, 20240102, 1, 9000.00),
(23, 3, 24, 8, 20240110, 3, 18000.00),
(24, 1, 25, 9, 20240115, 2, 28000.00),
(25, 2, 26, 10, 20240201, 1, 20000.00),
(26, 3, 27, 11, 20240210, 2, 44000.00),
(27, 1, 28, 12, 20240214, 1, 21000.00),
(28, 2, 29, 13, 20240220, 2, 30000.00),
(29, 3, 30, 14, 20240301, 3, 51000.00),
(30, 1, 31, 15, 20240310, 2, 24000.00),
(31, 2, 32, 1, 20240315, 1, 15000.00),
(32, 3, 33, 2, 20240325, 2, 32000.00),
(33, 1, 34, 3, 20240401, 1, 14000.00),
(34, 2, 35, 4, 20240410, 2, 26000.00),
(35, 3, 36, 5, 20240415, 3, 24000.00),
(36, 1, 37, 6, 20240425, 4, 20000.00),
(37, 2, 38, 7, 20240501, 2, 14000.00),
(38, 3, 39, 8, 20240510, 1, 10000.00),
(39, 1, 40, 9, 20240515, 2, 24000.00),
(40, 2, 41, 10, 20240525, 3, 45000.00),
(41, 3, 42, 11, 20240101, 2, 16000.00),
(42, 1, 43, 12, 20240102, 1, 25000.00),
(43, 2, 44, 13, 20240110, 2, 40000.00),
(44, 3, 45, 14, 20240115, 1, 23000.00),
(45, 1, 46, 15, 20240201, 2, 30000.00),
(46, 2, 47, 1, 20240210, 3, 30000.00),
(47, 3, 48, 2, 20240214, 2, 24000.00),
(48, 1, 49, 3, 20240220, 1, 18000.00),
(49, 2, 50, 4, 20240301, 2, 30000.00),
(50, 3, 1, 5, 20240310, 3, 60000.00),
(51, 1, 2, 6, 20240315, 2, 30000.00),
(52, 2, 3, 7, 20240325, 4, 20000.00),
(53, 3, 4, 8, 20240401, 1, 10000.00),
(54, 1, 5, 9, 20240410, 2, 16000.00),
(55, 2, 6, 10, 20240415, 3, 36000.00),
(56, 3, 7, 11, 20240425, 2, 36000.00),
(57, 1, 8, 12, 20240501, 1, 25000.00),
(58, 2, 9, 13, 20240510, 2, 34000.00),
(59, 3, 10, 14, 20240515, 3, 48000.00),
(60, 1, 11, 15, 20240525, 1, 30000.00),
(61, 2, 12, 1, 20240101, 2, 24000.00),
(62, 3, 13, 2, 20240102, 3, 30000.00),
(63, 1, 14, 3, 20240110, 2, 24000.00),
(64, 2, 15, 4, 20240115, 4, 16000.00),
(65, 3, 16, 5, 20240201, 2, 10000.00),
(66, 1, 17, 6, 20240210, 1, 15000.00),
(67, 2, 18, 7, 20240214, 2, 36000.00),
(68, 3, 19, 8, 20240220, 3, 21000.00),
(69, 1, 20, 9, 20240301, 2, 16000.00),
(70, 2, 21, 10, 20240310, 5, 25000.00),
(71, 3, 22, 11, 20240315, 2, 20000.00),
(72, 1, 23, 12, 20240325, 1, 9000.00),
(73, 2, 24, 13, 20240401, 3, 18000.00),
(74, 3, 25, 14, 20240410, 2, 28000.00),
(75, 1, 26, 15, 20240415, 1, 20000.00),
(76, 2, 27, 1, 20240425, 2, 44000.00),
(77, 3, 28, 2, 20240501, 1, 21000.00),
(78, 1, 29, 3, 20240510, 2, 30000.00),
(79, 2, 30, 4, 20240515, 3, 51000.00),
(80, 3, 31, 5, 20240525, 2, 24000.00),
(81, 1, 32, 6, 20240101, 1, 15000.00),
(82, 2, 33, 7, 20240102, 2, 32000.00),
(83, 3, 34, 8, 20240110, 1, 14000.00),
(84, 1, 35, 9, 20240115, 2, 26000.00),
(85, 2, 36, 10, 20240201, 3, 24000.00),
(86, 3, 37, 11, 20240210, 4, 20000.00),
(87, 1, 38, 12, 20240214, 2, 14000.00),
(88, 2, 39, 13, 20240220, 1, 10000.00),
(89, 3, 40, 14, 20240301, 2, 24000.00),
(90, 1, 41, 15, 20240310, 3, 45000.00),
(91, 2, 42, 1, 20240315, 2, 16000.00),
(92, 3, 43, 2, 20240325, 1, 25000.00),
(93, 1, 44, 3, 20240401, 2, 40000.00),
(94, 2, 45, 4, 20240410, 1, 23000.00),
(95, 3, 46, 5, 20240415, 2, 30000.00),
(96, 1, 47, 6, 20240425, 3, 30000.00),
(97, 2, 48, 7, 20240501, 2, 24000.00),
(98, 3, 49, 8, 20240510, 1, 18000.00),
(99, 1, 50, 9, 20240515, 2, 30000.00),
(100, 2, 1, 10, 20240525, 3, 60000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_cabang`
--
ALTER TABLE `dim_cabang`
  ADD PRIMARY KEY (`id_cabang`);

--
-- Indexes for table `dim_pelanggan`
--
ALTER TABLE `dim_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `dim_produk`
--
ALTER TABLE `dim_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `dim_waktu`
--
ALTER TABLE `dim_waktu`
  ADD PRIMARY KEY (`id_waktu`);

--
-- Indexes for table `fact_penjualan`
--
ALTER TABLE `fact_penjualan`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_cabang` (`id_cabang`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_waktu` (`id_waktu`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fact_penjualan`
--
ALTER TABLE `fact_penjualan`
  ADD CONSTRAINT `fact_penjualan_ibfk_1` FOREIGN KEY (`id_cabang`) REFERENCES `dim_cabang` (`id_cabang`),
  ADD CONSTRAINT `fact_penjualan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `dim_produk` (`id_produk`),
  ADD CONSTRAINT `fact_penjualan_ibfk_3` FOREIGN KEY (`id_pelanggan`) REFERENCES `dim_pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `fact_penjualan_ibfk_4` FOREIGN KEY (`id_waktu`) REFERENCES `dim_waktu` (`id_waktu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
