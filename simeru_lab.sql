-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2022 pada 03.34
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simeru_lab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asset`
--

CREATE TABLE `asset` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `book_waktuMulai` varchar(250) NOT NULL,
  `book_waktuSelesai` varchar(250) NOT NULL,
  `book_tanggal` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `keperluan` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`book_id`, `book_waktuMulai`, `book_waktuSelesai`, `book_tanggal`, `user_id`, `ruang_id`, `keperluan`, `status`) VALUES
(6, '01:55', '10:59', '2021-12-31', 1, 5, 'aaa', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `ruang_id` int(11) NOT NULL,
  `ruang_nama` varchar(250) NOT NULL,
  `ruang_kapasitas` varchar(250) NOT NULL,
  `ruang_deskripsi` varchar(250) NOT NULL,
  `ruang_foto` varchar(250) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`ruang_id`, `ruang_nama`, `ruang_kapasitas`, `ruang_deskripsi`, `ruang_foto`, `status`) VALUES
(5, 'Lab Multimedia', 'Multimedia', '12', '', 'on'),
(6, 'Lab Multimedia', 'Multimedia', '12', '', 'off');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_level` varchar(25) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_username` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_nama` varchar(250) NOT NULL,
  `user_status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_level`, `user_email`, `user_username`, `user_password`, `user_nama`, `user_status`) VALUES
(5, 'customer', 'customer@customer.com', 'customer', '91ec1f9324753048c0096d036a694f86', 'customer', 'on'),
(6, 'admin', 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'on');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `ruang_id` (`ruang_id`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`ruang_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `ruang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`ruang_id`) REFERENCES `ruang` (`ruang_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
