-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Eyl 2021, 21:26:18
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `vetcilinic`
--

DELIMITER $$
--
-- Yordamlar
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `procProductUpdateStock` (IN `id` INTEGER, IN `amount` INTEGER)  BEGIN
	UPDATE product as p 
	set p.pro_quantity = p.pro_quantity - amount
	WHERE id=p.pro_id AND p.pro_quantity >= amount;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `account_activities`
--

CREATE TABLE `account_activities` (
  `id` int(11) NOT NULL,
  `date_info` varchar(255) DEFAULT NULL,
  `email_info` varchar(255) DEFAULT NULL,
  `image_file` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name_info` varchar(255) DEFAULT NULL,
  `role_info` varchar(255) DEFAULT NULL,
  `session_info` varchar(255) DEFAULT NULL,
  `surname_info` varchar(255) DEFAULT NULL,
  `url_info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `account_activities`
--

INSERT INTO `account_activities` (`id`, `date_info`, `email_info`, `image_file`, `ip_info`, `name_info`, `role_info`, `session_info`, `surname_info`, `url_info`) VALUES
(1, '20-09-2021 23:22:26', 'eruyar123@gmail.com', NULL, '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(2, '20-09-2021 23:22:48', 'eruyar123@gmail.com', '66487790-a8d5-46c8-be50-bd5a5f13d389k.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account/uploadImage'),
(3, '20-09-2021 23:22:48', 'eruyar123@gmail.com', NULL, '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(4, '20-09-2021 23:23:19', 'eruyar123@gmail.com', NULL, '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(5, '20-09-2021 23:23:22', 'eruyar123@gmail.com', NULL, '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(6, '20-09-2021 23:29:15', 'eruyar123@gmail.com', '', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(7, '20-09-2021 23:29:16', 'eruyar123@gmail.com', '', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(8, '20-09-2021 23:29:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account/uploadImage'),
(9, '20-09-2021 23:29:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(10, '20-09-2021 23:29:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(11, '20-09-2021 23:29:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(12, '20-09-2021 23:29:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(13, '20-09-2021 23:30:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(14, '20-09-2021 23:30:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(15, '20-09-2021 23:30:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(16, '20-09-2021 23:30:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(17, '20-09-2021 23:31:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(18, '20-09-2021 23:31:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(19, '20-09-2021 23:32:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(20, '20-09-2021 23:33:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(21, '20-09-2021 23:33:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(22, '20-09-2021 23:33:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(23, '20-09-2021 23:33:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(24, '20-09-2021 23:33:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(25, '20-09-2021 23:33:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(26, '20-09-2021 23:33:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(27, '20-09-2021 23:34:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(28, '20-09-2021 23:34:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(29, '20-09-2021 23:35:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(30, '20-09-2021 23:35:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(31, '20-09-2021 23:36:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(32, '20-09-2021 23:36:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(33, '20-09-2021 23:36:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(34, '20-09-2021 23:36:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(35, '20-09-2021 23:36:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(36, '20-09-2021 23:36:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(37, '20-09-2021 23:39:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(38, '20-09-2021 23:39:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(39, '20-09-2021 23:39:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(40, '20-09-2021 23:39:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(41, '20-09-2021 23:40:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(42, '20-09-2021 23:40:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(43, '20-09-2021 23:40:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(44, '20-09-2021 23:40:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(45, '20-09-2021 23:40:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(46, '20-09-2021 23:40:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(47, '20-09-2021 23:41:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(48, '20-09-2021 23:41:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(49, '20-09-2021 23:41:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(50, '20-09-2021 23:41:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(51, '20-09-2021 23:58:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(52, '20-09-2021 23:58:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(53, '20-09-2021 23:58:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(54, '20-09-2021 23:58:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(55, '20-09-2021 23:58:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(56, '20-09-2021 23:58:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(57, '20-09-2021 23:59:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(58, '20-09-2021 23:59:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(59, '21-09-2021 00:00:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(60, '21-09-2021 00:00:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(61, '21-09-2021 00:00:58', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(62, '21-09-2021 00:00:58', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(63, '21-09-2021 00:01:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(64, '21-09-2021 00:01:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(65, '21-09-2021 00:01:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(66, '21-09-2021 00:01:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(67, '21-09-2021 00:02:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(68, '21-09-2021 00:02:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(69, '21-09-2021 00:02:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(70, '21-09-2021 00:02:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(71, '21-09-2021 00:02:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(72, '21-09-2021 00:02:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(73, '21-09-2021 00:02:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(74, '21-09-2021 00:02:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(75, '21-09-2021 00:02:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(76, '21-09-2021 00:02:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(77, '21-09-2021 00:02:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(78, '21-09-2021 00:02:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(79, '21-09-2021 00:03:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(80, '21-09-2021 00:03:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(81, '21-09-2021 00:03:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(82, '21-09-2021 00:03:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(83, '21-09-2021 00:03:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(84, '21-09-2021 00:03:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(85, '21-09-2021 00:03:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(86, '21-09-2021 00:03:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(87, '21-09-2021 00:04:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(88, '21-09-2021 00:04:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(89, '21-09-2021 00:04:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(90, '21-09-2021 00:04:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(91, '21-09-2021 00:05:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(92, '21-09-2021 00:05:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(93, '21-09-2021 00:06:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(94, '21-09-2021 00:06:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(95, '21-09-2021 00:06:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(96, '21-09-2021 00:06:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(97, '21-09-2021 00:07:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(98, '21-09-2021 00:07:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(99, '21-09-2021 00:07:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(100, '21-09-2021 00:07:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(101, '21-09-2021 00:08:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(102, '21-09-2021 00:08:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(103, '21-09-2021 00:08:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(104, '21-09-2021 00:08:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(105, '21-09-2021 00:08:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(106, '21-09-2021 00:08:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(107, '21-09-2021 00:10:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(108, '21-09-2021 00:10:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(109, '21-09-2021 00:10:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(110, '21-09-2021 00:10:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(111, '21-09-2021 00:10:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(112, '21-09-2021 00:10:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(113, '21-09-2021 00:11:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/account'),
(114, '21-09-2021 00:11:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(115, '21-09-2021 00:11:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(116, '21-09-2021 00:11:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(117, '21-09-2021 00:11:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(118, '21-09-2021 00:12:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA6A1F2C5CC215A261F2F0FBFF3873B3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(119, '21-09-2021 01:25:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '6B2BF8AFE4D42CA3E8EB373E80661F26', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(120, '21-09-2021 01:27:13', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(121, '21-09-2021 01:27:27', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(122, '21-09-2021 01:27:37', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/account'),
(123, '21-09-2021 01:27:38', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(124, '21-09-2021 01:29:03', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(125, '21-09-2021 01:29:34', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(126, '21-09-2021 01:33:21', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(127, '21-09-2021 01:37:47', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(128, '21-09-2021 01:37:51', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(129, '21-09-2021 01:37:56', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(130, '21-09-2021 01:38:39', 'slymn@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F234853CF25360E1C83B6DDDABF0015B', 'KARACA', 'http://localhost:8080/accountActivity'),
(131, '21-09-2021 01:39:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '3E45B5A1DFF7DEE504ACCD01EB424CA8', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(132, '21-09-2021 01:39:32', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(133, '21-09-2021 01:41:27', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/account'),
(134, '21-09-2021 01:41:27', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(135, '21-09-2021 01:41:29', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(136, '21-09-2021 01:41:32', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(137, '21-09-2021 01:41:37', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(138, '21-09-2021 01:42:06', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(139, '21-09-2021 01:42:11', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(140, '21-09-2021 01:42:17', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(141, '21-09-2021 01:42:33', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(142, '21-09-2021 01:42:35', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(143, '21-09-2021 01:42:36', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(144, '21-09-2021 01:42:37', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(145, '21-09-2021 01:42:37', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(146, '21-09-2021 01:42:37', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(147, '21-09-2021 01:42:40', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(148, '21-09-2021 01:42:40', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(149, '21-09-2021 01:42:41', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(150, '21-09-2021 01:42:42', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(151, '21-09-2021 01:42:43', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(152, '21-09-2021 01:42:44', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(153, '21-09-2021 01:42:44', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(154, '21-09-2021 01:42:46', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(155, '21-09-2021 01:42:47', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(156, '21-09-2021 01:42:59', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(157, '21-09-2021 01:43:00', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(158, '21-09-2021 01:43:01', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(159, '21-09-2021 01:43:01', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(160, '21-09-2021 01:43:02', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(161, '21-09-2021 01:43:02', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(162, '21-09-2021 01:43:03', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(163, '21-09-2021 01:43:03', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(164, '21-09-2021 01:43:03', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(165, '21-09-2021 01:43:05', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(166, '21-09-2021 01:43:06', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(167, '21-09-2021 01:43:06', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(168, '21-09-2021 01:43:07', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(169, '21-09-2021 01:43:07', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(170, '21-09-2021 01:43:08', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(171, '21-09-2021 01:43:08', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(172, '21-09-2021 01:43:08', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(173, '21-09-2021 01:43:37', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '426F7C331C8E95BC35B863EC9830F626', 'Bilmem', 'http://localhost:8080/accountActivity'),
(174, '21-09-2021 02:34:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(175, '21-09-2021 02:34:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/account'),
(176, '21-09-2021 02:34:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(177, '21-09-2021 02:35:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(178, '21-09-2021 02:35:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(179, '21-09-2021 02:35:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(180, '21-09-2021 02:35:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(181, '21-09-2021 02:35:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(182, '21-09-2021 02:36:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(183, '21-09-2021 02:36:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(184, '21-09-2021 02:36:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(185, '21-09-2021 02:39:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '32265707D8F89171585E337B10C5FB1A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(186, '21-09-2021 08:43:13', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(187, '21-09-2021 08:43:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(188, '21-09-2021 08:48:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(189, '21-09-2021 08:48:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(190, '21-09-2021 08:48:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(191, '21-09-2021 08:49:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(192, '21-09-2021 08:52:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(193, '21-09-2021 09:11:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(194, '21-09-2021 09:15:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(195, '21-09-2021 09:15:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(196, '21-09-2021 09:15:11', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(197, '21-09-2021 09:16:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(198, '21-09-2021 09:19:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '009C2B7FBF6537F3AF128A90AAEA84D6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(199, '21-09-2021 13:08:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DC6AA25AFB4926E5BEDE06EE9330DE36', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(200, '21-09-2021 13:08:37', 'deneme@gmail.com', NULL, '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_DOCTOR] ', 'CE4EEEA4B673EE7C641231729FF67401', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(201, '21-09-2021 17:05:23', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A29FC423BACD06902565994C03D49A9C', 'Bilmem', 'http://localhost:8080/accountActivity'),
(202, '21-09-2021 17:05:39', 'veli@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A29FC423BACD06902565994C03D49A9C', 'Bilmem', 'http://localhost:8080/accountActivity'),
(203, '21-09-2021 17:07:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(204, '21-09-2021 17:07:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(205, '21-09-2021 17:21:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(206, '21-09-2021 17:22:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(207, '21-09-2021 17:22:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(208, '21-09-2021 17:24:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(209, '21-09-2021 17:26:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(210, '21-09-2021 17:39:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(211, '21-09-2021 17:39:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(212, '21-09-2021 17:39:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(213, '21-09-2021 17:39:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(214, '21-09-2021 17:40:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(215, '21-09-2021 17:40:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(216, '21-09-2021 17:41:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(217, '21-09-2021 17:42:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(218, '21-09-2021 17:43:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(219, '21-09-2021 17:43:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(220, '21-09-2021 17:44:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(221, '21-09-2021 17:44:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(222, '21-09-2021 17:45:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(223, '21-09-2021 17:45:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(224, '21-09-2021 17:46:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(225, '21-09-2021 17:46:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(226, '21-09-2021 17:47:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(227, '21-09-2021 17:50:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '73883E8D420B03AD0BA5DC8D9F421317', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(228, '21-09-2021 17:50:57', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat ', '[ROLE_DOCTOR] ', '4919ACBA09CD09E28453BAC99507C5C0', 'Yılmaz', 'http://localhost:8080/accountActivity');
INSERT INTO `account_activities` (`id`, `date_info`, `email_info`, `image_file`, `ip_info`, `name_info`, `role_info`, `session_info`, `surname_info`, `url_info`) VALUES
(229, '21-09-2021 17:54:19', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat ', '[ROLE_DOCTOR] ', '4919ACBA09CD09E28453BAC99507C5C0', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(230, '21-09-2021 17:54:22', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat ', '[ROLE_DOCTOR] ', '4919ACBA09CD09E28453BAC99507C5C0', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(231, '21-09-2021 17:55:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FA00A80B2C2EAF598BF623B93F96C9E8', 'Bilmem', 'http://localhost:8080/accountActivity'),
(232, '21-09-2021 17:56:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FA00A80B2C2EAF598BF623B93F96C9E8', 'Bilmem', 'http://localhost:8080/accountActivity'),
(233, '21-09-2021 17:56:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(234, '21-09-2021 17:57:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '127.0.0.1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(235, '21-09-2021 17:57:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(236, '21-09-2021 17:58:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(237, '21-09-2021 17:59:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(238, '21-09-2021 18:03:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(239, '21-09-2021 18:03:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(240, '21-09-2021 18:04:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(241, '21-09-2021 18:04:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(242, '21-09-2021 18:04:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(243, '21-09-2021 18:04:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(244, '21-09-2021 18:09:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(245, '21-09-2021 18:10:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(246, '21-09-2021 18:10:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(247, '21-09-2021 18:10:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(248, '21-09-2021 18:10:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(249, '21-09-2021 18:10:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(250, '21-09-2021 18:10:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(251, '21-09-2021 18:10:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(252, '21-09-2021 18:10:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(253, '21-09-2021 18:11:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(254, '21-09-2021 18:11:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(255, '21-09-2021 18:11:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(256, '21-09-2021 18:12:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(257, '21-09-2021 18:12:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/account'),
(258, '21-09-2021 18:12:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(259, '21-09-2021 18:12:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(260, '21-09-2021 18:12:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/account'),
(261, '21-09-2021 18:12:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(262, '21-09-2021 18:12:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(263, '21-09-2021 18:12:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(264, '21-09-2021 18:12:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(265, '21-09-2021 18:12:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(266, '21-09-2021 18:12:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(267, '21-09-2021 18:12:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(268, '21-09-2021 18:12:58', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(269, '21-09-2021 18:12:58', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(270, '21-09-2021 18:12:59', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(271, '21-09-2021 18:12:59', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(272, '21-09-2021 18:12:59', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(273, '21-09-2021 18:13:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(274, '21-09-2021 18:13:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(275, '21-09-2021 18:13:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(276, '21-09-2021 18:13:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(277, '21-09-2021 18:13:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(278, '21-09-2021 18:13:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(279, '21-09-2021 18:13:11', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(280, '21-09-2021 18:13:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(281, '21-09-2021 18:13:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(282, '21-09-2021 18:13:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(283, '21-09-2021 18:13:13', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(284, '21-09-2021 18:13:13', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(285, '21-09-2021 18:13:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(286, '21-09-2021 18:13:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(287, '21-09-2021 18:13:17', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(288, '21-09-2021 18:13:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(289, '21-09-2021 18:13:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(290, '21-09-2021 18:13:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(291, '21-09-2021 18:13:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(292, '21-09-2021 18:13:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(293, '21-09-2021 18:13:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(294, '21-09-2021 18:13:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(295, '21-09-2021 18:13:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(296, '21-09-2021 18:14:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(297, '21-09-2021 18:21:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(298, '21-09-2021 18:23:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(299, '21-09-2021 18:25:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(300, '21-09-2021 18:27:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(301, '21-09-2021 18:28:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(302, '21-09-2021 18:28:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(303, '21-09-2021 18:32:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(304, '21-09-2021 18:32:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(305, '21-09-2021 18:34:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(306, '21-09-2021 18:34:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(307, '21-09-2021 18:40:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(308, '21-09-2021 18:46:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(309, '21-09-2021 18:46:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(310, '21-09-2021 18:46:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(311, '21-09-2021 18:46:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(312, '21-09-2021 18:46:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(313, '21-09-2021 18:46:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(314, '21-09-2021 18:46:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(315, '21-09-2021 18:46:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(316, '21-09-2021 18:46:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(317, '21-09-2021 18:46:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(318, '21-09-2021 18:46:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(319, '21-09-2021 19:01:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A9F460463F031BF029F22D4EF8DC0581', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(320, '21-09-2021 19:02:19', 'ali@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Ali', '[ROLE_SECRETARY] ', '2B375F60CB396AC01D0FAD6252CFEC0F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(321, '21-09-2021 19:02:27', 'ali@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Ali', '[ROLE_SECRETARY] ', '2B375F60CB396AC01D0FAD6252CFEC0F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(322, '21-09-2021 19:03:02', 'ali@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Ali', '[ROLE_SECRETARY] ', '2B375F60CB396AC01D0FAD6252CFEC0F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(323, '21-09-2021 19:03:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '07703EA737B6A6D6224919D19D23A402', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(324, '21-09-2021 19:04:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '07703EA737B6A6D6224919D19D23A402', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(325, '21-09-2021 19:04:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '07703EA737B6A6D6224919D19D23A402', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(326, '21-09-2021 19:04:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '07703EA737B6A6D6224919D19D23A402', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(327, '21-09-2021 19:04:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '07703EA737B6A6D6224919D19D23A402', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(328, '21-09-2021 19:04:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '07703EA737B6A6D6224919D19D23A402', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(329, '21-09-2021 19:23:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'FCC746166671C56C7BA9DD93AAB37A92', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(330, '21-09-2021 19:27:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC74E3EA4296ECA6ED9DFF29815E11F5', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(331, '21-09-2021 19:31:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '38B8B7141A1B71ED8335BEAF92369E72', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(332, '21-09-2021 19:32:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '7100B23E4195456A804BD64D965A5058', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(333, '21-09-2021 19:34:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '7100B23E4195456A804BD64D965A5058', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(334, '21-09-2021 19:34:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '249D48B61D1ED6B76CF0208239B41449', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(335, '21-09-2021 19:39:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '4F7E04D02FF6895C67B3BCA3A5220EEF', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(336, '21-09-2021 19:43:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '370C99C8A436FBC2627CFE0B377422E2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(337, '21-09-2021 19:45:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '28A675145EBC1483E00CD7B85FFBC7EA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(338, '21-09-2021 19:47:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '234D019CD5AFBFCD058A0D0F5338E740', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(339, '21-09-2021 19:57:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '234D019CD5AFBFCD058A0D0F5338E740', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(340, '21-09-2021 20:25:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '127.0.0.1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '782E8654F59E73212F6AC3BEB353E36A', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(341, '21-09-2021 20:26:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'BFADE5C85D05D9F73EF6C0F2CC9F8F45', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(342, '21-09-2021 20:27:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CD4247F79389FA20E8AFCB19A388CB3C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(343, '21-09-2021 20:32:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '39C018DCBB35BE6DC04B8702E1A02089', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(344, '21-09-2021 20:32:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '39C018DCBB35BE6DC04B8702E1A02089', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(345, '21-09-2021 20:33:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '3689D22DBAC98ECC85827D390BC495CD', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(346, '21-09-2021 20:56:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '127.0.0.1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'E99C8E56842A0B5BB764B90AC2154B34', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(347, '21-09-2021 20:56:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'E99C8E56842A0B5BB764B90AC2154B34', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(348, '21-09-2021 20:57:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'E99C8E56842A0B5BB764B90AC2154B34', 'ERUYAR', 'http://localhost:8080/account'),
(349, '21-09-2021 20:57:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'E99C8E56842A0B5BB764B90AC2154B34', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(350, '21-09-2021 21:09:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'E99C8E56842A0B5BB764B90AC2154B34', 'ERUYAR', 'http://localhost:8080/account'),
(351, '21-09-2021 21:09:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'E99C8E56842A0B5BB764B90AC2154B34', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(352, '21-09-2021 21:10:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'E99C8E56842A0B5BB764B90AC2154B34', 'ERUYAR', 'http://localhost:8080/account/changePass'),
(353, '21-09-2021 21:10:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A1B0B9174997FE559DA0A52964F24F9D', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(354, '21-09-2021 21:10:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A1B0B9174997FE559DA0A52964F24F9D', 'ERUYAR', 'http://localhost:8080/account'),
(355, '21-09-2021 21:10:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A1B0B9174997FE559DA0A52964F24F9D', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(356, '21-09-2021 21:10:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A1B0B9174997FE559DA0A52964F24F9D', 'ERUYAR', 'http://localhost:8080/account/changePass'),
(357, '21-09-2021 21:10:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(358, '21-09-2021 21:11:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/account'),
(359, '21-09-2021 21:11:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(360, '21-09-2021 21:11:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(361, '21-09-2021 21:11:17', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(362, '21-09-2021 21:11:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(363, '21-09-2021 21:11:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(364, '21-09-2021 21:11:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(365, '21-09-2021 21:11:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(366, '21-09-2021 21:11:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(367, '21-09-2021 21:12:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(368, '21-09-2021 21:12:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/account'),
(369, '21-09-2021 21:12:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(370, '21-09-2021 21:13:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/account'),
(371, '21-09-2021 21:13:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F5C8CD3E61C12C8D053F407FCB928839', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(372, '21-09-2021 21:13:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(373, '21-09-2021 21:13:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(374, '21-09-2021 21:13:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(375, '21-09-2021 21:29:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(376, '21-09-2021 21:29:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(377, '21-09-2021 21:32:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(378, '21-09-2021 21:32:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(379, '21-09-2021 21:34:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(380, '21-09-2021 21:34:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(381, '21-09-2021 21:34:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(382, '21-09-2021 21:34:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(383, '21-09-2021 21:34:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(384, '21-09-2021 21:34:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(385, '21-09-2021 21:34:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(386, '21-09-2021 21:35:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(387, '21-09-2021 21:35:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(388, '21-09-2021 21:35:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(389, '21-09-2021 21:35:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(390, '21-09-2021 21:37:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(391, '21-09-2021 21:37:11', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(392, '21-09-2021 21:37:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account/'),
(393, '21-09-2021 21:37:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(394, '21-09-2021 21:37:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account/'),
(395, '21-09-2021 21:37:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(396, '21-09-2021 21:37:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(397, '21-09-2021 21:37:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(398, '21-09-2021 21:37:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(399, '21-09-2021 21:38:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(400, '21-09-2021 21:38:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(401, '21-09-2021 21:38:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(402, '21-09-2021 21:39:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/account'),
(403, '21-09-2021 21:39:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(404, '21-09-2021 21:39:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(405, '21-09-2021 21:39:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(406, '21-09-2021 21:39:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(407, '21-09-2021 21:39:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(408, '21-09-2021 21:42:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(409, '21-09-2021 21:42:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(410, '21-09-2021 21:42:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(411, '21-09-2021 21:42:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(412, '21-09-2021 21:57:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(413, '21-09-2021 21:57:59', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(414, '21-09-2021 21:58:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(415, '21-09-2021 22:03:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(416, '21-09-2021 22:03:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(417, '21-09-2021 22:04:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(418, '21-09-2021 22:05:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(419, '21-09-2021 22:10:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(420, '21-09-2021 22:10:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(421, '21-09-2021 22:15:13', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(422, '21-09-2021 22:18:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9DE119B520C21F67BBAF12D0020243FA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(423, '21-09-2021 22:18:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(424, '21-09-2021 22:18:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(425, '21-09-2021 22:20:11', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(426, '21-09-2021 22:21:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(427, '21-09-2021 22:21:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(428, '21-09-2021 22:21:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(429, '21-09-2021 22:25:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(430, '21-09-2021 22:25:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(431, '21-09-2021 22:41:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(432, '21-09-2021 23:06:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(433, '21-09-2021 23:07:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(434, '21-09-2021 23:16:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(435, '21-09-2021 23:16:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(436, '21-09-2021 23:17:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(437, '21-09-2021 23:17:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(438, '21-09-2021 23:17:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(439, '21-09-2021 23:19:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(440, '21-09-2021 23:27:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(441, '21-09-2021 23:39:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(442, '21-09-2021 23:40:14', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(443, '21-09-2021 23:40:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity');
INSERT INTO `account_activities` (`id`, `date_info`, `email_info`, `image_file`, `ip_info`, `name_info`, `role_info`, `session_info`, `surname_info`, `url_info`) VALUES
(444, '21-09-2021 23:40:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(445, '21-09-2021 23:43:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(446, '21-09-2021 23:44:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(447, '21-09-2021 23:55:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(448, '21-09-2021 23:55:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(449, '21-09-2021 23:57:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(450, '22-09-2021 00:03:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(451, '22-09-2021 00:03:17', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(452, '22-09-2021 00:04:17', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(453, '22-09-2021 00:05:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(454, '22-09-2021 00:25:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(455, '22-09-2021 00:26:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(456, '22-09-2021 00:27:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(457, '22-09-2021 00:28:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(458, '22-09-2021 00:28:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(459, '22-09-2021 00:28:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(460, '22-09-2021 00:29:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(461, '22-09-2021 00:29:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(462, '22-09-2021 00:29:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(463, '22-09-2021 00:31:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(464, '22-09-2021 00:31:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(465, '22-09-2021 00:45:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(466, '22-09-2021 00:45:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(467, '22-09-2021 00:45:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(468, '22-09-2021 00:48:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(469, '22-09-2021 00:48:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(470, '22-09-2021 00:48:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'EC1593A2DCACC7F3FB4E333BC5D4FCD1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(471, '22-09-2021 01:36:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(472, '22-09-2021 01:37:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(473, '22-09-2021 01:40:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(474, '22-09-2021 01:42:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(475, '22-09-2021 01:45:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(476, '22-09-2021 01:46:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(477, '22-09-2021 01:59:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(478, '22-09-2021 02:00:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(479, '22-09-2021 02:01:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(480, '22-09-2021 02:03:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(481, '22-09-2021 02:03:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(482, '22-09-2021 02:11:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AF846342167996241C6E61A0E9B6B58C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(483, '22-09-2021 03:09:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '34DD3046E7B840A694D9858C370E865B', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(484, '22-09-2021 03:10:19', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(485, '22-09-2021 03:10:31', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/account'),
(486, '22-09-2021 03:10:31', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(487, '22-09-2021 03:10:58', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(488, '22-09-2021 03:11:38', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(489, '22-09-2021 03:11:42', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(490, '22-09-2021 03:11:45', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(491, '22-09-2021 03:12:01', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(492, '22-09-2021 03:13:45', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(493, '22-09-2021 03:15:03', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(494, '22-09-2021 03:15:05', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(495, '22-09-2021 03:15:09', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(496, '22-09-2021 03:15:50', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(497, '22-09-2021 03:15:52', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(498, '22-09-2021 03:15:55', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(499, '22-09-2021 03:15:56', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(500, '22-09-2021 03:15:57', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(501, '22-09-2021 03:15:57', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(502, '22-09-2021 03:15:58', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(503, '22-09-2021 03:17:00', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(504, '22-09-2021 03:17:09', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(505, '22-09-2021 03:17:12', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(506, '22-09-2021 03:17:13', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(507, '22-09-2021 03:17:14', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(508, '22-09-2021 03:17:16', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(509, '22-09-2021 03:17:18', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F8337BF9EC7FB8C49B3BF72B2A2C2291', 'KARACA', 'http://localhost:8080/accountActivity'),
(510, '22-09-2021 09:24:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(511, '22-09-2021 09:24:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(512, '22-09-2021 09:24:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(513, '22-09-2021 09:26:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(514, '22-09-2021 09:27:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(515, '22-09-2021 09:27:17', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(516, '22-09-2021 09:56:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(517, '22-09-2021 09:58:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(518, '22-09-2021 10:00:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(519, '22-09-2021 10:00:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(520, '22-09-2021 10:01:13', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(521, '22-09-2021 10:02:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'CA2B821C88DADD6174C5449B359A168C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(522, '22-09-2021 17:47:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(523, '22-09-2021 17:48:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(524, '22-09-2021 17:49:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(525, '22-09-2021 17:49:59', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(526, '22-09-2021 17:51:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(527, '22-09-2021 17:51:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(528, '22-09-2021 17:53:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(529, '22-09-2021 17:53:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(530, '22-09-2021 17:54:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(531, '22-09-2021 17:55:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(532, '22-09-2021 17:56:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(533, '22-09-2021 17:56:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(534, '22-09-2021 17:57:13', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(535, '22-09-2021 17:57:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(536, '22-09-2021 18:01:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(537, '22-09-2021 18:02:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(538, '22-09-2021 18:06:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(539, '22-09-2021 18:07:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(540, '22-09-2021 18:08:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(541, '22-09-2021 18:08:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(542, '22-09-2021 18:10:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(543, '22-09-2021 18:12:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(544, '22-09-2021 18:12:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(545, '22-09-2021 18:15:58', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(546, '22-09-2021 18:16:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(547, '22-09-2021 18:16:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(548, '22-09-2021 18:18:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(549, '22-09-2021 18:18:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(550, '22-09-2021 18:32:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(551, '22-09-2021 18:38:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(552, '22-09-2021 18:44:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(553, '22-09-2021 18:47:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(554, '22-09-2021 18:50:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(555, '22-09-2021 18:53:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(556, '22-09-2021 18:55:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(557, '22-09-2021 18:56:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(558, '22-09-2021 18:56:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(559, '22-09-2021 18:57:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(560, '22-09-2021 18:57:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(561, '22-09-2021 18:58:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(562, '22-09-2021 18:58:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(563, '22-09-2021 18:58:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(564, '22-09-2021 18:59:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(565, '22-09-2021 19:00:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(566, '22-09-2021 19:03:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(567, '22-09-2021 19:05:14', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(568, '22-09-2021 19:05:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(569, '22-09-2021 19:07:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(570, '22-09-2021 19:08:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(571, '22-09-2021 19:10:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(572, '22-09-2021 19:11:59', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(573, '22-09-2021 19:13:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(574, '22-09-2021 19:14:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(575, '22-09-2021 19:14:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(576, '22-09-2021 19:19:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(577, '22-09-2021 19:21:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(578, '22-09-2021 19:23:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(579, '22-09-2021 19:24:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(580, '22-09-2021 19:25:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(581, '22-09-2021 19:25:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(582, '22-09-2021 19:49:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(583, '22-09-2021 19:50:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(584, '22-09-2021 19:52:11', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(585, '22-09-2021 19:55:14', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(586, '22-09-2021 19:56:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(587, '22-09-2021 19:56:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(588, '22-09-2021 19:56:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(589, '22-09-2021 19:58:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(590, '22-09-2021 19:58:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(591, '22-09-2021 19:59:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(592, '22-09-2021 20:01:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(593, '22-09-2021 20:02:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(594, '22-09-2021 20:16:46', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(595, '22-09-2021 20:17:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(596, '22-09-2021 20:18:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(597, '22-09-2021 20:21:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(598, '22-09-2021 20:30:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(599, '22-09-2021 20:34:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(600, '22-09-2021 20:37:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(601, '22-09-2021 20:37:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(602, '22-09-2021 20:38:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(603, '22-09-2021 20:38:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(604, '22-09-2021 20:39:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(605, '22-09-2021 20:42:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(606, '22-09-2021 20:43:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(607, '22-09-2021 20:43:12', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(608, '22-09-2021 20:43:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(609, '22-09-2021 20:43:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(610, '22-09-2021 20:44:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(611, '22-09-2021 21:06:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(612, '22-09-2021 21:07:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(613, '22-09-2021 21:07:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(614, '22-09-2021 21:07:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(615, '22-09-2021 21:07:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(616, '22-09-2021 21:07:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(617, '22-09-2021 21:07:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(618, '22-09-2021 21:07:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/account'),
(619, '22-09-2021 21:07:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(620, '22-09-2021 21:07:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(621, '22-09-2021 21:07:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(622, '22-09-2021 21:16:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(623, '22-09-2021 21:17:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(624, '22-09-2021 21:17:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(625, '22-09-2021 21:18:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(626, '22-09-2021 21:18:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(627, '22-09-2021 21:18:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(628, '22-09-2021 21:18:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(629, '22-09-2021 21:18:59', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(630, '22-09-2021 21:19:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(631, '22-09-2021 21:19:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(632, '22-09-2021 21:19:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(633, '22-09-2021 21:19:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(634, '22-09-2021 21:19:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(635, '22-09-2021 21:20:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(636, '22-09-2021 21:20:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(637, '22-09-2021 21:22:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(638, '22-09-2021 21:22:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '53BF74D284308E69F411F34272FB6DC6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(639, '22-09-2021 22:06:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(640, '22-09-2021 22:06:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(641, '22-09-2021 22:06:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(642, '22-09-2021 22:06:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(643, '22-09-2021 22:06:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(644, '22-09-2021 22:06:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(645, '22-09-2021 22:07:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(646, '22-09-2021 22:15:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(647, '22-09-2021 22:18:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(648, '22-09-2021 22:22:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(649, '22-09-2021 22:23:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(650, '22-09-2021 22:26:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(651, '22-09-2021 22:31:59', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(652, '22-09-2021 22:32:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(653, '22-09-2021 22:32:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(654, '22-09-2021 22:33:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(655, '22-09-2021 22:43:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(656, '22-09-2021 22:43:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(657, '22-09-2021 22:44:13', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(658, '22-09-2021 22:50:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(659, '22-09-2021 22:50:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity');
INSERT INTO `account_activities` (`id`, `date_info`, `email_info`, `image_file`, `ip_info`, `name_info`, `role_info`, `session_info`, `surname_info`, `url_info`) VALUES
(660, '22-09-2021 22:52:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(661, '22-09-2021 22:54:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(662, '22-09-2021 22:56:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(663, '22-09-2021 22:57:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(664, '22-09-2021 22:57:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(665, '22-09-2021 22:57:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(666, '22-09-2021 23:09:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(667, '22-09-2021 23:09:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D862FEDBB73A7C6E8D2DEB74202B14C3', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(668, '23-09-2021 00:22:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A891C704A63DE89031CE3C2EEF4A22A6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(669, '23-09-2021 00:22:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A891C704A63DE89031CE3C2EEF4A22A6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(670, '23-09-2021 00:22:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A891C704A63DE89031CE3C2EEF4A22A6', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(671, '23-09-2021 01:24:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(672, '23-09-2021 01:24:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(673, '23-09-2021 01:24:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(674, '23-09-2021 01:30:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(675, '23-09-2021 01:30:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(676, '23-09-2021 01:30:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(677, '23-09-2021 01:30:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(678, '23-09-2021 01:30:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(679, '23-09-2021 01:31:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(680, '23-09-2021 01:31:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(681, '23-09-2021 01:31:14', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(682, '23-09-2021 01:31:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(683, '23-09-2021 01:31:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(684, '23-09-2021 01:31:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(685, '23-09-2021 01:32:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(686, '23-09-2021 01:32:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(687, '23-09-2021 01:32:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(688, '23-09-2021 01:32:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A03ED9B296A2D9A2A02C48848513A972', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(689, '23-09-2021 01:32:55', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(690, '23-09-2021 01:32:57', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(691, '23-09-2021 01:33:52', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(692, '23-09-2021 01:34:23', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(693, '23-09-2021 01:34:25', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(694, '23-09-2021 01:34:26', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(695, '23-09-2021 01:34:33', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(696, '23-09-2021 01:35:01', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(697, '23-09-2021 01:35:03', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(698, '23-09-2021 01:37:36', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(699, '23-09-2021 01:40:35', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(700, '23-09-2021 01:40:38', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(701, '23-09-2021 01:40:40', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(702, '23-09-2021 01:41:25', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(703, '23-09-2021 01:42:05', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(704, '23-09-2021 01:42:11', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(705, '23-09-2021 01:42:14', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(706, '23-09-2021 01:42:38', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(707, '23-09-2021 01:42:46', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(708, '23-09-2021 01:46:14', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(709, '23-09-2021 01:46:19', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(710, '23-09-2021 01:47:19', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(711, '23-09-2021 01:47:25', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(712, '23-09-2021 01:47:26', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(713, '23-09-2021 01:47:29', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(714, '23-09-2021 01:47:31', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(715, '23-09-2021 01:47:33', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(716, '23-09-2021 01:47:34', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(717, '23-09-2021 01:48:01', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(718, '23-09-2021 01:49:25', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(719, '23-09-2021 01:49:26', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(720, '23-09-2021 01:51:19', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(721, '23-09-2021 01:51:37', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(722, '23-09-2021 01:51:40', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(723, '23-09-2021 01:51:45', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(724, '23-09-2021 01:52:44', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(725, '23-09-2021 01:53:21', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(726, '23-09-2021 01:53:26', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(727, '23-09-2021 01:53:30', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(728, '23-09-2021 01:53:39', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/account'),
(729, '23-09-2021 01:53:39', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(730, '23-09-2021 01:53:51', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(731, '23-09-2021 01:53:58', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(732, '23-09-2021 01:53:58', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(733, '23-09-2021 01:53:59', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(734, '23-09-2021 01:53:59', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(735, '23-09-2021 01:54:00', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(736, '23-09-2021 01:54:00', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(737, '23-09-2021 01:54:01', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(738, '23-09-2021 01:54:02', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(739, '23-09-2021 01:54:11', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(740, '23-09-2021 01:54:22', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(741, '23-09-2021 01:56:04', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(742, '23-09-2021 01:56:15', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(743, '23-09-2021 01:56:31', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(744, '23-09-2021 02:07:34', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(745, '23-09-2021 02:07:36', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(746, '23-09-2021 02:09:47', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(747, '23-09-2021 02:09:52', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(748, '23-09-2021 02:25:28', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(749, '23-09-2021 02:25:33', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(750, '23-09-2021 02:30:58', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(751, '23-09-2021 02:31:02', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(752, '23-09-2021 02:31:27', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(753, '23-09-2021 02:31:31', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(754, '23-09-2021 02:32:58', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(755, '23-09-2021 02:33:01', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(756, '23-09-2021 02:35:12', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(757, '23-09-2021 02:35:18', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(758, '23-09-2021 02:37:03', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(759, '23-09-2021 02:37:09', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(760, '23-09-2021 02:37:35', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(761, '23-09-2021 02:37:38', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(762, '23-09-2021 02:38:56', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(763, '23-09-2021 02:39:00', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(764, '23-09-2021 02:40:30', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(765, '23-09-2021 02:40:32', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(766, '23-09-2021 02:41:21', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(767, '23-09-2021 02:41:24', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(768, '23-09-2021 02:41:39', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(769, '23-09-2021 02:41:41', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(770, '23-09-2021 02:42:38', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(771, '23-09-2021 02:42:41', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(772, '23-09-2021 02:43:48', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(773, '23-09-2021 02:44:08', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(774, '23-09-2021 02:44:10', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(775, '23-09-2021 02:44:30', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(776, '23-09-2021 02:44:32', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(777, '23-09-2021 02:47:02', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(778, '23-09-2021 02:47:04', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(779, '23-09-2021 02:47:49', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(780, '23-09-2021 02:47:51', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(781, '23-09-2021 02:48:32', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(782, '23-09-2021 02:48:35', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(783, '23-09-2021 02:49:28', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(784, '23-09-2021 02:49:31', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(785, '23-09-2021 02:50:25', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(786, '23-09-2021 02:50:27', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(787, '23-09-2021 02:50:32', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(788, '23-09-2021 02:50:34', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(789, '23-09-2021 02:51:50', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(790, '23-09-2021 02:51:52', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(791, '23-09-2021 02:52:39', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(792, '23-09-2021 02:52:41', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(793, '23-09-2021 02:52:43', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(794, '23-09-2021 02:53:13', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(795, '23-09-2021 02:53:15', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(796, '23-09-2021 02:53:18', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(797, '23-09-2021 02:53:20', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(798, '23-09-2021 02:53:27', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(799, '23-09-2021 02:53:29', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(800, '23-09-2021 02:57:23', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(801, '23-09-2021 02:57:25', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(802, '23-09-2021 03:01:22', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(803, '23-09-2021 03:01:24', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(804, '23-09-2021 03:04:57', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(805, '23-09-2021 03:05:00', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(806, '23-09-2021 03:05:24', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(807, '23-09-2021 03:05:27', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(808, '23-09-2021 03:05:32', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(809, '23-09-2021 03:05:34', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(810, '23-09-2021 03:06:17', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(811, '23-09-2021 03:06:19', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(812, '23-09-2021 03:08:07', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(813, '23-09-2021 03:08:10', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(814, '23-09-2021 03:09:43', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(815, '23-09-2021 03:09:45', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(816, '23-09-2021 03:10:18', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(817, '23-09-2021 03:10:20', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(818, '23-09-2021 03:11:08', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(819, '23-09-2021 03:11:10', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(820, '23-09-2021 03:13:15', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(821, '23-09-2021 03:13:17', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(822, '23-09-2021 03:13:34', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(823, '23-09-2021 03:13:36', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(824, '23-09-2021 03:13:56', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(825, '23-09-2021 03:13:59', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '22A8E9C40A4A05FCE007F679DD979C0D', 'KARACA', 'http://localhost:8080/accountActivity'),
(826, '23-09-2021 03:17:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(827, '23-09-2021 03:17:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(828, '23-09-2021 03:19:14', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(829, '23-09-2021 03:19:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(830, '23-09-2021 03:20:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(831, '23-09-2021 03:20:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(832, '23-09-2021 03:20:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(833, '23-09-2021 03:21:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(834, '23-09-2021 03:21:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(835, '23-09-2021 03:21:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '127.0.0.1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(836, '23-09-2021 03:22:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/account'),
(837, '23-09-2021 03:22:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(838, '23-09-2021 03:22:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(839, '23-09-2021 03:28:14', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(840, '23-09-2021 03:28:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(841, '23-09-2021 03:29:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(842, '23-09-2021 03:29:29', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(843, '23-09-2021 03:31:17', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(844, '23-09-2021 03:31:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(845, '23-09-2021 03:31:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '269A8F904EA429269B0EDF0555331173', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(846, '23-09-2021 09:56:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(847, '23-09-2021 09:56:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(848, '23-09-2021 09:56:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(849, '23-09-2021 09:56:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(850, '23-09-2021 10:04:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(851, '23-09-2021 10:04:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(852, '23-09-2021 10:04:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(853, '23-09-2021 10:04:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(854, '23-09-2021 10:05:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(855, '23-09-2021 10:05:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(856, '23-09-2021 10:06:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(857, '23-09-2021 10:06:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(858, '23-09-2021 10:06:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(859, '23-09-2021 10:06:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(860, '23-09-2021 10:07:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(861, '23-09-2021 10:07:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(862, '23-09-2021 10:08:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(863, '23-09-2021 10:08:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(864, '23-09-2021 10:11:14', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(865, '23-09-2021 10:11:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(866, '23-09-2021 10:12:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(867, '23-09-2021 10:12:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(868, '23-09-2021 10:12:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(869, '23-09-2021 10:12:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(870, '23-09-2021 10:13:14', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/account'),
(871, '23-09-2021 10:13:14', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(872, '23-09-2021 10:13:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(873, '23-09-2021 10:13:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(874, '23-09-2021 10:14:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(875, '23-09-2021 10:14:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(876, '23-09-2021 10:14:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(877, '23-09-2021 10:15:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(878, '23-09-2021 10:15:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(879, '23-09-2021 10:25:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(880, '23-09-2021 10:25:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(881, '23-09-2021 10:27:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(882, '23-09-2021 10:27:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(883, '23-09-2021 10:27:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(884, '23-09-2021 10:28:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(885, '23-09-2021 10:28:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(886, '23-09-2021 10:29:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(887, '23-09-2021 10:29:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity');
INSERT INTO `account_activities` (`id`, `date_info`, `email_info`, `image_file`, `ip_info`, `name_info`, `role_info`, `session_info`, `surname_info`, `url_info`) VALUES
(888, '23-09-2021 10:30:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(889, '23-09-2021 10:30:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(890, '23-09-2021 10:31:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(891, '23-09-2021 10:31:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(892, '23-09-2021 10:36:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(893, '23-09-2021 10:36:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(894, '23-09-2021 10:37:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(895, '23-09-2021 10:37:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(896, '23-09-2021 10:38:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(897, '23-09-2021 10:38:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(898, '23-09-2021 10:39:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(899, '23-09-2021 10:39:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(900, '23-09-2021 10:40:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(901, '23-09-2021 10:40:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(902, '23-09-2021 10:40:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(903, '23-09-2021 10:41:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(904, '23-09-2021 10:41:13', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(905, '23-09-2021 10:42:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(906, '23-09-2021 10:42:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(907, '23-09-2021 10:48:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(908, '23-09-2021 10:48:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(909, '23-09-2021 10:50:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(910, '23-09-2021 10:50:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '62618718FF6E67D57C1BC84ED455880C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(911, '23-09-2021 12:42:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(912, '23-09-2021 12:42:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(913, '23-09-2021 12:43:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(914, '23-09-2021 12:43:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(915, '23-09-2021 12:43:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(916, '23-09-2021 12:43:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(917, '23-09-2021 12:43:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(918, '23-09-2021 12:43:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(919, '23-09-2021 12:44:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(920, '23-09-2021 12:44:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'C5D4CF1D603B63E21BB9D539D5A5985E', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(921, '23-09-2021 12:45:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(922, '23-09-2021 12:45:22', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(923, '23-09-2021 12:45:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(924, '23-09-2021 12:46:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(925, '23-09-2021 12:46:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(926, '23-09-2021 12:47:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/account'),
(927, '23-09-2021 12:47:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(928, '23-09-2021 12:47:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(929, '23-09-2021 12:47:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(930, '23-09-2021 12:47:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(931, '23-09-2021 12:47:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(932, '23-09-2021 12:48:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(933, '23-09-2021 12:48:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(934, '23-09-2021 12:48:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(935, '23-09-2021 12:48:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(936, '23-09-2021 12:48:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(937, '23-09-2021 12:48:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(938, '23-09-2021 12:50:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(939, '23-09-2021 12:51:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(940, '23-09-2021 12:51:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(941, '23-09-2021 12:51:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(942, '23-09-2021 12:52:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(943, '23-09-2021 12:52:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(944, '23-09-2021 12:52:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(945, '23-09-2021 12:53:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(946, '23-09-2021 12:53:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(947, '23-09-2021 12:53:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(948, '23-09-2021 12:53:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(949, '23-09-2021 12:55:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(950, '23-09-2021 12:55:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(951, '23-09-2021 12:55:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(952, '23-09-2021 12:55:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(953, '23-09-2021 12:55:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(954, '23-09-2021 12:55:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(955, '23-09-2021 12:56:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(956, '23-09-2021 12:56:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(957, '23-09-2021 12:56:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(958, '23-09-2021 12:56:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(959, '23-09-2021 12:56:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(960, '23-09-2021 12:58:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(961, '23-09-2021 12:58:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '41464990441EA3F76BBE48377AE4A4EE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(962, '23-09-2021 13:05:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '3E4948CBDF5A66187FFA39F028332394', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(963, '23-09-2021 13:05:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '3E4948CBDF5A66187FFA39F028332394', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(964, '23-09-2021 13:05:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '3E4948CBDF5A66187FFA39F028332394', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(965, '23-09-2021 13:06:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(966, '23-09-2021 13:06:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(967, '23-09-2021 13:06:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(968, '23-09-2021 13:06:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(969, '23-09-2021 13:06:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(970, '23-09-2021 13:06:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(971, '23-09-2021 13:07:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(972, '23-09-2021 13:07:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(973, '23-09-2021 13:08:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(974, '23-09-2021 13:08:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '8FFACAA22E809732EFE6CDA74F5736F5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(975, '23-09-2021 17:05:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A0F2AC17CC77F066359AC3B7FD335157', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(976, '23-09-2021 17:05:02', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'A0F2AC17CC77F066359AC3B7FD335157', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(977, '23-09-2021 17:50:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1F7872B28282CC220144B32D02600172', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(978, '23-09-2021 17:50:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1F7872B28282CC220144B32D02600172', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(979, '23-09-2021 17:52:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1F7872B28282CC220144B32D02600172', 'ERUYAR', 'http://localhost:8080/account'),
(980, '23-09-2021 17:52:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1F7872B28282CC220144B32D02600172', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(981, '23-09-2021 17:52:30', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(982, '23-09-2021 17:52:32', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(983, '23-09-2021 17:57:09', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(984, '23-09-2021 17:57:11', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(985, '23-09-2021 17:57:41', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(986, '23-09-2021 17:57:43', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(987, '23-09-2021 18:05:55', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(988, '23-09-2021 18:05:57', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(989, '23-09-2021 18:09:42', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(990, '23-09-2021 18:09:44', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(991, '23-09-2021 18:11:23', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(992, '23-09-2021 18:11:26', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(993, '23-09-2021 18:11:55', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(994, '23-09-2021 18:11:57', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', '873B1FD353C5455A507AEE95B83176B6', 'KARACA', 'http://localhost:8080/accountActivity'),
(995, '23-09-2021 18:12:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(996, '23-09-2021 18:12:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(997, '23-09-2021 18:12:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(998, '23-09-2021 18:21:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(999, '23-09-2021 18:24:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1000, '23-09-2021 18:27:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1001, '23-09-2021 18:29:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1002, '23-09-2021 18:33:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1003, '23-09-2021 18:43:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1004, '23-09-2021 18:44:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1005, '23-09-2021 18:53:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1006, '23-09-2021 18:59:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1007, '23-09-2021 18:59:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1008, '23-09-2021 18:59:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1009, '23-09-2021 19:00:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1010, '23-09-2021 19:00:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1011, '23-09-2021 19:01:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1012, '23-09-2021 19:01:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1013, '23-09-2021 19:07:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1014, '23-09-2021 19:09:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1015, '23-09-2021 19:27:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1016, '23-09-2021 19:34:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'A56768CF2B35F75C3CED35388D3ED953', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1017, '23-09-2021 20:15:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'FC1552C2AD32D3FB3655A7D774909A5B', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1018, '23-09-2021 20:15:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'FC1552C2AD32D3FB3655A7D774909A5B', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1019, '23-09-2021 20:15:46', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1020, '23-09-2021 20:15:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1021, '23-09-2021 20:15:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1022, '23-09-2021 20:17:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1023, '23-09-2021 20:18:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1024, '23-09-2021 20:20:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1025, '23-09-2021 20:20:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1026, '23-09-2021 20:20:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1027, '23-09-2021 20:22:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1028, '23-09-2021 20:23:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1029, '23-09-2021 20:24:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1030, '23-09-2021 20:31:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1031, '23-09-2021 20:31:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1032, '23-09-2021 20:32:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1033, '23-09-2021 20:32:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1034, '23-09-2021 20:32:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1035, '23-09-2021 20:32:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1036, '23-09-2021 20:32:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1037, '23-09-2021 20:32:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1038, '23-09-2021 20:32:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1039, '23-09-2021 20:33:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1040, '23-09-2021 20:33:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1041, '23-09-2021 20:33:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1042, '23-09-2021 20:36:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/account'),
(1043, '23-09-2021 20:36:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1044, '23-09-2021 20:43:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1045, '23-09-2021 20:46:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1046, '23-09-2021 20:47:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1863385A809DAE75F4A39C0451168B06', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1047, '23-09-2021 20:47:11', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'DA0C54C3BAC58BF8C0EE2C0F6AA9B922', 'KARACA', 'http://localhost:8080/accountActivity'),
(1048, '23-09-2021 20:47:13', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'DA0C54C3BAC58BF8C0EE2C0F6AA9B922', 'KARACA', 'http://localhost:8080/accountActivity'),
(1049, '23-09-2021 20:47:15', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'DA0C54C3BAC58BF8C0EE2C0F6AA9B922', 'KARACA', 'http://localhost:8080/accountActivity'),
(1050, '23-09-2021 21:11:24', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'DA0C54C3BAC58BF8C0EE2C0F6AA9B922', 'KARACA', 'http://localhost:8080/accountActivity'),
(1051, '23-09-2021 21:11:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1052, '23-09-2021 21:11:35', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1053, '23-09-2021 21:11:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1054, '23-09-2021 21:17:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1055, '23-09-2021 21:17:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1056, '23-09-2021 21:28:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1057, '23-09-2021 21:28:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1058, '23-09-2021 21:28:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1059, '23-09-2021 21:28:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1060, '23-09-2021 21:29:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1061, '23-09-2021 21:29:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1062, '23-09-2021 21:30:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1063, '23-09-2021 21:32:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1064, '23-09-2021 21:33:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1065, '23-09-2021 21:33:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1066, '23-09-2021 21:33:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1067, '23-09-2021 21:33:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1068, '23-09-2021 21:37:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1069, '23-09-2021 21:37:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1070, '23-09-2021 21:37:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1071, '23-09-2021 21:37:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AE8752C1F9EDDA48B07B570AB4A4A329', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1072, '23-09-2021 22:52:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9647694987707ED51471FD843A775BE7', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1073, '23-09-2021 22:52:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9647694987707ED51471FD843A775BE7', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1074, '23-09-2021 22:52:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9647694987707ED51471FD843A775BE7', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1075, '23-09-2021 22:52:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '9647694987707ED51471FD843A775BE7', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1076, '23-09-2021 22:53:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1077, '23-09-2021 22:53:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1078, '23-09-2021 22:53:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1079, '23-09-2021 22:53:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1080, '23-09-2021 22:53:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1081, '23-09-2021 22:55:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1082, '23-09-2021 22:55:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1083, '23-09-2021 22:55:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1084, '23-09-2021 22:56:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1085, '23-09-2021 22:56:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1086, '23-09-2021 22:56:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1087, '23-09-2021 22:56:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1088, '23-09-2021 22:56:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1089, '23-09-2021 22:58:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1090, '23-09-2021 22:58:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1091, '23-09-2021 22:59:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1092, '23-09-2021 22:59:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1093, '23-09-2021 22:59:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1094, '23-09-2021 23:03:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1095, '23-09-2021 23:03:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1096, '23-09-2021 23:04:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1097, '23-09-2021 23:04:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1098, '23-09-2021 23:04:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1099, '23-09-2021 23:04:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1100, '23-09-2021 23:05:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1101, '23-09-2021 23:05:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1102, '23-09-2021 23:06:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1103, '23-09-2021 23:06:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1104, '23-09-2021 23:07:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1105, '23-09-2021 23:15:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1106, '23-09-2021 23:15:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1107, '23-09-2021 23:15:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1108, '23-09-2021 23:15:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1109, '23-09-2021 23:15:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1110, '23-09-2021 23:15:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1111, '23-09-2021 23:15:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1112, '23-09-2021 23:19:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1113, '23-09-2021 23:19:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1114, '23-09-2021 23:19:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1115, '23-09-2021 23:19:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1116, '23-09-2021 23:21:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1117, '23-09-2021 23:21:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1118, '23-09-2021 23:22:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1119, '23-09-2021 23:23:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1120, '23-09-2021 23:23:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1121, '23-09-2021 23:24:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity');
INSERT INTO `account_activities` (`id`, `date_info`, `email_info`, `image_file`, `ip_info`, `name_info`, `role_info`, `session_info`, `surname_info`, `url_info`) VALUES
(1122, '23-09-2021 23:24:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1123, '23-09-2021 23:25:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1124, '23-09-2021 23:30:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1125, '23-09-2021 23:31:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1126, '23-09-2021 23:31:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1127, '23-09-2021 23:31:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1128, '23-09-2021 23:32:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1129, '23-09-2021 23:32:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1130, '23-09-2021 23:32:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1131, '23-09-2021 23:32:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1132, '23-09-2021 23:32:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1133, '23-09-2021 23:32:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1134, '23-09-2021 23:33:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1135, '23-09-2021 23:33:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1136, '23-09-2021 23:34:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1137, '23-09-2021 23:34:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1138, '23-09-2021 23:34:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1139, '23-09-2021 23:35:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1140, '23-09-2021 23:35:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1141, '23-09-2021 23:37:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1142, '23-09-2021 23:37:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1143, '23-09-2021 23:37:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1144, '23-09-2021 23:37:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1145, '23-09-2021 23:59:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1146, '23-09-2021 23:59:22', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1147, '24-09-2021 00:00:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1148, '24-09-2021 00:00:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1149, '24-09-2021 00:00:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1150, '24-09-2021 00:00:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1151, '24-09-2021 00:01:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1152, '24-09-2021 00:01:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1153, '24-09-2021 00:01:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1154, '24-09-2021 00:01:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1155, '24-09-2021 00:02:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1156, '24-09-2021 00:03:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1157, '24-09-2021 00:03:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1158, '24-09-2021 00:03:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1159, '24-09-2021 00:03:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1160, '24-09-2021 00:04:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1161, '24-09-2021 00:04:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1162, '24-09-2021 00:34:15', 'veli@mail.com', 'defaultProfileImage.png', '127.0.0.1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1163, '24-09-2021 00:34:17', 'veli@mail.com', 'defaultProfileImage.png', '127.0.0.1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1164, '24-09-2021 00:53:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1165, '24-09-2021 00:53:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1166, '24-09-2021 00:55:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1167, '24-09-2021 00:56:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1168, '24-09-2021 01:02:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1169, '24-09-2021 01:03:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1170, '24-09-2021 01:04:46', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1171, '24-09-2021 01:05:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1172, '24-09-2021 01:05:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1173, '24-09-2021 01:05:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1174, '24-09-2021 01:12:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1175, '24-09-2021 01:13:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1176, '24-09-2021 01:13:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1177, '24-09-2021 01:14:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1178, '24-09-2021 01:14:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1179, '24-09-2021 01:14:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1180, '24-09-2021 01:15:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1181, '24-09-2021 01:17:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1182, '24-09-2021 01:17:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1183, '24-09-2021 01:17:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1184, '24-09-2021 01:17:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1185, '24-09-2021 01:18:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1186, '24-09-2021 01:29:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1187, '24-09-2021 01:29:22', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1188, '24-09-2021 01:37:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1189, '24-09-2021 01:39:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1190, '24-09-2021 01:42:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1191, '24-09-2021 01:45:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1192, '24-09-2021 01:45:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1193, '24-09-2021 01:45:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1194, '24-09-2021 01:47:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1195, '24-09-2021 01:47:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1196, '24-09-2021 01:49:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1197, '24-09-2021 01:49:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1198, '24-09-2021 01:50:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1199, '24-09-2021 01:50:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1200, '24-09-2021 01:53:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1201, '24-09-2021 01:53:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1202, '24-09-2021 01:53:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1203, '24-09-2021 01:53:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1204, '24-09-2021 01:53:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1205, '24-09-2021 01:53:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1206, '24-09-2021 02:01:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1207, '24-09-2021 02:01:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1208, '24-09-2021 02:01:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1209, '24-09-2021 02:02:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1210, '24-09-2021 02:03:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1211, '24-09-2021 02:03:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1212, '24-09-2021 02:03:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1213, '24-09-2021 02:09:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1214, '24-09-2021 02:09:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1215, '24-09-2021 02:09:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1216, '24-09-2021 02:12:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1217, '24-09-2021 02:13:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1218, '24-09-2021 02:14:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1219, '24-09-2021 02:16:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1220, '24-09-2021 02:16:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1221, '24-09-2021 02:16:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1222, '24-09-2021 02:18:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1223, '24-09-2021 02:18:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '1B3DCCFCE7B4B3115377C8A281044ABE', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1224, '24-09-2021 02:34:13', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1225, '24-09-2021 02:34:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1226, '24-09-2021 02:34:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1227, '24-09-2021 02:36:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1228, '24-09-2021 02:36:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1229, '24-09-2021 02:38:04', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1230, '24-09-2021 02:38:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1231, '24-09-2021 02:40:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1232, '24-09-2021 02:41:11', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1233, '24-09-2021 02:41:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1234, '24-09-2021 02:42:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1235, '24-09-2021 02:46:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1236, '24-09-2021 02:47:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1237, '24-09-2021 02:47:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'DA646CD90C3F87404A690965710F3CCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1238, '24-09-2021 02:48:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1239, '24-09-2021 02:48:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1240, '24-09-2021 02:48:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1241, '24-09-2021 02:49:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1242, '24-09-2021 02:51:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1243, '24-09-2021 02:52:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1244, '24-09-2021 02:53:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1245, '24-09-2021 02:53:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1246, '24-09-2021 02:54:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1247, '24-09-2021 02:54:22', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1248, '24-09-2021 02:54:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1249, '24-09-2021 02:58:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1250, '24-09-2021 02:59:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1251, '24-09-2021 02:59:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1252, '24-09-2021 02:59:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1253, '24-09-2021 03:00:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1254, '24-09-2021 03:02:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1255, '24-09-2021 03:02:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1256, '24-09-2021 03:04:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1257, '24-09-2021 03:06:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1258, '24-09-2021 03:07:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1259, '24-09-2021 03:07:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1260, '24-09-2021 03:07:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1261, '24-09-2021 03:08:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1262, '24-09-2021 03:08:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1263, '24-09-2021 03:08:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1264, '24-09-2021 03:14:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1265, '24-09-2021 03:20:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1266, '24-09-2021 03:20:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1267, '24-09-2021 03:20:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1268, '24-09-2021 03:20:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1269, '24-09-2021 03:20:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1270, '24-09-2021 03:20:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1271, '24-09-2021 03:21:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1272, '24-09-2021 03:22:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1273, '24-09-2021 03:27:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1274, '24-09-2021 03:30:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'AFD6633E8B2684ADD18A3A7BEF5DA71F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1275, '24-09-2021 04:08:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1276, '24-09-2021 04:08:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1277, '24-09-2021 04:08:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1278, '24-09-2021 04:09:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1279, '24-09-2021 04:09:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1280, '24-09-2021 04:09:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1281, '24-09-2021 04:11:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1282, '24-09-2021 04:11:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1283, '24-09-2021 04:11:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1284, '24-09-2021 04:11:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1285, '24-09-2021 04:12:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1286, '24-09-2021 04:13:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1287, '24-09-2021 04:13:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1288, '24-09-2021 04:13:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1289, '24-09-2021 04:15:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1290, '24-09-2021 04:16:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1291, '24-09-2021 04:16:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1292, '24-09-2021 04:16:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1293, '24-09-2021 04:16:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1294, '24-09-2021 04:31:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1295, '24-09-2021 04:31:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1296, '24-09-2021 04:31:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1297, '24-09-2021 04:32:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1298, '24-09-2021 04:32:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1299, '24-09-2021 04:32:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1300, '24-09-2021 04:32:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/account'),
(1301, '24-09-2021 04:32:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1302, '24-09-2021 04:33:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1303, '24-09-2021 04:33:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1304, '24-09-2021 04:33:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/account'),
(1305, '24-09-2021 04:33:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1306, '24-09-2021 04:33:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1307, '24-09-2021 04:33:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1308, '24-09-2021 04:33:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1309, '24-09-2021 04:33:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1310, '24-09-2021 04:36:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1311, '24-09-2021 04:36:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1312, '24-09-2021 04:38:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1313, '24-09-2021 04:39:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1314, '24-09-2021 04:39:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1315, '24-09-2021 04:39:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1316, '24-09-2021 04:39:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1317, '24-09-2021 04:41:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1318, '24-09-2021 04:43:23', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1319, '24-09-2021 04:44:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1320, '24-09-2021 04:45:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1321, '24-09-2021 04:45:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1322, '24-09-2021 04:48:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1323, '24-09-2021 04:48:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1324, '24-09-2021 04:48:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1325, '24-09-2021 04:48:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1326, '24-09-2021 04:50:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1327, '24-09-2021 04:53:35', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1328, '24-09-2021 04:54:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1329, '24-09-2021 04:54:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1330, '24-09-2021 04:57:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1331, '24-09-2021 04:58:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1332, '24-09-2021 04:59:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1333, '24-09-2021 04:59:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1334, '24-09-2021 05:01:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1335, '24-09-2021 05:01:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1336, '24-09-2021 05:02:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1337, '24-09-2021 05:04:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1338, '24-09-2021 05:11:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1339, '24-09-2021 05:12:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1340, '24-09-2021 05:12:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1341, '24-09-2021 05:13:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1342, '24-09-2021 05:15:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1343, '24-09-2021 05:16:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1344, '24-09-2021 05:17:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1345, '24-09-2021 05:20:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1346, '24-09-2021 05:22:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1347, '24-09-2021 05:22:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1348, '24-09-2021 05:23:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1349, '24-09-2021 05:23:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1350, '24-09-2021 05:23:46', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1351, '24-09-2021 05:24:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1352, '24-09-2021 05:28:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1353, '24-09-2021 05:29:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1354, '24-09-2021 05:30:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1355, '24-09-2021 05:31:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1356, '24-09-2021 05:33:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1357, '24-09-2021 05:34:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1358, '24-09-2021 05:35:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity');
INSERT INTO `account_activities` (`id`, `date_info`, `email_info`, `image_file`, `ip_info`, `name_info`, `role_info`, `session_info`, `surname_info`, `url_info`) VALUES
(1359, '24-09-2021 05:45:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1360, '24-09-2021 05:50:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1361, '24-09-2021 05:50:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1362, '24-09-2021 05:50:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1363, '24-09-2021 05:51:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1364, '24-09-2021 05:51:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1365, '24-09-2021 05:52:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1366, '24-09-2021 05:52:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1367, '24-09-2021 05:53:23', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1368, '24-09-2021 05:54:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1369, '24-09-2021 05:55:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1370, '24-09-2021 05:55:22', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1371, '24-09-2021 05:55:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1372, '24-09-2021 05:55:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1373, '24-09-2021 05:55:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1374, '24-09-2021 05:56:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1375, '24-09-2021 05:56:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1376, '24-09-2021 05:56:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1377, '24-09-2021 05:58:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1378, '24-09-2021 05:58:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1379, '24-09-2021 05:58:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1380, '24-09-2021 05:58:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1381, '24-09-2021 05:59:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1382, '24-09-2021 06:00:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1383, '24-09-2021 06:01:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1384, '24-09-2021 06:01:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1385, '24-09-2021 06:01:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1386, '24-09-2021 06:01:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1387, '24-09-2021 06:02:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1388, '24-09-2021 06:02:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1389, '24-09-2021 06:02:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1390, '24-09-2021 06:02:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1391, '24-09-2021 06:02:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/account'),
(1392, '24-09-2021 06:02:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1393, '24-09-2021 06:02:46', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1394, '24-09-2021 06:02:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1395, '24-09-2021 06:02:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1396, '24-09-2021 06:02:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'B22CAB0BF50AD84375D53C3647323467', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1397, '24-09-2021 06:03:56', 'berat@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Berat', '[ROLE_SECRETARY] ', '424B7EC34C6098478E304AB9EA6901DF', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(1398, '24-09-2021 06:03:58', 'berat@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Berat', '[ROLE_SECRETARY] ', '424B7EC34C6098478E304AB9EA6901DF', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(1399, '24-09-2021 06:04:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '7F0778C9B274CDCB729EAC0E2789916C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1400, '24-09-2021 06:04:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '7F0778C9B274CDCB729EAC0E2789916C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1401, '24-09-2021 06:04:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '7F0778C9B274CDCB729EAC0E2789916C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1402, '24-09-2021 06:04:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '7F0778C9B274CDCB729EAC0E2789916C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1403, '24-09-2021 06:05:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '7F0778C9B274CDCB729EAC0E2789916C', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1404, '24-09-2021 09:46:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '9792922E8E8CDC1D30DBEE53041F3F9F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1405, '24-09-2021 09:46:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '9792922E8E8CDC1D30DBEE53041F3F9F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1406, '24-09-2021 10:02:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '9792922E8E8CDC1D30DBEE53041F3F9F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1407, '24-09-2021 10:02:22', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '9792922E8E8CDC1D30DBEE53041F3F9F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1408, '24-09-2021 10:09:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '9792922E8E8CDC1D30DBEE53041F3F9F', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1409, '24-09-2021 11:02:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '859283A9DC5F269EDDAA17D531F890DB', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1410, '24-09-2021 11:02:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '859283A9DC5F269EDDAA17D531F890DB', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1411, '24-09-2021 11:02:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '859283A9DC5F269EDDAA17D531F890DB', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1412, '24-09-2021 11:02:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '859283A9DC5F269EDDAA17D531F890DB', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1413, '24-09-2021 11:02:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '85988241721FFDE7EE68E5A3F4127599', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1414, '24-09-2021 11:02:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '85988241721FFDE7EE68E5A3F4127599', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1415, '24-09-2021 11:02:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '85988241721FFDE7EE68E5A3F4127599', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1416, '24-09-2021 11:17:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '85988241721FFDE7EE68E5A3F4127599', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1417, '24-09-2021 11:19:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '85988241721FFDE7EE68E5A3F4127599', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1418, '24-09-2021 11:35:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '85988241721FFDE7EE68E5A3F4127599', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1419, '24-09-2021 12:03:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1420, '24-09-2021 12:03:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1421, '24-09-2021 12:03:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/account'),
(1422, '24-09-2021 12:03:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1423, '24-09-2021 12:03:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/account'),
(1424, '24-09-2021 12:03:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1425, '24-09-2021 12:22:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/account'),
(1426, '24-09-2021 12:22:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1427, '24-09-2021 12:22:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1428, '24-09-2021 12:22:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1429, '24-09-2021 12:22:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1430, '24-09-2021 12:22:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '836F58C9322791FD8BD121899C0E1BF5', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1431, '24-09-2021 13:13:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1432, '24-09-2021 13:13:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1433, '24-09-2021 13:15:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1434, '24-09-2021 13:15:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1435, '24-09-2021 13:33:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1436, '24-09-2021 13:33:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1437, '24-09-2021 13:33:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1438, '24-09-2021 13:34:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1439, '24-09-2021 13:35:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1440, '24-09-2021 13:35:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1441, '24-09-2021 13:35:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1442, '24-09-2021 13:35:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1443, '24-09-2021 13:36:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1444, '24-09-2021 13:36:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1445, '24-09-2021 13:36:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1446, '24-09-2021 13:36:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1447, '24-09-2021 13:36:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1448, '24-09-2021 13:36:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1449, '24-09-2021 13:36:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1450, '24-09-2021 13:36:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1451, '24-09-2021 13:36:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1452, '24-09-2021 13:36:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1453, '24-09-2021 13:37:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1454, '24-09-2021 13:37:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1455, '24-09-2021 13:37:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1456, '24-09-2021 13:38:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1457, '24-09-2021 13:41:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1458, '24-09-2021 13:41:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1459, '24-09-2021 13:45:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1460, '24-09-2021 13:45:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1461, '24-09-2021 13:45:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '33A2A86C60E30F3382EBFB0BBDCB1DED', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1462, '24-09-2021 14:24:47', 'hakan@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Hakan', '[ROLE_SECRETARY] ', '59FAEE85A03F99E895A2B148C3F3AEA6', 'Özer', 'http://localhost:8080/accountActivity'),
(1463, '24-09-2021 14:24:49', 'hakan@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Hakan', '[ROLE_SECRETARY] ', '59FAEE85A03F99E895A2B148C3F3AEA6', 'Özer', 'http://localhost:8080/accountActivity'),
(1464, '24-09-2021 14:25:15', 'hakan@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Hakan', '[ROLE_SECRETARY] ', '59FAEE85A03F99E895A2B148C3F3AEA6', 'Özer', 'http://localhost:8080/accountActivity'),
(1465, '24-09-2021 14:25:17', 'hakan@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Hakan', '[ROLE_SECRETARY] ', '59FAEE85A03F99E895A2B148C3F3AEA6', 'Özer', 'http://localhost:8080/accountActivity'),
(1466, '24-09-2021 14:25:42', 'hakan@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Hakan', '[ROLE_SECRETARY] ', '59FAEE85A03F99E895A2B148C3F3AEA6', 'Özer', 'http://localhost:8080/account'),
(1467, '24-09-2021 14:25:42', 'hakan@mail.com', NULL, '0:0:0:0:0:0:0:1', 'Hakan', '[ROLE_SECRETARY] ', '59FAEE85A03F99E895A2B148C3F3AEA6', 'Özer', 'http://localhost:8080/accountActivity'),
(1468, '24-09-2021 14:25:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AE874A4BFA98C90881C9CF0AD26EF3DC', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1469, '24-09-2021 14:25:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AE874A4BFA98C90881C9CF0AD26EF3DC', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1470, '24-09-2021 14:27:30', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AE874A4BFA98C90881C9CF0AD26EF3DC', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1471, '24-09-2021 14:27:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AE874A4BFA98C90881C9CF0AD26EF3DC', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1472, '24-09-2021 14:27:37', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AE874A4BFA98C90881C9CF0AD26EF3DC', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1473, '24-09-2021 14:27:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1474, '24-09-2021 14:27:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1475, '24-09-2021 14:27:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1476, '24-09-2021 14:28:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1477, '24-09-2021 14:28:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1478, '24-09-2021 14:28:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1479, '24-09-2021 14:30:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1480, '24-09-2021 14:31:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1481, '24-09-2021 14:32:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1482, '24-09-2021 14:32:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1483, '24-09-2021 14:33:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1484, '24-09-2021 14:33:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1485, '24-09-2021 14:33:35', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1486, '24-09-2021 14:34:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1487, '24-09-2021 14:34:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1488, '24-09-2021 14:35:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1489, '24-09-2021 14:36:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1490, '24-09-2021 14:37:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1491, '24-09-2021 14:37:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1492, '24-09-2021 14:37:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1493, '24-09-2021 14:37:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1494, '24-09-2021 14:39:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1495, '24-09-2021 14:39:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1496, '24-09-2021 14:39:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1497, '24-09-2021 14:39:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1498, '24-09-2021 14:40:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1499, '24-09-2021 14:40:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1500, '24-09-2021 14:40:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1501, '24-09-2021 14:41:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1502, '24-09-2021 14:41:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1503, '24-09-2021 14:41:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1504, '24-09-2021 14:41:23', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1505, '24-09-2021 14:41:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1506, '24-09-2021 14:41:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1507, '24-09-2021 14:41:35', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1508, '24-09-2021 14:42:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1509, '24-09-2021 14:43:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1510, '24-09-2021 14:43:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1511, '24-09-2021 14:43:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1512, '24-09-2021 14:44:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1513, '24-09-2021 14:44:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1514, '24-09-2021 14:46:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1515, '24-09-2021 14:46:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1516, '24-09-2021 14:46:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1517, '24-09-2021 14:46:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1518, '24-09-2021 14:46:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1519, '24-09-2021 14:47:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1520, '24-09-2021 14:47:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1521, '24-09-2021 14:47:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1522, '24-09-2021 14:48:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1523, '24-09-2021 14:48:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1524, '24-09-2021 14:48:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1525, '24-09-2021 14:49:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1526, '24-09-2021 14:49:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/account'),
(1527, '24-09-2021 14:49:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1528, '24-09-2021 14:49:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/account'),
(1529, '24-09-2021 14:49:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1530, '24-09-2021 14:50:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1531, '24-09-2021 14:51:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2AC351BE6F13551F60CE38CDE89DC052', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1532, '24-09-2021 14:52:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '082BA76A08A86751A1D7A1039C0D0878', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1533, '24-09-2021 14:52:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '082BA76A08A86751A1D7A1039C0D0878', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1534, '24-09-2021 14:52:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '082BA76A08A86751A1D7A1039C0D0878', 'ERUYAR', 'http://localhost:8080/account'),
(1535, '24-09-2021 14:52:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '082BA76A08A86751A1D7A1039C0D0878', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1536, '24-09-2021 14:52:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '082BA76A08A86751A1D7A1039C0D0878', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1537, '24-09-2021 14:52:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '082BA76A08A86751A1D7A1039C0D0878', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1538, '24-09-2021 14:53:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '082BA76A08A86751A1D7A1039C0D0878', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1539, '24-09-2021 14:53:40', 'deneme@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'deneme', '[ROLE_ADMIN] ', 'ED91DECBC0C194F0B6C620E027E76287', 'deneme', 'http://localhost:8080/accountActivity'),
(1540, '24-09-2021 14:53:43', 'deneme@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'deneme', '[ROLE_ADMIN] ', 'ED91DECBC0C194F0B6C620E027E76287', 'deneme', 'http://localhost:8080/accountActivity'),
(1541, '24-09-2021 14:55:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'F1BBFD076C0C426EA5F447BAE6D2B289', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1542, '24-09-2021 14:55:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'F1BBFD076C0C426EA5F447BAE6D2B289', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1543, '24-09-2021 14:55:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'F1BBFD076C0C426EA5F447BAE6D2B289', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1544, '24-09-2021 14:57:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'F1BBFD076C0C426EA5F447BAE6D2B289', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1545, '24-09-2021 14:58:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'F1BBFD076C0C426EA5F447BAE6D2B289', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1546, '24-09-2021 14:58:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'F1BBFD076C0C426EA5F447BAE6D2B289', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1547, '24-09-2021 14:58:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '3DE305CCDCD6DC0468BB8012AC3B0708', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1548, '24-09-2021 14:58:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '3DE305CCDCD6DC0468BB8012AC3B0708', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1549, '24-09-2021 14:58:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '3DE305CCDCD6DC0468BB8012AC3B0708', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1550, '24-09-2021 14:59:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FF0DEF561D0AB02DADBBB04976B02E38', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1551, '24-09-2021 14:59:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FF0DEF561D0AB02DADBBB04976B02E38', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1552, '24-09-2021 14:59:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FF0DEF561D0AB02DADBBB04976B02E38', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1553, '24-09-2021 15:01:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '10F03D11035E5C85C9837E02D8D7FCEE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1554, '24-09-2021 15:01:11', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '10F03D11035E5C85C9837E02D8D7FCEE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1555, '24-09-2021 15:01:11', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '10F03D11035E5C85C9837E02D8D7FCEE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1556, '24-09-2021 20:15:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1557, '24-09-2021 20:15:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1558, '24-09-2021 20:15:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1559, '24-09-2021 20:15:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1560, '24-09-2021 20:16:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1561, '24-09-2021 20:16:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1562, '24-09-2021 20:16:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1563, '24-09-2021 20:17:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1564, '24-09-2021 20:17:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1565, '24-09-2021 20:18:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1566, '24-09-2021 20:18:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1567, '24-09-2021 20:18:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1568, '24-09-2021 20:19:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1569, '24-09-2021 20:19:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1570, '24-09-2021 20:20:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1571, '24-09-2021 20:20:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1572, '24-09-2021 20:20:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1573, '24-09-2021 20:20:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1574, '24-09-2021 20:20:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1575, '24-09-2021 20:21:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1576, '24-09-2021 20:21:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/account'),
(1577, '24-09-2021 20:21:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1578, '24-09-2021 20:21:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1579, '24-09-2021 20:22:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1580, '24-09-2021 20:22:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '2F56018910886FC061B47EB0D35C4783', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1581, '24-09-2021 20:22:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D0F63A96DD460EFCD4900410781FD599', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1582, '24-09-2021 20:22:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D0F63A96DD460EFCD4900410781FD599', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1583, '24-09-2021 20:22:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D0F63A96DD460EFCD4900410781FD599', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1584, '24-09-2021 20:22:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'D0F63A96DD460EFCD4900410781FD599', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1585, '25-09-2021 21:17:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '068A8214B744B0DF6A44855F995C9512', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1586, '25-09-2021 21:17:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '068A8214B744B0DF6A44855F995C9512', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1587, '25-09-2021 21:17:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '068A8214B744B0DF6A44855F995C9512', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1588, '25-09-2021 21:17:24', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '068A8214B744B0DF6A44855F995C9512', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1589, '25-09-2021 21:23:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '068A8214B744B0DF6A44855F995C9512', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1590, '25-09-2021 21:23:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '068A8214B744B0DF6A44855F995C9512', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1591, '25-09-2021 21:23:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1592, '25-09-2021 21:23:35', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1593, '25-09-2021 21:23:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1594, '25-09-2021 21:23:46', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity');
INSERT INTO `account_activities` (`id`, `date_info`, `email_info`, `image_file`, `ip_info`, `name_info`, `role_info`, `session_info`, `surname_info`, `url_info`) VALUES
(1595, '25-09-2021 21:23:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1596, '25-09-2021 21:24:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1597, '25-09-2021 21:24:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1598, '25-09-2021 21:24:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1599, '25-09-2021 21:24:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1600, '25-09-2021 21:24:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1601, '25-09-2021 21:25:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1602, '25-09-2021 21:25:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1603, '25-09-2021 21:25:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '3FFACC69782F7EDC21D02F2FBC61B894', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1604, '25-09-2021 21:26:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1605, '25-09-2021 21:26:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1606, '25-09-2021 21:27:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1607, '25-09-2021 21:27:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1608, '25-09-2021 21:27:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1609, '25-09-2021 21:27:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1610, '25-09-2021 21:27:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1611, '25-09-2021 21:27:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1612, '25-09-2021 21:27:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1613, '25-09-2021 21:27:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1614, '25-09-2021 21:27:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1615, '25-09-2021 21:27:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1616, '25-09-2021 21:27:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1617, '25-09-2021 21:27:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1618, '25-09-2021 21:28:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1619, '25-09-2021 21:28:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1620, '25-09-2021 21:29:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1621, '25-09-2021 21:29:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1622, '25-09-2021 21:29:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1623, '25-09-2021 21:29:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1624, '25-09-2021 21:29:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1625, '25-09-2021 21:30:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1626, '25-09-2021 21:30:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1627, '25-09-2021 21:30:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1628, '25-09-2021 21:30:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1629, '25-09-2021 21:30:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1630, '25-09-2021 21:30:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1631, '25-09-2021 21:30:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1632, '25-09-2021 21:31:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1633, '25-09-2021 21:31:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1634, '25-09-2021 21:31:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1635, '25-09-2021 21:31:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1636, '25-09-2021 21:33:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1637, '25-09-2021 21:33:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1638, '25-09-2021 21:35:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1639, '25-09-2021 21:35:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1640, '25-09-2021 21:35:35', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1641, '25-09-2021 21:35:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1642, '25-09-2021 21:35:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1643, '25-09-2021 21:37:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1644, '25-09-2021 21:37:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1645, '25-09-2021 21:38:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1646, '25-09-2021 21:38:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1647, '25-09-2021 21:38:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1648, '25-09-2021 21:38:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1649, '25-09-2021 21:38:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1650, '25-09-2021 21:38:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1651, '25-09-2021 21:38:46', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1652, '25-09-2021 21:38:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1653, '25-09-2021 21:39:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1654, '25-09-2021 21:39:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1655, '25-09-2021 21:40:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1656, '25-09-2021 21:40:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1657, '25-09-2021 21:40:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1658, '25-09-2021 21:40:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1659, '25-09-2021 21:41:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1660, '25-09-2021 21:41:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1661, '25-09-2021 21:41:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1662, '25-09-2021 21:41:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1663, '25-09-2021 21:42:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1664, '25-09-2021 21:42:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1665, '25-09-2021 21:42:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1666, '25-09-2021 21:42:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1667, '25-09-2021 21:43:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1668, '25-09-2021 21:43:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1669, '25-09-2021 21:43:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1670, '25-09-2021 21:43:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1671, '25-09-2021 21:43:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1672, '25-09-2021 21:43:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1673, '25-09-2021 21:43:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1674, '25-09-2021 21:43:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1675, '25-09-2021 21:43:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1676, '25-09-2021 21:43:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1677, '25-09-2021 21:43:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'FDD39F33D4056F29C50F27017C3A2634', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1678, '25-09-2021 21:43:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '27B6B1AC6125A38C8249461E430CEDCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1679, '25-09-2021 21:44:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '27B6B1AC6125A38C8249461E430CEDCE', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1680, '25-09-2021 21:44:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '449259A130C7A23BF62540EA26DADDBB', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1681, '25-09-2021 21:44:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '449259A130C7A23BF62540EA26DADDBB', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1682, '25-09-2021 21:44:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1683, '25-09-2021 21:44:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1684, '25-09-2021 21:46:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1685, '25-09-2021 21:46:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1686, '25-09-2021 21:46:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1687, '25-09-2021 21:46:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1688, '25-09-2021 21:46:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1689, '25-09-2021 21:46:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1690, '25-09-2021 21:46:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1691, '25-09-2021 21:47:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1692, '25-09-2021 21:47:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1693, '25-09-2021 21:47:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1694, '25-09-2021 21:47:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1695, '25-09-2021 21:47:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1696, '25-09-2021 21:47:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1697, '25-09-2021 21:50:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1698, '25-09-2021 21:50:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1699, '25-09-2021 21:50:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1700, '25-09-2021 21:51:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1701, '25-09-2021 21:51:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1702, '25-09-2021 21:52:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1703, '25-09-2021 21:52:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1704, '25-09-2021 21:55:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1705, '25-09-2021 21:55:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1706, '25-09-2021 21:56:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1707, '25-09-2021 21:56:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1708, '25-09-2021 21:56:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1709, '25-09-2021 21:56:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1710, '25-09-2021 21:56:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1711, '25-09-2021 21:57:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1712, '25-09-2021 21:57:14', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1713, '25-09-2021 21:57:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1714, '25-09-2021 21:57:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '73A0533B790777AF169F5485F36921E3', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1715, '25-09-2021 21:58:15', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '760C5B2AD1F647F3A00A2A6222EB0F59', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1716, '25-09-2021 21:58:17', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '760C5B2AD1F647F3A00A2A6222EB0F59', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1717, '25-09-2021 21:58:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1718, '25-09-2021 21:58:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1719, '25-09-2021 21:59:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1720, '25-09-2021 21:59:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1721, '25-09-2021 21:59:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1722, '25-09-2021 22:04:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1723, '25-09-2021 22:04:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1724, '25-09-2021 22:04:23', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1725, '25-09-2021 22:05:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1726, '25-09-2021 22:05:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1727, '25-09-2021 22:05:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1728, '25-09-2021 22:05:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1729, '25-09-2021 22:06:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1730, '25-09-2021 22:06:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1731, '25-09-2021 22:07:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1732, '25-09-2021 22:09:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1733, '25-09-2021 22:10:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1734, '25-09-2021 22:11:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1735, '25-09-2021 22:11:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1736, '25-09-2021 22:12:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1737, '25-09-2021 22:12:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1738, '25-09-2021 22:12:46', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1739, '25-09-2021 22:12:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1740, '25-09-2021 22:15:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1741, '25-09-2021 22:15:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1742, '25-09-2021 22:15:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1743, '25-09-2021 22:17:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1744, '25-09-2021 22:17:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1745, '25-09-2021 22:17:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1746, '25-09-2021 22:17:35', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1747, '25-09-2021 22:18:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1748, '25-09-2021 22:18:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1749, '25-09-2021 22:47:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1750, '25-09-2021 22:47:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1751, '25-09-2021 22:47:35', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1752, '25-09-2021 22:47:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1753, '25-09-2021 22:47:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1754, '25-09-2021 22:47:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1755, '25-09-2021 22:47:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1756, '25-09-2021 22:47:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1757, '25-09-2021 22:48:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1758, '25-09-2021 22:48:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1759, '25-09-2021 22:49:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1760, '25-09-2021 22:49:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1761, '25-09-2021 22:50:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1762, '25-09-2021 22:50:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1763, '25-09-2021 22:50:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1764, '25-09-2021 22:50:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1765, '25-09-2021 22:50:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1766, '25-09-2021 22:50:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1767, '25-09-2021 22:51:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1768, '25-09-2021 22:51:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1769, '25-09-2021 22:51:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1770, '25-09-2021 22:51:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1771, '25-09-2021 22:51:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1772, '25-09-2021 22:51:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1773, '25-09-2021 22:53:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1774, '25-09-2021 22:53:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1775, '25-09-2021 22:53:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1776, '25-09-2021 22:53:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1777, '25-09-2021 22:53:46', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1778, '25-09-2021 22:53:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1779, '25-09-2021 22:53:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1780, '25-09-2021 22:53:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1781, '25-09-2021 22:53:49', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1782, '25-09-2021 22:53:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1783, '25-09-2021 22:53:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1784, '25-09-2021 22:54:04', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1785, '25-09-2021 22:54:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1786, '25-09-2021 22:54:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1787, '25-09-2021 22:54:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1788, '25-09-2021 22:54:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1789, '25-09-2021 22:54:54', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1790, '25-09-2021 22:54:56', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1791, '25-09-2021 22:54:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1792, '25-09-2021 22:55:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1793, '25-09-2021 22:55:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1794, '25-09-2021 22:55:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1795, '25-09-2021 22:56:16', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1796, '25-09-2021 22:56:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1797, '25-09-2021 22:56:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1798, '25-09-2021 22:56:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1799, '25-09-2021 22:56:23', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1800, '25-09-2021 22:56:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1801, '25-09-2021 22:56:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1802, '25-09-2021 22:56:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1803, '25-09-2021 22:56:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1804, '25-09-2021 22:56:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1805, '25-09-2021 22:57:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1806, '25-09-2021 22:57:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1807, '25-09-2021 22:57:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1808, '25-09-2021 22:57:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1809, '25-09-2021 22:57:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1810, '25-09-2021 22:57:08', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1811, '25-09-2021 22:57:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1812, '25-09-2021 22:57:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1813, '25-09-2021 22:57:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1814, '25-09-2021 22:57:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1815, '25-09-2021 23:00:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1816, '25-09-2021 23:00:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1817, '25-09-2021 23:00:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1818, '25-09-2021 23:00:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1819, '25-09-2021 23:00:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1820, '25-09-2021 23:00:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1821, '25-09-2021 23:00:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1822, '25-09-2021 23:04:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1823, '25-09-2021 23:04:09', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1824, '25-09-2021 23:04:11', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1825, '25-09-2021 23:05:17', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1826, '25-09-2021 23:05:19', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1827, '25-09-2021 23:06:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1828, '25-09-2021 23:06:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1829, '25-09-2021 23:06:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1830, '25-09-2021 23:06:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1831, '25-09-2021 23:06:53', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1832, '25-09-2021 23:06:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity');
INSERT INTO `account_activities` (`id`, `date_info`, `email_info`, `image_file`, `ip_info`, `name_info`, `role_info`, `session_info`, `surname_info`, `url_info`) VALUES
(1833, '25-09-2021 23:08:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1834, '25-09-2021 23:08:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1835, '25-09-2021 23:08:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1836, '25-09-2021 23:08:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '7814BD13829A82A0FB8504D323F7D946', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1837, '25-09-2021 23:09:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '7F25662BEF47AC00D91319D47FDA49B5', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1838, '25-09-2021 23:09:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '7F25662BEF47AC00D91319D47FDA49B5', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1839, '25-09-2021 23:09:36', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat', '[ROLE_DOCTOR] ', '9B5F8DD4DD2A02E23C3399FFBFD213DE', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(1840, '25-09-2021 23:09:38', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat', '[ROLE_DOCTOR] ', '9B5F8DD4DD2A02E23C3399FFBFD213DE', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(1841, '25-09-2021 23:10:15', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat', '[ROLE_DOCTOR] ', '9B5F8DD4DD2A02E23C3399FFBFD213DE', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(1842, '25-09-2021 23:10:17', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat', '[ROLE_DOCTOR] ', '9B5F8DD4DD2A02E23C3399FFBFD213DE', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(1843, '25-09-2021 23:10:28', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat', '[ROLE_DOCTOR] ', '9B5F8DD4DD2A02E23C3399FFBFD213DE', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(1844, '25-09-2021 23:10:29', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat', '[ROLE_DOCTOR] ', '9B5F8DD4DD2A02E23C3399FFBFD213DE', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(1845, '25-09-2021 23:10:31', 'berat@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Berat', '[ROLE_DOCTOR] ', '9B5F8DD4DD2A02E23C3399FFBFD213DE', 'Yılmaz', 'http://localhost:8080/accountActivity'),
(1846, '25-09-2021 23:10:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '88AA5DA972F525728C1CB3E24B56E5F2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1847, '25-09-2021 23:10:48', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '36051347A69555F43666657D58CD5AC9', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1848, '25-09-2021 23:10:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '36051347A69555F43666657D58CD5AC9', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1849, '25-09-2021 23:11:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '36051347A69555F43666657D58CD5AC9', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1850, '25-09-2021 23:11:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '36051347A69555F43666657D58CD5AC9', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1851, '25-09-2021 23:12:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '36051347A69555F43666657D58CD5AC9', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1852, '25-09-2021 23:12:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '36051347A69555F43666657D58CD5AC9', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1853, '25-09-2021 23:12:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '36051347A69555F43666657D58CD5AC9', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1854, '25-09-2021 23:12:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '36051347A69555F43666657D58CD5AC9', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1855, '25-09-2021 23:30:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '36051347A69555F43666657D58CD5AC9', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1856, '25-09-2021 23:30:10', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'C185AD7FC79707F10E36D62AFBCD3D7E', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1857, '25-09-2021 23:30:17', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1858, '25-09-2021 23:30:19', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1859, '25-09-2021 23:30:22', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1860, '25-09-2021 23:30:51', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1861, '25-09-2021 23:35:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1862, '25-09-2021 23:36:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1863, '25-09-2021 23:36:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1864, '25-09-2021 23:36:57', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1865, '25-09-2021 23:36:59', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1866, '25-09-2021 23:39:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1867, '25-09-2021 23:40:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1868, '25-09-2021 23:41:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1869, '25-09-2021 23:43:55', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1870, '25-09-2021 23:44:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1871, '25-09-2021 23:44:11', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1872, '25-09-2021 23:45:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1873, '25-09-2021 23:49:20', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1874, '25-09-2021 23:49:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1875, '25-09-2021 23:50:07', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1876, '25-09-2021 23:50:43', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1877, '26-09-2021 00:03:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1878, '26-09-2021 00:04:17', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1879, '26-09-2021 00:06:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1880, '26-09-2021 00:11:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'AAD60495BC44E0DBC7B6949E807DE018', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1881, '26-09-2021 01:21:42', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1882, '26-09-2021 01:21:44', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1883, '26-09-2021 01:21:48', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1884, '26-09-2021 01:23:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1885, '26-09-2021 01:23:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1886, '26-09-2021 01:23:45', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1887, '26-09-2021 01:24:05', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1888, '26-09-2021 01:24:09', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1889, '26-09-2021 01:25:47', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1890, '26-09-2021 01:25:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1891, '26-09-2021 01:25:53', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1892, '26-09-2021 01:25:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1893, '26-09-2021 01:25:58', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1894, '26-09-2021 01:26:00', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1895, '26-09-2021 01:26:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1896, '26-09-2021 01:26:18', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1897, '26-09-2021 01:28:16', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1898, '26-09-2021 01:28:32', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1899, '26-09-2021 01:28:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1900, '26-09-2021 01:28:49', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1901, '26-09-2021 01:32:06', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1902, '26-09-2021 01:32:34', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1903, '26-09-2021 01:32:36', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1904, '26-09-2021 01:32:39', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1905, '26-09-2021 01:32:41', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F75668381ADCE1E46A3F21AD68448CC1', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1906, '26-09-2021 02:20:31', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '114DD5F25F6BD75357CF7A5F548E2339', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1907, '26-09-2021 02:20:33', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '114DD5F25F6BD75357CF7A5F548E2339', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1908, '26-09-2021 02:20:43', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1909, '26-09-2021 02:20:45', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1910, '26-09-2021 02:20:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1911, '26-09-2021 02:24:21', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1912, '26-09-2021 02:37:03', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1913, '26-09-2021 02:38:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1914, '26-09-2021 02:40:58', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1915, '26-09-2021 02:45:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1916, '26-09-2021 02:49:44', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1917, '26-09-2021 02:51:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1918, '26-09-2021 02:56:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1919, '26-09-2021 02:59:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1920, '26-09-2021 02:59:52', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1921, '26-09-2021 03:02:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1922, '26-09-2021 03:03:00', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1923, '26-09-2021 03:03:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1924, '26-09-2021 03:03:31', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1925, '26-09-2021 03:03:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1926, '26-09-2021 03:03:39', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1927, '26-09-2021 03:03:40', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1928, '26-09-2021 03:04:23', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1929, '26-09-2021 03:04:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1930, '26-09-2021 03:05:02', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1931, '26-09-2021 03:05:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1932, '26-09-2021 03:05:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1933, '26-09-2021 03:05:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '4A629BF8C2E809FF1C2BB87E96C3AB13', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1934, '26-09-2021 03:14:20', 'veli@mail.com', 'defaultProfileImage.png', '127.0.0.1', 'Veli', '[ROLE_SECRETARY] ', 'B59BC53E5F2AC1DF7DAE1841C99DD24C', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1935, '26-09-2021 03:14:22', 'veli@mail.com', 'defaultProfileImage.png', '127.0.0.1', 'Veli', '[ROLE_SECRETARY] ', 'B59BC53E5F2AC1DF7DAE1841C99DD24C', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1936, '26-09-2021 12:13:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CE10575732E0926662E557066FA62D79', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1937, '26-09-2021 12:13:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CE10575732E0926662E557066FA62D79', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1938, '26-09-2021 12:13:25', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CE10575732E0926662E557066FA62D79', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1939, '26-09-2021 12:15:51', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CE10575732E0926662E557066FA62D79', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1940, '26-09-2021 12:16:59', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CE10575732E0926662E557066FA62D79', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1941, '26-09-2021 12:17:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CE10575732E0926662E557066FA62D79', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1942, '26-09-2021 12:18:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F7E1AFA965F6196751460E5DB8B04025', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1943, '26-09-2021 12:18:27', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F7E1AFA965F6196751460E5DB8B04025', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1944, '26-09-2021 12:18:35', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', 'F7E1AFA965F6196751460E5DB8B04025', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1945, '26-09-2021 12:19:56', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F7346E23DFC200675914A7CADF65AD34', 'KARACA', 'http://localhost:8080/accountActivity'),
(1946, '26-09-2021 12:19:58', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F7346E23DFC200675914A7CADF65AD34', 'KARACA', 'http://localhost:8080/accountActivity'),
(1947, '26-09-2021 12:20:00', 'slymn@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Süleyman', '[ROLE_ADMIN] ', 'F7346E23DFC200675914A7CADF65AD34', 'KARACA', 'http://localhost:8080/accountActivity'),
(1948, '26-09-2021 12:22:05', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '30DB07E8BB1B6A908A15F49B25FBC0AB', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1949, '26-09-2021 12:22:07', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', '30DB07E8BB1B6A908A15F49B25FBC0AB', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1950, '26-09-2021 21:27:58', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '344478067D978ED2C15BC138E9D158DA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1951, '26-09-2021 21:28:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '344478067D978ED2C15BC138E9D158DA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1952, '26-09-2021 21:28:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '344478067D978ED2C15BC138E9D158DA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1953, '26-09-2021 21:28:40', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '344478067D978ED2C15BC138E9D158DA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1954, '26-09-2021 21:29:01', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '344478067D978ED2C15BC138E9D158DA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1955, '26-09-2021 21:29:03', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '344478067D978ED2C15BC138E9D158DA', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1956, '26-09-2021 21:29:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1957, '26-09-2021 21:29:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1958, '26-09-2021 21:29:26', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1959, '26-09-2021 21:30:27', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1960, '26-09-2021 21:30:30', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1961, '26-09-2021 21:30:32', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1962, '26-09-2021 21:30:33', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1963, '26-09-2021 21:30:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1964, '26-09-2021 21:30:34', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1965, '26-09-2021 21:30:35', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1966, '26-09-2021 21:30:37', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1967, '26-09-2021 21:30:47', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1968, '26-09-2021 21:31:06', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1969, '26-09-2021 21:31:41', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1970, '26-09-2021 21:32:01', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1971, '26-09-2021 21:32:18', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1972, '26-09-2021 21:32:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1973, '26-09-2021 21:32:29', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1974, '26-09-2021 21:32:36', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1975, '26-09-2021 21:33:12', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1976, '26-09-2021 21:33:28', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1977, '26-09-2021 21:33:42', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1978, '26-09-2021 21:33:55', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1979, '26-09-2021 21:33:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1980, '26-09-2021 21:34:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1981, '26-09-2021 21:34:15', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1982, '26-09-2021 21:34:20', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1983, '26-09-2021 21:34:24', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1984, '26-09-2021 21:34:38', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1985, '26-09-2021 21:34:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/account'),
(1986, '26-09-2021 21:34:50', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1987, '26-09-2021 21:34:57', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1988, '26-09-2021 21:35:13', 'veli@mail.com', 'defaultProfileImage.png', '0:0:0:0:0:0:0:1', 'Veli', '[ROLE_SECRETARY] ', 'CBF2A66DDFD7CBC190A8434870F0C542', 'Bilmem', 'http://localhost:8080/accountActivity'),
(1989, '26-09-2021 21:35:21', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1990, '26-09-2021 21:35:23', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1991, '26-09-2021 21:35:25', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1992, '26-09-2021 21:35:38', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1993, '26-09-2021 21:36:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1994, '26-09-2021 21:36:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1995, '26-09-2021 21:36:50', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1996, '26-09-2021 21:36:52', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1997, '26-09-2021 21:37:54', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1998, '26-09-2021 21:37:56', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(1999, '26-09-2021 21:37:58', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(2000, '26-09-2021 21:38:08', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(2001, '26-09-2021 21:38:10', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(2002, '26-09-2021 21:40:26', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity'),
(2003, '26-09-2021 21:40:28', 'eruyar123@gmail.com', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', '0:0:0:0:0:0:0:1', 'EYÜP EYMEN', '[ROLE_ADMIN] ', '1E6D40AEF63B94DDDCC78EC337DE8CF2', 'ERUYAR', 'http://localhost:8080/accountActivity');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `agenda`
--

CREATE TABLE `agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_date` varchar(255) NOT NULL,
  `agenda_note` varchar(1000) NOT NULL,
  `agenda_title` varchar(250) NOT NULL,
  `save_date` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `agenda`
--

INSERT INTO `agenda` (`agenda_id`, `agenda_date`, `agenda_note`, `agenda_title`, `save_date`, `uid`) VALUES
(1, '24-09-2021', 'Toptancıdan eksik malzemeler alınacak.', 'Malzeme Tedariği', '22-09-2021', 1),
(2, '2021-09-25', 'Muayanehane temizlenecek. (Güncel)', 'Muayane Temizliği', '23-09-2021', 2),
(3, '30-09-2021', 'Randevular alınan izinlere göre düzenlenecek.', 'Randevuların Düzenlenmesi ', '23-09-2021', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `buying`
--

CREATE TABLE `buying` (
  `buy_ıd` int(11) NOT NULL,
  `buy_amount` varchar(5) NOT NULL,
  `buy_date` varchar(255) DEFAULT NULL,
  `buy_note` varchar(255) DEFAULT NULL,
  `buy_receipt_no` bigint(20) NOT NULL,
  `buy_unit` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier_product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `buying`
--

INSERT INTO `buying` (`buy_ıd`, `buy_amount`, `buy_date`, `buy_note`, `buy_receipt_no`, `buy_unit`, `supplier_id`, `supplier_product_id`) VALUES
(1, '1', '24-09-2021', '1 adet masa alındı.', 435151241, '2', 2, 10),
(2, '5', '24-09-2021', '', 442022792, '2', 2, 4),
(3, '10', '24-09-2021', '', 442074331, '2', 2, 1),
(4, '2', '24-09-2021', 'Satış - Detay', 449750359, '2', 2, 5),
(5, '10', '24-09-2021', 'satış notu', 483566115, '2', 2, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `buying_payment`
--

CREATE TABLE `buying_payment` (
  `bu_id` int(11) NOT NULL,
  `remain_debt` int(11) DEFAULT NULL,
  `total_debt` int(11) DEFAULT NULL,
  `buying_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `buying_payment`
--

INSERT INTO `buying_payment` (`bu_id`, `remain_debt`, `total_debt`, `buying_id`) VALUES
(1, 0, 500, 1),
(2, 0, 50, 2),
(3, 0, 70, 3),
(4, 0, 120, 4),
(5, 0, 70, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calendar_info`
--

CREATE TABLE `calendar_info` (
  `cid` int(11) NOT NULL,
  `cbg_color` varchar(255) DEFAULT NULL,
  `cborder_color` varchar(255) DEFAULT NULL,
  `ccolor` varchar(255) DEFAULT NULL,
  `cdrag_bg_color` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `calendar_info`
--

INSERT INTO `calendar_info` (`cid`, `cbg_color`, `cborder_color`, `ccolor`, `cdrag_bg_color`, `cname`) VALUES
(1, '#28c76f', '#28c76f', '#ffffff', '#28c76f', 'Ön Muayene'),
(2, '#ea5455', '#ea5455', '#ffffff', '#ea5455', 'Ameliyat'),
(3, '#00cfe8', '#00cfe8', '#ffffff', '#00cfe8', 'Laboratuvar İşlemleri'),
(4, '#ff9f43', '#ff9f43', '#ffffff', '#ff9f43', 'Aşı Randevusu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cities`
--

CREATE TABLE `cities` (
  `sehir_id` int(11) NOT NULL,
  `sehir_key` int(11) DEFAULT NULL,
  `sehir_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `cities`
--

INSERT INTO `cities` (`sehir_id`, `sehir_key`, `sehir_title`) VALUES
(1, 34, 'İSTANBUL'),
(2, 6, 'ANKARA'),
(3, 35, 'İZMİR'),
(4, 16, 'BURSA'),
(5, 1, 'ADANA'),
(6, 2, 'ADIYAMAN'),
(7, 3, 'AFYONKARAHİSAR'),
(8, 4, 'AĞRI'),
(9, 68, 'AKSARAY'),
(10, 5, 'AMASYA'),
(11, 7, 'ANTALYA'),
(12, 75, 'ARDAHAN'),
(13, 8, 'ARTVİN'),
(14, 9, 'AYDIN'),
(15, 10, 'BALIKESİR'),
(16, 74, 'BARTIN'),
(17, 72, 'BATMAN'),
(18, 69, 'BAYBURT'),
(19, 11, 'BİLECİK'),
(20, 12, 'BİNGÖL'),
(21, 13, 'BİTLİS'),
(22, 14, 'BOLU'),
(23, 15, 'BURDUR'),
(24, 17, 'ÇANAKKALE'),
(25, 18, 'ÇANKIRI'),
(26, 19, 'ÇORUM'),
(27, 20, 'DENİZLİ'),
(28, 21, 'DİYARBAKIR'),
(29, 41, 'KOCAELİ'),
(30, 42, 'KONYA'),
(31, 43, 'KÜTAHYA'),
(32, 44, 'MALATYA'),
(33, 45, 'MANİSA'),
(34, 47, 'MARDİN'),
(35, 33, 'MERSİN'),
(36, 48, 'MUĞLA'),
(37, 49, 'MUŞ'),
(38, 50, 'NEVŞEHİR'),
(39, 51, 'NİĞDE'),
(40, 52, 'ORDU'),
(41, 80, 'OSMANİYE'),
(42, 53, 'RİZE'),
(43, 54, 'SAKARYA'),
(44, 55, 'SAMSUN'),
(45, 56, 'SİİRT'),
(46, 57, 'SİNOP'),
(47, 73, 'ŞIRNAK'),
(48, 58, 'SİVAS'),
(49, 59, 'TEKİRDAĞ'),
(50, 60, 'TOKAT'),
(51, 61, 'TRABZON'),
(52, 62, 'TUNCELİ'),
(53, 63, 'ŞANLIURFA'),
(54, 64, 'UŞAK'),
(55, 65, 'VAN'),
(56, 77, 'YALOVA'),
(57, 66, 'YOZGAT'),
(58, 67, 'ZONGULDAK'),
(59, 81, 'DÜZCE'),
(60, 22, 'EDİRNE'),
(61, 23, 'ELAZIĞ'),
(62, 24, 'ERZİNCAN'),
(63, 25, 'ERZURUM'),
(64, 26, 'ESKİŞEHİR'),
(65, 27, 'GAZİANTEP'),
(66, 28, 'GİRESUN'),
(67, 29, 'GÜMÜŞHANE'),
(68, 30, 'HAKKARİ'),
(69, 31, 'HATAY'),
(70, 76, 'IĞDIR'),
(71, 32, 'ISPARTA'),
(72, 46, 'KAHRAMANMARAŞ'),
(73, 78, 'KARABÜK'),
(74, 70, 'KARAMAN'),
(75, 36, 'KARS'),
(76, 37, 'KASTAMONU'),
(77, 38, 'KAYSERİ'),
(78, 79, 'KİLİS'),
(79, 71, 'KIRIKKALE'),
(80, 39, 'KIRKLARELİ'),
(81, 40, 'KIRŞEHİR');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `cu_id` int(11) NOT NULL,
  `cu_address` varchar(255) DEFAULT NULL,
  `cu_city` int(255) DEFAULT NULL,
  `cu_email` varchar(255) DEFAULT NULL,
  `cu_name` varchar(255) DEFAULT NULL,
  `cu_note` varchar(255) DEFAULT NULL,
  `cu_phone` varchar(255) DEFAULT NULL,
  `cu_phone2` varchar(255) DEFAULT NULL,
  `cu_surname` varchar(255) DEFAULT NULL,
  `cu_tax` varchar(255) DEFAULT NULL,
  `cu_tax_office` varchar(255) DEFAULT NULL,
  `cu_town` varchar(255) DEFAULT NULL,
  `cu_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`cu_id`, `cu_address`, `cu_city`, `cu_email`, `cu_name`, `cu_note`, `cu_phone`, `cu_phone2`, `cu_surname`, `cu_tax`, `cu_tax_office`, `cu_town`, `cu_type`) VALUES
(1, 'GOP Bulvarı', 60, 'eymen@mail.com', 'Eymen', 'Eymen adlı müşteri sms istiyor. ', '05548398073', '', 'ERUYAR', '14768322250', 'Tokat', 'Levent', 'Bireysel'),
(3, 'Sancaktepe/Merkez', 34, 'ali@mail.com', 'Ali ', 'Mesaj bildirimi istenmiyor.', '05556897431', '', 'Bilmem', '78965411164', 'İstanbul', 'Sancaktepe', 'Bireysel'),
(4, 'Alaçatı/Merkez', 35, 'veli@mail.com', 'Veli', 'Veli adlı müşteri e-mail ile bildirim istiyor', '05553215745', '', 'Bilmem', '45698631645', 'İzmir', 'Alaçatı', 'Bireysel'),
(5, 'Sivas -  Adres', 58, 'slymn@mail.com', 'Süleyman', 'Süleyman -Not', '05441236479', '', 'Karaca', '456313789', 'Sivas', 'Merkez', 'Bireysel'),
(7, 'Sivas/Merkez', 58, 'mehmet@mail.com', 'Mehmet', 'Mehmet-not', '05569871465', '', 'Yıldız', '1234569878', 'Sivas', 'Merkez', 'Bireysel'),
(8, 'Kadıköy/Moda', 34, 'canan@mail.com', 'Canan', 'SMS bildirimi istemiyor.', '05563461279', '', 'Korkmaz', '45698733364', '', 'Kadıköy', 'Bireysel'),
(9, 'Sivas/Merkez', 58, 'samet@mail.com', 'Samet', 'SMS bildirimi istenmiyor.', '05551234786', '', 'Yıldızeli', '45698716544', '', 'Merkez', 'Bireysel'),
(10, 'İstanbul/Levent', 34, 'hakan@mail.com', 'Hakan', 'Not-Detay', '05567986413', '', 'Özer', '45697833346', '', 'Leven', 'Bireysel'),
(11, 'İstanbul/Ataşehir', 34, 'ceren@mail.com', 'Ceren', '', '05531234691', '', 'Çabuk', '31246597416', '', 'ATAŞEHİR', 'Bireysel'),
(12, 'İstanbul/Silivri', 34, 'evren@mail.com', 'Evren', 'not', '05467893214', '', 'ERUYAR', '14765873412', '', 'SİLİVRİ', 'Bireysel');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `laboratory`
--

CREATE TABLE `laboratory` (
  `lab_id` int(11) NOT NULL,
  `lab_cu_id` int(11) NOT NULL,
  `lab_date` varchar(255) DEFAULT NULL,
  `lab_file_name` varchar(255) DEFAULT NULL,
  `lab_note` text NOT NULL,
  `lab_pa_id` int(11) NOT NULL,
  `lab_type` varchar(255) NOT NULL,
  `customer_cu_ıd` int(11) DEFAULT NULL,
  `patient_pa_ıd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `laboratory`
--

INSERT INTO `laboratory` (`lab_id`, `lab_cu_id`, `lab_date`, `lab_file_name`, `lab_note`, `lab_pa_id`, `lab_type`, `customer_cu_ıd`, `patient_pa_ıd`) VALUES
(1, 1, '22-09-2021', '02ccf896-04ab-40da-82ae-c0616867e0201.jpg', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 1, 'Röntgen', 1, 1),
(2, 5, '22-09-2021', '8b2779e7-e3b2-480d-974d-e84585b460872.jpg', 'Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli \'buraya metin gelecek, buraya metin gelecek\' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır. Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. Ayrıca arama motorlarında \'lorem ipsum\' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.\r\n\r\n', 2, 'Röntgen', 5, 2),
(4, 5, '24-09-2021', '400bf44a-efa0-456d-9dd2-2a77c300888d2.jpg', 'Röntgen', 2, 'Röntgen', 5, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `patient`
--

CREATE TABLE `patient` (
  `pa_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pa_air_tag_no` varchar(20) NOT NULL,
  `pa_birth_date` varchar(255) NOT NULL,
  `pa_chip_no` varchar(20) NOT NULL,
  `pa_color` varchar(255) DEFAULT NULL,
  `pa_kind` varchar(255) NOT NULL,
  `pa_name` varchar(50) NOT NULL,
  `pa_sex_type` varchar(255) NOT NULL,
  `pa_spay` varchar(255) DEFAULT NULL,
  `pa_type` varchar(255) NOT NULL,
  `customer_cu_ıd` int(11) DEFAULT NULL,
  `save_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `patient`
--

INSERT INTO `patient` (`pa_id`, `customer_id`, `pa_air_tag_no`, `pa_birth_date`, `pa_chip_no`, `pa_color`, `pa_kind`, `pa_name`, `pa_sex_type`, `pa_spay`, `pa_type`, `customer_cu_ıd`, `save_date`) VALUES
(1, 1, '789654', '2021-08-29', '456321', 'Gri', 'Scotish', 'Duman', 'Erkek', 'Hayır', 'Kedi', 1, '24-09-2021'),
(2, 5, '569746', '2021-07-13', ' 7864321', ' Bej', ' Kangal', ' Reis', 'Erkek', 'Evet', 'Köpek', 5, '24-09-2021'),
(3, 1, '78946123', '2021-08-29', '789312', 'Sarı', 'Golden', 'Toprak', 'Dişi', 'Evet', 'Köpek', 1, '24-09-2021'),
(4, 4, ' 987342', '2021-08-01', ' 456378', 'Beyaz', ' Van Kedisi', ' Ponçik', 'Dişi', 'Evet', 'Kedi', 4, '24-09-2021'),
(5, 8, '345678', '2021-06-16', '879986', 'Sarı', 'Golden', 'Bulut', 'Erkek', 'Evet', 'Köpek', 8, '24-09-2021'),
(6, 9, '321687', '2021-07-13', '78995413', 'Bej', 'Kangal', 'Paşa', 'Erkek', 'Hayır', 'Köpek', 9, NULL),
(9, 10, '0976431', '2021-09-01', '0314658', 'Gri', 'Scotish(Güncel)', 'Çamur', 'Erkek', 'Hayır', 'Kedi', 10, NULL),
(10, 11, '31520064', '2021-07-06', '00315246', 'Gri', 'British', 'Karamel', 'Dişi', 'Hayır', 'Kedi', 11, NULL),
(11, 12, '0145789', '2021-09-01', '0214568', 'Gri', 'Kangal', 'Duman', 'Erkek', 'Evet', 'Köpek', 12, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pay_in`
--

CREATE TABLE `pay_in` (
  `pin_ıd` int(11) NOT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `pin_amount` int(11) DEFAULT NULL,
  `pin_note` varchar(255) DEFAULT NULL,
  `pin_pay_type` varchar(255) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `pay_in`
--

INSERT INTO `pay_in` (`pin_ıd`, `created_date`, `pin_amount`, `pin_note`, `pin_pay_type`, `sales_id`) VALUES
(1, '23-09-2021 22:56:21', 50, '', '4', 1),
(2, '24-09-2021 01:39:16', 240, '240 tl ödeme alındı.', '4', 2),
(3, '24-09-2021 01:47:20', 240, '', '4', 3),
(4, '24-09-2021 02:03:05', 125, '', '4', 4),
(5, '24-09-2021 05:35:57', 240, 'Borç', '2', 5),
(6, '24-09-2021 14:37:21', 175, 'Ödeme', '4', 8),
(7, '24-09-2021 20:18:02', 200, '', '4', 9),
(8, '26-09-2021 03:05:02', 225, 'Detay', '2', 10),
(9, '26-09-2021 21:33:28', 500, '', '1', 11);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pay_out`
--

CREATE TABLE `pay_out` (
  `po_ıd` int(11) NOT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `pout_amount` int(11) DEFAULT NULL,
  `pout_note` varchar(255) DEFAULT NULL,
  `pout_pay_type` varchar(255) DEFAULT NULL,
  `buying_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `pay_out`
--

INSERT INTO `pay_out` (`po_ıd`, `created_date`, `pout_amount`, `pout_note`, `pout_pay_type`, `buying_id`) VALUES
(1, '24-09-2021 01:13:29', 500, 'Masanın ücreti nakit ödendi.', '4', 1),
(2, '24-09-2021 05:45:27', 70, 'ödeme', '3', 3),
(3, '24-09-2021 05:52:57', 50, 'deneme', '4', 2),
(4, '24-09-2021 05:54:42', 120, 'nto', '3', 4),
(5, '24-09-2021 14:40:31', 70, 'detay', '4', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pro_barcode` int(11) NOT NULL,
  `pro_buying_price` int(11) NOT NULL,
  `pro_category` varchar(255) NOT NULL,
  `pro_code` int(11) NOT NULL,
  `pro_detail` varchar(300) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_quantity` int(11) NOT NULL,
  `pro_sales_price` int(11) NOT NULL,
  `pro_supplier` varchar(255) NOT NULL,
  `pro_tax` varchar(255) NOT NULL,
  `pro_type` varchar(255) NOT NULL,
  `pro_unit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`pro_id`, `pro_barcode`, `pro_buying_price`, `pro_category`, `pro_code`, `pro_detail`, `pro_name`, `pro_quantity`, `pro_sales_price`, `pro_supplier`, `pro_tax`, `pro_type`, `pro_unit`) VALUES
(0, 0, 0, '0', 0, '0', 'ÜRÜN SEÇİMİ YOK', 0, 0, '0', '0', '0', '0'),
(1, 869782, 10, 'Mama', 426804344, 'Kedi Maması - Detay', 'Kedi Maması', 185, 25, '2', '3', '1', 'Adet'),
(2, 869783, 12, 'Mama', 426854596, 'Köpek Maması - Detay', 'Köpek Maması', 190, 24, '2', '3', '1', 'Adet'),
(4, 888949, 25, 'Kap', 452132450, 'Su Kabı - Detay', 'Su Kabı', 240, 50, '1', '3', '1', 'Adet'),
(5, 321798, 10, 'Kap', 483696103, 'Yemek Kabı -Detay', 'Yemek Kabı', 100, 20, '2', '3', '1', 'Adet');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role`
--

CREATE TABLE `role` (
  `rid` int(11) NOT NULL,
  `r_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `role`
--

INSERT INTO `role` (`rid`, `r_name`) VALUES
(1, 'ROLE_SECRETARY'),
(2, 'ROLE_DOCTOR'),
(3, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sales`
--

CREATE TABLE `sales` (
  `sa_ıd` int(11) NOT NULL,
  `sa_lab_type` varchar(255) DEFAULT NULL,
  `sa_note` varchar(255) DEFAULT NULL,
  `sa_pay_type` varchar(255) DEFAULT NULL,
  `sa_pr_amount` varchar(255) DEFAULT NULL,
  `sa_receipt_no` varchar(255) DEFAULT NULL,
  `sa_sold_date` varchar(255) DEFAULT NULL,
  `sa_vac_amount` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `vaccine_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sales`
--

INSERT INTO `sales` (`sa_ıd`, `sa_lab_type`, `sa_note`, `sa_pay_type`, `sa_pr_amount`, `sa_receipt_no`, `sa_sold_date`, `sa_vac_amount`, `customer_id`, `patient_id`, `product_id`, `vaccine_id`) VALUES
(1, '1', '', '4', '2', '426905827', '2021-09-23 22:55:31', '0', 1, 1, 1, 0),
(2, '1', '10 adet köpek maması alındı.', '4', '10', '436658369', '24-09-2021', '0', 1, 3, 2, 0),
(3, '1', '', '4', '10', '437125351', '24-09-2021', '0', 5, 2, 2, 0),
(4, '1', '', '4', '5', '438116136', '24-09-2021', '0', 4, 4, 1, 0),
(5, '2', 'deneme-not', '4', '10', '448794725', '24-09-2021', '1', 9, 6, 2, 2),
(6, '3', 'detay', '4', '2', '449504995', '24-09-2021', '1', 1, 1, 1, 2),
(7, '1', '', '1', '0', '450043191', '24-09-2021', '1', 4, 4, 0, 2),
(8, '2', 'Detay', '4', '3', '483360358', '24-09-2021', '1', 10, 9, 1, 2),
(9, '1', '', '4', '2', '503839869', '24-09-2021', '1', 5, 2, 4, 2),
(10, '2', 'Satış Notu', '4', '5', '614664192', '26-09-2021', '1', 11, 10, 1, 2),
(11, '2', '', '4', '8', '681156664', '26-09-2021', '1', 12, 11, 4, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sales_payment`
--

CREATE TABLE `sales_payment` (
  `sa_pa_ıd` int(11) NOT NULL,
  `remain_debt` int(11) DEFAULT NULL,
  `total_debt` int(11) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sales_payment`
--

INSERT INTO `sales_payment` (`sa_pa_ıd`, `remain_debt`, `total_debt`, `sales_id`) VALUES
(1, 0, 50, 1),
(2, 0, 240, 2),
(3, 0, 240, 3),
(4, 0, 125, 4),
(5, 0, 240, 5),
(6, 150, 150, 6),
(7, 100, 100, 7),
(8, 0, 175, 8),
(9, 0, 200, 9),
(10, 0, 225, 10),
(11, 0, 500, 11);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `schedule_calendar`
--

CREATE TABLE `schedule_calendar` (
  `sid` int(11) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `calendar_id` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `drag_bg_color` varchar(255) DEFAULT NULL,
  `due_date_class` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `is_all_day` bit(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `raw` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `schedule_calendar`
--

INSERT INTO `schedule_calendar` (`sid`, `bg_color`, `border_color`, `calendar_id`, `category`, `color`, `drag_bg_color`, `due_date_class`, `end`, `id`, `is_all_day`, `location`, `raw`, `start`, `state`, `title`) VALUES
(2, '#ea5455', '#ea5455', '2', 'time', '#ffffff', '#ea5455', '', 'Thu Sep 23 2021 11:00:00 GMT+0300 (GMT+03:00)', '06e08d55-881d-5341-9e41-859ec04ba3fc', b'0', 'İstanbul', 'public', 'Thu Sep 23 2021 10:00:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Kısırlaştırma'),
(3, '#00cfe8', '#00cfe8', '3', 'time', '#ffffff', '#00cfe8', '', 'Thu Sep 23 2021 13:00:00 GMT+0300 (GMT+03:00)', 'c8710695-ea2d-59ea-8852-e819af30917d', b'0', 'İstanbul', 'public', 'Thu Sep 23 2021 12:30:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Kısırlaştırma'),
(4, '#28c76f', '#28c76f', '1', 'time', '#ffffff', '#28c76f', '', 'Thu Sep 23 2021 14:00:00 GMT+0300 (GMT+03:00)', 'b6d19edd-eb2e-57c1-927e-1c4433469d9e', b'0', 'İstanbul', 'public', 'Thu Sep 23 2021 13:30:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Aşı İşlemi'),
(5, '#ff9f43', '#ff9f43', '4', 'time', '#ffffff', '#ff9f43', '', 'Thu Sep 23 2021 15:00:00 GMT+0300 (GMT+03:00)', 'c09df18e-e267-5d38-9008-4e4b39ecaee9', b'0', 'İstanbul', 'public', 'Thu Sep 23 2021 14:30:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Aşı İşlemi'),
(6, '#28c76f', '#28c76f', '1', 'time', '#ffffff', '#28c76f', '', 'Thu Sep 23 2021 16:30:00 GMT+0300 (GMT+03:00)', '481bb939-e546-5cdb-ab96-32a9716aec74', b'0', 'Ankara', 'public', 'Thu Sep 23 2021 16:00:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Duman isimli Scotish cinsi  kedinin ön muayene işlemi. '),
(9, '#28c76f', '#28c76f', '1', 'time', '#ffffff', '#28c76f', '', 'Fri Sep 24 2021 11:30:00 GMT+0300 (GMT+03:00)', 'b886fb46-ccbd-5c35-bb9b-38339bc3779b', b'0', 'Ankara', 'public', 'Fri Sep 24 2021 11:00:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Duman isimli Scotish cinsi  kedinin ön muayene işlemi. '),
(10, '#ea5455', '#ea5455', '2', 'time', '#ffffff', '#ea5455', '', 'Fri Sep 24 2021 14:30:00 GMT+0300 (GMT+03:00)', '4ff58db5-f8e2-57de-811c-c0fa90d14647', b'0', 'Ankara', 'public', 'Fri Sep 24 2021 13:30:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Kısırlaştırma'),
(11, '#ff9f43', '#ff9f43', '4', 'time', '#ffffff', '#ff9f43', '', 'Fri Sep 24 2021 18:30:00 GMT+0300 (GMT+03:00)', 'dcad91b9-effd-5420-a490-6015a271cf9e', b'0', 'İstanbul', 'public', 'Fri Sep 24 2021 18:00:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Aşı İşlemi'),
(12, '#00cfe8', '#00cfe8', '3', 'time', '#ffffff', '#00cfe8', '', 'Sat Sep 25 2021 02:00:00 GMT+0300 (GMT+03:00)', '5277c140-36cf-544d-9aa8-d9a41d2b88f1', b'0', 'İstanbul', 'public', 'Sat Sep 25 2021 01:30:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Kan Tahlili'),
(13, '#ea5455', '#ea5455', '2', 'time', '#ffffff', '#ea5455', '', 'Sun Sep 26 2021 23:00:00 GMT+0300 (GMT+03:00)', '747c50d6-3c43-50f0-8e80-f0cfcf0a8421', b'0', 'İstanbul', 'public', 'Sun Sep 26 2021 22:30:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Aşı İşlemi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `storage`
--

CREATE TABLE `storage` (
  `stor_id` int(11) NOT NULL,
  `stor_name` varchar(100) NOT NULL,
  `stor_no` varchar(25) NOT NULL,
  `stor_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `storage`
--

INSERT INTO `storage` (`stor_id`, `stor_name`, `stor_no`, `stor_status`) VALUES
(3, 'Deneme-4', '949792871', 'Kapalı'),
(5, 'Deneme-5', '950314922', 'Aktif'),
(8, 'Deneme-6', '447101211', 'Kapalı'),
(9, 'Deneme-7', '447132475', 'Aktif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `supplier`
--

CREATE TABLE `supplier` (
  `sup_ıd` int(11) NOT NULL,
  `sup_email` varchar(100) NOT NULL,
  `sup_name` varchar(100) NOT NULL,
  `sup_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `supplier`
--

INSERT INTO `supplier` (`sup_ıd`, `sup_email`, `sup_name`, `sup_phone`) VALUES
(1, 'yarbac@mail.com', 'Yarbaç ', '05548398073'),
(2, 'karaca@mail.com', 'Karaca', '05546731264'),
(4, 'not@email.com', 'not', '546987641');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `supplier_product`
--

CREATE TABLE `supplier_product` (
  `sup_pro_ıd` int(11) NOT NULL,
  `sup_pro_name` varchar(255) NOT NULL,
  `sup_pro_price` int(11) NOT NULL,
  `sup_pro_unit` varchar(255) NOT NULL,
  `supllier_sup_ıd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `supplier_product`
--

INSERT INTO `supplier_product` (`sup_pro_ıd`, `sup_pro_name`, `sup_pro_price`, `sup_pro_unit`, `supllier_sup_ıd`) VALUES
(1, 'Köpek Maması', 7, 'KG', 2),
(2, 'Kedi Maması', 8, 'KG', 2),
(3, 'Kedi Tutma Eldiveni', 50, 'Adet', 2),
(4, 'Ameliyat Eldiveni', 10, 'Kutu', 2),
(5, 'Kan Tüpleri', 60, 'Kutu', 2),
(6, 'Pamuk', 4, 'Kutu', 2),
(7, 'Dezenfektan', 6, 'Adet', 2),
(8, 'Parazit Damlası', 15, 'Adet', 2),
(9, 'Tartı Aleti', 90, 'Adet', 2),
(10, 'Muayene Masası', 500, 'Adet', 2),
(11, 'Taşıma Sedyesi', 450, 'Adet', 2),
(12, 'Ultrason', 1500, 'Adet', 2),
(13, 'Ameliyat Seti', 600, 'Adet', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `towns`
--

CREATE TABLE `towns` (
  `ilce_id` int(11) NOT NULL,
  `ilce_title` varchar(255) DEFAULT NULL,
  `ilce_sehirkey` int(11) DEFAULT NULL,
  `ilce_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `towns`
--

INSERT INTO `towns` (`ilce_id`, `ilce_title`, `ilce_sehirkey`, `ilce_key`) VALUES
(1, 'ADALAR', 34, 1103),
(2, 'ARNAVUTKÖY', 34, 2048),
(3, 'ATAŞEHİR', 34, 2049),
(4, 'AVCILAR', 34, 2003),
(5, 'BAĞCILAR', 34, 2004),
(6, 'BAHÇELİEVLER', 34, 2005),
(7, 'BAKIRKÖY', 34, 1166),
(8, 'BAŞAKŞEHİR', 34, 2050),
(9, 'BAYRAMPAŞA', 34, 1886),
(10, 'BEŞİKTAŞ', 34, 1183),
(11, 'BEYKOZ', 34, 1185),
(12, 'BEYLİKDÜZÜ', 34, 2051),
(13, 'BEYOĞLU', 34, 1186),
(14, 'BÜYÜKÇEKMECE', 34, 1782),
(15, 'ÇATALCA', 34, 1237),
(16, 'ÇEKMEKÖY', 34, 2052),
(17, 'ESENLER', 34, 2016),
(18, 'ESENYURT', 34, 2053),
(19, 'EYÜP', 34, 1325),
(20, 'FATİH', 34, 1327),
(21, 'GAZİOSMANPAŞA', 34, 1336),
(22, 'GÜNGÖREN', 34, 2010),
(23, 'KADIKÖY', 34, 1421),
(24, 'KAĞITHANE', 34, 1810),
(25, 'KARTAL', 34, 1449),
(26, 'KÜÇÜKÇEKMECE', 34, 1823),
(27, 'MALTEPE', 34, 2012),
(28, 'PENDİK', 34, 1835),
(29, 'SANCAKTEPE', 34, 2054),
(30, 'SARIYER', 34, 1604),
(31, 'SİLİVRİ', 34, 1622),
(32, 'SULTANBEYLİ', 34, 2014),
(33, 'SULTANGAZİ', 34, 2055),
(34, 'ŞİLE', 34, 1659),
(35, 'ŞİŞLİ', 34, 1663),
(36, 'TUZLA', 34, 2015),
(37, 'ÜMRANİYE', 34, 1852),
(38, 'ÜSKÜDAR', 34, 1708),
(39, 'ZEYTİNBURNU', 34, 1739),
(40, 'AKYURT', 6, 1872),
(41, 'ALTINDAĞ', 6, 1130),
(42, 'AYAŞ', 6, 1157),
(43, 'BALA', 6, 1167),
(44, 'BEYPAZARI', 6, 1187),
(45, 'ÇAMLIDERE', 6, 1227),
(46, 'ÇANKAYA', 6, 1231),
(47, 'ÇUBUK', 6, 1260),
(48, 'ELMADAĞ', 6, 1302),
(49, 'ETİMESGUT', 6, 1922),
(50, 'EVREN', 6, 1924),
(51, 'GÖLBAŞI', 6, 1744),
(52, 'GÜDÜL', 6, 1365),
(53, 'HAYMANA', 6, 1387),
(54, 'KAHRAMANKAZAN', 6, 1815),
(55, 'KALECİK', 6, 1427),
(56, 'KEÇİÖREN', 6, 1745),
(57, 'KIZILCAHAMAM', 6, 1473),
(58, 'MAMAK', 6, 1746),
(59, 'NALLIHAN', 6, 1539),
(60, 'POLATLI', 6, 1578),
(61, 'PURSAKLAR', 6, 2034),
(62, 'SİNCAN', 6, 1747),
(63, 'ŞEREFLİKOÇHİSAR', 6, 1658),
(64, 'YENİMAHALLE', 6, 1723),
(65, 'ALİAĞA', 35, 1128),
(66, 'BALÇOVA', 35, 2006),
(67, 'BAYINDIR', 35, 1178),
(68, 'BAYRAKLI', 35, 2056),
(69, 'BERGAMA', 35, 1181),
(70, 'BEYDAĞ', 35, 1776),
(71, 'BORNOVA', 35, 1203),
(72, 'BUCA', 35, 1780),
(73, 'ÇEŞME', 35, 1251),
(74, 'ÇİĞLİ', 35, 2007),
(75, 'DİKİLİ', 35, 1280),
(76, 'FOÇA', 35, 1334),
(77, 'GAZİEMİR', 35, 2009),
(78, 'GÜZELBAHÇE', 35, 2018),
(79, 'KARABAĞLAR', 35, 2057),
(80, 'KARABURUN', 35, 1432),
(81, 'KARŞIYAKA', 35, 1448),
(82, 'KEMALPAŞA', 35, 1461),
(83, 'KINIK', 35, 1467),
(84, 'KİRAZ', 35, 1477),
(85, 'KONAK', 35, 1819),
(86, 'MENDERES', 35, 1826),
(87, 'MENEMEN', 35, 1521),
(88, 'NARLIDERE', 35, 2013),
(89, 'ÖDEMİŞ', 35, 1563),
(90, 'SEFERİHİSAR', 35, 1611),
(91, 'SELÇUK', 35, 1612),
(92, 'TİRE', 35, 1677),
(93, 'TORBALI', 35, 1682),
(94, 'URLA', 35, 1703),
(95, 'BÜYÜKORHAN', 16, 1783),
(96, 'GEMLİK', 16, 1343),
(97, 'GÜRSU', 16, 1935),
(98, 'HARMANCIK', 16, 1799),
(99, 'İNEGÖL', 16, 1411),
(100, 'İZNİK', 16, 1420),
(101, 'KARACABEY', 16, 1434),
(102, 'KELES', 16, 1457),
(103, 'KESTEL', 16, 1960),
(104, 'MUDANYA', 16, 1530),
(105, 'MUSTAFAKEMALPAŞA', 16, 1535),
(106, 'NİLÜFER', 16, 1829),
(107, 'ORHANELİ', 16, 1553),
(108, 'ORHANGAZİ', 16, 1554),
(109, 'OSMANGAZİ', 16, 1832),
(110, 'YENİŞEHİR', 16, 1725),
(111, 'YILDIRIM', 16, 1859),
(112, 'ALADAĞ', 1, 1757),
(113, 'CEYHAN', 1, 1219),
(114, 'ÇUKUROVA', 1, 2033),
(115, 'FEKE', 1, 1329),
(116, 'İMAMOĞLU', 1, 1806),
(117, 'KARAİSALI', 1, 1437),
(118, 'KARATAŞ', 1, 1443),
(119, 'KOZAN', 1, 1486),
(120, 'POZANTI', 1, 1580),
(121, 'SAİMBEYLİ', 1, 1588),
(122, 'SARIÇAM', 1, 2032),
(123, 'SEYHAN', 1, 1104),
(124, 'TUFANBEYLİ', 1, 1687),
(125, 'YUMURTALIK', 1, 1734),
(126, 'YÜREĞİR', 1, 1748),
(127, 'BESNİ', 2, 1182),
(128, 'ÇELİKHAN', 2, 1246),
(129, 'GERGER', 2, 1347),
(130, 'GÖLBAŞI', 2, 1354),
(131, 'KAHTA', 2, 1425),
(132, 'MERKEZ', 2, 1105),
(133, 'SAMSAT', 2, 1592),
(134, 'SİNCİK', 2, 1985),
(135, 'TUT', 2, 1989),
(136, 'BAŞMAKÇI', 3, 1771),
(137, 'BAYAT', 3, 1773),
(138, 'BOLVADİN', 3, 1200),
(139, 'ÇAY', 3, 1239),
(140, 'ÇOBANLAR', 3, 1906),
(141, 'DAZKIRI', 3, 1267),
(142, 'DİNAR', 3, 1281),
(143, 'EMİRDAĞ', 3, 1306),
(144, 'EVCİLER', 3, 1923),
(145, 'HOCALAR', 3, 1944),
(146, 'İHSANİYE', 3, 1404),
(147, 'İSCEHİSAR', 3, 1809),
(148, 'KIZILÖREN', 3, 1961),
(149, 'MERKEZ', 3, 1108),
(150, 'SANDIKLI', 3, 1594),
(151, 'SİNANPAŞA', 3, 1626),
(152, 'SULTANDAĞI', 3, 1639),
(153, 'ŞUHUT', 3, 1664),
(154, 'DİYADİN', 4, 1283),
(155, 'DOĞUBAYAZIT', 4, 1287),
(156, 'ELEŞKİRT', 4, 1301),
(157, 'HAMUR', 4, 1379),
(158, 'MERKEZ', 4, 1111),
(159, 'PATNOS', 4, 1568),
(160, 'TAŞLIÇAY', 4, 1667),
(161, 'TUTAK', 4, 1691),
(162, 'AĞAÇÖREN', 68, 1860),
(163, 'ESKİL', 68, 1921),
(164, 'GÜLAĞAÇ', 68, 1932),
(165, 'GÜZELYURT', 68, 1861),
(166, 'MERKEZ', 68, 1120),
(167, 'ORTAKÖY', 68, 1557),
(168, 'SARIYAHŞİ', 68, 1866),
(169, 'GÖYNÜCEK', 5, 1363),
(170, 'GÜMÜŞHACIKÖY', 5, 1368),
(171, 'HAMAMÖZÜ', 5, 1938),
(172, 'MERKEZ', 5, 1134),
(173, 'MERZİFON', 5, 1524),
(174, 'SULUOVA', 5, 1641),
(175, 'TAŞOVA', 5, 1668),
(176, 'AKSEKİ', 7, 1121),
(177, 'AKSU', 7, 2035),
(178, 'ALANYA', 7, 1126),
(179, 'DEMRE', 7, 1811),
(180, 'DÖŞEMEALTI', 7, 2036),
(181, 'ELMALI', 7, 1303),
(182, 'FİNİKE', 7, 1333),
(183, 'GAZİPAŞA', 7, 1337),
(184, 'GÜNDOĞMUŞ', 7, 1370),
(185, 'İBRADI', 7, 1946),
(186, 'KAŞ', 7, 1451),
(187, 'KEMER', 7, 1959),
(188, 'KEPEZ', 7, 2037),
(189, 'KONYAALTI', 7, 2038),
(190, 'KORKUTELİ', 7, 1483),
(191, 'KUMLUCA', 7, 1492),
(192, 'MANAVGAT', 7, 1512),
(193, 'MURATPAŞA', 7, 2039),
(194, 'SERİK', 7, 1616),
(195, 'ÇILDIR', 75, 1252),
(196, 'DAMAL', 75, 2008),
(197, 'GÖLE', 75, 1356),
(198, 'HANAK', 75, 1380),
(199, 'MERKEZ', 75, 1144),
(200, 'POSOF', 75, 1579),
(201, 'ARDANUÇ', 8, 1145),
(202, 'ARHAVİ', 8, 1147),
(203, 'BORÇKA', 8, 1202),
(204, 'HOPA', 8, 1395),
(205, 'MERKEZ', 8, 1152),
(206, 'MURGUL', 8, 1828),
(207, 'ŞAVŞAT', 8, 1653),
(208, 'YUSUFELİ', 8, 1736),
(209, 'BOZDOĞAN', 9, 1206),
(210, 'BUHARKENT', 9, 1781),
(211, 'ÇİNE', 9, 1256),
(212, 'DİDİM', 9, 2000),
(213, 'EFELER', 9, 2076),
(214, 'GERMENCİK', 9, 1348),
(215, 'İNCİRLİOVA', 9, 1807),
(216, 'KARACASU', 9, 1435),
(217, 'KARPUZLU', 9, 1957),
(218, 'KOÇARLI', 9, 1479),
(219, 'KÖŞK', 9, 1968),
(220, 'KUŞADASI', 9, 1497),
(221, 'KUYUCAK', 9, 1498),
(222, 'NAZİLLİ', 9, 1542),
(223, 'SÖKE', 9, 1637),
(224, 'SULTANHİSAR', 9, 1640),
(225, 'YENİPAZAR', 9, 1724),
(226, 'ALTIEYLÜL', 10, 2077),
(227, 'AYVALIK', 10, 1161),
(228, 'BALYA', 10, 1169),
(229, 'BANDIRMA', 10, 1171),
(230, 'BİGADİÇ', 10, 1191),
(231, 'BURHANİYE', 10, 1216),
(232, 'DURSUNBEY', 10, 1291),
(233, 'EDREMİT', 10, 1294),
(234, 'ERDEK', 10, 1310),
(235, 'GÖMEÇ', 10, 1928),
(236, 'GÖNEN', 10, 1360),
(237, 'HAVRAN', 10, 1384),
(238, 'İVRİNDİ', 10, 1418),
(239, 'KARESİ', 10, 2078),
(240, 'KEPSUT', 10, 1462),
(241, 'MANYAS', 10, 1514),
(242, 'MARMARA', 10, 1824),
(243, 'SAVAŞTEPE', 10, 1608),
(244, 'SINDIRGI', 10, 1619),
(245, 'SUSURLUK', 10, 1644),
(246, 'AMASRA', 74, 1761),
(247, 'KURUCAŞİLE', 74, 1496),
(248, 'MERKEZ', 74, 1172),
(249, 'ULUS', 74, 1701),
(250, 'BEŞİRİ', 72, 1184),
(251, 'GERCÜŞ', 72, 1345),
(252, 'HASANKEYF', 72, 1941),
(253, 'KOZLUK', 72, 1487),
(254, 'MERKEZ', 72, 1174),
(255, 'SASON', 72, 1607),
(256, 'AYDINTEPE', 69, 1767),
(257, 'DEMİRÖZÜ', 69, 1788),
(258, 'MERKEZ', 69, 1176),
(259, 'BOZÜYÜK', 11, 1210),
(260, 'GÖLPAZARI', 11, 1359),
(261, 'İNHİSAR', 11, 1948),
(262, 'MERKEZ', 11, 1192),
(263, 'OSMANELİ', 11, 1559),
(264, 'PAZARYERİ', 11, 1571),
(265, 'SÖĞÜT', 11, 1636),
(266, 'YENİPAZAR', 11, 1857),
(267, 'ADAKLI', 12, 1750),
(268, 'GENÇ', 12, 1344),
(269, 'KARLIOVA', 12, 1446),
(270, 'KİĞI', 12, 1475),
(271, 'MERKEZ', 12, 1193),
(272, 'SOLHAN', 12, 1633),
(273, 'YAYLADERE', 12, 1855),
(274, 'YEDİSU', 12, 1996),
(275, 'ADİLCEVAZ', 13, 1106),
(276, 'AHLAT', 13, 1112),
(277, 'GÜROYMAK', 13, 1798),
(278, 'HİZAN', 13, 1394),
(279, 'MERKEZ', 13, 1196),
(280, 'MUTKİ', 13, 1537),
(281, 'TATVAN', 13, 1669),
(282, 'DÖRTDİVAN', 14, 1916),
(283, 'GEREDE', 14, 1346),
(284, 'GÖYNÜK', 14, 1364),
(285, 'KIBRISCIK', 14, 1466),
(286, 'MENGEN', 14, 1522),
(287, 'MERKEZ', 14, 1199),
(288, 'MUDURNU', 14, 1531),
(289, 'SEBEN', 14, 1610),
(290, 'YENİÇAĞA', 14, 1997),
(291, 'AĞLASUN', 15, 1109),
(292, 'ALTINYAYLA', 15, 1874),
(293, 'BUCAK', 15, 1211),
(294, 'ÇAVDIR', 15, 1899),
(295, 'ÇELTİKÇİ', 15, 1903),
(296, 'GÖLHİSAR', 15, 1357),
(297, 'KARAMANLI', 15, 1813),
(298, 'KEMER', 15, 1816),
(299, 'MERKEZ', 15, 1215),
(300, 'TEFENNİ', 15, 1672),
(301, 'YEŞİLOVA', 15, 1728),
(302, 'AYVACIK', 17, 1160),
(303, 'BAYRAMİÇ', 17, 1180),
(304, 'BİGA', 17, 1190),
(305, 'BOZCAADA', 17, 1205),
(306, 'ÇAN', 17, 1229),
(307, 'ECEABAT', 17, 1293),
(308, 'EZİNE', 17, 1326),
(309, 'GELİBOLU', 17, 1340),
(310, 'GÖKÇEADA', 17, 1408),
(311, 'LAPSEKİ', 17, 1503),
(312, 'MERKEZ', 17, 1230),
(313, 'YENİCE', 17, 1722),
(314, 'ATKARACALAR', 18, 1765),
(315, 'BAYRAMÖREN', 18, 1885),
(316, 'ÇERKEŞ', 18, 1248),
(317, 'ELDİVAN', 18, 1300),
(318, 'ILGAZ', 18, 1399),
(319, 'KIZILIRMAK', 18, 1817),
(320, 'KORGUN', 18, 1963),
(321, 'KURŞUNLU', 18, 1494),
(322, 'MERKEZ', 18, 1232),
(323, 'ORTA', 18, 1555),
(324, 'ŞABANÖZÜ', 18, 1649),
(325, 'YAPRAKLI', 18, 1718),
(326, 'ALACA', 19, 1124),
(327, 'BAYAT', 19, 1177),
(328, 'BOĞAZKALE', 19, 1778),
(329, 'DODURGA', 19, 1911),
(330, 'İSKİLİP', 19, 1414),
(331, 'KARGI', 19, 1445),
(332, 'LAÇİN', 19, 1972),
(333, 'MECİTÖZÜ', 19, 1520),
(334, 'MERKEZ', 19, 1259),
(335, 'OĞUZLAR', 19, 1976),
(336, 'ORTAKÖY', 19, 1556),
(337, 'OSMANCIK', 19, 1558),
(338, 'SUNGURLU', 19, 1642),
(339, 'UĞURLUDAĞ', 19, 1850),
(340, 'ACIPAYAM', 20, 1102),
(341, 'BABADAĞ', 20, 1769),
(342, 'BAKLAN', 20, 1881),
(343, 'BEKİLLİ', 20, 1774),
(344, 'BEYAĞAÇ', 20, 1888),
(345, 'BOZKURT', 20, 1889),
(346, 'BULDAN', 20, 1214),
(347, 'ÇAL', 20, 1224),
(348, 'ÇAMELİ', 20, 1226),
(349, 'ÇARDAK', 20, 1233),
(350, 'ÇİVRİL', 20, 1257),
(351, 'GÜNEY', 20, 1371),
(352, 'HONAZ', 20, 1803),
(353, 'KALE', 20, 1426),
(354, 'MERKEZEFENDİ', 20, 2079),
(355, 'PAMUKKALE', 20, 1871),
(356, 'SARAYKÖY', 20, 1597),
(357, 'SERİNHİSAR', 20, 1840),
(358, 'TAVAS', 20, 1670),
(359, 'BAĞLAR', 21, 2040),
(360, 'BİSMİL', 21, 1195),
(361, 'ÇERMİK', 21, 1249),
(362, 'ÇINAR', 21, 1253),
(363, 'ÇÜNGÜŞ', 21, 1263),
(364, 'DİCLE', 21, 1278),
(365, 'EĞİL', 21, 1791),
(366, 'ERGANİ', 21, 1315),
(367, 'HANİ', 21, 1381),
(368, 'HAZRO', 21, 1389),
(369, 'KAYAPINAR', 21, 2041),
(370, 'KOCAKÖY', 21, 1962),
(371, 'KULP', 21, 1490),
(372, 'LİCE', 21, 1504),
(373, 'SİLVAN', 21, 1624),
(374, 'SUR', 21, 2042),
(375, 'YENİŞEHİR', 21, 2043),
(376, 'BAŞİSKELE', 41, 2058),
(377, 'ÇAYIROVA', 41, 2059),
(378, 'DARICA', 41, 2060),
(379, 'DERİNCE', 41, 2030),
(380, 'DİLOVASI', 41, 2061),
(381, 'GEBZE', 41, 1338),
(382, 'GÖLCÜK', 41, 1355),
(383, 'İZMİT', 41, 2062),
(384, 'KANDIRA', 41, 1430),
(385, 'KARAMÜRSEL', 41, 1440),
(386, 'KARTEPE', 41, 2063),
(387, 'KÖRFEZ', 41, 1821),
(388, 'AHIRLI', 42, 1868),
(389, 'AKÖREN', 42, 1753),
(390, 'AKŞEHİR', 42, 1122),
(391, 'ALTINEKİN', 42, 1760),
(392, 'BEYŞEHİR', 42, 1188),
(393, 'BOZKIR', 42, 1207),
(394, 'CİHANBEYLİ', 42, 1222),
(395, 'ÇELTİK', 42, 1902),
(396, 'ÇUMRA', 42, 1262),
(397, 'DERBENT', 42, 1907),
(398, 'DEREBUCAK', 42, 1789),
(399, 'DOĞANHİSAR', 42, 1285),
(400, 'EMİRGAZİ', 42, 1920),
(401, 'EREĞLİ', 42, 1312),
(402, 'GÜNEYSINIR', 42, 1933),
(403, 'HADİM', 42, 1375),
(404, 'HALKAPINAR', 42, 1937),
(405, 'HÜYÜK', 42, 1804),
(406, 'ILGIN', 42, 1400),
(407, 'KADINHANI', 42, 1422),
(408, 'KARAPINAR', 42, 1441),
(409, 'KARATAY', 42, 1814),
(410, 'KULU', 42, 1491),
(411, 'MERAM', 42, 1827),
(412, 'SARAYÖNÜ', 42, 1598),
(413, 'SELÇUKLU', 42, 1839),
(414, 'SEYDİŞEHİR', 42, 1617),
(415, 'TAŞKENT', 42, 1848),
(416, 'TUZLUKÇU', 42, 1990),
(417, 'YALIHÜYÜK', 42, 1994),
(418, 'YUNAK', 42, 1735),
(419, 'ALTINTAŞ', 43, 1132),
(420, 'ASLANAPA', 43, 1764),
(421, 'ÇAVDARHİSAR', 43, 1898),
(422, 'DOMANİÇ', 43, 1288),
(423, 'DUMLUPINAR', 43, 1790),
(424, 'EMET', 43, 1304),
(425, 'GEDİZ', 43, 1339),
(426, 'HİSARCIK', 43, 1802),
(427, 'MERKEZ', 43, 1500),
(428, 'PAZARLAR', 43, 1979),
(429, 'SİMAV', 43, 1625),
(430, 'ŞAPHANE', 43, 1843),
(431, 'TAVŞANLI', 43, 1671),
(432, 'AKÇADAĞ', 44, 1114),
(433, 'ARAPGİR', 44, 1143),
(434, 'ARGUVAN', 44, 1148),
(435, 'BATTALGAZİ', 44, 1772),
(436, 'DARENDE', 44, 1265),
(437, 'DOĞANŞEHİR', 44, 1286),
(438, 'DOĞANYOL', 44, 1914),
(439, 'HEKİMHAN', 44, 1390),
(440, 'KALE', 44, 1953),
(441, 'KULUNCAK', 44, 1969),
(442, 'PÜTÜRGE', 44, 1582),
(443, 'YAZIHAN', 44, 1995),
(444, 'YEŞİLYURT', 44, 1729),
(445, 'AHMETLİ', 45, 1751),
(446, 'AKHİSAR', 45, 1118),
(447, 'ALAŞEHİR', 45, 1127),
(448, 'DEMİRCİ', 45, 1269),
(449, 'GÖLMARMARA', 45, 1793),
(450, 'GÖRDES', 45, 1362),
(451, 'KIRKAĞAÇ', 45, 1470),
(452, 'KÖPRÜBAŞI', 45, 1965),
(453, 'KULA', 45, 1489),
(454, 'SALİHLİ', 45, 1590),
(455, 'SARIGÖL', 45, 1600),
(456, 'SARUHANLI', 45, 1606),
(457, 'SELENDİ', 45, 1613),
(458, 'SOMA', 45, 1634),
(459, 'ŞEHZADELER', 45, 2086),
(460, 'TURGUTLU', 45, 1689),
(461, 'YUNUSEMRE', 45, 2087),
(462, 'ARTUKLU', 47, 2088),
(463, 'DARGEÇİT', 47, 1787),
(464, 'DERİK', 47, 1273),
(465, 'KIZILTEPE', 47, 1474),
(466, 'MAZIDAĞI', 47, 1519),
(467, 'MİDYAT', 47, 1526),
(468, 'NUSAYBİN', 47, 1547),
(469, 'ÖMERLİ', 47, 1564),
(470, 'SAVUR', 47, 1609),
(471, 'YEŞİLLİ', 47, 2002),
(472, 'AKDENİZ', 33, 2064),
(473, 'ANAMUR', 33, 1135),
(474, 'AYDINCIK', 33, 1766),
(475, 'BOZYAZI', 33, 1779),
(476, 'ÇAMLIYAYLA', 33, 1892),
(477, 'ERDEMLİ', 33, 1311),
(478, 'GÜLNAR', 33, 1366),
(479, 'MEZİTLİ', 33, 2065),
(480, 'MUT', 33, 1536),
(481, 'SİLİFKE', 33, 1621),
(482, 'TARSUS', 33, 1665),
(483, 'TOROSLAR', 33, 2066),
(484, 'YENİŞEHİR', 33, 2067),
(485, 'BODRUM', 48, 1197),
(486, 'DALAMAN', 48, 1742),
(487, 'DATÇA', 48, 1266),
(488, 'FETHİYE', 48, 1331),
(489, 'KAVAKLIDERE', 48, 1958),
(490, 'KÖYCEĞİZ', 48, 1488),
(491, 'MARMARİS', 48, 1517),
(492, 'MENTEŞE', 48, 2089),
(493, 'MİLAS', 48, 1528),
(494, 'ORTACA', 48, 1831),
(495, 'SEYDİKEMER', 48, 2090),
(496, 'ULA', 48, 1695),
(497, 'YATAĞAN', 48, 1719),
(498, 'BULANIK', 49, 1213),
(499, 'HASKÖY', 49, 1801),
(500, 'KORKUT', 49, 1964),
(501, 'MALAZGİRT', 49, 1510),
(502, 'MERKEZ', 49, 1534),
(503, 'VARTO', 49, 1711),
(504, 'ACIGÖL', 50, 1749),
(505, 'AVANOS', 50, 1155),
(506, 'DERİNKUYU', 50, 1274),
(507, 'GÜLŞEHİR', 50, 1367),
(508, 'HACIBEKTAŞ', 50, 1374),
(509, 'KOZAKLI', 50, 1485),
(510, 'MERKEZ', 50, 1543),
(511, 'ÜRGÜP', 50, 1707),
(512, 'ALTUNHİSAR', 51, 1876),
(513, 'BOR', 51, 1201),
(514, 'ÇAMARDI', 51, 1225),
(515, 'ÇİFTLİK', 51, 1904),
(516, 'MERKEZ', 51, 1544),
(517, 'ULUKIŞLA', 51, 1700),
(518, 'AKKUŞ', 52, 1119),
(519, 'ALTINORDU', 52, 2103),
(520, 'AYBASTI', 52, 1158),
(521, 'ÇAMAŞ', 52, 1891),
(522, 'ÇATALPINAR', 52, 1897),
(523, 'ÇAYBAŞI', 52, 1900),
(524, 'FATSA', 52, 1328),
(525, 'GÖLKÖY', 52, 1358),
(526, 'GÜLYALI', 52, 1795),
(527, 'GÜRGENTEPE', 52, 1797),
(528, 'İKİZCE', 52, 1947),
(529, 'KABADÜZ', 52, 1950),
(530, 'KABATAŞ', 52, 1951),
(531, 'KORGAN', 52, 1482),
(532, 'KUMRU', 52, 1493),
(533, 'MESUDİYE', 52, 1525),
(534, 'PERŞEMBE', 52, 1573),
(535, 'ULUBEY', 52, 1696),
(536, 'ÜNYE', 52, 1706),
(537, 'BAHÇE', 80, 1165),
(538, 'DÜZİÇİ', 80, 1743),
(539, 'HASANBEYLİ', 80, 2027),
(540, 'KADİRLİ', 80, 1423),
(541, 'MERKEZ', 80, 1560),
(542, 'SUMBAS', 80, 2028),
(543, 'TOPRAKKALE', 80, 2029),
(544, 'ARDEŞEN', 53, 1146),
(545, 'ÇAMLIHEMŞİN', 53, 1228),
(546, 'ÇAYELİ', 53, 1241),
(547, 'DEREPAZARI', 53, 1908),
(548, 'FINDIKLI', 53, 1332),
(549, 'GÜNEYSU', 53, 1796),
(550, 'HEMŞİN', 53, 1943),
(551, 'İKİZDERE', 53, 1405),
(552, 'İYİDERE', 53, 1949),
(553, 'KALKANDERE', 53, 1428),
(554, 'MERKEZ', 53, 1586),
(555, 'PAZAR', 53, 1569),
(556, 'ADAPAZARI', 54, 2068),
(557, 'AKYAZI', 54, 1123),
(558, 'ARİFİYE', 54, 2069),
(559, 'ERENLER', 54, 2070),
(560, 'FERİZLİ', 54, 1925),
(561, 'GEYVE', 54, 1351),
(562, 'HENDEK', 54, 1391),
(563, 'KARAPÜRÇEK', 54, 1955),
(564, 'KARASU', 54, 1442),
(565, 'KAYNARCA', 54, 1453),
(566, 'KOCAALİ', 54, 1818),
(567, 'PAMUKOVA', 54, 1833),
(568, 'SAPANCA', 54, 1595),
(569, 'SERDİVAN', 54, 2071),
(570, 'SÖĞÜTLÜ', 54, 1986),
(571, 'TARAKLI', 54, 1847),
(572, 'ALAÇAM', 55, 1125),
(573, 'ASARCIK', 55, 1763),
(574, 'ATAKUM', 55, 2072),
(575, 'AYVACIK', 55, 1879),
(576, 'BAFRA', 55, 1164),
(577, 'CANİK', 55, 2073),
(578, 'ÇARŞAMBA', 55, 1234),
(579, 'HAVZA', 55, 1386),
(580, 'İLKADIM', 55, 2074),
(581, 'KAVAK', 55, 1452),
(582, 'LADİK', 55, 1501),
(583, 'SALIPAZARI', 55, 1838),
(584, 'TEKKEKÖY', 55, 1849),
(585, 'TERME', 55, 1676),
(586, 'VEZİRKÖPRÜ', 55, 1712),
(587, 'YAKAKENT', 55, 1993),
(588, '19 MAYIS', 55, 1830),
(589, 'BAYKAN', 56, 1179),
(590, 'ERUH', 56, 1317),
(591, 'KURTALAN', 56, 1495),
(592, 'MERKEZ', 56, 1620),
(593, 'PERVARİ', 56, 1575),
(594, 'ŞİRVAN', 56, 1662),
(595, 'TİLLO', 56, 1878),
(596, 'AYANCIK', 57, 1156),
(597, 'BOYABAT', 57, 1204),
(598, 'DİKMEN', 57, 1910),
(599, 'DURAĞAN', 57, 1290),
(600, 'ERFELEK', 57, 1314),
(601, 'GERZE', 57, 1349),
(602, 'MERKEZ', 57, 1627),
(603, 'SARAYDÜZÜ', 57, 1981),
(604, 'TÜRKELİ', 57, 1693),
(605, 'BEYTÜŞŞEBAP', 73, 1189),
(606, 'CİZRE', 73, 1223),
(607, 'GÜÇLÜKONAK', 73, 1931),
(608, 'İDİL', 73, 1403),
(609, 'MERKEZ', 73, 1661),
(610, 'SİLOPİ', 73, 1623),
(611, 'ULUDERE', 73, 1698),
(612, 'AKINCILAR', 58, 1870),
(613, 'ALTINYAYLA', 58, 1875),
(614, 'DİVRİĞİ', 58, 1282),
(615, 'DOĞANŞAR', 58, 1913),
(616, 'GEMEREK', 58, 1342),
(617, 'GÖLOVA', 58, 1927),
(618, 'GÜRÜN', 58, 1373),
(619, 'HAFİK', 58, 1376),
(620, 'İMRANLI', 58, 1407),
(621, 'KANGAL', 58, 1431),
(622, 'KOYULHİSAR', 58, 1484),
(623, 'MERKEZ', 58, 1628),
(624, 'SUŞEHRİ', 58, 1646),
(625, 'ŞARKIŞLA', 58, 1650),
(626, 'ULAŞ', 58, 1991),
(627, 'YILDIZELİ', 58, 1731),
(628, 'ZARA', 58, 1738),
(629, 'ÇERKEZKÖY', 59, 1250),
(630, 'ÇORLU', 59, 1258),
(631, 'ERGENE', 59, 2094),
(632, 'HAYRABOLU', 59, 1388),
(633, 'KAPAKLI', 59, 2095),
(634, 'MALKARA', 59, 1511),
(635, 'MARMARAEREĞLİSİ', 59, 1825),
(636, 'MURATLI', 59, 1538),
(637, 'SARAY', 59, 1596),
(638, 'SÜLEYMANPAŞA', 59, 2096),
(639, 'ŞARKÖY', 59, 1652),
(640, 'ALMUS', 60, 1129),
(641, 'ARTOVA', 60, 1151),
(642, 'BAŞÇİFTLİK', 60, 1883),
(643, 'ERBAA', 60, 1308),
(644, 'MERKEZ', 60, 1679),
(645, 'NİKSAR', 60, 1545),
(646, 'PAZAR', 60, 1834),
(647, 'REŞADİYE', 60, 1584),
(648, 'SULUSARAY', 60, 1987),
(649, 'TURHAL', 60, 1690),
(650, 'YEŞİLYURT', 60, 1858),
(651, 'ZİLE', 60, 1740),
(652, 'AKÇAABAT', 61, 1113),
(653, 'ARAKLI', 61, 1141),
(654, 'ARSİN', 61, 1150),
(655, 'BEŞİKDÜZÜ', 61, 1775),
(656, 'ÇARŞIBAŞI', 61, 1896),
(657, 'ÇAYKARA', 61, 1244),
(658, 'DERNEKPAZARI', 61, 1909),
(659, 'DÜZKÖY', 61, 1917),
(660, 'HAYRAT', 61, 1942),
(661, 'KÖPRÜBAŞI', 61, 1966),
(662, 'MAÇKA', 61, 1507),
(663, 'OF', 61, 1548),
(664, 'ORTAHİSAR', 61, 2097),
(665, 'SÜRMENE', 61, 1647),
(666, 'ŞALPAZARI', 61, 1842),
(667, 'TONYA', 61, 1681),
(668, 'VAKFIKEBİR', 61, 1709),
(669, 'YOMRA', 61, 1732),
(670, 'ÇEMİŞGEZEK', 62, 1247),
(671, 'HOZAT', 62, 1397),
(672, 'MAZGİRT', 62, 1518),
(673, 'MERKEZ', 62, 1688),
(674, 'NAZIMİYE', 62, 1541),
(675, 'OVACIK', 62, 1562),
(676, 'PERTEK', 62, 1574),
(677, 'PÜLÜMÜR', 62, 1581),
(678, 'AKÇAKALE', 63, 1115),
(679, 'BİRECİK', 63, 1194),
(680, 'BOZOVA', 63, 1209),
(681, 'CEYLANPINAR', 63, 1220),
(682, 'EYYÜBİYE', 63, 2091),
(683, 'HALFETİ', 63, 1378),
(684, 'HALİLİYE', 63, 2092),
(685, 'HARRAN', 63, 1800),
(686, 'HİLVAN', 63, 1393),
(687, 'KARAKÖPRÜ', 63, 2093),
(688, 'SİVEREK', 63, 1630),
(689, 'SURUÇ', 63, 1643),
(690, 'VİRANŞEHİR', 63, 1713),
(691, 'BANAZ', 64, 1170),
(692, 'EŞME', 64, 1323),
(693, 'KARAHALLI', 64, 1436),
(694, 'MERKEZ', 64, 1704),
(695, 'SİVASLI', 64, 1629),
(696, 'ULUBEY', 64, 1697),
(697, 'BAHÇESARAY', 65, 1770),
(698, 'BAŞKALE', 65, 1175),
(699, 'ÇALDIRAN', 65, 1786),
(700, 'ÇATAK', 65, 1236),
(701, 'EDREMİT', 65, 1918),
(702, 'ERCİŞ', 65, 1309),
(703, 'GEVAŞ', 65, 1350),
(704, 'GÜRPINAR', 65, 1372),
(705, 'İPEKYOLU', 65, 2098),
(706, 'MURADİYE', 65, 1533),
(707, 'ÖZALP', 65, 1565),
(708, 'SARAY', 65, 1980),
(709, 'TUŞBA', 65, 2099),
(710, 'ALTINOVA', 77, 2019),
(711, 'ARMUTLU', 77, 2020),
(712, 'ÇINARCIK', 77, 2021),
(713, 'ÇİFTLİKKÖY', 77, 2022),
(714, 'MERKEZ', 77, 1716),
(715, 'TERMAL', 77, 2026),
(716, 'AKDAĞMADENİ', 66, 1117),
(717, 'AYDINCIK', 66, 1877),
(718, 'BOĞAZLIYAN', 66, 1198),
(719, 'ÇANDIR', 66, 1895),
(720, 'ÇAYIRALAN', 66, 1242),
(721, 'ÇEKEREK', 66, 1245),
(722, 'KADIŞEHRİ', 66, 1952),
(723, 'MERKEZ', 66, 1733),
(724, 'SARAYKENT', 66, 1982),
(725, 'SARIKAYA', 66, 1602),
(726, 'SORGUN', 66, 1635),
(727, 'ŞEFAATLİ', 66, 1655),
(728, 'YENİFAKILI', 66, 1998),
(729, 'YERKÖY', 66, 1726),
(730, 'ALAPLI', 67, 1758),
(731, 'ÇAYCUMA', 67, 1240),
(732, 'DEVREK', 67, 1276),
(733, 'EREĞLİ', 67, 1313),
(734, 'GÖKÇEBEY', 67, 1926),
(735, 'KİLİMLİ', 67, 2100),
(736, 'KOZLU', 67, 2101),
(737, 'MERKEZ', 67, 1741),
(738, 'AKÇAKOCA', 81, 1116),
(739, 'CUMAYERİ', 81, 1784),
(740, 'ÇİLİMLİ', 81, 1905),
(741, 'GÖLYAKA', 81, 1794),
(742, 'GÜMÜŞOVA', 81, 2017),
(743, 'KAYNAŞLI', 81, 2031),
(744, 'MERKEZ', 81, 1292),
(745, 'YIĞILCA', 81, 1730),
(746, 'ENEZ', 22, 1307),
(747, 'HAVSA', 22, 1385),
(748, 'İPSALA', 22, 1412),
(749, 'KEŞAN', 22, 1464),
(750, 'LALAPAŞA', 22, 1502),
(751, 'MERİÇ', 22, 1523),
(752, 'MERKEZ', 22, 1295),
(753, 'SÜLOĞLU', 22, 1988),
(754, 'UZUNKÖPRÜ', 22, 1705),
(755, 'AĞIN', 23, 1110),
(756, 'ALACAKAYA', 23, 1873),
(757, 'ARICAK', 23, 1762),
(758, 'BASKİL', 23, 1173),
(759, 'KARAKOÇAN', 23, 1438),
(760, 'KEBAN', 23, 1455),
(761, 'KOVANCILAR', 23, 1820),
(762, 'MADEN', 23, 1506),
(763, 'MERKEZ', 23, 1298),
(764, 'PALU', 23, 1566),
(765, 'SİVRİCE', 23, 1631),
(766, 'ÇAYIRLI', 24, 1243),
(767, 'İLİÇ', 24, 1406),
(768, 'KEMAH', 24, 1459),
(769, 'KEMALİYE', 24, 1460),
(770, 'MERKEZ', 24, 1318),
(771, 'OTLUKBELİ', 24, 1977),
(772, 'REFAHİYE', 24, 1583),
(773, 'TERCAN', 24, 1675),
(774, 'ÜZÜMLÜ', 24, 1853),
(775, 'AŞKALE', 25, 1153),
(776, 'AZİZİYE', 25, 1945),
(777, 'ÇAT', 25, 1235),
(778, 'HINIS', 25, 1392),
(779, 'HORASAN', 25, 1396),
(780, 'İSPİR', 25, 1416),
(781, 'KARAÇOBAN', 25, 1812),
(782, 'KARAYAZI', 25, 1444),
(783, 'KÖPRÜKÖY', 25, 1967),
(784, 'NARMAN', 25, 1540),
(785, 'OLTU', 25, 1550),
(786, 'OLUR', 25, 1551),
(787, 'PALANDÖKEN', 25, 2044),
(788, 'PASİNLER', 25, 1567),
(789, 'PAZARYOLU', 25, 1865),
(790, 'ŞENKAYA', 25, 1657),
(791, 'TEKMAN', 25, 1674),
(792, 'TORTUM', 25, 1683),
(793, 'UZUNDERE', 25, 1851),
(794, 'YAKUTİYE', 25, 2045),
(795, 'ALPU', 26, 1759),
(796, 'BEYLİKOVA', 26, 1777),
(797, 'ÇİFTELER', 26, 1255),
(798, 'GÜNYÜZÜ', 26, 1934),
(799, 'HAN', 26, 1939),
(800, 'İNÖNÜ', 26, 1808),
(801, 'MAHMUDİYE', 26, 1508),
(802, 'MİHALGAZİ', 26, 1973),
(803, 'MİHALIÇÇIK', 26, 1527),
(804, 'ODUNPAZARI', 26, 2046),
(805, 'SARICAKAYA', 26, 1599),
(806, 'SEYİTGAZİ', 26, 1618),
(807, 'SİVRİHİSAR', 26, 1632),
(808, 'TEPEBAŞI', 26, 2047),
(809, 'ARABAN', 27, 1139),
(810, 'İSLAHİYE', 27, 1415),
(811, 'KARKAMIŞ', 27, 1956),
(812, 'NİZİP', 27, 1546),
(813, 'NURDAĞI', 27, 1974),
(814, 'OĞUZELİ', 27, 1549),
(815, 'ŞAHİNBEY', 27, 1841),
(816, 'ŞEHİTKAMİL', 27, 1844),
(817, 'YAVUZELİ', 27, 1720),
(818, 'ALUCRA', 28, 1133),
(819, 'BULANCAK', 28, 1212),
(820, 'ÇAMOLUK', 28, 1893),
(821, 'ÇANAKÇI', 28, 1894),
(822, 'DERELİ', 28, 1272),
(823, 'DOĞANKENT', 28, 1912),
(824, 'ESPİYE', 28, 1320),
(825, 'EYNESİL', 28, 1324),
(826, 'GÖRELE', 28, 1361),
(827, 'GÜCE', 28, 1930),
(828, 'KEŞAP', 28, 1465),
(829, 'MERKEZ', 28, 1352),
(830, 'PİRAZİZ', 28, 1837),
(831, 'ŞEBİNKARAHİSAR', 28, 1654),
(832, 'TİREBOLU', 28, 1678),
(833, 'YAĞLIDERE', 28, 1854),
(834, 'KELKİT', 29, 1458),
(835, 'KÖSE', 29, 1822),
(836, 'KÜRTÜN', 29, 1971),
(837, 'MERKEZ', 29, 1369),
(838, 'ŞİRAN', 29, 1660),
(839, 'TORUL', 29, 1684),
(840, 'ÇUKURCA', 30, 1261),
(841, 'MERKEZ', 30, 1377),
(842, 'ŞEMDİNLİ', 30, 1656),
(843, 'YÜKSEKOVA', 30, 1737),
(844, 'ALTINÖZÜ', 31, 1131),
(845, 'ANTAKYA', 31, 2080),
(846, 'ARSUZ', 31, 2081),
(847, 'BELEN', 31, 1887),
(848, 'DEFNE', 31, 2082),
(849, 'DÖRTYOL', 31, 1289),
(850, 'ERZİN', 31, 1792),
(851, 'HASSA', 31, 1382),
(852, 'İSKENDERUN', 31, 1413),
(853, 'KIRIKHAN', 31, 1468),
(854, 'KUMLU', 31, 1970),
(855, 'PAYAS', 31, 2083),
(856, 'REYHANLI', 31, 1585),
(857, 'SAMANDAĞ', 31, 1591),
(858, 'YAYLADAĞI', 31, 1721),
(859, 'ARALIK', 76, 1142),
(860, 'KARAKOYUNLU', 76, 2011),
(861, 'MERKEZ', 76, 1398),
(862, 'TUZLUCA', 76, 1692),
(863, 'AKSU', 32, 1755),
(864, 'ATABEY', 32, 1154),
(865, 'EĞİRDİR', 32, 1297),
(866, 'GELENDOST', 32, 1341),
(867, 'GÖNEN', 32, 1929),
(868, 'KEÇİBORLU', 32, 1456),
(869, 'MERKEZ', 32, 1401),
(870, 'SENİRKENT', 32, 1615),
(871, 'SÜTÇÜLER', 32, 1648),
(872, 'ŞARKİKARAAĞAÇ', 32, 1651),
(873, 'ULUBORLU', 32, 1699),
(874, 'YALVAÇ', 32, 1717),
(875, 'YENİŞARBADEMLİ', 32, 2001),
(876, 'AFŞİN', 46, 1107),
(877, 'ANDIRIN', 46, 1136),
(878, 'ÇAĞLAYANCERİT', 46, 1785),
(879, 'DULKADİROĞLU', 46, 2084),
(880, 'EKİNÖZÜ', 46, 1919),
(881, 'ELBİSTAN', 46, 1299),
(882, 'GÖKSUN', 46, 1353),
(883, 'NURHAK', 46, 1975),
(884, 'ONİKİŞUBAT', 46, 2085),
(885, 'PAZARCIK', 46, 1570),
(886, 'TÜRKOĞLU', 46, 1694),
(887, 'EFLANİ', 78, 1296),
(888, 'ESKİPAZAR', 78, 1321),
(889, 'MERKEZ', 78, 1433),
(890, 'OVACIK', 78, 1561),
(891, 'SAFRANBOLU', 78, 1587),
(892, 'YENİCE', 78, 1856),
(893, 'AYRANCI', 70, 1768),
(894, 'BAŞYAYLA', 70, 1884),
(895, 'ERMENEK', 70, 1316),
(896, 'KAZIMKARABEKİR', 70, 1862),
(897, 'MERKEZ', 70, 1439),
(898, 'SARIVELİLER', 70, 1983),
(899, 'AKYAKA', 36, 1756),
(900, 'ARPAÇAY', 36, 1149),
(901, 'DİGOR', 36, 1279),
(902, 'KAĞIZMAN', 36, 1424),
(903, 'MERKEZ', 36, 1447),
(904, 'SARIKAMIŞ', 36, 1601),
(905, 'SELİM', 36, 1614),
(906, 'SUSUZ', 36, 1645),
(907, 'ABANA', 37, 1101),
(908, 'AĞLI', 37, 1867),
(909, 'ARAÇ', 37, 1140),
(910, 'AZDAVAY', 37, 1162),
(911, 'BOZKURT', 37, 1208),
(912, 'CİDE', 37, 1221),
(913, 'ÇATALZEYTİN', 37, 1238),
(914, 'DADAY', 37, 1264),
(915, 'DEVREKANİ', 37, 1277),
(916, 'DOĞANYURT', 37, 1915),
(917, 'HANÖNÜ', 37, 1940),
(918, 'İHSANGAZİ', 37, 1805),
(919, 'İNEBOLU', 37, 1410),
(920, 'KÜRE', 37, 1499),
(921, 'MERKEZ', 37, 1450),
(922, 'PINARBAŞI', 37, 1836),
(923, 'SEYDİLER', 37, 1984),
(924, 'ŞENPAZAR', 37, 1845),
(925, 'TAŞKÖPRÜ', 37, 1666),
(926, 'TOSYA', 37, 1685),
(927, 'AKKIŞLA', 38, 1752),
(928, 'BÜNYAN', 38, 1218),
(929, 'DEVELİ', 38, 1275),
(930, 'FELAHİYE', 38, 1330),
(931, 'HACILAR', 38, 1936),
(932, 'İNCESU', 38, 1409),
(933, 'KOCASİNAN', 38, 1863),
(934, 'MELİKGAZİ', 38, 1864),
(935, 'ÖZVATAN', 38, 1978),
(936, 'PINARBAŞI', 38, 1576),
(937, 'SARIOĞLAN', 38, 1603),
(938, 'SARIZ', 38, 1605),
(939, 'TALAS', 38, 1846),
(940, 'TOMARZA', 38, 1680),
(941, 'YAHYALI', 38, 1715),
(942, 'YEŞİLHİSAR', 38, 1727),
(943, 'ELBEYLİ', 79, 2023),
(944, 'MERKEZ', 79, 1476),
(945, 'MUSABEYLİ', 79, 2024),
(946, 'POLATELİ', 79, 2025),
(947, 'BAHŞİLİ', 71, 1880),
(948, 'BALIŞEYH', 71, 1882),
(949, 'ÇELEBİ', 71, 1901),
(950, 'DELİCE', 71, 1268),
(951, 'KARAKEÇİLİ', 71, 1954),
(952, 'KESKİN', 71, 1463),
(953, 'MERKEZ', 71, 1469),
(954, 'SULAKYURT', 71, 1638),
(955, 'YAHŞİHAN', 71, 1992),
(956, 'BABAESKİ', 39, 1163),
(957, 'DEMİRKÖY', 39, 1270),
(958, 'KOFÇAZ', 39, 1480),
(959, 'LÜLEBURGAZ', 39, 1505),
(960, 'MERKEZ', 39, 1471),
(961, 'PEHLİVANKÖY', 39, 1572),
(962, 'PINARHİSAR', 39, 1577),
(963, 'VİZE', 39, 1714),
(964, 'AKÇAKENT', 40, 1869),
(965, 'AKPINAR', 40, 1754),
(966, 'BOZTEPE', 40, 1890),
(967, 'ÇİÇEKDAĞI', 40, 1254),
(968, 'KAMAN', 40, 1429),
(969, 'MERKEZ', 40, 1472),
(970, 'MUCUR', 40, 1529);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `treatment`
--

CREATE TABLE `treatment` (
  `tre_ıd` int(11) NOT NULL,
  `tre_code` bigint(20) NOT NULL,
  `tre_dressing` varchar(255) DEFAULT NULL,
  `tre_lab` varchar(255) DEFAULT NULL,
  `tre_medicine` varchar(255) DEFAULT NULL,
  `tre_note` varchar(200) NOT NULL,
  `tre_operation` varchar(255) DEFAULT NULL,
  `tre_radiography` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `vaccine_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `treatment`
--

INSERT INTO `treatment` (`tre_ıd`, `tre_code`, `tre_dressing`, `tre_lab`, `tre_medicine`, `tre_note`, `tre_operation`, `tre_radiography`, `customer_id`, `patient_id`, `vaccine_id`) VALUES
(2, 448249614, 'Hayır', 'Kan Tahlili', 'Gıda Takviyesi', 'Teşhis-Deneme', 'Hayır', 'Röntgen', 9, 6, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `token_expired` bit(1) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_firm_name` varchar(255) DEFAULT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_phone` varchar(13) NOT NULL,
  `u_profile_image` varchar(255) DEFAULT NULL,
  `u_role_status` int(11) DEFAULT NULL,
  `u_surname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`u_id`, `enabled`, `token_expired`, `u_email`, `u_firm_name`, `u_name`, `u_password`, `u_phone`, `u_profile_image`, `u_role_status`, `u_surname`) VALUES
(1, b'1', b'1', 'eruyar123@gmail.com', 'Vet Klinik', 'EYÜP EYMEN', '$2a$10$AcE6UQ7FM3NE7Akk6Z4B/Or.VsX/ybNC8jQjPIPVo.CT88PN7B4K.', '05548398073', 'd97c857c-a7bd-4964-90d8-1cb150cae8bdk.jpg', 3, 'ERUYAR'),
(2, b'1', b'1', 'slymn@mail.com', 'Vet Klinik', 'Süleyman', '$2a$10$bfMwV9GnhBYpCqLUBzk3A.Y.sfwnNf5V2nYNuMEB/9l6uWYYI2h.C', '05550000000', 'defaultProfileImage.png', 3, 'KARACA'),
(3, b'1', b'1', 'veli@mail.com', 'Vet Klinik', 'Veli', '$2a$10$tdmLi9CbLFrP7MpKS/.M6.euEjOhQSfFGUgmcsCnFA5Zw37dNcU5y', '05533217575', 'defaultProfileImage.png', 1, 'Bilmem'),
(4, b'1', b'1', 'ali@mail.com', 'Vet Klinik', 'Ali', '$2a$10$a5h/n6h0YXTVGUw.MRHWfOjhq5bbxhh9nQn0kIay2fumZ6lXlUByW', '05540000098', 'defaultProfileImage.png', 1, 'Bilmem'),
(23, b'1', b'1', 'berat@mail.com', NULL, 'Berat', '$2a$10$8K2oQH3KswZej5y/4ik1lOEvG3u/0MPCP1ZoJ7B2XyO9X2jLYObiK', '05214697645', 'defaultProfileImage.png', 2, 'Yılmaz'),
(24, b'1', b'1', 'hakan@mail.com', NULL, 'Hakan', '$2a$10$CjLHQdAWzIj.rwwZkiad4u7N9VpTGlE31RYYFUyR42cnYz5gDdxxa', '05521346798', 'defaultProfileImage.png', 3, 'Özer');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

CREATE TABLE `user_roles` (
  `user_u_id` int(11) NOT NULL,
  `roles_rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `user_roles`
--

INSERT INTO `user_roles` (`user_u_id`, `roles_rid`) VALUES
(1, 3),
(2, 3),
(3, 1),
(4, 1),
(23, 2),
(24, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vaccine`
--

CREATE TABLE `vaccine` (
  `vaid` int(11) NOT NULL,
  `vac_barcode` bigint(20) NOT NULL,
  `vac_buying_price` int(11) NOT NULL,
  `vac_category` varchar(255) NOT NULL,
  `vac_code` bigint(20) NOT NULL,
  `vac_detail` varchar(300) NOT NULL,
  `vac_name` varchar(100) NOT NULL,
  `vac_quantity` int(11) NOT NULL,
  `vac_sales_price` int(11) NOT NULL,
  `vac_supplier` varchar(255) NOT NULL,
  `vac_tax` varchar(255) NOT NULL,
  `vac_type` varchar(255) NOT NULL,
  `vac_unit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `vaccine`
--

INSERT INTO `vaccine` (`vaid`, `vac_barcode`, `vac_buying_price`, `vac_category`, `vac_code`, `vac_detail`, `vac_name`, `vac_quantity`, `vac_sales_price`, `vac_supplier`, `vac_tax`, `vac_type`, `vac_unit`) VALUES
(0, 0, 0, '0', 0, '0', 'AŞI SEÇİMİ YOK', 0, 0, '0', '0', '0', '0'),
(2, 89898, 21, 'İç Parazit', 45646, 'Kuduz Aşısı ', 'Kuduz', 56, 100, '1', '3', 'Pet Aşı', 'Adet'),
(3, 5858, 100, 'Covid-19', 878989, 'Covid-19 Virüs Aşısı', 'Covid-19', 23, 150, '1', '2', 'Pet Aşı', 'Adet'),
(4, 444755, 75, 'Dış Parazit', 452219068, 'Hepatit-Detay', 'Hepatit', 50, 125, '1', '3', 'Pet Aşı', 'Adet');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `account_activities`
--
ALTER TABLE `account_activities`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Tablo için indeksler `buying`
--
ALTER TABLE `buying`
  ADD PRIMARY KEY (`buy_ıd`),
  ADD UNIQUE KEY `UK_ajo9w0l761mpl8lmrv6vfcajt` (`buy_receipt_no`),
  ADD KEY `FKn7q323r372pbgyr33rjl6ma49` (`supplier_id`),
  ADD KEY `FKr5yl7i4t2tjok347klgkihvn7` (`supplier_product_id`);

--
-- Tablo için indeksler `buying_payment`
--
ALTER TABLE `buying_payment`
  ADD PRIMARY KEY (`bu_id`),
  ADD KEY `FK7usxwk2c8jgbfoifrhrc077in` (`buying_id`);

--
-- Tablo için indeksler `calendar_info`
--
ALTER TABLE `calendar_info`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Tablo için indeksler `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`sehir_id`);

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cu_id`);

--
-- Tablo için indeksler `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`lab_id`),
  ADD KEY `FK1nkjfeo4xpp91bke62xugbea5` (`customer_cu_ıd`),
  ADD KEY `FKob35rnpjtu9k6spnrdlmqgy74` (`patient_pa_ıd`);

--
-- Tablo için indeksler `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pa_id`),
  ADD UNIQUE KEY `UK_sbbxe49dvxy3n9bisqpfrna7c` (`pa_air_tag_no`),
  ADD UNIQUE KEY `UK_rpe5leq2n23kgrjfjfkj9fpky` (`pa_chip_no`),
  ADD KEY `FKeescpa9s9raac78amq7u899fv` (`customer_cu_ıd`);

--
-- Tablo için indeksler `pay_in`
--
ALTER TABLE `pay_in`
  ADD PRIMARY KEY (`pin_ıd`),
  ADD KEY `FK6h4ok57iq6kx2vdtmpiq2kvdp` (`sales_id`);

--
-- Tablo için indeksler `pay_out`
--
ALTER TABLE `pay_out`
  ADD PRIMARY KEY (`po_ıd`),
  ADD KEY `FKlvgcuy015hhnp425v9vgk5jpo` (`buying_id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `UK_pjfarwpmm7f53yybhmca37eb8` (`pro_barcode`),
  ADD UNIQUE KEY `UK_s8oh53s1de2u40myx7dq0b9w1` (`pro_code`);

--
-- Tablo için indeksler `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rid`);

--
-- Tablo için indeksler `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sa_ıd`),
  ADD KEY `FK72ep16wuoj7nllumicmk2ie3s` (`customer_id`),
  ADD KEY `FKhy0ky20ikqq17uq0nbje677k3` (`patient_id`),
  ADD KEY `FKfcs4mjmgry6xchs16dv03eclp` (`product_id`),
  ADD KEY `FKm0obiygcsh64mkyjqsllgljnn` (`vaccine_id`);

--
-- Tablo için indeksler `sales_payment`
--
ALTER TABLE `sales_payment`
  ADD PRIMARY KEY (`sa_pa_ıd`),
  ADD KEY `FKjjoacbev74q3urnpy1uvn9ck1` (`sales_id`);

--
-- Tablo için indeksler `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  ADD PRIMARY KEY (`sid`);

--
-- Tablo için indeksler `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`stor_id`);

--
-- Tablo için indeksler `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sup_ıd`),
  ADD UNIQUE KEY `UK_emxn5ogb8008dxsetxvdjcyir` (`sup_email`),
  ADD UNIQUE KEY `UK_7uw0wilwm49edbuunagilhw1c` (`sup_name`),
  ADD UNIQUE KEY `UK_iet195vlobe4dilabounjgn0i` (`sup_phone`);

--
-- Tablo için indeksler `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD PRIMARY KEY (`sup_pro_ıd`),
  ADD KEY `FKkmiqp6ir4skkrgyk6ve0t2bpf` (`supllier_sup_ıd`);

--
-- Tablo için indeksler `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`ilce_id`);

--
-- Tablo için indeksler `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`tre_ıd`),
  ADD KEY `FKj5hjb4aur3hjx2fh3u0a06kwk` (`customer_id`),
  ADD KEY `FKjpqauh9f08891a82no3i8aq7o` (`patient_id`),
  ADD KEY `FKcy25iosbu91p1o0egejr51ybk` (`vaccine_id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `UK_16c3bxqq7t0jlm31mupreqntr` (`u_email`),
  ADD UNIQUE KEY `UK_rhndwes5dqdawv6wajmvl2h9x` (`u_phone`);

--
-- Tablo için indeksler `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `FKp6taepjm8nbj4doesmj3uj5jy` (`roles_rid`),
  ADD KEY `FK5ghpqug1hr8qfqjsbtmtgmf2n` (`user_u_id`);

--
-- Tablo için indeksler `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`vaid`),
  ADD UNIQUE KEY `UK_f4lqoj736cv454lieml9k4qg8` (`vac_barcode`),
  ADD UNIQUE KEY `UK_49cl8mh8cfxwupyl5ro5y8utu` (`vac_code`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `account_activities`
--
ALTER TABLE `account_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2004;

--
-- Tablo için AUTO_INCREMENT değeri `agenda`
--
ALTER TABLE `agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `buying`
--
ALTER TABLE `buying`
  MODIFY `buy_ıd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `buying_payment`
--
ALTER TABLE `buying_payment`
  MODIFY `bu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `calendar_info`
--
ALTER TABLE `calendar_info`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cities`
--
ALTER TABLE `cities`
  MODIFY `sehir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `cu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `lab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `patient`
--
ALTER TABLE `patient`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `pay_in`
--
ALTER TABLE `pay_in`
  MODIFY `pin_ıd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `pay_out`
--
ALTER TABLE `pay_out`
  MODIFY `po_ıd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `role`
--
ALTER TABLE `role`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `sales`
--
ALTER TABLE `sales`
  MODIFY `sa_ıd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `sales_payment`
--
ALTER TABLE `sales_payment`
  MODIFY `sa_pa_ıd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `storage`
--
ALTER TABLE `storage`
  MODIFY `stor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sup_ıd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `sup_pro_ıd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `towns`
--
ALTER TABLE `towns`
  MODIFY `ilce_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;

--
-- Tablo için AUTO_INCREMENT değeri `treatment`
--
ALTER TABLE `treatment`
  MODIFY `tre_ıd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `vaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `buying`
--
ALTER TABLE `buying`
  ADD CONSTRAINT `FKn7q323r372pbgyr33rjl6ma49` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`sup_ıd`),
  ADD CONSTRAINT `FKr5yl7i4t2tjok347klgkihvn7` FOREIGN KEY (`supplier_product_id`) REFERENCES `supplier_product` (`sup_pro_ıd`);

--
-- Tablo kısıtlamaları `buying_payment`
--
ALTER TABLE `buying_payment`
  ADD CONSTRAINT `FK7usxwk2c8jgbfoifrhrc077in` FOREIGN KEY (`buying_id`) REFERENCES `buying` (`buy_ıd`);

--
-- Tablo kısıtlamaları `laboratory`
--
ALTER TABLE `laboratory`
  ADD CONSTRAINT `FK1nkjfeo4xpp91bke62xugbea5` FOREIGN KEY (`customer_cu_ıd`) REFERENCES `customer` (`cu_id`),
  ADD CONSTRAINT `FKob35rnpjtu9k6spnrdlmqgy74` FOREIGN KEY (`patient_pa_ıd`) REFERENCES `patient` (`pa_id`);

--
-- Tablo kısıtlamaları `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `FKeescpa9s9raac78amq7u899fv` FOREIGN KEY (`customer_cu_ıd`) REFERENCES `customer` (`cu_id`);

--
-- Tablo kısıtlamaları `pay_in`
--
ALTER TABLE `pay_in`
  ADD CONSTRAINT `FK6h4ok57iq6kx2vdtmpiq2kvdp` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`sa_ıd`);

--
-- Tablo kısıtlamaları `pay_out`
--
ALTER TABLE `pay_out`
  ADD CONSTRAINT `FKlvgcuy015hhnp425v9vgk5jpo` FOREIGN KEY (`buying_id`) REFERENCES `buying` (`buy_ıd`);

--
-- Tablo kısıtlamaları `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `FK72ep16wuoj7nllumicmk2ie3s` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`cu_id`),
  ADD CONSTRAINT `FKfcs4mjmgry6xchs16dv03eclp` FOREIGN KEY (`product_id`) REFERENCES `product` (`pro_id`),
  ADD CONSTRAINT `FKhy0ky20ikqq17uq0nbje677k3` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`pa_id`),
  ADD CONSTRAINT `FKm0obiygcsh64mkyjqsllgljnn` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccine` (`vaid`);

--
-- Tablo kısıtlamaları `sales_payment`
--
ALTER TABLE `sales_payment`
  ADD CONSTRAINT `FKjjoacbev74q3urnpy1uvn9ck1` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`sa_ıd`);

--
-- Tablo kısıtlamaları `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD CONSTRAINT `FKkmiqp6ir4skkrgyk6ve0t2bpf` FOREIGN KEY (`supllier_sup_ıd`) REFERENCES `supplier` (`sup_ıd`);

--
-- Tablo kısıtlamaları `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `FKcy25iosbu91p1o0egejr51ybk` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccine` (`vaid`),
  ADD CONSTRAINT `FKj5hjb4aur3hjx2fh3u0a06kwk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`cu_id`),
  ADD CONSTRAINT `FKjpqauh9f08891a82no3i8aq7o` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`pa_id`);

--
-- Tablo kısıtlamaları `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FK5ghpqug1hr8qfqjsbtmtgmf2n` FOREIGN KEY (`user_u_id`) REFERENCES `user` (`u_id`),
  ADD CONSTRAINT `FKp6taepjm8nbj4doesmj3uj5jy` FOREIGN KEY (`roles_rid`) REFERENCES `role` (`rid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
