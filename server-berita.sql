-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 Mei 2017 pada 14.07
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server-berita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`) VALUES
(1, 'faisalarkan21', 'arkan14811');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_depok`
--

CREATE TABLE `berita_depok` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(225) NOT NULL,
  `ringakasan_berita` varchar(225) NOT NULL,
  `isi_berita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `berita_depok`
--

INSERT INTO `berita_depok` (`id_berita`, `judul_berita`, `ringakasan_berita`, `isi_berita`) VALUES
(7, 'Depok Banjir', 'Depok Kebanjiran oleh banyak arus sungai culiwung', '<p><strong style=\"color: rgb(37, 37, 37);\">DEPOK</strong><span style=\"color: rgb(37, 37, 37);\">&nbsp;- Hujan lebat yang mengguyur wilayah Depok dan sekitarnya mengakibatkan beberapa daerah yang kerap menjadi langganan banjir kembali tergenang. Hujan disertai angin kencang terjadi sekitar pukul&nbsp;15.00 WIB.&nbsp;</span></p><p><br></p><p><span style=\"color: rgb(37, 37, 37);\">Bahkan, akibat angin kencang, atap rumah milik warga Cimanggis, Siti Soburoh berterbangan. \"Anginnya kenceng banget. Kejadiannya cepet, rumah saya memang masih banyak pohon. Seng atap rumah yang saya taruh di belakang, sempat jatuh,\" kata Siti, Rabu (1/3/2017).</span></p><p><br></p><p><span style=\"color: rgb(37, 37, 37);\">Beruntung, rumah milik warga RT 003 RW 007 Kelurahan Tugu Kecamatan&nbsp;Cimanggis tersebut tidak mengalami kerusakan parah. Dia mengaku kerap khawatir kalau hujan deras disertai angin. \"Di sini masih banyak pohon. Takutnyaa tumbang dan nimpa rumah,\" ucapnya.</span></p>'),
(8, 'Depok Di Begal', 'Komplotan begal kembali melakukan aksinya di Kota Depok. Salah seorang pengendara motor bernama Taufik Subur dibacok.', '<p><strong style=\"color: rgb(45, 45, 45);\">Depok</strong><span style=\"color: rgb(45, 45, 45);\">&nbsp;- Komplotan begal kembali melakukan aksinya di Kota Depok. Salah seorang pengendara motor bernama Taufik Subur dibacok oleh komplotan begal saat melintas di Jalan Ir H Juanda, Kelurahan Baktijaya, Kecamatan Sukmajaya, Kota Depok.&nbsp;</span></p><p><br></p><p><span style=\"color: rgb(45, 45, 45);\">\"Pelakunya masih kami kejar, sekarang anggota masih di lapangan,\" ujar Kapolresta Depok Kombes Herry Heryawan kepada&nbsp;</span><strong style=\"color: rgb(45, 45, 45);\">detikcom</strong><span style=\"color: rgb(45, 45, 45);\">, Kamis (27/4/2017).</span></p><p><br></p><p><span style=\"color: rgb(45, 45, 45);\">Peristiwa terjadi pada Rabu, 26 April 2017, sekitar pukul 02.30 WIB. Saat itu korban menggunakan motor Honda bernopol B-3966-EGA melintas di Jalan Juanda.</span></p><p><br></p><p><span style=\"color: rgb(45, 45, 45);\">Tiba-tiba, korban dipepet oleh enam pelaku yang berboncengan tiga sepeda motor. Tanpa ba-bi-bu, salah satu pelaku langsung mengayunkan senjata tajam ke arah korban.</span></p><p><br></p><p><span style=\"color: rgb(45, 45, 45);\">Atas kejadian itu, korban mengalami luka bacok di bagian pinggangnya. Korban dibawa ke rumah sakit oleh warga yang melintas di lokasi.</span></p><p><br></p><p><span style=\"color: rgb(45, 45, 45);\">Sementara itu, para pelaku melarikan diri dengan membawa motor korban. Saat ini polisi masih menyelidiki para pelakunya.&nbsp;</span></p><p><strong style=\"color: rgb(45, 45, 45);\">(mei/dhn)</strong></p>'),
(9, 'HUT KE-12 Kota Depok', 'Hari ini bertempat di Masjid Agung Baitul Kamal, Balaikota Depok digelar tasyakuran sebagai langkah awal untuk memulai rangkaian acara Hari Ulang Tahun (HUT) ke-12 Kota Depok', '<p class=\"ql-align-justify\"><strong><em>Hari ini bertempat di Masjid Agung Baitul Kamal,</em></strong> Balaikota Depok digelar tasyakuran sebagai langkah awal untuk memulai rangkaian acara Hari Ulang Tahun (HUT) ke-12 Kota Depok yang jatuh pada 27 April mendatang. Tasyakuran yang diselenggarakan Senin (25/4) sore dihadiri oleh Ketua DPRD Kota Depok beserta jajarannya, Muspida Kota Depok, Wakil Walikota Depok, Sekretaris Daerah beserta para Kepala OPD Kota Depok, Ketua Tim Penggerak PKK Kota Depok, para Alim Ulama, Tokoh Masyarakat, Tokoh Pemuda, Tokoh Agama, dan Tokoh Wanita Se- Kota Depok.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">Mengawali sambutannya, H. Nur Mahmudi Isma’il mengucapkan terimakasih dan memberikan apresiasi kepada segenap elemen masyarakat Kota Depok yang telah turut mensukseskan dan mendoakan kejayaan Kota Depok yang mulai beranjak dewasa. Dalam kesempatan itu, Walikota juga mengajak seluruh elemen untuk terus bersyukur dan menanamkan keikhlasan dalam bekerja sebagai bentuk pengabdian kepada-Nya. “Mari kita melakukan refleksi terhadap perjalanan panjang dalam upaya pembangunan Kota Depok selama 12 tahun kebelakang &amp; selalu melakukan evaluasi serta introspeksi atas apa yang telah kita perbuat, sebagai bagian dari bentuk rasa memiliki terhadap Kota Depok” ajak Walikota.</p><p><br></p>'),
(11, 'z', 'zzz', '<p> zzz</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita_depok`
--
ALTER TABLE `berita_depok`
  ADD PRIMARY KEY (`id_berita`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `berita_depok`
--
ALTER TABLE `berita_depok`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
