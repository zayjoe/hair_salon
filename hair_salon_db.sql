-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2019 at 08:51 AM
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
-- Table structure for table `hair_care`
--

CREATE TABLE `hair_care` (
  `id` int(11) NOT NULL,
  `hair_care_option` varchar(255) NOT NULL,
  `hair_care_price` float NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hair_care`
--

INSERT INTO `hair_care` (`id`, `hair_care_option`, `hair_care_price`, `create_at`, `update_at`) VALUES
(1, 'YES', 3000, '2019-08-01 00:00:00', '2019-08-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hair_color`
--

CREATE TABLE `hair_color` (
  `id` int(11) NOT NULL,
  `hair_color_title` varchar(255) NOT NULL,
  `hair_color_price` float NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hair_color`
--

INSERT INTO `hair_color` (`id`, `hair_color_title`, `hair_color_price`, `create_at`, `update_at`) VALUES
(1, 'RED(6000 Kyats)', 6000, '2019-08-01 00:00:00', '2019-08-01 00:00:00'),
(2, 'GREEN(5500 Kyats)', 5500, '2019-08-01 00:00:00', '2019-08-01 00:00:00'),
(3, 'BLUE(5000 Kyats)', 5000, '2019-08-01 00:00:00', '2019-08-01 00:00:00'),
(4, 'BLACK(5000 Kyats)', 5000, '2019-08-01 00:00:00', '2019-08-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hair_cut`
--

CREATE TABLE `hair_cut` (
  `id` int(11) NOT NULL,
  `hair_cut_title` varchar(255) NOT NULL,
  `hair_cut_price` float NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hair_cut`
--

INSERT INTO `hair_cut` (`id`, `hair_cut_title`, `hair_cut_price`, `create_at`, `update_at`) VALUES
(1, 'Style One(5000 Kyats)', 5000, '2019-08-01 00:00:00', '2019-08-01 00:00:00'),
(2, 'Style Two(6000 Kyats)', 6000, '2019-08-02 00:00:00', '2019-08-01 00:00:00'),
(3, 'Style Three(5000 Kyats)', 5000, '2019-08-01 00:00:00', '2019-08-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `stylist_id` varchar(255) NOT NULL,
  `hair_cut_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'Hair Style1', 1, '6_1564256434.jpg', 5000, '2019-07-28 00:00:00', '2019-07-28 02:10:34'),
(2, 'Hair Style2', 1, '4_1564327079.jpg', 5500, '2019-07-28 21:47:59', '2019-07-28 21:47:59'),
(3, 'Hair Style 3', 1, '2_1564328035.jpg', 5000, '2019-07-28 22:03:55', '2019-07-28 22:03:55'),
(4, 'Hair Style 4', 1, '9_1564328100.jpg', 500, '2019-07-28 22:04:16', '2019-07-28 22:05:00'),
(5, 'Hair Style 5', 2, '12_1564328151.jpg', 5500, '2019-07-28 22:05:51', '2019-07-28 22:05:51');

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
  `phone` varchar(255) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `create_at`, `update_at`) VALUES
(1, 'admin', 'admin@mm.com', '', '$2y$10$yCSzRYxxdQ/Ep8Lykt7yROZkvRsKUrZ1jpGJFfSrYlht0KRLeKx/K', 'admin', '2019-07-26 23:59:59', '2019-07-26 23:59:59'),
(2, 'user1', 'user1@mm.com', '', '$2y$10$Bsf5LXkdNRlNvqwsi1nJsuY8ytHuTrRo6k1N4X0U4oiWZq1NdCCKW', 'bronze', '2019-07-27 00:14:26', '2019-07-27 00:14:26'),
(3, 'user2', 'user22@mm.com', '', '$2y$10$a5clAfBBrw0kjaW6856ZvO04m2aLjJ1iHaPoFmix31N5CJKrFmmUC', 'silver', '2019-07-27 22:40:08', '2019-07-28 22:28:51'),
(4, 'user3', 'user3@mm.com', '0997777', '$2y$10$XcaLKLreQL4YReitv5Y.heTjI6tGfLBZhMXkqkbUjcYsVm67.tP7y', 'bronze', '2019-08-04 11:02:54', '2019-08-04 11:02:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hair_care`
--
ALTER TABLE `hair_care`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hair_color`
--
ALTER TABLE `hair_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hair_cut`
--
ALTER TABLE `hair_cut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `hair_care`
--
ALTER TABLE `hair_care`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hair_color`
--
ALTER TABLE `hair_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hair_cut`
--
ALTER TABLE `hair_cut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stylists`
--
ALTER TABLE `stylists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
