-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Час створення: Чрв 19 2019 р., 08:15
-- Версія сервера: 8.0.13-4
-- Версія PHP: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Структура таблиці `SecondScreen`
--

CREATE TABLE `SecondScreen` (
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `imageTitle` text COLLATE utf8_unicode_ci NOT NULL,
  `jumpTo` int(11) NOT NULL,
  `Type` enum('Комп''ютери','Телефони','Ноутбуки','Програмне забезпечення','Периферія') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `SecondScreen`
--

INSERT INTO `SecondScreen` (`name`, `price`, `imageTitle`, `jumpTo`, `Type`) VALUES
('Global Version UMIDIGI A5 PRO Android 9.0 Octa Core 6.3\' FHD Waterdrop 4GB RAM 4G', 99.99, 'Global-Version-UMIDIGI-A5-PRO-Android-9-0-Octa-Core-6-3-FHD-Waterdrop-16MP-Triple.jpg_220x220xz', 1, 'Телефони'),
('Global Version Xiaomi Redmi Note 7 4GB 64GB Smartphone Snapdragon 660 Octa Core', 224.99, 'Global-Version-Xiaomi-Redmi-Note-7-4GB-64GB-Smartphone-Snapdragon-660-Octa-Core-4000mAh-2340-x.jpg_220x220xz', 2, 'Телефони'),
('Global Version Xiaomi Redmi 7 3GB RAM 32GB ROM Mobile Phone Snapdragon 632 Octa Core', 148.99, 'In-Stock-Global-Version-Xiaomi-Redmi-7-3GB-RAM-32GB-ROM-Mobile-Phone-Snapdragon-632-Octa.jpg_220x220xz', 3, 'Телефони'),
('Global ROM Xiaomi Redmi Note 7 4GB 64GB Telephone Snapdragon 660 Octa Core 4000mAh', 208.99, 'Global-ROM-Xiaomi-Redmi-Note-7-4GB-64GB-Telephone-Snapdragon-660-Octa-Core-4000mAh-6-3.jpg_220x220xz', 4, 'Телефони'),
('Blackview A60 Smartphone Quad Core Android 8.1 4080mAh Cellphone 1GB 16GB 6.1 inch', 59.99, 'Blackview-A60-Smartphone-Quad-Core-Android-8-1-4080mAh-Cellphone-1GB-16GB-6-1-inch-19.jpg_220x220xz', 5, 'Телефони'),
('Global Version Meizu Note 9 4GB 64GB Smartphone Snapdragon 675 Octa Core Note9 6.2', 215.38, 'Global-Version-Meizu-Note-9-4GB-64GB-Smartphone-Snapdragon-675-Octa-Core-Note9-6-2-48MP.jpg_220x220xz', 6, 'Телефони');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `SecondScreen`
--
ALTER TABLE `SecondScreen`
  ADD UNIQUE KEY `jumpTo` (`jumpTo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
