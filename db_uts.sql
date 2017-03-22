-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Mar 2017 pada 06.08
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_akun`
--

CREATE TABLE `tb_akun` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_akun`
--

INSERT INTO `tb_akun` (`username`, `password`) VALUES
('irvina', '1617');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nitip`
--

CREATE TABLE `tb_nitip` (
  `id` int(11) NOT NULL,
  `NamaPetugas` varchar(80) NOT NULL,
  `NoResi` int(10) NOT NULL,
  `NOPOL` varchar(10) NOT NULL,
  `JenisKendaraan` enum('motor','mobil') NOT NULL,
  `TanggalMasuk` date NOT NULL,
  `TanggalKeluar` date NOT NULL,
  `Harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nitip`
--

INSERT INTO `tb_nitip` (`id`, `NamaPetugas`, `NoResi`, `NOPOL`, `JenisKendaraan`, `TanggalMasuk`, `TanggalKeluar`, `Harga`) VALUES
(1, 'Yustika', 90, 'N 3457 BM', 'mobil', '2017-03-03', '2017-03-05', 15000),
(2, 'Firadila', 91, 'B 5555 GF', 'mobil', '2017-03-10', '2017-03-17', 24000),
(3, 'Chella', 92, 'L 766 GH', 'motor', '2017-03-10', '2017-03-24', 42000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_nitip`
--
ALTER TABLE `tb_nitip`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_nitip`
--
ALTER TABLE `tb_nitip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
