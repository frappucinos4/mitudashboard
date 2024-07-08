-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 05:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_sistem_informasi_klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(30) NOT NULL,
  `nama_lengkap` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `password` varchar(16) NOT NULL,
  `level` enum('administrator') NOT NULL DEFAULT 'administrator',
  `avatar` enum('avatar.jpg') NOT NULL DEFAULT 'avatar.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_lengkap`, `email`, `uname`, `password`, `level`, `avatar`) VALUES
('ADM001', 'dudududu', 'admin@gmail.com', 'admin', 'admin', '', 'avatar.jpg'),
('ADM002', 'skldmakldnm', 'rajafawwaz80@gmail.com', '1232', '123', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id_diagnosa` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `keluhan_pasien` varchar(200) NOT NULL,
  `hasil_diagnosa` varchar(200) NOT NULL,
  `penatalaksanaan` enum('Rawat Jalan','Rawat Inap','Rujuk','Lainnya') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT 'Laki-laki',
  `umur` int(10) DEFAULT 0,
  `gaji_dokter` int(30) DEFAULT 3000000,
  `email` varchar(60) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `password` varchar(16) NOT NULL,
  `level` enum('dokter') NOT NULL DEFAULT 'dokter',
  `avatar` enum('avatar.jpg') NOT NULL DEFAULT 'avatar.jpg',
  `klinik` enum('Klinik A','Klinik B','Klinik C') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama_lengkap`, `jenis_kelamin`, `umur`, `gaji_dokter`, `email`, `uname`, `password`, `level`, `avatar`, `klinik`) VALUES
('DOK005', 'Wawan Setiawa', 'Laki-laki', 23, 4000000, 'dokter@gmail.com', 'wawan', '123', '', 'avatar.jpg', ''),
('DOK006', 'Safitri Ayu', 'Perempuan', 51, 9000000, 'dokter@gmail.com', 'safitri', '123', 'dokter', 'avatar.jpg', ''),
('DOK007', 'Rian Hidayat', 'Laki-laki', 25, 5000000, 'dokter@gmail.com', 'rian', '123', 'dokter', 'avatar.jpg', ''),
('DOK008', 'Dani Hermawan', 'Laki-laki', 35, 6000000, 'dokter@gmail.com', 'dani', '123', 'dokter', 'avatar.jpg', ''),
('DOK009', 'Nita Daniyatun', 'Perempuan', 25, 5000000, 'dokter@gmail.com', 'nita', '123', 'dokter', 'avatar.jpg', ''),
('DOK010', 'Mili Wilian', 'Perempuan', 28, 5000000, 'dokter@gmail.com', 'mili', '123', 'dokter', 'avatar.jpg', ''),
('DOK011', 'Marshel Saraun', 'Laki-laki', 23, 4000000, 'dokter@gmail.com', 'marshel', '123', 'dokter', 'avatar.jpg', ''),
('DOK012', 'Nacha Saraun', 'Perempuan', 23, 4000000, 'dokter@gmail.com', 'nacha', '123', 'dokter', 'avatar.jpg', ''),
('DOK013', 'Bayu Mandalika', 'Laki-laki', 25, 5000000, 'dokter@gmail.com', 'bayu', '123', 'dokter', 'avatar.jpg', ''),
('DOK014', 'Juan Burnama', 'Laki-laki', 20, 4000000, 'dokter@gmail.com', 'juan', '123', 'dokter', 'avatar.jpg', ''),
('DOK015', 'Candra Sidauruk', 'Laki-laki', 22, 4000000, 'dokter@gmail.com', 'chandra', '123', 'dokter', 'avatar.jpg', ''),
('DOK016', 'Kory Ubi', 'Perempuan', 29, 5000000, 'dokter@gmail.com', 'kory', '123', 'dokter', 'avatar.jpg', ''),
('DOK017', 'Chika Lestari', 'Perempuan', 32, 6000000, 'dokter@gmail.com', 'c.les', '123', 'dokter', 'avatar.jpg', ''),
('DOK018', 'Chika Elika', 'Perempuan', 22, 4000000, 'dokter@gmail.com', 'c.elika', '123', 'dokter', 'avatar.jpg', ''),
('DOK019', 'Ayu Dwi Lestari', 'Perempuan', 42, 8000000, 'dokter@gmail.com', 'ayu', '123', 'dokter', 'avatar.jpg', ''),
('DOK020', 'Anang Riyadi', 'Laki-laki', 32, 6000000, 'dokter@gmail.com', 'anang', '123', 'dokter', 'avatar.jpg', ''),
('DOK021', 'vladimir', 'Laki-laki', 12, 1200, 'rajafawwaz80@gmail.com', '234454', '666', '', 'avatar.jpg', ''),
('DOK022', 'vladimir', 'Laki-laki', 12, 1200, 'rajafawwaz80@gmail.com', '234454', '666', '', 'avatar.jpg', ''),
('DOK023', 'skldmakldnm', 'Laki-laki', 12, 40000, 'rajafawwaz80@gmail.com', 'rewi', '12345', '', 'avatar.jpg', ''),
('DOK024', 'aziz', 'Laki-laki', 123, 5000000, 'fthf@gmail.com', 'azizss', '1234', '', 'avatar.jpg', ''),
('DOK025', 'aziz', 'Laki-laki', 123, 5000000, 'fthf@gmail.com', 'azizss', '1234', '', 'avatar.jpg', ''),
('DOK026', 'Syarif Kontol', 'Laki-laki', 34, 44444, 'syarifjenggot@gmaill.com', 'fef', 'efd', '', 'avatar.jpg', ''),
('DOK027', '5etert', 'Laki-laki', 0, 0, 'fthf@gmail.com', '', '', '', 'avatar.jpg', 'Klinik A'),
('DOK028', '5etert', 'Laki-laki', 0, 0, 'fthf@gmail.com', '', '', '', 'avatar.jpg', 'Klinik B'),
('DOK029', 'skldmakldnm', 'Laki-laki', 0, 0, 'rajafawwaz80@gmail.com', '', '', '', 'avatar.jpg', 'Klinik C'),
('DOK030', 'vladimir', 'Laki-laki', 0, 0, 'rajafawwaz80@gmail.com', '', '', '', 'avatar.jpg', 'Klinik A'),
('DOK031', 'syarif', 'Laki-laki', 0, 0, 'syarifjenggot@gmaill.com', '', '', '', 'avatar.jpg', 'Klinik B'),
('DOK032', 'Syarif Kontol', 'Laki-laki', 0, 0, 'syarifjenggot@gmaill.com', '', '', '', 'avatar.jpg', 'Klinik C'),
('DOK033', 'vladimir', 'Laki-laki', 12, 50000, 'rajafawwaz80@gmail.com', 'jenggotz', '12345', '', 'avatar.jpg', 'Klinik C'),
('DOK034', 'bambang', 'Laki-laki', 24, 5000000, 'bambang@gmail.com', '345', '34567', '', 'avatar.jpg', 'Klinik A'),
('DOK035', 'pugar huda mantoro', 'Laki-laki', 36, 25000000, 'bambang@gmail.com', 'pugaros', '123456', '', 'avatar.jpg', 'Klinik A');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(55) NOT NULL,
  `harga_konsultasi` int(255) NOT NULL,
  `jam_konsultasi` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `tanggal_konsultasi` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `id_pasien` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tindakan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `harga_konsultasi`, `jam_konsultasi`, `tanggal_konsultasi`, `id_pasien`, `status`, `tindakan`) VALUES
(11, 0, '0000-00-00 00:00:00.000000', '2024-07-04 00:00:00.000000', 3333, '', ''),
(12, 0, '0000-00-00 00:00:00.000000', '2024-07-10 00:00:00.000000', 3333, '', ''),
(13, 0, '0000-00-00 00:00:00.000000', '2024-07-10 00:00:00.000000', 34343, '', ''),
(14, 0, '0000-00-00 00:00:00.000000', '2024-07-11 00:00:00.000000', 34343, '', ''),
(15, 0, '0000-00-00 00:00:00.000000', '2024-07-09 00:00:00.000000', 34343, '', ''),
(16, 0, '0000-00-00 00:00:00.000000', '2024-07-10 00:00:00.000000', 34343, '', ''),
(17, 121212, '0000-00-00 00:00:00.000000', '2024-07-24 00:00:00.000000', 3333, '', ''),
(18, 121212, '0000-00-00 00:00:00.000000', '2024-07-17 00:00:00.000000', 222, '', ''),
(19, 1, '0000-00-00 00:00:00.000000', '1212-12-12 00:00:00.000000', 123, 'sudah ditindak', 'facial'),
(20, 2, '0000-00-00 00:00:00.000000', '2024-07-13 00:00:00.000000', 123, 'sudah ditindak', 'laser'),
(21, 2, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 123, 'sudah ditindak', 'facial'),
(22, 2, '0000-00-00 00:00:00.000000', '2343-03-12 00:00:00.000000', 123, 'sudah ditindak', 'laser'),
(23, 121212, '0000-00-00 00:00:00.000000', '2393-03-12 00:00:00.000000', 123, 'sudah ditindak', 'facial');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` varchar(30) NOT NULL,
  `nama_obat` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga` int(30) NOT NULL,
  `stok` varchar(15) NOT NULL,
  `jenis_produk` enum('Pelembab','Facewash','Sunscreen','Bedak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama_obat`, `harga`, `stok`, `jenis_produk`) VALUES
('OBT003', 'Sangobion', 15000, '10', ''),
('OBT004', 'Sinatren', 2500, '15', ''),
('OBT005', 'Fatigon', 6000, '20', ''),
('OBT006', 'Oskadon', 3500, '35', ''),
('OBT007', 'gonia', 12000, '12', ''),
('OBT008', 'gonia', 12000, '12', ''),
('OBT009', 'gonia', 34, '12', ''),
('OBT010', 'pugar', 15000, '12', ''),
('OBT011', 'aziz', 12000, '2', ''),
('OBT012', 'ikhsan ', 15000, '2', 'Sunscreen');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` varchar(30) NOT NULL,
  `nama_lengkap` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `umur` int(5) NOT NULL,
  `no_tlp` varchar(30) DEFAULT NULL,
  `alamat` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `password` varchar(16) NOT NULL,
  `level` enum('pasien') NOT NULL DEFAULT 'pasien',
  `avatar` enum('avatar.jpg') NOT NULL DEFAULT 'avatar.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama_lengkap`, `jenis_kelamin`, `umur`, `no_tlp`, `alamat`, `email`, `uname`, `password`, `level`, `avatar`) VALUES
('', '', 'Laki-laki', 0, NULL, '', '', '', '', '', ''),
('PAS001', 'Defrianta', 'Laki-laki', 23, '0823-9959-3333', 'Jalan Pelaminan', 'qqq@gmail.com', 'PAS001', '12456', '', 'avatar.jpg'),
('PAS002', 'Muhammad Hadi', 'Laki-laki', 25, '0823-9999-3333', 'Jalan Pelaminan', '-@gmail.com', 'hadi.purnomo', '123', 'pasien', 'avatar.jpg'),
('PAS003', 'Ghea Dwi Insani', 'Perempuan', 23, '0823-9999-3354', 'Jalan Pelaminan', '-@gmail.com', 'ahmad', '123', 'pasien', 'avatar.jpg'),
('PAS004', 'Melati Nuriza Putri', 'Perempuan', 26, '0823-9999-3333', 'Jalan Pelaminan', '-@gmail.com', 'dahlan', '123', 'pasien', 'avatar.jpg'),
('PAS005', 'Rodly Prabhawa', 'Laki-laki', 23, '0823-3999-3354', 'Jalan Pelaminan', '-@gmail.com', 'wawan', '123', 'pasien', 'avatar.jpg'),
('PAS006', 'Devi Yundri Bukit', 'Perempuan', 51, '0823-3989-3354', 'Jalan Pelaminan', '-@gmail.com', 'safitri', '123', 'pasien', 'avatar.jpg'),
('PAS007', 'Inggrid Paulina', 'Laki-laki', 25, '0823-9999-3333', 'Jalan Pelaminan', '-@gmail.com', 'rian', '123', 'pasien', 'avatar.jpg'),
('PAS008', 'Maya Rizki Yolanda Hasibuan', 'Laki-laki', 35, '0823-3989-3354', 'Jalan Pelaminan', '-@gmail.com', 'dani', '123', 'pasien', 'avatar.jpg'),
('PAS009', 'Dyah Purwita Sari', 'Perempuan', 25, '0823-9999-3333', 'Jalan Pelaminan', '-@gmail.com', 'nita', '123', 'pasien', 'avatar.jpg'),
('PAS010', 'Fridoni Wihance Saragih', 'Perempuan', 28, '0823-9999-3333', 'Jalan Pelaminan', '-@gmail.com', 'mili', '123', 'pasien', 'avatar.jpg'),
('PAS011', 'Lisna Dewi', 'Laki-laki', 23, '0823-3999-3354', 'Jalan Pelaminan', '-@gmail.com', 'marshel', '123', 'pasien', 'avatar.jpg'),
('PAS012', 'Jusniar Tanjung', 'Perempuan', 23, '0823-3999-3354', 'Jalan Pelaminan', '-@gmail.com', 'nacha', '123', 'pasien', 'avatar.jpg'),
('PAS013', 'Andayani Simbolon', 'Laki-laki', 25, '0823-9999-3333', 'Jalan Pelaminan', '-@gmail.com', 'bayu', '123', 'pasien', 'avatar.jpg'),
('PAS014', 'Laily Muhibbah', 'Laki-laki', 20, '0823-3999-3354', 'Jalan Pelaminan', '-@gmail.com', 'juan', '123', 'pasien', 'avatar.jpg'),
('PAS015', 'Bagus Setiawan', 'Perempuan', 22, '0823-3999-3354', 'Jalan Pelaminan', '-@gmail.com', 'chandra', '123', 'pasien', 'avatar.jpg'),
('PAS016', 'Muhammad Arif Faisal', 'Perempuan', 29, '0823-9999-3333', 'Jalan Pelaminan', '-@gmail.com', 'kory', '123', 'pasien', 'avatar.jpg'),
('PAS017', 'Jenni Riana Sihombing', 'Perempuan', 32, '0823-3989-3354', 'Jalan Pelaminan', '-@gmail.com', 'c.les', '123', 'pasien', 'avatar.jpg'),
('PAS018', 'Christiyen Srimelva Saragih', 'Perempuan', 22, '0823-3999-3354', 'Jalan Pelaminan', '-@gmail.com', 'c.elika', '123', 'pasien', 'avatar.jpg'),
('PAS019', 'Fernando Simbolon', 'Perempuan', 42, '0823-3989-3354', 'Jalan Pelaminan', '-@gmail.com', 'ayu', '123', 'pasien', 'avatar.jpg'),
('PAS021', '5etert', 'Laki-laki', 45, 'dhrftg', '546457', 'fthf@gmail.com', 'jenggotz', '123', '', ''),
('PAS022', 'fhfthfhffth', 'Laki-laki', 354, 'fhtfg', '5646', 'fhf@gmail.com', 'fhfth', 'fhfthf', '', ''),
('PAS023', 'fhfthfhffth', 'Laki-laki', 354, 'fhtfg', '5646', 'fhf@gmail.com', 'fhfth', 'fhfthf', '', ''),
('PAS024', 'rendi juli', 'Laki-laki', 14, 'jdhaujdhajsdh', '089374873', 'gnsdbajdb@gmail.com', '1234555', '5678', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` varchar(30) NOT NULL,
  `nama_lengkap` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `umur` int(10) NOT NULL,
  `no_tlp` varchar(30) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `password` varchar(16) NOT NULL,
  `level` enum('pegawai') NOT NULL DEFAULT 'pegawai',
  `avatar` enum('avatar.jpg') NOT NULL DEFAULT 'avatar.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama_lengkap`, `jenis_kelamin`, `umur`, `no_tlp`, `alamat`, `email`, `uname`, `password`, `level`, `avatar`) VALUES
('PEG001', 'Christian Inovrianto Bangun', 'Laki-laki', 27, '0823-4672-4344', 'Jalan Kemenangan', 'pegawai@gmail.com', 'PEG001', '123', 'pegawai', 'avatar.jpg'),
('PEG002', 'Suci Listia Novrita', 'Perempuan', 25, '0823-3568-1212', 'Jalan Kemenangan', 'pegawai@gmail.com', 'hadi.purnomo', '123', 'pegawai', 'avatar.jpg'),
('PEG003', 'Verawati Br Kacaribu', 'Perempuan', 23, '0823-1580-3354', 'Jalan Kemenangan', 'pegawai@gmail.com', 'ahmad', '123', 'pegawai', 'avatar.jpg'),
('PEG004', 'Muhammad Wahyu Suryo Nugroho', 'Laki-laki', 26, '0823-3432-4225', 'Jalan Kemenangan', 'pegawai@gmail.com', 'dahlan', '123', 'pegawai', 'avatar.jpg'),
('PEG005', 'Novel Saragih', 'Laki-laki', 23, '0823-8907-4326', 'Jalan Kemenangan', 'pegawai@gmail.com', 'wawan', '123', 'pegawai', 'avatar.jpg'),
('PEG006', 'Dedek Kurniawan', 'Laki-laki', 31, '0823-0664-7379', 'Jalan Kemenangan', 'pegawai@gmail.com', 'safitri', '123', 'pegawai', 'avatar.jpg'),
('PEG007', 'Iin Puspita Dewi', 'Perempuan', 25, '0823-2145-8954', 'Jalan Kemenangan', 'pegawai@gmail.com', 'rian', '123', 'pegawai', 'avatar.jpg'),
('PEG008', 'Syahfitri,St', 'Perempuan', 35, '0823-7589-7567', 'Jalan Kemenangan', 'pegawai@gmail.com', 'dani', '123', 'pegawai', 'avatar.jpg'),
('PEG009', 'Yohana Elisabet Hutapea', 'Perempuan', 25, '0823-9697-8867', 'Jalan Kemenangan', 'pegawai@gmail.com', 'nita', '123', 'pegawai', 'avatar.jpg'),
('PEG010', 'Daniel Elbana Sitompul', 'Perempuan', 28, '0823-5756-8672', 'Jalan Kemenangan', 'pegawai@gmail.com', 'mili', '123', 'pegawai', 'avatar.jpg'),
('PEG011', 'Febri Gunawan', 'Laki-laki', 22, '0823-7325-1712', 'Jalan Kemenangan', 'pegawai@gmail.com', 'marshel', '123', 'pegawai', 'avatar.jpg'),
('PEG012', 'Sundari Hamzah', 'Perempuan', 25, '0823-5789-3889', 'Jalan Kemenangan', 'pegawai@gmail.com', 'nacha', '123', 'pegawai', 'avatar.jpg'),
('PEG013', 'Sabam Gabriel Juliwon Sinabang', 'Laki-laki', 25, '0823-6678-4434', 'Jalan Kemenangan', 'pegawai@gmail.com', 'bayu', '123', 'pegawai', 'avatar.jpg'),
('PEG014', 'Dessy Rina Mehulina Tarigan', 'Perempuan', 27, '0823-3425-0876', 'Jalan Kemenangan', 'pegawai@gmail.com', 'juan', '123', 'pegawai', 'avatar.jpg'),
('PEG015', 'Irfan Affandy Hutasuhut', 'Laki-laki', 22, '0823-767-3354', 'Jalan Kemenangan', 'pegawai@gmail.com', 'chandra', '123', 'pegawai', 'avatar.jpg'),
('PEG016', 'Dina Sofiana', 'Perempuan', 29, '0823-563-6765', 'Jalan Kemenangan', 'pegawai@gmail.com', 'kory', '123', 'pegawai', 'avatar.jpg'),
('PEG017', 'Ika Yusnita Sari', 'Perempuan', 36, '0823-3213-5423', 'Jalan Kemenangan', 'pegawai@gmail.com', 'c.les', '123', 'pegawai', 'avatar.jpg'),
('PEG018', 'Fanny Khairunnisa', 'Perempuan', 22, '0823-4432-1317', 'Jalan Kemenangan', 'pegawai@gmail.com', 'c.elika', '123', 'pegawai', 'avatar.jpg'),
('PEG019', 'Arya Maseda', 'Perempuan', 22, '0823-1342-3432', 'Jalan Kemenangan', 'pegawai@gmail.com', 'ayu', '123', 'pegawai', 'avatar.jpg'),
('PEG020', 'Putri Rahmadani Damanik', 'Perempuan', 32, '0823-3321-4444', 'Jalan Kemenangan', 'pegawai@gmail.com', 'anang', '123', 'pegawai', 'avatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `password` varchar(16) NOT NULL,
  `level` enum('pasien','dokter','administrator','pegawai') NOT NULL,
  `avatar` enum('avatar.jpg') NOT NULL DEFAULT 'avatar.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama_lengkap`, `email`, `uname`, `password`, `level`, `avatar`) VALUES
('ADM002', 'skldmakldnm', 'rajafawwaz80@gmail.com', '123', '123', 'administrator', 'avatar.jpg'),
('DOK005', 'Wawan Setiawa', 'dokter@gmail.com', 'wawan', '123', '', 'avatar.jpg'),
('DOK006', 'Safitri Ayu', 'dokter@gmail.com', 'safitri', '123', 'dokter', 'avatar.jpg'),
('DOK007', 'Rian Hidayat', 'dokter@gmail.com', 'rian', '123', 'dokter', 'avatar.jpg'),
('DOK008', 'Dani Hermawan', 'dokter@gmail.com', 'dani', '123', 'dokter', 'avatar.jpg'),
('DOK009', 'Nita Daniyatun', 'dokter@gmail.com', 'nita', '123', 'dokter', 'avatar.jpg'),
('DOK010', 'Mili Wilian', 'dokter@gmail.com', 'mili', '123', 'dokter', 'avatar.jpg'),
('DOK011', 'Marshel Saraun', 'dokter@gmail.com', 'marshel', '123', 'dokter', 'avatar.jpg'),
('DOK012', 'Nacha Saraun', 'dokter@gmail.com', 'nacha', '123', 'dokter', 'avatar.jpg'),
('DOK013', 'Bayu Mandalika', 'dokter@gmail.com', 'bayu', '123', 'dokter', 'avatar.jpg'),
('DOK014', 'Juan Burnama', 'dokter@gmail.com', 'juan', '123', 'dokter', 'avatar.jpg'),
('DOK015', 'Candra Sidauruk', 'dokter@gmail.com', 'chandra', '123', 'dokter', 'avatar.jpg'),
('DOK016', 'Kory Ubi', 'dokter@gmail.com', 'kory', '123', 'dokter', 'avatar.jpg'),
('DOK017', 'Chika Lestari', 'dokter@gmail.com', 'c.les', '123', 'dokter', 'avatar.jpg'),
('DOK018', 'Chika Elika', 'dokter@gmail.com', 'c.elika', '123', 'dokter', 'avatar.jpg'),
('DOK019', 'Ayu Dwi Lestari', 'dokter@gmail.com', 'ayu', '123', 'dokter', 'avatar.jpg'),
('DOK020', 'Anang Riyadi', 'dokter@gmail.com', 'anang', '123', 'dokter', 'avatar.jpg'),
('PAS001', 'Defrianta', 'qqq@gmail.com', 'PAS001', '12456', '', 'avatar.jpg'),
('PAS002', 'Muhammad Hadi', 'pasien@gmail.com', 'hadi.purnomo', '123', 'pasien', 'avatar.jpg'),
('PAS003', 'Ghea Dwi Insani', 'pasien@gmail.com', 'ahmad', '123', 'pasien', 'avatar.jpg'),
('PAS004', 'Melati Nuriza Putri', 'pasien@gmail.com', 'dahlan', '123', 'pasien', 'avatar.jpg'),
('PAS005', 'Rodly Prabhawa', 'pasien@gmail.com', 'wawan', '123', 'pasien', 'avatar.jpg'),
('PAS006', 'Devi Yundri Bukit', 'pasien@gmail.com', 'safitri', '123', 'pasien', 'avatar.jpg'),
('PAS007', 'Inggrid Paulina', 'pasien@gmail.com', 'rian', '123', 'pasien', 'avatar.jpg'),
('PAS008', 'Maya Rizki Yolanda Hasibuan', 'pasien@gmail.com', 'dani', '123', 'pasien', 'avatar.jpg'),
('PAS009', 'Dyah Purwita Sari', 'pasien@gmail.com', 'nita', '123', 'pasien', 'avatar.jpg'),
('PAS010', 'Fridoni Wihance Saragih', 'pasien@gmail.com', 'mili', '123', 'pasien', 'avatar.jpg'),
('PAS011', 'Lisna Dewi', 'pasien@gmail.com', 'marshel', '123', 'pasien', 'avatar.jpg'),
('PAS012', 'Jusniar Tanjung', 'pasien@gmail.com', 'nacha', '123', 'pasien', 'avatar.jpg'),
('PAS013', 'Andayani Simbolon', 'pasien@gmail.com', 'bayu', '123', 'pasien', 'avatar.jpg'),
('PAS014', 'Laily Muhibbah', 'pasien@gmail.com', 'juan', '123', 'pasien', 'avatar.jpg'),
('PAS015', 'Bagus Setiawan', 'pasien@gmail.com', 'chandra', '123', 'pasien', 'avatar.jpg'),
('PAS016', 'Muhammad Arif Faisal', 'pasien@gmail.com', 'kory', '123', 'pasien', 'avatar.jpg'),
('PAS017', 'Jenni Riana Sihombing', 'pasien@gmail.com', 'c.les', '123', 'pasien', 'avatar.jpg'),
('PAS018', 'Christiyen Srimelva Saragih', 'pasien@gmail.com', 'c.elika', '123', 'pasien', 'avatar.jpg'),
('PAS019', 'Fernando Simbolon', 'pasien@gmail.com', 'ayu', '123', 'pasien', 'avatar.jpg'),
('PAS021', '5etert', 'fthf@gmail.com', 'jenggotz', '123', '', ''),
('PAS022', 'fhfthfhffth', 'fhf@gmail.com', 'fhfth', 'fhfthf', '', ''),
('PAS023', 'fhfthfhffth', 'fhf@gmail.com', 'fhfth', 'fhfthf', '', ''),
('PAS024', 'rendi juli', 'gnsdbajdb@gmail.com', '1234555', '5678', '', ''),
('PEG001', 'Christian Inovrianto Bangun', 'pegawai@gmail.com', 'PEG001', '123', 'pegawai', 'avatar.jpg'),
('PEG002', 'Suci Listia Novrita', 'pegawai@gmail.com', 'hadi.purnomo', '123', 'pegawai', 'avatar.jpg'),
('PEG003', 'Verawati Br Kacaribu', 'pegawai@gmail.com', 'ahmad', '123', 'pegawai', 'avatar.jpg'),
('PEG004', 'Muhammad Wahyu Suryo Nugroho', 'pegawai@gmail.com', 'dahlan', '123', 'pegawai', 'avatar.jpg'),
('PEG005', 'Novel Saragih', 'pegawai@gmail.com', 'wawan', '123', 'pegawai', 'avatar.jpg'),
('PEG006', 'Dedek Kurniawan', 'pegawai@gmail.com', 'safitri', '123', 'pegawai', 'avatar.jpg'),
('PEG007', 'Iin Puspita Dewi', 'pegawai@gmail.com', 'rian', '123', 'pegawai', 'avatar.jpg'),
('PEG008', 'Syahfitri,St', 'pegawai@gmail.com', 'dani', '123', 'pegawai', 'avatar.jpg'),
('PEG009', 'Yohana Elisabet Hutapea', 'pegawai@gmail.com', 'nita', '123', 'pegawai', 'avatar.jpg'),
('PEG010', 'Daniel Elbana Sitompul', 'pegawai@gmail.com', 'mili', '123', 'pegawai', 'avatar.jpg'),
('PEG011', 'Febri Gunawan', 'pegawai@gmail.com', 'marshel', '123', 'pegawai', 'avatar.jpg'),
('PEG012', 'Sundari Hamzah', 'pegawai@gmail.com', 'nacha', '123', 'pegawai', 'avatar.jpg'),
('PEG013', 'Sabam Gabriel Juliwon Sinabang', 'pegawai@gmail.com', 'bayu', '123', 'pegawai', 'avatar.jpg'),
('PEG014', 'Dessy Rina Mehulina Tarigan', 'pegawai@gmail.com', 'juan', '123', 'pegawai', 'avatar.jpg'),
('PEG015', 'Irfan Affandy Hutasuhut', 'pegawai@gmail.com', 'chandra', '123', 'pegawai', 'avatar.jpg'),
('PEG016', 'Dina Sofiana', 'pegawai@gmail.com', 'kory', '123', 'pegawai', 'avatar.jpg'),
('PEG017', 'Ika Yusnita Sari', 'pegawai@gmail.com', 'c.les', '123', 'pegawai', 'avatar.jpg'),
('PEG018', 'Fanny Khairunnisa', 'pegawai@gmail.com', 'c.elika', '123', 'pegawai', 'avatar.jpg'),
('PEG019', 'Arya Maseda', 'pegawai@gmail.com', 'ayu', '123', 'pegawai', 'avatar.jpg'),
('PEG020', 'Putri Rahmadani Damanik', 'pegawai@gmail.com', 'anang', '123', 'pegawai', 'avatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pasien` varchar(60) NOT NULL,
  `id_pegawai` varchar(60) NOT NULL,
  `id_obat` varchar(60) NOT NULL,
  `jenis_obat` varchar(30) NOT NULL,
  `harga_satuan` int(30) NOT NULL,
  `jumlah_obat` int(30) NOT NULL,
  `total_harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal`, `id_pasien`, `id_pegawai`, `id_obat`, `jenis_obat`, `harga_satuan`, `jumlah_obat`, `total_harga`) VALUES
('TRS003', '2019-06-13', 'Dyah Purwita Sari', 'Iin Puspita Dewi', 'Sinatren', 'Bubuk', 30000, 2, 4000),
('TRS004', '2020-11-26', 'Maya Rizki Yolanda Hasibuan', 'Iin Puspita Dewi', 'Sangobion', 'Kapsul', 2000, 1, 2000),
('TRS005', '2020-06-11', 'Melati Nuriza Putri', 'Christian Inovrianto Bangun', 'Paramex', 'Tablet', 5000, 3, 15000),
('TRS006', '2020-04-16', 'Dyah Purwita Sari', 'Muhammad Wahyu Suryo Nugroho', 'Fatigon', 'Sirup', 20000, 1, 20000),
('TRS007', '2021-10-06', 'Rangga Prasetya', 'Muhammad Wahyu Suryo Nugroho', 'Fatigon', 'Sirup', 3000, 1, 3000),
('TRS008', '2021-10-20', 'Lisna Dewi', 'Novel Saragih', 'Paramex', 'Tablet', 15000, 2, 30000),
('TRS009', '2024-06-13', 'syahid ', 'jennifer', 'sunscreen', 'Sirup', 12000, 1, 12000),
('TRS010', '2024-07-27', 'aksnaksn', 'asa,msa', 'adajndja', 'Toner', 122222, 12, 120000),
('TRS011', '2005-09-12', 'add', 'budi santoso', 'krimtonite', 'Toner', 12, 2, 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id_diagnosa`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id_diagnosa` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
