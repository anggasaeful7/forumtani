-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Agu 2023 pada 12.05
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_forumtani`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `petani`
--

CREATE TABLE `petani` (
  `id_petani` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `ibu` varchar(50) NOT NULL,
  `komoditas` varchar(100) NOT NULL,
  `luas_lahan` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `ktp` varchar(50) NOT NULL,
  `kk` varchar(50) NOT NULL,
  `sppt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `foto`, `username`, `password`) VALUES
(1, 'administrator12', 'admin@gmail.com', 'admin-foto.png', 'administrator', 'password123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `petani`
--
ALTER TABLE `petani`
  ADD PRIMARY KEY (`id_petani`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `petani`
--
ALTER TABLE `petani`
  MODIFY `id_petani` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
