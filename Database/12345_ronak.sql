-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2026 at 05:25 PM
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
-- Database: `12345_ronak`
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
('laravel-cache-user_2_tasks', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1773857154),
('laravel-cache-user_3_tasks', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1773857461),
('laravel-cache-user_4_tasks', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:15:\"App\\Models\\Task\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"tasks\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:2;s:7:\"user_id\";i:4;s:5:\"title\";s:6:\"dfsfds\";s:11:\"description\";s:12:\"fdsfsdfdvxvc\";s:6:\"status\";s:9:\"completed\";s:10:\"created_at\";s:19:\"2026-03-18 18:12:13\";s:10:\"updated_at\";s:19:\"2026-03-18 18:12:49\";s:10:\"deleted_at\";N;s:10:\"attachment\";s:56:\"attachments/CJqfpsZwEYpgFXwE4Vu2T6ZIz1Cw35YZWxwWHcDy.jpg\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:2;s:7:\"user_id\";i:4;s:5:\"title\";s:6:\"dfsfds\";s:11:\"description\";s:12:\"fdsfsdfdvxvc\";s:6:\"status\";s:9:\"completed\";s:10:\"created_at\";s:19:\"2026-03-18 18:12:13\";s:10:\"updated_at\";s:19:\"2026-03-18 18:12:49\";s:10:\"deleted_at\";N;s:10:\"attachment\";s:56:\"attachments/CJqfpsZwEYpgFXwE4Vu2T6ZIz1Cw35YZWxwWHcDy.jpg\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:7:\"user_id\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:6:\"status\";i:4;s:10:\"attachment\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1773858171),
('laravel-cache-user_6_tasks', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1773858812),
('laravel-cache-user_7_tasks', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:15:\"App\\Models\\Task\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"tasks\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:3;s:7:\"user_id\";i:7;s:5:\"title\";s:7:\"knjbhnb\";s:11:\"description\";s:10:\"lkbjhdasda\";s:6:\"status\";s:7:\"pending\";s:10:\"created_at\";s:19:\"2026-03-18 18:32:06\";s:10:\"updated_at\";s:19:\"2026-03-18 18:35:09\";s:10:\"deleted_at\";N;s:10:\"attachment\";s:56:\"attachments/2wMrCF4JvQufuQ4Yz05MVrYURDuWi8tBE15a1Qap.jpg\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:3;s:7:\"user_id\";i:7;s:5:\"title\";s:7:\"knjbhnb\";s:11:\"description\";s:10:\"lkbjhdasda\";s:6:\"status\";s:7:\"pending\";s:10:\"created_at\";s:19:\"2026-03-18 18:32:06\";s:10:\"updated_at\";s:19:\"2026-03-18 18:35:09\";s:10:\"deleted_at\";N;s:10:\"attachment\";s:56:\"attachments/2wMrCF4JvQufuQ4Yz05MVrYURDuWi8tBE15a1Qap.jpg\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:7:\"user_id\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:6:\"status\";i:4;s:10:\"attachment\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1773859510),
('laravel-cache-user_8_tasks', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:15:\"App\\Models\\Task\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"tasks\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:4;s:7:\"user_id\";i:8;s:5:\"title\";s:4:\"asdf\";s:11:\"description\";s:4:\"sdfg\";s:6:\"status\";s:7:\"pending\";s:10:\"created_at\";s:19:\"2026-03-19 15:17:19\";s:10:\"updated_at\";s:19:\"2026-03-19 15:17:19\";s:10:\"deleted_at\";N;s:10:\"attachment\";N;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:4;s:7:\"user_id\";i:8;s:5:\"title\";s:4:\"asdf\";s:11:\"description\";s:4:\"sdfg\";s:6:\"status\";s:7:\"pending\";s:10:\"created_at\";s:19:\"2026-03-19 15:17:19\";s:10:\"updated_at\";s:19:\"2026-03-19 15:17:19\";s:10:\"deleted_at\";N;s:10:\"attachment\";N;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:7:\"user_id\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:6:\"status\";i:4;s:10:\"attachment\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1773936205),
('laravel-cache-user_9_tasks', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1773935364);

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
(4, '2026_03_16_162229_create_tasks_table', 1),
(5, '2026_03_18_174256_add_soft_deletes_and_attachment_to_tasks_table', 2),
(6, '2026_03_18_174257_add_role_and_otp_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('bZQERJRUvfR2YEKzllQudWB7SPibIxBYGzfzMZpu', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQVcydTdkMGQ3UGdSa2IwUkpXanYzSU44ZTJWV29OUXJEbkR0dm52TyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YXNrcyI7czo1OiJyb3V0ZSI7czoxMToidGFza3MuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O30=', 1773935657),
('NTkD0m3aRLKKPVLvapX6glT8S1NTZ0NRw5RET7h0', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT1FGOXowUG9JSFZ1N1VvWGwxQXN2dUFvcGltQlVwWFI5MWtLdDRFUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MTU6ImFkbWluLmRhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTE6Im90cF91c2VyX2lkIjtpOjk7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6OTt9', 1773934791);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','completed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `attachment`) VALUES
(1, 1, 'qwqf', 'dfgd', 'pending', '2026-03-18 12:16:42', '2026-03-18 12:16:53', NULL, NULL),
(2, 4, 'dfsfds', 'fdsfsdfdvxvc', 'completed', '2026-03-18 12:42:13', '2026-03-18 12:42:49', NULL, 'attachments/CJqfpsZwEYpgFXwE4Vu2T6ZIz1Cw35YZWxwWHcDy.jpg'),
(3, 7, 'knjbhnb', 'lkbjhdasda', 'pending', '2026-03-18 13:02:06', '2026-03-18 13:05:09', NULL, 'attachments/2wMrCF4JvQufuQ4Yz05MVrYURDuWi8tBE15a1Qap.jpg'),
(4, 8, 'asdf', 'sdfg', 'pending', '2026-03-19 09:47:19', '2026-03-19 09:47:19', NULL, NULL),
(5, 9, 'Complete Project Documentation', 'Finish all screenshot captures and walkthrough update.', 'pending', '2026-03-19 10:08:08', '2026-03-19 10:09:24', '2026-03-19 10:09:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `otp`, `otp_expires_at`) VALUES
(1, 'anil', 'anil@yopmail.com', NULL, '$2y$12$jNGJD1i75bHv/x1OIYbsaeX5aCAkj0l4luovg/K/aFQ.2oseFsVne', NULL, '2026-03-18 12:16:11', '2026-03-18 12:16:11', 'user', NULL, NULL),
(2, 'Ronak', 'anilp@yopmail.com', NULL, '$2y$12$Bs1Pbhx64D5Fv/2CtJTvde.gqwlGXVesK9Qm.ydAnBfmo4kSGaTre', NULL, '2026-03-18 12:23:55', '2026-03-18 12:25:53', 'user', NULL, NULL),
(3, 'Ronak', 'ronak@yopmail.com', NULL, '$2y$12$imD5W1NDyWQyZCWpc8A4sumHWDh29Uhp8obcmrnC7vDnYol4t1P3q', NULL, '2026-03-18 12:30:27', '2026-03-18 12:30:27', 'user', '610076', '2026-03-18 12:40:27'),
(4, 'Ronak', 'ronakp@yopmail.com', NULL, '$2y$12$JRQl/lP1JW55wq6ZJJI28e2CkgbkOVTSfEAgqAv6TtBN1C1JXbVaW', NULL, '2026-03-18 12:33:16', '2026-03-18 12:41:11', 'user', NULL, NULL),
(5, 'wwww', 'ronakpw@yopmail.com', NULL, '$2y$12$E0SjPdGIF7lcQjNnRhiErO.XPZPoaNKK56Lphg0Z3ZyIQxy.Z/mCW', NULL, '2026-03-18 12:50:57', '2026-03-18 12:51:30', 'user', NULL, NULL),
(6, 'dd', 'dd@yopmail.com', NULL, '$2y$12$RHG.PFi1jvJU9RidE/wlaO9nSyyGGp.Qt8IahtofXnDc20YAXp7pG', NULL, '2026-03-18 12:52:39', '2026-03-18 12:53:25', 'user', NULL, NULL),
(7, 'rruhgg', 'rr@yopmail.com', NULL, '$2y$12$C.SuRk7l2jGYQmNqG38MTu33w1r4izNAKXiZsoNcCEvZpeAcpig8a', NULL, '2026-03-18 13:01:21', '2026-03-18 13:02:50', 'user', NULL, NULL),
(8, 'rrr@yopmail.com', 'rrr@yopmail.com', NULL, '$2y$12$iWs/lsaeUU/dh.JocH.iDu1GFn8p7jl8BzvcYxFArdZ3IUREaAuCq', NULL, '2026-03-19 09:46:40', '2026-03-19 09:47:02', 'user', NULL, NULL),
(9, 'Test User', 'test@example.com', NULL, '$2y$12$rE0DY5CkNIdKTiUZWlYWz.mKMMToC/6byo8lSiM.5rXygkQPdrapS', NULL, '2026-03-19 09:52:42', '2026-03-19 09:52:42', 'user', '960341', '2026-03-19 10:02:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
