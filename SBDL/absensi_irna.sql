-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Mar 2020 pada 06.56
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `absensi_irna`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_guru`
--

CREATE TABLE IF NOT EXISTS `master_guru` (
  `kode_guru` varchar(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `nama_guru` text NOT NULL,
  `jk` text NOT NULL,
  `alamat` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jurusan`
--

CREATE TABLE IF NOT EXISTS `master_jurusan` (
  `kode_jurusan` varchar(10) NOT NULL,
  `jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kelas`
--

CREATE TABLE IF NOT EXISTS `master_kelas` (
  `no` varchar(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_mata_pelajaran`
--

CREATE TABLE IF NOT EXISTS `master_mata_pelajaran` (
  `kode_mp` varchar(10) NOT NULL,
  `nama_mp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_siswa`
--

CREATE TABLE IF NOT EXISTS `master_siswa` (
  `kode_siswa` varchar(10) NOT NULL,
  `nis_siswa` varchar(10) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `nama_orangtua` varchar(10) NOT NULL,
  `nomor_hp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_guru`
--
ALTER TABLE `master_guru`
 ADD PRIMARY KEY (`kode_guru`);

--
-- Indexes for table `master_jurusan`
--
ALTER TABLE `master_jurusan`
 ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `master_mata_pelajaran`
--
ALTER TABLE `master_mata_pelajaran`
 ADD PRIMARY KEY (`kode_mp`);

--
-- Indexes for table `master_siswa`
--
ALTER TABLE `master_siswa`
 ADD PRIMARY KEY (`kode_siswa`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
