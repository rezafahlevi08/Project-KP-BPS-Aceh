-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 04:02 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectkp`
--

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `id` int(11) NOT NULL,
  `kepala_keluarga` varchar(250) NOT NULL,
  `nik` int(25) NOT NULL,
  `kode_kec` int(11) NOT NULL,
  `kode_desa` int(11) NOT NULL,
  `kode_sls` int(11) NOT NULL,
  `kode_subsls` int(11) NOT NULL,
  `r110` int(11) NOT NULL,
  `r501e_k1` int(11) NOT NULL,
  `r501f_k1` int(11) NOT NULL,
  `r501g_k1` int(11) NOT NULL,
  `r502a` int(11) NOT NULL,
  `r502b` int(11) NOT NULL,
  `r502c` int(11) NOT NULL,
  `r502d` int(11) NOT NULL,
  `r502e` int(11) NOT NULL,
  `r502f` int(11) NOT NULL,
  `r502g` int(11) NOT NULL,
  `r502h` int(11) NOT NULL,
  `r502i` int(11) NOT NULL,
  `r502j` int(11) NOT NULL,
  `r502k` int(11) NOT NULL,
  `r502l` int(11) NOT NULL,
  `r502m` int(11) NOT NULL,
  `r502n` int(11) NOT NULL,
  `r503a` int(11) NOT NULL,
  `r503b` int(11) NOT NULL,
  `r504a` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`id`, `kepala_keluarga`, `nik`, `kode_kec`, `kode_desa`, `kode_sls`, `kode_subsls`, `r110`, `r501e_k1`, `r501f_k1`, `r501g_k1`, `r502a`, `r502b`, `r502c`, `r502d`, `r502e`, `r502f`, `r502g`, `r502h`, `r502i`, `r502j`, `r502k`, `r502l`, `r502m`, `r502n`, `r503a`, `r503b`, `r504a`) VALUES
(1, 'Caesar Maulana', 91827364, 111, 222, 1, 0, 1, 2, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 0),
(2, 'Hafiz Rinaldi', 92837465, 111, 222, 1, 0, 10, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 2, 1, 1, 1, 2, 2, 1, 2, 2, 0),
(3, 'Zahiriansyah', 73420543, 111, 222, 1, 0, 11, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 2, 1, 1, 1, 2, 2, 1, 2, 2, 0),
(4, 'Reza Fahlevi', 20041104, 111, 222, 1, 0, 12, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 0),
(5, 'Haiqal', 20041105, 111, 222, 1, 0, 13, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 2, 1, 2, 1, 2, 2, 1, 1, 2, 0),
(6, 'Maulana Hamzah', 20041106, 111, 222, 1, 0, 14, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 2, 1, 2, 2, 1, 1, 2, 0),
(7, 'Ihsan Tampan', 20041107, 111, 222, 1, 0, 15, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 2, 1, 2, 2, 1, 2, 1, 0),
(8, ' Rahmat Ferdy', 20041108, 111, 222, 1, 0, 16, 2, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 2, 0),
(9, 'Fatur', 20041109, 111, 222, 1, 0, 17, 2, 2, 2, 1, 1, 1, 2, 2, 1, 1, 2, 1, 1, 2, 2, 2, 1, 1, 2, 0),
(10, 'cesil nasrifa', 65909876, 111, 222, 1, 0, 18, 2, 2, 1, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 2, 2, 2, 1, 1, 2, 0),
(11, 'Humaira', 87639923, 111, 222, 1, 0, 19, 2, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 0),
(12, 'Reza Setiawan', 98376565, 111, 222, 1, 0, 2, 2, 2, 1, 2, 1, 1, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 0),
(13, 'Ulul Azmi', 98983654, 111, 222, 1, 0, 20, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 0),
(14, 'Yusuf Kardawi', 56578934, 111, 222, 1, 0, 21, 2, 2, 1, 1, 1, 2, 2, 2, 1, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 0),
(15, 'Josep  Stailin', 56543298, 111, 222, 1, 0, 22, 2, 2, 1, 1, 1, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 0),
(16, 'Joko', 25465462, 111, 222, 1, 0, 23, 2, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 1, 2, 2, 0),
(17, 'Ucup', 25474544, 111, 222, 1, 0, 24, 2, 2, 2, 1, 1, 1, 2, 2, 2, 1, 2, 1, 1, 2, 2, 2, 1, 1, 2, 0),
(18, 'Steven cow', 76998765, 111, 222, 1, 0, 25, 2, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 1, 2, 2, 0),
(19, 'Bregi Ginting', 54378729, 111, 222, 1, 0, 26, 2, 2, 1, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 2, 2, 2, 1, 1, 2, 0),
(20, 'Nicholas Anelka', 29957589, 111, 222, 1, 0, 27, 2, 2, 1, 1, 1, 2, 2, 2, 1, 2, 1, 1, 2, 2, 2, 2, 1, 2, 2, 0),
(21, 'Azmi Kurniawan', 76493845, 111, 222, 1, 0, 28, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 0),
(22, 'Fahrul Nazar', 67654387, 111, 222, 1, 0, 29, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2, 2, 2, 1, 1, 2, 0),
(23, 'Faruq Miqdad', 67549876, 111, 222, 1, 0, 3, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 1, 2, 2, 0),
(24, 'Jhon Cena', 21237125, 111, 222, 1, 0, 30, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 2, 0),
(25, 'Wira Nasution', 67654198, 111, 222, 1, 0, 31, 2, 2, 2, 1, 1, 1, 2, 2, 1, 1, 2, 1, 1, 1, 2, 2, 1, 1, 2, 0),
(26, 'Gopar Azizi', 2147483647, 111, 222, 1, 0, 32, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 2, 2, 2, 1, 1, 2, 0),
(27, 'Farid Osama', 2147483647, 111, 222, 1, 0, 33, 2, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 2, 0),
(28, 'Andika Rahmatillah', 2147483647, 111, 222, 1, 0, 34, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 1, 2, 2, 0),
(29, 'Zawata Afnan', 2147483647, 111, 222, 1, 0, 35, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 2, 2, 0),
(30, 'Nawal Azka', 2147483647, 111, 222, 1, 0, 36, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 2, 1, 2, 2, 2, 2, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'Admin', '$2y$10$LJj8.CC870E6je92gpFnkOUQHas9imO4DoBKF39esO0L9qb37CLT.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bantuan`
--

CREATE TABLE `tb_bantuan` (
  `id` int(11) NOT NULL,
  `id_bantuan` varchar(10) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `berapa_besar` int(11) NOT NULL,
  `donatur` varchar(100) NOT NULL,
  `nominal_uang` varchar(100) NOT NULL,
  `tanggal_disumbangkan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bantuan`
--

INSERT INTO `tb_bantuan` (`id`, `id_bantuan`, `kabupaten`, `desa`, `berapa_besar`, `donatur`, `nominal_uang`, `tanggal_disumbangkan`) VALUES
(1, 'KB1560', 'Banda Aceh', 'Rukoh', 7, 'Badan Pusat Statistik', '100.000.000', '2021-06-18T12:30'),
(2, 'KB1486', 'Banda Aceh', 'Pango', 5, 'Bank Indonesia', '100.000.000', '2021-06-18T12:30'),
(3, 'KB1644', 'Banda Aceh', 'Lamreung', 15, 'DPR RI', '150.000.000', '2021-06-18T12:30'),
(4, 'KB209', 'Banda Aceh', 'Rukoh', 5, 'Bank Syariah Indonesia', '50.000.000', '2023-04-04T12:30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_calon_penerima`
--

CREATE TABLE `tb_calon_penerima` (
  `id` int(11) NOT NULL,
  `id_bantuan` varchar(150) NOT NULL,
  `kepala_keluarga` varchar(200) NOT NULL,
  `nik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_calon_penerima`
--

INSERT INTO `tb_calon_penerima` (`id`, `id_bantuan`, `kepala_keluarga`, `nik`) VALUES
(1, 'KB1560', 'Wira Nasution', 67654198),
(2, 'KB1560', 'Haiqal', 20041105),
(3, 'KB1560', 'cesil nasrifa', 65909876),
(4, 'KB1560', 'Josep  Stailin', 56543298),
(5, 'KB1560', 'Yusuf Kardawi', 56578934),
(6, 'KB1560', 'Caesar Maulana', 91827364),
(7, 'KB1560', 'Joko', 25465462),
(8, 'KB1486', 'Fatur', 20041109),
(9, 'KB1486', 'Hafiz Rinaldi', 92837465),
(10, 'KB1486', 'Azmi Kurniawan', 76493845),
(11, 'KB1486', 'Yusuf Kardawi', 56578934),
(12, 'KB1486', 'Maulana Hamzah', 20041106),
(13, 'KB1644', 'Ihsan Tampan', 20041107),
(14, 'KB1644', 'Zahiriansyah', 73420543),
(15, 'KB1644', 'Josep  Stailin', 56543298),
(16, 'KB1644', 'Haiqal', 20041105),
(17, 'KB1644', 'Steven cow', 76998765),
(18, 'KB1644', 'Nicholas Anelka', 29957589),
(19, 'KB1644', 'Fatur', 20041109),
(20, 'KB1644', 'cesil nasrifa', 65909876),
(21, 'KB1644', 'Maulana Hamzah', 20041106),
(22, 'KB1644', 'Ucup', 25474544),
(23, 'KB1644', 'Ulul Azmi', 98983654),
(24, 'KB1644', 'Hafiz Rinaldi', 92837465),
(25, 'KB1644', 'Faruq Miqdad', 67549876),
(26, 'KB1644', 'Azmi Kurniawan', 76493845),
(27, 'KB1644', 'Reza Setiawan', 98376565),
(28, 'KB209', 'Humaira', 87639923),
(29, 'KB209', 'Yusuf Kardawi', 56578934),
(30, 'KB209', ' Rahmat Ferdy', 20041108),
(31, 'KB209', 'cesil nasrifa', 65909876),
(32, 'KB209', 'Zahiriansyah', 73420543);

-- --------------------------------------------------------

--
-- Table structure for table `tb_donatur`
--

CREATE TABLE `tb_donatur` (
  `id_donatur` int(11) NOT NULL,
  `donatur` varchar(100) NOT NULL,
  `nominal_uang` varchar(100) NOT NULL,
  `tanggal_donasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_donatur`
--

INSERT INTO `tb_donatur` (`id_donatur`, `donatur`, `nominal_uang`, `tanggal_donasi`) VALUES
(1, 'Badan Pusat Statistik', '100.000.000', '2021-06-18T12:30'),
(2, 'Bank Indonesia', '100.000.000', '2021-06-18T12:30'),
(3, 'DPR RI', '150.000.000', '2021-06-18T12:30'),
(4, 'Bank Syariah Indonesia', '50.000.000', '2023-04-04T12:30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`) VALUES
(3, 'reza fahlevi', '$2y$10$g3uFYF2gfL5I2DhRANSSqe7xRnYo06mvopMRtqAtMKykuc40JcdbS'),
(4, 'haiqal', '$2y$10$acXupfi3jSbLZpAVOxd/GOyZW9P6LejRY.hRdeKqQqIUMUh7hKkSm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_bantuan`
--
ALTER TABLE `tb_bantuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_calon_penerima`
--
ALTER TABLE `tb_calon_penerima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_donatur`
--
ALTER TABLE `tb_donatur`
  ADD PRIMARY KEY (`id_donatur`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_bantuan`
--
ALTER TABLE `tb_bantuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_calon_penerima`
--
ALTER TABLE `tb_calon_penerima`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_donatur`
--
ALTER TABLE `tb_donatur`
  MODIFY `id_donatur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
