-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 23, 2024 at 08:26 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u901267388_earning_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '$2y$10$dsfd/DfmRArUm.InZTTNBuaRoD8.0hnQ9SkZd90ipXsohmDzqpeca', '2024-03-14 18:05:06', '2024-10-16 11:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `user_id`, `account_holder_name`, `bank_name`, `account_number`, `ifsc`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Doe 2', 'HDFC Bank', '123456789', 'HDFC1234', '2024-11-19 18:35:07', '2024-12-08 20:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `bid_history`
--

CREATE TABLE `bid_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `digit` varchar(255) DEFAULT NULL,
  `game_id` varchar(255) DEFAULT NULL,
  `play_game_id` int(11) DEFAULT NULL,
  `game_type` varchar(255) DEFAULT NULL,
  `odd_even` varchar(11) DEFAULT NULL,
  `sp_dp_tp` varchar(10) DEFAULT NULL,
  `play_type` varchar(255) DEFAULT NULL,
  `response` varbinary(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0=pending,1=win,2=lose',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bid_history`
--

INSERT INTO `bid_history` (`id`, `user_id`, `amount`, `number`, `digit`, `game_id`, `play_game_id`, `game_type`, `odd_even`, `sp_dp_tp`, `play_type`, `response`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '112', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(2, 6, 1, '113', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(3, 6, 1, '114', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(4, 6, 1, '115', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(5, 6, 1, '122', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(6, 6, 1, '133', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(7, 6, 1, '144', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(8, 6, 1, '155', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(9, 6, 1, '223', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(10, 6, 1, '224', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(11, 6, 1, '225', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(12, 6, 1, '233', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(13, 6, 1, '244', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(14, 6, 1, '255', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(15, 6, 1, '334', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(16, 6, 1, '335', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(17, 6, 1, '344', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(18, 6, 1, '355', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(19, 6, 1, '445', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(20, 6, 1, '455', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:24:06', '2024-12-14 09:24:06'),
(21, 6, 1, '456', NULL, '10', 9, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:26:15', '2024-12-14 09:26:15'),
(22, 6, 1, '1', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:28:21', '2024-12-14 09:28:21'),
(23, 6, 1, '118', NULL, '10', 3, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:29:54', '2024-12-14 09:29:54'),
(24, 6, 1, '668', NULL, '9', 4, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-14 09:30:12', '2024-12-14 09:30:12'),
(25, 6, 1, '0', NULL, '3', 1, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-14 10:10:04', '2024-12-14 10:10:04'),
(26, 4, 5, '1', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 03:57:43', '2024-12-15 03:57:43'),
(27, 4, 1, '136', NULL, '10', 2, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 03:58:07', '2024-12-15 03:58:07'),
(28, 4, 1, '299', NULL, '10', 3, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 03:58:38', '2024-12-15 03:58:38'),
(29, 4, 1, '111', NULL, '10', 4, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 03:58:57', '2024-12-15 03:58:57'),
(30, 4, 1, '00', NULL, '10', 6, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 04:01:00', '2024-12-15 04:01:00'),
(31, 4, 1, '111', NULL, '10', 7, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 04:01:27', '2024-12-15 04:01:27'),
(32, 4, 1, '456', NULL, '10', 9, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 04:03:03', '2024-12-15 04:03:03'),
(33, 4, 1, '566', NULL, '10', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 04:03:36', '2024-12-15 04:03:36'),
(34, 4, 1, '11', NULL, '10', 11, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 04:03:51', '2024-12-15 04:03:51'),
(35, 4, 1, '05', NULL, '10', 12, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 04:04:02', '2024-12-15 04:04:02'),
(36, 4, 1, '9', NULL, '10', 14, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 04:04:19', '2024-12-15 04:04:19'),
(37, 6, 50, '100', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:50:43', '2024-12-15 06:50:43'),
(38, 6, 100, '119', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:50:43', '2024-12-15 06:50:43'),
(39, 1, 50, '122', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:52:43', '2024-12-15 06:52:43'),
(40, 1, 100, '125', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:52:43', '2024-12-15 06:52:43'),
(41, 6, 1, '1', NULL, '2', 14, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:52:51', '2024-12-15 06:52:51'),
(42, 6, 1, '3', NULL, '2', 14, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:52:51', '2024-12-15 06:52:51'),
(43, 6, 1, '5', NULL, '2', 14, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:52:51', '2024-12-15 06:52:51'),
(44, 6, 1, '7', NULL, '2', 14, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:52:51', '2024-12-15 06:52:51'),
(45, 6, 1, '9', NULL, '2', 14, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:52:51', '2024-12-15 06:52:51'),
(46, 1, 50, '122', NULL, '1', 1, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:58:44', '2024-12-15 06:58:44'),
(47, 1, 100, '125', NULL, '1', 1, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 06:58:44', '2024-12-15 06:58:44'),
(48, 6, 1, '16', NULL, '10', 12, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 07:01:01', '2024-12-15 07:01:01'),
(49, 6, 1, '128', NULL, '10', 5, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 07:10:53', '2024-12-15 07:10:53'),
(50, 6, 1, '100', NULL, '10', 5, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 07:11:26', '2024-12-15 07:11:26'),
(51, 6, 1, '777', NULL, '10', 5, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 07:11:26', '2024-12-15 07:11:26'),
(52, 6, 1, '110-111', NULL, '10', 17, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 07:55:19', '2024-12-15 07:55:19'),
(53, 4, 10, '2', NULL, '3', 1, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 10:17:49', '2024-12-15 10:17:49'),
(54, 4, 10, '5', NULL, '3', 1, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 10:17:49', '2024-12-15 10:17:49'),
(55, 4, 10, '2', NULL, '3', 1, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 10:21:28', '2024-12-15 10:21:28'),
(56, 4, 10, '5', NULL, '3', 1, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 10:21:28', '2024-12-15 10:21:28'),
(57, 4, 10, '2', NULL, '3', 1, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 10:22:57', '2024-12-15 10:22:57'),
(58, 4, 10, '5', NULL, '3', 1, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 10:22:57', '2024-12-15 10:22:57'),
(59, 4, 5, '1', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 11:18:05', '2024-12-15 11:18:05'),
(60, 4, 1, '111', NULL, '10', 4, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 13:13:06', '2024-12-15 13:13:06'),
(61, 4, 1, '116', NULL, '10', 4, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 13:13:06', '2024-12-15 13:13:06'),
(62, 4, 1, '166', NULL, '10', 4, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 13:13:06', '2024-12-15 13:13:06'),
(63, 4, 1, '666', NULL, '10', 4, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-15 13:13:06', '2024-12-15 13:13:06'),
(64, 6, 1, '11', NULL, '9', 11, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 17:12:38', '2024-12-15 17:12:38'),
(65, 6, 1, '16', NULL, '9', 11, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 17:12:38', '2024-12-15 17:12:38'),
(66, 6, 1, '61', NULL, '9', 11, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 17:12:38', '2024-12-15 17:12:38'),
(67, 6, 1, '66', NULL, '9', 11, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-15 17:12:38', '2024-12-15 17:12:38'),
(68, 6, 1, '0', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:29:45', '2024-12-16 01:29:45'),
(69, 6, 1, '112', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(70, 6, 1, '113', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(71, 6, 1, '114', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(72, 6, 1, '115', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(73, 6, 1, '122', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(74, 6, 1, '133', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(75, 6, 1, '144', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(76, 6, 1, '155', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(77, 6, 1, '223', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(78, 6, 1, '224', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(79, 6, 1, '225', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(80, 6, 1, '233', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(81, 6, 1, '244', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(82, 6, 1, '255', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(83, 6, 1, '334', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(84, 6, 1, '335', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(85, 6, 1, '344', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(86, 6, 1, '355', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(87, 6, 1, '445', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(88, 6, 1, '455', NULL, '3', 10, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(89, 4, 20, '0', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 04:42:38', '2024-12-16 04:42:38'),
(90, 4, 20, '1', NULL, '10', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 04:42:38', '2024-12-16 04:42:38'),
(91, 4, 20, '127', NULL, '10', 2, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-16 04:43:32', '2024-12-16 04:43:32'),
(92, 4, 10, '2-123', NULL, '5', 16, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:13:37', '2024-12-17 10:13:37'),
(93, 4, 10, '5-478', NULL, '5', 16, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:13:37', '2024-12-17 10:13:37'),
(94, 4, 50, '123-345', NULL, '5', 17, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:14:48', '2024-12-17 10:14:48'),
(95, 4, 100, '455-657', NULL, '5', 17, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:14:48', '2024-12-17 10:14:48'),
(96, 4, 10, '123', NULL, '5', 2, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:18:18', '2024-12-17 10:18:18'),
(97, 4, 10, '345', NULL, '5', 2, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:18:18', '2024-12-17 10:18:18'),
(98, 4, 50, '123-2', NULL, '5', 15, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:19:32', '2024-12-17 10:19:32'),
(99, 4, 100, '145-5', NULL, '5', 15, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:19:32', '2024-12-17 10:19:32'),
(100, 6, 5, '488', NULL, '3', 3, 'close', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:23:00', '2024-12-17 10:23:00'),
(101, 4, 50, '123-2', NULL, '5', 15, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:24:21', '2024-12-17 10:24:21'),
(102, 4, 100, '145-5', NULL, '5', 15, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-17 10:24:21', '2024-12-17 10:24:21'),
(104, 4, 1000, '5', NULL, '7', 1, 'open', NULL, NULL, NULL, NULL, 0, '2024-12-20 14:38:39', '2024-12-20 14:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fastest_live_updates`
--

CREATE TABLE `fastest_live_updates` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fastest_live_updates`
--

INSERT INTO `fastest_live_updates` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<h4>AD BOSS SATTA MATKA</h4>\r\n<p>Sattamatka.Mobi Is Also Known As AD BOSS SATTA MATKA Also A World Of Experts Guessing Forum Website And One Of The Most Visited Satta Site Amongst People Engaged In Satta Matka, Satta Bazar, Matka Bazar, Time Bazar, Milan Day/Night, Kalyan Matka, Rajdhani Day/Night Satta, Mumbai Main And We Provide Super Fast And Fastest Matka Results Apart From Other Players In Industry Our Content Helps You To Big Wins. We Provide Live Updates, Guessing Forum Where Our Experts Helps You To Quickest Earnings. Free Open And Close For Public Welfare Weekly Jodi &amp; Panna With Lifetime Golden Win Chart In 341 Special Zone You Will Get To Know Evergreen Tricks Zone And Old Charts Of Kalyan Matka &amp; Mumbai Matka Of 1972 To 2012 With King Maker Khatri\'s Favorite Panna Also Know As Leaf And Behalf Of Charts Zone We Provide You Kalyan Chart Mumbai Chart Supreme Chart Milan Day Milan Night Chart &amp; Rajdhani Day &amp; Night Jodi Chart With Penal Patti Leafs. Satta To Name A Few. Our Website Has Come Out As An Undisputed Leader In This Arena Since We Started Working Over Years Ago. And We Attribute This Success To Our Consistent Efforts In Publishing The Results Of All Satka Matka Game At The Earliest And Quicker Than All Other Players In This Market.</p>\r\n<p>Satta Matka - Check Kalyan SattaMatka Fastest Kalyan Matka Results, SattaMatka143, Matka Tips, Matka Guessing, Matka Charts, Matka Satta, Kalyan Matka Satta, Kalyan Chart, Kalyan Panel Chart, Mumbai Chart, Sattamataka143, Golden Matka, Satta King, Sattaking143 Guessing, Matka Fix Jodi Today At Sattamatka.Mobi</p>\r\n<h5>Get all the newest information and satta Matka outcomes.</h5>\r\n<p>Get the finest guessers\' fastest live updates on the Sattamatka market results. You can get a range of sattamatka markets available in this online world. Matka satta has emerged as one of the world\'s most well-liked and distinctive games in the twenty-first century. Although the satta Matka game dates back to 1970, modern times have added certain new features. Get all the strategies from our reliable satta matka website if you want to learn how to play this challenging gambling Indian game called satta Matka. Here, you may find the most effective methods and satta Matka\'s advice for using the game to increase your chances of winning.</p>\r\n<h5>What should you know before playing the online game Satta Matka Market?</h5>\r\n<p>In recent years, the gaming sector experienced tremendous growth, thanks in large part to the development of online platforms. The beautiful part is that you may also choose from a variety of traditional games like Satta Matka. Particularly well-liked in India and the nations nearby is this game. You must wait for the outcomes after playing a ticket, comparable to the keno and the lottery. You must LEARN THE ESSENTIALS, SELECT THE APPROPRIATE COMBINATION, CHOOSE THE APPROPRIATE MODEL, and CHOOSE THE APPROPRIATE APPROACH.</p>\r\n<h5>How would our Sattamatka specialist advise you?</h5>\r\n<p>Our specialists help you in Satta Bazar and provide the quickest (fastest) Matka outcome guessing advice. You\'ll win the sattamatka with the help of our best wishes and good fortune. The #1 India sattamatka website, AD BOSS SATTA MATKA official, is where users can discover the sattamatka quickest results. Using our cutting-edge tips and methods, you can play this satta Matka game correctly. You can win the gambling game, become the satta king, and make a ton of money by using the exclusive advice offered by our skilled Matka guessers. Our private and secure website will bring you all the charts of Kalyan satta matta that will give you the most super-fast satta Matka Kalyan chart using the most cutting-edge best satta Matka guessing methodology.</p>\r\n<h5>The Following Are Key Advantages You Only Get With Sattamatka341:</h5>\r\n<p>Sattamatka341 is a reputable satta Matka website that may provide access to all information about the game of Kalyan Matka in one place. Here, you\'ll find information on Matka-Jodi, Panel, Open-Close, Sangam, Jackpot, the most recent results, Matka Chart, lifetime tricks, and tips, among other things. There are now only a few reliable and trustworthy websites available in India where you can play Satta King. Your success depends on choosing the most popular game and adhering to its regulations if you\'ve started playing sattamatka and want to win. You can only gain many advantages with Sattamatka341, including We offer sattamatka techniques and pointers, as well as the most recent updates and quick results. We confirm to provide you with the best user experience so you can guess correctly and win a ton of money. We pledge to provide you with the best online Matka experience and some insider advice from Kalyan. We give you the most effective Kalyan Matka advice so you may complete your goals. Participate in Matka Online Right Now! We hope to reflect your enthusiasm and passion for the game by offering the best Matka play online. Most of the Matka play markets, such as Rajdhani and Kalyan, as well as Main the Milan and Main Bazar, are covered by us. Our website is responsive and user-friendly.</p>\r\n<h5>Get the newest information and satta Matka results.</h5>\r\n<p>Get the best guessers\' fastest live updates on the Sattamatka market results. You can find a variety of sattamatka markets available in this online world. Matka satta has emerged as one of the world\'s most well-liked and distinctive games in the twenty-first century. Although the satta Matka game dates back to 1970, modern times have added some new features. Get all the strategies from our reliable satta matka website if you want to learn how to play this challenging gambling Indian game called satta Matka. Here, you can find the most effective methods and satta Matka advice for using the game to increase your chances of winning.</p>\r\n<h5>What should you know before playing the online game Satta Matka Market?</h5>\r\n<p>Our satta matta matka expert talks about all different kinds of satta matka games, such as Kalyanmatka, satta batta, and kalyan satta, as well as how to get satta matka results quickly. People look for satta matka net or satta matka com when searching on Google, but you can find reliable, quick satta news and complete game information on our website. We provide a secure environment for you to play Indian satta Matka. You can find a variety of information here, such as kalyan matka game, kalyan matka Bazar, kalyan satta, matka satta chart, Milan matka chart, Rajdhani matka chart, live satta result, fastest matka result, kalyan matka Jodi, fix matka Jodi, kalyan satta Jodi, and more. Additionally, we offer you the SattaMatta matka result for today, the Jodi and Satta King results every week, free satta matka, and tips.</p>\r\n<h5>How can our Sattamatka specialist help you?</h5>\r\n<p>Our professionals help you in Satta Bazar and provide the quickest (fastest) Matka results. Your good fortune and our best wishes will make you a sattamatka winner. The most popular sattamatka website in India is www.sattamatkagods.net official, where users can quickly access sattamatka results. You can play this satta Matka game correctly with the help of our creative tips and tricks. By following the special advice our skilled Matka guessers give you, you can win the game of chance, become the satta king, and make a ton of money. Our safe website will get you all the charts of Kalyan satta matta that will give you the fastest satta Matka Kalyan chart using the best satta Matka guessing technique. You need to check our website daily to see the most recent information.</p>\r\n<h5>Do you need free Kalyan Matka advice?</h5>\r\n<p>Please take advantage of our experts\' free Kalyan Matka Tips, Rajdhani Matka Results, Kalyan Matka Tips, Matka Satta Tips, and Satta Batta. Any questions regarding quick money can be discussed here. You have the best opportunity to participate in satta Matka Bazar through our website. What are you waiting for? Start playing immediately on the sattamatka and Kalyan markets, and you could earn a lot of money thanks to our top satta Matka recommendations. We offer you a secure gaming environment with a guaranteed sure Matka number. You can win the most money by playing the game on the best satta Matka website.</p>\r\n<h5>Why is AD BOSS SATTA MATKA.Mobi the top option for a Kalyan Satta Matka website?</h5>\r\n<p>Kalyan Satta Matka Fast Results are offered by Sattamatkagods. It\'s time to see the most accurate and quick Kalyan Matka results yet. Everyone trusts the Satta Matka Website because it consistently produces the best results. We are India\'s Best Satta Matka Website with the fastest growth. Come here to get quick results for the Satta Rajdhani, Satta Matka Gods, Main Ratan, Time Bazar Jodi, and Madhur Matka, among other things. Compared to other Matka websites that offer a free count of lucky Matkas, we offer Kalyan Matka tips that produce quick results. We also run an online betting site for the Matka game and host this forum, both of which can be of service to you. We encourage our customers to follow the results and the forecasts to place the best bets possible. We provide advice and tips to our clients so they can profit significantly from this game. Our Satta Matka Website serves as a fun source and medium for our players and is a connecting and integrating force for gamblers around the world, is a force for fun. For all games based on Satta Matka 341.Mobi and Kalyan Matka, we also offer results and timings.</p>\r\n<h5>Why Is Satta Matka Important and What Is It?</h5>\r\n<h6>Satta Matka: What Is It?</h6>\r\n<p>One type of lottery, known as Satta Matka, allows players to wager on cotton prices that the Cotton Exchange of New York transmits at their opening and closing prices. Before independence, the gambling game Matka was still played, but in the 1960s, various techniques for generating random numbers took its place. One game that depends on luck and your ability to predict the most incredible possibilities is this one. By abiding by a few key guidelines, you can make money playing matka. The Matka game is now a major source of income for India. A law passed by the Indian government in the 1950s ended the monopoly held by the largest producers in India, leading to the establishment of the full-fledged lottery game known as Satta Matka. Two different trading types were initially present in Satta Matka. The first was referred to as \"Rajasthan Satta,\" while the second was called \"Maharajasatru Satta.\" What Makes Satta Matka Important? 1. Use a few strategies and take risks to win: You can pick up a few tips from this game and be willing to take some risks. After that, you have a great chance of succeeding. 2. Endless enjoyment: This game will provide you with endless enjoyment. You will only get bored once you\'ve finished this game. 3. Certain safe returns will be given to you in this game. 4. You can choose from various games, including You can play various games that are available in the gaming world, just as the Rajdhani Day Night Live Chart, Milan Day Live Chart, and Milan Night Live Chart. 5. Quick and Accurate Results: In video games, results must be delivered promptly and correctly. 6. You can keep visiting a legitimate website: We\'ll explain how to get the most out of the game you can play on a reliable website.</p>\r\n<h5>How to Improve Your Knowledge of Sattamatka?</h5>\r\n<p>The rules must be understood by anyone who wants to play Satta Matka and benefit from it to the fullest. Essentially, SattaMatka is a game of chance. However, you can use very simple tricks to influence luck to work in your favour. Knowing all there is to know about playing the satta game, including tips and tricks, is the first step if you want to make more money playing Matka. The Satta is a game that is played all over the world. Here, we\'ll demonstrate and describe Satta. Receive Satta Results, Satta Games, Open Close, Jodi, News, Guessing, Satta Chart, Tricks, and Tips. Receive Satta King Games, Live Satta, Golden Satta, Online Satta, and All New and Old Bazars or Markets. Here you can watch the fastest live Satta results today.</p>', '2024-10-22 16:26:41', '2024-12-11 22:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `game_datas`
--

CREATE TABLE `game_datas` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `game_type` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `result_title` varchar(255) DEFAULT NULL,
  `game_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_point_amunt_bids`
--

CREATE TABLE `game_point_amunt_bids` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type_id` varchar(255) DEFAULT NULL,
  `play_type` varchar(255) DEFAULT NULL,
  `digit` varchar(255) DEFAULT NULL,
  `points` varchar(255) DEFAULT NULL,
  `oc_type` varchar(255) DEFAULT NULL,
  `total_bid` varchar(255) DEFAULT NULL,
  `total_points` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_point_amunt_bids`
--

INSERT INTO `game_point_amunt_bids` (`id`, `user_id`, `type_id`, `play_type`, `digit`, `points`, `oc_type`, `total_bid`, `total_points`, `created_at`, `updated_at`) VALUES
(1, 12, 'milan', 'family_pata', '123', '1', 'open', '8', '727574', '2024-11-13 00:27:24', '2024-11-13 00:27:24'),
(2, 12, 'milan', 'family_pata', '123', '1', 'open', '8', '727574', '2024-11-14 10:54:38', '2024-11-14 10:54:38'),
(3, 12, 'milan', 'family_pata', '123', '1', 'open', '8', '727574', '2024-11-18 20:59:10', '2024-11-18 20:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `game_rates`
--

CREATE TABLE `game_rates` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `play` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `subadmin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_rates`
--

INSERT INTO `game_rates` (`id`, `title`, `play`, `unit`, `rate`, `admin_id`, `subadmin_id`, `created_at`, `updated_at`) VALUES
(1, '1 ka 10', 1, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(2, '1 ka 10', 2, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(3, '1 ka 10', 3, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(4, '1 ka 10', 4, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(5, '1 ka 10', 5, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(6, '1 ka 10', 6, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(7, '1 ka 10', 7, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(8, '1 ka 10', 8, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(9, '1 ka 10', 9, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(10, '1 ka 10', 10, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(11, '1 ka 10', 11, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(12, '1 ka 10', 12, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(13, '1 ka 10', 13, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(14, '1 ka 10', 14, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(15, '1 ka 10', 15, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(16, '1 ka 10', 16, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46'),
(17, '1 ka 10', 17, '1', '10', 1, NULL, '2024-12-02 23:35:46', '2024-12-02 23:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `guessings`
--

CREATE TABLE `guessings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guessings`
--

INSERT INTO `guessings` (`id`, `user_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 7, 'Originally Posted By: Chita OD17\n\nFix strong kuch nahi hota....\n\nOnly on guessing 🎯🤑🤑🤑\n\nAj se 3day Chalenge.....\n\n(We\'d.Thu\'s.Fri\'d)\n\n246--25 467--75\n\n679--20 179--70\n\n(147-129🎯🎯🎯🎯124-269)', '2024-12-11 12:55:00', '2024-12-11 12:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `guessing_forms`
--

CREATE TABLE `guessing_forms` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `subadmin_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `patta_value` varchar(255) DEFAULT NULL,
  `jodi_value` tinyint(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guessing_forms`
--

INSERT INTO `guessing_forms` (`id`, `admin_id`, `subadmin_id`, `title`, `patta_value`, `jodi_value`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'AGRA NIGHT', '567', NULL, '2024-10-23 16:21:28', '2024-10-23 16:21:28'),
(2, NULL, 1, 'AGRA NIGHT', '128', NULL, '2024-10-23 16:21:40', '2024-10-23 16:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `header_des`
--

CREATE TABLE `header_des` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header_des`
--

INSERT INTO `header_des` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<p>Thank you for visiting, the most well-known and reliable Satta Matka website. Our website has accurate information and is reliable for today\'s game, online tips, and official Satta Matka results. Get Kalyan Satta Results at Sattamatka the quickest. How can I get Satta Matka results quickly or in real-time? I present today\'s fix Matka tips, free Matka game, and satta tips. You can find results, games, charts, news, and guessing on AD BOOS Satta Matka.</p>', '2024-10-22 15:40:39', '2024-12-11 22:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '170957382936.jpg', '2024-03-04 12:07:09', '2024-03-04 12:07:09'),
(2, '170957407390.jpg', '2024-03-04 12:11:13', '2024-03-04 12:11:13'),
(3, '170957407378.jpg', '2024-03-04 12:11:13', '2024-03-04 12:11:13'),
(4, '170957407385.jpg', '2024-03-04 12:11:13', '2024-03-04 12:11:13'),
(5, '170957428927.jpg', '2024-03-04 12:14:49', '2024-03-04 12:14:49'),
(6, '170974448134.jpg', '2024-03-06 11:31:21', '2024-03-06 11:31:21'),
(7, '170974448192.jpg', '2024-03-06 11:31:21', '2024-03-06 11:31:21'),
(8, '170974448150.jpg', '2024-03-06 11:31:21', '2024-03-06 11:31:21'),
(9, '170974451491.jpg', '2024-03-06 11:31:54', '2024-03-06 11:31:54'),
(10, '170974451431.jpg', '2024-03-06 11:31:54', '2024-03-06 11:31:54'),
(11, '170983238673.jpg', '2024-03-07 11:56:26', '2024-03-07 11:56:26'),
(12, '170983244639.jpg', '2024-03-07 11:57:26', '2024-03-07 11:57:26'),
(13, '170983260339.jpg', '2024-03-07 12:00:03', '2024-03-07 12:00:03'),
(14, '170983269182.jpg', '2024-03-07 12:01:31', '2024-03-07 12:01:31'),
(15, '170983289245.jpg', '2024-03-07 12:04:53', '2024-03-07 12:04:53'),
(16, '170983301683.jpg', '2024-03-07 12:06:56', '2024-03-07 12:06:56'),
(17, '170983303989.jpg', '2024-03-07 12:07:19', '2024-03-07 12:07:19'),
(18, '17098331263.jpg', '2024-03-07 12:08:46', '2024-03-07 12:08:46'),
(19, '170983349423.jpg', '2024-03-07 12:14:54', '2024-03-07 12:14:54'),
(20, '170983359591.jpg', '2024-03-07 12:16:35', '2024-03-07 12:16:35'),
(21, '170983377091.jpg', '2024-03-07 12:19:30', '2024-03-07 12:19:30'),
(22, '170983585285.jpg', '2024-03-07 12:54:12', '2024-03-07 12:54:12'),
(23, '171000388248.jpg', '2024-03-09 11:34:42', '2024-03-09 11:34:42'),
(24, '171000392134.jpg', '2024-03-09 11:35:21', '2024-03-09 11:35:21'),
(25, '171000418336.jpg', '2024-03-09 11:39:43', '2024-03-09 11:39:43'),
(26, '171000420935.jpg', '2024-03-09 11:40:09', '2024-03-09 11:40:09'),
(27, '17101765097.jpg', '2024-03-11 11:31:49', '2024-03-11 11:31:49'),
(28, '171017664027.jpg', '2024-03-11 11:34:00', '2024-03-11 11:34:00'),
(29, '171017667364.jpg', '2024-03-11 11:34:34', '2024-03-11 11:34:34'),
(30, '171035276140.jpg', '2024-03-13 12:29:21', '2024-03-13 12:29:21'),
(31, '171035282548.jpg', '2024-03-13 12:30:25', '2024-03-13 12:30:25'),
(32, '171035424988.jpg', '2024-03-13 12:54:09', '2024-03-13 12:54:09'),
(33, '171044214757.jpg', '2024-03-14 13:19:07', '2024-03-14 13:19:07'),
(34, '171044216664.jpg', '2024-03-14 13:19:26', '2024-03-14 13:19:26'),
(35, '171058114845.jpg', '2024-03-16 03:55:48', '2024-03-16 03:55:48'),
(36, '171061370697.jpg', '2024-03-16 12:58:26', '2024-03-16 12:58:26'),
(37, '171061405688.jpg', '2024-03-16 13:04:16', '2024-03-16 13:04:16'),
(38, '171061506582.jpg', '2024-03-16 13:21:05', '2024-03-16 13:21:05'),
(39, '171061508247.jpg', '2024-03-16 13:21:22', '2024-03-16 13:21:22'),
(40, '171061508210.jpg', '2024-03-16 13:21:22', '2024-03-16 13:21:22'),
(41, '171061508273.jpg', '2024-03-16 13:21:22', '2024-03-16 13:21:22'),
(42, '171061508259.jpg', '2024-03-16 13:21:22', '2024-03-16 13:21:22'),
(43, '171061672516.jpg', '2024-03-16 13:48:45', '2024-03-16 13:48:45'),
(44, '171061675782.jpg', '2024-03-16 13:49:17', '2024-03-16 13:49:17'),
(45, '171061680623.jpg', '2024-03-16 13:50:06', '2024-03-16 13:50:06'),
(46, '171061689389.jpg', '2024-03-16 13:51:33', '2024-03-16 13:51:33'),
(47, '171061691345.jpg', '2024-03-16 13:51:53', '2024-03-16 13:51:53'),
(48, '171066939032.jpg', '2024-03-17 04:26:30', '2024-03-17 04:26:30'),
(49, '171066939066.jpg', '2024-03-17 04:26:30', '2024-03-17 04:26:30'),
(50, '171066939059.jpg', '2024-03-17 04:26:30', '2024-03-17 04:26:30'),
(51, '171066939035.jpg', '2024-03-17 04:26:30', '2024-03-17 04:26:30'),
(52, '171066939052.jpg', '2024-03-17 04:26:30', '2024-03-17 04:26:30'),
(53, '171066939094.jpg', '2024-03-17 04:26:30', '2024-03-17 04:26:30'),
(54, '171066939024.jpg', '2024-03-17 04:26:30', '2024-03-17 04:26:30'),
(55, '171066939039.jpg', '2024-03-17 04:26:30', '2024-03-17 04:26:30'),
(56, '171078207866.jpg', '2024-03-18 11:44:38', '2024-03-18 11:44:38'),
(57, '171078216395.jpg', '2024-03-18 11:46:03', '2024-03-18 11:46:03'),
(58, '171078237322.jpg', '2024-03-18 11:49:33', '2024-03-18 11:49:33'),
(59, '171078257224.jpg', '2024-03-18 11:52:52', '2024-03-18 11:52:52'),
(60, '171078275938.jpg', '2024-03-18 11:55:59', '2024-03-18 11:55:59'),
(61, '171078279649.jpg', '2024-03-18 11:56:36', '2024-03-18 11:56:36'),
(62, '171078279644.jpg', '2024-03-18 11:56:36', '2024-03-18 11:56:36'),
(63, '171078279678.jpg', '2024-03-18 11:56:36', '2024-03-18 11:56:36'),
(64, '171078410183.jpg', '2024-03-18 12:18:21', '2024-03-18 12:18:21'),
(65, '171095621710.jpg', '2024-03-20 12:06:57', '2024-03-20 12:06:57'),
(66, '171095628827.jpg', '2024-03-20 12:08:08', '2024-03-20 12:08:08'),
(67, '171095635557.jpg', '2024-03-20 12:09:15', '2024-03-20 12:09:15'),
(68, '171095647478.jpg', '2024-03-20 12:11:14', '2024-03-20 12:11:14'),
(69, '171095659297.jpg', '2024-03-20 12:13:12', '2024-03-20 12:13:12'),
(70, '171095666082.jpg', '2024-03-20 12:14:20', '2024-03-20 12:14:20'),
(71, '171095667372.jpg', '2024-03-20 12:14:33', '2024-03-20 12:14:33'),
(72, '171095668841.jpg', '2024-03-20 12:14:48', '2024-03-20 12:14:48'),
(73, '171095671055.jpg', '2024-03-20 12:15:10', '2024-03-20 12:15:10'),
(74, '171112611680.jpg', '2024-03-22 11:18:36', '2024-03-22 11:18:36'),
(75, '171112613118.jpg', '2024-03-22 11:18:51', '2024-03-22 11:18:51'),
(76, '171162220264.jpg', '2024-03-28 05:06:42', '2024-03-28 05:06:42'),
(77, '171162220281.jpg', '2024-03-28 05:06:42', '2024-03-28 05:06:42'),
(78, '171162227377.jpg', '2024-03-28 05:07:53', '2024-03-28 05:07:53'),
(79, '171162227368.jpg', '2024-03-28 05:07:53', '2024-03-28 05:07:53'),
(80, '171163557959.jpg', '2024-03-28 08:49:39', '2024-03-28 08:49:39'),
(81, '171216721353.jpg', '2024-04-03 12:30:13', '2024-04-03 12:30:13'),
(82, '171216722924.jpg', '2024-04-03 12:30:29', '2024-04-03 12:30:29'),
(83, '171216722971.jpg', '2024-04-03 12:30:29', '2024-04-03 12:30:29'),
(84, '171216722991.jpg', '2024-04-03 12:30:29', '2024-04-03 12:30:29'),
(85, '17121673931.jpg', '2024-04-03 12:33:13', '2024-04-03 12:33:13'),
(86, '171248068049.jpg', '2024-04-07 03:34:40', '2024-04-07 03:34:40'),
(87, '171248102899.jpg', '2024-04-07 03:40:28', '2024-04-07 03:40:28'),
(88, '171248123284.jpg', '2024-04-07 03:43:52', '2024-04-07 03:43:52'),
(89, '171248125915.jpg', '2024-04-07 03:44:19', '2024-04-07 03:44:19'),
(90, '171248130143.jpg', '2024-04-07 03:45:01', '2024-04-07 03:45:01'),
(91, '17124813018.jpg', '2024-04-07 03:45:01', '2024-04-07 03:45:01'),
(92, '171248130142.jpg', '2024-04-07 03:45:01', '2024-04-07 03:45:01'),
(93, '171248130180.jpg', '2024-04-07 03:45:01', '2024-04-07 03:45:01'),
(94, '171248139241.jpg', '2024-04-07 03:46:32', '2024-04-07 03:46:32'),
(95, '171248140367.jpg', '2024-04-07 03:46:43', '2024-04-07 03:46:43'),
(96, '171248140369.jpg', '2024-04-07 03:46:43', '2024-04-07 03:46:43'),
(97, '171248164229.jpg', '2024-04-07 03:50:42', '2024-04-07 03:50:42'),
(98, '171248186849.jpg', '2024-04-07 03:54:28', '2024-04-07 03:54:28'),
(99, '171248220829.jpg', '2024-04-07 04:00:08', '2024-04-07 04:00:08'),
(100, '171248230525.jpg', '2024-04-07 04:01:45', '2024-04-07 04:01:45'),
(101, '171248244164.jpg', '2024-04-07 04:04:01', '2024-04-07 04:04:01'),
(102, '171248256128.jpg', '2024-04-07 04:06:01', '2024-04-07 04:06:01'),
(103, '171248259611.jpg', '2024-04-07 04:06:36', '2024-04-07 04:06:36'),
(104, '17124828139.jpg', '2024-04-07 04:10:13', '2024-04-07 04:10:13'),
(105, '17124828195.jpg', '2024-04-07 04:10:19', '2024-04-07 04:10:19'),
(106, '171248283138.jpg', '2024-04-07 04:10:31', '2024-04-07 04:10:31'),
(107, '171248283180.jpg', '2024-04-07 04:10:31', '2024-04-07 04:10:31'),
(108, '171248304959.jpg', '2024-04-07 04:14:09', '2024-04-07 04:14:09'),
(109, '171248317713.jpg', '2024-04-07 04:16:17', '2024-04-07 04:16:17'),
(110, '171248335275.jpg', '2024-04-07 04:19:12', '2024-04-07 04:19:12'),
(111, '17124835062.jpg', '2024-04-07 04:21:46', '2024-04-07 04:21:46'),
(112, '171248381917.jpg', '2024-04-07 04:26:59', '2024-04-07 04:26:59'),
(113, '171248383442.jpg', '2024-04-07 04:27:14', '2024-04-07 04:27:14'),
(114, '171248393419.jpg', '2024-04-07 04:28:54', '2024-04-07 04:28:54'),
(115, '171248398640.jpg', '2024-04-07 04:29:46', '2024-04-07 04:29:46'),
(116, '171248399296.jpg', '2024-04-07 04:29:52', '2024-04-07 04:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `know_abouts`
--

CREATE TABLE `know_abouts` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `know_abouts`
--

INSERT INTO `know_abouts` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"game_zone gz3\">\r\n<p>Madhur Satta Bazar is a experts frequently con apprentices by charging commission at a higher rate. It expects people to pay commission at a predetermined rate. Similarly, the players will need to cover commission-only should they acquire the wagers. In this manner, the website makes it less demanding for gamers to enjoy the lottery recreation without getting extra expenses.<br /><br />Madhur Bazar is also read the information presented on the website on understanding diverse areas of lottery entertainment. Meanwhile, they also have the decision to gain master guidance and seminar, notwithstanding getting telephonic assistance anytime and anyplace.</p>\r\n</div>', '2024-10-22 16:42:56', '2024-10-27 06:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `know_des`
--

CREATE TABLE `know_des` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `know_des`
--

INSERT INTO `know_des` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"disclaimer\">\r\n<div class=\"text1 last-scnd-bg ptb-10\">\r\n<h5 class=\"clr-white\"><strong>DISCLAIMER:-</strong></h5>\r\n<p class=\"clr-white\">Viewing This WebSite Is On Your Own Risk.. All The information Shown On Website Is Based on Numerology and Astrology for Information Purposes .. We Are Not Associated with Any Illegal Matka Business or Gamblers.. We Warn You That Matka Gambling in Your Country May be Banned or Illegal... We Are Not Responsible For Any Issues or Scam... We Respect All Country Rules/Laws... If You Not Agree With Our Site Disclaimer... Please Quit Our Site Right Now. Copying/Promoting/Publishing Any of Our Content in Any Type Of Media or Other Source is Illegal and against Law.</p>\r\n</div>\r\n<div class=\"header ft-2bg ptb-10\">\r\n<div class=\"txxt2\">&nbsp;</div>\r\n</div>\r\n</div>', '2024-10-22 16:30:34', '2024-12-11 22:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `matka_results`
--

CREATE TABLE `matka_results` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `subadmin_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `patta_value` varchar(255) DEFAULT NULL,
  `patta_value2` varchar(255) DEFAULT NULL,
  `jodi_value` tinyint(50) DEFAULT NULL,
  `firsttime` time DEFAULT NULL,
  `lasttime` time DEFAULT NULL,
  `jodi_url` text DEFAULT NULL,
  `panel_url` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matka_results`
--

INSERT INTO `matka_results` (`id`, `admin_id`, `subadmin_id`, `title`, `patta_value`, `patta_value2`, `jodi_value`, `firsttime`, `lasttime`, `jodi_url`, `panel_url`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'SHREDEVI DAY', NULL, NULL, NULL, '11:35:00', '12:35:00', NULL, NULL, '2024-12-13 12:03:57', '2024-12-13 12:03:57'),
(2, 1, NULL, 'TIME BAZAR', NULL, NULL, NULL, '13:10:00', '14:10:00', NULL, NULL, '2024-12-13 12:05:23', '2024-12-13 14:35:20'),
(3, 1, NULL, 'RAJDHANI DAY', NULL, NULL, NULL, '15:05:00', '17:05:00', NULL, NULL, '2024-12-13 12:05:50', '2024-12-13 12:05:50'),
(4, 1, NULL, 'MILAN DAY', NULL, NULL, NULL, '15:10:00', '17:10:00', NULL, NULL, '2024-12-13 12:06:14', '2024-12-13 12:06:14'),
(5, 1, NULL, 'KALYAN', NULL, NULL, NULL, '16:40:00', '18:40:00', NULL, NULL, '2024-12-13 12:06:33', '2024-12-13 12:06:33'),
(6, 1, NULL, 'SHREDEVI NIGHT', NULL, NULL, NULL, '19:30:00', '20:30:00', NULL, NULL, '2024-12-13 12:07:03', '2024-12-13 12:07:03'),
(7, 1, NULL, 'MILAN NIGHT', NULL, NULL, NULL, '20:55:00', '22:55:00', NULL, NULL, '2024-12-13 12:07:23', '2024-12-13 12:07:23'),
(8, 1, NULL, 'RAJDHANI NIGHT', NULL, NULL, NULL, '21:30:00', '23:40:00', NULL, NULL, '2024-12-13 12:07:40', '2024-12-13 12:07:40'),
(9, 1, NULL, 'KALYAN NIGHT', NULL, NULL, NULL, '21:35:00', '23:35:00', NULL, NULL, '2024-12-13 12:08:04', '2024-12-13 12:08:04'),
(10, 1, NULL, 'MAIN BAZAR', NULL, NULL, NULL, '21:50:00', '23:58:00', NULL, NULL, '2024-12-13 12:08:38', '2024-12-13 12:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_03_04_171219_create_about_us_table', 2),
(7, '2024_03_04_171300_create_categories_table', 2),
(8, '2024_03_04_171311_create_products_table', 2),
(9, '2024_03_04_171426_create_faqs_table', 2),
(10, '2024_03_04_171447_create_images_table', 2),
(11, '2024_03_14_174408_create_admins_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Nayak buki froud hai, chor sala Rathod buki ka 228000/- kha gaya hai aur block mar diya hai,paise dene ka dum nahi to kaam karna nahi chor ki aulad sale👈 FROUD BOOKI KA NO.8329629366, 6263636307, 8177812335👈\r\nSAWDHAN AISE BOOKI SE BACKKE RAHO AUR APNA PAISA BARBAD MAT KARO\r\n☆ADMIN☆ PuneMatka.com Saabse TezZz...\r\nNotice Kuch', '2024-10-22 16:16:16', '2024-11-21 00:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `passbooks`
--

CREATE TABLE `passbooks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `debit` varchar(255) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `play_game_id` int(11) DEFAULT NULL,
  `game_type` varchar(255) DEFAULT NULL,
  `remaining_balance` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passbooks`
--

INSERT INTO `passbooks` (`id`, `user_id`, `credit`, `debit`, `game_id`, `play_game_id`, `game_type`, `remaining_balance`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, '', '20', 3, 1, NULL, '955', 'bid', '2024-12-15 10:22:57', '2024-12-15 10:22:57'),
(2, 4, '50', '', 0, NULL, NULL, '1070', 'wallet', '2024-12-15 11:15:40', '2024-12-15 11:15:40'),
(3, 4, '50', '', 0, NULL, NULL, '1120', 'wallet', '2024-12-15 11:16:18', '2024-12-15 11:16:18'),
(4, 4, '', '5', 0, 1, NULL, '1115', 'bid', '2024-12-15 11:18:05', '2024-12-15 11:18:05'),
(5, 4, '50', '', 0, NULL, NULL, '1165', 'wallet', '2024-12-15 11:51:04', '2024-12-15 11:51:04'),
(6, 4, '5', '', 0, NULL, NULL, '1170', 'wallet', '2024-12-15 13:07:17', '2024-12-15 13:07:17'),
(7, 4, '', '4', 0, 4, NULL, '1166', 'bid', '2024-12-15 13:13:06', '2024-12-15 13:13:06'),
(8, 1, '1100', '', 0, NULL, NULL, '2480', 'wallet', '2024-12-15 13:27:12', '2024-12-15 13:27:12'),
(9, 1, '1100', '', 0, NULL, NULL, '3580', 'wallet', '2024-12-15 13:28:36', '2024-12-15 13:28:36'),
(10, 1, '1100', '', 0, NULL, NULL, '4680', 'wallet', '2024-12-15 13:29:39', '2024-12-15 13:29:39'),
(11, 1, '1100', '', 0, NULL, NULL, '5780', 'wallet', '2024-12-15 13:29:44', '2024-12-15 13:29:44'),
(12, 1, '1100', '', 0, NULL, NULL, '6880', 'wallet', '2024-12-15 13:34:12', '2024-12-15 13:34:12'),
(13, 4, '1100', '', 0, NULL, NULL, '2266', 'wallet', '2024-12-15 13:44:18', '2024-12-15 13:44:18'),
(14, 6, '50', '', 0, NULL, NULL, '240', 'wallet', '2024-12-15 14:07:21', '2024-12-15 14:07:21'),
(15, 6, '5', '', 0, NULL, NULL, '245', 'wallet', '2024-12-15 14:14:30', '2024-12-15 14:14:30'),
(16, 6, '5', '', 0, NULL, NULL, '250', 'wallet', '2024-12-15 14:16:19', '2024-12-15 14:16:19'),
(17, 1, '1100', '', 0, NULL, NULL, '7980', 'wallet', '2024-12-15 14:17:17', '2024-12-15 14:17:17'),
(18, 6, '5', '', 0, NULL, NULL, '255', 'wallet', '2024-12-15 14:21:08', '2024-12-15 14:21:08'),
(19, 6, '', '4', 9, 11, NULL, '251', 'bid', '2024-12-15 17:12:38', '2024-12-15 17:12:38'),
(20, 6, '50', '', 0, NULL, NULL, '301', 'wallet', '2024-12-15 17:17:50', '2024-12-15 17:17:50'),
(21, 6, '50', '', 0, NULL, NULL, '351', 'wallet', '2024-12-15 17:46:52', '2024-12-15 17:46:52'),
(22, 6, '', '1', 10, 1, NULL, '350', 'bid', '2024-12-16 01:29:45', '2024-12-16 01:29:45'),
(23, 6, '', '20', 3, 10, NULL, '330', 'bid', '2024-12-16 01:32:24', '2024-12-16 01:32:24'),
(24, 4, '', '40', 10, 1, NULL, '2226', 'bid', '2024-12-16 04:42:38', '2024-12-16 04:42:38'),
(25, 4, '', '20', 10, 2, NULL, '2206', 'bid', '2024-12-16 04:43:32', '2024-12-16 04:43:32'),
(26, 4, '', '0', 5, 16, 'open', '2206', 'bid', '2024-12-17 10:13:37', '2024-12-17 10:13:37'),
(27, 4, '', '0', 5, 17, 'open', '2206', 'bid', '2024-12-17 10:14:48', '2024-12-17 10:14:48'),
(28, 4, '', '20', 5, 2, 'open', '2186', 'bid', '2024-12-17 10:18:18', '2024-12-17 10:18:18'),
(29, 4, '', '0', 5, 15, 'open', '2186', 'bid', '2024-12-17 10:19:32', '2024-12-17 10:19:32'),
(30, 6, '', '5', 3, 3, 'close', '325', 'bid', '2024-12-17 10:23:00', '2024-12-17 10:23:00'),
(31, 4, '', '150', 5, 15, 'open', '2036', 'bid', '2024-12-17 10:24:21', '2024-12-17 10:24:21'),
(32, 4, '', '1000', 7, 1, 'open', '1036', 'bid', '2024-12-20 14:38:39', '2024-12-20 14:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('test@gmail.com', '$2y$10$0FM6AZOjONS.RtZmYjC6x.NLcBqbF5aPeWTN3WzOYQiplNnbWCm.S', '2024-11-03 17:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(24, 'App\\Models\\User', 2, 'auth_token', '6093844a2f7ffd86dc5cb8c8b53ffe59e1df6daef53ba04f18dc6107d794ecf3', '[\"*\"]', NULL, NULL, '2024-11-10 20:19:17', '2024-11-10 20:19:17'),
(25, 'App\\Models\\User', 3, 'auth_token', '790e869f8da0dd23ceffc1515432de3e964f529800698d8b907dd2dc7ca45937', '[\"*\"]', NULL, NULL, '2024-11-10 20:28:48', '2024-11-10 20:28:48'),
(62, 'App\\Models\\User', 5, 'auth_token', 'd45ebfafcf651fadaa23e045f0036409e30b31364e0389323db3c1562424bfaf', '[\"*\"]', NULL, NULL, '2024-11-19 14:45:37', '2024-11-19 14:45:37'),
(100, 'App\\Models\\User', 1, 'auth_token', '5e10dce6cdf0c54b58dc13c9f8ed7d7aa9dfc6236c62d688c87d94a7245fcf78', '[\"*\"]', '2024-12-10 22:28:59', NULL, '2024-11-20 23:36:42', '2024-12-10 22:28:59'),
(101, 'App\\Models\\User', 1, 'auth_token', '7daec6acef1ffcba69d0c73e3e464c6d2ea1b5297d101b639a0ec2eb1a24234c', '[\"*\"]', NULL, NULL, '2024-11-21 12:11:11', '2024-11-21 12:11:11'),
(102, 'App\\Models\\User', 1, 'auth_token', '3fda70db9871f10fdf76f17aca5bcbc9a757dc9f8332d62abaa36a7ec8ac6266', '[\"*\"]', NULL, NULL, '2024-11-21 12:11:27', '2024-11-21 12:11:27'),
(103, 'App\\Models\\User', 1, 'auth_token', 'ecfaec7c304324c6444b7d68e70deed25c3563e1d7692e3a3c990b0eec79b544', '[\"*\"]', NULL, NULL, '2024-11-21 12:12:57', '2024-11-21 12:12:57'),
(104, 'App\\Models\\User', 1, 'auth_token', 'c6557493de154630219a18d4ad6c49417163d6c5b92648033705043e3e561211', '[\"*\"]', NULL, NULL, '2024-11-21 12:13:38', '2024-11-21 12:13:38'),
(105, 'App\\Models\\User', 1, 'auth_token', 'ac0947de20050348a1232a8409a48cfedf29138d29ea260cdcd660fa838f1c47', '[\"*\"]', NULL, NULL, '2024-11-21 12:14:30', '2024-11-21 12:14:30'),
(106, 'App\\Models\\User', 1, 'auth_token', 'd7daf6bcdfa4a1b5ec02ab3ba67a51d6869a0dd98ab3090fd4529d2db4cb9bb4', '[\"*\"]', NULL, NULL, '2024-11-21 12:17:32', '2024-11-21 12:17:32'),
(114, 'App\\Models\\User', 1, 'auth_token', 'f10870b92fe61f66f0f77926fb1fdd2b7cb7afb95d756cd65c5cc9279a97ccbd', '[\"*\"]', '2024-11-21 17:01:36', NULL, '2024-11-21 14:37:27', '2024-11-21 17:01:36'),
(117, 'App\\Models\\User', 1, 'auth_token', 'a04c85d7be341ff9b51d81fe91a72ec2210fa106546aa4c11a077663411a47ec', '[\"*\"]', '2024-11-21 22:00:42', NULL, '2024-11-21 17:02:39', '2024-11-21 22:00:42'),
(123, 'App\\Models\\User', 1, 'auth_token', '9740892265dcf8c779160530c8ae64e5b44e1110782d2e5a2f5a4ce91099b63a', '[\"*\"]', NULL, NULL, '2024-11-21 21:26:18', '2024-11-21 21:26:18'),
(124, 'App\\Models\\User', 1, 'auth_token', '469570d2942407fb06ef6357c9385d13a13092bfae31a8658fd2f8db94bf6aaf', '[\"*\"]', NULL, NULL, '2024-11-21 21:28:01', '2024-11-21 21:28:01'),
(125, 'App\\Models\\User', 1, 'auth_token', 'aeb28594c8599d81ed15005894e81678ae6ff7f667b51fe8c4f70bc5441d81ec', '[\"*\"]', NULL, NULL, '2024-11-21 21:39:18', '2024-11-21 21:39:18'),
(126, 'App\\Models\\User', 1, 'auth_token', '8fea54452f8b147b730df2e7235c0a94ce6fab7774b94951539fca5271d7f36f', '[\"*\"]', '2024-12-18 18:25:07', NULL, '2024-11-21 22:13:05', '2024-12-18 18:25:07'),
(196, 'App\\Models\\User', 1, 'auth_token', 'bc809b7d238ed66f9a4ab67278481ebb7d249946f8ba452c77f65be8ba430a51', '[\"*\"]', NULL, NULL, '2024-12-15 15:40:11', '2024-12-15 15:40:11'),
(197, 'App\\Models\\User', 11, 'auth_token', '0a47907ecc21885a16a74ce5b78644e479c9947e317b5c9099906347db974a18', '[\"*\"]', NULL, NULL, '2024-12-15 15:58:34', '2024-12-15 15:58:34'),
(198, 'App\\Models\\User', 12, 'auth_token', '946def4c3f4b2702cad698f9d03f6737a0fb1c78b5ae00fdd3176bb1c3169cf0', '[\"*\"]', NULL, NULL, '2024-12-15 16:00:37', '2024-12-15 16:00:37'),
(199, 'App\\Models\\User', 13, 'auth_token', 'd090d571830603a208989f804925af8f8b079c7ff8cc3201acc10465c57e8a86', '[\"*\"]', NULL, NULL, '2024-12-15 16:07:29', '2024-12-15 16:07:29'),
(200, 'App\\Models\\User', 14, 'auth_token', '887fec5a0a3df4b5c136422855df4d086ff8c8a7524e11804fbe4c08c7f9ec6b', '[\"*\"]', NULL, NULL, '2024-12-15 16:48:13', '2024-12-15 16:48:13'),
(224, 'App\\Models\\User', 1, 'auth_token', 'ddd0746c821f69ba0220f163f773b92ffa16b316596c696ea8766a25477ce0ca', '[\"*\"]', NULL, NULL, '2024-12-19 14:22:58', '2024-12-19 14:22:58'),
(228, 'App\\Models\\User', 6, 'auth_token', 'e34b09a87cbf3ef55b3f79ca7e75818c33386e5e4aa91929e6a99a52f03e5405', '[\"*\"]', '2024-12-20 19:36:31', NULL, '2024-12-19 16:29:18', '2024-12-20 19:36:31'),
(229, 'App\\Models\\User', 6, 'auth_token', '3aac496ce4d759a740a881fc66b99564ba7e984ce865464ffbbc31cdac866baa', '[\"*\"]', NULL, NULL, '2024-12-19 16:29:24', '2024-12-19 16:29:24'),
(230, 'App\\Models\\User', 6, 'auth_token', '8b627db2ff367abcda2b9afd1cc96b782596f1e6585a9f2bc46a3734e1f997c0', '[\"*\"]', '2024-12-19 20:18:48', NULL, '2024-12-19 19:37:57', '2024-12-19 20:18:48'),
(234, 'App\\Models\\User', 4, 'auth_token', '44e669a9ad1ae16f5e858b64e92fdcda5b20fe3a01d1efdd39a4d12921724375', '[\"*\"]', '2024-12-23 13:12:15', NULL, '2024-12-23 13:10:40', '2024-12-23 13:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `plays`
--

CREATE TABLE `plays` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `subadmin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plays`
--

INSERT INTO `plays` (`id`, `title`, `image`, `type`, `admin_id`, `subadmin_id`, `created_at`, `updated_at`) VALUES
(19, 'Single Ank', '1734717470_Group 59.png', 'open,close', 1, NULL, '2024-12-20 23:27:50', '2024-12-20 23:41:56'),
(20, 'Jodi', '1734717494_Group 42.png', 'open', 1, NULL, '2024-12-20 23:28:14', '2024-12-20 23:48:23'),
(21, 'Single Pana', '1734717515_Group 26 (1).png', 'open,close', 1, NULL, '2024-12-20 23:28:35', '2024-12-20 23:28:35'),
(22, 'Double Pana', '1734717544_Group 44.png', 'open,close', 1, NULL, '2024-12-20 23:29:04', '2024-12-20 23:29:04'),
(23, 'Triple Pana', '1734717578_Group 53.png', 'open,close', 1, NULL, '2024-12-20 23:29:38', '2024-12-20 23:29:38'),
(24, 'Pana Family', '1734932759_Group 49.png', 'open,close', 1, NULL, '2024-12-23 11:15:59', '2024-12-23 11:15:59'),
(25, 'SP DP TP', '1734717610_Group 45.png', 'open,close', 1, NULL, '2024-12-20 23:30:10', '2024-12-20 23:30:10'),
(26, 'Two Digit Pana', '1734717642_Group 54.png', 'open,close', 1, NULL, '2024-12-20 23:30:42', '2024-12-20 23:30:42'),
(27, 'SP Motor', '1734717697_Group 58 (1).png', 'open,close', 1, NULL, '2024-12-20 23:31:37', '2024-12-20 23:31:37'),
(28, 'DP Motor', '1734717723_Group 46.png', 'open,close', 1, NULL, '2024-12-20 23:32:03', '2024-12-20 23:32:03'),
(29, 'Jodi Family', '1734717748_Group 55.png', 'open', 1, NULL, '2024-12-20 23:32:28', '2024-12-20 23:49:46'),
(30, 'Red Jodi', '1734717770_Group 47.png', 'open', 1, NULL, '2024-12-20 23:32:50', '2024-12-20 23:32:50'),
(31, 'Digit Base Jodi', '1734717804_Group 50.png', 'open', 1, NULL, '2024-12-20 23:33:24', '2024-12-20 23:33:24'),
(32, 'Odd Even', '1734717833_Group 56.png', 'open,close', 1, NULL, '2024-12-20 23:33:53', '2024-12-20 23:33:53'),
(33, 'Half Sangam (A)', '1734717885_Group 51.png', 'open', 1, NULL, '2024-12-20 23:34:45', '2024-12-20 23:34:45'),
(34, 'Half Sangam (B)', '1734717917_Group 51.png', 'open', 1, NULL, '2024-12-20 23:35:17', '2024-12-20 23:35:17'),
(35, 'Full Sangam', '1734717959_Group 57.png', 'open', 1, NULL, '2024-12-20 23:35:59', '2024-12-20 23:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `play_lists`
--

CREATE TABLE `play_lists` (
  `id` int(11) NOT NULL,
  `game_id` varchar(255) DEFAULT NULL,
  `play` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_id` int(11) DEFAULT NULL,
  `subadmin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `play_lists`
--

INSERT INTO `play_lists` (`id`, `game_id`, `play`, `created_at`, `updated_at`, `admin_id`, `subadmin_id`) VALUES
(1, 'SHREDEVI DAY', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 12:03:19', '2024-12-23 11:17:50', 1, NULL),
(2, 'MAIN BAZAR', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:34:00', '2024-12-23 11:17:40', 1, NULL),
(3, 'KALYAN NIGHT', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:34:21', '2024-12-23 11:17:35', 1, NULL),
(4, 'RAJDHANI NIGHT', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:34:52', '2024-12-23 11:17:23', 1, NULL),
(5, 'MILAN NIGHT', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:36:22', '2024-12-23 11:17:18', 1, NULL),
(6, 'SHREDEVI NIGHT', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:39:21', '2024-12-23 11:17:12', 1, NULL),
(7, 'KALYAN', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:39:43', '2024-12-23 11:17:07', 1, NULL),
(8, 'MILAN DAY', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:40:10', '2024-12-23 11:17:01', 1, NULL),
(9, 'RAJDHANI DAY', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:40:29', '2024-12-23 11:16:56', 1, NULL),
(10, 'TIME BAZAR', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:40:47', '2024-12-23 11:16:51', 1, NULL),
(11, 'SHREDEVI DAY', 'Full Sangam,Half Sangam (B),Half Sangam (A),Odd Even,Digit Base Jodi,Red Jodi,Jodi Family,DP Motor,SP Motor,Two Digit Pana,SP DP TP,Pana Family,Triple Pana,Double Pana,Single Pana,Jodi,Single Ank', '2024-12-13 18:41:15', '2024-12-23 11:16:46', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `patta1` varchar(255) DEFAULT NULL,
  `patta2` varchar(255) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `subadmin_id` int(11) DEFAULT NULL,
  `matka_result_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `patta1`, `patta2`, `admin_id`, `subadmin_id`, `matka_result_id`, `created_at`, `updated_at`) VALUES
(1, '442', '640', 1, NULL, 10, '2024-12-13 12:31:28', '2024-12-13 12:55:04'),
(2, '632', '550', 1, NULL, 1, '2024-12-13 13:52:36', '2024-12-13 23:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `satta_matkas`
--

CREATE TABLE `satta_matkas` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satta_matkas`
--

INSERT INTO `satta_matkas` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<p>Satta Matka is a daily lottery game played since 1964. They lose a lot of their money in Satta Matka. But they still wait for the right time. So what makes these players so patient to wait for their golden time? The idea behind this concept is you have to be a regular player in such games and once you learn the ideas and patterns you may hit the right mark but no method gives assurance. Are you in search of a thrilling experience in the field of online gambling? You can log in to enjoy those exciting moments with them. Do not hesitate to log in to this site if you are a newcomer.</p>', '2024-10-22 16:43:33', '2024-11-10 20:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `sub_admins`
--

CREATE TABLE `sub_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_admins`
--

INSERT INTO `sub_admins` (`id`, `name`, `email`, `username`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'subadmin', 'subadmin@gmail.com', 'subadmin', '$2y$10$dsfd/DfmRArUm.InZTTNBuaRoD8.0hnQ9SkZd90ipXsohmDzqpeca', 1, NULL, '2024-10-24 16:57:33'),
(2, 'subadmin2', 'subadmin2@gmail.com', 'subadmin2', '$2y$10$dsfd/DfmRArUm.InZTTNBuaRoD8.0hnQ9SkZd90ipXsohmDzqpeca', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `wallet` float DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `razorpay_contact_id` varchar(255) DEFAULT NULL,
  `razorpay_fundaccount_id` varchar(255) DEFAULT NULL,
  `experts` int(11) NOT NULL DEFAULT 0,
  `phonepe` varchar(255) DEFAULT NULL,
  `googlepe` int(255) DEFAULT NULL,
  `paytm` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `wallet`, `phone`, `email_verified_at`, `password`, `razorpay_contact_id`, `razorpay_fundaccount_id`, `experts`, `phonepe`, `googlepe`, `paytm`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@gmail.com', 7980, NULL, NULL, '$2y$10$oE27g.n0m/o27mRsv4BHIekpwqN0yhYGlXi0rCIludVPKWXRHe/lu', NULL, NULL, 1, '123456', 123456, '123456', NULL, '2024-11-03 15:35:14', '2024-12-15 19:47:17'),
(2, 'Test', 'test1@gmail.com', 0, NULL, NULL, '$2y$10$ME6bMzLEiTD4H.z7M0GRBOAA9FZrc4GaoQDs50/5z3PyHKV2MakHK', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-11-10 20:19:17', '2024-12-10 16:09:46'),
(3, 'Test', 'test2@gmail.com', 0, NULL, NULL, '$2y$10$3LsLYjJQbR1HOoYWuuhGY.A.Io7DKm7usUKx.sinOPjolrgxeKG1i', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-11-10 20:28:48', '2024-11-10 20:28:48'),
(4, 'Dev', 'dev@yopmail.com', 1036, NULL, NULL, '$2y$10$M39VpELoj5U6g.nbomN/heGzdPf.cPV/QHmToQJBixlcV23fMGpwO', NULL, NULL, 0, '12345678', NULL, '12345678', NULL, '2024-11-12 10:51:44', '2024-12-15 19:14:18'),
(5, 'Test', 'dev@gmail.com', NULL, NULL, NULL, '$2y$10$dFgmuXzniivUEKFb7sTqaemSHQfaQaA6BvGRmawfY98ycKdgQ3hS6', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-11-19 14:45:37', '2024-11-19 14:45:37'),
(6, 'devi', 'devi@yopmail.com', 325, NULL, NULL, '$2y$10$TmCMcGUVkDoZOkeZIyZbV.BPETpmB.ECwkMhl9WXbPR8bOfldRn62', NULL, NULL, 0, '123456', NULL, '123456', NULL, '2024-11-19 15:20:19', '2024-12-15 23:16:52'),
(7, 'rishi', 'rishi@gmail.com', NULL, NULL, NULL, '$2y$10$8nRkhW0P0wG5WW6a/S0POOfDEbyp4zSsIdC1T15kpUFthc.Z9J8he', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-12-08 18:28:00', '2024-12-08 18:28:00'),
(8, 'rishi', 'rishi1@gmail.com', NULL, NULL, NULL, '$2y$10$ME6bMzLEiTD4H.z7M0GRBOAA9FZrc4GaoQDs50/5z3PyHKV2MakHK', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-12-08 18:29:30', '2024-12-08 18:29:30'),
(9, 'giri', 'giria@gmail.com', NULL, '9876543210', NULL, '$2y$10$WY5RevqEUL9Yb89dTmCNkOE3.sxspoXrCqIf/jPIR8kIpjWGTrrxC', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'TeNilesh Nagar', 'nilnagar1314@gmail.com', NULL, '8770075264', NULL, '$2y$10$bq0spRLb26ugv1uADZNQmOqkB6OiyIi9hAzjc12ec.lkx8t1N0lgG', 'cont_PXQtLeI6oNUbLf', 'fa_PXRMUaRM4bMlnH', 0, NULL, NULL, NULL, NULL, '2024-12-15 16:48:13', '2024-12-15 17:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `amount`, `payment_id`, `status`, `response`, `created_at`, `updated_at`) VALUES
(1, 4, 500, NULL, NULL, NULL, '2024-12-13 06:49:26', '2024-12-13 06:49:26'),
(2, 4, 500, NULL, NULL, NULL, '2024-12-13 07:07:39', '2024-12-13 07:07:39'),
(3, 6, 500, NULL, NULL, NULL, '2024-12-13 09:02:11', '2024-12-13 09:02:11'),
(4, NULL, 2, 'pay_PXQ785xHXDikww', NULL, NULL, '2024-12-15 10:32:59', '2024-12-15 10:32:59'),
(5, NULL, 50, 'pay_PXQ8JJwZQYvjTV', NULL, NULL, '2024-12-15 10:34:07', '2024-12-15 10:34:07'),
(6, NULL, 11, 'pay_PXQA9GTHcfpeV7', NULL, NULL, '2024-12-15 10:35:42', '2024-12-15 10:35:42'),
(7, NULL, 2, 'pay_PXQCAp9yXCNKdW', NULL, NULL, '2024-12-15 10:37:34', '2024-12-15 10:37:34'),
(8, NULL, 50, 'pay_PXQqGc6zklwRNK', NULL, NULL, '2024-12-15 11:15:40', '2024-12-15 11:15:40'),
(9, NULL, 50, 'pay_PXQqsNd04mXoxn', NULL, NULL, '2024-12-15 11:16:18', '2024-12-15 11:16:18'),
(10, NULL, 50, 'pay_PXRRfjCBeP50Fy', NULL, NULL, '2024-12-15 11:51:04', '2024-12-15 11:51:04'),
(11, NULL, 5, 'pay_PXSk9yvJuz6MYw', NULL, NULL, '2024-12-15 13:07:17', '2024-12-15 13:07:17'),
(12, NULL, 1100, NULL, NULL, NULL, '2024-12-15 13:27:12', '2024-12-15 13:27:12'),
(13, NULL, 1100, NULL, NULL, NULL, '2024-12-15 13:28:36', '2024-12-15 13:28:36'),
(14, NULL, 1100, NULL, NULL, NULL, '2024-12-15 13:29:39', '2024-12-15 13:29:39'),
(15, NULL, 1100, NULL, NULL, NULL, '2024-12-15 13:29:44', '2024-12-15 13:29:44'),
(16, NULL, 1100, NULL, NULL, NULL, '2024-12-15 13:34:12', '2024-12-15 13:34:12'),
(17, 4, 1100, NULL, NULL, NULL, '2024-12-15 13:44:18', '2024-12-15 13:44:18'),
(18, 6, 50, NULL, NULL, NULL, '2024-12-15 14:07:21', '2024-12-15 14:07:21'),
(19, 6, 5, NULL, NULL, NULL, '2024-12-15 14:14:30', '2024-12-15 14:14:30'),
(20, 6, 5, NULL, NULL, NULL, '2024-12-15 14:16:19', '2024-12-15 14:16:19'),
(21, 1, 1100, NULL, NULL, NULL, '2024-12-15 14:17:17', '2024-12-15 14:17:17'),
(22, 6, 5, NULL, NULL, NULL, '2024-12-15 14:21:08', '2024-12-15 14:21:08'),
(23, 6, 50, NULL, NULL, NULL, '2024-12-15 17:17:50', '2024-12-15 17:17:50'),
(24, 6, 50, NULL, NULL, NULL, '2024-12-15 17:46:52', '2024-12-15 17:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `winning_history`
--

CREATE TABLE `winning_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `game_id` varchar(255) DEFAULT NULL,
  `play_type` varchar(255) DEFAULT NULL,
  `game_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_payments`
--

CREATE TABLE `withdrawal_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `subadmin_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `withdrawal_status` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_requests`
--

CREATE TABLE `withdrawal_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `withdrawal_status` varchar(255) DEFAULT '0' COMMENT 'request 0; accept 1;reject 2; ',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawal_requests`
--

INSERT INTO `withdrawal_requests` (`id`, `user_id`, `amount`, `status`, `withdrawal_status`, `created_at`, `updated_at`) VALUES
(1, 4, 500, NULL, NULL, '2024-12-13 06:49:52', '2024-12-13 06:49:52'),
(2, 4, 500, NULL, NULL, '2024-12-13 07:54:20', '2024-12-13 07:54:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_history`
--
ALTER TABLE `bid_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fastest_live_updates`
--
ALTER TABLE `fastest_live_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_datas`
--
ALTER TABLE `game_datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_point_amunt_bids`
--
ALTER TABLE `game_point_amunt_bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_rates`
--
ALTER TABLE `game_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guessings`
--
ALTER TABLE `guessings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guessing_forms`
--
ALTER TABLE `guessing_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_des`
--
ALTER TABLE `header_des`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `know_abouts`
--
ALTER TABLE `know_abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `know_des`
--
ALTER TABLE `know_des`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matka_results`
--
ALTER TABLE `matka_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbooks`
--
ALTER TABLE `passbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plays`
--
ALTER TABLE `plays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `play_lists`
--
ALTER TABLE `play_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satta_matkas`
--
ALTER TABLE `satta_matkas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_admins`
--
ALTER TABLE `sub_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winning_history`
--
ALTER TABLE `winning_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_payments`
--
ALTER TABLE `withdrawal_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bid_history`
--
ALTER TABLE `bid_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fastest_live_updates`
--
ALTER TABLE `fastest_live_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `game_datas`
--
ALTER TABLE `game_datas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_point_amunt_bids`
--
ALTER TABLE `game_point_amunt_bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `game_rates`
--
ALTER TABLE `game_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `guessings`
--
ALTER TABLE `guessings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guessing_forms`
--
ALTER TABLE `guessing_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `header_des`
--
ALTER TABLE `header_des`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `know_abouts`
--
ALTER TABLE `know_abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `know_des`
--
ALTER TABLE `know_des`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matka_results`
--
ALTER TABLE `matka_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbooks`
--
ALTER TABLE `passbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `plays`
--
ALTER TABLE `plays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `play_lists`
--
ALTER TABLE `play_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `satta_matkas`
--
ALTER TABLE `satta_matkas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_admins`
--
ALTER TABLE `sub_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `winning_history`
--
ALTER TABLE `winning_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_payments`
--
ALTER TABLE `withdrawal_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
