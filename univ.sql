-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 03:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `univ`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` char(5) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Program_Studi` varchar(25) NOT NULL,
  `Fakultas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `Nama`, `Program_Studi`, `Fakultas`) VALUES
('00001', 'Fadlika Alfi', 'Teknologi Informasi', 'Teknik'),
('00002', 'Hakim Rajani', 'Teknologi Informasi', 'Teknik'),
('00003', 'Mabel Mayong', 'Teknologi Informasi', 'Teknik'),
('00004', 'Kanza Azza', 'Teknologi Informasi', 'Teknik'),
('00005', 'Juliet Nayaka', 'Teknologi Informasi', 'Teknik'),
('00006', 'Dario Aamauri', 'Teknologi Informasi', 'Teknik'),
('00007', 'Elijah Cyrano', 'Teknologi Informasi', 'Teknik'),
('00008', 'Naruna Jevera', 'Teknologi Informasi', 'Teknik'),
('00009', 'Lintang Jagapathi', 'Teknologi Informasi', 'Teknik');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_MK` char(5) NOT NULL,
  `nama_MK` varchar(20) NOT NULL,
  `SKS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_MK`, `nama_MK`, `SKS`) VALUES
('AB001', 'Basis Data', 3),
('AB002', 'Algoritma Pemograman', 3),
('AB003', 'Kalkulus', 3),
('AB004', 'Fisika', 2),
('AB005', 'Struktur Data', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `NPM` char(5) DEFAULT NULL,
  `id_MK` char(5) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `NPM`, `id_MK`, `nilai`) VALUES
(1, '00001', 'AB001', 90),
(2, '00002', 'AB001', 89),
(3, '00003', 'AB001', 88),
(4, '00004', 'AB001', 92),
(5, '00005', 'AB001', 87),
(6, '00006', 'AB001', 87),
(7, '00007', 'AB001', 85),
(8, '00008', 'AB001', 86),
(9, '00009', 'AB001', 91),
(10, '00001', 'AB002', 91),
(11, '00002', 'AB002', 88),
(12, '00003', 'AB002', 89),
(13, '00004', 'AB002', 87),
(14, '00005', 'AB002', 85),
(15, '00006', 'AB002', 84),
(16, '00007', 'AB002', 91),
(17, '00008', 'AB002', 86),
(18, '00009', 'AB002', 92),
(19, '00001', 'AB003', 92),
(20, '00002', 'AB003', 90),
(21, '00003', 'AB003', 89),
(22, '00004', 'AB003', 85),
(23, '00005', 'AB003', 80),
(24, '00006', 'AB003', 84),
(25, '00007', 'AB003', 87),
(26, '00008', 'AB003', 88),
(27, '00009', 'AB003', 86),
(28, '00001', 'AB004', 86),
(29, '00002', 'AB004', 85),
(30, '00003', 'AB004', 88),
(31, '00004', 'AB004', 89),
(32, '00005', 'AB004', 90),
(33, '00006', 'AB004', 92),
(34, '00007', 'AB004', 89),
(35, '00008', 'AB004', 86),
(36, '00009', 'AB004', 87),
(37, '00001', 'AB005', 87),
(38, '00002', 'AB005', 89),
(39, '00003', 'AB005', 88),
(40, '00004', 'AB005', 90),
(41, '00005', 'AB005', 87),
(42, '00006', 'AB005', 83),
(43, '00007', 'AB005', 82),
(44, '00008', 'AB005', 90),
(45, '00009', 'AB005', 92);

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
  ADD PRIMARY KEY (`id_MK`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `NPM` (`NPM`),
  ADD KEY `id_MK` (`id_MK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`NPM`) REFERENCES `mahasiswa` (`NPM`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_MK`) REFERENCES `matakuliah` (`id_MK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
