-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 01:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appwarung`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `username`, `tipeUser`, `pass`, `totalPembelian`) VALUES
(1, 'mochammad', 'pembeli', '1102', 34000),
(2, 'yusuf', 'pelanggan', '3011', 27000),
(3, 'pratama', 'pelanggan', '2108', 0),
(4, 'admin', '', 'admin1', 0),
(8, 'user', 'pembeli', 'user', 0),
(9, 'testt', 'pembeli', 'testt', 0),
(10, 'testtt', 'pembeli', 'testtt', 0),
(11, 'kimmy', 'pelanggan', 'kimmy', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftarmenu`
--

INSERT INTO `daftarmenu` (`idMenu`, `tipeMenu`, `namaMenu`, `hargaa`, `total`) VALUES
('MN001', 'Makanan', 'Mie Ayam', 10000, 0),
('MN002', 'Makanan', 'Nasi', 3000, 0),
('MN003', 'Makanan', 'Mie Goreng', 4000, 0),
('MN004', 'Minuman', 'Pop Ice', 3000, 6000),
('MN005', 'Makanan', 'Mie Kuah', 4000, 0),
('MN006', 'Minuman', 'Es Teh', 3000, 6000),
('MN007', 'Makanan', 'Pecel', 9000, 0),
('MN008', 'Minuman', 'Kopi', 3000, 0),
('MN009', 'Makanan', 'Ayam Geprek', 12000, 24000),
('MN010', 'Minuman', 'Es Nutrisari', 4000, 0),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
