-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2021 at 05:37 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_histories`
--

CREATE TABLE `login_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_histories`
--

INSERT INTO `login_histories` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', '2021-11-09 01:06:51', '2021-11-09 01:06:51'),
(2, 'test', 'test@gmail.com', '2021-11-09 01:26:14', '2021-11-09 01:26:14'),
(3, 'test', 'test@gmail.com', '2021-11-09 01:34:36', '2021-11-09 01:34:36'),
(4, 'test', 'test@gmail.com', '2021-11-09 01:35:33', '2021-11-09 01:35:33'),
(5, 'test', 'test@gmail.com', '2021-11-09 01:35:41', '2021-11-09 01:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_11_08_031607_create_jobs_table', 1),
(11, '2021_11_08_093212_create_nfts_table', 1),
(12, '2021_11_09_090248_create_login_histories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nfts`
--

CREATE TABLE `nfts` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0d7237c5ac41b9001d96ba6071b588cebeb70c011818c062a7719b8870fbf897b6e3a726b5034bb0', 4, 1, 'Test Token', '[]', 0, '2021-11-09 01:34:36', '2021-11-09 01:34:36', '2022-11-09 09:34:36'),
('0dfd45df735a859064dee06421fcece4a54ba99b70183bad1807da843e71f9da90d5fa2fe1c16276', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:39:17', '2021-11-08 23:39:17', '2022-11-09 07:39:17'),
('0edaf9530db6e60738472c9093b9e1542ce89f0aafef943758a646413fbbd6d48cfbb810a24d5f3f', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:39:16', '2021-11-08 23:39:16', '2022-11-09 07:39:16'),
('1e4cd4bb1a48882bbe3ba359b8036d5ff911b27c519b5179fd8ec556ad0beb3006d3652191cf58d0', 4, 1, 'Test Token', '[]', 0, '2021-11-09 01:35:33', '2021-11-09 01:35:33', '2022-11-09 09:35:33'),
('20e0fe5c372b9109c6a043280b08b67ae082b4425a27dbec7a2a36b7bc87e4e6b389a393b20ab637', 4, 1, 'Test Token', '[]', 0, '2021-11-08 23:43:16', '2021-11-08 23:43:16', '2022-11-09 07:43:16'),
('210519dd7f0c95ac3f36799a51fbe476d22812495ac82e8c1521e92fb4d931d0a7d49b6e77f75a27', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:28:45', '2021-11-08 23:28:45', '2022-11-09 07:28:45'),
('4c4ae5ee1f2da0797bdcc54439aec3069440253b3c0c8b8ffd53b076a3f388a20740604a6b277cac', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:39:15', '2021-11-08 23:39:15', '2022-11-09 07:39:15'),
('4f421b20fe76ddd4bf60cb76663f3e47f5886ff055be7bf7dccc9d1e75850dfc829d08410aaebf85', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:25:55', '2021-11-08 23:25:55', '2022-11-09 07:25:55'),
('78fec199b9e04ed4d892870bb4de02d8865005668f9ec39d0625164dcfa135960bec499fc6c46f44', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:39:18', '2021-11-08 23:39:18', '2022-11-09 07:39:18'),
('7cad1184d981154b2f95e4bde2c010806f3f0572b6843bbfe7afa7d92443de34f0ee4bcc4834948b', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:39:17', '2021-11-08 23:39:17', '2022-11-09 07:39:17'),
('7d656560360ee513dd454e85c8e9692001506520f9223c1b7cc6e70800ec6c464d22430121758319', 4, 1, 'Test Token', '[]', 0, '2021-11-09 01:07:23', '2021-11-09 01:07:23', '2022-11-09 09:07:23'),
('7f20ada65092d9975304a12d4dfaa3f76b6cec4ac727332a37ad7fe7e465fa5225c8b4c72a35d28c', 4, 1, 'Test Token', '[]', 0, '2021-11-09 01:06:51', '2021-11-09 01:06:51', '2022-11-09 09:06:51'),
('8b11ecc0373b484ad03b2bd91f2a8760807c5b98ffd28d1e65df6ae5240e5a84805867e9f524d31e', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:12:46', '2021-11-08 23:12:46', '2022-11-09 07:12:46'),
('8e86761eb931fcd44cf3ec9cded5eec4fb45717a835c823d5d30bb11d5b372383567b06e0932308f', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:32:06', '2021-11-08 23:32:06', '2022-11-09 07:32:06'),
('9418ba9cd3b198e378d550e7dba9a178a90b7f42eb3c5ffdeff21da473f8a007421a432e3705c027', 4, 1, 'Test Token', '[]', 0, '2021-11-09 01:35:41', '2021-11-09 01:35:41', '2022-11-09 09:35:41'),
('9d41c341b6bc1c0508991bb4a5b098b72e110cfe2d156c74028af72607a991d92805d214faee5e01', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:24:37', '2021-11-08 23:24:37', '2022-11-09 07:24:37'),
('bdd7c336e8418271b7f9b01ab80a490351dd2aa3616ae04c761f52e27533dbe17c1313f0a95b0624', 4, 1, 'Test Token', '[]', 0, '2021-11-09 01:26:14', '2021-11-09 01:26:14', '2022-11-09 09:26:14'),
('c9ce425f588d5eddd66d3e4278aad5465628000136435ca14dd2a63c36c7ba9f9f6e1c3e56ab9ebe', 4, 1, 'Test Token', '[]', 1, '2021-11-08 23:52:20', '2021-11-08 23:52:20', '2022-11-09 07:52:20'),
('ed4fa39260ea478103624b8bd275a412fb56304288629d244af4534a03e9c1e056c3a31373c3ce90', 4, 1, 'Test Token', '[]', 0, '2021-11-09 01:06:06', '2021-11-09 01:06:06', '2022-11-09 09:06:06'),
('fad16102ae1ffb50a04c5fce273b7e6346ca19e46caa221d83b6ac5b60133d482b9c4c83051de454', 3, 1, 'Test Token', '[]', 0, '2021-11-08 23:14:15', '2021-11-08 23:14:15', '2022-11-09 07:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '7VtSMflLoCcUfZzLNsvmQ5PCZvc2GW6olqqArGeU', NULL, 'http://localhost', 1, 0, 0, '2021-11-08 23:02:56', '2021-11-08 23:02:56'),
(2, NULL, 'Laravel Password Grant Client', 'POLfDz0hrXwuKKNaDHVcg3g0KzsNtgHj72QufvyC', 'users', 'http://localhost', 0, 1, 0, '2021-11-08 23:02:56', '2021-11-08 23:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-08 23:02:56', '2021-11-08 23:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Test API Grant', '266c507ad188f10c90eb24dc64d6b62b81c010c57e251f13881acc7dfc23544d', '[\"*\"]', NULL, '2021-11-08 23:03:09', '2021-11-08 23:03:09'),
(2, 'App\\Models\\User', 1, 'Test API Grant', '7635efbd20c238c81652fe96ca1c7b2c4b789b2bef03e66e9cdfd66f1280f103', '[\"*\"]', NULL, '2021-11-08 23:03:15', '2021-11-08 23:03:15'),
(3, 'App\\Models\\User', 1, 'GGTc API Grant', 'd61a5856ea9797cda34c7bf8a224973f0bc7f551d0d1096007a5320e5c585ff9', '[\"*\"]', NULL, '2021-11-08 23:03:55', '2021-11-08 23:03:55'),
(4, 'App\\Models\\User', 1, 'Token Name', '24f9816c0b3042d00ac25a662b28b4df218a023c4b4c4d4e4e339167f518c446', '[\"*\"]', NULL, '2021-11-08 23:04:17', '2021-11-08 23:04:17'),
(5, 'App\\Models\\User', 1, 'Test Token', '632082b03b5b04219c7512a7db46c2a9f3bc8fca7ddeac2739e61b4403ef4685', '[\"*\"]', NULL, '2021-11-08 23:07:07', '2021-11-08 23:07:07'),
(6, 'App\\Models\\User', 1, 'Test Token', 'e8d274625ff6d689c32ede8aa38f4bf1d8928e1d7593a5de5fea931369167087', '[\"*\"]', NULL, '2021-11-08 23:10:24', '2021-11-08 23:10:24'),
(7, 'App\\Models\\User', 1, 'Test Token', '9dc3f283ec6b7d1cd7dc914885b3e3847b6a354e76f24871b8adae0892dd63ed', '[\"*\"]', NULL, '2021-11-08 23:10:58', '2021-11-08 23:10:58'),
(8, 'App\\Models\\User', 1, 'Test Token', '2ce2c5f057f42686c989d9962d756a44b6b6cde4c61bff22eeddf44cbab6fbc7', '[\"*\"]', NULL, '2021-11-08 23:11:06', '2021-11-08 23:11:06'),
(9, 'App\\Models\\User', 1, 'Test Token', 'cece4a0c13df97f3750f31a0eb9da83581b0c0c69e77ed02f481dafd0f0cc6ee', '[\"*\"]', NULL, '2021-11-08 23:11:07', '2021-11-08 23:11:07'),
(10, 'App\\Models\\User', 1, 'Test Token', '0905a8df0d7c00277df2149d894098520f9bf4259d4a12e8d4ced96d595c1faa', '[\"*\"]', NULL, '2021-11-08 23:11:08', '2021-11-08 23:11:08'),
(11, 'App\\Models\\User', 1, 'Test Token', '2f9d56f0ce851880a5ac16a5de501f2997ff90f3e66873a01923f07e3ce49bcf', '[\"*\"]', NULL, '2021-11-08 23:11:09', '2021-11-08 23:11:09'),
(12, 'App\\Models\\User', 1, 'Test Token', '699caba9d0e12f2a30ec9a611230e068a2e1e3531e98164a318da182524bbf74', '[\"*\"]', NULL, '2021-11-08 23:11:09', '2021-11-08 23:11:09'),
(13, 'App\\Models\\User', 1, 'Test Token', 'c1d16b1ec31c398162124df876d329f6e0d548b18bb05fae3ecf99b08d5f2389', '[\"*\"]', NULL, '2021-11-08 23:11:09', '2021-11-08 23:11:09'),
(14, 'App\\Models\\User', 1, 'Test Token', 'c0dacb4a0fab16932f97de16ea58f5c6e5d29614a917454fc24dc784f73c2441', '[\"*\"]', NULL, '2021-11-08 23:11:11', '2021-11-08 23:11:11'),
(15, 'App\\Models\\User', 1, 'Test Token', '622308564fdfdc08afe2dedb35c80b337f1153ebc975cd8b9041db25e467b245', '[\"*\"]', NULL, '2021-11-08 23:11:12', '2021-11-08 23:11:12'),
(16, 'App\\Models\\User', 1, 'Test Token', '5295f8f2b747f4beaf4f3fe336c54622a3bf9c6e31e8f6dcb3080d0daa59c010', '[\"*\"]', NULL, '2021-11-08 23:11:13', '2021-11-08 23:11:13'),
(17, 'App\\Models\\User', 3, 'Test Token', '53769a3547aad5fb8e9389dd61fe79bf01409c35ac7e50a24792f32aa871b439', '[\"*\"]', NULL, '2021-11-08 23:11:40', '2021-11-08 23:11:40'),
(18, 'App\\Models\\User', 3, 'Test Token', '0651737a910923f781491bc9e4f0106a30649e28d7eef7acae1837c921c2c487', '[\"*\"]', NULL, '2021-11-08 23:14:00', '2021-11-08 23:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(4, 'test', 'test@gmail.com', NULL, '$2y$10$tDYZVbYDrPKivJLLaFqq/u8K1KuJWDKl5FcLPLzWcjMv7wrkk6KqS', NULL, '2021-11-08 23:43:13', '2021-11-08 23:43:13');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `login_histories`
--
ALTER TABLE `login_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nfts`
--
ALTER TABLE `nfts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_histories`
--
ALTER TABLE `login_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nfts`
--
ALTER TABLE `nfts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
