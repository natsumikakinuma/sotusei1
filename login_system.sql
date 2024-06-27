-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2024 年 6 月 27 日 20:53
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `login_system`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_first_login` tinyint(1) DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `hair_type` varchar(255) DEFAULT NULL,
  `hair_thickness` varchar(255) DEFAULT NULL,
  `hair_density` varchar(255) DEFAULT NULL,
  `scalp_condition` varchar(255) DEFAULT NULL,
  `coloring_history` text DEFAULT NULL,
  `current_hair_color` varchar(255) DEFAULT NULL,
  `coloring_date` date DEFAULT NULL,
  `used_color` varchar(255) DEFAULT NULL,
  `color_durability` varchar(255) DEFAULT NULL,
  `black_dye_history` text DEFAULT NULL,
  `black_dye_date` date DEFAULT NULL,
  `used_product` varchar(255) DEFAULT NULL,
  `perm_history` text DEFAULT NULL,
  `perm_type` varchar(255) DEFAULT NULL,
  `perm_date` date DEFAULT NULL,
  `perm_effect_duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `is_first_login`, `name`, `gender`, `age`, `contact`, `hair_type`, `hair_thickness`, `hair_density`, `scalp_condition`, `coloring_history`, `current_hair_color`, `coloring_date`, `used_color`, `color_durability`, `black_dye_history`, `black_dye_date`, `used_product`, `perm_history`, `perm_type`, `perm_date`, `perm_effect_duration`) VALUES
(1, '', 'あああ', '$2y$10$SYAKLWOYqPd2OslmqFbd7.R6Y8IW/h45XXv6gVn3zU0k4SOgD/AqG', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'いいい', '$2y$10$crl98pNCwsoB50./aP9YRORB.VezlcJ7/jn89.aEW8p43rrAQOrZ6', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'aaa.aaa@aaa', 'aaa', '$2y$10$o5ArAbuManWx.RRCg..Mq.MT168JCi4y7ZbD9ZKh0GZZ4Ua2l7Hqq', 0, 'a', 'a', 1, 'a', 'a', 'a', 'a', 'a', 'a', 'a', '2024-06-27', 'a', 'a', 'a', '2024-06-27', 'a', 'a', 'a', '2024-06-27', 'a'),
(4, 'ooo.ooo@ooo', 'おおお', '$2y$10$boovzmwryl9wVyX8WVTKEe86syP7u9TgrM2Kr5o5pzJABDgvgo84e', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'iii@iii.iii', 'iii', '$2y$10$Za2W.Lh982D334jFNx0lNObHxfaI/bR7VsARHu3tHX9KUegg9Kpa2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'aaa@aaa.aaa', 'aaa', '$2y$10$tUYj5H1IhFzA4Zxc2NYnAOtMQletJm3r757nVNHS4.QtOec4Oayhe', 0, 'a', 'a', 1, 'a', 'a', 'a', 'a', 'a', 'a', 'a', '2024-06-27', 'a', 'a', 'a', '2024-06-27', 'a', 'a', 'a', '2024-06-27', 'a'),
(7, 'iii@iii.iii', 'iii', '$2y$10$bX5Eca3jiIwIGhRKOU4WIe67pT1GWPHuNwnOzDvgCmaA7WxmShvom', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'aaa@aaa', 'aaa', '$2y$10$O0R1mVZT6fAW6l5BU6FY5e.YkejG8JtVFVA9GgY3XqEBIetING34y', 0, 'a', 'a', 1, 'a', 'a', 'a', 'a', 'a', 'a', 'a', '2024-06-27', 'a', 'a', 'a', '2024-06-27', 'a', 'a', 'a', '2024-06-27', 'a'),
(9, 'uuu@uuu', 'uuu', '$2y$10$xWu2xbhmFD9hjekEKV.VcOalldOcsnjF1kEZHbtDwpyocv77ec.NK', 0, 'uuu', 'uuu', 1, 'uuu', 'uuu', 'uuu', 'uuu', 'uuu', 'uuu', 'uuu', '2024-06-27', 'uuu', 'uuu', 'uuu', '2024-06-27', 'uuu', 'uuu', 'uuu', '2024-06-27', 'uuu'),
(10, 'eee@eee.eee', 'eee', '$2y$10$GuzYKf.OLRkps5xzY.mfQeq9bB5.hS13RpVVXOCqhe8d3rCB.qpSO', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'ooo@ooo', 'ooo', '$2y$10$C4i2JeFnp.Yf8Ym.D38HguH2kvMvEIj7qSF.hYTX6kxi975quX9ta', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'kkk@kkk', 'kkk', '$2y$10$mS6Ii6WA3Pv8vseRYkH1Duk0MQvej5slkVnd.hXh/JtkPvGX1lvwW', 0, 'k', 'k', 1, '1', 'k', 'k', 'k', 'k', 'k', 'k', '2024-06-27', 'k', 'k', 'k', '2024-06-27', 'k', 'k', 'k', '2024-06-27', 'k'),
(13, 'nnn@nnn', 'nnn', '$2y$10$dtYOTlm2lGxS0XRB404PDuT286lsyxe0D0hcOk8V70Bj5O80bRh6S', 0, 'nnn', '1', 1, '1', 'n', 'n', 'n', 'n', 'n', 'n', '2024-06-21', 'n', 'n', 'n', '2024-06-20', 'n', 'n', 'n', '2024-06-27', 'n'),
(14, 'lll@lll', 'lll', '$2y$10$cTERLjTZQUcrSUT3SCw4gefnc1k5zLtDxHKtws8PrblEwKuSqNMFS', 0, 'l', 'l', 1, 'l', 'l', 'l', 'l', 'l', 'l', 'l', '2024-06-27', 'l', 'l', 'l', '2024-06-19', 'l', 'l', 'l', '2024-06-14', 'l');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
