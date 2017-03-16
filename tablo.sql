-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Mar 2017, 01:31:13
-- Sunucu sürümü: 10.1.8-MariaDB
-- PHP Sürümü: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `iamu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tablo`
--

CREATE TABLE `tablo` (
  `id` int(11) NOT NULL,
  `tone` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `ttwo` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `tthere` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tablo`
--

INSERT INTO `tablo` (`id`, `tone`, `ttwo`, `tthere`) VALUES
(1, 'test 1', 'test a', 'test @'),
(2, 'test 2', 'test b', 'test #'),
(3, 'test 3', 'test c', 'test -');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tablo`
--
ALTER TABLE `tablo`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tablo`
--
ALTER TABLE `tablo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
