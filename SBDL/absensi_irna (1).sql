-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Mar 2020 pada 10.32
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

--
-- Dumping data untuk tabel `master_guru`
--

INSERT INTO `master_guru` (`kode_guru`, `nip`, `nama_guru`, `jk`, `alamat`, `password`) VALUES
('11', '11111111', 'Muhamad Syarif', 'Laki - laki', 'Palasah', '45475'),
('22', '22222222', 'Apriyani', 'Perempuan', 'Weragati', '45476'),
('33', '33333333', 'Reza Dwi', 'Perempuan', 'Trajaya', '45477');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jurusan`
--

CREATE TABLE IF NOT EXISTS `master_jurusan` (
  `kode_jurusan` varchar(10) NOT NULL,
  `jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_jurusan`
--

INSERT INTO `master_jurusan` (`kode_jurusan`, `jurusan`) VALUES
('20', 'Farmasi'),
('21', 'Perawat'),
('22', 'Akuntansi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kelas`
--

CREATE TABLE IF NOT EXISTS `master_kelas` (
  `no` varchar(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_kelas`
--

INSERT INTO `master_kelas` (`no`, `nama_kelas`) VALUES
('01', ' Farm'),
('02', 'Kep'),
('03', 'AK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_mata_pelajaran`
--

CREATE TABLE IF NOT EXISTS `master_mata_pelajaran` (
  `kode_mp` varchar(10) NOT NULL,
  `nama_mp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_mata_pelajaran`
--

INSERT INTO `master_mata_pelajaran` (`kode_mp`, `nama_mp`) VALUES
('31', 'Indonesia'),
('32', 'Inggris'),
('33', 'KWU');

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
-- Dumping data untuk tabel `master_siswa`
--

INSERT INTO `master_siswa` (`kode_siswa`, `nis_siswa`, `nama_siswa`, `jk`, `kelas`, `jurusan`, `nama_orangtua`, `nomor_hp`) VALUES
('55', '435672', 'Nisa Rahmadini', 'Perempuan', 'Farm', 'Farmasi', 'Yahya', '0897674381'),
('56', '984271', 'Muhamad Alif', 'Laki Laki', 'AK', 'Akuntansi', 'Dirman', '0821763876'),
('57', '984274', 'Rina Febriani', 'Perempuan', 'Kep', 'Perawat', 'Ujang', '0812764934');

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
