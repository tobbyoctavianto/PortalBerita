-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2020 at 10:32 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nuri`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'yogi123', '2d1850a2760728a9c607ae123d2c8c30', 'yogi Prayogi'),
(3, 'Maman', '*5747BF6763884D23444DC11F6F8E57086716C88B', 'Ade Maman Suherman');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `aktif` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `password`, `email`, `aktif`) VALUES
(1, 'Ahmad Firdaus', '827ccb0eea8a706c4c34a16891f84e7b', 'firdaus@gmail.com', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(70) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(70) NOT NULL,
  `teks_berita` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(1, 'ini adalah judul berita yang pertama', 1, 'nopic.jpg', 'ini adalah text berita paragraf \r\npertama\r\n\r\nini ada...', '2015-08-10 00:00:00', 1, 9),
(2, 'ini adalah judul berita yang ke dua', 2, 'nopic.jpg', 'ini judul berita kedua, paragraf\r\npertama\r\n\r\nini ad..', '2015-08-16 00:00:00', 1, 4),
(3, 'ini adalah judul berita yang ketiga', 3, 'nopic.jpg', 'teks berita yang ketiga, paragraf\r\npertama', '2015-08-03 00:00:00', 1, 10),
(5, 'tahuuuuuuuuuuuu', 2, '5c112f4d3add6.64px.ico', 'tahu adalah makanan yang enak dan murah', '2020-04-15 00:25:34', 2, 1),
(6, 'test', 2, 'B612_20170515_131410.jpg', 'tes kesehatan yang terbaik', '2020-04-15 00:26:38', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id_iklan` int(11) NOT NULL,
  `nm_perusahaan` varchar(50) NOT NULL,
  `isi_iklan` varchar(200) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `id_admin` int(11) NOT NULL,
  `hargasewa` double NOT NULL,
  `lamasewa` int(11) NOT NULL,
  `totalharga` double NOT NULL,
  `aktif` bit(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `link` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id_iklan`, `nm_perusahaan`, `isi_iklan`, `gambar`, `tgl_mulai`, `tgl_akhir`, `id_admin`, `hargasewa`, `lamasewa`, `totalharga`, `aktif`, `email`, `link`) VALUES
(1, 'elex', 'Koleksi Buku Terlengkap', 'iklan3.jpg', '2015-08-08', '2015-08-09', 2, 15000, 2, 30000, b'0', 'mail@elex.com', 'http://elexbuku.com'),
(2, 'Biznet', 'Jaringan luas', 'iklan2.jpg', '2015-08-07', '2015-08-07', 1, 15000, 1, 15000, b'0', 'mail@biznet.com', 'http://biznet.com'),
(3, 'pekalongan', 'sepertinya harus disediakan yang ada dulu apa tidaknya yakk\r\n', '5c112f4d3add6.64px.ico', '2020-04-14', '2020-04-16', 2, 20000, 3, 60000, b'0', 'yuliadi846@gmail.com', 'http://pekalongan.co.id'),
(4, 'blora', 'iklan gratis', 'DSC_0703.JPG', '2020-04-16', '2020-04-17', 2, 10000, 2, 20000, b'0', 'brora@gmail.com', 'http://blora.co.id');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'nasional'),
(2, 'olah raga'),
(3, 'teknologi');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tgl_komentar` datetime NOT NULL,
  `isi_komentar` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_1`
--

CREATE TABLE `table_1` (
  `a_nama1` varchar(20) NOT NULL,
  `a_nama2` varchar(70) NOT NULL,
  `b_tgl1` date NOT NULL,
  `b_tgl2` date NOT NULL,
  `c_rupiah` double NOT NULL,
  `c_jml` int(11) NOT NULL,
  `d_array_hari` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_1`
--

INSERT INTO `table_1` (`a_nama1`, `a_nama2`, `b_tgl1`, `b_tgl2`, `c_rupiah`, `c_jml`, `d_array_hari`) VALUES
('deni', 'gunawan', '2020-08-12', '2020-08-12', 30000, 2, 'senin selasa rabu kamis jumat sabtu minggu'),
('robi', 'robi aziz zuama', '2020-09-01', '2020-08-13', 70000, 1, ''),
('ali', 'ali idrus', '2020-09-02', '2020-08-13', 0, 0, ''),
('gani', 'muhammad abdul gani', '2020-10-10', '2020-10-20', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `table_2`
--

CREATE TABLE `table_2` (
  `c_rupiah` double NOT NULL,
  `c_jml` int(11) NOT NULL,
  `c_tot_jml` int(11) NOT NULL,
  `c_tgl_pindah` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_3`
--

CREATE TABLE `table_3` (
  `c_rupiah` double NOT NULL,
  `c_jml` int(11) NOT NULL,
  `c_tot_jml` int(11) NOT NULL,
  `c_tgl_pindah` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id_iklan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
