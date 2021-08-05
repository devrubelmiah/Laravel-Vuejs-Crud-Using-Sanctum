-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 09:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_vuejs_crud__auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'samsung', 'test', '/images/1627904901_6107db85d0cbf.jpeg', '2021-08-02 05:48:21', '2021-08-02 05:48:21'),
(2, 'Vuejs', 'vuejs', 'it is a library.', '/images/1628147123_610b8db357caa.jpg', '2021-08-05 01:05:23', '2021-08-05 01:05:23'),
(3, 'javascript', 'javascript', 'it is popular libray', '/images/1628147406_610b8ece1b01e.jpg', '2021-08-05 01:10:05', '2021-08-05 01:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2021_08_01_154412_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'browser', '537d95a8cf154491fbd5dc5e5200a29307dccae3a2ba8ac10335d754ca408fae', '[\"*\"]', NULL, '2021-08-02 05:47:28', '2021-08-02 05:47:28'),
(2, 'App\\Models\\User', 1, 'browser', 'ce4df3864c5d9240018e6eae0bffff6495b9ac7114624814982d11ebef0790f6', '[\"*\"]', NULL, '2021-08-02 08:31:48', '2021-08-02 08:31:48'),
(3, 'App\\Models\\User', 1, 'browser', '87949f9b628318462503b0619aafef706a9da549fab5d730047b8c0c621de0e0', '[\"*\"]', NULL, '2021-08-02 09:24:22', '2021-08-02 09:24:22'),
(4, 'App\\Models\\User', 1, 'browser', '6ca373e93d427a9dff3a86e358648a79d7378e0154c6cbcd0aea63b7a5cb0924', '[\"*\"]', NULL, '2021-08-02 09:25:42', '2021-08-02 09:25:42'),
(5, 'App\\Models\\User', 1, 'browser', '93827e2805973b64538dc468721349fb80a225429e3a31965c18b04a7c361449', '[\"*\"]', NULL, '2021-08-02 09:28:56', '2021-08-02 09:28:56'),
(6, 'App\\Models\\User', 1, 'browser', 'f6de4ed92f68c2bb182b237282b3265268c71a576c49d21d3f06895d5645170d', '[\"*\"]', NULL, '2021-08-02 09:37:17', '2021-08-02 09:37:17'),
(7, 'App\\Models\\User', 1, 'browser', 'ea5807a68d641e101b89d877adebc2eb957bfb470433b051e0f0c105a3879df8', '[\"*\"]', NULL, '2021-08-02 09:46:25', '2021-08-02 09:46:25'),
(8, 'App\\Models\\User', 1, 'browser', 'a55e5e67614aee9c5169bcec336a25d02a1f88c9e723812f60e7f2037263979d', '[\"*\"]', NULL, '2021-08-02 09:48:17', '2021-08-02 09:48:17'),
(9, 'App\\Models\\User', 1, 'browser', 'e609a51cc9582260501ff663c82b029707dd19bcf6e0b2fa2bffe727b36357b6', '[\"*\"]', NULL, '2021-08-02 09:53:10', '2021-08-02 09:53:10'),
(10, 'App\\Models\\User', 1, 'browser', '6aa7e1cc721543fef8e0ede956ca0c4bd4c9f58cffd28d63985c587c0f10b223', '[\"*\"]', NULL, '2021-08-02 10:00:14', '2021-08-02 10:00:14'),
(11, 'App\\Models\\User', 1, 'browser', '760dd8577cc0e896d55209a7c1fe679e41fa63ae5211682768415c5ba0c53705', '[\"*\"]', NULL, '2021-08-02 10:54:50', '2021-08-02 10:54:50'),
(12, 'App\\Models\\User', 1, 'browser', 'ade92d5c6b5c6913baf8227c8527a84c76ada47e2e723fbb8517d3a88eddb31a', '[\"*\"]', NULL, '2021-08-02 11:27:17', '2021-08-02 11:27:17'),
(13, 'App\\Models\\User', 1, 'browser', 'bd3a057ed493e81e310a3a45ad6be4840c84159279bb53058d8657c3ac50cf74', '[\"*\"]', NULL, '2021-08-02 11:37:13', '2021-08-02 11:37:13'),
(14, 'App\\Models\\User', 1, 'browser', 'fc25ba25cab0049366f8502e8c24bea9fe4d8e12896b9605ffd7b192edfa9956', '[\"*\"]', NULL, '2021-08-02 11:47:58', '2021-08-02 11:47:58'),
(15, 'App\\Models\\User', 1, 'browser', '8b7f8f9daa5f5a809f35f1f02ee404a51c0ec10e333779d050a28aa4577e9a1c', '[\"*\"]', NULL, '2021-08-02 12:04:39', '2021-08-02 12:04:39'),
(16, 'App\\Models\\User', 1, 'browser', '27418b5dff4cdf5a164a6d28cfb96fec7fb12f4cb73daa176bdff8681032a2c5', '[\"*\"]', NULL, '2021-08-02 12:05:04', '2021-08-02 12:05:04'),
(17, 'App\\Models\\User', 1, 'browser', 'd1baf9836b57b558cbe814dc9fc9e441fc40b983a70a097d68864ec4f866fd59', '[\"*\"]', NULL, '2021-08-02 12:25:57', '2021-08-02 12:25:57'),
(18, 'App\\Models\\User', 1, 'browser', 'c5eef1745b970e498579becb092455595ea8394f40791dc4c728ab0c722a8e50', '[\"*\"]', NULL, '2021-08-02 12:26:30', '2021-08-02 12:26:30'),
(19, 'App\\Models\\User', 1, 'browser', '63d0af684409260f35cb8f7a5d2f839ea564667de9a9926ddd86571a430822fa', '[\"*\"]', NULL, '2021-08-02 12:38:02', '2021-08-02 12:38:02'),
(20, 'App\\Models\\User', 1, 'browser', 'b2e326f5c7d1138640400f4739f7211f8badcc14de109b8bb2a1488458aa58c8', '[\"*\"]', NULL, '2021-08-02 12:42:11', '2021-08-02 12:42:11'),
(21, 'App\\Models\\User', 1, 'browser', 'd0c1899b9ed6311280a23c322fde9e6f3d502abcac4d1e39742ab0b2891bc93a', '[\"*\"]', NULL, '2021-08-02 12:42:15', '2021-08-02 12:42:15'),
(22, 'App\\Models\\User', 1, 'browser', 'f89932cb0db98a3f2037b9622b5230fc864021fd8166b4b0af97aa4f927a00c5', '[\"*\"]', NULL, '2021-08-02 12:42:46', '2021-08-02 12:42:46'),
(23, 'App\\Models\\User', 1, 'browser', '8b473b962131bcc2bbbf0b14f253a3157ed00d422e9e47ca142a633535512652', '[\"*\"]', NULL, '2021-08-05 00:38:41', '2021-08-05 00:38:41'),
(24, 'App\\Models\\User', 2, 'browser', 'd7ad11c37c30b4a500f8d6372c7ef1af19b82834a41f24ba90aae8ea428c1807', '[\"*\"]', NULL, '2021-08-05 00:41:32', '2021-08-05 00:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$pme5jpv1BsxbcAwxcmdSdO6QqTncuEOqTQAkgAVWBaklzfu7yw6oS', NULL, '2021-08-02 05:46:47', '2021-08-02 05:46:47'),
(2, 'Tamim', 'tamim@gmail.com', NULL, '$2y$10$Mb98LW/nQVc3bN2kiALUr.k.Wt/3u.uceh7GmEAFkW4K7CYE3d2h.', NULL, '2021-08-05 00:41:02', '2021-08-05 00:41:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
