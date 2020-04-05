-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Apr 2020 pada 08.58
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_irna`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_guru`
--

CREATE TABLE `master_guru` (
  `kode_guru` int(11) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_guru`
--

INSERT INTO `master_guru` (`kode_guru`, `nip`, `nama_guru`, `jk`, `alamat`, `password`) VALUES
(1, 132, 'irna', 'perempuan', 'weragati', '75fa7119f59eabc074c91ab2e81a0308'),
(2, 328, 'sandra', 'perempuan', 'heulet', 'f40a37048732da05928c3d374549c832'),
(3, 874, 'afif', 'laki-laki', 'lame', 'b56776aa98086825550ff0c3fe260907'),
(4, 973, 'hikayat', 'laki-laki', 'munjul', '894cacb65ca6e69e2996f2151cfeeea5'),
(5, 367, 'rizki', 'laki-laki', 'panyingkiran', '3e089c076bf1ec3a8332280ee35c28d4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jurusan`
--

CREATE TABLE `master_jurusan` (
  `kode_jurusan` varchar(10) NOT NULL,
  `jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_jurusan`
--

INSERT INTO `master_jurusan` (`kode_jurusan`, `jurusan`) VALUES
('20', 'Farmasi'),
('21', 'Perawat'),
('22', 'Akuntansi'),
('23', 'Multimedia'),
('24', 'TKR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kelas`
--

CREATE TABLE `master_kelas` (
  `no` varchar(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_kelas`
--

INSERT INTO `master_kelas` (`no`, `nama_kelas`) VALUES
('01', ' Farm'),
('02', 'Kep'),
('03', 'AK'),
('4', 'Multimedia'),
('5', 'TKR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_mata_pelajaran`
--

CREATE TABLE `master_mata_pelajaran` (
  `kode_mp` varchar(10) NOT NULL,
  `nama_mp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_mata_pelajaran`
--

INSERT INTO `master_mata_pelajaran` (`kode_mp`, `nama_mp`) VALUES
('31', 'Indonesia'),
('32', 'Inggris'),
('33', 'KWU'),
('34', 'Matematika'),
('35', 'Biologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_siswa`
--

CREATE TABLE `master_siswa` (
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
('55', '379269', 'Rizki Alam R', 'Laki-laki', 'AK', 'Akuntansi', 'Dani', '0837489023'),
('56', '938355', 'Muhammad Hikayat', 'Laki-laki', 'TKR', 'TKR', 'Dadan', '0898490648'),
('57', '342879', 'Sandra Marlianti M', 'perempuan', 'Multimedia', 'Multimedia', 'Dani', '0852730952'),
('58', '987624', 'Irna Sri Nulingga', 'perempuan', 'Kep', 'Perawat', 'Rahman', '0831201562'),
('59', '529527', 'Afif Surya R', 'Laki-laki', 'Farm', 'Farmasi', 'Panji', '0817455903');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `master_guru`
--
ALTER TABLE `master_guru`
  ADD PRIMARY KEY (`kode_guru`);

--
-- Indeks untuk tabel `master_jurusan`
--
ALTER TABLE `master_jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indeks untuk tabel `master_mata_pelajaran`
--
ALTER TABLE `master_mata_pelajaran`
  ADD PRIMARY KEY (`kode_mp`);

--
-- Indeks untuk tabel `master_siswa`
--
ALTER TABLE `master_siswa`
  ADD PRIMARY KEY (`kode_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `master_guru`
--
ALTER TABLE `master_guru`
  MODIFY `kode_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
