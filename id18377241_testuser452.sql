-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2023 at 01:15 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18377241_testuser452`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `keys_id` varchar(33) DEFAULT NULL,
  `user_do` varchar(33) DEFAULT NULL,
  `info` mediumtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_history`, `keys_id`, `user_do`, `info`, `created_at`, `updated_at`) VALUES
(1, '1', 'admin', 'PUBG|rgVIH|1|1', '2023-04-16 20:11:02', '2023-04-16 20:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `keys_code`
--

CREATE TABLE `keys_code` (
  `id_keys` int(11) NOT NULL,
  `game` varchar(32) NOT NULL,
  `user_key` varchar(32) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `expired_date` datetime DEFAULT NULL,
  `max_devices` int(11) DEFAULT NULL,
  `devices` mediumtext DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `registrator` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys_code`
--

INSERT INTO `keys_code` (`id_keys`, `game`, `user_key`, `duration`, `expired_date`, `max_devices`, `devices`, `status`, `registrator`, `created_at`, `updated_at`) VALUES
(1, 'PUBG', 'rgVIH1b0Z3YvQRmSxNkh', 1, NULL, 1, NULL, 1, 'admin', '2023-04-16 20:11:02', '2023-04-16 20:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `modname`
--

CREATE TABLE `modname` (
  `id` int(11) NOT NULL,
  `modname` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modname`
--

INSERT INTO `modname` (`id`, `modname`) VALUES
(1, 'Classified Dev');

-- --------------------------------------------------------

--
-- Table structure for table `onoff`
--

CREATE TABLE `onoff` (
  `id` int(11) NOT NULL,
  `status` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `myinput` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `onoff`
--

INSERT INTO `onoff` (`id`, `status`, `myinput`) VALUES
(11, 'on', 'Classified Dev');

-- --------------------------------------------------------

--
-- Table structure for table `referral_code`
--

CREATE TABLE `referral_code` (
  `id_reff` int(11) NOT NULL,
  `code` varchar(128) DEFAULT NULL,
  `set_saldo` int(11) DEFAULT NULL,
  `used_by` varchar(66) DEFAULT NULL,
  `created_by` varchar(66) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `fullname` varchar(155) DEFAULT NULL,
  `username` varchar(66) NOT NULL,
  `level` int(11) DEFAULT 2,
  `saldo` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `uplink` varchar(66) DEFAULT NULL,
  `password` varchar(155) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `fullname`, `username`, `level`, `saldo`, `status`, `uplink`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 1, 2147447641, 1, 'admin', '$2y$08$/CsSVgrGgCqVcievCuR2COPnlMIpRz6kA.hzItBD/xd1Cx0hj0kMK', '2021-07-28 17:43:57', '2023-04-16 20:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `_ftext`
--

CREATE TABLE `_ftext` (
  `id` int(11) NOT NULL,
  `_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_ftext` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `_ftext`
--

INSERT INTO `_ftext` (`id`, `_status`, `_ftext`) VALUES
(1, 'Safe', 'Classified Dev');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `keys_code`
--
ALTER TABLE `keys_code`
  ADD PRIMARY KEY (`id_keys`),
  ADD UNIQUE KEY `user_key` (`user_key`);

--
-- Indexes for table `modname`
--
ALTER TABLE `modname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onoff`
--
ALTER TABLE `onoff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_code`
--
ALTER TABLE `referral_code`
  ADD PRIMARY KEY (`id_reff`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `_ftext`
--
ALTER TABLE `_ftext`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keys_code`
--
ALTER TABLE `keys_code`
  MODIFY `id_keys` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modname`
--
ALTER TABLE `modname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `onoff`
--
ALTER TABLE `onoff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `referral_code`
--
ALTER TABLE `referral_code`
  MODIFY `id_reff` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_ftext`
--
ALTER TABLE `_ftext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
