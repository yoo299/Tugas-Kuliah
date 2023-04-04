-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 08:20 PM
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
-- Database: `tugas_p5`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` varchar(10) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `KOTA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `NAMA`, `KOTA`) VALUES
('2009500579', 'Jasson', 'Depok'),
('2009500667', 'Selly', 'Jakarta'),
('2009500690', 'Marco', 'Jakarta'),
('2010500225', 'Jasson', 'Bogor'),
('2010500239', 'Bintang', 'Bogor'),
('2011500193', 'Findy', 'Jakarta'),
('2011500331', 'Talitha', 'Bekasi');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `KD_MK` varchar(5) NOT NULL,
  `Nama_MK` varchar(50) DEFAULT NULL,
  `SKS` int(1) DEFAULT NULL,
  `semester` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`KD_MK`, `Nama_MK`, `SKS`, `semester`) VALUES
('KD123', 'Sistem Informasi Manajemen', 3, 6),
('KK001', 'Algoritma 1', 2, 2),
('KK021', 'Sistem Basis Data', 2, 4),
('KU122', 'Ilmu Budaya Dasar', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `NPM` varchar(10) DEFAULT NULL,
  `KD_MK` varchar(5) DEFAULT NULL,
  `UTS` int(3) DEFAULT NULL,
  `UAS` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`NPM`, `KD_MK`, `UTS`, `UAS`) VALUES
('2010500225', 'KK021', 60, 75),
('2010500239', 'KD123', 70, 90),
('2011500331', 'KK021', 50, 40),
('2011500193', 'KU122', 90, 80),
('2009500579', 'KK021', 65, 75),
('2009500690', 'KD132', 85, 95),
('2009500667', 'KD132', 95, 85);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`KD_MK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
