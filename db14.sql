-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-12-09 00:43:23
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db14`
--

-- --------------------------------------------------------

--
-- 資料表結構 `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `ads`
--

INSERT INTO `ads` (`id`, `text`, `sh`) VALUES
(16, '轉知臺北教育大學與臺灣師大合辦第11屆麋研齋全國硬筆書法比賽活動', 1),
(17, '轉知:法務部辦理「第五屆法規知識王網路闖關競賽辦法', 1),
(18, '轉知2012年全國青年水墨創作大賽活動', 1),
(21, '欣榮圖書館101年悅讀達人徵文比賽，歡迎全校師生踴躍投稿參加', 1),
(23, '轉知:教育是人類升沉的樞紐-2013教師生命成長營', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `text` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `images`
--

INSERT INTO `images` (`id`, `img`, `text`, `sh`) VALUES
(1, '01D01.jpg', '', 1),
(2, '01D02.jpg', '', 1),
(3, '01D03.jpg', '', 1),
(4, '01D04.jpg', '', 1),
(5, '01D05.jpg', '', 1),
(6, '01D06.jpg', '', 1),
(7, '01D07.jpg', '', 1),
(8, '01D08.jpg', '', 1),
(9, '01D09.jpg', '', 1),
(10, '01D10.jpg', '', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `mvims`
--

CREATE TABLE `mvims` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `text` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `mvims`
--

INSERT INTO `mvims` (`id`, `img`, `text`, `sh`) VALUES
(1, '01C01.gif', '', 1),
(2, '01C02.gif', '', 1),
(3, '01C03.gif', '', 1),
(5, '01C04.gif', '', 1),
(6, '01C05.gif', '', 1),
(7, '01C06.gif', '', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `titles`
--

CREATE TABLE `titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `text` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `titles`
--

INSERT INTO `titles` (`id`, `img`, `text`, `sh`) VALUES
(1, '01B01.jpg', '卓越科技大學校園資訊系統', 1),
(2, '01B02.jpg', '卓越科技大學校園資訊系統', 0),
(10, '01B03.jpg', '卓越科技大學校園資訊系統', 0),
(13, '01B04.jpg', '卓越科技大學校園資訊系統', 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mvims`
--
ALTER TABLE `mvims`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mvims`
--
ALTER TABLE `mvims`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
