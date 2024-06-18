-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2024 at 08:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_kel3`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `tipeUser` varchar(50) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `totalPembelian` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `username`, `tipeUser`, `pass`, `totalPembelian`) VALUES
(1, 'rifki', 'pembeli', '2a5c4c5a5ba1c332279685ddec507cd9', 34000),
(2, 'tian', 'pelanggan', '834e8bc4d74592e3b999100c157215f5', 27000),
(3, 'rakan', 'pelanggan', 'f3fa4360a4a0b8f26366db4e3eac11cb', 0),
(4, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(8, 'raha', 'pembeli', '59c27cd83eb81a92d70ec96061ebae7e', 157000),
(12, 'bagas', 'pembeli', 'ee776a18253721efe8a62e4abd29dc47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `daftarmenu`
--

CREATE TABLE `daftarmenu` (
  `idMenu` varchar(100) NOT NULL,
  `tipeMenu` varchar(50) NOT NULL,
  `namaMenu` varchar(100) NOT NULL,
  `hargaa` int(100) NOT NULL,
  `total` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftarmenu`
--

INSERT INTO `daftarmenu` (`idMenu`, `tipeMenu`, `namaMenu`, `hargaa`, `total`) VALUES
('MN001', 'Makanan', 'Mie Ayam', 10000, 20000),
('MN002', 'Makanan', 'Nasi', 3000, 0),
('MN003', 'Makanan', 'Mie Goreng', 4000, 12000),
('MN004', 'Minuman', 'Pop Ice', 3000, 6000),
('MN005', 'Makanan', 'Mie Kuah', 4000, 8000),
('MN006', 'Minuman', 'Es Teh', 3000, 6000),
('MN007', 'Makanan', 'Pecel', 9000, 0),
('MN008', 'Minuman', 'Kopi', 3000, 9000),
('MN009', 'Makanan', 'Ayam Geprek', 12000, 120000),
('MN010', 'Minuman', 'Es Nutrisari', 4000, 12000),
('MN011', 'Makanan', 'Nasi Goreng', 14000, 28000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftarmenu`
--
ALTER TABLE `daftarmenu`
  ADD PRIMARY KEY (`idMenu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
