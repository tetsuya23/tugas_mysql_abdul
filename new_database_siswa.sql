-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 02:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `NIS` char(11) NOT NULL,
  `Nama` varchar(120) NOT NULL,
  `TTL` varchar(64) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`NIS`, `Nama`, `TTL`, `Alamat`) VALUES
('NPS-001', 'Agung', 'Bandung 15 Mei 2001', 'jakarta'),
('NPS-002', 'Raisa', 'Surabaya, 16 Agustus 2000', 'Bandung'),
('NPS-003', 'Andika', 'Semarang, 01 januari 2002', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_nilai`
--

CREATE TABLE `daftar_nilai` (
  `NIS` varchar(11) NOT NULL,
  `IPA` int(11) NOT NULL,
  `IPS` int(11) NOT NULL,
  `MTK` int(11) NOT NULL,
  `Tataboga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_nilai`
--

INSERT INTO `daftar_nilai` (`NIS`, `IPA`, `IPS`, `MTK`, `Tataboga`) VALUES
('NPS-001', 85, 80, 86, 76),
('NPS-002', 79, 80, 85, 95),
('NPS-003', 80, 85, 79, 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`NIS`);

--
-- Indexes for table `daftar_nilai`
--
ALTER TABLE `daftar_nilai`
  ADD PRIMARY KEY (`NIS`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_nilai`
--
ALTER TABLE `daftar_nilai`
  ADD CONSTRAINT `fk_daftar_nilai` FOREIGN KEY (`NIS`) REFERENCES `biodata` (`NIS`);
COMMIT;

Query Read : SELECT * FROM `biodata` ORDER BY nama DESC;
             SELECT  nama, alamat, TTL FROM `biodata` ORDER BY nama DESC;
             
Delete : DELETE FROM `daftar_nilai` WHERE NIS = 'NPS-002'
Update : UPDATE `daftar_nilai` SET IPA = '95' WHERE `NIS` = 'NPS-002';
JOIN :  SELECT biodata.NIS, nama, TTL, alamat, IPA, IPS, MTK, Tataboga
	  FROM `biodata` 
	  JOIN daftar_nilai ON biodata.NIS = daftar_nilai.NIS
	  ORDER BY NIS

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
