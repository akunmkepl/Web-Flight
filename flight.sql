-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 05:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight`
--

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight_number` varchar(255) NOT NULL,
  `departure_city` varchar(255) NOT NULL,
  `arrival_city` varchar(255) NOT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `seats_available` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `plane_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `flight_number`, `departure_city`, `arrival_city`, `departure_time`, `arrival_time`, `price`, `seats_available`, `is_active`, `plane_id`, `created_at`, `updated_at`) VALUES
(1, 'FL7962', 'City 1', 'City 11', '2024-12-15 03:42:12', '2024-12-15 07:42:12', 430000.00, 49, 1, 1, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(2, 'FL3917', 'City 8', 'City 12', '2024-12-15 03:42:12', '2024-12-12 08:42:12', 139000.00, 56, 1, 1, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(3, 'FL2816', 'City 3', 'City 12', '2024-12-15 03:42:12', '2024-12-11 08:42:12', 134000.00, 64, 1, 1, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(4, 'FL2012', 'City 10', 'City 18', '2024-12-18 03:42:12', '2024-12-16 06:42:12', 632000.00, 76, 0, 2, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(5, 'FL9453', 'City 1', 'City 16', '2024-12-20 03:42:12', '2024-12-14 08:42:12', 615000.00, 56, 0, 2, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(6, 'FL2437', 'City 5', 'City 16', '2024-12-19 03:42:12', '2024-12-11 05:42:12', 542000.00, 74, 0, 2, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(7, 'FL6286', 'City 3', 'City 13', '2024-12-15 03:42:12', '2024-12-17 06:42:12', 188000.00, 74, 1, 3, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(8, 'FL5961', 'City 8', 'City 18', '2024-12-18 03:42:12', '2024-12-17 07:42:12', 918000.00, 51, 1, 3, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(9, 'FL3141', 'City 5', 'City 16', '2024-12-17 03:42:12', '2024-12-15 08:42:12', 894000.00, 78, 0, 3, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(10, 'FL2464', 'City 8', 'City 16', '2024-12-11 03:42:12', '2024-12-19 08:42:12', 971000.00, 52, 1, 4, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(11, 'FL5490', 'City 10', 'City 15', '2024-12-19 03:42:12', '2024-12-11 06:42:12', 626000.00, 56, 1, 4, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(12, 'FL6508', 'City 1', 'City 20', '2024-12-13 03:42:12', '2024-12-20 04:42:12', 822000.00, 65, 0, 4, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(13, 'FL6929', 'City 8', 'City 16', '2024-12-16 03:42:12', '2024-12-16 04:42:12', 923000.00, 65, 0, 5, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(14, 'FL6886', 'City 9', 'City 15', '2024-12-16 03:42:12', '2024-12-15 07:42:12', 891000.00, 74, 1, 5, '2024-12-09 20:42:12', '2024-12-09 20:42:12'),
(15, 'FL7202', 'City 4', 'City 13', '2024-12-19 03:42:12', '2024-12-14 05:42:12', 139000.00, 64, 0, 5, '2024-12-09 20:42:12', '2024-12-09 20:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `flight_passenger`
--

CREATE TABLE `flight_passenger` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight_id` bigint(20) UNSIGNED NOT NULL,
  `passenger_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flight_passenger`
--

INSERT INTO `flight_passenger` (`id`, `flight_id`, `passenger_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-12-09 20:43:07', '2024-12-09 20:43:07'),
(2, 1, 2, '2024-12-09 20:43:07', '2024-12-09 20:43:07'),
(3, 2, 3, '2024-12-09 20:43:07', '2024-12-09 20:43:07'),
(4, 2, 4, '2024-12-09 20:43:07', '2024-12-09 20:43:07');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_12_10_021503_create_planes_table', 1),
(3, '2024_12_10_031345_create_flights_table', 1),
(4, '2024_12_10_031522_create_passengers_table', 1),
(5, '2024_12_10_031541_create_flight_passenger_table', 1),
(6, '2024_12_10_031552_create_tickets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', '2024-12-09 20:41:39', '2024-12-09 20:41:39'),
(2, 'Jane Smith', '2024-12-09 20:41:39', '2024-12-09 20:41:39'),
(3, 'Alice Johnson', '2024-12-09 20:41:39', '2024-12-09 20:41:39'),
(4, 'Bob Brown', '2024-12-09 20:41:39', '2024-12-09 20:41:39'),
(5, 'Charlie White', '2024-12-09 20:41:39', '2024-12-09 20:41:39');

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

-- --------------------------------------------------------

--
-- Table structure for table `planes`
--

CREATE TABLE `planes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plane_model` varchar(255) NOT NULL,
  `plane_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planes`
--

INSERT INTO `planes` (`id`, `plane_model`, `plane_number`, `created_at`, `updated_at`) VALUES
(1, 'Boeing 737-800', 'PK-BGK', '2024-12-09 20:42:02', '2024-12-09 20:42:02'),
(2, 'Airbus A320neo', 'PK-AKA', '2024-12-09 20:42:02', '2024-12-09 20:42:02'),
(3, 'Boeing 747-400', 'PK-JKT', '2024-12-09 20:42:02', '2024-12-09 20:42:02'),
(4, 'Airbus A330-300', 'PK-SBY', '2024-12-09 20:42:02', '2024-12-09 20:42:02'),
(5, 'Embraer E195-E2', 'PK-MNL', '2024-12-09 20:42:02', '2024-12-09 20:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_number` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `flight_id`, `ticket_number`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'TICKET001', 1200000, '2024-12-09 20:42:20', '2024-12-09 20:42:20'),
(2, 1, 'TICKET002', 1200000, '2024-12-09 20:42:20', '2024-12-09 20:42:20'),
(3, 2, 'TICKET003', 1500000, '2024-12-09 20:42:20', '2024-12-09 20:42:20'),
(4, 2, 'TICKET004', 1500000, '2024-12-09 20:42:20', '2024-12-09 20:42:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flights_plane_id_foreign` (`plane_id`);

--
-- Indexes for table `flight_passenger`
--
ALTER TABLE `flight_passenger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_passenger_flight_id_foreign` (`flight_id`),
  ADD KEY `flight_passenger_passenger_id_foreign` (`passenger_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_flight_id_foreign` (`flight_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `flight_passenger`
--
ALTER TABLE `flight_passenger`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planes`
--
ALTER TABLE `planes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_plane_id_foreign` FOREIGN KEY (`plane_id`) REFERENCES `planes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flight_passenger`
--
ALTER TABLE `flight_passenger`
  ADD CONSTRAINT `flight_passenger_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flight_passenger_passenger_id_foreign` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
