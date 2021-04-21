-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 04:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goblog_edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(1, 1614842489, '::1', '8VbrgRKE');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip_address` varchar(45) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `timestamp`, `ip_address`, `data`) VALUES
('25ikbm70lbq58cvn0k0gmdiaaf0ef7s5', 1618969669, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936393636393b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('296sjh90te4abfo6t7k0km9pn70ksbol', 1618966350, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936363335303b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('2v3jefq39sli5hsqivcno6hgvsgdpmin', 1618964402, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936343430323b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('447f3a1l0uo70leoi10bdi33aru6qe2h', 1618967246, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936373234363b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('7hc7e4s0oo0aooklb646jv2vdgtskbr1', 1618963500, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936333530303b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('9dqt5d65vlo7j70tptpbk5e54ersso2q', 1618965270, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936353237303b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('9qvf4h4q414dcff1vpb89ufhchb2pgi0', 1618959058, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383935393035383b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b706e6f746966797c733a383a22426572686173696c223b5f5f63695f766172737c613a313a7b733a373a22706e6f74696679223b733a333a226e6577223b7d),
('b72c7o27pvims5j54b66c3eg6pq2846c', 1618958734, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383935383733343b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('bg6s3hg2971tjh3jn394okemssub06nv', 1618965609, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936353630393b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('crqld68tbk5vgvgfqdlenv29h8p7nkp3', 1618960435, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936303433353b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('e3s9me2tvadhbc1uho2r1r7snh8i2is9', 1618968976, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936383937363b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('ec8fvgngq7ukdstesa5mgvqn8khtm6re', 1618964060, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936343036303b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('gkq1nu2hfr6eiga4fpr4tp9bpvsf5qic', 1618967637, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936373633373b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('j2nkdvdbn7sa35lhrkvvoev83t15rf5p', 1618970057, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383937303034383b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('k3ruocglbu51qi6fo1b2nv4bcmbulloh', 1618961642, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936313634323b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('kc9jnsd9gjtdqn7lt2nvr95sdq2t2g89', 1618959784, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383935393738343b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('kghmjak12b9aili7egvm6u6d8ebcue12', 1618966823, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936363832333b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('kn4m5unf67qqf96jilhq0qhgjb13jl6h', 1618959414, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383935393431343b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('lr099c8d2ln35c8ja7b18q0eirfv8f58', 1618964904, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936343930343b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('ol53tpqgn766e7g00grnneso3ugc5jdv', 1618969338, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936393333383b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('pc9bep831pgjo5q2dgl7hknerdrk8kdv', 1618970048, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383937303034383b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('tertlaqnjgtmdqet722dso8rfoue2c21', 1618960115, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936303131353b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('ug0spq6l6f622bo0pcibu1ksu97nm8hn', 1618962291, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936323239313b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b),
('vlarf8eo64h560g3ia1j0d0j6qbka101', 1618966000, '::1', 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383936363030303b6c6f676765645f696e7c623a313b6163636573737c733a313a2231223b69647c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `tb_agenda`
--

CREATE TABLE `tb_agenda` (
  `id_agenda` int(11) NOT NULL,
  `nama_agenda` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_agenda` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten_agenda` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_agenda` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agenda_postdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `agenda_update` datetime DEFAULT NULL,
  `tgl_pelaksanaan` date DEFAULT NULL,
  `durasi` int(2) NOT NULL,
  `arsip` int(1) NOT NULL DEFAULT 0,
  `deskripsi_agenda` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_agenda`
--

INSERT INTO `tb_agenda` (`id_agenda`, `nama_agenda`, `slug_agenda`, `konten_agenda`, `gambar_agenda`, `agenda_postdate`, `agenda_update`, `tgl_pelaksanaan`, `durasi`, `arsip`, `deskripsi_agenda`) VALUES
(4, 'Buka Bersama Alumni 2021', 'buka-bersama-alumni-2021', '<p style=\"text-align: left;\"><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p><p><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span><span style=\"text-align: justify;\"><br><div style=\"text-align: justify;\"><br></div></span></p>', 'afc792354a47269884dbd781ebc206c6.PNG', '2021-04-15 02:25:41', '2021-04-16 11:36:14', '2021-04-17', 1, 1, 'Bukber ciy'),
(5, 'ubah agenda', 'ubah-agenda-1564368986', '<p>adasdsad</p>', '024c5d650ff8d2b9b562a7d50b1ef074.jpg', '2021-04-16 04:12:22', '2021-04-16 11:35:26', '2021-04-15', 1, 1, 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `id_album` int(11) NOT NULL,
  `nama_album` varchar(50) NOT NULL,
  `slug_album` varchar(100) NOT NULL,
  `jumlah_foto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`id_album`, `nama_album`, `slug_album`, `jumlah_foto`) VALUES
(2, 'Albumoni', 'albumoni', NULL),
(3, 'Albumino', 'albumino', NULL),
(4, 'Katusa', 'katusa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(255) DEFAULT NULL,
  `deskripsi_artikel` mediumtext DEFAULT NULL,
  `konten_artikel` longtext DEFAULT NULL,
  `gambar_artikel` varchar(150) DEFAULT NULL,
  `tanggal_up_artikel` timestamp NULL DEFAULT current_timestamp(),
  `terakhir_update_artikel` datetime DEFAULT NULL,
  `id_kategori_artikel` int(11) DEFAULT NULL,
  `label_artikel` varchar(255) DEFAULT NULL,
  `slug_artikel` varchar(255) DEFAULT NULL,
  `jml_tayang_artikel` int(11) DEFAULT 0,
  `terakhir_dilihat` datetime DEFAULT NULL,
  `id_author` int(11) DEFAULT NULL,
  `publish_artikel` int(11) DEFAULT 0 COMMENT '0=un, 1=publish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_artikel`
--

INSERT INTO `tb_artikel` (`id_artikel`, `judul_artikel`, `deskripsi_artikel`, `konten_artikel`, `gambar_artikel`, `tanggal_up_artikel`, `terakhir_update_artikel`, `id_kategori_artikel`, `label_artikel`, `slug_artikel`, `jml_tayang_artikel`, `terakhir_dilihat`, `id_author`, `publish_artikel`) VALUES
(23, 'Qasdasdsad', 'sadsad', '<p>sdasdsdsdsdasdasdasdsdsadasdsadsd</p>', '158fa58af90e13ca5e06a3477b07c8bd.PNG', '2021-04-17 14:26:28', NULL, 1, 'nama', 'qasdasdsad', 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_background`
--

CREATE TABLE `tb_background` (
  `id_background` int(11) NOT NULL,
  `bg_artikel` varchar(100) DEFAULT NULL,
  `bg_agenda` varchar(100) DEFAULT NULL,
  `bg_berita` varchar(100) DEFAULT NULL,
  `bg_halaman` varchar(100) DEFAULT NULL,
  `bg_testimoni` varchar(100) DEFAULT NULL,
  `bg_personil` varchar(100) DEFAULT NULL,
  `bg_tentang` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_banner`
--

CREATE TABLE `tb_banner` (
  `id_banner` int(11) NOT NULL,
  `judul_banner` varchar(50) DEFAULT NULL,
  `konten_banner` text DEFAULT NULL,
  `gambar_banner` varchar(100) NOT NULL,
  `status_aktif` int(1) NOT NULL DEFAULT 0 COMMENT '0=no, 1=aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_banner`
--

INSERT INTO `tb_banner` (`id_banner`, `judul_banner`, `konten_banner`, `gambar_banner`, `status_aktif`) VALUES
(6, 'Pembelajaran Ethical Hacking', '<p>ck</p>', '16f1b7948aad4a02f006678ac6919cac.png', 1),
(7, '', '', 'cef3bc8ed615104c6bd9763950a02867.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `nama_berita` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_berita` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten_berita` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_berita` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berita_postdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `berita_update` datetime DEFAULT NULL,
  `deskripsi_berita` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `nama_berita`, `slug_berita`, `konten_berita`, `gambar_berita`, `berita_postdate`, `berita_update`, `deskripsi_berita`) VALUES
(1, 'Bulan Ramadhan Menjadi Hari Spesial GoBlog252.com', 'bulan-ramadhan-menjadi-hari-spesial-goblog252-com', '<p>Blan ramadhan adalaha hari penuh berkah</p><p>iya kaaannn</p>', 'bb61b4b311328ddf121fe58314276fca.jpg', '2021-04-15 06:00:00', '2021-04-16 09:25:27', 'Bulan Ramadhan Menjadi Hari Spesial GoBlog252');

-- --------------------------------------------------------

--
-- Table structure for table `tb_coba`
--

CREATE TABLE `tb_coba` (
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_coba`
--

INSERT INTO `tb_coba` (`full_name`, `email`, `username`, `password`) VALUES
('asda', 'asdas@asd.gfdf', 'asdasd', '16607da208d4035acc136eaa4a02285c8c386219'),
('sad', 'asd@asda.dfgd', 'asd', '2cfdfe7295d4ea5ba6431f37090fc725d5a257ad');

-- --------------------------------------------------------

--
-- Table structure for table `tb_fasilitas`
--

CREATE TABLE `tb_fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `nama_fasilitas` varchar(50) NOT NULL,
  `deskripsi_fasilitas` tinytext NOT NULL,
  `gambar_fasilitas` varchar(100) NOT NULL,
  `ikon_fasilitas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_fasilitas`
--

INSERT INTO `tb_fasilitas` (`id_fasilitas`, `nama_fasilitas`, `deskripsi_fasilitas`, `gambar_fasilitas`, `ikon_fasilitas`) VALUES
(1, 'Laboratorium Komputer', 'Laboratorium komputer sebagai tempat uji coba serta pengembangan teknologi', '9acd7943c2a1188465a8e231e1a2b443.jpg', 'fa fa-desktop'),
(3, 'Cewek Cantik', 'desktipsi disini', '97530e4f2671be97a113d2b5e002559e.jpg', 'fa fa-heart'),
(4, 'Makan Losss', 'Makan sepuasnya disini', '478080b248eb3dc35dbda27f541947ce.jpg', 'fa fa-apple'),
(5, 'Akses Internet Terbaik', 'Akses internet dedicated memungkinkan anda untuk berselancanr didunia maya secara cepat', 'b5058799176237cf9be46716880f00a9.jpg', 'fa fa-wifi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_album_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(100) NOT NULL,
  `foto_galeri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_album_galeri`, `nama_galeri`, `foto_galeri`) VALUES
(4, 3, '', '0250aed6e8aa0e3d8f9f120ad000c6b8.PNG'),
(5, 3, 'Judulnya', '90dfda55a7b736c28c8b390cdff4b56e.PNG'),
(6, 4, '', 'ffa961746b967ec23b0ca77227477274.PNG'),
(7, 2, '', '616d1f2f51d424bf20cfa89d056fb6b7.jpg'),
(8, 4, '', 'ab0a28ce3d1ad02ed6e1890717ad7703.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `tb_halaman`
--

CREATE TABLE `tb_halaman` (
  `id_halaman` int(11) NOT NULL,
  `nama_halaman` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_halaman` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten_halaman` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `halaman_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `halaman_update` datetime DEFAULT NULL,
  `deskripsi_halaman` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_artikel`
--

CREATE TABLE `tb_kategori_artikel` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `slug_kategori` varchar(100) NOT NULL,
  `user_id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori_artikel`
--

INSERT INTO `tb_kategori_artikel` (`id_kategori`, `nama_kategori`, `slug_kategori`, `user_id_kategori`) VALUES
(1, 'Pembelajaran', 'pembelajaran', 1),
(2, 'Belajar', 'belajar', 1),
(4, 'Kategori Dixos', 'kategori-dixos', 16),
(5, 'Puasa', 'puasa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_konten_kontak`
--

CREATE TABLE `tb_konten_kontak` (
  `id_kontak` int(11) NOT NULL,
  `konten_kontak` text NOT NULL,
  `konten_peta` text NOT NULL,
  `gambar_kontak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_konten_kontak`
--

INSERT INTO `tb_konten_kontak` (`id_kontak`, `konten_kontak`, `konten_peta`, `gambar_kontak`) VALUES
(1, '<div class=\"fh5co-contact-info\">\r\n						<h3>Informasi Kontak</h3>\r\n						<ul>\r\n							<li class=\"address\">GoBlog252, <br>Jl. Wachid Hasyim No.312, <br>Tanjung, Tanjunganom, Kec. Tanjunganom, <br>Kabupaten Nganjuk, Jawa Timur 64484,</li>\r\n							<li class=\"phone\"><a href=\"tel://1234567920\">+ 62  813 1422 5017</a></li>\r\n							<li class=\"email\"><a href=\"mailto:info@yoursite.com\">admin@goblog252.com</a></li>\r\n							<li class=\"url\"><a href=\"https://goblog252.com\">GoBlog252</a></li>\r\n						</ul>\r\n					</div>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d3954.417021478894!2d112.03403721477727!3d-7.638222644492881!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d-7.6382565!2d112.035702!4m5!1s0x2e784f47c921fc8d%3A0x6a5979a8e98504e9!2sgoblog252!3m2!1d-7.6384479!2d112.0367064!5e0!3m2!1sen!2sid!4v1618673881861!5m2!1sen!2sid\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '92b7459615f944c5ed731118ac732f6a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_label_artikel`
--

CREATE TABLE `tb_label_artikel` (
  `id_label` int(11) NOT NULL,
  `nama_label` varchar(100) NOT NULL,
  `slug_label` varchar(100) NOT NULL,
  `user_id_label` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_label_artikel`
--

INSERT INTO `tb_label_artikel` (`id_label`, `nama_label`, `slug_label`, `user_id_label`) VALUES
(1, 'Tag d', 'tag-d', 16),
(2, 'Conoth', 'conoth', 1),
(3, 'nama', 'nama', 1),
(4, 'pesan', 'pesan', 1),
(5, 'toast', 'toast', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_log`
--

CREATE TABLE `tb_log` (
  `log_id` int(11) NOT NULL,
  `log_tipe` int(11) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `log_userid` int(11) NOT NULL,
  `log_description` text NOT NULL,
  `log_ip` varchar(50) NOT NULL,
  `log_browser` varchar(100) NOT NULL,
  `log_platform` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_log`
--

INSERT INTO `tb_log` (`log_id`, `log_tipe`, `log_time`, `log_userid`, `log_description`, `log_ip`, `log_browser`, `log_platform`) VALUES
(1, 0, '2021-03-04 12:59:18', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(2, 0, '2021-03-04 19:36:58', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(3, 1, '2021-03-04 19:37:10', 1, 'Logout Website', '::1', 'Chrome', 'Windows 10'),
(4, 0, '2021-03-07 05:16:32', 1, 'Login Website', '192.168.47.164', 'Chrome', 'Windows 10'),
(5, 0, '2021-03-07 13:20:31', 1, 'Login Website', '192.168.47.164', 'Chrome', 'Android'),
(6, 0, '2021-03-07 13:47:20', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(7, 0, '2021-03-08 12:10:15', 1, 'Login Website', '192.168.47.125', 'Chrome', 'Windows 10'),
(8, 0, '2021-03-08 14:40:26', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(9, 0, '2021-03-08 15:41:23', 1, 'Login Website', '192.168.47.112', 'Chrome', 'Windows 10'),
(10, 0, '2021-03-09 12:56:28', 1, 'Login Website', '192.168.47.125', 'Chrome', 'Windows 10'),
(11, 0, '2021-03-10 04:23:56', 1, 'Login Website', '192.168.47.125', 'Chrome', 'Windows 10'),
(12, 0, '2021-03-14 04:40:33', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(13, 0, '2021-03-14 10:34:22', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(14, 1, '2021-03-14 11:52:42', 1, 'Logout Website', '::1', 'Chrome', 'Windows 10'),
(15, 0, '2021-03-19 05:01:23', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(16, 0, '2021-03-21 03:18:33', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(17, 1, '2021-03-21 03:49:14', 1, 'Logout Website', '::1', 'Chrome', 'Windows 10'),
(18, 0, '2021-03-21 03:49:21', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(19, 0, '2021-03-21 06:58:02', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(20, 0, '2021-03-22 09:28:29', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(21, 1, '2021-03-22 11:25:40', 1, 'Logout Website', '::1', 'Chrome', 'Android'),
(22, 0, '2021-03-22 11:27:43', 16, 'Login Website', '::1', 'Chrome', 'Android'),
(23, 2, '2021-03-22 11:29:32', 16, 'Menambah kategori Kategori Dixos', '::1', 'Chrome', 'Android'),
(24, 3, '2021-03-22 11:45:58', 16, 'Merubah kategori menjadi kat saya', '::1', 'Chrome', 'Windows 10'),
(25, 4, '2021-03-22 11:46:05', 16, 'Menghapus kategori kat saya', '::1', 'Chrome', 'Windows 10'),
(26, 4, '2021-03-22 11:46:55', 16, 'Menghapus kategori kat saya', '::1', 'Chrome', 'Windows 10'),
(27, 2, '2021-03-22 12:17:21', 16, 'Menambah label Tag d', '::1', 'Chrome', 'Windows 10'),
(28, 0, '2021-03-26 12:35:23', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(29, 0, '2021-03-26 17:10:00', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(30, 0, '2021-03-30 00:48:47', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(31, 0, '2021-03-30 04:19:29', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(32, 0, '2021-03-30 06:27:01', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(33, 2, '2021-03-30 07:04:39', 1, 'Menambah label Tag d', '::1', 'Chrome', 'Windows 10'),
(34, 3, '2021-03-30 07:04:48', 1, 'Merubah label menjadi Conoth', '::1', 'Chrome', 'Windows 10'),
(35, 0, '2021-03-31 06:30:05', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(36, 2, '2021-03-31 06:55:32', 1, 'Menambah label nama', '::1', 'Chrome', 'Windows 10'),
(37, 2, '2021-03-31 06:55:57', 1, 'Menambah label pesan', '::1', 'Chrome', 'Windows 10'),
(38, 2, '2021-03-31 06:56:18', 1, 'Menambah label toast', '::1', 'Chrome', 'Android'),
(39, 4, '2021-03-31 07:06:07', 1, 'Menghapus artikel Semua Akan Indah Pada Waktunyasa', '::1', 'Chrome', 'Windows 10'),
(40, 4, '2021-03-31 07:07:14', 1, 'Menghapus artikel Bismillah', '::1', 'Chrome', 'Windows 10'),
(41, 0, '2021-04-03 16:16:33', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(42, 4, '2021-04-03 16:29:54', 1, 'Menghapus artikel adasdasdasd', '::1', 'Chrome', 'Windows 10'),
(43, 4, '2021-04-03 16:29:56', 1, 'Menghapus artikel Semua Akan Indah Pada Waktunya', '::1', 'Chrome', 'Windows 10'),
(44, 1, '2021-04-03 16:53:02', 1, 'Logout Website', '::1', 'Chrome', 'Windows 10'),
(45, 0, '2021-04-03 17:02:01', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(46, 4, '2021-04-03 17:28:05', 1, 'Menghapus artikel Test Tiny 2', '::1', 'Chrome', 'Windows 10'),
(47, 4, '2021-04-03 17:28:09', 1, 'Menghapus artikel tes rsizemulti', '::1', 'Chrome', 'Windows 10'),
(48, 4, '2021-04-03 17:28:11', 1, 'Menghapus artikel asdadasdasd', '::1', 'Chrome', 'Windows 10'),
(49, 4, '2021-04-03 17:28:13', 1, 'Menghapus artikel Semua Akan Indah Pada Waktunyasa', '::1', 'Chrome', 'Windows 10'),
(50, 4, '2021-04-03 17:29:39', 1, 'Menghapus artikel Test Tiny', '::1', 'Chrome', 'Windows 10'),
(51, 5, '2021-04-04 08:11:15', 1, 'Reset Password', '::1', 'Chrome', 'Windows 10'),
(52, 0, '2021-04-04 08:11:28', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(53, 1, '2021-04-04 08:11:32', 1, 'Logout Website', '::1', 'Chrome', 'Windows 10'),
(54, 5, '2021-04-04 08:13:49', 1, 'Reset Password', '::1', 'Chrome', 'Windows 10'),
(55, 0, '2021-04-04 08:14:19', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(56, 3, '2021-04-04 08:44:15', 1, 'Update artikel dengan judul 492cb1875dbfe52f36d88dd6ee655b11', '::1', 'Chrome', 'Windows 10'),
(57, 3, '2021-04-04 08:45:15', 1, 'Update artikel dengan judul Update Berhasil', '::1', 'Chrome', 'Windows 10'),
(58, 3, '2021-04-04 08:46:49', 1, 'Update artikel dengan judul Update Berhasil', '::1', 'Chrome', 'Windows 10'),
(59, 3, '2021-04-04 08:47:21', 1, 'Update artikel dengan judul Update Berhasil', '::1', 'Chrome', 'Windows 10'),
(60, 3, '2021-04-04 08:47:43', 1, 'Update artikel dengan judul Test Tiny', '::1', 'Chrome', 'Windows 10'),
(61, 3, '2021-04-04 08:48:10', 1, 'Update artikel dengan judul Update Berhasil', '::1', 'Chrome', 'Windows 10'),
(62, 0, '2021-04-04 19:28:08', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(63, 0, '2021-04-05 07:38:54', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(64, 2, '2021-04-05 08:09:01', 1, 'Menambah Banner dengan judul Pembelajaran Ethical Hacking', '::1', 'Chrome', 'Windows 10'),
(65, 2, '2021-04-05 08:18:04', 1, 'Menambah Banner dengan judul Pembelajaran Ethical Hacking', '::1', 'Chrome', 'Windows 10'),
(66, 2, '2021-04-05 08:20:27', 1, 'Menambah Banner dengan judul Pembelajaran Ethical Hacking 2', '::1', 'Chrome', 'Windows 10'),
(67, 2, '2021-04-05 08:41:43', 1, 'Menambah Banner dengan judul Pembelajaran Ethical Hacking', '::1', 'Chrome', 'Windows 10'),
(68, 0, '2021-04-05 21:47:04', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(69, 2, '2021-04-05 21:59:42', 1, 'Menambah Banner dengan judul Pembelajaran Ethical Hacking 2', '::1', 'Chrome', 'Windows 10'),
(70, 0, '2021-04-06 06:23:00', 1, 'Login Website', '127.0.0.1', 'Chrome', 'Windows 10'),
(71, 2, '2021-04-06 07:07:10', 1, 'Menambah Banner dengan judul ', '::1', 'Chrome', 'Windows 10'),
(72, 2, '2021-04-06 07:07:25', 1, 'Menambah Banner dengan judul Pembelajaran Ethical Hacking 3', '::1', 'Chrome', 'Windows 10'),
(73, 4, '2021-04-06 07:38:14', 1, 'Menghapus Banner dengan judul ', '::1', 'Chrome', 'Windows 10'),
(74, 0, '2021-04-06 14:40:19', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(75, 1, '2021-04-06 17:29:56', 1, 'Logout Website', '::1', 'Chrome', 'Windows 10'),
(76, 0, '2021-04-07 07:04:47', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(77, 3, '2021-04-07 09:08:46', 1, 'Update Banner dengan judul ', '::1', 'Chrome', 'Windows 10'),
(78, 3, '2021-04-07 09:09:36', 1, 'Update Banner dengan judul ', '::1', 'Chrome', 'Windows 10'),
(79, 3, '2021-04-07 09:10:26', 1, 'Update Banner dengan judul Pembelajaran Ethical Hacking 4', '::1', 'Chrome', 'Windows 10'),
(80, 3, '2021-04-07 09:11:54', 1, 'Update Banner dengan judul Pembelajaran Ethical Hacking 4', '::1', 'Chrome', 'Windows 10'),
(81, 3, '2021-04-07 09:14:16', 1, 'Update Banner dengan judul Pembelajaran Ethical Hacking 4', '::1', 'Chrome', 'Windows 10'),
(82, 4, '2021-04-07 09:14:34', 1, 'Menghapus Banner dengan judul Pembelajaran Ethical Hacking 2', '::1', 'Chrome', 'Windows 10'),
(83, 4, '2021-04-07 09:14:40', 1, 'Menghapus Banner dengan judul Pembelajaran Ethical Hacking 4', '::1', 'Chrome', 'Windows 10'),
(84, 2, '2021-04-07 09:17:14', 1, 'Menambah Banner dengan judul Relax Night Campus', '::1', 'Chrome', 'Windows 10'),
(85, 0, '2021-04-07 13:56:42', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(86, 4, '2021-04-07 14:50:52', 1, 'Menghapus artikel Test Tiny', '::1', 'Chrome', 'Windows 10'),
(87, 4, '2021-04-07 14:50:58', 1, 'Menghapus artikel Update Berhasil', '::1', 'Chrome', 'Windows 10'),
(88, 4, '2021-04-07 14:51:34', 1, 'Menghapus Banner dengan judul Pembelajaran Ethical Hacking', '::1', 'Chrome', 'Windows 10'),
(89, 2, '2021-04-07 14:53:14', 1, 'Menambah Banner dengan judul Pembelajaran Ethical Hacking', '::1', 'Chrome', 'Windows 10'),
(90, 0, '2021-04-12 03:10:43', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(91, 0, '2021-04-13 04:08:19', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(92, 0, '2021-04-13 16:18:01', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(93, 0, '2021-04-14 03:56:56', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(94, 2, '2021-04-14 04:09:57', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(95, 2, '2021-04-14 04:10:42', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(96, 2, '2021-04-14 04:13:54', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(97, 2, '2021-04-14 04:14:10', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(98, 4, '2021-04-14 04:15:22', 1, 'Menghapus artikel Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(99, 4, '2021-04-14 04:15:25', 1, 'Menghapus artikel Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(100, 2, '2021-04-14 04:16:15', 1, 'Menambah artikel dengan judul 1234567890', '::1', 'Chrome', 'Windows 10'),
(101, 3, '2021-04-14 04:38:38', 1, 'Update artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(102, 2, '2021-04-14 04:53:59', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(103, 2, '2021-04-14 04:56:36', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(104, 1, '2021-04-14 04:57:36', 1, 'Logout Website', '::1', 'Chrome', 'Windows 10'),
(105, 0, '2021-04-14 04:57:47', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(106, 2, '2021-04-14 04:58:06', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(107, 2, '2021-04-14 05:01:34', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(108, 2, '2021-04-14 05:02:49', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(109, 2, '2021-04-14 05:03:18', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(110, 2, '2021-04-14 05:05:49', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(111, 2, '2021-04-14 05:06:20', 1, 'Menambah artikel dengan judul Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(112, 2, '2021-04-14 05:11:29', 1, 'Menambah artikel dengan judul tes 1', '::1', 'Chrome', 'Windows 10'),
(113, 2, '2021-04-14 05:11:51', 1, 'Menambah artikel dengan judul tes 1', '::1', 'Chrome', 'Windows 10'),
(114, 4, '2021-04-14 05:16:09', 1, 'Menghapus artikel Persiapan Launching Website Baru', '::1', 'Chrome', 'Windows 10'),
(115, 4, '2021-04-14 05:16:11', 1, 'Menghapus artikel tes 1', '::1', 'Chrome', 'Windows 10'),
(116, 2, '2021-04-14 05:16:31', 1, 'Menambah artikel dengan judul tes', '::1', 'Chrome', 'Windows 10'),
(117, 2, '2021-04-14 05:17:10', 1, 'Menambah artikel dengan judul tes2', '::1', 'Chrome', 'Windows 10'),
(118, 2, '2021-04-14 05:23:06', 1, 'Menambah artikel dengan judul tes', '::1', 'Chrome', 'Windows 10'),
(119, 2, '2021-04-14 05:37:06', 1, 'Menambah artikel dengan judul tes', '::1', 'Chrome', 'Windows 10'),
(120, 2, '2021-04-14 05:57:55', 1, 'Menambah artikel dengan judul tes', '::1', 'Chrome', 'Windows 10'),
(121, 2, '2021-04-14 06:00:08', 1, 'Menambah artikel dengan judul tes', '::1', 'Chrome', 'Windows 10'),
(122, 3, '2021-04-14 06:29:24', 1, 'Update artikel dengan judul tes', '::1', 'Chrome', 'Windows 10'),
(123, 2, '2021-04-14 07:51:08', 1, 'Menambah artikel dengan judul tes2', '::1', 'Chrome', 'Windows 10'),
(124, 2, '2021-04-14 08:04:09', 1, 'Menambah artikel dengan judul 1', '::1', 'Chrome', 'Windows 10'),
(125, 2, '2021-04-14 08:04:26', 1, 'Menambah kategori Puasa', '::1', 'Chrome', 'Windows 10'),
(126, 2, '2021-04-14 08:04:46', 1, 'Menambah artikel dengan judul 2', '::1', 'Chrome', 'Windows 10'),
(127, 2, '2021-04-14 08:05:26', 1, 'Menambah artikel dengan judul 3', '::1', 'Chrome', 'Windows 10'),
(128, 2, '2021-04-14 08:06:18', 1, 'Menambah artikel dengan judul 4', '::1', 'Chrome', 'Windows 10'),
(129, 2, '2021-04-14 08:06:51', 1, 'Menambah artikel dengan judul 5', '::1', 'Chrome', 'Windows 10'),
(130, 2, '2021-04-14 08:08:24', 1, 'Menambah artikel dengan judul 6', '::1', 'Chrome', 'Windows 10'),
(131, 3, '2021-04-14 08:09:41', 1, 'Update artikel dengan judul 6', '::1', 'Chrome', 'Windows 10'),
(132, 3, '2021-04-14 08:10:15', 1, 'Update artikel dengan judul 5', '::1', 'Chrome', 'Windows 10'),
(133, 3, '2021-04-14 08:10:26', 1, 'Update artikel dengan judul 4', '::1', 'Chrome', 'Windows 10'),
(134, 3, '2021-04-14 08:10:33', 1, 'Update artikel dengan judul 3', '::1', 'Chrome', 'Windows 10'),
(135, 2, '2021-04-14 08:11:30', 1, 'Menambah artikel dengan judul On the other hand, we denounce with righteous indignation and dislike', '::1', 'Chrome', 'Windows 10'),
(136, 0, '2021-04-14 13:35:05', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(137, 0, '2021-04-14 13:39:54', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(138, 0, '2021-04-14 13:43:57', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(139, 0, '2021-04-14 18:36:55', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(140, 2, '2021-04-14 19:02:18', 1, 'Menambah agenda Pondok Kilat STT POMOSDA', '::1', 'Chrome', 'Windows 10'),
(141, 2, '2021-04-14 19:06:41', 1, 'Menambah agenda agenda 3', '::1', 'Chrome', 'Windows 10'),
(142, 0, '2021-04-14 23:29:24', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(143, 4, '2021-04-14 23:54:48', 1, 'Menghapus agenda contoh', '::1', 'Chrome', 'Windows 10'),
(144, 3, '2021-04-15 00:40:57', 1, 'Update agenda dengan nama STT POMOSDA ANJAY', '::1', 'Chrome', 'Windows 10'),
(145, 3, '2021-04-15 00:53:50', 1, 'Update agenda dengan nama agenda 3 hari ini', '::1', 'Chrome', 'Windows 10'),
(146, 3, '2021-04-15 00:54:29', 1, 'Update agenda dengan nama agenda 3 hari ini', '::1', 'Chrome', 'Windows 10'),
(147, 3, '2021-04-15 00:58:11', 1, 'Update agenda dengan nama agenda 3 hari ini', '::1', 'Chrome', 'Windows 10'),
(148, 4, '2021-04-15 01:00:10', 1, 'Menghapus agenda agenda 3 hari ini', '::1', 'Chrome', 'Windows 10'),
(149, 4, '2021-04-15 01:00:20', 1, 'Menghapus agenda STT POMOSDA ANJAY', '::1', 'Chrome', 'Windows 10'),
(150, 4, '2021-04-15 01:01:38', 1, 'Menghapus artikel On the other hand, we denounce with righteous indignation and dislike', '::1', 'Chrome', 'Windows 10'),
(151, 4, '2021-04-15 01:01:48', 1, 'Menghapus artikel 4', '::1', 'Chrome', 'Windows 10'),
(152, 4, '2021-04-15 01:01:56', 1, 'Menghapus artikel 5', '::1', 'Chrome', 'Windows 10'),
(153, 4, '2021-04-15 01:03:15', 1, 'Menghapus artikel tes', '::1', 'Chrome', 'Windows 10'),
(154, 4, '2021-04-15 01:05:23', 1, 'Menghapus artikel 2', '::1', 'Chrome', 'Windows 10'),
(155, 4, '2021-04-15 01:07:39', 1, 'Menghapus artikel 1', '::1', 'Chrome', 'Windows 10'),
(156, 4, '2021-04-15 01:09:27', 1, 'Menghapus artikel tes2', '::1', 'Chrome', 'Windows 10'),
(157, 4, '2021-04-15 01:09:34', 1, 'Menghapus artikel 3', '::1', 'Chrome', 'Windows 10'),
(158, 4, '2021-04-15 01:10:03', 1, 'Menghapus artikel 6', '::1', 'Chrome', 'Windows 10'),
(159, 2, '2021-04-15 01:11:18', 1, 'Menambah artikel dengan judul Tes up 1', '::1', 'Chrome', 'Windows 10'),
(160, 2, '2021-04-15 01:12:06', 1, 'Menambah artikel dengan judul Tes up 1', '::1', 'Chrome', 'Windows 10'),
(161, 3, '2021-04-15 01:16:59', 1, 'Update Banner dengan judul Pembelajaran Ethical Hacking', '::1', 'Chrome', 'Windows 10'),
(162, 2, '2021-04-15 01:26:12', 1, 'Menambah Banner dengan judul Kerja Tim', '::1', 'Chrome', 'Windows 10'),
(163, 3, '2021-04-15 01:33:37', 1, 'Update Banner dengan judul Kerja Tim Oke', '::1', 'Chrome', 'Windows 10'),
(164, 3, '2021-04-15 01:34:18', 1, 'Update Banner dengan judul Kerja Tim Oke', '::1', 'Chrome', 'Windows 10'),
(165, 3, '2021-04-15 02:19:52', 1, 'Update Banner dengan judul Kerja Tim Oke', '::1', 'Chrome', 'Windows 10'),
(166, 2, '2021-04-15 02:26:19', 1, 'Menambah agenda Buka Bersama Alumni 2019', '::1', 'Chrome', 'Windows 10'),
(167, 3, '2021-04-15 02:29:27', 1, 'Update artikel dengan judul Sedang Sahur Apa sekarang', '::1', 'Chrome', 'Windows 10'),
(168, 3, '2021-04-15 03:21:41', 1, 'Update agenda dengan nama Buka Bersama Alumni 2019', '::1', 'Chrome', 'Windows 10'),
(169, 3, '2021-04-15 03:24:29', 1, 'Update agenda dengan nama Buka Bersama Alumni 2019', '::1', 'Chrome', 'Windows 10'),
(170, 2, '2021-04-15 06:00:43', 1, 'Menambah berita Bulan Ramadhan Menjadi Hari Spesial GoBlog252', '::1', 'Chrome', 'Windows 10'),
(171, 3, '2021-04-15 06:12:46', 1, 'Update Banner dengan judul ', '::1', 'Chrome', 'Windows 10'),
(172, 0, '2021-04-15 09:57:05', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(173, 0, '2021-04-16 00:31:07', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(174, 2, '2021-04-16 02:18:57', 1, 'Menambah berita Gambar Terbaik Ramadhan Sale', '::1', 'Chrome', 'Windows 10'),
(175, 3, '2021-04-16 02:21:02', 1, 'Update agenda dengan nama Buka Bersama Alumni 2020', '::1', 'Chrome', 'Windows 10'),
(176, 3, '2021-04-16 02:21:31', 1, 'Update agenda dengan nama Buka Bersama Alumni 2021', '::1', 'Chrome', 'Windows 10'),
(177, 3, '2021-04-16 02:25:27', 1, 'Update berita dengan judul Bulan Ramadhan Menjadi Hari Spesial GoBlog252.com', '::1', 'Chrome', 'Windows 10'),
(178, 4, '2021-04-16 03:01:54', 1, 'Menghapus berita Gambar Terbaik Ramadhan Sale', '::1', 'Chrome', 'Windows 10'),
(179, 3, '2021-04-16 03:40:55', 1, 'Update agenda dengan nama Buka Bersama Alumni 2021', '::1', 'Chrome', 'Windows 10'),
(180, 3, '2021-04-16 04:07:03', 1, 'Update agenda dengan nama Buka Bersama Alumni 2021', '::1', 'Chrome', 'Windows 10'),
(181, 2, '2021-04-16 04:12:36', 1, 'Menambah agenda ubah agenda', '::1', 'Chrome', 'Windows 10'),
(182, 3, '2021-04-16 04:16:15', 1, 'Update agenda dengan nama Buka Bersama Alumni 2021', '::1', 'Chrome', 'Windows 10'),
(183, 3, '2021-04-16 04:18:55', 1, 'Update agenda dengan nama Buka Bersama Alumni 2021', '::1', 'Chrome', 'Windows 10'),
(184, 3, '2021-04-16 04:19:16', 1, 'Update agenda dengan nama Buka Bersama Alumni 2021', '::1', 'Chrome', 'Windows 10'),
(185, 3, '2021-04-16 04:19:26', 1, 'Update agenda dengan nama Buka Bersama Alumni 2021', '::1', 'Chrome', 'Windows 10'),
(186, 3, '2021-04-16 04:35:00', 1, 'Update agenda dengan nama Buka Bersama Alumni 2021', '::1', 'Chrome', 'Windows 10'),
(187, 3, '2021-04-16 04:35:27', 1, 'Update agenda dengan nama ubah agenda', '::1', 'Chrome', 'Windows 10'),
(188, 3, '2021-04-16 04:36:14', 1, 'Update agenda dengan nama Buka Bersama Alumni 2021', '::1', 'Chrome', 'Windows 10'),
(189, 2, '2021-04-16 05:02:52', 1, 'Menambah halaman Halaman 1', '::1', 'Chrome', 'Windows 10'),
(190, 3, '2021-04-16 05:20:34', 1, 'Update halaman dengan judul Halaman 1 2', '::1', 'Chrome', 'Windows 10'),
(191, 4, '2021-04-16 05:21:15', 1, 'Menghapus halaman Halaman 1 2', '::1', 'Chrome', 'Windows 10'),
(192, 4, '2021-04-16 07:48:17', 1, 'Menghapus menu Gak ada Sub', '::1', 'Chrome', 'Windows 10'),
(193, 4, '2021-04-16 07:51:48', 1, 'Menghapus menu Main', '::1', 'Chrome', 'Windows 10'),
(194, 4, '2021-04-16 07:57:17', 1, 'Menghapus menu Second', '::1', 'Chrome', 'Windows 10'),
(195, 3, '2021-04-16 08:04:24', 1, 'Update menu GoBlog252', '::1', 'Chrome', 'Windows 10'),
(196, 3, '2021-04-16 08:06:11', 1, 'Update menu GoBlog252', '::1', 'Chrome', 'Windows 10'),
(197, 3, '2021-04-16 08:06:19', 1, 'Update menu GoBlog252', '::1', 'Chrome', 'Windows 10'),
(198, 2, '2021-04-16 08:06:47', 1, 'Menambah menu Situs kategori Footer', '::1', 'Chrome', 'Windows 10'),
(199, 2, '2021-04-16 08:07:05', 1, 'Menambah menu Follow Me kategori Footer', '::1', 'Chrome', 'Windows 10'),
(200, 3, '2021-04-16 08:07:28', 1, 'Update menu Y', '::1', 'Chrome', 'Windows 10'),
(201, 2, '2021-04-16 09:02:55', 1, 'Menambah menu A kategori Footer', '::1', 'Chrome', 'Windows 10'),
(202, 0, '2021-04-17 00:55:06', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(203, 2, '2021-04-17 01:27:46', 1, 'Menambah album Albumon', '::1', 'Chrome', 'Windows 10'),
(204, 3, '2021-04-17 01:42:43', 1, 'Merubah album menjadi Albumoni', '::1', 'Chrome', 'Windows 10'),
(205, 3, '2021-04-17 01:42:52', 1, 'Merubah album menjadi Albumino', '::1', 'Chrome', 'Windows 10'),
(206, 4, '2021-04-17 02:07:18', 1, 'Menghapus album Albumino', '::1', 'Chrome', 'Windows 10'),
(207, 2, '2021-04-17 02:07:32', 1, 'Menambah album Albumino', '::1', 'Chrome', 'Windows 10'),
(208, 3, '2021-04-17 02:09:56', 1, 'Merubah album Albumon menjadi Albumon', '::1', 'Chrome', 'Windows 10'),
(209, 3, '2021-04-17 02:10:30', 1, 'Merubah album Albumon menjadi Albumoni', '::1', 'Chrome', 'Windows 10'),
(210, 2, '2021-04-17 03:54:07', 1, 'Menambah gambar 00e640a8ef1b8aba1b33c94c99b78079.jpg pada galeri album albumino', '::1', 'Chrome', 'Windows 10'),
(211, 2, '2021-04-17 03:59:02', 1, 'Menambah gambar 75362c51704e0dd63f19ad83af721571.jpg pada galeri album albumoni', '::1', 'Chrome', 'Windows 10'),
(212, 2, '2021-04-17 04:51:36', 1, 'Menambah gambar c7312ebdd3ca2d2359510bd262bfe123.jpg pada galeri album albumoni', '::1', 'Chrome', 'Windows 10'),
(213, 2, '2021-04-17 04:56:09', 1, 'Menambah gambar 0250aed6e8aa0e3d8f9f120ad000c6b8.PNG pada galeri album albumino', '::1', 'Chrome', 'Windows 10'),
(214, 4, '2021-04-17 05:18:56', 1, 'Menghapus artikel Sedang Sahur Apa sekarang', '::1', 'Chrome', 'Windows 10'),
(215, 2, '2021-04-17 09:32:09', 1, 'Menambah gambar 90dfda55a7b736c28c8b390cdff4b56e.PNG pada galeri album albumoni', '::1', 'Chrome', 'Android'),
(216, 2, '2021-04-17 09:33:53', 1, 'Menambah gambar 5ee565ff640aab07b22648ba8b09e1b1.PNG pada galeri album albumoni', '::1', 'Chrome', 'Windows 10'),
(217, 2, '2021-04-17 09:35:37', 1, 'Menambah gambar 616d1f2f51d424bf20cfa89d056fb6b7.jpg pada galeri album albumino', '::1', 'Chrome', 'Windows 10'),
(218, 2, '2021-04-17 09:42:21', 1, 'Menambah gambar 98ee37351de656af8e01edf2823d21b9.jpg pada galeri album albumoni', '::1', 'Chrome', 'Windows 10'),
(219, 2, '2021-04-17 09:43:44', 1, 'Menambah album Katusa', '::1', 'Chrome', 'Windows 10'),
(220, 2, '2021-04-17 09:44:02', 1, 'Menambah gambar ab0a28ce3d1ad02ed6e1890717ad7703.PNG pada galeri album katusa', '::1', 'Chrome', 'Windows 10'),
(221, 2, '2021-04-17 09:57:49', 1, 'Menambah gambar c846ca8a013a6843e0ab81c83a291530.PNG pada galeri album albumoni', '::1', 'Chrome', 'Windows 10'),
(222, 4, '2021-04-17 10:03:45', 1, 'Menghapus gambar 00e640a8ef1b8aba1b33c94c99b78079.jpg pada galeri album albumino', '::1', 'Chrome', 'Windows 10'),
(223, 4, '2021-04-17 10:05:02', 1, 'Menghapus gambar  pada galeri album ', '::1', 'Chrome', 'Windows 10'),
(224, 4, '2021-04-17 10:05:16', 1, 'Menghapus gambar 98ee37351de656af8e01edf2823d21b9.jpg pada galeri album albumino', '::1', 'Chrome', 'Windows 10'),
(225, 3, '2021-04-17 10:15:08', 1, 'Merubah galeri  tanpa gambar', '::1', 'Chrome', 'Windows 10'),
(226, 4, '2021-04-17 10:16:42', 1, 'Menghapus gambar c846ca8a013a6843e0ab81c83a291530.PNG pada galeri album albumoni', '::1', 'Chrome', 'Windows 10'),
(227, 0, '2021-04-17 13:52:11', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(228, 3, '2021-04-17 13:52:38', 1, 'Merubah gambar ffa961746b967ec23b0ca77227477274.PNG pada galeri album katusa', '::1', 'Chrome', 'Windows 10'),
(229, 3, '2021-04-17 13:53:21', 1, 'Merubah galeri Judulnya tanpa gambar', '::1', 'Chrome', 'Windows 10'),
(230, 3, '2021-04-17 13:55:07', 1, 'Merubah galeri Judulnya tanpa gambar', '::1', 'Chrome', 'Windows 10'),
(231, 3, '2021-04-17 13:55:25', 1, 'Merubah galeri  tanpa gambar', '::1', 'Chrome', 'Windows 10'),
(232, 2, '2021-04-17 14:24:10', 1, 'Menambah artikel dengan judul Contoh Artikel', '::1', 'Chrome', 'Windows 10'),
(233, 4, '2021-04-17 14:24:17', 1, 'Menghapus artikel Contoh Artikel', '::1', 'Chrome', 'Windows 10'),
(234, 2, '2021-04-17 14:26:36', 1, 'Menambah artikel dengan judul Qasdasdsad', '::1', 'Chrome', 'Windows 10'),
(235, 2, '2021-04-17 15:38:33', 1, 'Menambah Data Baru Konten Kotak', '::1', 'Chrome', 'Windows 10'),
(236, 3, '2021-04-17 16:05:15', 1, 'Update Data Konten Kotak', '::1', 'Chrome', 'Windows 10'),
(237, 3, '2021-04-17 16:05:22', 1, 'Update Data Konten Kotak', '::1', 'Chrome', 'Windows 10'),
(238, 3, '2021-04-17 16:17:41', 1, 'Update Data Konten Kotak', '::1', 'Chrome', 'Windows 10'),
(239, 3, '2021-04-17 16:24:06', 1, 'Update Data Konten Kotak', '::1', 'Chrome', 'Windows 10'),
(240, 3, '2021-04-17 16:25:19', 1, 'Update Data Konten Kotak', '::1', 'Chrome', 'Windows 10'),
(241, 0, '2021-04-18 06:58:50', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(242, 2, '2021-04-18 08:45:14', 1, 'Menambah menu Kontak kategori Header', '::1', 'Chrome', 'Windows 10'),
(243, 1, '2021-04-18 18:53:28', 1, 'Logout Website', '::1', 'Chrome', 'Windows 10'),
(244, 0, '2021-04-18 19:32:53', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(245, 4, '2021-04-18 19:52:44', 1, 'Menghapus pesan dari email@ini.cok', '::1', 'Chrome', 'Windows 10'),
(246, 0, '2021-04-18 23:56:15', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(247, 4, '2021-04-18 23:56:44', 1, 'Menghapus pesan dari alamat@email.com', '::1', 'Chrome', 'Windows 10'),
(248, 2, '2021-04-19 00:25:43', 1, 'Membalas pesan dari amru@aam.co', '::1', 'Chrome', 'Windows 10'),
(249, 0, '2021-04-19 05:54:55', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(250, 4, '2021-04-19 07:09:53', 1, 'Menghapus pesan keluar milik ibnusodik049@gmail.com', '::1', 'Chrome', 'Windows 10'),
(251, 4, '2021-04-19 07:10:57', 1, 'Menghapus pesan keluar milik ibnusodik049@gmail.com', '::1', 'Chrome', 'Windows 10'),
(252, 4, '2021-04-19 07:12:15', 1, 'Menghapus pesan keluar milik ibnusodik049@gmail.com', '::1', 'Chrome', 'Windows 10'),
(253, 4, '2021-04-19 07:18:53', 1, 'Menghapus pesan keluar milik amru@aam.co', '::1', 'Chrome', 'Windows 10'),
(254, 2, '2021-04-19 07:20:45', 1, 'Membalas pesan dari email@ku.ya', '::1', 'Chrome', 'Windows 10'),
(255, 4, '2021-04-19 07:30:26', 1, 'Menghapus pesan keluar milik email@ku.ya', '::1', 'Chrome', 'Windows 10'),
(256, 2, '2021-04-19 07:30:51', 1, 'Membalas pesan dari amru@aam.co', '::1', 'Chrome', 'Windows 10'),
(257, 2, '2021-04-19 07:33:13', 1, 'Membalas pesan dari amru@aam.co', '::1', 'Chrome', 'Windows 10'),
(258, 1, '2021-04-19 07:42:06', 1, 'Logout Website', '::1', 'Chrome', 'Windows 10'),
(259, 0, '2021-04-19 07:54:11', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(260, 2, '2021-04-19 08:15:23', 1, 'Menambah Data Baru Kata sambutan', '::1', 'Chrome', 'Windows 10'),
(261, 3, '2021-04-19 08:29:02', 1, 'Update Data Konten Kotak', '::1', 'Chrome', 'Windows 10'),
(262, 3, '2021-04-19 08:29:41', 1, 'Update Data Konten Kotak', '::1', 'Chrome', 'Windows 10'),
(263, 3, '2021-04-19 08:32:11', 1, 'Update Data Konten Kotak', '::1', 'Chrome', 'Windows 10'),
(264, 3, '2021-04-19 08:40:17', 1, 'Update Data Kata sambutan', '::1', 'Chrome', 'Windows 10'),
(265, 3, '2021-04-19 09:43:26', 1, 'Update Data Kata sambutan', '::1', 'Chrome', 'Windows 10'),
(266, 3, '2021-04-19 09:52:42', 1, 'Update Data Kata sambutan', '::1', 'Chrome', 'Windows 10'),
(267, 3, '2021-04-19 09:58:40', 1, 'Update Data Kata sambutan', '::1', 'Chrome', 'Windows 10'),
(268, 3, '2021-04-19 10:02:47', 1, 'Update menu Main', '::1', 'Chrome', 'Windows 10'),
(269, 0, '2021-04-19 18:18:03', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(270, 3, '2021-04-19 18:22:10', 1, 'Update Data Kata sambutan', '::1', 'Chrome', 'Windows 10'),
(271, 3, '2021-04-19 18:22:49', 1, 'Update Data Kata sambutan', '::1', 'Chrome', 'Windows 10'),
(272, 0, '2021-04-20 00:37:30', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(273, 2, '2021-04-20 01:14:09', 1, 'Menambah Laboratorium Komputer pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(274, 2, '2021-04-20 03:20:59', 1, 'Menambah Masa Depan Cerah pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(275, 2, '2021-04-20 03:57:33', 1, 'Merubah Masa Depan Cerah pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(276, 2, '2021-04-20 04:00:39', 1, 'Merubah Masa Depan Cerah pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(277, 2, '2021-04-20 04:00:55', 1, 'Merubah Masa Depan Cerah pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(278, 4, '2021-04-20 04:08:59', 1, 'Menghapus Masa Depan Cerah dari tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(279, 2, '2021-04-20 05:14:08', 1, 'Menambah Cewek Cantik pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(280, 2, '2021-04-20 05:18:49', 1, 'Menambah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(281, 2, '2021-04-20 05:19:34', 1, 'Merubah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(282, 2, '2021-04-20 05:19:44', 1, 'Merubah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(283, 2, '2021-04-20 05:20:05', 1, 'Merubah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(284, 2, '2021-04-20 05:22:56', 1, 'Menambah Akses Internet Terbaik pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(285, 0, '2021-04-20 14:45:45', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(286, 4, '2021-04-20 14:46:02', 1, 'Menghapus Nama dari tabel testimoni', '::1', 'Chrome', 'Windows 10'),
(287, 2, '2021-04-20 14:52:51', 1, 'Merubah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(288, 2, '2021-04-20 14:52:59', 1, 'Merubah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(289, 2, '2021-04-20 14:53:11', 1, 'Merubah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(290, 2, '2021-04-20 14:53:36', 1, 'Merubah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(291, 2, '2021-04-20 14:53:57', 1, 'Merubah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(292, 2, '2021-04-20 14:54:02', 1, 'Merubah Makan Losss pada tabel fasilitas', '::1', 'Chrome', 'Windows 10'),
(293, 2, '2021-04-20 14:55:15', 1, 'Menambah menu Testimoni kategori Header', '::1', 'Chrome', 'Windows 10'),
(294, 4, '2021-04-20 17:59:33', 1, 'Menghapus Filzam Ulil Aziz dari tabel testimoni', '::1', 'Chrome', 'Windows 10'),
(295, 0, '2021-04-20 18:21:07', 1, 'Login Website', '::1', 'Chrome', 'Windows 10'),
(296, 0, '2021-04-20 21:30:57', 1, 'Login Website', '::1', 'Chrome', 'Windows 10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_menu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `urut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `judul`, `kategori_menu`, `jenis_link`, `link`, `parent_id`, `urut`) VALUES
(1, 'Main', 'main', 'url', '#salam-pembuka', 0, 1),
(3, 'Y', 'main', 'agenda', 'http://localhost/goblog-education/agenda/buka-bersama-alumni-2021', 6, 1),
(5, 'Gak ada Sub', 'main', 'url', 'tes', 6, 2),
(6, 'Tentang GoBlog', 'main', 'url', 'main', 0, 1),
(8, 'Tentang', 'second', 'url', '#', 0, 1),
(9, 'GoBlog252', 'second', 'url', 'https://goblog252.com', 8, 1),
(10, 'Situs', 'second', 'halaman', 'http://localhost/goblog-education/halaman/', 0, 2),
(11, 'Follow Me', 'second', 'halaman', 'http://localhost/goblog-education/halaman/', 0, 3),
(12, 'A', 'second', 'agenda', 'http://localhost/goblog-education/agenda/ubah-agenda-1564368986', 10, 2),
(13, 'Kontak', 'main', 'url', 'kontak', 0, 20),
(14, 'Testimoni', 'main', 'url', 'testimoni', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_personil`
--

CREATE TABLE `tb_personil` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `level` int(2) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 0,
  `jenis_fungsi` varchar(50) DEFAULT NULL,
  `personil_info` text DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_personil`
--

INSERT INTO `tb_personil` (`id`, `full_name`, `username`, `email`, `password`, `level`, `status`, `jenis_fungsi`, `personil_info`, `foto`, `last_login`) VALUES
(1, 'Ibnu Sodik', 'is01252', 'dixos252@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 1, 1, 'Pengabdian', 'No need tot know', '', '2021-03-04 19:10:00'),
(16, 'Dixos', 'dixos', 'dixos252@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 2, 1, NULL, NULL, NULL, '2021-03-14 18:48:10'),
(25, 'Agil Nurkajayanti', 'agil', 'agilnurkajayanti021001@gmail.com', '0fe6e3ae8024cb38fedd2a07f448d80c95a88bee', 2, 0, NULL, NULL, NULL, '2021-03-19 13:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `subjek_pesan` varchar(100) NOT NULL,
  `isi_pesan` text NOT NULL,
  `dikirim_pada` timestamp NOT NULL DEFAULT current_timestamp(),
  `dibaca` int(11) NOT NULL DEFAULT 0,
  `bintang` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `nama_depan`, `nama_belakang`, `alamat_email`, `subjek_pesan`, `isi_pesan`, `dikirim_pada`, `dibaca`, `bintang`) VALUES
(3, 'Ibnu', 'Sodik', 'ibnusodik049@gmail.com', 'Tes lagiii', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-04-18 08:50:36', 1, NULL),
(4, 'nama', 'saya', 'email@ku.ya', 'Tes hasil', 'oke deh', '2021-04-18 08:52:10', 0, NULL),
(5, 'Amru', 'Llah', 'amru@aam.co', 'Waktunya buka puasa', 'Sebantar lagi maghrib yuk persiapan\r\nTak tunggu ya', '2021-04-18 09:13:57', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan_keluar`
--

CREATE TABLE `tb_pesan_keluar` (
  `id_pesan` int(11) NOT NULL,
  `id_pesanMasuk` int(11) NOT NULL,
  `nama_penerima` varchar(50) NOT NULL,
  `email_penerima` varchar(100) NOT NULL,
  `subjek_pesan` varchar(100) NOT NULL,
  `isi_pesan` text NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `dikirim_pada` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesan_keluar`
--

INSERT INTO `tb_pesan_keluar` (`id_pesan`, `id_pesanMasuk`, `nama_penerima`, `email_penerima`, `subjek_pesan`, `isi_pesan`, `attachment`, `dikirim_pada`) VALUES
(9, 5, 'Amru Llah', 'amru@aam.co', 'Balasan dari pesan : Waktunya buka puasa', '<p>Sebentar boooy masih ngoding</p>', 'cd4720136d4bfdd0e055126a9f06fa25.png', '2021-04-19 07:30:51'),
(10, 5, 'Amru Llah', 'amru@aam.co', 'Balasan dari pesan : Waktunya buka puasa', '<p>yayayayya</p>', 'c3c67f5bbef4ab6415d8dfc6bc0e6a20.png', '2021-04-19 07:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_reset`
--

CREATE TABLE `tb_reset` (
  `reset_id` int(11) NOT NULL,
  `reset_email` varchar(50) NOT NULL,
  `reset_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sambutan`
--

CREATE TABLE `tb_sambutan` (
  `id_sambutan` int(11) NOT NULL,
  `konten_sambutan` text NOT NULL,
  `gambar_sambutan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sambutan`
--

INSERT INTO `tb_sambutan` (`id_sambutan`, `konten_sambutan`, `gambar_sambutan`) VALUES
(1, '<h4><font face=\"Helvetica\">Entah lah hanya sekedar kata</font></h4><p><font face=\"Comic Sans MS\"><span style=\"color: rgb(74, 74, 74); font-size: 15px;\">Hal-hal terbaik dan terindah di dunia tidak dapat dilihat atau bahkan disentuh. Itu harus dirasakan dengan hati begitupun&nbsp;</span><span style=\"color: rgb(74, 74, 74); font-size: 15px;\">keberanian, dia adalah apa yang diperlukan untuk berdiri dan berbicara. Keberanian juga diperlukan untuk duduk dan mendengarkan.&nbsp;</span><span style=\"color: rgb(74, 74, 74); font-size: 15px;\">Peluang nyata untuk sukses terletak di dalam diri seseorang yang berani dan bukan pada pekerjaannya.</span></font></p><p><font face=\"Comic Sans MS\"><span style=\"color: rgb(74, 74, 74); font-size: 15px;\">Sukses tampaknya terkait dengan tindakan. Orang sukses terus bergerak. Mereka membuat kesalahan, tetapi mereka tidak berhenti.&nbsp;</span><span style=\"color: rgb(74, 74, 74); font-size: 15px;\">Satu-satunya hal yang harus kita takuti adalah ketakutan itu sendiri maka&nbsp;</span><span style=\"color: rgb(74, 74, 74); font-size: 15px;\">berusaha keras untuk tidak sukses, melainkan untuk menjadi bernilai dan&nbsp;</span><span style=\"color: rgb(74, 74, 74); font-size: 15px;\">jangan biarkan apa yang tidak dapat kamu lakukan mengganggu apa yang dapat kamu lakukan karena&nbsp;</span><span style=\"color: rgb(74, 74, 74); font-size: 15px;\">setiap kali kamu menemukan dirimu berada di pihak mayoritas, inilah saatnya untuk berhenti dan merenung.</span></font></p><p><span style=\"color: rgb(74, 74, 74); font-size: 15px;\"><font face=\"Comic Sans MS\">Percayalah dan bertindaklah seolah-olah tidak mungkin gagal.</font></span></p><p><span style=\"color: rgb(74, 74, 74); font-size: 15px;\"><font face=\"Comic Sans MS\"><br></font></span></p><p style=\"text-align: right; line-height: 0.5;\"><font face=\"Arial\"><span style=\"font-size: 14px;\">Kota angin, 20 April 2021</span><span style=\"color: rgb(74, 74, 74); font-size: 15px;\"></span></font></p><p style=\"text-align: right; line-height: 0.5;\"><font face=\"Arial\"><img src=\"data:image/png;base64,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\" data-filename=\"download.png\" style=\"width: 25%;\"><span style=\"color: rgb(74, 74, 74); font-size: 15px;\"><br></span></font></p><p style=\"line-height: 0.5;\"></p><div style=\"text-align: right; line-height: 0.5;\"><span style=\"color: rgb(74, 74, 74); font-size: 14px;\"><font face=\"Arial\"><b>Ibnu Sodik</b></font></span></div><br><p></p>', '343c7193bbc4b633382a0f82e3ff31e7.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site`
--

CREATE TABLE `tb_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(50) DEFAULT NULL,
  `site_title` varchar(50) DEFAULT NULL,
  `site_keywords` mediumtext DEFAULT NULL,
  `site_description` mediumtext DEFAULT NULL,
  `site_author` varchar(50) DEFAULT 'ibnusodik049@gmail.com',
  `limit_post` varchar(3) DEFAULT NULL,
  `limit_gambar` int(11) DEFAULT NULL,
  `site_favicon` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) DEFAULT NULL,
  `site_email` varchar(50) DEFAULT NULL,
  `site_telp` varchar(15) DEFAULT NULL,
  `site_nowa` varchar(15) DEFAULT NULL,
  `site_pesanTeks` text DEFAULT NULL,
  `tahun_buat` year(4) NOT NULL,
  `api_tinify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_site`
--

INSERT INTO `tb_site` (`site_id`, `site_name`, `site_title`, `site_keywords`, `site_description`, `site_author`, `limit_post`, `limit_gambar`, `site_favicon`, `site_logo`, `site_email`, `site_telp`, `site_nowa`, `site_pesanTeks`, `tahun_buat`, `api_tinify`) VALUES
(1, 'GoBlog Education', 'Go Edu', 'Pendidikan, GoBlog Education', 'GoBlog Education adalah website pendidikan dari GoBlog252', 'ibnusodik049@gmail.com', '6', 7, '74271d7faa25bf07d10e9b7c651dd927.png', 'f1d9b884aaa60ee4338eaee577382589.png', 'dixos252@gmail.com', '081314225017', '6281314225017', 'Hai kak saya minat dengan source code nya...', 2019, 'C3QyyrPCrwXJG1nFtXq0RY2kVctW7Z3K');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sosmedweb`
--

CREATE TABLE `tb_sosmedweb` (
  `id_sosmed` int(11) NOT NULL,
  `nama_sosmed` varchar(50) NOT NULL,
  `link_sosmed` varchar(100) NOT NULL,
  `ikon_sosmed` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sosmedweb`
--

INSERT INTO `tb_sosmedweb` (`id_sosmed`, `nama_sosmed`, `link_sosmed`, `ikon_sosmed`) VALUES
(1, 'Facebook', 'https://facebook.com/goblog252', 'fa fa-facebook'),
(2, 'Instagram', 'https://instagram.com/goblog252', 'fa fa-instagram'),
(3, 'Github', 'https://github.com/is01252', 'fa fa-github'),
(4, 'Twitter', 'https://twitter.com/Is_Isodik', 'fa fa-twitter'),
(5, 'YouTube', 'https://youtube.com/c/goblog252', 'fa fa-youtube');

-- --------------------------------------------------------

--
-- Table structure for table `tb_testimoni`
--

CREATE TABLE `tb_testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `foto_testimoni` varchar(100) NOT NULL,
  `nama_testimoni` varchar(50) NOT NULL,
  `profesi_testimoni` varchar(50) NOT NULL,
  `konten_testimoni` text NOT NULL,
  `tampil` int(11) NOT NULL DEFAULT 0,
  `dilihat` int(11) NOT NULL DEFAULT 0,
  `tgl_kirim` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_testimoni`
--

INSERT INTO `tb_testimoni` (`id_testimoni`, `foto_testimoni`, `nama_testimoni`, `profesi_testimoni`, `konten_testimoni`, `tampil`, `dilihat`, `tgl_kirim`) VALUES
(2, 'cd88e12fcf3c40791b68b782f64e0dbb.jpg', 'Agil Nurkajayanti', 'Akuntan', 'GoBlog emang sesuai dengan sikap pemiliknya', 0, 0, '2021-04-20 17:26:57'),
(3, 'a54affd7a26dbdf11da4f455f3c91a09.JPG', 'Ali makrup', 'Banking', 'Menggunakan platform membuat saya ikutan goblog', 0, 1, '2021-04-20 17:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `tb_visitors`
--

CREATE TABLE `tb_visitors` (
  `visit_id` int(11) NOT NULL,
  `visit_date` timestamp NULL DEFAULT current_timestamp(),
  `visit_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_browser` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_platform` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `tb_background`
--
ALTER TABLE `tb_background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tb_halaman`
--
ALTER TABLE `tb_halaman`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `tb_kategori_artikel`
--
ALTER TABLE `tb_kategori_artikel`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_konten_kontak`
--
ALTER TABLE `tb_konten_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tb_label_artikel`
--
ALTER TABLE `tb_label_artikel`
  ADD PRIMARY KEY (`id_label`);

--
-- Indexes for table `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tb_personil`
--
ALTER TABLE `tb_personil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `tb_pesan_keluar`
--
ALTER TABLE `tb_pesan_keluar`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_pesanMasuk` (`id_pesanMasuk`);

--
-- Indexes for table `tb_reset`
--
ALTER TABLE `tb_reset`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `tb_sambutan`
--
ALTER TABLE `tb_sambutan`
  ADD PRIMARY KEY (`id_sambutan`);

--
-- Indexes for table `tb_site`
--
ALTER TABLE `tb_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `tb_sosmedweb`
--
ALTER TABLE `tb_sosmedweb`
  ADD PRIMARY KEY (`id_sosmed`);

--
-- Indexes for table `tb_testimoni`
--
ALTER TABLE `tb_testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `tb_visitors`
--
ALTER TABLE `tb_visitors`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_background`
--
ALTER TABLE `tb_background`
  MODIFY `id_background` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_banner`
--
ALTER TABLE `tb_banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_halaman`
--
ALTER TABLE `tb_halaman`
  MODIFY `id_halaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kategori_artikel`
--
ALTER TABLE `tb_kategori_artikel`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_konten_kontak`
--
ALTER TABLE `tb_konten_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_label_artikel`
--
ALTER TABLE `tb_label_artikel`
  MODIFY `id_label` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_personil`
--
ALTER TABLE `tb_personil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pesan_keluar`
--
ALTER TABLE `tb_pesan_keluar`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_reset`
--
ALTER TABLE `tb_reset`
  MODIFY `reset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_sambutan`
--
ALTER TABLE `tb_sambutan`
  MODIFY `id_sambutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_site`
--
ALTER TABLE `tb_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_sosmedweb`
--
ALTER TABLE `tb_sosmedweb`
  MODIFY `id_sosmed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_testimoni`
--
ALTER TABLE `tb_testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_visitors`
--
ALTER TABLE `tb_visitors`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
