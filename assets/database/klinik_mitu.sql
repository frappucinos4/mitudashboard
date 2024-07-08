-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jul 2024 pada 12.04
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
-- Database: `klinik_mitu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(255) NOT NULL,
  `namaLengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `namaLengkap`, `email`, `password`) VALUES
(1, 'huda', 'huda@yahoo.com', '11234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `idDokter` int(11) NOT NULL,
  `namaDokter` varchar(255) DEFAULT NULL,
  `umurDokter` int(11) DEFAULT NULL,
  `spesialisasiDokter` varchar(255) DEFAULT NULL,
  `fotoDokter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`idDokter`, `namaDokter`, `umurDokter`, `spesialisasiDokter`, `fotoDokter`) VALUES
(1, 'Dr. Budi Hartono', 45, 'Dermatologi Umum', 'https://lorempixel.com/400/200/people/'),
(2, 'Dr. Siti Nurhaliza', 38, 'Kulit dan Kelamin', 'https://lorempixel.com/400/200/people/'),
(3, 'Dr. Ahmad Fauzan', 50, 'Dermatologi Kosmetik', 'https://lorempixel.com/400/200/people/'),
(4, 'Dr. Maria Ulfa', 42, 'Dermatologi Anak', 'https://lorempixel.com/400/200/people/'),
(5, 'Dr. Yusuf Maulana', 47, 'Dermatologi Bedah', 'https://lorempixel.com/400/200/people/'),
(6, 'Dr. Sri Wahyuni', 35, 'Trichology', 'https://lorempixel.com/400/200/people/'),
(7, 'Dr. Hendra Wijaya', 40, 'Dermatologi Estetika', 'https://lorempixel.com/400/200/people/'),
(8, 'Dr. Lina Amalia', 37, 'Psoriasis', 'https://lorempixel.com/400/200/people/'),
(9, 'Dr. Fajar Setiawan', 44, 'Imunologi Dermatologi', 'https://lorempixel.com/400/200/people/'),
(10, 'Dr. Rina Pratiwi', 36, 'Infeksi Kulit', 'https://lorempixel.com/400/200/people/'),
(11, 'Dr. Andi Susilo', 41, 'Dermatitis', 'https://lorempixel.com/400/200/people/'),
(12, 'Dr. Nur Aisyah', 39, 'Eksema', 'https://lorempixel.com/400/200/people/'),
(13, 'Dr. Riko Pratama', 48, 'Acne Specialist', 'https://lorempixel.com/400/200/people/'),
(14, 'Dr. Dewi Lestari', 43, 'Dermatologi Pediatrik', 'https://lorempixel.com/400/200/people/'),
(15, 'Dr. Rian Saputra', 46, 'Vulnology', 'https://lorempixel.com/400/200/people/'),
(16, 'Dr. Tuti Wulandari', 34, 'Pigmentasi Kulit', 'https://lorempixel.com/400/200/people/'),
(17, 'Dr. Aditya Permana', 49, 'Urtikaria', 'https://lorempixel.com/400/200/people/'),
(18, 'Dr. Hana Susanti', 37, 'Dermatologi Geriatrik', 'https://lorempixel.com/400/200/people/'),
(19, 'Dr. Anton Wijaya', 50, 'Onkologi Kulit', 'https://lorempixel.com/400/200/people/'),
(20, 'Dr. Elsa Marbun', 39, 'Perawatan Luka', 'https://lorempixel.com/400/200/people/'),
(21, 'Dr. Dian Kusuma', 44, 'Alergi Kulit', 'https://lorempixel.com/400/200/people/'),
(22, 'Dr. Fauzi Hamzah', 45, 'Karsinoma', 'https://lorempixel.com/400/200/people/'),
(23, 'Dr. Nadia Putri', 38, 'Kelainan Pigmen', 'https://lorempixel.com/400/200/people/'),
(24, 'Dr. Rendy Darmawan', 41, 'Dermatopatologi', 'https://lorempixel.com/400/200/people/'),
(25, 'Dr. Ayu Saraswati', 43, 'Trikologi', 'https://lorempixel.com/400/200/people/'),
(26, 'Dr. Candra Purnama', 42, 'Psoriasis dan Eksema', 'https://lorempixel.com/400/200/people/'),
(27, 'Dr. Desi Andriani', 40, 'Atopik Dermatitis', 'https://lorempixel.com/400/200/people/'),
(28, 'Dr. Fahmi Hidayat', 48, 'Dermatologi Estetika', 'https://lorempixel.com/400/200/people/'),
(29, 'Dr. Mita Anggraeni', 39, 'Lupus Eritematosus', 'https://lorempixel.com/400/200/people/'),
(30, 'Dr. Rico Gunawan', 45, 'Hiperpigmentasi', 'https://lorempixel.com/400/200/people/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `klinik`
--

CREATE TABLE `klinik` (
  `idKlinik` int(11) NOT NULL,
  `namaKlinik` varchar(255) DEFAULT NULL,
  `alamatKlinik` varchar(255) DEFAULT NULL,
  `noTelpKlinik` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `klinik`
--

INSERT INTO `klinik` (`idKlinik`, `namaKlinik`, `alamatKlinik`, `noTelpKlinik`) VALUES
(1, 'Klinik A', 'Sleman', '0812345678'),
(2, 'Klinik B', 'Bantul', '0823456789'),
(3, 'Klinik C', 'Pogung', '0834567890');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `idKonsultasi` int(11) NOT NULL,
  `idPasien` int(11) DEFAULT NULL,
  `idDokter` int(11) DEFAULT NULL,
  `tanggalKonsultasi` date DEFAULT NULL,
  `deskripsiKonsultasi` text DEFAULT NULL,
  `hargaKonsultasi` int(255) NOT NULL,
  `idKlinik` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `idPasien` int(11) NOT NULL,
  `namaPasien` varchar(255) DEFAULT NULL,
  `umurPasien` int(11) DEFAULT NULL,
  `jenisKelaminPasien` varchar(50) DEFAULT NULL,
  `alamatPasien` varchar(255) DEFAULT NULL,
  `noTelpPasien` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawatan`
--

CREATE TABLE `perawatan` (
  `idPerawatan` int(11) NOT NULL,
  `namaPerawatan` varchar(255) DEFAULT NULL,
  `deskripsiPerawatan` text DEFAULT NULL,
  `idKonsultasi` int(255) NOT NULL,
  `hargaPerawatan` int(255) NOT NULL,
  `manfaatPerawatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perawatan`
--

INSERT INTO `perawatan` (`idPerawatan`, `namaPerawatan`, `deskripsiPerawatan`, `idKonsultasi`, `hargaPerawatan`, `manfaatPerawatan`) VALUES
(1, 'Facial', 'Pembersihan Mendalam', 1, 350000, 'Membersihkan dan mencerahkan kulit wajah.'),
(2, 'Microdermabrasion', 'Eksfoliasi Mikro', 2, 400000, 'Mengurangi bekas jerawat dan garis halus.'),
(3, 'Laser Treatment', 'Terapi Laser', 3, 500000, 'Mengencangkan kulit dan mengurangi kerutan.'),
(4, 'Chemical Peel', 'Pengelupasan Kimia', 4, 600000, 'Mengatasi pigmentasi dan tekstur kulit tidak merata.'),
(5, 'PRP Treatment', 'Platelet-Rich Plasma', 5, 700000, 'Rejuvenasi kulit dan mengurangi bekas luka.'),
(6, 'RF Treatment', 'Radio Frequency', 6, 800000, 'Mengencangkan kulit dan memperbaiki kontur wajah.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idProduk` int(11) NOT NULL,
  `namaProduk` varchar(255) DEFAULT NULL,
  `jenisProduk` varchar(255) DEFAULT NULL,
  `deskripsiProduk` text DEFAULT NULL,
  `gambarProduk` varchar(255) DEFAULT NULL,
  `bahanProduk` text DEFAULT NULL,
  `hargaProduk` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idProduk`, `namaProduk`, `jenisProduk`, `deskripsiProduk`, `gambarProduk`, `bahanProduk`, `hargaProduk`) VALUES
(1, 'Serum Vitamin C', 'Serum', 'Serum yang membantu mencerahkan kulit wajah dan mengurangi noda hitam.', 'serum_vitamin_c.jpg', 'Air, Ascorbic Acid, Glycerin', 150000),
(2, 'Moisturizer Hyaluronic Acid', 'Moisturizer', 'Pelembab dengan kandungan hyaluronic acid untuk menjaga kelembaban kulit.', 'moisturizer_hyaluronic_acid.jpg', 'Air, Hyaluronic Acid, Glycerin', 200000),
(3, 'Facial Cleanser', 'Cleanser', 'Pembersih wajah yang lembut dan cocok untuk semua jenis kulit.', 'facial_cleanser.jpg', 'Air, Sodium Laureth Sulfate, Glycerin', 120000),
(4, 'Sunscreen SPF 50', 'Sunscreen', 'Tabir surya dengan SPF 50 untuk melindungi kulit dari sinar UV.', 'sunscreen_spf_50.jpg', 'Zinc Oxide, Titanium Dioxide, Glycerin', 180000),
(5, 'Night Cream Retinol', 'Night Cream', 'Krim malam dengan kandungan retinol untuk peremajaan kulit.', 'night_cream_retinol.jpg', 'Air, Retinol, Glycerin', 250000),
(6, 'Eye Cream', 'Eye Cream', 'Krim mata untuk mengurangi lingkaran hitam dan kantung mata.', 'eye_cream.jpg', 'Air, Caffeine, Glycerin', 160000),
(7, 'Lip Balm', 'Lip Care', 'Lip balm untuk menjaga kelembaban bibir.', 'lip_balm.jpg', 'Beeswax, Shea Butter, Glycerin', 50000),
(8, 'Face Mask', 'Mask', 'Masker wajah untuk perawatan intensif.', 'face_mask.jpg', 'Kaolin, Bentonite, Glycerin', 100000),
(9, 'Toner', 'Toner', 'Toner untuk mengembalikan pH kulit setelah pembersihan.', 'toner.jpg', 'Air, Witch Hazel, Glycerin', 90000),
(10, 'Exfoliating Scrub', 'Scrub', 'Scrub untuk mengangkat sel kulit mati dan membuat kulit lebih halus.', 'exfoliating_scrub.jpg', 'Apricot Seed Powder, Glycerin, Air', 130000),
(11, 'Body Lotion', 'Lotion', 'Lotion untuk melembutkan dan melembabkan kulit tubuh.', 'body_lotion.jpg', 'Air, Glycerin, Shea Butter', 110000),
(12, 'Hand Cream', 'Hand Care', 'Krim tangan untuk melembutkan dan melindungi kulit tangan.', 'hand_cream.jpg', 'Air, Glycerin, Shea Butter', 80000),
(13, 'Foot Cream', 'Foot Care', 'Krim kaki untuk melembutkan dan menghaluskan kulit kaki.', 'foot_cream.jpg', 'Air, Glycerin, Shea Butter', 90000),
(14, 'Face Oil', 'Oil', 'Minyak wajah untuk menjaga kelembaban dan memberi nutrisi pada kulit.', 'face_oil.jpg', 'Jojoba Oil, Glycerin, Air', 170000),
(15, 'Makeup Remover', 'Remover', 'Pembersih makeup yang efektif dan lembut di kulit.', 'makeup_remover.jpg', 'Micellar Water, Glycerin, Air', 120000),
(16, 'Sheet Mask', 'Mask', 'Masker lembaran untuk perawatan kulit yang praktis dan efektif.', 'sheet_mask.jpg', 'Air, Glycerin, Hyaluronic Acid', 30000),
(17, 'Clay Mask', 'Mask', 'Masker clay untuk membersihkan pori-pori dan mengontrol minyak berlebih.', 'clay_mask.jpg', 'Kaolin, Bentonite, Glycerin', 110000),
(18, 'Anti-Aging Serum', 'Serum', 'Serum anti-aging untuk mengurangi tanda-tanda penuaan.', 'anti_aging_serum.jpg', 'Peptides, Glycerin, Air', 240000),
(19, 'BB Cream', 'Cream', 'BB cream untuk menyamarkan ketidaksempurnaan dan meratakan warna kulit.', 'bb_cream.jpg', 'Air, Titanium Dioxide, Glycerin', 130000),
(20, 'CC Cream', 'Cream', 'CC cream untuk meratakan warna kulit dan memberikan perlindungan ekstra.', 'cc_cream.jpg', 'Air, Titanium Dioxide, Glycerin', 140000),
(21, 'Hair Serum', 'Hair Care', 'Serum rambut untuk melembutkan dan memberi nutrisi pada rambut.', 'hair_serum.jpg', 'Argan Oil, Glycerin, Air', 180000),
(22, 'Body Scrub', 'Scrub', 'Scrub tubuh untuk mengangkat sel kulit mati dan membuat kulit lebih halus.', 'body_scrub.jpg', 'Sugar, Glycerin, Air', 120000),
(23, 'Hair Mask', 'Hair Care', 'Masker rambut untuk perawatan intensif dan memperbaiki rambut rusak.', 'hair_mask.jpg', 'Shea Butter, Glycerin, Air', 150000),
(24, 'Shampoo', 'Hair Care', 'Shampoo untuk membersihkan dan merawat rambut.', 'shampoo.jpg', 'Sodium Laureth Sulfate, Glycerin, Air', 100000),
(25, 'Conditioner', 'Hair Care', 'Conditioner untuk melembutkan dan menghaluskan rambut.', 'conditioner.jpg', 'Cetyl Alcohol, Glycerin, Air', 110000),
(26, 'Face Mist', 'Mist', 'Face mist untuk menyegarkan dan melembabkan kulit.', 'face_mist.jpg', 'Air, Glycerin, Aloe Vera', 90000),
(27, 'Body Wash', 'Wash', 'Body wash untuk membersihkan dan menyegarkan kulit tubuh.', 'body_wash.jpg', 'Sodium Laureth Sulfate, Glycerin, Air', 100000),
(28, 'Perfume', 'Fragrance', 'Parfum dengan aroma segar dan tahan lama.', 'perfume.jpg', 'Alcohol, Fragrance, Water', 250000),
(29, 'Hand Sanitizer', 'Sanitizer', 'Hand sanitizer untuk membersihkan tangan secara praktis.', 'hand_sanitizer.jpg', 'Alcohol, Glycerin, Water', 30000),
(30, 'Deodorant', 'Deodorant', 'Deodoran untuk menjaga kesegaran tubuh sepanjang hari.', 'deodorant.jpg', 'Aluminum Chlorohydrate, Glycerin, Water', 80000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `idRiwayat` int(11) NOT NULL,
  `idProduk` int(11) DEFAULT NULL,
  `idPerawatan` int(11) DEFAULT NULL,
  `idKonsultasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`idDokter`);

--
-- Indeks untuk tabel `klinik`
--
ALTER TABLE `klinik`
  ADD PRIMARY KEY (`idKlinik`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`idKonsultasi`),
  ADD KEY `fk_konsultasi_pasien` (`idPasien`),
  ADD KEY `fk_konsultasi_dokter` (`idDokter`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idPasien`);

--
-- Indeks untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`idPerawatan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`idRiwayat`),
  ADD KEY `fk_riwayat_produk` (`idProduk`),
  ADD KEY `fk_riwayat_perawatan` (`idPerawatan`),
  ADD KEY `fk_riwayat_konsultasi` (`idKonsultasi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  MODIFY `idPerawatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD CONSTRAINT `fk_konsultasi_dokter` FOREIGN KEY (`idDokter`) REFERENCES `dokter` (`idDokter`),
  ADD CONSTRAINT `fk_konsultasi_pasien` FOREIGN KEY (`idPasien`) REFERENCES `pasien` (`idPasien`);

--
-- Ketidakleluasaan untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `fk_riwayat_konsultasi` FOREIGN KEY (`idKonsultasi`) REFERENCES `konsultasi` (`idKonsultasi`),
  ADD CONSTRAINT `fk_riwayat_perawatan` FOREIGN KEY (`idPerawatan`) REFERENCES `perawatan` (`idPerawatan`),
  ADD CONSTRAINT `fk_riwayat_produk` FOREIGN KEY (`idProduk`) REFERENCES `produk` (`idProduk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
