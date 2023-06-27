-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2023 pada 15.02
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puntendoc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `foto` varchar(400) NOT NULL,
  `notelp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `fullname`, `foto`, `notelp`) VALUES
(1, 'dzikra@gmail.com', '123', 'Dzikra Shafi', '', '081775418179');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataclient`
--

CREATE TABLE `dataclient` (
  `id_client` int(11) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `notelp` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jkelamin` char(2) NOT NULL,
  `alamat` text NOT NULL,
  `gdarah` varchar(3) NOT NULL,
  `bbadan` varchar(3) NOT NULL,
  `tbadan` varchar(3) NOT NULL,
  `judulfb` varchar(100) NOT NULL,
  `isifb` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dataclient`
--

INSERT INTO `dataclient` (`id_client`, `namalengkap`, `nik`, `notelp`, `email`, `password`, `jkelamin`, `alamat`, `gdarah`, `bbadan`, `tbadan`, `judulfb`, `isifb`, `foto`, `role`) VALUES
(1, 'Dzikra Muhamad', '123456789', '081617604388', 'dzikramuhamad@gmail.com', '123', 'M', 'Bekasi Utara', 'A', '58', '170', 'Aplikasi ini keren bgt!', 'sejak menggunakan aplikasi ini, saya tidak merasa khawatir lagi dengan kesehatan saya.', '', 0),
(2, 'Agus Salim', '1234567', '08987654', 'agus@gmail.com', '123', 'M', 'Jakbar', 'B', '100', '170', 'serius sebagus itu apknya!', 'gila si ini bagus bgt, terintegrasi ke seluruh indonesia', '', 0),
(3, 'Bambang kusumo', '876567890', '086545678', 'bambang@gmail.com', '123', 'M', 'Jakarta Pusat', 'A', '80', '180', 'Gilaaaaaaaaaaa', 'aaaaaaa suka bgt bgt bgt 1000x', '', 0),
(4, 'Shafi Muhamad', '06392830', '081775418179', 'shafi@gmail.com', '123', 'M', 'Bekasi Timur', 'A', '65', '180', 'Baru nemu apk ini', 'Ini membantu bngttt buat menjaga kesehatan orang rumah', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `datadianogsapasien`
--

CREATE TABLE `datadianogsapasien` (
  `id_dianogsa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `namapasien` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `namadianogsa` varchar(100) NOT NULL,
  `namaobat` varchar(255) NOT NULL,
  `saran` text NOT NULL,
  `resepobat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datadoctor`
--

CREATE TABLE `datadoctor` (
  `id_doctor` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `spcdokter` varchar(30) NOT NULL,
  `notelp` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `jkelamin` char(3) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datadoctor`
--

INSERT INTO `datadoctor` (`id_doctor`, `fullname`, `nik`, `email`, `password`, `spcdokter`, `notelp`, `alamat`, `jkelamin`, `foto`) VALUES
(1, 'Dr. Richard Muhammad', '1234567890', 'richard@gmail.com', '123', 'Dokter Gigi', '0817638202739', 'Jakarta Pusat', 'M', 'Dr_ Mike.png'),
(2, 'Dr. Livy Renata', '0938398200', 'livy@gmail.com', '123', 'Anak', '0892838748329', 'Jl. Sudirman Jakarta Pusat', 'F', 'doktercewe.jpeg'),
(3, 'Dr. Made Kencana', '093284032820', 'made@gmail.com', '123', 'Specialist Pencernaan', '08098769989', 'Jl. menteng Jakarta', 'M', 'made.jpeg'),
(4, 'Dr. Fanny', '09830928020', 'fanyajah@gmail.com', '123', 'Umum', '08232392038', 'Jl. Tambun bekasi', 'F', 'fany.jpeg'),
(5, 'Dr. Robert Sitorus', '06403209230', 'robet@gmail.com', '123', 'Umum', '0813838910', 'Jl. Senen Jakarta', 'M', 'robert.jpeg'),
(6, 'Dr. Brian Conner', '09238409802', 'brian@gmail.com', '123', 'Umum', '0822902930290', 'Jl. Tanah Abang Jakarta', 'M', 'brian.jpg'),
(7, 'Dr. Fanie', '098789098', 'fanienaxslow@gmail.com', '123', 'Anak', '089876789098', 'Jl. Harapan Indah Bekasi', 'F', 'fanie.jpeg'),
(8, 'Dr. Maya', '0987678905', 'maya@gmail.com', '123', 'Umum', '08987654365', 'Jl. Harapan Jaya Bekasi', 'F', 'maya.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapembayaran`
--

CREATE TABLE `datapembayaran` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datapembayaran`
--

INSERT INTO `datapembayaran` (`id_pembelian`, `id_pelanggan`, `tanggal_pembelian`, `total_pembelian`) VALUES
(17, 1, '2022-12-13', 40000),
(18, 1, '2022-12-14', 40000),
(19, 1, '2022-12-14', 35000),
(20, 1, '2022-12-23', 40000),
(21, 1, '2022-12-25', 40000),
(22, 1, '2022-12-28', 40000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataregis`
--

CREATE TABLE `dataregis` (
  `id_regis` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `id_rumahsakit` int(11) NOT NULL,
  `namars` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dataregis`
--

INSERT INTO `dataregis` (`id_regis`, `id_client`, `namalengkap`, `id_rumahsakit`, `namars`) VALUES
(32, 1, 'Dzikra Muhamad', 1, 'Rumah Sakit Hermina Bekasi'),
(56, 1, 'Dzikra Muhamad', 1, 'Rumah Sakit Hermina Bekasi'),
(57, 1, 'Dzikra Muhamad', 2, 'Rumah Sakit Cipto Mangunkusumo Jakarta'),
(58, 1, 'Dzikra Muhamad', 3, 'Rumah Sakit Gatot Subroto Jakarta'),
(59, 1, 'Dzikra Muhamad', 4, 'Rumah Sakit Primaya Bekasi'),
(60, 1, 'Dzikra Muhamad', 5, 'Rumah Sakit Primaya Evasari Jakarta'),
(61, 1, 'Dzikra Muhamad', 6, 'Rumah Sakit Mitra keluarga'),
(62, 1, 'Dzikra Muhamad', 7, 'Rumah Sakit Anna Medika'),
(63, 1, 'Dzikra Muhamad', 8, 'Rumah Sakit Siloam Kebun jeruk'),
(64, 1, 'Dzikra Muhamad', 1, 'Rumah Sakit Hermina Bekasi'),
(65, 1, 'Dzikra Muhamad', 2, 'Rumah Sakit Cipto Mangunkusumo Jakarta'),
(66, 1, 'Dzikra Muhamad', 3, 'Rumah Sakit Gatot Subroto Jakarta'),
(67, 1, 'Dzikra Muhamad', 4, 'Rumah Sakit Primaya Bekasi'),
(68, 1, 'Dzikra Muhamad', 5, 'Rumah Sakit Primaya Evasari Jakarta'),
(69, 1, 'Dzikra Muhamad', 6, 'Rumah Sakit Mitra keluarga'),
(70, 1, 'Dzikra Muhamad', 7, 'Rumah Sakit Anna Medika'),
(71, 1, 'Dzikra Muhamad', 8, 'Rumah Sakit Siloam Kebun jeruk'),
(72, 1, 'Dzikra Muhamad', 1, 'Rumah Sakit Hermina Bekasi'),
(73, 1, 'Dzikra Muhamad', 2, 'Rumah Sakit Cipto Mangunkusumo Jakarta'),
(74, 1, 'Dzikra Muhamad', 3, 'Rumah Sakit Gatot Subroto Jakarta'),
(75, 1, 'Dzikra Muhamad', 4, 'Rumah Sakit Primaya Bekasi'),
(76, 1, 'Dzikra Muhamad', 5, 'Rumah Sakit Primaya Evasari Jakarta'),
(77, 1, 'Dzikra Muhamad', 6, 'Rumah Sakit Mitra keluarga'),
(78, 1, 'Dzikra Muhamad', 7, 'Rumah Sakit Anna Medika'),
(79, 1, 'Dzikra Muhamad', 8, 'Rumah Sakit Siloam Kebun jeruk'),
(80, 1, 'Dzikra Muhamad', 1, 'Rumah Sakit Hermina Bekasi'),
(81, 1, 'Dzikra Muhamad', 2, 'Rumah Sakit Cipto Mangunkusumo Jakarta'),
(82, 1, 'Dzikra Muhamad', 3, 'Rumah Sakit Gatot Subroto Jakarta'),
(83, 1, 'Dzikra Muhamad', 4, 'Rumah Sakit Primaya Bekasi'),
(84, 1, 'Dzikra Muhamad', 5, 'Rumah Sakit Primaya Evasari Jakarta'),
(85, 1, 'Dzikra Muhamad', 6, 'Rumah Sakit Mitra keluarga'),
(86, 1, 'Dzikra Muhamad', 7, 'Rumah Sakit Anna Medika'),
(87, 1, 'Dzikra Muhamad', 8, 'Rumah Sakit Siloam Kebun jeruk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datarumahsakit`
--

CREATE TABLE `datarumahsakit` (
  `id_rumahsakit` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `grade` char(2) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notelprs` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datarumahsakit`
--

INSERT INTO `datarumahsakit` (`id_rumahsakit`, `nama`, `grade`, `email`, `notelprs`, `alamat`, `foto`) VALUES
(1, 'Rumah Sakit Hermina Bekasi', 'A', 'hermina@gmail.com', '08098765678', 'Bekasi Timur', 'hermina.jpg'),
(2, 'Rumah Sakit Cipto Mangunkusumo Jakarta', 'A', 'cipto@gmail.com', '08729283920', 'Jakarta Pusat', 'cipto.jpg'),
(3, 'Rumah Sakit Gatot Subroto Jakarta', 'A', 'gatot@gmail.com', '08678987', 'Jakarta Pusat', 'gatot.jpg'),
(4, 'Rumah Sakit Primaya Bekasi', 'A', 'primayabek@gmail.com', '087654456789', 'Bekasi Utara', 'primayabekasi.webp'),
(5, 'Rumah Sakit Primaya Evasari Jakarta', 'A', 'primayaeva@gmail.com', '082823292748', 'Jakarta Pusat', 'primayaevasari.webp'),
(6, 'Rumah Sakit Mitra keluarga', 'A', 'mitra@gmail.com', '089876556', 'Bekasi Barat', 'mitrakeluarga.jpeg'),
(7, 'Rumah Sakit Anna Medika', 'A', 'anna@gmail.com', '0809876780989', 'Bekasi Utara', 'anna.jpg'),
(8, 'Rumah Sakit Siloam Kebun jeruk', 'A', 'siloam@gmail.com', '089876789989', 'Jakarta Selatan', 'siloam.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(11, 1137341312, 574615850, 'halo dzikra'),
(12, 574615850, 1137341312, 'hai doc'),
(13, 1137341312, 574615850, 'hai doccc'),
(14, 1137341312, 574615850, 'malam'),
(15, 574615850, 1137341312, 'iyaaa dok'),
(16, 1137341312, 574615850, 'haiii doc'),
(17, 574615850, 1137341312, 'hai juga doc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orderan`
--

CREATE TABLE `orderan` (
  `id_orderan` int(11) NOT NULL,
  `id_doctor` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `namapaket` varchar(255) NOT NULL,
  `idpesan` int(11) NOT NULL,
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orderan`
--

INSERT INTO `orderan` (`id_orderan`, `id_doctor`, `id_client`, `tanggal`, `namapaket`, `idpesan`, `pesan`) VALUES
(16, 8, 1, '2022-12-14', '', 0, 'Dzikra Muhamad'),
(17, 8, 1, '2022-12-14', '', 0, 'Dzikra Muhamad'),
(18, 8, 1, '2022-12-23', '', 0, 'Dzikra Muhamad'),
(19, 8, 1, '2022-12-25', '', 0, 'Dzikra Muhamad'),
(20, 8, 1, '2022-12-28', '', 0, 'Dzikra Muhamad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelianpaket`
--

CREATE TABLE `pembelianpaket` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembelianpaket`
--

INSERT INTO `pembelianpaket` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`) VALUES
(13, 17, 3, 1),
(14, 18, 3, 1),
(15, 19, 2, 1),
(16, 20, 3, 1),
(17, 21, 3, 1),
(18, 22, 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `idpesan` int(11) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `id_doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`idpesan`, `pesan`, `id_doctor`) VALUES
(13, 'Dzikra Muhamad', 8),
(14, 'Dzikra Muhamad', 8),
(15, 'Dzikra Muhamad', 8),
(16, 'Dzikra Muhamad', 8),
(17, 'Dzikra Muhamad', 8),
(18, 'Dzikra Muhamad', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `price` int(255) NOT NULL,
  `chat` varchar(255) NOT NULL,
  `respons` varchar(255) NOT NULL,
  `saved` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `best` varchar(255) NOT NULL,
  `freeregis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `price`, `chat`, `respons`, `saved`, `time`, `best`, `freeregis`) VALUES
(1, 'Bronze Packet', 25000, 'One Chat', 'Fast Response Chat', 'Saved Diagnostic Result', '25 Minutes', '', ''),
(2, 'Silver Packet', 35000, 'One Chat', 'Fast Response Chat', 'Saved Diagnostic Result', '35 Minutes', 'Our Best Doctor', ''),
(3, 'Gold Packet', 40000, 'One Chat', 'Fast Response Chat', 'Saved Diagnostic Result', '40 Minutes', 'Our Best Doctor', 'Free Registration Hospital');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasipasienrumahsakit`
--

CREATE TABLE `registrasipasienrumahsakit` (
  `id_register` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `id_rumahsakit` int(11) NOT NULL,
  `namars` varchar(255) NOT NULL,
  `appointment` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `registrasipasienrumahsakit`
--

INSERT INTO `registrasipasienrumahsakit` (`id_register`, `id_client`, `fullname`, `nik`, `id_rumahsakit`, `namars`, `appointment`, `tanggal`) VALUES
(2, 1, 'Dzikra Muhamad Shafi', '91823092180', 1, 'Hermina', '2022-12-14', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(12, 574615850, 'Robert', 'Sitorus', 'robet@gmail.com', '202cb962ac59075b964b07152d234b70', '1670980190robert.jpeg', 'Active now'),
(13, 1137341312, 'Dzikra', 'Muhamad', 'dzikramuhamad@gmail.com', '202cb962ac59075b964b07152d234b70', '1670982232luffy1.jpg', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `dataclient`
--
ALTER TABLE `dataclient`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeks untuk tabel `datadianogsapasien`
--
ALTER TABLE `datadianogsapasien`
  ADD PRIMARY KEY (`id_dianogsa`);

--
-- Indeks untuk tabel `datadoctor`
--
ALTER TABLE `datadoctor`
  ADD PRIMARY KEY (`id_doctor`);

--
-- Indeks untuk tabel `datapembayaran`
--
ALTER TABLE `datapembayaran`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `dataregis`
--
ALTER TABLE `dataregis`
  ADD PRIMARY KEY (`id_regis`);

--
-- Indeks untuk tabel `datarumahsakit`
--
ALTER TABLE `datarumahsakit`
  ADD PRIMARY KEY (`id_rumahsakit`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indeks untuk tabel `orderan`
--
ALTER TABLE `orderan`
  ADD PRIMARY KEY (`id_orderan`);

--
-- Indeks untuk tabel `pembelianpaket`
--
ALTER TABLE `pembelianpaket`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`idpesan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `registrasipasienrumahsakit`
--
ALTER TABLE `registrasipasienrumahsakit`
  ADD PRIMARY KEY (`id_register`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `dataclient`
--
ALTER TABLE `dataclient`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `datadianogsapasien`
--
ALTER TABLE `datadianogsapasien`
  MODIFY `id_dianogsa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `datadoctor`
--
ALTER TABLE `datadoctor`
  MODIFY `id_doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `datapembayaran`
--
ALTER TABLE `datapembayaran`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `dataregis`
--
ALTER TABLE `dataregis`
  MODIFY `id_regis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `datarumahsakit`
--
ALTER TABLE `datarumahsakit`
  MODIFY `id_rumahsakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `orderan`
--
ALTER TABLE `orderan`
  MODIFY `id_orderan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pembelianpaket`
--
ALTER TABLE `pembelianpaket`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `idpesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `registrasipasienrumahsakit`
--
ALTER TABLE `registrasipasienrumahsakit`
  MODIFY `id_register` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
