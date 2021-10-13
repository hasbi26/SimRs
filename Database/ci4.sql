-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2021 at 11:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'mizan', 'microsoft', 'komik1.jpeg', '2021-09-15 09:04:47', '2021-09-15 09:04:47'),
(3, 'mizan', 'mizan', '234', '123', 'komik2.png', '2021-09-15 04:03:39', '2021-09-16 00:42:38'),
(13, 'uka', 'uka', 'mizan', 'uka', 'komik1.jpeg', '2021-09-16 00:35:54', '2021-09-16 00:41:56'),
(18, 'komik coy', 'komik-coy', 'heheh', 'ajkjasj', 'Daco.png', '2021-09-20 04:14:17', '2021-09-20 04:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-09-16-085631', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1631783021, 1),
(2, '2021-09-17-084514', 'App\\Database\\Migrations\\Users', 'default', 'App', 1631868399, 2),
(3, '2021-09-17-154647', 'App\\Database\\Migrations\\Divisi', 'default', 'App', 1632113895, 3),
(4, '2021-09-20-050656', 'App\\Database\\Migrations\\AlterDivisi', 'default', 'App', 1632114609, 4),
(5, '2021-09-20-063822', 'App\\Database\\Migrations\\AlterDivisi1', 'default', 'App', 1632120028, 5),
(6, '2021-09-20-064046', 'App\\Database\\Migrations\\AlterDivisi2', 'default', 'App', 1632120164, 6),
(7, '2021-09-20-064348', 'App\\Database\\Migrations\\AlterDivisi3', 'default', 'App', 1632120246, 7),
(8, '2021-09-21-074921', 'App\\Database\\Migrations\\Jabatan', 'default', 'App', 1632211084, 8),
(9, '2021-09-23-071509', 'App\\Database\\Migrations\\Karyawan', 'default', 'App', 1632382087, 9),
(10, '2021-09-30-055321', 'App\\Database\\Migrations\\JenisObat', 'default', 'App', 1632981391, 10),
(11, '2021-09-30-070119', 'App\\Database\\Migrations\\SatuanObat', 'default', 'App', 1632985341, 11),
(12, '2021-09-30-073128', 'App\\Database\\Migrations\\KategoriObat', 'default', 'App', 1632987193, 12),
(13, '2021-09-30-075148', 'App\\Database\\Migrations\\GolonganObat', 'default', 'App', 1632988374, 13),
(14, '2021-09-30-082714', 'App\\Database\\Migrations\\SuplierObat', 'default', 'App', 1632990706, 14),
(15, '2021-10-01-031706', 'App\\Database\\Migrations\\Obat', 'default', 'App', 1633059424, 15);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'hasbi', 'Norway', '2021-09-16 04:20:34', '2021-09-16 04:20:34'),
(2, 'Farah Novitasari', 'Gg. Ters. Buah Batu No. 610, Palopo 94745, Banten', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(3, 'Ajimat Galar Habibi', 'Ds. Gremet No. 622, Pagar Alam 94597, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(4, 'Sabrina Usada', 'Jr. Astana Anyar No. 80, Sungai Penuh 63754, Bengkulu', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(5, 'Nasab Tarihoran S.Kom', 'Psr. Babah No. 273, Administrasi Jakarta Barat 68106, Jatim', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(6, 'Cakrawala Dwi Tarihoran', 'Ki. Agus Salim No. 762, Banda Aceh 80534, Bali', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(7, 'Paiman Gunawan', 'Gg. Suharso No. 818, Bekasi 90660, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(8, 'Halima Kusmawati', 'Ki. Ujung No. 20, Tarakan 84331, Kaltim', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(9, 'Kartika Namaga', 'Kpg. Sentot Alibasa No. 787, Magelang 79810, DKI', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(10, 'Zahra Novitasari', 'Jr. Monginsidi No. 840, Pangkal Pinang 54336, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(11, 'Siska Usyi Mardhiyah', 'Kpg. Baranangsiang No. 607, Mojokerto 57147, Aceh', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(12, 'Patricia Riyanti', 'Gg. Abdullah No. 467, Pangkal Pinang 42084, NTB', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(13, 'Dipa Saputra', 'Jln. Abdul Muis No. 615, Kendari 73233, Jateng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(14, 'Salwa Purwanti', 'Ds. Imam No. 119, Balikpapan 47154, Pabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(15, 'Slamet Saputra', 'Kpg. Gremet No. 439, Sukabumi 70746, Bali', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(16, 'Fitria Hasanah', 'Gg. Thamrin No. 35, Parepare 40002, NTB', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(17, 'Silvia Usamah M.Kom.', 'Psr. Abdullah No. 47, Cilegon 34043, Sumbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(18, 'Taufik Sinaga', 'Jln. Gremet No. 574, Metro 81086, Jateng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(19, 'Titi Nasyiah S.IP', 'Gg. Ciumbuleuit No. 472, Langsa 64090, Sulbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(20, 'Tugiman Prasetyo S.Psi', 'Ki. Kyai Mojo No. 805, Yogyakarta 33905, Jambi', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(21, 'Cengkir Wahyudin', 'Gg. Wora Wari No. 207, Tidore Kepulauan 78382, Papua', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(22, 'Heru Tamba', 'Gg. Achmad Yani No. 361, Banjar 45954, Kaltara', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(23, 'Uli Padmasari', 'Ki. Yos Sudarso No. 428, Pekanbaru 71379, Sulbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(24, 'Lili Yolanda S.Pt', 'Jln. Yoga No. 535, Bandung 10650, Sumut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(25, 'Jelita Hassanah', 'Ki. Tangkuban Perahu No. 518, Mataram 34303, Pabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(26, 'Ismail Cahyo Tampubolon S.Farm', 'Ds. Kiaracondong No. 383, Administrasi Jakarta Utara 37185, NTB', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(27, 'Paramita Anggraini', 'Dk. Suprapto No. 447, Administrasi Jakarta Selatan 52632, Sumbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(28, 'Zulaikha Lailasari', 'Jln. Antapani Lama No. 537, Singkawang 90650, Jambi', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(29, 'Utama Habibi S.Pt', 'Psr. Soekarno Hatta No. 14, Tanjung Pinang 66993, Kepri', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(30, 'Jumari Prabowo', 'Jr. Baranang Siang Indah No. 330, Mataram 88035, Jateng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(31, 'Restu Hartati', 'Jr. Imam Bonjol No. 40, Manado 24426, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(32, 'Hafshah Purwanti', 'Ki. Babadak No. 142, Solok 52580, Bengkulu', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(33, 'Warsa Lutfan Sihombing', 'Ki. Achmad Yani No. 934, Ternate 91102, Malut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(34, 'Shania Laksmiwati S.IP', 'Ds. Laswi No. 980, Bekasi 22662, DIY', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(35, 'Pandu Budiyanto', 'Jr. Bayam No. 970, Mojokerto 13889, Sumbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(36, 'Kania Yulianti', 'Ds. Bacang No. 939, Metro 20669, Papua', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(37, 'Sari Padma Mulyani', 'Jr. Samanhudi No. 528, Tidore Kepulauan 94990, Maluku', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(38, 'Wakiman Gunarto S.Pd', 'Ki. Babakan No. 201, Surabaya 58250, Lampung', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(39, 'Janet Zelda Mardhiyah M.Farm', 'Ki. Banda No. 668, Batu 57481, Jateng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(40, 'Jinawi Sitompul', 'Psr. Sutoyo No. 142, Serang 70057, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(41, 'Panji Hidayat', 'Jln. Eka No. 175, Pariaman 79089, Malut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(42, 'Damu Nainggolan', 'Gg. Baranang Siang No. 968, Administrasi Jakarta Timur 66286, DIY', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(43, 'Asirwanda Kayun Pratama', 'Kpg. Jend. Sudirman No. 644, Parepare 90780, Bali', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(44, 'Okta Rajata S.Gz', 'Ds. Antapani Lama No. 99, Bandar Lampung 90292, Kepri', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(45, 'Ulva Vanesa Purwanti', 'Kpg. Bakit  No. 982, Malang 60534, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(46, 'Eli Jessica Fujiati S.Ked', 'Psr. Kiaracondong No. 882, Surakarta 45191, Sultra', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(47, 'Talia Prastuti', 'Psr. Mulyadi No. 916, Pekalongan 91954, Gorontalo', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(48, 'Titi Wijayanti', 'Ki. Jamika No. 423, Langsa 83549, Jambi', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(49, 'Panji Hutagalung', 'Psr. Cikutra Timur No. 843, Subulussalam 82678, Lampung', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(50, 'Nalar Mustofa', 'Kpg. Aceh No. 472, Blitar 45626, Sulteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(51, 'Lanjar Daruna Nugroho S.I.Kom', 'Jr. Lembong No. 859, Tegal 73327, Gorontalo', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(52, 'Uchita Mila Susanti M.Kom.', 'Dk. Kebangkitan Nasional No. 483, Pangkal Pinang 91653, Kalteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(53, 'Prasetyo Sihombing', 'Ki. Sutami No. 471, Administrasi Jakarta Selatan 65204, Kaltara', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(54, 'Ibun Sirait', 'Gg. Baik No. 595, Palu 26639, Sulsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(55, 'Salman Nainggolan', 'Dk. Soekarno Hatta No. 860, Malang 62206, Kalbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(56, 'Devi Agustina', 'Dk. Ir. H. Juanda No. 933, Tual 22235, Babel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(57, 'Galur Balidin Lazuardi', 'Kpg. Baja No. 783, Padangpanjang 47378, Sumsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(58, 'Fathonah Novitasari M.Farm', 'Jr. Karel S. Tubun No. 536, Bitung 80550, NTT', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(59, 'Talia Irma Lailasari M.M.', 'Kpg. Tangkuban Perahu No. 139, Samarinda 87627, Malut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(60, 'Wasis Widodo S.Pd', 'Jr. Yosodipuro No. 922, Bandung 18980, Kepri', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(61, 'Ade Yuliarti', 'Gg. Wahid No. 183, Blitar 18840, Sumsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(62, 'Ibrani Dongoran', 'Ds. Suprapto No. 138, Surabaya 60401, Kaltara', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(63, 'Elma Padmasari', 'Ds. Wahid Hasyim No. 749, Sungai Penuh 27504, Maluku', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(64, 'Unjani Hassanah', 'Dk. Barasak No. 486, Manado 38857, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(65, 'Asmuni Waskita', 'Ki. Basoka Raya No. 649, Depok 30558, Kalbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(66, 'Ganda Kurniawan', 'Jln. Baan No. 191, Padang 45672, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(67, 'Darmanto Hutapea S.Pt', 'Ki. Baabur Royan No. 297, Makassar 83913, Babel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(68, 'Oliva Hartati', 'Ki. Sampangan No. 313, Bogor 42567, Kaltara', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(69, 'Aditya Wasita M.TI.', 'Dk. Yos Sudarso No. 398, Tebing Tinggi 28525, Riau', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(70, 'Asman Wacana', 'Dk. Pasirkoja No. 373, Bitung 26167, Pabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(71, 'Violet Yulianti', 'Ds. Umalas No. 83, Tanjungbalai 50839, Lampung', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(72, 'Heryanto Firgantoro', 'Kpg. Salak No. 576, Manado 70556, Sulteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(73, 'Ega Cahya Nashiruddin', 'Psr. Gading No. 42, Magelang 15255, Sulteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(74, 'Najwa Sari Padmasari S.Kom', 'Dk. Moch. Yamin No. 363, Tegal 11699, Sulbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(75, 'Yuni Puspasari', 'Psr. Ujung No. 314, Lhokseumawe 64221, Malut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(76, 'Zelaya Padma Usamah', 'Gg. Basuki Rahmat  No. 649, Tual 68396, NTB', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(77, 'Endah Susanti', 'Ds. K.H. Wahid Hasyim (Kopo) No. 585, Magelang 54109, NTT', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(78, 'Najam Najmudin', 'Ds. Jakarta No. 69, Subulussalam 96568, Sumsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(79, 'Iriana Hilda Rahayu', 'Ds. Jend. Sudirman No. 253, Bengkulu 89498, Jabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(80, 'Irma Hartati', 'Ds. Siliwangi No. 274, Banjar 96258, DIY', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(81, 'Galih Kurniawan', 'Dk. Hang No. 956, Singkawang 63635, Sulteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(82, 'Darman Tampubolon', 'Jln. Yos Sudarso No. 87, Kendari 16952, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(83, 'Legawa Hidayanto', 'Ki. Sudirman No. 134, Pematangsiantar 23965, Sultra', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(84, 'Winda Nuraini', 'Kpg. Ir. H. Juanda No. 277, Bau-Bau 85585, NTT', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(85, 'Lasmanto Kambali Wijaya', 'Jr. Badak No. 937, Tarakan 87363, Gorontalo', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(86, 'Maria Rahmawati', 'Gg. Sukabumi No. 277, Banjarmasin 11125, Sulteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(87, 'Kenes Labuh Dongoran', 'Ki. Villa No. 810, Administrasi Jakarta Timur 38969, Gorontalo', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(88, 'Indah Wahyuni', 'Jln. Padma No. 420, Denpasar 54602, Jambi', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(89, 'Bella Namaga', 'Jln. Ters. Jakarta No. 937, Pekalongan 15282, Sulteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(90, 'Lantar Wibowo', 'Gg. Otto No. 928, Kotamobagu 90935, Sulsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(91, 'Almira Kezia Oktaviani', 'Kpg. K.H. Maskur No. 933, Banjarbaru 10787, Pabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(92, 'Wisnu Warsa Marpaung M.Ak', 'Kpg. Panjaitan No. 617, Ternate 20891, Pabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(93, 'Emas Megantara', 'Gg. Flores No. 147, Bekasi 13168, Banten', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(94, 'Hani Febi Suryatmi M.Kom.', 'Kpg. Bayan No. 731, Manado 50469, Jabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(95, 'Ilsa Susanti', 'Dk. Bahagia No. 307, Kediri 61426, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(96, 'Jabal Siregar', 'Ds. Labu No. 481, Bontang 70104, NTT', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(97, 'Marwata Saragih', 'Dk. Salatiga No. 270, Pekanbaru 69875, Jatim', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(98, 'Argono Saptono', 'Ki. Bakaru No. 220, Tarakan 67729, DKI', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(99, 'Devi Kuswandari', 'Jr. Cokroaminoto No. 31, Sukabumi 63129, Sulbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(100, 'Aisyah Yuni Handayani S.Psi', 'Jr. Agus Salim No. 667, Tasikmalaya 10861, Kalteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(101, 'Keisha Safitri M.M.', 'Psr. Jayawijaya No. 878, Parepare 52705, Malut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(102, 'Kuncara Rendy Nashiruddin S.E.', 'Ki. Sutarjo No. 726, Banjarbaru 79456, DKI', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(103, 'Budi Edward Narpati S.T.', 'Ki. Sampangan No. 822, Tarakan 88717, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(104, 'Martana Gaiman Permadi S.E.', 'Jln. Abdul. Muis No. 577, Salatiga 90470, Kalteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(105, 'Farah Dalima Handayani S.E.', 'Ds. Salak No. 85, Medan 69924, Papua', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(106, 'Michelle Laksita', 'Jr. Jakarta No. 659, Yogyakarta 57441, Sultra', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(107, 'Prayitna Saefullah', 'Gg. Yap Tjwan Bing No. 147, Samarinda 33343, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(108, 'Safina Yulianti', 'Psr. Bakit  No. 743, Solok 69600, Sulsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(109, 'Yoga Hidayanto', 'Dk. Raya Ujungberung No. 587, Solok 17057, Banten', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(110, 'Karen Elvina Laksmiwati S.IP', 'Jln. Bacang No. 120, Administrasi Jakarta Selatan 35404, Maluku', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(111, 'Jarwi Prayitna Megantara', 'Gg. Bakit  No. 618, Batu 25406, DIY', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(112, 'Martani Mandala', 'Ds. Sukabumi No. 59, Semarang 42025, Kalteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(113, 'Bahuraksa Gunarto', 'Kpg. Barat No. 23, Bukittinggi 46110, Sulteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(114, 'Vanesa Melani M.Pd', 'Psr. Baan No. 282, Cirebon 87467, Kalbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(115, 'Kardi Pangestu', 'Jr. Cikapayang No. 444, Administrasi Jakarta Timur 32260, Sumsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(116, 'Cakrawangsa Winarno', 'Jr. Arifin No. 87, Bandar Lampung 67082, Maluku', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(117, 'Maya Palastri', 'Kpg. Yos No. 935, Palopo 28933, NTT', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(118, 'Tina Yuniar', 'Kpg. Fajar No. 539, Sukabumi 72334, Kaltara', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(119, 'Samiah Purwanti S.H.', 'Jr. Banda No. 622, Probolinggo 55661, Sultra', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(120, 'Ilsa Handayani M.TI.', 'Ki. M.T. Haryono No. 82, Sawahlunto 84639, Sumsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(121, 'Putri Safitri', 'Jr. Gegerkalong Hilir No. 945, Kendari 44851, DIY', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(122, 'Artanto Saragih', 'Psr. Lumban Tobing No. 757, Yogyakarta 53201, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(123, 'Rosman Sihombing', 'Dk. Wahid No. 261, Gorontalo 24050, Sultra', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(124, 'Taswir Gading Uwais S.Farm', 'Jln. Tambak No. 802, Malang 23750, Pabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(125, 'Ilsa Astuti', 'Jr. Elang No. 169, Sungai Penuh 96559, Kalbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(126, 'Padma Laras Nasyiah', 'Ds. Rajawali Timur No. 360, Prabumulih 79862, Jabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(127, 'Jaga Sirait', 'Psr. Sentot Alibasa No. 841, Ternate 56688, Banten', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(128, 'Bagas Haryanto', 'Dk. Flores No. 49, Administrasi Jakarta Pusat 16480, Aceh', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(129, 'Laksana Darmana Nainggolan S.Ked', 'Psr. Umalas No. 501, Pekanbaru 16089, Malut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(130, 'Kayla Pudjiastuti M.Ak', 'Gg. Barasak No. 785, Metro 22997, NTB', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(131, 'Calista Aryani', 'Jr. Zamrud No. 196, Pariaman 54725, Malut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(132, 'Ratih Nilam Halimah M.TI.', 'Gg. Madiun No. 609, Tual 79167, Babel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(133, 'Cakrajiya Maryadi', 'Kpg. Rajawali No. 559, Denpasar 44176, DIY', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(134, 'Rosman Adriansyah', 'Ds. Adisucipto No. 141, Pekalongan 34038, NTB', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(135, 'Nilam Farida S.Ked', 'Jln. Bakit  No. 858, Palangka Raya 17155, Bengkulu', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(136, 'Ira Riyanti', 'Psr. Bakit  No. 995, Cimahi 26255, Papua', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(137, 'Ulva Pertiwi S.Farm', 'Ki. Basudewo No. 426, Administrasi Jakarta Selatan 12584, Sulbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(138, 'Labuh Tarihoran', 'Dk. Baing No. 477, Cimahi 28570, Bali', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(139, 'Kayla Wijayanti', 'Dk. Nakula No. 534, Bandung 97721, Kepri', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(140, 'Nabila Nuraini', 'Jr. Ters. Kiaracondong No. 943, Ambon 60495, Banten', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(141, 'Wardi Ajimat Budiyanto S.Sos', 'Psr. Ciumbuleuit No. 328, Yogyakarta 30294, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(142, 'Emil Maheswara', 'Dk. Basmol Raya No. 708, Banjarbaru 35795, Jatim', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(143, 'Perkasa Mujur Santoso', 'Jr. Dahlia No. 459, Subulussalam 54900, Sumut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(144, 'Mitra Tarihoran', 'Kpg. Bahagia  No. 607, Pagar Alam 17483, Kepri', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(145, 'Janet Zulfa Melani S.Sos', 'Dk. Bakti No. 858, Ternate 67341, Bengkulu', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(146, 'Sari Yuliana Wahyuni', 'Dk. Jend. Sudirman No. 692, Banjarbaru 96905, Sultra', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(147, 'Queen Rahimah', 'Psr. Baranang Siang Indah No. 1, Kediri 54251, Lampung', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(148, 'Cornelia Sudiati', 'Dk. Dr. Junjunan No. 59, Bima 47239, Kaltara', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(149, 'Rahmi Kuswandari', 'Jln. Abdul No. 160, Palopo 58956, Malut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(150, 'Harimurti Budiyanto', 'Gg. Baung No. 243, Batam 33022, Kalteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(151, 'Ellis Ilsa Yuniar S.Psi', 'Ki. Otista No. 476, Sorong 42690, NTT', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(152, 'Rini Padmasari S.E.', 'Gg. Ciumbuleuit No. 128, Tangerang Selatan 47685, DKI', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(153, 'Gatot Jailani', 'Kpg. Casablanca No. 340, Magelang 26498, Jabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(154, 'Clara Ratih Anggraini S.T.', 'Psr. Baha No. 229, Batam 59326, Sultra', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(155, 'Rina Bella Hartati', 'Gg. Dewi Sartika No. 720, Depok 65799, Riau', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(156, 'Ade Eva Wulandari S.IP', 'Jr. Padma No. 896, Banjar 36535, Sulteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(157, 'Rahayu Maryati S.Pd', 'Psr. Sadang Serang No. 761, Tebing Tinggi 79307, Jambi', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(158, 'Mala Laksita', 'Jr. Tangkuban Perahu No. 472, Tangerang 13042, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(159, 'Pardi Mitra Haryanto', 'Kpg. Salatiga No. 259, Palu 43504, Jabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(160, 'Purwa Maulana', 'Gg. Baranangsiang No. 843, Probolinggo 15976, Kepri', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(161, 'Sabri Siregar', 'Dk. Bakaru No. 936, Kotamobagu 56768, Sultra', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(162, 'Rusman Napitupulu', 'Jln. Kebangkitan Nasional No. 965, Pekalongan 31594, Jambi', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(163, 'Irwan Rafi Prayoga M.Ak', 'Jr. Ters. Jakarta No. 682, Singkawang 10284, Bali', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(164, 'Mustika Lutfan Uwais', 'Kpg. Agus Salim No. 610, Sibolga 50848, DIY', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(165, 'Rizki Marsudi Rajata S.I.Kom', 'Jr. Kartini No. 689, Blitar 88693, Kalbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(166, 'Elma Oktaviani S.I.Kom', 'Jln. Salatiga No. 636, Tanjung Pinang 62539, Malut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(167, 'Vino Latupono', 'Dk. Bagonwoto  No. 166, Binjai 84952, Bali', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(168, 'Wadi Prabowo', 'Ds. Halim No. 30, Medan 77494, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(169, 'Zelaya Lestari', 'Jln. Tambun No. 873, Batam 93682, Kalteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(170, 'Maimunah Permata', 'Psr. BKR No. 127, Kediri 60261, DIY', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(171, 'Vero Mustofa', 'Jr. Bass No. 730, Surakarta 41166, Bali', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(172, 'Raina Kasiyah Suartini', 'Psr. Karel S. Tubun No. 187, Ternate 80777, Kaltara', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(173, 'Vanya Rini Puspasari', 'Jr. Zamrud No. 513, Payakumbuh 15232, Lampung', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(174, 'Panji Ajiono Maryadi M.M.', 'Ki. R.M. Said No. 407, Malang 50834, Pabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(175, 'Cengkir Siregar', 'Psr. Monginsidi No. 751, Bengkulu 38255, Bengkulu', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(176, 'Gantar Alambana Sitompul', 'Jln. Acordion No. 55, Palopo 78131, Kepri', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(177, 'Olga Simanjuntak', 'Ki. Honggowongso No. 23, Ternate 58731, Banten', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(178, 'Gangsar Embuh Situmorang S.Pd', 'Ki. Bappenas No. 710, Semarang 39440, NTT', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(179, 'Ade Nasyidah S.E.I', 'Jr. Peta No. 592, Bandar Lampung 25021, Kaltim', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(180, 'Tari Hasna Handayani M.Farm', 'Ds. Ujung No. 414, Blitar 29632, Kalbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(181, 'Sabrina Zulaika S.Pt', 'Jln. Baabur Royan No. 41, Tasikmalaya 69324, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(182, 'Tina Uyainah M.Kom.', 'Ki. Yosodipuro No. 677, Parepare 35384, Jateng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(183, 'Kamaria Nuraini', 'Jr. Abdul No. 245, Pagar Alam 24904, DKI', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(184, 'Elisa Karen Padmasari M.M.', 'Jln. Thamrin No. 322, Malang 79375, Papua', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(185, 'Teddy Lazuardi', 'Ds. Pahlawan No. 474, Yogyakarta 23542, Sulbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(186, 'Gasti Eli Nasyidah S.Psi', 'Dk. Tambun No. 443, Sibolga 37957, Kepri', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(187, 'Ami Safitri', 'Gg. Bara Tambar No. 136, Surabaya 34978, Kalteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(188, 'Ana Septi Rahmawati', 'Jr. Veteran No. 695, Bontang 86901, Lampung', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(189, 'Jatmiko Zulkarnain', 'Jr. Warga No. 886, Tual 16569, Sumut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(190, 'Warta Wahyudin S.Pt', 'Dk. Supono No. 603, Tarakan 87886, Sumsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(191, 'Dian Rahimah', 'Dk. Cemara No. 13, Administrasi Jakarta Barat 44722, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(192, 'Cakrajiya Lukman Mandala', 'Dk. Jambu No. 912, Pariaman 24193, Gorontalo', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(193, 'Ina Mayasari', 'Ds. Tangkuban Perahu No. 769, Kendari 46301, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(194, 'Qori Ira Suryatmi', 'Dk. Yoga No. 227, Administrasi Jakarta Pusat 82654, Banten', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(195, 'Harjaya Hidayanto S.IP', 'Gg. Baja No. 407, Cilegon 88834, Kaltim', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(196, 'Lasmono Marbun', 'Jr. Bara Tambar No. 983, Administrasi Jakarta Pusat 17943, Pabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(197, 'Zulfa Tina Widiastuti', 'Kpg. Bakaru No. 110, Batu 77587, Maluku', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(198, 'Eka Yolanda', 'Psr. Sutami No. 280, Tanjungbalai 42958, Lampung', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(199, 'Zahra Michelle Andriani', 'Jln. Bakit  No. 453, Administrasi Jakarta Selatan 59848, Kalbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(200, 'Dian Winda Fujiati', 'Jln. Nanas No. 905, Banjarmasin 82944, Sulsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(201, 'Upik Cawisono Waskita', 'Jr. Bak Mandi No. 569, Tebing Tinggi 48189, Sulsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(202, 'Karja Mangunsong S.E.I', 'Gg. Wahidin Sudirohusodo No. 678, Sorong 83309, Sulut', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(203, 'Farah Safitri', 'Ds. Baung No. 319, Mataram 68674, NTB', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(204, 'Jane Astuti', 'Gg. Baranang Siang Indah No. 568, Gorontalo 80185, Kaltim', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(205, 'Almira Rahayu', 'Kpg. Banda No. 140, Sabang 14481, Bengkulu', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(206, 'Puji Wastuti', 'Jr. Aceh No. 816, Mataram 58081, Kalteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(207, 'Karma Sinaga', 'Ds. Abdul Muis No. 337, Subulussalam 72377, Papua', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(208, 'Adinata Simanjuntak', 'Psr. Basmol Raya No. 448, Palembang 16049, Sumsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(209, 'Budi Hidayanto M.TI.', 'Dk. Sampangan No. 73, Bukittinggi 69712, Jateng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(210, 'Elisa Uyainah', 'Ds. Ahmad Dahlan No. 290, Ternate 27281, Sulbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(211, 'Yusuf Manullang', 'Kpg. Acordion No. 892, Salatiga 84407, Sulbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(212, 'Alika Lili Riyanti S.I.Kom', 'Jln. Dipenogoro No. 535, Manado 22473, Kalteng', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(213, 'Gamani Pratama', 'Kpg. R.E. Martadinata No. 413, Administrasi Jakarta Barat 33670, Jambi', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(214, 'Eja Niyaga Ardianto S.Ked', 'Gg. Suryo No. 122, Administrasi Jakarta Timur 80200, Sumbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(215, 'Tirtayasa Teguh Firgantoro S.T.', 'Psr. Raden Saleh No. 770, Gorontalo 73081, Kepri', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(216, 'Mumpuni Manullang', 'Ki. Padang No. 517, Sorong 72319, Kaltim', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(217, 'Banawa Cakrawala Wibisono S.Kom', 'Dk. Karel S. Tubun No. 204, Sukabumi 10662, Aceh', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(218, 'Vanya Halimah', 'Jln. Cihampelas No. 108, Pematangsiantar 56036, NTB', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(219, 'Eja Langgeng Prasasta S.E.', 'Kpg. Fajar No. 162, Sukabumi 62189, DIY', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(220, 'Viman Jagaraga Hidayanto', 'Dk. Jagakarsa No. 324, Sibolga 20662, Bali', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(221, 'Tugiman Bagiya Simanjuntak S.Farm', 'Psr. R.E. Martadinata No. 99, Sungai Penuh 11901, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(222, 'Eko Prabowo', 'Psr. Batako No. 942, Subulussalam 31204, Kalsel', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(223, 'Gaiman Iswahyudi S.Kom', 'Dk. Ki Hajar Dewantara No. 829, Bengkulu 12229, Aceh', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(224, 'Safina Yulianti', 'Kpg. Qrisdoren No. 806, Binjai 16575, Riau', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(225, 'Rusman Winarno', 'Psr. Basket No. 331, Tegal 18476, Lampung', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(226, 'Wirda Laksmiwati S.T.', 'Jln. Bagis Utama No. 284, Batam 86154, Pabar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(227, 'Purwanto Wijaya', 'Kpg. Ahmad Dahlan No. 538, Tegal 53919, Kaltim', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(228, 'Elvin Putra', 'Kpg. Surapati No. 276, Sibolga 45190, NTB', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(229, 'Zamira Mardhiyah', 'Kpg. Reksoninten No. 487, Yogyakarta 68536, Kalbar', '2021-09-16 22:39:05', '2021-09-16 22:39:05'),
(230, 'Ibrahim Wibisono', 'Jr. Moch. Toha No. 828, Kupang 90532, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(231, 'Maria Hastuti', 'Ds. Pasirkoja No. 243, Pariaman 29991, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(232, 'Kanda Damanik', 'Gg. Baabur Royan No. 454, Medan 30446, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(233, 'Ratna Widiastuti', 'Psr. Bayan No. 305, Serang 16726, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(234, 'Talia Hasanah', 'Ds. Rajawali No. 552, Jambi 49604, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(235, 'Paulin Safitri', 'Psr. Wahidin No. 78, Dumai 33061, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(236, 'Harto Lanang Iswahyudi', 'Ds. Baan No. 463, Mojokerto 97875, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(237, 'Darmana Tugiman Wijaya', 'Kpg. Gotong Royong No. 839, Subulussalam 99634, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(238, 'Chelsea Rika Namaga', 'Kpg. Gatot Subroto No. 10, Batu 73435, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(239, 'Ami Sudiati', 'Dk. Banda No. 506, Makassar 46390, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(240, 'Nova Wulandari', 'Psr. Salam No. 561, Tanjung Pinang 63884, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(241, 'Prabawa Gandi Rajata', 'Ki. Ujung No. 553, Pontianak 38958, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(242, 'Kariman Saragih', 'Ds. Bakau Griya Utama No. 544, Denpasar 94012, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(243, 'Kani Natalia Yulianti S.Ked', 'Dk. Wahidin Sudirohusodo No. 729, Subulussalam 65650, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(244, 'Anita Prastuti', 'Jr. Bambon No. 440, Administrasi Jakarta Barat 80426, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(245, 'Balamantri Jefri Napitupulu S.T.', 'Gg. Bakhita No. 270, Malang 34361, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(246, 'Rachel Purwanti S.Pt', 'Dk. Halim No. 60, Cirebon 75545, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(247, 'Adhiarja Harjo Winarno S.Ked', 'Kpg. Jaksa No. 561, Serang 60625, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(248, 'Rahayu Aryani', 'Kpg. Gegerkalong Hilir No. 942, Jayapura 64544, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(249, 'Raina Cornelia Pratiwi S.Sos', 'Dk. Sudirman No. 591, Surabaya 80753, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(250, 'Diana Cinthia Padmasari', 'Jln. Pelajar Pejuang 45 No. 183, Kupang 53405, Babel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(251, 'Paiman Waskita', 'Jln. Bakit  No. 979, Pematangsiantar 17665, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(252, 'Prakosa Pranowo M.TI.', 'Gg. Teuku Umar No. 233, Palu 78490, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(253, 'Ega Thamrin M.Farm', 'Jln. Sutan Syahrir No. 483, Bandar Lampung 64334, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(254, 'Jaeman Megantara S.Sos', 'Gg. Bambon No. 894, Pariaman 10701, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(255, 'Karen Kuswandari', 'Kpg. Basoka No. 753, Tarakan 86096, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(256, 'Dalima Puspita', 'Jln. B.Agam Dlm No. 256, Padangpanjang 65222, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(257, 'Michelle Amalia Puspasari M.TI.', 'Jln. Adisumarmo No. 304, Sibolga 95183, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(258, 'Halima Hastuti S.Psi', 'Psr. Sadang Serang No. 637, Yogyakarta 78608, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(259, 'Darmaji Napitupulu', 'Dk. R.M. Said No. 268, Tual 32144, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(260, 'Clara Uyainah', 'Jr. Pasteur No. 784, Gunungsitoli 58033, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(261, 'Ilsa Rahayu M.Kom.', 'Psr. Villa No. 466, Blitar 28227, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(262, 'Hardi Bagiya Simanjuntak', 'Jr. Juanda No. 970, Jambi 27471, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(263, 'Almira Oktaviani', 'Kpg. Jambu No. 500, Ambon 99673, Bali', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(264, 'Yahya Santoso', 'Kpg. Sugiono No. 773, Pagar Alam 22830, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(265, 'Cinta Almira Lestari S.E.I', 'Kpg. Suryo No. 394, Bau-Bau 86466, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(266, 'Febi Pudjiastuti', 'Psr. Soekarno Hatta No. 584, Banda Aceh 37144, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(267, 'Amelia Puti Usamah S.Kom', 'Gg. Imam No. 789, Blitar 59739, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(268, 'Paiman Pradipta S.I.Kom', 'Dk. Abdul No. 469, Yogyakarta 77945, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(269, 'Empluk Januar', 'Ds. Radio No. 150, Lubuklinggau 80903, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(270, 'Calista Nurdiyanti S.Psi', 'Jln. Tubagus Ismail No. 782, Padangsidempuan 41408, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(271, 'Eka Farida M.Pd', 'Jln. Badak No. 775, Medan 99510, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(272, 'Kiandra Nasyidah', 'Psr. Mulyadi No. 937, Gorontalo 60734, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(273, 'Kasiyah Namaga', 'Jr. Ters. Pasir Koja No. 985, Surakarta 53024, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(274, 'Samsul Simanjuntak S.Sos', 'Ds. PHH. Mustofa No. 550, Solok 57762, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(275, 'Umi Safitri M.TI.', 'Kpg. Padang No. 345, Parepare 53616, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(276, 'Wani Ellis Haryanti', 'Jr. Pasir Koja No. 672, Probolinggo 14169, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(277, 'Mala Gasti Melani S.Psi', 'Jln. Ters. Buah Batu No. 419, Dumai 21953, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(278, 'Ridwan Jaya Jailani M.Farm', 'Ds. Lumban Tobing No. 782, Bontang 88871, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(279, 'Padmi Utami', 'Dk. Supomo No. 415, Probolinggo 14305, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(280, 'Cengkal Situmorang', 'Psr. Baranang No. 206, Palangka Raya 42703, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(281, 'Ganjaran Firgantoro', 'Ki. Setiabudhi No. 478, Surabaya 78315, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(282, 'Kardi Galur Kuswoyo M.M.', 'Jln. Pattimura No. 957, Magelang 69056, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(283, 'Yuni Nasyiah M.Pd', 'Gg. Madrasah No. 920, Dumai 34301, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(284, 'Muhammad Gandi Halim M.M.', 'Jln. Bagas Pati No. 817, Pekalongan 25158, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(285, 'Bella Usamah M.Kom.', 'Psr. Basuki No. 518, Tangerang 82056, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(286, 'Kamaria Yuniar', 'Gg. Tambun No. 275, Bengkulu 78140, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(287, 'Anita Hariyah', 'Ki. Barasak No. 376, Manado 25470, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(288, 'Umar Martana Marbun', 'Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 734, Banda Aceh 13332, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(289, 'Soleh Edi Saefullah', 'Ki. Warga No. 197, Payakumbuh 28791, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(290, 'Mulyanto Utama', 'Jln. BKR No. 65, Bogor 20700, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(291, 'Upik Bakiman Putra S.I.Kom', 'Ki. Sudirman No. 959, Batam 50440, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(292, 'Ilsa Titin Utami', 'Ds. Kartini No. 737, Padang 80240, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(293, 'Pia Puspita', 'Ds. Bagas Pati No. 739, Bogor 36509, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(294, 'Mahmud Dwi Wijaya S.Pd', 'Ds. Yogyakarta No. 720, Administrasi Jakarta Timur 24860, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(295, 'Bahuraksa Endra Tarihoran S.Psi', 'Dk. Bagonwoto  No. 259, Blitar 66103, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(296, 'Qori Diana Sudiati', 'Gg. Peta No. 278, Tegal 12713, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(297, 'Pranawa Rajata', 'Jln. Bak Mandi No. 693, Jayapura 54877, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(298, 'Kardi Gunarto', 'Psr. Kyai Mojo No. 34, Semarang 83587, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(299, 'Rina Julia Utami', 'Gg. Kartini No. 921, Sabang 75419, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(300, 'Rachel Permata M.TI.', 'Psr. Otista No. 644, Blitar 15400, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(301, 'Balapati Maryadi', 'Dk. Kebonjati No. 214, Serang 38984, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(302, 'Nalar Marbun S.Ked', 'Kpg. Raden No. 633, Bandung 41497, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(303, 'Tri Wasita', 'Dk. Labu No. 218, Tangerang Selatan 31899, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(304, 'Kusuma Simbolon', 'Psr. Babakan No. 806, Padang 41227, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(305, 'Nrima Lazuardi S.Sos', 'Psr. Pasteur No. 372, Banjar 19558, Kepri', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(306, 'Eli Sudiati S.I.Kom', 'Kpg. Padma No. 529, Tarakan 18687, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(307, 'Wahyu Pranowo M.Kom.', 'Gg. Taman No. 820, Sukabumi 28666, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(308, 'Bagiya Akarsana Samosir S.Pd', 'Dk. Raya Ujungberung No. 658, Solok 17387, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(309, 'Irnanto Simbolon S.Psi', 'Jr. Bara Tambar No. 673, Mataram 90091, Babel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(310, 'Danang Hasim Hardiansyah', 'Psr. Flores No. 349, Blitar 15634, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(311, 'Intan Namaga', 'Ki. Aceh No. 575, Bogor 41826, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(312, 'Febi Winarsih', 'Ki. Suniaraja No. 350, Metro 82460, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(313, 'Jasmani Sitompul', 'Dk. Gambang No. 546, Palopo 88334, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(314, 'Jessica Winarsih S.I.Kom', 'Jln. Gajah Mada No. 912, Bima 30480, DIY', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(315, 'Vicky Yuliarti', 'Jr. Camar No. 826, Banjar 42477, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(316, 'Satya Jaga Prakasa', 'Gg. Baranang Siang Indah No. 158, Pasuruan 12597, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(317, 'Koko Galur Hutasoit S.Ked', 'Gg. Abdul Muis No. 443, Bandung 40541, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(318, 'Raina Eka Laksmiwati', 'Jr. Banda No. 41, Bau-Bau 70962, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(319, 'Maria Yulianti S.T.', 'Ds. Samanhudi No. 174, Cilegon 24159, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(320, 'Rahman Napitupulu', 'Ds. Bagonwoto  No. 62, Manado 52282, Babel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(321, 'Lega Karman Lazuardi', 'Dk. Mulyadi No. 542, Pariaman 74146, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(322, 'Simon Satya Samosir S.Pt', 'Psr. Camar No. 716, Tasikmalaya 74441, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(323, 'Marwata Aditya Hardiansyah', 'Jr. Moch. Toha No. 776, Kendari 45567, Kepri', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(324, 'Zulaikha Winarsih', 'Jln. Umalas No. 89, Pangkal Pinang 84583, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(325, 'Elisa Winarsih S.T.', 'Jr. Jakarta No. 598, Pematangsiantar 46546, Bali', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(326, 'Zamira Oktaviani', 'Ds. Rajiman No. 318, Cimahi 87171, Kepri', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(327, 'Taswir Sihotang', 'Gg. Basoka Raya No. 602, Bau-Bau 67844, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(328, 'Salimah Ella Purwanti M.Kom.', 'Jln. Babah No. 918, Pematangsiantar 77272, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(329, 'Ilsa Nasyidah', 'Ds. Ciwastra No. 531, Gorontalo 50608, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(330, 'Winda Hasanah', 'Gg. Gajah No. 416, Kediri 69246, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(331, 'Kawaca Sihotang', 'Gg. Bakit  No. 642, Serang 57160, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(332, 'Dadi Pradana', 'Dk. Suryo No. 120, Samarinda 37883, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(333, 'Raina Mandasari', 'Ki. Madiun No. 107, Serang 56667, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(334, 'Suci Yulianti', 'Jln. Basoka Raya No. 142, Payakumbuh 52366, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(335, 'Daliman Kurniawan', 'Gg. Otto No. 340, Administrasi Jakarta Barat 57628, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(336, 'Aditya Rahman Dongoran S.T.', 'Dk. Banceng Pondok No. 971, Sungai Penuh 92508, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(337, 'Lintang Haryanti', 'Kpg. Bass No. 523, Dumai 28939, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(338, 'Xanana Balapati Permadi M.Pd', 'Dk. Astana Anyar No. 947, Administrasi Jakarta Selatan 26702, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(339, 'Rahmi Novitasari', 'Jr. Tambak No. 524, Blitar 68690, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(340, 'Vanya Rahimah', 'Psr. Raya Ujungberung No. 831, Batu 89221, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(341, 'Oni Astuti', 'Kpg. Banda No. 838, Tangerang Selatan 48345, Gorontalo', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(342, 'Prabawa Ibun Zulkarnain', 'Ds. Arifin No. 59, Denpasar 40073, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(343, 'Baktiadi Maryadi', 'Jr. Madiun No. 639, Subulussalam 72536, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(344, 'Ina Uyainah', 'Ki. Krakatau No. 306, Administrasi Jakarta Utara 69707, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(345, 'Yahya Gunawan', 'Kpg. Padma No. 444, Sawahlunto 46819, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(346, 'Gangsar Sihotang S.IP', 'Jln. R.M. Said No. 115, Binjai 53819, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(347, 'Salsabila Aryani S.H.', 'Jln. PHH. Mustofa No. 157, Tual 87174, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(348, 'Zulaikha Palastri', 'Ds. Wahidin Sudirohusodo No. 616, Administrasi Jakarta Pusat 54441, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(349, 'Febi Uyainah', 'Jr. Salam No. 442, Banda Aceh 62222, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(350, 'Kasiyah Haryanti S.IP', 'Kpg. Cokroaminoto No. 718, Administrasi Jakarta Utara 54849, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(351, 'Karta Wage Tarihoran', 'Jln. Orang No. 530, Tasikmalaya 97119, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(352, 'Eman Permadi', 'Ki. Untung Suropati No. 130, Pasuruan 68165, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(353, 'Ozy Tedi Widodo', 'Ds. Panjaitan No. 465, Kendari 73186, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(354, 'Gaiman Nainggolan', 'Ki. Abdul Muis No. 366, Bandar Lampung 74493, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(355, 'Dariati Tamba S.Ked', 'Ds. Baranang Siang Indah No. 854, Sawahlunto 76383, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(356, 'Puspa Hastuti', 'Ki. Babadan No. 688, Palangka Raya 12209, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(357, 'Amelia Dian Pudjiastuti M.M.', 'Jln. Sentot Alibasa No. 467, Mojokerto 96513, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(358, 'Edison Kuswoyo', 'Dk. Jaksa No. 64, Pekalongan 17933, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(359, 'Estiono Firmansyah', 'Ki. Kyai Gede No. 510, Padang 36997, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(360, 'Karman Mangunsong S.Ked', 'Ki. Ters. Kiaracondong No. 174, Prabumulih 14244, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(361, 'Gangsa Iswahyudi S.Kom', 'Ds. K.H. Wahid Hasyim (Kopo) No. 506, Ambon 52661, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(362, 'Galuh Radit Hutapea', 'Dk. Bagas Pati No. 717, Parepare 92283, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(363, 'Himawan Heru Kurniawan M.Farm', 'Psr. Basoka Raya No. 402, Palembang 11096, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(364, 'Indah Nurdiyanti', 'Jln. Kebonjati No. 849, Bandung 38019, Kepri', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(365, 'Devi Hasna Laksita S.Kom', 'Ki. Kartini No. 265, Sukabumi 48720, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(366, 'Vera Ciaobella Pertiwi', 'Ki. Ekonomi No. 714, Surabaya 10158, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(367, 'Laras Ade Mayasari S.Sos', 'Gg. Pahlawan No. 900, Serang 12424, Babel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(368, 'Asman Saefullah', 'Ds. Cut Nyak Dien No. 744, Subulussalam 49269, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(369, 'Dono Marbun', 'Dk. Abdul Rahmat No. 499, Administrasi Jakarta Pusat 17215, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(370, 'Luthfi Uwais', 'Ds. Lumban Tobing No. 835, Palopo 42980, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(371, 'Kuncara Parman Iswahyudi', 'Jr. Abdul Rahmat No. 950, Prabumulih 85519, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(372, 'Pardi Ajimat Irawan S.Pd', 'Ds. Bakti No. 787, Bukittinggi 35765, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(373, 'Respati Daliono Manullang M.TI.', 'Gg. Hang No. 894, Subulussalam 57103, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(374, 'Alika Anggraini S.Sos', 'Ki. Gardujati No. 237, Banjar 25056, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(375, 'Calista Aurora Mulyani S.T.', 'Gg. Nangka No. 302, Pekanbaru 48472, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(376, 'Dimaz Saiful Kurniawan', 'Jln. Salam No. 790, Kotamobagu 41005, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(377, 'Bakidin Rajasa', 'Psr. Baik No. 589, Padangsidempuan 90749, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(378, 'Artawan Firgantoro', 'Psr. Monginsidi No. 244, Sibolga 20308, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(379, 'Jarwadi Danuja Waluyo', 'Jln. Salak No. 271, Tanjungbalai 21911, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(380, 'Adikara Winarno', 'Dk. Soekarno Hatta No. 445, Administrasi Jakarta Utara 60523, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(381, 'Raisa Usamah', 'Psr. Cemara No. 361, Administrasi Jakarta Pusat 29773, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(382, 'Genta Novitasari S.IP', 'Ki. Cikutra Timur No. 29, Bengkulu 32650, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(383, 'Siti Haryanti S.T.', 'Ds. Cokroaminoto No. 576, Mataram 55862, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(384, 'Darsirah Saefullah', 'Kpg. Salak No. 468, Tegal 59696, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(385, 'Yosef Sihombing', 'Jln. Kali No. 111, Madiun 59063, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(386, 'Gina Nurdiyanti', 'Psr. Dr. Junjunan No. 241, Denpasar 66346, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(387, 'Michelle Anggraini', 'Gg. Sadang Serang No. 497, Cilegon 12141, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(388, 'Anita Zulaika', 'Gg. Ketandan No. 724, Denpasar 83966, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(389, 'Harsanto Emil Sitompul S.Psi', 'Ds. Jambu No. 339, Kotamobagu 15539, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(390, 'Gamblang Jati Hidayat S.Gz', 'Kpg. Nakula No. 492, Tomohon 43638, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(391, 'Rachel Hastuti S.Psi', 'Psr. Otto No. 852, Pekalongan 37708, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(392, 'Radika Marpaung', 'Psr. Elang No. 967, Mojokerto 86434, DIY', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(393, 'Sakura Dalima Agustina', 'Psr. Pasir Koja No. 211, Kendari 92024, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(394, 'Nilam Aisyah Mardhiyah', 'Ki. Kartini No. 36, Sabang 35025, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(395, 'Galang Hutapea S.E.I', 'Ds. Uluwatu No. 192, Payakumbuh 98876, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(396, 'Titin Agustina', 'Jr. Nanas No. 265, Tebing Tinggi 25390, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(397, 'Wirda Hassanah', 'Jr. Aceh No. 430, Yogyakarta 50817, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(398, 'Ratna Astuti M.Kom.', 'Jln. Babadan No. 935, Administrasi Jakarta Barat 44602, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(399, 'Omar Prasetya S.Ked', 'Kpg. Raden Saleh No. 714, Palu 87278, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(400, 'Dimas Simanjuntak S.Farm', 'Jr. Achmad Yani No. 558, Administrasi Jakarta Pusat 82250, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(401, 'Elisa Namaga', 'Gg. Gotong Royong No. 104, Metro 21219, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(402, 'Talia Utami', 'Gg. Nakula No. 230, Sungai Penuh 64942, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(403, 'Sakura Susanti', 'Jln. Baranangsiang No. 908, Tomohon 16170, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(404, 'Dimaz Prayoga', 'Jln. Pasirkoja No. 609, Probolinggo 26698, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(405, 'Ophelia Hassanah', 'Gg. Bayam No. 928, Kotamobagu 79526, Bali', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(406, 'Mursinin Pradipta', 'Ds. Ters. Kiaracondong No. 67, Mataram 67511, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06');
INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(407, 'Hani Halimah S.Sos', 'Psr. Jend. Sudirman No. 961, Magelang 51398, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(408, 'Purwa Jinawi Tampubolon M.Pd', 'Gg. Otista No. 965, Tanjungbalai 59929, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(409, 'Carla Rachel Purnawati', 'Jln. Cut Nyak Dien No. 487, Palangka Raya 46606, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(410, 'Oni Yance Usamah', 'Kpg. Asia Afrika No. 224, Tangerang 11424, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(411, 'Liman Iswahyudi', 'Kpg. Flora No. 728, Ambon 18354, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(412, 'Syahrini Eva Lailasari S.Farm', 'Kpg. Yos Sudarso No. 809, Tanjung Pinang 39638, Gorontalo', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(413, 'Eka Puput Rahimah', 'Ds. Banceng Pondok No. 522, Tual 74314, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(414, 'Kambali Siregar', 'Jr. Salak No. 106, Pagar Alam 53166, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(415, 'Cahyadi Saptono M.Pd', 'Jln. Rumah Sakit No. 825, Bitung 35319, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(416, 'Edison Gaduh Pangestu S.Pd', 'Kpg. Basuki Rahmat  No. 17, Ternate 46498, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(417, 'Kamidin Megantara', 'Jr. Bah Jaya No. 581, Tidore Kepulauan 38019, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(418, 'Daliono Dabukke', 'Kpg. Yos No. 315, Tanjungbalai 62853, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(419, 'Argono Widodo S.Gz', 'Dk. Madrasah No. 462, Pagar Alam 99880, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(420, 'Shania Ulva Permata S.T.', 'Ki. Camar No. 300, Pangkal Pinang 64419, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(421, 'Natalia Nadine Nuraini', 'Psr. Gambang No. 391, Banda Aceh 62062, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(422, 'Silvia Anggraini', 'Kpg. Bambon No. 191, Padangsidempuan 45811, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(423, 'Kuncara Wijaya', 'Ki. Jamika No. 396, Blitar 53916, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(424, 'Satya Cemani Wibowo', 'Ki. Siliwangi No. 890, Gunungsitoli 58802, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(425, 'Safina Nasyidah S.Ked', 'Jln. B.Agam 1 No. 241, Bontang 89024, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(426, 'Ivan Paiman Habibi', 'Psr. Kusmanto No. 762, Sungai Penuh 29870, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(427, 'Uchita Rahmawati', 'Gg. Cikutra Barat No. 933, Kupang 41139, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(428, 'Safina Lailasari', 'Gg. Baya Kali Bungur No. 848, Administrasi Jakarta Utara 46041, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(429, 'Farhunnisa Nabila Oktaviani M.TI.', 'Jln. Raya Ujungberung No. 866, Bau-Bau 32463, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(430, 'Belinda Kusmawati', 'Jr. Bakaru No. 599, Palangka Raya 72611, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(431, 'Raina Yuliarti', 'Kpg. Basudewo No. 27, Palangka Raya 31514, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(432, 'Vicky Zaenab Yuniar', 'Dk. Banda No. 170, Sukabumi 24601, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(433, 'Cahyanto Adriansyah', 'Gg. Hang No. 768, Banjarmasin 34766, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(434, 'Ulya Handayani', 'Jr. Ciwastra No. 771, Padang 76857, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(435, 'Prabowo Permadi S.Kom', 'Psr. Eka No. 30, Sukabumi 79421, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(436, 'Latika Kiandra Palastri', 'Kpg. Bagis Utama No. 422, Tual 76677, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(437, 'Asmuni Rama Maheswara', 'Psr. Zamrud No. 839, Serang 25713, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(438, 'Liman Ramadan S.E.', 'Psr. Achmad No. 664, Makassar 33904, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(439, 'Respati Rusman Uwais S.Sos', 'Psr. Abdullah No. 902, Batam 36186, DIY', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(440, 'Jaga Wasita S.Gz', 'Gg. Salam No. 562, Tarakan 73238, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(441, 'Anastasia Yuni Wastuti', 'Dk. Ikan No. 865, Bengkulu 67149, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(442, 'Dono Hardiansyah', 'Kpg. S. Parman No. 917, Administrasi Jakarta Selatan 19453, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(443, 'Asirwanda Garang Firmansyah', 'Ds. Perintis Kemerdekaan No. 903, Gorontalo 28613, Gorontalo', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(444, 'Silvia Aryani', 'Jr. Batako No. 887, Administrasi Jakarta Selatan 83203, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(445, 'Lanjar Putu Nababan', 'Gg. Pacuan Kuda No. 813, Bandung 96645, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(446, 'Maryanto Ajimin Narpati', 'Dk. Reksoninten No. 339, Parepare 65065, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(447, 'Kiandra Hasanah', 'Ki. Setiabudhi No. 732, Gorontalo 15560, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(448, 'Martana Narpati', 'Kpg. Baung No. 942, Banjarmasin 96109, Bali', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(449, 'Prakosa Januar S.Sos', 'Kpg. M.T. Haryono No. 483, Semarang 24823, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(450, 'Vanesa Novitasari', 'Gg. Abdul. Muis No. 595, Dumai 56580, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(451, 'Sabar Wahyudin S.Ked', 'Kpg. Bagas Pati No. 360, Tanjung Pinang 14412, Gorontalo', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(452, 'Patricia Rahayu', 'Psr. Rajawali Timur No. 168, Cimahi 46015, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(453, 'Kezia Usamah', 'Dk. Ki Hajar Dewantara No. 813, Sibolga 77789, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(454, 'Radika Uwais', 'Dk. Sutan Syahrir No. 301, Tangerang Selatan 52366, Kepri', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(455, 'Galar Nainggolan', 'Gg. Raya Setiabudhi No. 454, Surabaya 38997, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(456, 'Eman Suryono', 'Ds. PHH. Mustofa No. 267, Sawahlunto 74225, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(457, 'Satya Uwais', 'Jln. Abdullah No. 756, Pangkal Pinang 12480, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(458, 'Farhunnisa Novitasari M.TI.', 'Jr. Cut Nyak Dien No. 400, Metro 21202, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(459, 'Kamila Permata', 'Dk. Daan No. 148, Bima 71613, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(460, 'Harimurti Megantara', 'Ki. Bass No. 747, Cirebon 47605, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(461, 'Warsita Siregar S.E.I', 'Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 805, Sukabumi 16138, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(462, 'Zalindra Farida S.Gz', 'Dk. Basoka Raya No. 340, Tanjungbalai 33413, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(463, 'Viktor Prayoga S.E.I', 'Gg. Bass No. 929, Bima 11986, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(464, 'Tirta Tamba', 'Dk. Pelajar Pejuang 45 No. 526, Bukittinggi 51376, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(465, 'Ajiono Sitompul', 'Psr. Basket No. 788, Solok 63113, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(466, 'Malika Kusmawati M.TI.', 'Kpg. Basuki No. 810, Parepare 54074, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(467, 'Cengkir Utama S.Gz', 'Kpg. Moch. Toha No. 89, Tangerang Selatan 81381, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(468, 'Dalima Farida', 'Ki. Sugiyopranoto No. 36, Batu 58616, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(469, 'Zamira Lailasari', 'Jr. Rajiman No. 443, Prabumulih 89056, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(470, 'Puspa Clara Maryati', 'Psr. Sentot Alibasa No. 72, Tegal 85063, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(471, 'Kardi Ade Sihombing S.Ked', 'Gg. Cemara No. 4, Probolinggo 50655, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(472, 'Putri Patricia Susanti', 'Ds. Suprapto No. 276, Tual 22771, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(473, 'Lutfan Irawan', 'Dk. BKR No. 777, Parepare 88048, Gorontalo', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(474, 'Vivi Mulyani', 'Jr. Pattimura No. 190, Padang 83119, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(475, 'Genta Rahmawati', 'Dk. Kali No. 402, Kendari 58372, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(476, 'Dasa Rajata', 'Gg. Kyai Gede No. 635, Lubuklinggau 53834, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(477, 'Lalita Julia Lailasari', 'Kpg. Taman No. 12, Singkawang 24537, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(478, 'Farhunnisa Rahayu', 'Jln. Dago No. 30, Payakumbuh 42465, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(479, 'Karimah Puput Nurdiyanti S.T.', 'Jr. Nanas No. 720, Administrasi Jakarta Timur 14102, Babel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(480, 'Cawisadi Ramadan', 'Jr. Sugiyopranoto No. 538, Tegal 80714, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(481, 'Jelita Almira Haryanti M.TI.', 'Ds. Gading No. 606, Surabaya 89821, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(482, 'Hafshah Pudjiastuti', 'Psr. Pelajar Pejuang 45 No. 833, Makassar 64460, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(483, 'Yani Nabila Prastuti', 'Jr. Sutarto No. 348, Blitar 89623, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(484, 'Bambang Waluyo', 'Gg. Qrisdoren No. 356, Parepare 56012, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(485, 'Paris Keisha Nuraini', 'Gg. Sutami No. 572, Bima 27760, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(486, 'Setya Prabowo', 'Jln. Bagis Utama No. 975, Bogor 27607, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(487, 'Among Hidayanto', 'Ki. Baing No. 795, Tarakan 56092, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(488, 'Danuja Saefullah', 'Jln. Dago No. 513, Serang 76499, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(489, 'Tantri Suryatmi', 'Jr. Nakula No. 548, Bandung 67206, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(490, 'Wadi Wibowo', 'Ds. Bambu No. 140, Gunungsitoli 18517, Gorontalo', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(491, 'Karna Kurniawan', 'Ki. M.T. Haryono No. 603, Administrasi Jakarta Pusat 52692, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(492, 'Betania Hassanah', 'Ds. Yoga No. 705, Bima 22817, Kepri', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(493, 'Ade Hidayanto', 'Gg. Gajah No. 784, Pekalongan 66051, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(494, 'Irnanto Kenari Firgantoro S.Ked', 'Gg. Panjaitan No. 248, Prabumulih 31593, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(495, 'Adinata Opan Mahendra', 'Dk. Baranang Siang Indah No. 112, Administrasi Jakarta Selatan 64309, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(496, 'Hasna Winarsih', 'Kpg. Baranang Siang No. 589, Palembang 31158, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(497, 'Lasmono Mahesa Anggriawan', 'Jr. Sutarjo No. 577, Banjar 64227, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(498, 'Warji Damanik M.Pd', 'Jr. Kalimantan No. 506, Denpasar 50788, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(499, 'Artanto Gilang Firgantoro S.E.', 'Jr. Bara No. 716, Tanjungbalai 34203, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(500, 'Ella Gilda Wijayanti S.E.', 'Gg. B.Agam Dlm No. 196, Bandung 97634, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(501, 'Vivi Intan Hassanah M.Farm', 'Psr. Yos Sudarso No. 492, Yogyakarta 40821, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(502, 'Wage Latif Zulkarnain S.I.Kom', 'Gg. Bakit  No. 331, Manado 80963, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(503, 'Edi Damanik', 'Psr. Suharso No. 859, Pontianak 19797, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(504, 'Halima Mayasari S.Gz', 'Jln. Banceng Pondok No. 278, Sawahlunto 32714, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(505, 'Harsana Saragih', 'Ds. Achmad Yani No. 746, Bontang 64645, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(506, 'Eka Zaenab Puspasari M.TI.', 'Jln. Abdul Muis No. 850, Batu 19426, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(507, 'Iriana Wastuti', 'Psr. Basudewo No. 820, Bau-Bau 28794, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(508, 'Jamal Halim S.E.', 'Gg. Laksamana No. 685, Bandung 38197, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(509, 'Cagak Olga Najmudin', 'Jr. Tambun No. 390, Administrasi Jakarta Timur 28627, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(510, 'Maya Mulyani', 'Dk. Setia Budi No. 913, Tangerang 89100, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(511, 'Kenes Taufik Budiman S.Gz', 'Ki. Abang No. 39, Salatiga 66437, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(512, 'Gilang Napitupulu', 'Ki. BKR No. 211, Administrasi Jakarta Pusat 54831, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(513, 'Gandewa Januar', 'Gg. Salatiga No. 729, Dumai 84124, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(514, 'Adhiarja Sinaga', 'Psr. Babakan No. 289, Pontianak 84553, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(515, 'Warta Prasetyo', 'Jln. Flores No. 676, Sungai Penuh 24717, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(516, 'Novi Wastuti', 'Dk. Ciwastra No. 620, Denpasar 10589, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(517, 'Aisyah Maryati', 'Gg. Madrasah No. 712, Tangerang 53331, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(518, 'Kamaria Nasyidah', 'Ds. Bagas Pati No. 739, Makassar 78753, Papua', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(519, 'Kayla Yolanda', 'Jr. Supomo No. 597, Banjarbaru 33056, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(520, 'Farah Zulaika', 'Jr. Acordion No. 867, Bitung 43323, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(521, 'Jaka Tarihoran S.IP', 'Jr. Raya Setiabudhi No. 918, Tarakan 39696, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(522, 'Nurul Yolanda', 'Gg. K.H. Wahid Hasyim (Kopo) No. 787, Tidore Kepulauan 78589, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(523, 'Rachel Padmasari', 'Kpg. Merdeka No. 488, Padangpanjang 90449, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(524, 'Cinthia Shakila Yuniar', 'Ki. Suniaraja No. 351, Palopo 63013, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(525, 'Argono Luthfi Winarno S.Gz', 'Jr. R.E. Martadinata No. 506, Batam 88381, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(526, 'Mulyono Dongoran', 'Psr. Nangka No. 936, Medan 72913, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(527, 'Gilda Astuti', 'Jr. Kiaracondong No. 205, Probolinggo 70089, Gorontalo', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(528, 'Kusuma Dabukke S.Pt', 'Ki. Ahmad Dahlan No. 58, Subulussalam 21445, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(529, 'Labuh Lega Suwarno M.M.', 'Jr. Baladewa No. 475, Kotamobagu 58281, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(530, 'Ani Jasmin Usamah', 'Kpg. Perintis Kemerdekaan No. 419, Denpasar 58412, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(531, 'Sadina Rahayu M.Pd', 'Ds. Merdeka No. 531, Payakumbuh 61945, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(532, 'Dono Hardiansyah S.Farm', 'Psr. Lumban Tobing No. 307, Cilegon 75661, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(533, 'Ivan Prabowo', 'Psr. Gotong Royong No. 542, Padangpanjang 49461, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(534, 'Bambang Waskita', 'Jr. Baja Raya No. 787, Gorontalo 17082, Bali', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(535, 'Dalima Utami S.IP', 'Gg. Flores No. 483, Pangkal Pinang 20849, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(536, 'Rahmat Januar S.Gz', 'Psr. Babadak No. 129, Padangpanjang 66107, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(537, 'Artanto Liman Pranowo S.Farm', 'Jr. Bass No. 988, Manado 11739, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(538, 'Padma Agustina', 'Jr. Sudiarto No. 18, Palu 46426, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(539, 'Setya Irawan', 'Dk. Abdul Muis No. 751, Administrasi Jakarta Selatan 71689, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(540, 'Patricia Suartini S.IP', 'Dk. Sampangan No. 124, Administrasi Jakarta Timur 79555, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(541, 'Muhammad Mustofa', 'Ds. Gajah No. 123, Kendari 50012, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(542, 'Najam Thamrin', 'Kpg. Laswi No. 4, Bandung 78905, Kepri', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(543, 'Rahmi Purnawati', 'Gg. Baya Kali Bungur No. 491, Administrasi Jakarta Selatan 66451, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(544, 'Hendra Rajasa S.Farm', 'Ds. Imam No. 339, Binjai 12110, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(545, 'Titin Handayani', 'Jln. Dago No. 671, Payakumbuh 96315, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(546, 'Dina Rahimah', 'Ki. Untung Suropati No. 493, Langsa 74500, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(547, 'Winda Uyainah', 'Ki. Bambu No. 112, Pangkal Pinang 53905, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(548, 'Ulya Yolanda', 'Kpg. Padang No. 165, Padangpanjang 50708, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(549, 'Candrakanta Karya Manullang S.Kom', 'Ki. Salak No. 133, Langsa 28559, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(550, 'Darimin Hakim', 'Jr. Pasirkoja No. 568, Surabaya 68178, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(551, 'Langgeng Nababan', 'Psr. Wahidin Sudirohusodo No. 489, Batu 90133, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(552, 'Qori Yuliarti', 'Jln. Madiun No. 703, Sawahlunto 12742, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(553, 'Sabri Ivan Putra S.IP', 'Ds. Baabur Royan No. 979, Padang 35701, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(554, 'Betania Titi Riyanti M.M.', 'Gg. Achmad Yani No. 184, Sorong 98357, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(555, 'Kiandra Handayani', 'Psr. Sutan Syahrir No. 459, Tegal 35158, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(556, 'Suci Oliva Pudjiastuti S.Gz', 'Gg. Cut Nyak Dien No. 898, Tasikmalaya 14319, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(557, 'Nurul Hassanah', 'Jr. Bakin No. 971, Palangka Raya 45296, Bali', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(558, 'Nrima Natsir', 'Ki. Sudirman No. 323, Pangkal Pinang 56661, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(559, 'Aslijan Waskita M.TI.', 'Kpg. Pasteur No. 691, Pangkal Pinang 65108, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(560, 'Shakila Ratna Kusmawati', 'Jr. Rajawali Timur No. 596, Tanjungbalai 77494, Banten', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(561, 'Vivi Pudjiastuti', 'Dk. Surapati No. 343, Cilegon 82329, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(562, 'Salwa Utami', 'Psr. Baik No. 479, Administrasi Jakarta Selatan 17303, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(563, 'Umi Wijayanti S.Pd', 'Gg. Bakau No. 954, Palangka Raya 87224, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(564, 'Kartika Aryani', 'Jr. Cikutra Timur No. 882, Sabang 64164, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(565, 'Tami Wulandari', 'Jr. Uluwatu No. 736, Tarakan 16042, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(566, 'Jamalia Laksmiwati', 'Kpg. Imam No. 121, Banjar 53702, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(567, 'Elvin Embuh Kuswoyo M.Pd', 'Ds. Mahakam No. 148, Binjai 27388, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(568, 'Fathonah Elisa Puspasari', 'Kpg. Sugiyopranoto No. 24, Kupang 79431, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(569, 'Danu Gara Budiyanto S.Pt', 'Psr. Asia Afrika No. 22, Pangkal Pinang 38372, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(570, 'Jindra Kenes Firmansyah', 'Jr. Bappenas No. 447, Kotamobagu 43033, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(571, 'Gilang Mulya Wasita', 'Ki. Achmad Yani No. 317, Malang 33802, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(572, 'Unjani Purwanti', 'Jr. Elang No. 544, Binjai 89281, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(573, 'Tedi Pradana', 'Gg. Teuku Umar No. 84, Gunungsitoli 80637, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(574, 'Amalia Rahayu', 'Psr. Basudewo No. 611, Sawahlunto 18720, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(575, 'Ana Hartati', 'Jr. Supomo No. 536, Tanjung Pinang 52212, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(576, 'Yoga Dasa Suryono M.Ak', 'Jr. Bakaru No. 258, Binjai 67619, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(577, 'Almira Kuswandari', 'Dk. Setia Budi No. 573, Magelang 44928, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(578, 'Yuliana Nasyidah', 'Jr. Veteran No. 449, Jayapura 71249, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(579, 'Heryanto Hutapea', 'Dk. Ters. Buah Batu No. 46, Denpasar 49036, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(580, 'Lili Ellis Mandasari S.Gz', 'Ki. Rumah Sakit No. 58, Tanjungbalai 33069, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(581, 'Garang Oskar Tamba', 'Dk. Achmad Yani No. 632, Padang 95387, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(582, 'Jaswadi Mangunsong', 'Dk. Cemara No. 445, Padangsidempuan 27263, Gorontalo', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(583, 'Dian Padmasari S.Pd', 'Dk. R.M. Said No. 457, Padangpanjang 83558, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(584, 'Wulan Wulan Usamah', 'Dk. Bak Air No. 834, Bandung 46322, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(585, 'Enteng Prasasta M.Farm', 'Psr. Reksoninten No. 720, Payakumbuh 34107, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(586, 'Vino Mustofa', 'Ki. Adisucipto No. 271, Tangerang 96579, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(587, 'Hendra Xanana Habibi S.Ked', 'Dk. Raya Ujungberung No. 837, Banjar 77178, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(588, 'Luthfi Kasiran Irawan M.TI.', 'Ds. Raden Saleh No. 704, Tanjungbalai 15994, Bali', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(589, 'Ayu Maryati', 'Gg. Moch. Ramdan No. 91, Samarinda 24631, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(590, 'Amelia Calista Anggraini M.Pd', 'Psr. Warga No. 763, Tanjung Pinang 36353, Aceh', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(591, 'Danuja Mangunsong', 'Gg. Dahlia No. 807, Blitar 19716, DKI', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(592, 'Kezia Permata', 'Ds. Bakau No. 22, Jayapura 29579, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(593, 'Sadina Prastuti', 'Kpg. Bass No. 582, Jambi 14337, Kalbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(594, 'Galang Agus Suwarno M.Ak', 'Ki. Bara No. 139, Tangerang 34449, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(595, 'Victoria Permata', 'Gg. Yogyakarta No. 781, Administrasi Jakarta Barat 97754, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(596, 'Olivia Puput Halimah S.Gz', 'Ki. Yogyakarta No. 551, Kupang 69679, DIY', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(597, 'Ajeng Yance Riyanti S.IP', 'Gg. Abdul Rahmat No. 518, Administrasi Jakarta Utara 50798, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(598, 'Salman Gunawan', 'Kpg. Ters. Jakarta No. 190, Kupang 52428, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(599, 'Elvin Sinaga S.Sos', 'Ds. Rajawali Timur No. 383, Solok 92704, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(600, 'Budi Maryadi', 'Kpg. Cikutra Barat No. 564, Palopo 10841, Jambi', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(601, 'Kasiran Gandi Ramadan', 'Jln. Radio No. 539, Gunungsitoli 59608, Sultra', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(602, 'Ratih Mila Permata M.Pd', 'Kpg. Rajawali Barat No. 297, Sungai Penuh 85640, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(603, 'Elvin Salahudin S.Sos', 'Jr. Raden No. 808, Bandung 32964, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(604, 'Kacung Waluyo', 'Ki. Yos Sudarso No. 739, Administrasi Jakarta Selatan 35780, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(605, 'Cayadi Maryadi', 'Psr. Jamika No. 684, Sabang 31972, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(606, 'Raharja Maryadi S.IP', 'Dk. Sunaryo No. 817, Banjar 23582, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(607, 'Cager Pranowo S.I.Kom', 'Jr. Teuku Umar No. 743, Tasikmalaya 99632, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(608, 'Ciaobella Purwanti', 'Psr. Wora Wari No. 963, Bau-Bau 98397, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(609, 'Banara Sitorus', 'Jln. Tambak No. 228, Sungai Penuh 53624, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(610, 'Hartana Nababan', 'Jln. Sam Ratulangi No. 389, Pekanbaru 11897, Kepri', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(611, 'Vera Yolanda', 'Jr. Lembong No. 221, Semarang 98550, Babel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(612, 'Zulfa Hartati', 'Jr. Hang No. 837, Sukabumi 75338, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(613, 'Wirda Hastuti', 'Ds. Asia Afrika No. 817, Tanjung Pinang 16411, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(614, 'Rahmi Elvina Hassanah', 'Ki. Bank Dagang Negara No. 640, Gorontalo 81795, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(615, 'Reza Pradipta', 'Jln. Acordion No. 104, Parepare 62294, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(616, 'Dalima Pertiwi', 'Ki. Sutarto No. 860, Padang 41270, Sumsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(617, 'Ellis Permata', 'Jln. R.E. Martadinata No. 543, Administrasi Jakarta Timur 57498, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(618, 'Wadi Prayitna Mangunsong', 'Jln. Yohanes No. 289, Administrasi Jakarta Pusat 39554, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(619, 'Vanya Namaga S.H.', 'Psr. Orang No. 648, Jayapura 48793, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(620, 'Taufan Prakasa M.Ak', 'Jln. Basudewo No. 765, Palangka Raya 82583, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(621, 'Asirwada Hardiansyah', 'Kpg. Yap Tjwan Bing No. 709, Depok 89183, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(622, 'Zalindra Melani', 'Psr. Krakatau No. 792, Bandung 33411, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(623, 'Septi Wulan Uyainah M.Farm', 'Ds. Barat No. 626, Tegal 24976, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(624, 'Agnes Cindy Melani M.Kom.', 'Ki. Sutarjo No. 446, Padangpanjang 41302, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(625, 'Sabrina Farah Rahayu', 'Ki. Yosodipuro No. 657, Dumai 81779, Babel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(626, 'Dono Ega Utama', 'Dk. Jambu No. 267, Lhokseumawe 37230, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(627, 'Carub Bakiadi Rajasa M.M.', 'Gg. Laswi No. 365, Dumai 62895, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(628, 'Kasim Prayogo Manullang', 'Psr. B.Agam Dlm No. 361, Tegal 15708, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(629, 'Cici Namaga S.Sos', 'Jln. Sukajadi No. 384, Sukabumi 76453, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(630, 'Mujur Kuswoyo', 'Kpg. Basuki No. 424, Subulussalam 45144, DIY', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(631, 'Queen Halimah', 'Kpg. Basuki Rahmat  No. 75, Pariaman 38133, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(632, 'Galih Pangestu', 'Dk. Tambun No. 556, Surakarta 80694, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(633, 'Martani Zulkarnain', 'Jr. Madiun No. 609, Kupang 42702, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(634, 'Digdaya Kasim Iswahyudi', 'Kpg. Sunaryo No. 71, Tual 48500, Bengkulu', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(635, 'Gadang Hakim', 'Ds. Laksamana No. 584, Sungai Penuh 78148, NTB', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(636, 'Ismail Utama', 'Gg. Moch. Toha No. 326, Tidore Kepulauan 91904, Sumut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(637, 'Gaduh Zulkarnain', 'Jln. Adisumarmo No. 846, Yogyakarta 24927, Jateng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(638, 'Citra Ella Hastuti', 'Jr. Gambang No. 928, Padang 92991, Sulteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(639, 'Yuliana Talia Usada', 'Jln. Salam No. 968, Tebing Tinggi 56519, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(640, 'Lurhur Saragih S.Sos', 'Gg. Halim No. 476, Kediri 26676, Kaltara', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(641, 'Ian Atmaja Mahendra S.H.', 'Jr. Sukajadi No. 511, Sawahlunto 52681, Kaltim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(642, 'Lega Lukita Tarihoran S.T.', 'Ki. Gotong Royong No. 36, Manado 62942, Maluku', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(643, 'Lega Pratama', 'Jr. PHH. Mustofa No. 999, Denpasar 28506, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(644, 'Putri Andriani', 'Ki. Achmad Yani No. 199, Banjarbaru 67686, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(645, 'Janet Latika Puspita', 'Kpg. Abdul Rahmat No. 329, Tarakan 90461, Pabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(646, 'Hesti Kasiyah Palastri', 'Jln. Sam Ratulangi No. 219, Cirebon 82144, Sulbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(647, 'Nurul Suartini', 'Dk. Flores No. 626, Administrasi Jakarta Timur 76897, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(648, 'Zahra Sudiati', 'Psr. Kyai Gede No. 94, Sabang 33070, Malut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(649, 'Rahmi Zelda Zulaika', 'Ki. Sutarjo No. 197, Solok 37149, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(650, 'Kamal Gunawan', 'Ki. K.H. Wahid Hasyim (Kopo) No. 898, Madiun 65360, Sulut', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(651, 'Edison Sihombing', 'Gg. Yosodipuro No. 41, Balikpapan 67235, DIY', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(652, 'Gilang Kenzie Wibisono S.Farm', 'Kpg. Baranangsiang No. 733, Tasikmalaya 35991, Kepri', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(653, 'Tina Hariyah', 'Ds. Abdul. Muis No. 142, Dumai 39586, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(654, 'Kemba Natsir', 'Ki. Suniaraja No. 815, Solok 13744, Gorontalo', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(655, 'Wirda Puspasari S.I.Kom', 'Kpg. Bagis Utama No. 142, Kupang 97639, Riau', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(656, 'Usyi Nasyiah', 'Psr. Samanhudi No. 98, Sungai Penuh 35239, Kalsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(657, 'Heru Praba Damanik S.Kom', 'Jln. Achmad Yani No. 222, Surabaya 98758, Bali', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(658, 'Lukman Pratama', 'Dk. Baja Raya No. 214, Padang 61950, Sulsel', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(659, 'Pranawa Gilang Waskita S.Ked', 'Gg. HOS. Cjokroaminoto (Pasirkaliki) No. 553, Administrasi Jakarta Barat 71203, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(660, 'Manah Wardi Utama S.Ked', 'Kpg. Hasanuddin No. 965, Administrasi Jakarta Timur 70891, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(661, 'Paulin Alika Mayasari', 'Gg. Sampangan No. 806, Batu 61124, Jabar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(662, 'Jagaraga Prasetyo', 'Psr. Eka No. 231, Lhokseumawe 29561, Kalteng', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(663, 'Cakrawala Lamar Suwarno', 'Kpg. Sam Ratulangi No. 645, Singkawang 40602, Lampung', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(664, 'Ina Winarsih', 'Jln. Batako No. 349, Tegal 85693, Sumbar', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(665, 'Dian Permata', 'Jr. Ir. H. Juanda No. 559, Palu 76315, NTT', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(666, 'Kasiyah Halimah', 'Psr. Salak No. 822, Mataram 66030, Jatim', '2021-09-16 22:39:06', '2021-09-16 22:39:06'),
(667, 'Paiman Marwata Siregar', 'Kpg. Bambu No. 629, Prabumulih 56315, Aceh', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(668, 'Maida Nurdiyanti S.Sos', 'Kpg. Sutoyo No. 515, Pekanbaru 79598, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(669, 'Azalea Citra Hartati', 'Psr. Ketandan No. 544, Palopo 87357, Kalteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(670, 'Farhunnisa Padmasari', 'Kpg. Setia Budi No. 485, Administrasi Jakarta Utara 58215, Jabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(671, 'Okta Narpati', 'Ki. Rumah Sakit No. 793, Surabaya 31015, Papua', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(672, 'Hendra Banara Sitompul', 'Kpg. Gegerkalong Hilir No. 462, Lubuklinggau 10967, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(673, 'Gading Pranowo', 'Dk. Gambang No. 679, Gorontalo 68530, Sumsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(674, 'Jessica Puspasari S.H.', 'Ds. Gardujati No. 924, Sungai Penuh 12973, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(675, 'Wardi Malik Suwarno M.M.', 'Gg. Astana Anyar No. 931, Tanjungbalai 97082, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(676, 'Kusuma Firmansyah', 'Gg. HOS. Cjokroaminoto (Pasirkaliki) No. 393, Pariaman 87844, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(677, 'Pia Hasna Nasyiah M.Pd', 'Kpg. Eka No. 904, Lubuklinggau 70179, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(678, 'Rahman Siregar', 'Ds. Babadak No. 601, Tanjung Pinang 87640, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(679, 'Faizah Nasyidah', 'Ds. Muwardi No. 955, Sukabumi 10100, Sulbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(680, 'Irfan Salman Rajasa S.E.I', 'Jln. Krakatau No. 582, Banjarmasin 57138, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(681, 'Panca Sihombing S.Ked', 'Ki. Batako No. 765, Bau-Bau 88612, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(682, 'Laras Ratih Hartati', 'Jln. Basuki No. 586, Tebing Tinggi 52374, Kalsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(683, 'Elvina Laksita', 'Jln. Soekarno Hatta No. 735, Magelang 50969, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(684, 'Najam Najmudin', 'Ds. Baranang Siang No. 508, Banjar 18610, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(685, 'Jamalia Rahmawati', 'Kpg. Taman No. 296, Tangerang 24804, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(686, 'Bakianto Asirwada Prabowo M.Farm', 'Gg. Baik No. 920, Malang 18264, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(687, 'Ratih Agustina', 'Kpg. Dewi Sartika No. 808, Solok 41739, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(688, 'Artanto Prayoga', 'Gg. Otto No. 644, Langsa 61530, Jabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(689, 'Amalia Agustina S.Kom', 'Jln. Pacuan Kuda No. 702, Bandar Lampung 98791, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(690, 'Kezia Permata S.Ked', 'Psr. Cikapayang No. 155, Lhokseumawe 77398, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(691, 'Fathonah Riyanti', 'Dk. Otto No. 701, Tebing Tinggi 34741, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(692, 'Yono Saefullah', 'Jr. Bawal No. 150, Kediri 62948, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(693, 'Cager Prakasa', 'Ds. Banda No. 411, Tarakan 59675, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(694, 'Alika Anggraini S.E.I', 'Dk. Dago No. 136, Subulussalam 42795, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(695, 'Tri Pranata Manullang S.Pd', 'Jln. Bacang No. 93, Bukittinggi 17218, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(696, 'Yuliana Agustina S.Farm', 'Ki. Babadan No. 985, Kendari 68137, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(697, 'Baktiono Widodo', 'Ki. Abdul. Muis No. 307, Bitung 43397, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(698, 'Simon Jono Januar S.IP', 'Psr. R.E. Martadinata No. 417, Tegal 26336, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(699, 'Yuni Permata S.Sos', 'Ki. Sugiyopranoto No. 368, Palembang 36696, Sumsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(700, 'Kamaria Palastri', 'Psr. Baya Kali Bungur No. 309, Tangerang Selatan 53507, Sulbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(701, 'Mulyono Hidayanto M.Farm', 'Jln. Juanda No. 393, Samarinda 68939, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(702, 'Jelita Padmasari', 'Psr. Sugiyopranoto No. 72, Langsa 66191, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(703, 'Ega Kusumo', 'Ki. Baya Kali Bungur No. 71, Tomohon 34537, Jatim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(704, 'Malika Mayasari', 'Psr. Moch. Ramdan No. 39, Binjai 31694, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(705, 'Wisnu Permadi', 'Ds. Baiduri No. 308, Bengkulu 92352, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(706, 'Mahfud Bagas Lazuardi S.Pd', 'Ki. Ketandan No. 573, Tasikmalaya 26894, Sumsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(707, 'Karma Wasita', 'Jln. Antapani Lama No. 997, Yogyakarta 85903, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(708, 'Mahfud Sinaga', 'Kpg. Gajah No. 577, Palangka Raya 28636, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(709, 'Cemani Widodo', 'Jln. Hang No. 99, Pekalongan 54476, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(710, 'Citra Nasyidah S.E.I', 'Jln. Ahmad Dahlan No. 913, Magelang 60106, Kaltim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(711, 'Dimaz Firgantoro', 'Jln. Bayan No. 351, Tomohon 27201, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(712, 'Karimah Halimah', 'Kpg. Pahlawan No. 827, Ternate 98505, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(713, 'Silvia Agustina S.Farm', 'Kpg. Padma No. 655, Makassar 10434, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(714, 'Ana Handayani', 'Kpg. Urip Sumoharjo No. 361, Cimahi 31252, Kaltim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(715, 'Calista Novitasari', 'Ds. PHH. Mustofa No. 345, Jambi 27934, Kaltim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(716, 'Dadap Rendy Rajata', 'Ki. Babah No. 366, Sabang 75875, Pabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(717, 'Kardi Asirwada Prayoga S.I.Kom', 'Kpg. Veteran No. 933, Bontang 78534, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(718, 'Dirja Tamba', 'Ds. Madrasah No. 959, Palu 80389, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(719, 'Ibrani Sitompul', 'Ds. Juanda No. 955, Lubuklinggau 70837, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(720, 'Fitriani Kusmawati', 'Psr. Bahagia  No. 164, Banda Aceh 38597, Sulsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(721, 'Rahmi Rahmawati', 'Gg. Bak Mandi No. 993, Sawahlunto 62152, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(722, 'Garda Naradi Tamba M.Ak', 'Dk. Lada No. 15, Magelang 66386, Papua', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(723, 'Carla Aryani M.Kom.', 'Dk. R.E. Martadinata No. 846, Depok 62710, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(724, 'Tantri Novitasari S.Sos', 'Gg. Ronggowarsito No. 511, Gorontalo 19248, Kalsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(725, 'Malik Rajasa', 'Jln. Basoka No. 735, Tomohon 81345, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(726, 'Ghani Megantara', 'Jr. Nanas No. 188, Tanjung Pinang 33876, NTB', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(727, 'Hani Suartini', 'Jr. Basoka No. 227, Malang 93497, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(728, 'Asman Napitupulu S.Ked', 'Dk. Kebangkitan Nasional No. 467, Pagar Alam 33997, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(729, 'Dewi Lailasari', 'Ki. Abdul No. 332, Tanjungbalai 60481, Sumut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(730, 'Tedi Natsir', 'Jr. Baik No. 403, Pasuruan 70161, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(731, 'Candrakanta Prayoga', 'Ds. Reksoninten No. 890, Banda Aceh 87017, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(732, 'Cemeti Natsir', 'Gg. Baik No. 961, Tangerang 40048, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(733, 'Jarwi Utama', 'Ki. Flores No. 141, Solok 18513, Pabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(734, 'Kania Halimah M.Farm', 'Ds. Bambon No. 936, Bandar Lampung 60756, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(735, 'Bahuwirya Perkasa Suryono', 'Psr. Tentara Pelajar No. 341, Balikpapan 53984, Kalteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(736, 'Dina Laila Mardhiyah', 'Ki. Moch. Ramdan No. 357, Mojokerto 48503, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(737, 'Dipa Maheswara S.Kom', 'Ds. Raya Setiabudhi No. 417, Pematangsiantar 57658, Papua', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(738, 'Gamblang Tampubolon', 'Dk. Panjaitan No. 579, Batu 62032, Jabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(739, 'Asmadi Habibi', 'Dk. Bazuka Raya No. 235, Cirebon 77262, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(740, 'Hilda Namaga', 'Ki. Tambak No. 503, Banjarbaru 82022, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(741, 'Cawuk Nababan S.IP', 'Gg. Perintis Kemerdekaan No. 391, Probolinggo 65462, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(742, 'Vicky Riyanti M.Kom.', 'Dk. Baung No. 689, Mataram 49384, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(743, 'Usman Nainggolan', 'Jln. Bara Tambar No. 223, Parepare 62762, Kalteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(744, 'Genta Hariyah S.Psi', 'Gg. Wora Wari No. 627, Prabumulih 80334, Papua', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(745, 'Farhunnisa Kamila Hassanah S.Pd', 'Psr. Raden No. 501, Gunungsitoli 33077, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(746, 'Paris Icha Sudiati', 'Jln. Babah No. 167, Padang 41454, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(747, 'Ina Kamaria Padmasari', 'Ki. Abdul. Muis No. 248, Administrasi Jakarta Pusat 90356, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(748, 'Zizi Yuni Palastri S.IP', 'Ki. Jagakarsa No. 464, Bima 48446, Jabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(749, 'Bakianto Sitorus', 'Jr. Bambu No. 314, Pangkal Pinang 48502, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(750, 'Cemani Tarihoran S.Pt', 'Psr. Baranangsiang No. 732, Pekalongan 18391, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(751, 'Febi Usada M.Farm', 'Gg. Aceh No. 531, Salatiga 25531, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(752, 'Ayu Tiara Nasyidah', 'Jln. Pasir Koja No. 495, Administrasi Jakarta Utara 35868, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(753, 'Marsudi Permadi', 'Jln. Babakan No. 254, Payakumbuh 33260, Kalsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(754, 'Jumadi Saefullah', 'Kpg. Babadak No. 201, Administrasi Jakarta Selatan 44252, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(755, 'Prabu Cahyo Mangunsong S.Pd', 'Ds. Pelajar Pejuang 45 No. 381, Administrasi Jakarta Barat 22040, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(756, 'Darmanto Nashiruddin', 'Jln. Nakula No. 87, Tarakan 54136, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(757, 'Lili Fitria Fujiati S.Farm', 'Gg. Cikapayang No. 355, Pontianak 10848, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(758, 'Bajragin Irawan S.Gz', 'Dk. Tambak No. 868, Bekasi 18913, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(759, 'Paris Oliva Usamah M.Farm', 'Jln. Elang No. 736, Sawahlunto 26540, Kaltim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(760, 'Yusuf Gamani Siregar S.Pd', 'Jln. Bakau No. 170, Parepare 95055, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(761, 'Rina Utami', 'Ki. Pasirkoja No. 933, Administrasi Jakarta Timur 21849, Pabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(762, 'Rahmi Gilda Rahimah S.Pt', 'Psr. R.E. Martadinata No. 988, Pontianak 47977, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(763, 'Aslijan Hardiansyah', 'Jr. Hang No. 159, Administrasi Jakarta Pusat 15439, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(764, 'Julia Mandasari', 'Kpg. Pacuan Kuda No. 735, Tual 91941, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(765, 'Sabri Hutapea', 'Ki. Bakau No. 413, Blitar 73514, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(766, 'Maryanto Napitupulu', 'Kpg. Taman No. 688, Surabaya 80533, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(767, 'Lala Putri Yulianti', 'Gg. Imam Bonjol No. 684, Pagar Alam 47856, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(768, 'Aris Panca Pradana M.Farm', 'Dk. Gambang No. 226, Pariaman 83172, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(769, 'Yance Astuti S.Gz', 'Psr. Bakit  No. 803, Kediri 15030, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(770, 'Ciaobella Uyainah S.Sos', 'Ds. Hang No. 355, Sorong 22165, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(771, 'Warta Firgantoro S.Kom', 'Jln. Monginsidi No. 444, Samarinda 48713, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(772, 'Farhunnisa Maryati', 'Kpg. Babadak No. 342, Administrasi Jakarta Utara 23041, Lampung', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(773, 'Galiono Siregar', 'Psr. Kiaracondong No. 2, Tomohon 44973, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(774, 'Umay Hardana Hutasoit S.Farm', 'Jr. Ters. Pasir Koja No. 989, Lubuklinggau 94165, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(775, 'Nadine Febi Nasyidah S.H.', 'Jln. Sukabumi No. 179, Tidore Kepulauan 66079, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(776, 'Prayoga Megantara', 'Jr. Baha No. 382, Balikpapan 38471, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(777, 'Queen Titi Nasyiah M.M.', 'Psr. Padang No. 694, Semarang 81433, Jabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(778, 'Pangestu Ikhsan Winarno', 'Ds. Bakin No. 51, Batu 54688, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(779, 'Mutia Nurul Purwanti S.Ked', 'Ds. Baranang Siang Indah No. 454, Prabumulih 51602, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(780, 'Puti Sadina Andriani', 'Dk. Basuki No. 592, Langsa 93899, Pabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(781, 'Yusuf Wahyu Wahyudin S.Sos', 'Kpg. Hasanuddin No. 125, Surabaya 37512, Pabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(782, 'Harjo Firgantoro', 'Ds. Baha No. 671, Madiun 19364, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(783, 'Taufan Balamantri Siregar S.T.', 'Gg. Eka No. 843, Solok 10270, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(784, 'Faizah Tami Wastuti', 'Dk. B.Agam 1 No. 400, Tanjung Pinang 52553, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(785, 'Queen Yolanda', 'Dk. Sadang Serang No. 202, Administrasi Jakarta Selatan 24161, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(786, 'Rini Puspita', 'Jln. Otista No. 370, Administrasi Jakarta Selatan 36580, Kaltim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(787, 'Wardi Dabukke', 'Gg. Gegerkalong Hilir No. 421, Cirebon 62348, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(788, 'Anggabaya Zulkarnain', 'Ki. Sugiyopranoto No. 646, Singkawang 25905, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(789, 'Cakrabirawa Pratama S.Psi', 'Jr. Daan No. 516, Palopo 30925, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(790, 'Endah Mandasari S.Farm', 'Gg. Rajiman No. 762, Tual 65519, Sulsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(791, 'Widya Hana Novitasari S.E.', 'Jln. Cut Nyak Dien No. 514, Denpasar 38567, Kalsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(792, 'Adiarja Wijaya S.Ked', 'Jln. Qrisdoren No. 406, Kotamobagu 40675, NTB', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(793, 'Dian Olivia Prastuti S.Farm', 'Gg. HOS. Cjokroaminoto (Pasirkaliki) No. 716, Pontianak 37322, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(794, 'Wirda Lestari S.Ked', 'Kpg. Bacang No. 62, Ternate 87464, Sulbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(795, 'Cayadi Siregar', 'Jln. Baabur Royan No. 22, Singkawang 80280, Sulbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(796, 'Novi Widiastuti', 'Ki. Bakaru No. 283, Pekalongan 63458, Jatim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(797, 'Eja Haryanto', 'Kpg. Padma No. 581, Administrasi Jakarta Pusat 76737, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(798, 'Syahrini Hariyah', 'Gg. Baranang Siang Indah No. 361, Tanjung Pinang 17576, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(799, 'Harsana Siregar', 'Dk. Wahidin No. 718, Subulussalam 90797, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(800, 'Harjasa Megantara M.Farm', 'Ki. Salatiga No. 988, Medan 78423, Kalteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(801, 'Gilda Michelle Palastri', 'Gg. Bakau Griya Utama No. 538, Pagar Alam 30866, Jatim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(802, 'Emin Pangeran Rajasa S.Gz', 'Jln. Dipatiukur No. 690, Samarinda 20800, Sumut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(803, 'Darimin Nababan', 'Ki. Bakau No. 651, Ambon 21256, Sumsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(804, 'Asirwanda Hardiansyah S.E.I', 'Kpg. Perintis Kemerdekaan No. 546, Bitung 74404, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(805, 'Faizah Riyanti', 'Gg. Astana Anyar No. 15, Banjar 80322, Pabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(806, 'Zamira Pertiwi', 'Ds. Sukabumi No. 279, Probolinggo 17165, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(807, 'Puji Safitri', 'Ds. Suharso No. 207, Yogyakarta 68958, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07');
INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(808, 'Bahuraksa Simbolon', 'Ki. Laksamana No. 114, Administrasi Jakarta Barat 28616, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(809, 'Yani Paramita Suartini', 'Kpg. Casablanca No. 596, Palu 40288, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(810, 'Janet Indah Laksita S.Psi', 'Dk. Cemara No. 365, Metro 93752, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(811, 'Lala Aryani', 'Psr. Kyai Mojo No. 683, Administrasi Jakarta Timur 45387, Papua', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(812, 'Lamar Uwais', 'Kpg. Bazuka Raya No. 302, Tegal 71794, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(813, 'Cahyo Waskita', 'Jln. Achmad Yani No. 44, Banda Aceh 87409, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(814, 'Winda Aurora Halimah', 'Jr. Acordion No. 822, Sukabumi 38108, Jabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(815, 'Kalim Prakosa Waluyo S.Kom', 'Ds. R.M. Said No. 671, Lubuklinggau 83395, Jatim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(816, 'Cecep Anggriawan S.T.', 'Gg. Adisumarmo No. 750, Magelang 60468, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(817, 'Prabowo Gatra Prasasta', 'Dk. Katamso No. 136, Pekalongan 40403, Jatim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(818, 'Ozy Napitupulu', 'Dk. K.H. Wahid Hasyim (Kopo) No. 136, Pekalongan 69058, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(819, 'Irwan Mahendra', 'Kpg. Yoga No. 492, Prabumulih 46019, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(820, 'Alambana Budiman', 'Kpg. Jayawijaya No. 457, Serang 68818, Kalsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(821, 'Banara Saputra', 'Jln. Banceng Pondok No. 496, Pagar Alam 71171, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(822, 'Utama Aris Rajasa', 'Kpg. Basuki Rahmat  No. 466, Administrasi Jakarta Selatan 88291, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(823, 'Luis Gangsa Putra', 'Kpg. Tubagus Ismail No. 285, Malang 95173, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(824, 'Samiah Dewi Sudiati', 'Psr. Suryo No. 695, Bau-Bau 74855, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(825, 'Gangsar Prasetya S.IP', 'Gg. Bacang No. 677, Jambi 70705, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(826, 'Kania Unjani Handayani', 'Ds. Dipatiukur No. 81, Pariaman 82440, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(827, 'Utama Mangunsong', 'Jr. Baranang Siang Indah No. 811, Padangsidempuan 83769, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(828, 'Halim Narpati', 'Jr. Achmad Yani No. 647, Kotamobagu 69336, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(829, 'Taswir Mansur', 'Jln. Bahagia No. 811, Kupang 11641, Sumut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(830, 'Cici Maryati S.IP', 'Dk. Siliwangi No. 664, Kendari 85894, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(831, 'Wadi Marpaung S.Kom', 'Gg. Baung No. 463, Kendari 63817, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(832, 'Maman Jais Sitorus', 'Jln. Wora Wari No. 6, Administrasi Jakarta Selatan 97940, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(833, 'Luis Napitupulu S.Pt', 'Gg. Bass No. 191, Kupang 33908, Sumut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(834, 'Laras Tantri Mayasari', 'Ds. Sutoyo No. 985, Bandung 47953, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(835, 'Erik Situmorang S.IP', 'Dk. Wora Wari No. 94, Jayapura 71738, Lampung', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(836, 'Harsanto Sitorus', 'Jr. Dago No. 256, Palangka Raya 52759, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(837, 'Yulia Vanya Novitasari', 'Dk. Rumah Sakit No. 86, Mataram 29892, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(838, 'Olivia Sabrina Widiastuti S.Ked', 'Kpg. Muwardi No. 984, Palembang 21465, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(839, 'Betania Malika Safitri S.E.I', 'Jr. Bah Jaya No. 831, Yogyakarta 40065, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(840, 'Ulya Rahayu', 'Ki. Gotong Royong No. 833, Pasuruan 65578, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(841, 'Cinta Lala Nurdiyanti S.E.', 'Kpg. Baing No. 567, Subulussalam 55126, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(842, 'Edward Halim', 'Dk. Bazuka Raya No. 750, Surabaya 27194, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(843, 'Paramita Wastuti', 'Gg. B.Agam Dlm No. 889, Padangpanjang 42058, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(844, 'Mahmud Pratama', 'Jr. Baya Kali Bungur No. 113, Probolinggo 18354, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(845, 'Hamima Amelia Anggraini M.TI.', 'Jr. Gremet No. 857, Medan 11576, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(846, 'Ganjaran Dongoran S.Pt', 'Gg. Mahakam No. 582, Bau-Bau 28797, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(847, 'Kayla Vera Hariyah', 'Kpg. Bah Jaya No. 771, Pekalongan 99827, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(848, 'Ade Rachel Hassanah S.I.Kom', 'Psr. Dahlia No. 828, Mojokerto 49773, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(849, 'Lintang Purwanti', 'Ki. K.H. Maskur No. 539, Tanjung Pinang 47304, Sulbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(850, 'Irfan Baktiadi Prasetyo', 'Gg. Salatiga No. 134, Kotamobagu 58435, Sulsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(851, 'Vanya Haryanti S.Psi', 'Ki. Raden No. 245, Tasikmalaya 37455, Pabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(852, 'Gamanto Pradipta S.T.', 'Jr. Ekonomi No. 922, Prabumulih 47915, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(853, 'Talia Nurdiyanti S.Ked', 'Jln. Cihampelas No. 572, Tanjung Pinang 95022, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(854, 'Mitra Marpaung', 'Jr. Casablanca No. 310, Kediri 75870, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(855, 'Najwa Suartini', 'Jr. PHH. Mustofa No. 404, Padangsidempuan 51593, Jabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(856, 'Calista Susanti', 'Ki. Baan No. 990, Pontianak 91937, Kaltim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(857, 'Elvina Puspita', 'Kpg. Baik No. 607, Pontianak 91961, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(858, 'Dirja Prasetya', 'Dk. Pasir Koja No. 21, Padang 86593, Pabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(859, 'Nasim Zulkarnain', 'Ds. Cikutra Timur No. 691, Padangsidempuan 23767, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(860, 'Sari Hartati S.Farm', 'Ki. Ketandan No. 335, Mojokerto 16909, Jatim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(861, 'Wardaya Natsir', 'Jln. Barasak No. 304, Tual 76599, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(862, 'Ani Yulianti', 'Jr. Adisumarmo No. 51, Jayapura 90958, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(863, 'Juli Yolanda', 'Psr. Peta No. 63, Semarang 41129, Jatim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(864, 'Elvin Najmudin', 'Dk. Imam No. 31, Administrasi Jakarta Pusat 92678, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(865, 'Jane Puspita', 'Jln. Warga No. 34, Sabang 89201, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(866, 'Bella Janet Susanti S.Farm', 'Dk. Ekonomi No. 822, Prabumulih 62060, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(867, 'Amelia Halimah', 'Gg. Dr. Junjunan No. 21, Bau-Bau 29105, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(868, 'Jabal Kadir Hutagalung', 'Dk. Baha No. 10, Surabaya 27770, Jatim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(869, 'Saka Damanik', 'Kpg. Peta No. 147, Medan 92583, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(870, 'Belinda Nasyiah', 'Ds. Bagas Pati No. 23, Tual 46692, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(871, 'Darijan Widodo', 'Jr. Cihampelas No. 749, Tangerang 41006, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(872, 'Ghaliyati Ayu Wastuti', 'Dk. Bayam No. 516, Parepare 14184, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(873, 'Vivi Paulin Andriani M.Farm', 'Psr. Ters. Buah Batu No. 986, Blitar 14093, Babel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(874, 'Luthfi Wibisono', 'Ds. Sunaryo No. 724, Magelang 85991, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(875, 'Jagaraga Abyasa Wahyudin M.Farm', 'Jln. Ir. H. Juanda No. 398, Mojokerto 35668, Sumut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(876, 'Elvina Genta Nasyidah S.Farm', 'Ds. Wahidin No. 717, Gunungsitoli 49947, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(877, 'Yono Tasdik Pratama', 'Dk. Aceh No. 164, Kupang 56756, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(878, 'Radit Firmansyah', 'Ki. Cihampelas No. 29, Palembang 57085, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(879, 'Balijan Hartana Natsir', 'Dk. Cemara No. 753, Langsa 99862, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(880, 'Kania Palastri M.Ak', 'Jr. Setiabudhi No. 601, Tasikmalaya 25987, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(881, 'Luis Mahendra', 'Ds. Kebonjati No. 365, Depok 13706, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(882, 'Ami Prastuti', 'Ds. Teuku Umar No. 542, Cilegon 61806, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(883, 'Michelle Wastuti M.M.', 'Ds. Gatot Subroto No. 853, Tangerang Selatan 41649, Kalteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(884, 'Anastasia Mayasari M.TI.', 'Jr. Dago No. 528, Sorong 21194, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(885, 'Dian Kayla Lestari', 'Jln. Batako No. 680, Administrasi Jakarta Pusat 45123, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(886, 'Diah Hartati', 'Dk. Jend. A. Yani No. 44, Banjarbaru 24218, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(887, 'Siti Nurdiyanti', 'Psr. Bah Jaya No. 415, Tarakan 41441, Kalsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(888, 'Kuncara Suwarno', 'Jln. Mahakam No. 761, Tual 81046, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(889, 'Warta Prasasta', 'Ki. Badak No. 479, Madiun 46825, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(890, 'Ratna Mayasari', 'Dk. Suprapto No. 863, Batam 24790, Kaltim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(891, 'Lidya Pudjiastuti', 'Gg. Bakaru No. 247, Bitung 39524, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(892, 'Harjasa Simbolon', 'Jln. Bacang No. 181, Parepare 90081, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(893, 'Jaswadi Wijaya', 'Jr. Babadan No. 306, Bandung 61759, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(894, 'Melinda Laksmiwati', 'Ki. Ters. Jakarta No. 167, Jambi 20538, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(895, 'Ajeng Putri Astuti', 'Jr. Sam Ratulangi No. 168, Parepare 40474, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(896, 'Wardaya Hutagalung', 'Jln. Cikapayang No. 151, Semarang 39280, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(897, 'Salman Saefullah', 'Psr. Yos Sudarso No. 80, Bau-Bau 42148, Lampung', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(898, 'Marsito Salahudin S.Pd', 'Ds. Sutarjo No. 896, Pematangsiantar 73305, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(899, 'Vega Samosir', 'Psr. Baya Kali Bungur No. 91, Administrasi Jakarta Barat 81854, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(900, 'Warsa Balangga Rajata S.I.Kom', 'Gg. Salak No. 800, Bandung 82073, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(901, 'Sabrina Puspita', 'Gg. Katamso No. 343, Batam 26714, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(902, 'Samiah Natalia Sudiati', 'Jr. Sam Ratulangi No. 909, Tasikmalaya 96562, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(903, 'Darmana Maryadi', 'Kpg. Basket No. 282, Dumai 16359, Sulsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(904, 'Dariati Anggriawan S.Pd', 'Gg. Babah No. 16, Administrasi Jakarta Timur 34488, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(905, 'Rama Rajata', 'Ki. Dago No. 22, Payakumbuh 20875, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(906, 'Elma Qori Hartati', 'Psr. Perintis Kemerdekaan No. 199, Salatiga 63933, Kalsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(907, 'Ibun Dabukke', 'Ds. Rajawali Barat No. 889, Batu 48313, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(908, 'Gilda Farhunnisa Rahimah M.Kom.', 'Dk. Bayam No. 987, Kediri 12393, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(909, 'Juli Tantri Wulandari', 'Ki. Cihampelas No. 144, Pekalongan 86892, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(910, 'Edi Kamidin Mahendra S.H.', 'Gg. Monginsidi No. 99, Ambon 81955, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(911, 'Tantri Wastuti', 'Ki. Otista No. 927, Serang 59783, Aceh', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(912, 'Umi Prastuti S.Gz', 'Kpg. Sentot Alibasa No. 619, Manado 44470, Lampung', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(913, 'Dalimin Pranowo', 'Psr. Barasak No. 507, Pagar Alam 65485, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(914, 'Ratih Rahayu', 'Dk. Jagakarsa No. 360, Jambi 98506, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(915, 'Wira Dacin Kusumo S.IP', 'Kpg. Bak Air No. 247, Dumai 89324, Sumut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(916, 'Kawaya Harsanto Simanjuntak M.M.', 'Jr. Laswi No. 609, Administrasi Jakarta Selatan 91609, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(917, 'Ganep Dalimin Sitorus S.I.Kom', 'Gg. Basudewo No. 9, Probolinggo 45712, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(918, 'Ratna Purnawati', 'Jr. Jend. Sudirman No. 585, Cilegon 18204, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(919, 'Gilang Upik Tarihoran', 'Jr. Suryo Pranoto No. 115, Kendari 21437, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(920, 'Purwa Tarihoran M.M.', 'Gg. Ketandan No. 870, Salatiga 33089, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(921, 'Muhammad Kurniawan M.Pd', 'Jln. Tambun No. 795, Administrasi Jakarta Barat 87652, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(922, 'Titi Oktaviani S.Pd', 'Ki. Yoga No. 820, Pekalongan 12591, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(923, 'Lintang Palastri', 'Jln. Rumah Sakit No. 119, Bandar Lampung 49319, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(924, 'Syahrini Anggraini', 'Ds. B.Agam Dlm No. 931, Pagar Alam 48053, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(925, 'Gilang Santoso', 'Gg. Baik No. 227, Depok 70809, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(926, 'Warsita Saefullah', 'Ds. Babakan No. 477, Pematangsiantar 86631, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(927, 'Margana Prayoga M.Farm', 'Kpg. K.H. Maskur No. 784, Salatiga 64907, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(928, 'Fitriani Suryatmi S.E.I', 'Jr. Achmad Yani No. 2, Tidore Kepulauan 91515, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(929, 'Genta Rahmawati', 'Jr. Dipatiukur No. 479, Bima 45898, Sultra', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(930, 'Novi Sudiati', 'Ki. Bata Putih No. 610, Pekanbaru 14725, Kalsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(931, 'Jumari Kairav Kusumo S.E.I', 'Kpg. Muwardi No. 923, Semarang 99111, Malut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(932, 'Zahra Anggraini', 'Jln. Bass No. 962, Singkawang 92901, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(933, 'Fathonah Nasyiah', 'Kpg. Ciwastra No. 175, Madiun 18235, Sulbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(934, 'Luwar Hidayanto', 'Gg. Bara No. 573, Tegal 79480, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(935, 'Vera Hani Andriani S.H.', 'Kpg. Otista No. 572, Banda Aceh 37442, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(936, 'Rahayu Rahimah', 'Jr. Flores No. 908, Ternate 81547, Kaltim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(937, 'Saiful Tasnim Setiawan S.Pt', 'Gg. Mulyadi No. 460, Bekasi 49676, Jatim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(938, 'Indah Pertiwi', 'Psr. Sutami No. 332, Kotamobagu 85857, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(939, 'Bambang Tarihoran', 'Psr. W.R. Supratman No. 491, Palu 35629, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(940, 'Puput Dalima Fujiati', 'Psr. Surapati No. 552, Tual 68041, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(941, 'Jelita Pudjiastuti M.Farm', 'Gg. Basoka No. 779, Bima 48361, NTB', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(942, 'Jamil Mansur', 'Psr. Suprapto No. 302, Subulussalam 51923, Kalteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(943, 'Ulva Humaira Palastri S.T.', 'Jr. Pahlawan No. 178, Salatiga 23859, Sulsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(944, 'Raihan Upik Saputra M.Pd', 'Dk. Asia Afrika No. 171, Medan 33768, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(945, 'Rahmi Anggraini', 'Kpg. Karel S. Tubun No. 102, Bogor 32522, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(946, 'Karman Muhammad Wibisono', 'Ki. Uluwatu No. 575, Kediri 64185, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(947, 'Bella Yulianti', 'Psr. Qrisdoren No. 666, Kendari 20692, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(948, 'Hamima Amalia Aryani M.Kom.', 'Ki. Camar No. 990, Banjarbaru 84537, NTT', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(949, 'Shakila Susanti', 'Ki. Pahlawan No. 696, Bengkulu 54624, Aceh', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(950, 'Dono Wijaya', 'Jln. Abdul. Muis No. 708, Semarang 82817, Maluku', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(951, 'Siti Yuni Anggraini', 'Ds. Pattimura No. 375, Batu 20000, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(952, 'Cahyo Samosir', 'Gg. Diponegoro No. 723, Dumai 86583, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(953, 'Mulya Cakrawangsa Dongoran', 'Psr. Dago No. 932, Gorontalo 64203, Gorontalo', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(954, 'Bakiadi Situmorang', 'Psr. Wora Wari No. 277, Magelang 43116, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(955, 'Tari Alika Sudiati', 'Ds. Yos No. 390, Administrasi Jakarta Barat 64049, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(956, 'Fathonah Mayasari', 'Ki. Abdul. Muis No. 424, Lhokseumawe 98729, NTB', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(957, 'Dadap Permadi', 'Ki. Baranang Siang No. 907, Malang 59003, NTB', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(958, 'Endah Oni Nuraini S.Farm', 'Gg. Elang No. 449, Tebing Tinggi 58134, Kalsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(959, 'Rahman Waskita', 'Ki. Untung Suropati No. 275, Batam 66545, Kaltara', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(960, 'Opan Maulana', 'Jln. Pasteur No. 227, Tarakan 52099, Sulsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(961, 'Artawan Nugroho', 'Ds. Cikutra Barat No. 707, Ambon 65118, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(962, 'Wardaya Firgantoro S.H.', 'Kpg. Agus Salim No. 843, Jambi 49057, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(963, 'Ozy Sihombing S.I.Kom', 'Ds. Sutan Syahrir No. 3, Tidore Kepulauan 35095, Kalteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(964, 'Lala Haryanti S.Sos', 'Psr. Baha No. 432, Magelang 40074, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(965, 'Luis Saefullah', 'Gg. Achmad No. 327, Madiun 50567, NTB', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(966, 'Kasiyah Uli Wijayanti', 'Kpg. Salak No. 983, Mataram 19158, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(967, 'Kenes Simbolon S.T.', 'Dk. Cokroaminoto No. 773, Binjai 54627, Sulsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(968, 'Wirda Kamaria Namaga', 'Ds. Gajah No. 758, Tidore Kepulauan 33257, Sumsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(969, 'Tina Lailasari', 'Jln. Achmad Yani No. 609, Cimahi 76652, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(970, 'Clara Ciaobella Astuti', 'Dk. Yap Tjwan Bing No. 227, Jambi 99248, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(971, 'Gabriella Pratiwi S.I.Kom', 'Ds. Gremet No. 908, Singkawang 66391, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(972, 'Patricia Permata M.TI.', 'Gg. Imam Bonjol No. 917, Blitar 40912, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(973, 'Luwes Imam Ardianto M.M.', 'Ki. Daan No. 745, Sawahlunto 69968, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(974, 'Gantar Siregar M.Pd', 'Ki. Ir. H. Juanda No. 198, Dumai 16799, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(975, 'Harjasa Ramadan', 'Dk. Raya Ujungberung No. 806, Bau-Bau 21107, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(976, 'Diana Puspasari', 'Kpg. Bazuka Raya No. 253, Batu 60060, DIY', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(977, 'Kartika Janet Aryani', 'Ds. Jagakarsa No. 176, Surabaya 51739, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(978, 'Darsirah Ramadan', 'Dk. Gremet No. 238, Bau-Bau 59457, Pabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(979, 'Darimin Erik Maulana S.H.', 'Dk. Babadak No. 365, Palangka Raya 81044, Aceh', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(980, 'Hana Palastri', 'Gg. Babadak No. 379, Cimahi 57333, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(981, 'Martani Irawan', 'Ki. R.M. Said No. 839, Payakumbuh 69642, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(982, 'Anita Prastuti S.IP', 'Dk. Honggowongso No. 543, Sabang 60705, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(983, 'Kawaya Saragih', 'Kpg. BKR No. 235, Payakumbuh 82870, Kaltim', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(984, 'Adhiarja Hardiansyah', 'Psr. Salam No. 349, Bukittinggi 16948, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(985, 'Lasmono Nainggolan', 'Ds. Gremet No. 557, Administrasi Jakarta Timur 53652, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(986, 'Gamanto Samosir S.H.', 'Kpg. Thamrin No. 788, Mataram 14595, Sulteng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(987, 'Dirja Jaswadi Marbun', 'Dk. Elang No. 43, Lhokseumawe 49430, Sulut', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(988, 'Argono Waskita M.Farm', 'Gg. Urip Sumoharjo No. 814, Singkawang 85929, Aceh', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(989, 'Laksana Prakasa', 'Dk. Monginsidi No. 761, Pangkal Pinang 94924, Banten', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(990, 'Maryanto Darsirah Putra M.Kom.', 'Jr. Rajawali Barat No. 278, Tual 11345, Sumbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(991, 'Novi Ratih Palastri S.Pt', 'Jln. Muwardi No. 71, Tebing Tinggi 97526, Bali', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(992, 'Tantri Rahayu', 'Jln. Baabur Royan No. 847, Tidore Kepulauan 61129, Riau', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(993, 'Icha Namaga', 'Kpg. Setiabudhi No. 462, Bukittinggi 58138, Jateng', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(994, 'Yunita Pia Wastuti S.Gz', 'Jln. Raden No. 241, Binjai 77642, Bengkulu', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(995, 'Amelia Lestari', 'Ds. Bara No. 667, Palembang 33070, Aceh', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(996, 'Titi Salwa Haryanti S.T.', 'Jln. Bahagia No. 392, Cilegon 11571, Jambi', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(997, 'Indra Daru Simbolon', 'Ds. Taman No. 247, Tual 47994, Kalbar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(998, 'Tomi Nainggolan', 'Ki. HOS. Cjokroaminoto (Pasirkaliki) No. 974, Sabang 44355, Jabar', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(999, 'Harjaya Kusumo S.E.I', 'Kpg. Sugiyopranoto No. 49, Pasuruan 28400, Sumsel', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(1000, 'Mulyono Halim', 'Ds. Rajawali Barat No. 177, Tanjungbalai 62670, Kepri', '2021-09-16 22:39:07', '2021-09-16 22:39:07'),
(1001, 'Bagas Utama S.Farm', 'Ds. M.T. Haryono No. 142, Tasikmalaya 74434, DKI', '2021-09-16 22:39:07', '2021-09-16 22:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `tm_divisi`
--

CREATE TABLE `tm_divisi` (
  `id` int(11) UNSIGNED NOT NULL,
  `namadivisi` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(250) DEFAULT NULL,
  `created_by` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_divisi`
--

INSERT INTO `tm_divisi` (`id`, `namadivisi`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(4, 'Apotik', '2021-09-22 02:42:59', '2021-09-22 02:44:07', 'simaulansyah', 'simaulansyah'),
(5, 'Securiti', '2021-09-22 03:10:37', '2021-09-28 04:23:38', 'simaulansyah', 'simaulansyah');

-- --------------------------------------------------------

--
-- Table structure for table `tm_golongan_obat`
--

CREATE TABLE `tm_golongan_obat` (
  `id` int(11) UNSIGNED NOT NULL,
  `namagolonganobat` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_golongan_obat`
--

INSERT INTO `tm_golongan_obat` (`id`, `namagolonganobat`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Obat Bebas', 'simaulansyah', '', '2021-09-30 02:59:39', '2021-09-30 02:59:39'),
(2, 'Obat Bebas Terbatas', 'simaulansyah', '', '2021-09-30 02:59:48', '2021-09-30 02:59:48'),
(3, 'Obat Keras', 'simaulansyah', '', '2021-09-30 02:59:58', '2021-09-30 02:59:58'),
(4, 'Obat Golongan Narkotik', 'simaulansyah', '', '2021-09-30 03:00:11', '2021-09-30 03:00:11'),
(5, 'Obat Fitofarmaka', 'simaulansyah', 'simaulansyah', '2021-09-30 03:00:30', '2021-09-30 03:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `tm_jabatan`
--

CREATE TABLE `tm_jabatan` (
  `id` int(11) UNSIGNED NOT NULL,
  `namajabatan` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_jabatan`
--

INSERT INTO `tm_jabatan` (`id`, `namajabatan`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(20, 'Kepala', 'simaulansyah', '', '2021-09-28 04:24:16', '2021-09-28 04:24:16'),
(21, 'Suvervisor', 'simaulansyah', '', '2021-09-28 04:24:25', '2021-09-28 04:24:25'),
(22, 'Staff', 'simaulansyah', '', '2021-09-28 04:24:31', '2021-09-28 04:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `tm_jenis_obat`
--

CREATE TABLE `tm_jenis_obat` (
  `id` int(11) UNSIGNED NOT NULL,
  `namajenisobat` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_jenis_obat`
--

INSERT INTO `tm_jenis_obat` (`id`, `namajenisobat`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Tablet', '', '', '2021-09-30 07:58:09', '2021-09-30 07:58:09'),
(3, 'Sirup', 'simaulansyah', '', '2021-09-30 01:44:50', '2021-09-30 01:44:50'),
(4, 'Pil', 'simaulansyah', 'simaulansyah', '2021-09-30 01:45:21', '2021-09-30 01:54:23'),
(6, 'Sabu-Sabu', 'simaulansyah', '', '2021-09-30 01:57:01', '2021-09-30 01:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `tm_karyawan`
--

CREATE TABLE `tm_karyawan` (
  `id` int(11) UNSIGNED NOT NULL,
  `nik` varchar(100) NOT NULL,
  `namakaryawan` varchar(100) NOT NULL,
  `idjabatan` int(11) UNSIGNED NOT NULL,
  `iddivisi` int(11) UNSIGNED NOT NULL,
  `jeniskelamin` varchar(100) NOT NULL,
  `tempatlahir` varchar(100) NOT NULL,
  `tanggallahir` date NOT NULL,
  `tanggalmasuk` date NOT NULL,
  `tanggalkeluar` date DEFAULT NULL,
  `statusmenikah` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `poto` varchar(250) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_karyawan`
--

INSERT INTO `tm_karyawan` (`id`, `nik`, `namakaryawan`, `idjabatan`, `iddivisi`, `jeniskelamin`, `tempatlahir`, `tanggallahir`, `tanggalmasuk`, `tanggalkeluar`, `statusmenikah`, `telepon`, `alamat`, `poto`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(21, 'A11', 'Iriana Natsir,S.Pd', 20, 4, 'Wanita', 'Sumedang', '2021-09-22', '2021-09-23', '0000-00-00', '', '081324962776', 'cikalongwetan rt 3 rw 4 kecamatan cirata', 'pasfoto.jpg', 'simaulansyah', 'simaulansyah', '2021-09-28 04:26:02', '2021-09-29 23:09:43'),
(22, 'A12', 'Joko Tingkir,S.Kom', 21, 5, 'Pria', 'Bojonegoro', '2021-09-08', '2021-09-11', '0000-00-00', 'Lajang', '0877796452', 'Sumedang Selatan 888 rt 2 rw 4', 'default.jpg', 'simaulansyah', 'simaulansyah', '2021-09-28 04:27:36', '2021-09-29 23:03:08'),
(23, 'A13', 'Erus Rustandi', 20, 4, 'Pria', 'Sumedang', '2021-09-17', '2021-09-22', '0000-00-00', '', '081222456', 'Sumedang', 'CETAK_FOTO_dan_PAS_FOTO_.jpeg', 'simaulansyah', 'simaulansyah', '2021-09-28 04:28:54', '2021-09-29 23:01:52'),
(27, 'A14', 'Erik Sudartomo', 20, 4, 'Pria', 'Surakarta', '2021-09-16', '2021-09-16', '0000-00-00', 'Menikah', '022222', 'cijelag', 'sibangsat.png', 'simaulansyah', 'simaulansyah', '2021-09-29 23:08:20', '2021-09-29 23:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `tm_kategori_obat`
--

CREATE TABLE `tm_kategori_obat` (
  `id` int(11) UNSIGNED NOT NULL,
  `namakategoriobat` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_kategori_obat`
--

INSERT INTO `tm_kategori_obat` (`id`, `namakategoriobat`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 'anestetik lokal', 'simaulansyah', '', '2021-09-30 03:02:17', '2021-09-30 03:02:17'),
(8, 'anestetik umum', 'simaulansyah', '', '2021-09-30 03:02:40', '2021-09-30 03:02:40'),
(9, 'Analgesik narkotik ', 'simaulansyah', '', '2021-09-30 03:03:27', '2021-09-30 03:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `tm_obat`
--

CREATE TABLE `tm_obat` (
  `id` int(11) UNSIGNED NOT NULL,
  `kodeobat` varchar(100) NOT NULL,
  `namaobat` varchar(300) NOT NULL,
  `golongan` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `tanggalexpire` date DEFAULT NULL,
  `minimalstok` varchar(200) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `kandungan` varchar(200) NOT NULL,
  `dosis` varchar(200) NOT NULL,
  `efeksamping` varchar(200) NOT NULL,
  `potoobat` varchar(200) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_obat`
--

INSERT INTO `tm_obat` (`id`, `kodeobat`, `namaobat`, `golongan`, `kategori`, `jenis`, `satuan`, `tanggalexpire`, `minimalstok`, `deskripsi`, `kandungan`, `dosis`, `efeksamping`, `potoobat`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'K111', 'ObatKuat', '1', '8', '3', '7', '2021-10-02', 'ObatKuat', '', '', '', '', '', 'simaulansyah', '', '2021-10-01 02:10:25', '2021-10-01 02:10:25'),
(2, 'A12', 'Paramex', '2', '7', '1', '7', '2021-10-26', 'Paramex', 'aduh apanih\r\n', '', '3xsehari', 'kuat dan tahan lama', '', 'simaulansyah', '', '2021-10-01 02:46:07', '2021-10-01 02:46:07'),
(3, 'B11', 'Betadine', '2', '7', '3', '7', '2021-10-06', 'Betadine', 'aduh jangan sampe berdarah dong', 'air 50%', '5xsehari', 'berdarah', '', 'simaulansyah', '', '2021-10-01 02:48:12', '2021-10-01 02:48:12'),
(4, 'a11', 'aduh', '1', '7', '1', '6', '2021-10-13', 'aduh', '  ', '', '', '', 'betadine.jpeg', 'simaulansyah', 'simaulansyah', '2021-10-01 03:26:09', '2021-10-11 22:55:06'),
(5, 'a123', 'Betadine cair', '3', '8', '3', '6', '2021-10-15', 'Betadine cair', ' tets ', 'asdads', 'test ', 'test', 'komik1.jpeg', 'simaulansyah', 'simaulansyah', '2021-10-01 03:27:18', '2021-10-11 22:51:47'),
(6, 'A1221', 'Amfitamin', '3', '8', '3', '6', '2021-10-13', 'Amfitamin', 'aduh bang', 'heheh', '5', 'menyakitkan', 'default.jpg', 'simaulansyah', '', '2021-10-11 22:50:05', '2021-10-11 22:50:05'),
(7, 'm123', 'marcopolo', '1', '7', '1', '6', '2021-10-16', 'marcopolo', '', 'heheh', '', '', 'default.jpg', 'simaulansyah', '', '2021-10-11 22:56:55', '2021-10-11 22:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `tm_satuan_obat`
--

CREATE TABLE `tm_satuan_obat` (
  `id` int(11) UNSIGNED NOT NULL,
  `namasatuanobat` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_satuan_obat`
--

INSERT INTO `tm_satuan_obat` (`id`, `namasatuanobat`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Botol', 'simaulansyah', 'simaulansyah', '2021-09-30 02:19:06', '2021-09-30 02:19:20'),
(7, 'Pcs', 'simaulansyah', '', '2021-09-30 02:19:42', '2021-09-30 02:19:42'),
(8, 'Strip', 'simaulansyah', '', '2021-09-30 02:19:51', '2021-09-30 02:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `tm_suplier_obat`
--

CREATE TABLE `tm_suplier_obat` (
  `id` int(11) UNSIGNED NOT NULL,
  `namasuplierobat` varchar(100) NOT NULL,
  `alamatsuplierobat` varchar(300) NOT NULL,
  `teleponsuplierobat` varchar(100) NOT NULL,
  `emailsuplierobat` varchar(100) NOT NULL,
  `keterangansuplierobat` varchar(200) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_suplier_obat`
--

INSERT INTO `tm_suplier_obat` (`id`, `namasuplierobat`, `alamatsuplierobat`, `teleponsuplierobat`, `emailsuplierobat`, `keterangansuplierobat`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'PT Angin', 'CiRoyom', '08545321', 'admin@demo.com', '', 'simaulansyah', 'simaulansyah', '2021-09-30 04:05:39', '2021-09-30 04:26:21'),
(2, 'PT Angin Ribut', 'cijeruk', '0878546', 'asdads@gmail.com', 'hehe', 'simaulansyah', 'simaulansyah', '2021-09-30 04:09:39', '2021-09-30 04:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `tr_pembelian`
--

CREATE TABLE `tr_pembelian` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(50) NOT NULL,
  `id_suplier` int(50) NOT NULL,
  `tgl_beli` date NOT NULL,
  `total_harga` varchar(100) NOT NULL,
  `total_bayar` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tr_pembelian`
--

INSERT INTO `tr_pembelian` (`id`, `no_faktur`, `id_suplier`, `tgl_beli`, `total_harga`, `total_bayar`, `type`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'A7776', 5, '2021-10-13', '56000', '150000', 'Cash', '2021-10-12 08:44:28', '2021-10-12 08:44:28', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_pembelian_detail`
--

CREATE TABLE `tr_pembelian_detail` (
  `id_pembelian` varchar(20) NOT NULL,
  `kodeobat` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` tinyint(4) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `name`, `created_at`, `updated_at`) VALUES
('agus', '$2y$10$UpFJ6/ili.FK.M6Yjsp1c.CVU8fHrBc5kIl/eYfjdyojlEDv4brmC', 'agus', '2021-09-17 04:02:56', '2021-09-17 04:02:56'),
('anang', '$2y$10$Nu377OqhKTTEIe7sJPGoGOjQFTT.qexPZ8QTlCwmm27EVXGkWowf6', 'ananx', '2021-09-19 23:54:18', '2021-09-19 23:54:18'),
('hasbi', '$2y$10$RPy6g3rtbAr5CM7LIaUwCed1IKJwhP8aoVYav8Vd1apKkTFUEOZv.', 'simaulansyah', '2021-09-17 03:56:25', '2021-09-17 03:56:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_divisi`
--
ALTER TABLE `tm_divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_golongan_obat`
--
ALTER TABLE `tm_golongan_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_jabatan`
--
ALTER TABLE `tm_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_jenis_obat`
--
ALTER TABLE `tm_jenis_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_karyawan`
--
ALTER TABLE `tm_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_kategori_obat`
--
ALTER TABLE `tm_kategori_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_obat`
--
ALTER TABLE `tm_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_satuan_obat`
--
ALTER TABLE `tm_satuan_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_suplier_obat`
--
ALTER TABLE `tm_suplier_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_pembelian`
--
ALTER TABLE `tr_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `tm_divisi`
--
ALTER TABLE `tm_divisi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tm_golongan_obat`
--
ALTER TABLE `tm_golongan_obat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tm_jabatan`
--
ALTER TABLE `tm_jabatan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tm_jenis_obat`
--
ALTER TABLE `tm_jenis_obat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tm_karyawan`
--
ALTER TABLE `tm_karyawan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tm_kategori_obat`
--
ALTER TABLE `tm_kategori_obat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tm_obat`
--
ALTER TABLE `tm_obat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tm_satuan_obat`
--
ALTER TABLE `tm_satuan_obat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tm_suplier_obat`
--
ALTER TABLE `tm_suplier_obat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tr_pembelian`
--
ALTER TABLE `tr_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
