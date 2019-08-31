-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2019 at 11:45 AM
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
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `create_at`, `update_at`) VALUES
(1, 'zay', 'test@mm.com', 'hello', '2019-08-05 10:23:03', '0000-00-00 00:00:00'),
(2, 'kyaw kayw', 'kyaw@mm.com', 'kyaw kyaw khaing', '2019-08-05 18:10:14', '0000-00-00 00:00:00');

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
(1, 'Style One(5000 Kyats)', 5000, '2019-08-01 00:00:00', '2019-08-05 09:24:43'),
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
  `hair_cut_price` float NOT NULL,
  `hair_color_price` float NOT NULL,
  `hair_care_price` float NOT NULL,
  `bdate` varchar(255) NOT NULL,
  `btime` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `stylist_id`, `hair_cut_price`, `hair_color_price`, `hair_care_price`, `bdate`, `btime`, `status`, `create_at`, `update_at`) VALUES
(1, '2', '1', 5000, 6000, 3000, '08-31-2019', '9:30AM', 1, '2019-08-06 14:11:13', '2019-08-06 14:16:38'),
(2, '2', '1', 5000, 6000, 3000, '08-31-2019', '9:30AM', 1, '2019-08-28 21:56:44', '2019-08-28 21:58:00'),
(3, '2', '1', 6000, 6000, 3000, '08-31-2019', '10:30AM', 1, '2019-08-28 21:59:19', '2019-08-28 22:01:37'),
(4, '2', '1', 6000, 0, 0, '08-31-2019', '9:30AM', 1, '2019-08-28 22:00:10', '2019-08-28 22:01:42'),
(5, '2', '1', 6000, 0, 0, '08-31-2019', '9:30AM', 1, '2019-08-28 22:00:27', '2019-08-28 22:01:45'),
(6, '2', '1', 6000, 0, 0, '08-31-2019', '9:30AM', 1, '2019-08-28 22:00:45', '2019-08-28 22:01:48'),
(7, '2', '1', 5000, 0, 0, '08-31-2019', '9:30AM', 1, '2019-08-28 22:01:14', '2019-08-28 22:01:54'),
(8, '2', '3', 5000, 0, 0, '08-31-2019', '9:30AM', 0, '2019-08-30 11:11:30', '2019-08-30 11:11:30'),
(9, '2', '3', 5000, 0, 0, '08-31-2019', '10:30AM', 0, '2019-08-30 11:37:26', '2019-08-30 11:37:26'),
(10, '2', '3', 5000, 0, 0, '08-30-2019', '9:30AM', 0, '2019-08-30 11:41:48', '2019-08-30 11:41:48'),
(11, '2', '1', 5000, 0, 0, '08-30-2019', '9:30AM', 0, '2019-08-30 17:37:26', '2019-08-30 17:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `total` float NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `total`, `create_at`, `update_at`) VALUES
(1, '2', 80000, '2019-08-04 23:52:45', '2019-08-06 14:15:57'),
(2, '8', 12000, '2019-08-05 19:39:21', '2019-08-05 19:39:21');

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
(5, 'Hair Style 5', 3, '12_1564328151.jpg', 0, '2019-07-28 22:05:51', '2019-08-05 19:29:40'),
(6, 'Testing', 1, '18_1565010106.jpg', 0, '2019-08-05 19:31:25', '2019-08-05 19:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `stylists`
--

CREATE TABLE `stylists` (
  `id` int(11) NOT NULL,
  `stylist_name` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `bimage` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stylists`
--

INSERT INTO `stylists` (`id`, `stylist_name`, `remark`, `bimage`, `create_at`, `update_at`) VALUES
(1, 'Style List One', '                                                                        ', '14_1564913571.png', '2019-07-28 00:00:00', '2019-08-05 18:06:46'),
(2, 'Style List Two', '                                                                     hi                                            ', '10_1564913767.jpg', '2019-07-28 00:26:57', '2019-08-05 18:06:58'),
(3, 'Style List Three', '                                          hi3                          ', '11_1564913779.jpg', '2019-07-28 00:35:24', '2019-08-05 18:07:08'),
(4, 'Style List Four', '                                           hi4                         ', '12_1564913789.jpg', '2019-07-28 00:35:47', '2019-08-05 18:07:19');

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
(2, 'user1', 'user1@mm.com', '', '$2y$10$Bsf5LXkdNRlNvqwsi1nJsuY8ytHuTrRo6k1N4X0U4oiWZq1NdCCKW', 'diamond', '2019-07-27 00:14:26', '2019-08-28 22:01:54'),
(6, 'kyaw', 'kyaw@gmail.com', '0987654321', '$2y$10$36V/NUtJU24DMfp8rTmjNurEyCy4bjI1i2LZHAvH.QI8zJS9bbohG', 'bronze', '2019-08-05 18:08:16', '2019-08-05 18:08:16'),
(7, 'tster', 'tester@gmail.com', '0987654321', '$2y$10$/FD5zwlQwCl8YJKFEOEea.Hhrye1R7SzV20xV71IKX35YIExMd8FS', 'bronze', '2019-08-05 18:48:08', '2019-08-05 18:48:08'),
(8, 'testuser', 'testuser@mm.com', '123456', '$2y$10$G7C9utp6sx08P.oGKW1neuIlg/RtLLB1z/fzTEZ88RBnXOKLHnF7y', 'silver', '2019-08-05 19:36:23', '2019-08-05 19:39:55'),
(9, 'p1user', 'p1@mm.com', '09123456', '$2y$10$sVCgcQJpDSfhnbLTfWsNUud.KiFICNDOSbtR7komzrZ8hyRk48upS', 'bronze', '2019-08-31 13:56:32', '2019-08-31 13:56:32'),
(10, 'p2user', 'p2@mm.com', '123456', '$2y$10$u7544.Qg0VWCTC92PpjXa.RtmNvdld0NapbooPMmXPnpA36tIefBu', 'bronze', '2019-08-31 14:04:34', '2019-08-31 14:04:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `points`
--
ALTER TABLE `points`
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
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stylists`
--
ALTER TABLE `stylists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
