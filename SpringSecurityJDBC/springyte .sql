-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th4 02, 2021 lúc 07:16 AM
-- Phiên bản máy phục vụ: 8.0.21
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `springyte`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cautraloi`
--

DROP TABLE IF EXISTS `cautraloi`;
CREATE TABLE IF NOT EXISTS `cautraloi` (
  `id_cautraloi` int NOT NULL AUTO_INCREMENT,
  `maloai_ks` int NOT NULL,
  `id_nguoiks` int NOT NULL,
  `dapanradio` int NOT NULL,
  `dapantext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_cautraloi`),
  KEY `fk_maloai` (`maloai_ks`),
  KEY `fk_idks` (`id_nguoiks`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cautraloi`
--

INSERT INTO `cautraloi` (`id_cautraloi`, `maloai_ks`, `id_nguoiks`, `dapanradio`, `dapantext`) VALUES
(1, 1, 1, 2, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `phone`, `email`, `age`) VALUES
(1, 'cá', 'sấ', '56545214', 'asdfsd@gmail.com', 100),
(15, 'cá', 'sấ', '56545214', 'asdfsd@gmail.com', 100),
(28, 'Nghiem1', '', '01245444', '', 0),
(29, 'nghiem', '123456', 'Ã¡da', 'fsghj', 526);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketquakhaosat`
--

DROP TABLE IF EXISTS `ketquakhaosat`;
CREATE TABLE IF NOT EXISTS `ketquakhaosat` (
  `id_kq` int NOT NULL AUTO_INCREMENT,
  `tenbenhnhan` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `mabh` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `tenbenhvien` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngay` datetime(6) NOT NULL,
  `loaikhaosat` int NOT NULL,
  `cautraloi` int NOT NULL,
  PRIMARY KEY (`id_kq`),
  KEY `loaikhaosat` (`loaikhaosat`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ketquakhaosat`
--

INSERT INTO `ketquakhaosat` (`id_kq`, `tenbenhnhan`, `mabh`, `tenbenhvien`, `ngay`, `loaikhaosat`, `cautraloi`) VALUES
(1, 'gghhhhhhh', 'nhhhh', 'cc', '2021-04-22 00:00:00.000000', 1, 1),
(6, 'hj', 'hj8888', 'tg', '2021-03-31 00:00:00.000000', 1, 1),
(5, 'hj', 'hj8888', 'tg', '2021-03-31 00:00:00.000000', 1, 1),
(8, 'heo', 'hh123', 'tg', '2021-04-02 00:00:00.000000', 0, 1),
(9, 'gghhhhhhh', 'nhhhh', 'tg', '2021-04-14 00:00:00.000000', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loai` (`loai`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `question`, `loai`) VALUES
(1, 'Hey Bro Khỏe Không ???', 1),
(2, 'Hey Bro Khỏe Không ???', 2),
(3, 'nội trú hay gì ??', 1),
(4, 'ngoại trú hay gì ??', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `survey`
--

DROP TABLE IF EXISTS `survey`;
CREATE TABLE IF NOT EXISTS `survey` (
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maloai` int NOT NULL AUTO_INCREMENT,
  `times` datetime(6) NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `survey`
--

INSERT INTO `survey` (`name`, `maloai`, `times`) VALUES
('Khảo Sát Nội Trú', 1, '2021-03-30 23:09:19.000000'),
('Khảo Sát Ngoại Trú', 2, '2021-04-01 23:27:56.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` int NOT NULL,
  `enabled` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `phone`, `name`, `age`, `address`, `email`, `role`, `enabled`) VALUES
(2, 'nghiem', '{noop}123456', 1, 'Nghiêm Trần', 22, 'Tiền Giang', 'tranhuunghiem12@gmail.com', 1, 1),
(1, 'adminnghiem', '{noop}admin123', 1, 'Nghiêm ;:\"))', 22, 'TG', 'tranhuunghiem48@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE IF NOT EXISTS `users_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` int DEFAULT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `_idx` (`user`),
  KEY `dfdf_idx` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_roles`
--

INSERT INTO `users_roles` (`id`, `user`, `role`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
