-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2020 at 04:28 PM
-- Server version: 5.7.22-0ubuntu0.17.10.1
-- PHP Version: 7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead1`
--

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_04_16_084008042287_create_1555404008266_permissions_table', 1),
(3, '2019_04_16_084008100873_create_1555404008517_roles_table', 1),
(4, '2019_04_16_084008154662_create_1555404008649_users_table', 1),
(5, '2019_04_16_084008529760_create_1555404008529_permission_role_pivot_table', 1),
(6, '2019_04_16_084008657099_create_1555404008656_role_user_pivot_table', 1),
(7, '2019_04_16_085008124252_add_last_login_at_to_users_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(2, 'permission_create', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(3, 'permission_edit', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(4, 'permission_show', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(5, 'permission_delete', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(6, 'permission_access', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(7, 'role_create', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(8, 'role_edit', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(9, 'role_show', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(10, 'role_delete', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(11, 'role_access', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(12, 'user_create', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(13, 'user_edit', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(14, 'user_show', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(15, 'user_delete', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL),
(16, 'user_access', '2019-04-16 03:10:35', '2019-04-16 03:10:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2019-04-16 03:10:08', '2019-04-16 03:10:08', NULL),
(2, 'User', '2019-04-16 03:10:08', '2019-04-16 03:10:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `last_login_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$IvTqC9imgJjhy2KzlHeTUe9O9gP2xvknCw7/PnbVhNDgBJdZSydFK', NULL, '2019-04-16 03:10:35', '2020-03-20 05:24:23', NULL, '2020-03-20 05:24:23'),
(2, 'Mrs. Earline Dickinson II', 'slesch@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QSBECqFDAe', '2020-03-20 03:42:34', '2020-03-20 03:42:34', NULL, '2020-03-04 03:42:34'),
(3, 'Leanne Funk', 'bernadette55@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Iv3CK2fMLm', '2020-03-20 03:42:34', '2020-03-20 03:42:34', NULL, '2020-02-27 03:42:34'),
(4, 'Camron Wehner', 'llesch@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EVpmnMTdn9', '2020-03-20 03:42:34', '2020-03-20 03:42:34', NULL, NULL),
(5, 'Shaylee Hirthe', 'jpacocha@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sLPaX7Z950', '2020-03-20 03:42:34', '2020-03-20 03:42:34', NULL, '2020-03-14 03:42:34'),
(6, 'Howell Ankunding', 'frank.denesik@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QTbTFHagmU', '2020-03-20 03:42:34', '2020-03-20 03:42:34', NULL, NULL),
(7, 'Micah Koch', 'flatley.coleman@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pHbJ6NJW8x', '2020-03-20 03:42:34', '2020-03-20 03:42:34', NULL, NULL),
(8, 'Delia Pfannerstill Sr.', 'twalker@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BJcSVf6BXl', '2020-03-20 03:42:34', '2020-03-20 03:42:34', NULL, NULL),
(9, 'Bernadine Jacobi DDS', 'elza.toy@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'psUShDuENp', '2020-03-20 03:42:34', '2020-03-20 03:42:34', NULL, '2019-12-12 03:42:34'),
(10, 'Prof. Sim Herzog', 'hellen.ondricka@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SyuawV5kAv', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, NULL),
(11, 'Dr. Kali Nader', 'jadyn15@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cOvgwCHEb1', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, NULL),
(12, 'Ewell Gulgowski II', 'nhyatt@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2fHjDd9yMK', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, NULL),
(13, 'Delpha White', 'ryan.candace@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yGdup9MZhB', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, NULL),
(14, 'Ottilie Nolan', 'greenfelder.raheem@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2P0Hd72JW4', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, NULL),
(15, 'Lonny Streich', 'electa44@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x6NsN838LV', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, '2020-02-16 03:42:34'),
(16, 'Frederique Stiedemann III', 'hane.abbey@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SmTKP65DFa', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, '2020-03-10 03:42:34'),
(17, 'Skyla Crooks III', 'gardner43@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2HsPdZYuQd', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, NULL),
(18, 'Brenden Blick', 'raymond.hackett@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gPyR57gIqf', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, NULL),
(19, 'Brant Eichmann V', 'cole.aileen@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5Dpx074BIO', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, '2020-01-08 03:42:34'),
(20, 'Anna McDermott', 'medhurst.jeanette@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0lcHlhZOAJ', '2020-03-20 03:42:35', '2020-03-20 03:42:35', NULL, NULL),
(21, 'Jesus Jenkins', 'stoltenberg.edwin@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tF3YiKx13g', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, '2020-01-20 03:42:34'),
(22, 'Joesph Bins', 'weissnat.kelsie@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iqQKG3pBIG', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, '2019-12-23 03:42:34'),
(23, 'Jaylen Hodkiewicz', 'salvador10@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w9uA5TzBPr', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, NULL),
(24, 'Macie Ortiz', 'harber.maribel@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kiG9s2ZX9I', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, NULL),
(25, 'Andreane Runolfsdottir', 'garnett16@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R6dcxxlWrp', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, '2020-02-27 03:42:34'),
(26, 'Tillman Price', 'vella.effertz@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UH3SLvVhf5', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, NULL),
(27, 'Jeramy Thiel', 'hoppe.elody@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZWCLsbUycm', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, NULL),
(28, 'Ms. Rosalyn Gerlach', 'jed.padberg@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9pxLfGiPEA', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, '2019-12-12 03:42:34'),
(29, 'Samara Dooley', 'katrine64@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UKVpnGFLJK', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, '2020-02-02 03:42:34'),
(30, 'Brannon Moore', 'keira.hegmann@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EhF1qn357m', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, NULL),
(31, 'Fritz Schneider', 'oleta58@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M6fQWblurI', '2020-03-20 03:42:36', '2020-03-20 03:42:36', NULL, NULL),
(32, 'Ruthie Little Jr.', 'genevieve70@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FEP0jqWNm9', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, NULL),
(33, 'Mr. Schuyler Nienow IV', 'xsauer@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o3kKwu2G2t', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, '2020-02-21 03:42:34'),
(34, 'John O\'Hara', 'alba25@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mRLAyU7KpL', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, NULL),
(35, 'Richard Schoen DDS', 'jewell03@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q9c69aPT6S', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, '2020-01-15 03:42:34'),
(36, 'Jazmyn Kessler PhD', 'reilly.conroy@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'co8t06jWdd', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, '2020-03-19 03:42:34'),
(37, 'Jordi Sipes', 'milan84@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9ykKKBlYWI', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, '2019-12-24 03:42:34'),
(38, 'Dr. Wellington Cronin', 'hessel.mollie@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FatXRLlJNr', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, NULL),
(39, 'Telly Denesik', 'mfarrell@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vOYnuoqF9N', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, '2020-02-01 03:42:34'),
(40, 'Fannie Sauer IV', 'lavonne87@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OjS7gJ3HRL', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, '2020-02-17 03:42:34'),
(41, 'Eryn Watsica', 'gail74@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eZ2AWOKSph', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, '2020-01-26 03:42:34'),
(42, 'Dr. Torey Feil', 'cremin.clifton@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AXnzv1Jkxi', '2020-03-20 03:42:37', '2020-03-20 03:42:37', NULL, '2020-01-17 03:42:34'),
(43, 'Jarred Collins', 'xbogisich@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fPW8K4ItGk', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, NULL),
(44, 'Elizabeth Pagac', 'claude36@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gpgld3cPer', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, '2020-01-23 03:42:34'),
(45, 'Dr. Wilton Gutkowski PhD', 'tborer@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iCq8fV7uWM', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, '2020-03-10 03:42:34'),
(46, 'Henriette Franecki Jr.', 'savion.cronin@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'plRt1L9KMJ', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, '2020-01-03 03:42:34'),
(47, 'Dr. Noemie King DDS', 'kframi@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EZtV3mCo1L', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, '2020-03-10 03:42:34'),
(48, 'Horace Cole IV', 'swift.osvaldo@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ae1wBpfvvz', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, NULL),
(49, 'Mr. Clovis Greenfelder III', 'runolfsson.kailyn@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FtHnxPBdBY', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, '2020-01-09 03:42:34'),
(50, 'Gregoria Hudson', 'franecki.theodore@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iYEKuGo3i9', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, '2019-12-28 03:42:34'),
(51, 'Leann Haley', 'noel80@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YdoSL8XzzR', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, '2020-01-25 03:42:34'),
(52, 'Selina Tremblay I', 'justice.considine@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uM9540N9Jp', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, NULL),
(53, 'Riley Dibbert', 'uweimann@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fw8qzaHtsj', '2020-03-20 03:42:38', '2020-03-20 03:42:38', NULL, '2020-03-04 03:42:34'),
(54, 'Miss Susan Bruen', 'howell.emelia@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Boqfkxi4QO', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, '2020-02-14 03:42:34'),
(55, 'Leda Bradtke', 'rzieme@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9JpD0seLwV', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, NULL),
(56, 'Roxane McKenzie', 'gutmann.jeanne@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sZX33TxeB2', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, '2020-03-18 03:42:34'),
(57, 'Prof. Davion Lesch V', 'alvena.hegmann@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oJeA6InN0X', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, NULL),
(58, 'Ms. Krystina Douglas', 'vbednar@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sKmtHBBOMm', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, '2020-01-09 03:42:34'),
(59, 'Laurianne Cronin', 'macejkovic.garret@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fAUwvtSHTC', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, '2020-01-02 03:42:34'),
(60, 'Jamal Carroll', 'jazmyn13@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fghKPWyKHL', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, '2020-02-23 03:42:34'),
(61, 'Maverick Von', 'araceli71@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9PoHIu4mcq', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, NULL),
(62, 'Prof. Emory Heller III', 'yost.demarco@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lT4r98WZ6X', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, '2019-12-19 03:42:34'),
(63, 'Anabel Harvey', 'lubowitz.damaris@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uJxH35fz9a', '2020-03-20 03:42:39', '2020-03-20 03:42:39', NULL, NULL),
(64, 'Georgianna Langworth', 'otilia.hessel@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pu2ASODHdA', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, NULL),
(65, 'Dr. Makenna Hackett', 'maurine.luettgen@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ISdhYrZUfF', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, NULL),
(66, 'Margot Hegmann', 'lhaag@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IRWv8L2LZQ', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, '2019-12-11 03:42:34'),
(67, 'Angelina White PhD', 'grogahn@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6lsT1OXlzN', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, '2019-12-14 03:42:34'),
(68, 'Mrs. Amanda Kunze I', 'mercedes.klein@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eLd6s6fDXa', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, NULL),
(69, 'Prof. Judge Rutherford', 'cyril34@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0VNjjzPTF6', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, NULL),
(70, 'Johnpaul Schoen', 'hmitchell@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'crFEWisNRn', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, '2019-12-24 03:42:34'),
(71, 'Adolphus Kuvalis PhD', 'batz.lavon@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ygTnVoYbmj', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, NULL),
(72, 'Abner Schultz', 'prenner@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K4kmP7ENYm', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, NULL),
(73, 'Burnice Murray DVM', 'pfannerstill.rene@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hqvgdnBaO1', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, NULL),
(74, 'Prof. Adan Botsford IV', 'vlueilwitz@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4Lk36vdOkf', '2020-03-20 03:42:40', '2020-03-20 03:42:40', NULL, NULL),
(75, 'Chris Schuster', 'bertha91@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dUkiDrqJOQ', '2020-03-20 03:42:41', '2020-03-20 03:42:41', NULL, NULL),
(76, 'Prof. Bradley Bauch', 'schneider.helen@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E4UKL04KAx', '2020-03-20 03:42:41', '2020-03-20 03:42:41', NULL, NULL),
(77, 'Maybelle King', 'kpaucek@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q2ah52VRfB', '2020-03-20 03:42:41', '2020-03-20 03:42:41', NULL, NULL),
(78, 'Alfreda Stiedemann', 'zander71@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FTha0FRxXu', '2020-03-20 03:42:41', '2020-03-20 03:42:41', NULL, NULL),
(79, 'Prof. Merlin Hirthe', 'mmoore@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kij9x7GMQL', '2020-03-20 03:42:41', '2020-03-20 03:42:41', NULL, NULL),
(80, 'Mikel Armstrong', 'kevin89@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9J2IAelwvx', '2020-03-20 03:42:41', '2020-03-20 03:42:41', NULL, NULL),
(81, 'Coralie Konopelski', 'jovani90@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M9xooN1dCT', '2020-03-20 03:42:41', '2020-03-20 03:42:41', NULL, '2019-12-22 03:42:34'),
(82, 'Kane Greenholt', 'aubrey.schaefer@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EzZglsKwVQ', '2020-03-20 03:42:41', '2020-03-20 03:42:41', NULL, NULL),
(83, 'Miss Eveline Carroll', 'cynthia.haag@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4sa2LWq4A1', '2020-03-20 03:42:41', '2020-03-20 03:42:41', NULL, NULL),
(84, 'Gloria Collins', 'uhintz@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u90TU8aDIu', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, '2020-01-09 03:42:34'),
(85, 'Mrs. Bethel Walter II', 'barney50@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NRhsqGs30j', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, '2019-12-15 03:42:34'),
(86, 'Karl Dare', 'leland84@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vy6wo82oWF', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, '2020-01-31 03:42:34'),
(87, 'Arthur Pouros', 'storphy@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AnGNOcBAIf', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, NULL),
(88, 'Ernestine Carter', 'treutel.malcolm@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'INwWufFLEU', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, '2020-03-16 03:42:34'),
(89, 'Dr. Afton Harber', 'edgar97@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IbqJNigIDv', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, NULL),
(90, 'Mr. Orion Bradtke', 'alda.dicki@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hoAhO9qtCn', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, NULL),
(91, 'Ayana Leuschke', 'wellington.schuppe@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v8H1p1wtZb', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, '2019-12-16 03:42:34'),
(92, 'Prof. Bernice Jacobs V', 'norval96@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ok3lhcBXfU', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, '2020-02-28 03:42:34'),
(93, 'Delbert Walker III', 'block.kane@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lj1XzyFnK4', '2020-03-20 03:42:42', '2020-03-20 03:42:42', NULL, '2020-01-28 03:42:34'),
(94, 'Breanna Ward DVM', 'fae.schmeler@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XympUlPGhj', '2020-03-20 03:42:43', '2020-03-20 03:42:43', NULL, '2020-02-26 03:42:34'),
(95, 'Zita Stanton', 'deonte94@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '48k1dBsH0U', '2020-03-20 03:42:43', '2020-03-20 03:42:43', NULL, '2020-03-13 03:42:34'),
(96, 'Marisol Williamson', 'jrau@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6iQWOuKKcn', '2020-03-20 03:42:43', '2020-03-20 03:42:43', NULL, NULL),
(97, 'Dillon O\'Kon', 'dicki.margarett@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WWOs2nQpyG', '2020-03-20 03:42:43', '2020-03-20 03:42:43', NULL, '2020-01-12 03:42:34'),
(98, 'Vito Dibbert', 'axel.marquardt@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5jqp48h2ly', '2020-03-20 03:42:43', '2020-03-20 03:42:43', NULL, NULL),
(99, 'Prof. Aiyana Corwin', 'bartholome67@example.net', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VX7XvM2lDy', '2020-03-20 03:42:43', '2020-03-20 03:42:43', NULL, '2019-12-30 03:42:34'),
(100, 'Terrance Jerde IV', 'berge.cali@example.com', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1knkQhQlkj', '2020-03-20 03:42:43', '2020-03-20 03:42:43', NULL, '2020-02-23 03:42:34'),
(101, 'Dr. Mossie Tremblay', 'eryn.altenwerth@example.org', '2020-03-20 09:12:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RqSdddW47c', '2020-03-20 03:42:43', '2020-03-20 03:42:43', NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_role_id_foreign` (`role_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
