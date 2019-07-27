-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 10:01 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hair_salon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `stylist_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `stylist_id`, `image`, `price`, `create_at`, `update_at`) VALUES
(1, 'Hair Style1', 1, '6_1564256434.jpg', 5000, '2019-07-28 00:00:00', '2019-07-28 02:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `stylists`
--

CREATE TABLE `stylists` (
  `id` int(11) NOT NULL,
  `stylist_name` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stylists`
--

INSERT INTO `stylists` (`id`, `stylist_name`, `remark`, `create_at`, `update_at`) VALUES
(1, 'Barber One', '', '2019-07-28 00:00:00', '2019-07-28 00:00:00'),
(2, 'Barber Two', '                     hi2                     ', '2019-07-28 00:26:57', '2019-07-28 00:33:22'),
(3, 'Barber Three', '          hi3          ', '2019-07-28 00:35:24', '2019-07-28 00:35:24'),
(4, 'Barber Four', '           hi4         ', '2019-07-28 00:35:47', '2019-07-28 00:35:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `create_at`, `update_at`) VALUES
(1, 'admin', 'admin@mm.com', '$2y$10$yCSzRYxxdQ/Ep8Lykt7yROZkvRsKUrZ1jpGJFfSrYlht0KRLeKx/K', 'admin', '2019-07-26 23:59:59', '2019-07-26 23:59:59'),
(2, 'user1', 'user1@mm.com', '$2y$10$Bsf5LXkdNRlNvqwsi1nJsuY8ytHuTrRo6k1N4X0U4oiWZq1NdCCKW', 'bronze', '2019-07-27 00:14:26', '2019-07-27 00:14:26'),
(3, 'user2', 'user2@mm.com', '$2y$10$a5clAfBBrw0kjaW6856ZvO04m2aLjJ1iHaPoFmix31N5CJKrFmmUC', 'bronze', '2019-07-27 22:40:08', '2019-07-27 22:40:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stylists`
--
ALTER TABLE `stylists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stylists`
--
ALTER TABLE `stylists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
