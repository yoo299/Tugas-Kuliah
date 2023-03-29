-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 12:23 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas3`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` varchar(12) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `NAMA`, `ALAMAT`) VALUES
('2009500579', 'Budi', 'Depok'),
('2009500667', 'Pratiwi', 'Jakarta'),
('2009500690', 'Lilik', 'Jakarta'),
('2010500225', 'Quraish', 'Bogor'),
('2010500239', 'Prananingrum', 'Bogor'),
('2011500193', 'Nurhayati', 'Jakarta'),
('2011500331', 'Pipit', 'Bekasi');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `KODE` int(11) DEFAULT NULL,
  `Jenis` varchar(50) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`KODE`, `Jenis`, `Harga`, `Jumlah`) VALUES
(1, 'Elektronik', 35000, 5),
(3, 'Game Station', 25000, 2),
(2, 'Komputer', 20000, 2),
(3, 'Game Station', 27500, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NPM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
