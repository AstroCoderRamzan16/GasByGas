-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2025 at 06:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaspro`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('ahammad@gmail.com|127.0.0.1', 'i:2;', 1739121202),
('ahammad@gmail.com|127.0.0.1:timer', 'i:1739121202;', 1739121202),
('itisramzan777@gmail.com|127.0.0.1', 'i:2;', 1735927848),
('itisramzan777@gmail.com|127.0.0.1:timer', 'i:1735927848;', 1735927848),
('muhammad@gma|127.0.0.1', 'i:2;', 1739096658),
('muhammad@gma|127.0.0.1:timer', 'i:1739096658;', 1739096658),
('muhammad@gmail.com|127.0.0.1', 'i:2;', 1739096695),
('muhammad@gmail.com|127.0.0.1:timer', 'i:1739096695;', 1739096695);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(12, 2, 12, '2025-01-29 01:12:19', '2025-01-29 01:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `categoreys`
--

CREATE TABLE `categoreys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorey_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoreys`
--

INSERT INTO `categoreys` (`id`, `categorey_name`, `created_at`, `updated_at`) VALUES
(15, '5KG Gas', '2025-01-21 07:57:23', '2025-01-21 07:57:23'),
(16, '9KG Gas', '2025-01-21 07:57:41', '2025-01-21 07:57:41'),
(17, '12.5KG Gas', '2025-01-21 07:57:59', '2025-01-21 07:57:59'),
(18, '15KG Gas', '2025-01-21 07:58:11', '2025-01-21 07:58:11'),
(22, '35KG Gas', '2025-01-21 08:21:20', '2025-01-21 08:21:20');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_21_093604_create_categoreys_table', 2),
(5, '2025_01_22_113538_create_products_table', 3),
(6, '2025_01_28_062816_create_carts_table', 4),
(7, '2025_01_29_092406_create_orders_table', 5),
(8, '2025_02_04_061903_add_payment_status_to_orders_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rec_address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'in progress',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'cash on delivery',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `rec_address`, `phone`, `status`, `user_id`, `product_id`, `payment_status`, `created_at`, `updated_at`) VALUES
(9, 'viva Richerd', 'West Indie', '0722144235', 'Delivered', 3, 15, 'cash on delivery', '2025-01-29 04:46:24', '2025-02-09 00:43:10'),
(12, 'viva Richerd', 'West Indies', '0722144235', 'Delivered', 3, 12, 'cash on delivery', '2025-01-29 11:10:46', '2025-01-30 04:03:35'),
(13, 'viva Richerd', 'West Indies', '0722144235', 'Delivered', 3, 13, 'cash on delivery', '2025-01-29 11:10:46', '2025-01-31 04:41:46'),
(14, 'viva Richerd', 'West Indies', '0722144235', 'Delivered', 3, 14, 'cash on delivery', '2025-01-29 11:10:46', '2025-01-31 03:44:21'),
(15, 'viv richards', 'Colombo', '0722144235', 'Delivered', 3, 21, 'cash on delivery', '2025-01-30 03:50:47', '2025-01-31 03:44:23'),
(16, 'viv Richerd', '\"13/104 Avisawlla Road, wellampitiya\"', '0722144235', 'Delivered', 3, 12, 'cash on delivery', '2025-02-03 02:20:23', '2025-02-05 00:38:20'),
(17, 'viv Richerd', '\"13/104 Avisawlla Road, wellampitiya\"', '0722144235', 'Delivered', 3, 12, 'cash on delivery', '2025-02-04 01:44:56', '2025-02-09 00:43:13'),
(18, 'viv Richerd', '\"13/104 Avisawlla Road, wellampitiya\"', '0722144235', 'On the way', 3, 13, 'cash on delivery', '2025-02-04 01:44:56', '2025-02-05 00:38:28'),
(19, 'viv Richerd', '\"13/104 Avisawlla Road, wellampitiya\"', '0722144235', 'On the way', 3, 14, 'cash on delivery', '2025-02-04 01:44:56', '2025-02-09 00:43:21'),
(20, 'viv Richerd', '\"13/104 Avisawlla Road, wellampitiya\"', '0722144235', 'Delivered', 3, 14, 'cash on delivery', '2025-02-05 00:24:29', '2025-02-05 00:38:23'),
(21, 'viv Richerd', '\"13/104 Avisawlla Road, wellampitiya\"', '0722144235', 'in progress', 3, 12, 'cash on delivery', '2025-02-09 11:24:36', '2025-02-09 11:24:36');

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
('babarazam@gmail.com', '$2y$12$69WKKqNIKsE3DCgdMp72JeuekvE9.wdNMyiuc7WTMjItTDhlZdaMa', '2025-02-03 08:20:08'),
('itisramzan777@gmail.com', '$2y$12$6xZZDzkYa9zMhuAVMXm/AOyU7vo9lJbABx8Hj4b6VGimzklrUaeKW', '2025-02-03 08:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `categorey` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `price`, `categorey`, `quantity`, `created_at`, `updated_at`) VALUES
(12, 'Gas', 'Gas For Cook', '1738168104.png', '900', '2.5Kg', '30', '2025-01-23 12:30:50', '2025-01-29 11:04:12'),
(13, 'Gas', 'Gas For Cook', '1738168493.png', '1600', '5KG Gas', '28', '2025-01-24 02:41:27', '2025-01-29 11:04:53'),
(14, 'Gas', 'Gas For Cook', '1738168558.png', '2500', '9KG Gas', '50', '2025-01-24 02:42:32', '2025-01-29 11:05:58'),
(15, 'Gas', 'Gas For Cook', '1738168264.png', '3000', '12.5KG Gas', '80', '2025-01-24 02:43:59', '2025-01-29 11:06:42'),
(20, 'Gas', 'Gas For Cook', '1738168659.png', '6000', '15KG Gas', '80', '2025-01-29 11:07:39', '2025-01-29 11:07:39'),
(21, 'Gas', 'Gas For Cook', '1738168699.png', '35000', '35KG Gas', '80', '2025-01-29 11:08:19', '2025-01-29 11:08:19'),
(22, 'Gas', 'For Cook', NULL, '35000', '35KG Gas', '80', '2025-02-09 11:35:35', '2025-02-09 11:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BxWIxTPt09nf2QleBlj00np753jbTTFSQAEkgCBY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWGtDVWU5R1JxZmxKWWR4NndHSmZPSXhnaVFXSnJOWnp3NnF2ZGllcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9fQ==', 1739121143);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `nic`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ramzan', 'itisramzan777@gmail.com', 'user', '0772245345', '13/104 Avisawlla Road, orugodawtha', '200218903523', NULL, '$2y$12$Z2XwYnKk0VMUvAYTAzG63u95RMdACe.5B2J9ywrNA7fV4jjnzvcLK', NULL, '2025-01-02 13:22:14', '2025-01-02 13:22:14'),
(2, 'Rizwan', 'itisramzan77@gmail.com', 'admin', '0772245345', '13/104 Avisawlla Road, orugodawtha', '200218903523', NULL, '$2y$12$NnqatvnD0yDkiRsdqSsdzenLn6Iq5xHnwSfqyW0gmk6Ncp8ev9DHq', NULL, '2025-01-02 13:25:57', '2025-01-03 12:42:09'),
(3, 'viv Richerd', 'vivr@gmail.com', 'user', '0722144235', '13/104 Avisawlla Road, wellampitiya', '200218903652', NULL, '$2y$12$iGbvKFOKcdzYggo/qTLdaeh8qhLu8o4TYzXkmzKp9aGs4D1/S8Aue', NULL, '2025-01-04 14:04:38', '2025-01-04 14:04:38'),
(4, 'Babar Azam', 'babarazam@gmail.com', 'user', '0722155478', 'Pakistan', '200218608921', NULL, '$2y$12$CEZ4jVX.bBOY0n0L8FdbI.IwkWCuNfS9hrcWjWIDqNRV/rZk.Fcs.', NULL, '2025-01-24 07:04:34', '2025-01-24 07:04:34'),
(5, 'Starc', 'mitchellstarc16156@gmail.com', 'user', '0722155067', 'Colombo', '200218608965', NULL, '$2y$12$6vyn3OM.LR9gS0TIfeZxhezllKaAYNJHuq5yAQ5adjjrLlz1nZDd.', NULL, '2025-02-05 00:36:03', '2025-02-05 00:36:03'),
(6, 'zimam', 'jmzimam2003@gmail.com', 'admin', '0772245345', '358/c Batticalo', '200301002030', NULL, '$2y$12$dzlZEa5tOHRxwoNP/JsXSu7nbW9NGryWCo7u2nhTcwdpm7a4kyPLy', NULL, '2025-02-09 00:45:33', '2025-02-09 00:45:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categoreys`
--
ALTER TABLE `categoreys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categoreys`
--
ALTER TABLE `categoreys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
