-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 08:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coderstape_5.8`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Google', '123 4566 123', '2020-05-30 00:10:01', '2020-05-30 00:10:01'),
(2, 'Isom Moen', '(815) 453-0284 x6099', '2020-05-30 00:11:47', '2020-05-30 00:11:47'),
(3, 'Stephen O\'Conner', '434-749-7961 x568', '2020-05-30 00:11:47', '2020-05-30 00:11:47'),
(4, 'Shaun Cummerata', '(894) 742-7326 x593', '2020-05-30 00:11:47', '2020-05-30 00:11:47'),
(5, 'Dr. Fay Pollich', '893-551-1798 x9754', '2020-05-30 00:11:47', '2020-05-30 00:11:47'),
(6, 'Mr. Alexandro Parisian', '(383) 893-0317 x52039', '2020-05-30 00:11:47', '2020-05-30 00:11:47'),
(7, 'Angie Christiansen II', '+1-342-585-3522', '2020-05-30 00:11:48', '2020-05-30 00:11:48'),
(8, 'Dr. Salma Nolan II', '1-234-357-9383', '2020-05-30 00:11:48', '2020-05-30 00:11:48'),
(9, 'Nicklaus Kiehn DDS', '+1-540-697-7316', '2020-05-30 00:11:48', '2020-05-30 00:11:48'),
(10, 'Dante Rohan DDS', '(447) 985-2718 x5920', '2020-05-30 00:11:48', '2020-05-30 00:11:48'),
(11, 'Enrico Feeney', '808-603-4234', '2020-05-30 00:11:48', '2020-05-30 00:11:48'),
(12, 'Felton Schaden', '(314) 703-9978', '2020-05-30 00:11:48', '2020-05-30 00:11:48'),
(13, 'Lynn Wilkinson', '(581) 405-7295 x3696', '2020-05-30 00:11:48', '2020-05-30 00:11:48'),
(14, 'Mrs. Monica Swift Jr.', '(897) 323-2372', '2020-05-30 00:11:48', '2020-05-30 00:11:48'),
(15, 'Ocie Schumm', '1-238-680-0817 x4914', '2020-05-30 00:11:48', '2020-05-30 00:11:48'),
(16, 'Einar Stoltenberg', '1-823-676-6684', '2020-05-30 00:11:48', '2020-05-30 00:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `company_id`, `name`, `email`, `active`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tanvir', 'tanvir@gmail.com', 2, 'uploads/QmwTIs4Cy8gw2AXvHp006W6w0eLyYpWG4IuRPjNl.jpeg', NULL, NULL),
(3, 8, 'Prof. Mikayla Mante PhD', 'jonatan.stracke@example.net', 0, NULL, NULL, NULL),
(4, 9, 'Isabell Cassin PhD', 'ukiehn@example.org', 1, NULL, NULL, NULL),
(5, 10, 'Michale O\'Conner', 'marvin.madie@example.net', 1, NULL, NULL, NULL),
(6, 11, 'Prof. Wilma White', 'rigoberto.pouros@example.org', 1, NULL, NULL, NULL),
(7, 12, 'Dovie White', 'mark56@example.net', 1, NULL, NULL, NULL),
(8, 13, 'Domenic Gleichner', 'trystan15@example.com', 1, NULL, NULL, NULL),
(9, 14, 'Prof. Darron Reilly MD', 'bradford73@example.org', 1, NULL, NULL, NULL),
(10, 15, 'Annabelle Green', 'weissnat.barrett@example.org', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Listeners\\\\WelcomeNewUserListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":7:{s:5:\\\"class\\\";s:36:\\\"App\\\\Listeners\\\\WelcomeNewUserListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:35:\\\"App\\\\Events\\\\RegisterNewCustomerEvent\\\":2:{s:8:\\\"customer\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:12:\\\"App\\\\Customer\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1590819029, 1590819029);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_04_28_192509_create_customers_table', 1),
(4, '2020_04_29_183835_create_companies_table', 1),
(5, '2020_05_02_110650_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saifur', 'saifur@gmail.com', NULL, '$2y$10$XBdWVgI3re23dE9w4ACjnOjx2B9xA0z/ZxwWmlbo2y/HeWNVvgm.a', NULL, '2020-05-30 00:02:05', '2020-05-30 00:02:05'),
(2, 'Antwan Medhurst', 'jamaal39@example.com', '2020-05-30 00:11:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I0dgPsKBAP', '2020-05-30 00:11:47', '2020-05-30 00:11:47'),
(3, 'Miss Raquel Quitzon MD', 'pbeier@example.org', '2020-05-30 00:11:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xevfwUg7pU', '2020-05-30 00:11:47', '2020-05-30 00:11:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
