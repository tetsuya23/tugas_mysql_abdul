-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2022 at 04:03 PM
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
-- Database: `apotik`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_karyawan`
--

CREATE TABLE `detail_karyawan` (
  `id_anggota` int(11) NOT NULL,
  `domisili` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `facebook` varchar(32) NOT NULL,
  `instagram` varchar(32) NOT NULL,
  `twitter` varchar(32) NOT NULL,
  `youtube` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_karyawan`
--

INSERT INTO `detail_karyawan` (`id_anggota`, `domisili`, `email`, `facebook`, `instagram`, `twitter`, `youtube`) VALUES
(1, 'Jakarta', 'abdul@gamil.com', 'Abdul', '@abdul', '@abdul', 'Abdul'),
(2, 'Surabaya', 'riyan@gmail.com', 'riyan', '@riyan', '@riyan', 'Riyan'),
(3, 'Jakarta', 'cindy@gmail.com', 'cindy', '@cindy', '@cindy', 'Cindy'),
(4, 'Tangerang', 'ahdma@gmail.com', 'Ahmad', '@ahmad', '@ahmad', 'Ahamd');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `No_reg` varchar(11) NOT NULL,
  `total(Rp)` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_transaksi`, `No_reg`, `total(Rp)`) VALUES
(1, 'REG-004', 15000),
(2, 'REG-002', 26000),
(3, 'REG-007', 70500),
(4, 'REG-003', 32000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `sex` char(1) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `jabatan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_anggota`, `nama`, `username`, `password`, `sex`, `telp`, `jabatan`) VALUES
(1, 'Abdul', 'abdul123', 'abdul', 'L', '0836372273', 'Kepala Aoptik'),
(2, 'Riyan', 'riyan', 'riyan', 'L', '08266357274573', 'Kasir'),
(3, 'Cindy', 'cindi', 'cindi', 'P', '083527283784', 'kasir'),
(4, 'Ahmad', 'ahmad', 'ahmad', 'L', '0836478378484', 'Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `No_Reg` varchar(11) NOT NULL,
  `merek/brand` varchar(32) NOT NULL,
  `indikasi` text NOT NULL,
  `komposisi` text NOT NULL,
  `Tahun_Produksi` int(11) NOT NULL,
  `kadaluarsa` int(11) NOT NULL,
  `id_manufaktur` varchar(11) NOT NULL,
  `harga(Rp)` int(11) NOT NULL,
  `qty_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`No_Reg`, `merek/brand`, `indikasi`, `komposisi`, `Tahun_Produksi`, `kadaluarsa`, `id_manufaktur`, `harga(Rp)`, `qty_stock`) VALUES
('REG-001', 'Paracetamol', 'Meredakan gejala demam dan nyeri', 'Paracetamol 500 mg', 2021, 2025, 'PM-5', 10000, 5),
('REG-002', 'FATIGON SPIRIT', 'Memulihkan tenaga,dan membantu memlihara daya tahan tubuh', 'Multivitamin, dan Nano ginseng', 2021, 2025, 'PM-2', 13000, 8),
('REG-003', 'Amobiotic', 'Meredakan nyeri dan infeksi bakteri', 'Amoxicillin', 2022, 2026, 'PM-1', 8000, 22),
('REG-004', 'Antalgin', 'Meredakan rasa nyeri dan demam', 'Metamizole anelgesik', 2021, 2025, 'PM-8', 15000, 9),
('REG-005', 'Fituno', 'Membantu memulihkan daya tahan tubuh', 'Ekstrak Echinecea,dan Multivitamin', 2022, 2026, 'PM-6', 85000, 6),
('REG-006', 'Ibuprofen', 'Meredakan nyeri, radang sendi dan demam', 'ibuprofen 400 mg', 2020, 2025, 'PM-4', 12000, 9),
('REG-007', 'Sangobion', 'Vitamin dan Suplemen penambah darah', 'Ferrous Cluconace, vit C. Vit B, etc', 2021, 2026, 'PM-3', 23500, 12),
('REG-008', 'Promedryl Syrup', 'Meredakan batuk, dan demam', 'Paracetamol, Guaifnesin, etc', 2021, 2025, 'PM-7', 26000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_kasir` int(11) NOT NULL,
  `tanggal_penjualan` datetime NOT NULL,
  `qty` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `id_kasir`, `tanggal_penjualan`, `qty`) VALUES
(1, 4, '2022-07-21 16:12:23', '2 '),
(2, 1, '2022-08-10 13:20:25', '1'),
(3, 3, '2022-08-13 12:14:26', '3'),
(4, 2, '2022-08-14 09:02:45', '4');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_manufaktur`
--

CREATE TABLE `perusahaan_manufaktur` (
  `id_manufaktur` varchar(11) NOT NULL,
  `pendiri` varchar(32) NOT NULL,
  `tahun_pendirian` int(11) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perusahaan_manufaktur`
--

INSERT INTO `perusahaan_manufaktur` (`id_manufaktur`, `pendiri`, `tahun_pendirian`, `alamat`) VALUES
('PM-1', 'pendiri1', 2010, 'jakarta'),
('PM-2', 'pendiri2', 1992, 'Tangerang'),
('PM-3', 'pendiri3', 2008, 'Semarang'),
('PM-4', 'pendiri4', 2005, 'Jakarta'),
('PM-5', 'pendiri5', 2002, 'Surabaya'),
('PM-6', 'Pendiri6', 2000, 'Jakarta'),
('PM-7', 'pendiri7', 1995, 'Medan'),
('PM-8', 'Pendiri8', 1990, 'Surabaya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_karyawan`
--
ALTER TABLE `detail_karyawan`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `No_reg` (`No_reg`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`No_Reg`),
  ADD UNIQUE KEY `REG` (`No_Reg`),
  ADD KEY `fk_detail_manufaktur` (`id_manufaktur`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_detail` (`id_kasir`);

--
-- Indexes for table `perusahaan_manufaktur`
--
ALTER TABLE `perusahaan_manufaktur`
  ADD PRIMARY KEY (`id_manufaktur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_karyawan`
--
ALTER TABLE `detail_karyawan`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_karyawan`
--
ALTER TABLE `detail_karyawan`
  ADD CONSTRAINT `detail_karyawan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `karyawan` (`id_anggota`);

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `penjualan` (`id_transaksi`),
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`No_reg`) REFERENCES `obat` (`No_Reg`);

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `fk_detail_manufaktur` FOREIGN KEY (`id_manufaktur`) REFERENCES `perusahaan_manufaktur` (`id_manufaktur`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_detail` FOREIGN KEY (`id_kasir`) REFERENCES `karyawan` (`id_anggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

Query Read : SELECT * FROM `obat` ORDER BY No_Reg DESC;
             SELECT * FROM `karyawan` ORDER BY id_anggota
             SELECT * FROM `perusahaan_manufaktur` ORDER BY id_manufaktur

Delete : DELETE FROM `obat` WHERE No_Reg = 'REG_008'
UPDATE : UPDATE `obat` SET `tahun_produksi`= '2023' WHERE `No_reg` = 'REG-008';
JOIN :  SELECT tanggal_penjualan, penjualan.id_transaksi, nama, sex
        FROM `penjualan` 
        JOIN karyawan ON karyawan.id_anggota = penjualan.id_kasir
        ORDER BY id_transaksi