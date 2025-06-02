-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jun 2025 pada 19.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `ID_BUKU` int(11) NOT NULL,
  `ID_KATEGORI` int(11) DEFAULT NULL,
  `NAMA_BUKU` varchar(30) DEFAULT NULL,
  `PENGARANG` varchar(30) DEFAULT NULL,
  `GENRE` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`ID_BUKU`, `ID_KATEGORI`, `NAMA_BUKU`, `PENGARANG`, `GENRE`) VALUES
(23, 4, 'Senja di Kota Lama', 'A. Santoso', 'Fiksi'),
(24, 4, 'Matahari Tenggelam', 'D. Arimbi', 'Fiksi'),
(25, 4, 'Di Balik Langit', 'M. Fadlan', 'Fiksi'),
(26, 4, 'Hujan di Bulan Juni', 'Sapardi Djoko Damono', 'Fiksi'),
(27, 4, 'Pelangi Tanpa Warna', 'R. Nuraini', 'Fiksi'),
(28, 5, 'Sejarah Nusantara', 'B. Prakoso', 'Sejarah'),
(29, 5, 'Revolusi Indonesia', 'Y. Iskandar', 'Sejarah'),
(30, 5, 'Perang Dunia II', 'H. Sutanto', 'Sejarah'),
(31, 5, 'Jejak Majapahit', 'K. Suryana', 'Sejarah'),
(32, 5, 'Sejarah Peradaban Dunia', 'R. Wahyudi', 'Sejarah'),
(33, 6, 'Motivasi Pagi Hari', 'T. Permana', 'Non Fiksi'),
(34, 6, 'Kekuatan Diri', 'M. Dwi', 'Non Fiksi'),
(35, 6, 'Menjadi Pribadi Hebat', 'L. Wijaya', 'Non Fiksi'),
(36, 6, 'Seni Berbicara', 'E. Astuti', 'Non Fiksi'),
(37, 6, 'Mengelola Waktu', 'N. Rahmadani', 'Non Fiksi'),
(38, 7, 'Fisika Dasar', 'B. Pranoto', 'Sains'),
(39, 7, 'Kimia Organik', 'F. Maulani', 'Sains'),
(40, 7, 'Biologi Molekuler', 'T. Salim', 'Sains'),
(41, 7, 'Astronomi Modern', 'R. Hanafiah', 'Sains'),
(42, 7, 'Geologi dan Bumi', 'Y. Kristanto', 'Sains'),
(43, 8, 'Teknologi AI', 'D. Yuniarti', 'Teknologi'),
(44, 8, 'Pemrograman Python', 'A. Rudi', 'Teknologi'),
(45, 8, 'Dasar Jaringan Komputer', 'F. Haris', 'Teknologi'),
(46, 8, 'Sistem Informasi', 'L. Ramadhan', 'Teknologi'),
(47, 8, 'Teknologi Cloud', 'M. Andika', 'Teknologi'),
(48, 9, 'Psikologi Umum', 'A. Gunawan', 'Psikologi'),
(49, 9, 'Manajemen Emosi', 'C. Kartika', 'Psikologi'),
(50, 9, 'Kepribadian Manusia', 'I. Surya', 'Psikologi'),
(51, 9, 'Psikologi Anak', 'W. Ningsih', 'Psikologi'),
(52, 9, 'Stres dan Solusinya', 'F. Dewi', 'Psikologi'),
(53, 10, 'Tafsir Al-Misbah', 'Quraish Shihab', 'Agama'),
(54, 10, 'Fiqih Sunnah', 'Sayyid Sabiq', 'Agama'),
(55, 10, 'Sejarah Nabi', 'Ibnu Katsir', 'Agama'),
(56, 10, 'Etika Islam', 'Ust. Harun', 'Agama'),
(57, 10, 'Hadis Pilihan', 'Imam Nawawi', 'Agama'),
(58, 11, 'Teknik Melukis', 'R. Bagyo', 'Seni'),
(59, 11, 'Dasar Seni Rupa', 'I. Wibowo', 'Seni'),
(60, 11, 'Fotografi Digital', 'S. Pratiwi', 'Seni'),
(61, 11, 'Desain Grafis', 'Y. Rahma', 'Seni'),
(62, 11, 'Musik Tradisional', 'T. Damar', 'Seni'),
(63, 12, 'Sistem Pemerintahan', 'D. Anggara', 'Politik'),
(64, 12, 'Geopolitik Modern', 'B. Anwar', 'Politik'),
(65, 12, 'Politik Internasional', 'K. Mahendra', 'Politik'),
(66, 12, 'Hukum dan Politik', 'S. Junaidi', 'Politik'),
(67, 12, 'Partai dan Pemilu', 'Y. Fikri', 'Politik'),
(68, 13, 'Psikologi Pendidikan', 'E. Maria', 'Pendidikan'),
(69, 13, 'Metodologi Pembelajaran', 'A. Suryadi', 'Pendidikan'),
(70, 13, 'Evaluasi Pendidikan', 'T. Karina', 'Pendidikan'),
(71, 13, 'Inovasi Kurikulum', 'R. Salsabila', 'Pendidikan'),
(72, 13, 'Pendidikan Karakter', 'D. Wulandari', 'Pendidikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `ID_KATEGORI` int(11) NOT NULL,
  `NAMA_KATEGORI` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`ID_KATEGORI`, `NAMA_KATEGORI`) VALUES
(4, 'Fiksi'),
(5, 'Sejarah'),
(6, 'Non Fiksi'),
(7, 'Sains'),
(8, 'Teknologi'),
(9, 'Psikologi'),
(10, 'Agama'),
(11, 'Seni'),
(12, 'Politik'),
(13, 'Pendidikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_PEMINJAMAN` int(11) NOT NULL,
  `ID_BUKU` int(11) NOT NULL,
  `ID_SISWA` int(11) NOT NULL,
  `TANGGAL_PEMINJAMAN` datetime DEFAULT NULL,
  `TANGGAL_PENGEMBALIAN` datetime DEFAULT NULL,
  `STATUS` enum('DIPINJAM','DIKEMBALIKAN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`ID_PEMINJAMAN`, `ID_BUKU`, `ID_SISWA`, `TANGGAL_PEMINJAMAN`, `TANGGAL_PENGEMBALIAN`, `STATUS`) VALUES
(42, 23, 76, '2025-05-01 00:00:00', '2025-05-10 00:00:00', 'DIKEMBALIKAN'),
(43, 24, 77, '2025-05-03 00:00:00', '2025-05-12 00:00:00', 'DIKEMBALIKAN'),
(44, 25, 78, '2025-05-05 00:00:00', '2025-05-15 00:00:00', 'DIKEMBALIKAN'),
(45, 26, 79, '2025-05-07 00:00:00', NULL, 'DIPINJAM'),
(46, 27, 80, '2025-05-08 00:00:00', NULL, 'DIPINJAM'),
(47, 28, 81, '2025-05-09 00:00:00', '2025-05-19 00:00:00', 'DIKEMBALIKAN'),
(48, 29, 82, '2025-05-10 00:00:00', NULL, 'DIPINJAM'),
(49, 30, 83, '2025-05-11 00:00:00', NULL, 'DIPINJAM'),
(50, 31, 84, '2025-05-12 00:00:00', NULL, 'DIPINJAM'),
(51, 32, 85, '2025-05-13 00:00:00', '2025-05-23 00:00:00', 'DIKEMBALIKAN'),
(52, 33, 86, '2025-05-14 00:00:00', NULL, 'DIPINJAM'),
(53, 34, 87, '2025-05-15 00:00:00', NULL, 'DIPINJAM'),
(54, 35, 88, '2025-05-16 00:00:00', NULL, 'DIPINJAM'),
(55, 36, 89, '2025-05-17 00:00:00', '2025-05-27 00:00:00', 'DIKEMBALIKAN'),
(56, 37, 90, '2025-05-18 00:00:00', NULL, 'DIPINJAM'),
(57, 38, 91, '2025-05-19 00:00:00', '2025-05-29 00:00:00', 'DIKEMBALIKAN'),
(58, 39, 92, '2025-05-20 00:00:00', NULL, 'DIPINJAM'),
(59, 40, 93, '2025-05-21 00:00:00', '2025-05-31 00:00:00', 'DIKEMBALIKAN'),
(60, 41, 94, '2025-05-22 00:00:00', NULL, 'DIPINJAM'),
(61, 42, 95, '2025-05-23 00:00:00', NULL, 'DIPINJAM'),
(62, 43, 96, '2025-05-24 00:00:00', '2025-06-03 00:00:00', 'DIKEMBALIKAN'),
(63, 44, 97, '2025-05-25 00:00:00', NULL, 'DIPINJAM'),
(64, 45, 98, '2025-05-26 00:00:00', '2025-06-05 00:00:00', 'DIKEMBALIKAN'),
(65, 46, 99, '2025-05-27 00:00:00', NULL, 'DIPINJAM'),
(66, 47, 100, '2025-05-28 00:00:00', NULL, 'DIPINJAM'),
(67, 48, 101, '2025-05-29 00:00:00', '2025-06-08 00:00:00', 'DIKEMBALIKAN'),
(68, 49, 102, '2025-05-30 00:00:00', NULL, 'DIPINJAM'),
(69, 50, 103, '2025-05-31 00:00:00', '2025-06-10 00:00:00', 'DIKEMBALIKAN'),
(70, 51, 104, '2025-06-01 00:00:00', NULL, 'DIPINJAM'),
(71, 52, 105, '2025-06-02 00:00:00', NULL, 'DIPINJAM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `ID_SISWA` int(11) NOT NULL,
  `NAMA_SISWA` varchar(30) DEFAULT NULL,
  `KELAS_SISWA` varchar(30) DEFAULT NULL,
  `JURUSAN` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`ID_SISWA`, `NAMA_SISWA`, `KELAS_SISWA`, `JURUSAN`, `EMAIL`) VALUES
(76, 'Bagas Pratama', 'XII', 'Rekayasa Perangkat Lunak', 'bagas12@gmail.com'),
(77, 'Davi Rahman', 'XII', 'Rekayasa Perangkat Lunak', 'davi12@gmail.com'),
(78, 'Citra Ayu', 'XII', 'Teknik Komputer dan Jaringan', 'citra.ayu@gmail.com'),
(79, 'Rani Wulandari', 'XI', 'Rekayasa Perangkat Lunak', 'raniwulan@gmail.com'),
(80, 'Fajar Nugroho', 'XI', 'Teknik Komputer dan Jaringan', 'fajar666@gmail.com'),
(81, 'Tina Novita', 'XII', 'Multimedia', 'tinano@gmail.com'),
(82, 'Rizky Hidayat', 'X', 'Teknik Komputer dan Jaringan', 'rizkyhdy@gmail.com'),
(83, 'Lia Salsabila', 'XI', 'Multimedia', 'liasalsa@gmail.com'),
(84, 'Eko Saputra', 'XII', 'Rekayasa Perangkat Lunak', 'ekospt@gmail.com'),
(85, 'Winda Astuti', 'X', 'Multimedia', 'winda99@gmail.com'),
(86, 'Farhan Aditya', 'XI', 'Rekayasa Perangkat Lunak', 'farhanadx@gmail.com'),
(87, 'Nina Lestari', 'X', 'Teknik Komputer dan Jaringan', 'ninales@gmail.com'),
(88, 'Andi Kurniawan', 'XII', 'Teknik Komputer dan Jaringan', 'andikwn@gmail.com'),
(89, 'Dewi Sartika', 'XI', 'Multimedia', 'dewistk@gmail.com'),
(90, 'Rama Wijaya', 'X', 'Rekayasa Perangkat Lunak', 'rama.wjy@gmail.com'),
(91, 'Putri Melani', 'XII', 'Multimedia', 'putrimel@gmail.com'),
(92, 'Budi Santoso', 'XI', 'Teknik Komputer dan Jaringan', 'budi123@gmail.com'),
(93, 'Sari Puspita', 'X', 'Multimedia', 'saripsp@gmail.com'),
(94, 'Arif Maulana', 'XII', 'Rekayasa Perangkat Lunak', 'arifmln@gmail.com'),
(95, 'Yuni Kartika', 'XI', 'Rekayasa Perangkat Lunak', 'yuniktk@gmail.com'),
(96, 'Galih Permana', 'X', 'Teknik Komputer dan Jaringan', 'galihprm@gmail.com'),
(97, 'Silvia Anggraini', 'XII', 'Teknik Komputer dan Jaringan', 'silvia.ang@gmail.com'),
(98, 'Anton Wijaya', 'XI', 'Multimedia', 'antonwjy@gmail.com'),
(99, 'Mega Sari', 'X', 'Rekayasa Perangkat Lunak', 'megasari@gmail.com'),
(100, 'Dino Prasetyo', 'XII', 'Multimedia', 'dinoprs@gmail.com'),
(101, 'Lukman Hakim', 'XI', 'Teknik Komputer dan Jaringan', 'lukmanhk@gmail.com'),
(102, 'Alya Fitriani', 'X', 'Multimedia', 'alya.ftn@gmail.com'),
(103, 'Fikri Ramadhan', 'XII', 'Rekayasa Perangkat Lunak', 'fikrirmdhn@gmail.com'),
(104, 'Nabila Khairunnisa', 'XI', 'Rekayasa Perangkat Lunak', 'nabilakh@gmail.com'),
(105, 'Yoga Pratama', 'X', 'Teknik Komputer dan Jaringan', 'yogaprt@gmail.com'),
(106, 'Nando Kristianto', 'XI', 'Multimedia', 'nandokris@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_BUKU`),
  ADD KEY `FK_MEMPUNYAI` (`ID_KATEGORI`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID_KATEGORI`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_PEMINJAMAN`),
  ADD KEY `FK_MELAKUKAN` (`ID_SISWA`),
  ADD KEY `FK_MEMILIKI` (`ID_BUKU`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`ID_SISWA`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `ID_BUKU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `ID_KATEGORI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `ID_PEMINJAMAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `ID_SISWA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_MEMPUNYAI` FOREIGN KEY (`ID_KATEGORI`) REFERENCES `kategori` (`ID_KATEGORI`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_MELAKUKAN` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`),
  ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`ID_BUKU`) REFERENCES `buku` (`ID_BUKU`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
