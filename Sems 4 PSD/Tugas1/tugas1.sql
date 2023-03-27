-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 08:45 AM
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
-- Database: `tugas1`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` varchar(12) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `Tgl_lahir` date DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `NAMA`, `Tgl_lahir`, `ALAMAT`) VALUES
('201143500121', 'Desi', NULL, 'Bekasi'),
('201143500165', 'Firdaus', NULL, 'Jakarta'),
('201143500228', 'Gandi', NULL, 'Depok'),
('201143500234', 'Endah', NULL, 'Depok'),
('201143500326', 'Hilda', NULL, 'Bogor'),
('201143500439', 'Andi', NULL, 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `mt_kuliah`
--

CREATE TABLE `mt_kuliah` (
  `KD_MK` varchar(5) NOT NULL,
  `NM_MK` varchar(30) DEFAULT NULL,
  `SKS` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `NPM` varchar(12) DEFAULT NULL,
  `KD_MK` varchar(5) DEFAULT NULL,
  `UTS` int(3) DEFAULT NULL,
  `UAS` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`NPM`, `KD_MK`, `UTS`, `UAS`) VALUES
('201143500439', 'KK021', 60, 75),
('201143500121', 'KD123', 70, 90),
('201143500234', 'KK021', 50, 40),
('201143500165', 'KU122', 90, 80),
('201143500228', 'KU122', 75, 75),
('201143500326', 'KD123', 80, 0),
('201143500439', 'KD123', 40, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Indexes for table `mt_kuliah`
--
ALTER TABLE `mt_kuliah`
  ADD PRIMARY KEY (`KD_MK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
