-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-06-08 11:02:37
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `petstore`
--

-- --------------------------------------------------------

--
-- 資料表結構 `animal`
--

CREATE TABLE `animal` (
  `id` bigint(10) UNSIGNED NOT NULL COMMENT 'ID',
  `type_id` int(10) UNSIGNED NOT NULL COMMENT '動物分類',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '動物的暱稱',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在地區',
  `fix` tinyint(1) NOT NULL DEFAULT 0 COMMENT '結紮情形(default 0)',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '簡單敘述',
  `personality` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '動物個性',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '新建時間',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
