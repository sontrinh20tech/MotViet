-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Sep 26, 2024 at 07:19 PM
-- Server version: 9.0.1
-- PHP Version: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan_banquanao`
--
CREATE DATABASE IF NOT EXISTS `doan_banquanao` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `doan_banquanao`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Test title', 'Nội dung', NULL, '2024-08-20 12:29:55', '2024-08-20 13:01:29'),
(2, 'Yeah yeah', 'Nhập mã \'THUDONG2024\' để giảm ngay 10% tối đa 100.000 đ', 'app_models_banner/1724782680_AHnQe2VABo.jpg', '2024-08-20 12:38:52', '2024-08-27 18:18:00'),
(4, 'title', 'nội dung', NULL, '2024-08-20 13:00:21', '2024-08-20 13:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Cho nam', 'app_models_category/1724155401_mM4iF9M9w8.png', '2024-08-18 08:22:48', '2024-08-20 12:03:21'),
(2, 'Cho nữ', 'app_models_category/1724155394_twymkNzOQV.png', '2024-08-18 08:22:53', '2024-08-20 12:03:14'),
(4, 'Phụ kiện', 'app_models_category/1724155388_NSeLlR6hVD.png', '2024-08-20 12:03:08', '2024-08-20 12:03:08'),
(5, 'test', NULL, '2024-08-20 12:04:11', '2024-08-20 12:04:11'),
(6, '11', NULL, NULL, NULL),
(7, '214214124124', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'red', 'Đỏ', '2024-08-18 08:23:19', '2024-08-18 08:23:19'),
(2, 'black', 'Đen', '2024-08-18 17:30:22', '2024-08-18 17:30:22'),
(3, 'blue', 'Xanh da trời', '2024-08-18 17:30:34', '2024-08-18 17:30:34'),
(4, '#00712D', 'Xanh lá cây', '2024-08-18 17:30:59', '2024-08-18 17:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `discount` double NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `max_price` double NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `expiration_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `discount`, `code`, `amount`, `max_price`, `is_active`, `expiration_date`, `created_at`, `updated_at`) VALUES
(1, 95, 'ADMIN', 6, 1000000, 1, '2024-09-07', '2024-08-27 18:07:53', '2024-08-27 18:24:22'),
(2, 10, 'THUDONG2024', 50, 50000, 1, '2024-12-01', '2024-08-27 18:14:38', '2024-08-27 18:24:06'),
(3, 99, 'TEST', 994, 1000000, 1, '2025-09-10', '2024-09-07 16:22:59', '2024-09-19 01:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '88c5049d-f2f4-4e40-99f6-74d9772028f0', 'database', 'default', '{\"uuid\":\"88c5049d-f2f4-4e40-99f6-74d9772028f0\",\"displayName\":\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\",\"command\":\"O:34:\\\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\\\":2:{s:9:\\\"\\u0000*\\u0000userId\\\";i:7;s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 'InvalidArgumentException: View [emails.approved_order.blade] not found. in C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'emails.approved...\', Array)\n#1 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find(\'emails.approved...\')\n#2 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make(\'emails.approved...\', Array)\n#3 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView(\'emails.approved...\', Array)\n#4 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.approved...\', NULL, NULL, Array)\n#5 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.approved...\', Array, Object(Closure))\n#6 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(354): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(301): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderConfirmed))\n#10 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderConfirmed))\n#11 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\app\\Jobs\\SendMailOrderConfirmedJob.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderConfirmed))\n#12 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMailOrderConfirmedJob->handle()\n#13 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#19 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#20 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMailOrderConfirmedJob), false)\n#22 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#23 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#24 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#26 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#38 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#46 {main}', '2024-09-19 02:24:54'),
(2, '47de6b30-c7d2-4880-8d7c-5cd356642eb9', 'database', 'default', '{\"uuid\":\"47de6b30-c7d2-4880-8d7c-5cd356642eb9\",\"displayName\":\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\",\"command\":\"O:34:\\\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\\\":2:{s:9:\\\"\\u0000*\\u0000userId\\\";i:7;s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 'InvalidArgumentException: View [emails.approved_order.blade] not found. in C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'emails.approved...\', Array)\n#1 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find(\'emails.approved...\')\n#2 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make(\'emails.approved...\', Array)\n#3 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView(\'emails.approved...\', Array)\n#4 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.approved...\', NULL, NULL, Array)\n#5 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.approved...\', Array, Object(Closure))\n#6 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(354): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(301): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderConfirmed))\n#10 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderConfirmed))\n#11 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\app\\Jobs\\SendMailOrderConfirmedJob.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderConfirmed))\n#12 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMailOrderConfirmedJob->handle()\n#13 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#19 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#20 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMailOrderConfirmedJob), false)\n#22 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#23 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#24 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#26 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#38 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#46 {main}', '2024-09-19 02:26:19'),
(3, 'db055717-f1f5-43c0-98c1-30936b8f981e', 'database', 'default', '{\"uuid\":\"db055717-f1f5-43c0-98c1-30936b8f981e\",\"displayName\":\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\",\"command\":\"O:34:\\\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\\\":2:{s:9:\\\"\\u0000*\\u0000userId\\\";i:7;s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 'InvalidArgumentException: View [emails.approved_order.blade] not found. in C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'emails.approved...\', Array)\n#1 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find(\'emails.approved...\')\n#2 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make(\'emails.approved...\', Array)\n#3 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView(\'emails.approved...\', Array)\n#4 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.approved...\', NULL, NULL, Array)\n#5 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.approved...\', Array, Object(Closure))\n#6 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(354): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(301): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderConfirmed))\n#10 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderConfirmed))\n#11 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\app\\Jobs\\SendMailOrderConfirmedJob.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderConfirmed))\n#12 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMailOrderConfirmedJob->handle()\n#13 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#19 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#20 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMailOrderConfirmedJob), false)\n#22 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#23 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#24 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMailOrderConfirmedJob))\n#26 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#38 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\Users\\user\\Desktop\\DoAnHo\\Qanh_Quan_Ao\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#46 {main}', '2024-09-19 02:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(13, 'default', '{\"uuid\":\"248b1572-5509-42b1-822d-b9dc1f2775ba\",\"displayName\":\"App\\\\Jobs\\\\SendMailOrderCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailOrderCreated\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendMailOrderCreated\\\":2:{s:9:\\\"\\u0000*\\u0000userId\\\";i:7;s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1727070574, 1727070574),
(14, 'default', '{\"uuid\":\"b7b0191f-ea93-4b29-bd26-3076bbe07249\",\"displayName\":\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\",\"command\":\"O:34:\\\"App\\\\Jobs\\\\SendMailOrderConfirmedJob\\\":2:{s:9:\\\"\\u0000*\\u0000userId\\\";i:7;s:8:\\\"\\u0000*\\u0000order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1727373038, 1727373038);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kinds`
--

CREATE TABLE `kinds` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kinds`
--

INSERT INTO `kinds` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Polo', 1, '2024-08-18 08:23:11', '2024-08-18 08:23:11'),
(2, 'Túi xách', 2, '2024-08-18 17:16:54', '2024-08-18 17:16:54'),
(4, 'Quần âu', 1, '2024-08-18 17:17:10', '2024-08-18 17:17:10'),
(5, '1', 1, '2024-08-20 11:56:56', '2024-08-20 11:56:56'),
(6, '2', 1, '2024-08-20 11:56:58', '2024-08-20 11:56:58'),
(7, '333', 1, '2024-08-20 11:57:00', '2024-08-20 11:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_07_163929_create_permissions_table', 1),
(5, '2024_08_07_171935_create_permission_details_table', 1),
(6, '2024_08_14_143452_create_categories_table', 1),
(7, '2024_08_14_143511_create_kinds_table', 1),
(8, '2024_08_14_143951_create_products_table', 1),
(9, '2024_08_14_145053_create_product_images_table', 1),
(10, '2024_08_14_154456_create_colors_table', 1),
(11, '2024_08_14_154503_create_product_colors_table', 1),
(12, '2024_08_14_154509_create_sizes_table', 1),
(13, '2024_08_14_154517_create_product_sizes_table', 1),
(14, '2024_08_20_120631_create_banners_table', 2),
(15, '2024_08_27_173120_create_coupons_table', 3),
(16, '2024_08_28_091310_alter_users_table', 4),
(17, '2024_08_28_095827_create_wishlists_table', 5),
(18, '2024_09_04_190255_create_shipping_addresses_table', 6),
(20, '2024_09_04_193149_alter_shipping_addresses_table', 7),
(21, '2024_09_07_041302_alter_users_table', 8),
(22, '2024_09_07_101425_create_orders_table', 8),
(23, '2024_09_07_102126_create_order_details_table', 8),
(25, '2024_09_15_092316_create_reviews_table', 9),
(26, '2024_09_25_212240_create_visitors_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `total` double NOT NULL,
  `discount` double DEFAULT NULL,
  `discount_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `code`, `address`, `fullname`, `phone_number`, `payment_method`, `status`, `is_paid`, `total`, `discount`, `discount_code`, `note`, `created_at`, `updated_at`) VALUES
(16, 7, '67TAUXY0RT', '123123', 'ho quang anh', '0372238783', 'online', 5, 1, 3000, 297000, 'TEST', NULL, '2024-09-08 13:16:19', '2024-09-15 09:15:17'),
(18, 7, 'Q8VQ91ZPPC', '123123', 'ho quang anh', '0372238783', 'cod', 2, 0, 111111, NULL, NULL, 'thanh toan khi nhan hang', '2024-09-08 16:18:38', '2024-09-08 16:18:38'),
(19, 7, '2A0AVBLXII', '123123', 'ho quang anh', '0372238783', 'online', 1, 0, 1111.11, 109999.89, 'TEST', 'thanh toan online', '2024-09-08 16:19:22', '2024-09-15 09:10:53'),
(21, 7, 'SW5OGTZBME', '123123', 'ho quang anh', '0372238783', 'online', 3, 0, 1111.11, 109999.89, 'TEST', NULL, '2024-09-08 16:21:23', '2024-09-14 03:15:22'),
(22, 7, 'VWKBHSKBNN', '123123', 'ho quang anh', '0372238783', 'online', 5, 1, 111111, NULL, NULL, NULL, '2024-09-08 16:26:10', '2024-09-14 02:41:45'),
(23, 7, 'PUBRBXJJZ9', '12312123123', 'ho quang anh', '0372238783', 'cod', 2, 0, 1500000, NULL, NULL, NULL, '2024-09-15 08:33:47', '2024-09-15 08:33:47'),
(24, 7, 'IXBUFY7YPF', '12312123123', 'ho quang anh', '0372238783', 'cod', 5, 1, 2300000, 1000000, 'TEST', NULL, '2024-09-16 14:28:02', '2024-09-16 14:30:14'),
(25, 7, 'KA1036GKSI', '12312123123', 'ho quang anh', '0372238783', 'cod', 5, 1, 300000, NULL, NULL, NULL, '2024-09-16 15:33:04', '2024-09-16 15:33:49'),
(26, 7, 'MVMVKHVR3C', '12312123123', 'ho quang anh', '0372238783', 'online', 2, 0, 1111.11, 109999.89, 'TEST', NULL, '2024-09-19 01:49:09', '2024-09-19 01:49:09'),
(27, 7, 'R6IA2ZDHYQ', '12312123123', 'ho quang anh', '0372238783', 'cod', 2, 0, 1111.11, 109999.89, 'TEST', NULL, '2024-09-19 01:49:39', '2024-09-19 01:49:39'),
(29, 7, '7UFEBCFYGL', '12312123123', 'ho quang anh', '0372238783', 'online', 2, 0, 1111.11, 109999.89, 'TEST', NULL, '2024-09-19 01:53:57', '2024-09-19 01:53:57'),
(30, 7, 'T7C2RIPFJD', '12312123123', 'ho quang anh', '0372238783', 'online', 2, 0, 111111, NULL, NULL, NULL, '2024-09-19 01:54:08', '2024-09-19 01:54:08'),
(31, 7, 'BKB7GTIP43', '12312123123', 'ho quang anh', '0372238783', 'online', 1, 0, 1111.11, 109999.89, 'TEST', NULL, '2024-09-19 01:55:22', '2024-09-27 00:51:24'),
(32, 7, '3A0AXQ6FAG', '12312123123', 'ho quang anh', '0372238783', 'online', 4, 0, 1000, 99000, 'TEST', NULL, '2024-09-19 01:57:36', '2024-09-19 02:35:26'),
(33, 7, '6BPNVGCPFU', '12312123123', 'ho quang anh', '0372238783', 'cod', 2, 1, 100000, NULL, NULL, NULL, '2024-09-22 02:45:57', '2024-09-19 02:45:57'),
(34, 7, '4S8YNIMLRI', '12312123123', 'ho quang anh', '0372238783', 'online', 5, 0, 100000, NULL, NULL, NULL, '2024-09-26 12:49:34', '2024-09-23 12:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `color_id` bigint UNSIGNED NOT NULL,
  `size_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `color_id`, `size_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(8, 16, 7, 3, 4, 1, 300000, '2024-09-08 13:16:19', '2024-09-08 13:16:19'),
(10, 18, 4, 1, 2, 1, 111111, '2024-09-08 16:18:38', '2024-09-08 16:18:38'),
(11, 19, 4, 1, 2, 1, 111111, '2024-09-08 16:19:22', '2024-09-08 16:19:22'),
(12, 21, 4, 1, 2, 1, 111111, '2024-09-08 16:21:23', '2024-09-08 16:21:23'),
(13, 22, 4, 1, 2, 1, 111111, '2024-09-08 16:26:10', '2024-09-08 16:26:10'),
(14, 23, 7, 3, 1, 1, 300000, '2024-09-15 08:33:47', '2024-09-15 08:33:47'),
(15, 23, 7, 4, 1, 2, 300000, '2024-09-15 08:33:47', '2024-09-15 08:33:47'),
(16, 23, 7, 4, 2, 1, 300000, '2024-09-15 08:33:47', '2024-09-15 08:33:47'),
(17, 23, 7, 4, 3, 1, 300000, '2024-09-15 08:33:47', '2024-09-15 08:33:47'),
(18, 24, 7, 3, 1, 1, 300000, '2024-09-16 14:28:02', '2024-09-16 14:28:02'),
(19, 24, 7, 4, 1, 2, 300000, '2024-09-16 14:28:02', '2024-09-16 14:28:02'),
(20, 24, 7, 4, 2, 2, 300000, '2024-09-16 14:28:02', '2024-09-16 14:28:02'),
(21, 24, 7, 4, 3, 2, 300000, '2024-09-16 14:28:02', '2024-09-16 14:28:02'),
(22, 24, 7, 4, 4, 2, 300000, '2024-09-16 14:28:02', '2024-09-16 14:28:02'),
(23, 24, 7, 4, 5, 2, 300000, '2024-09-16 14:28:02', '2024-09-16 14:28:02'),
(24, 25, 7, 3, 2, 1, 300000, '2024-09-16 15:33:04', '2024-09-16 15:33:04'),
(25, 26, 4, 1, 2, 1, 111111, '2024-09-19 01:49:09', '2024-09-19 01:49:09'),
(26, 27, 4, 1, 2, 1, 111111, '2024-09-19 01:49:39', '2024-09-19 01:49:39'),
(27, 29, 4, 1, 2, 1, 111111, '2024-09-19 01:53:57', '2024-09-19 01:53:57'),
(28, 30, 4, 1, 2, 1, 111111, '2024-09-19 01:54:08', '2024-09-19 01:54:08'),
(29, 31, 4, 1, 2, 1, 111111, '2024-09-19 01:55:23', '2024-09-19 01:55:23'),
(30, 32, 4, 1, 2, 1, 100000, '2024-09-19 01:57:36', '2024-09-19 01:57:36'),
(31, 33, 4, 1, 2, 1, 100000, '2024-09-19 02:45:57', '2024-09-19 02:45:57'),
(32, 34, 4, 1, 2, 1, 100000, '2024-09-23 12:49:34', '2024-09-23 12:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_details`
--

CREATE TABLE `permission_details` (
  `id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `old_price` double DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `washing_instructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kind_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `stock` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `old_price`, `description`, `washing_instructions`, `kind_id`, `is_active`, `stock`, `created_at`, `updated_at`) VALUES
(3, '1997', 123, NULL, NULL, NULL, 1, 1, 999, '2024-08-19 17:06:31', '2024-09-07 17:11:18'),
(4, 'test_update123', 100000, 123123, '<h1>123123123</h1>', '<p><u>123123123</u></p>', 4, 1, 7764, '2024-08-19 17:07:19', '2024-09-23 12:49:34'),
(5, '1997', 12312321311, NULL, NULL, '<p><br></p>', 1, 1, 10, '2024-08-19 17:08:11', '2024-08-19 17:08:11'),
(7, 'Sản phẩm FULL all', 300000, 1000000, '<p>mo ta</p>', '<p><br></p>', 2, 1, 987, '2024-08-19 18:05:29', '2024-09-16 15:33:04'),
(8, '123123123', 123123, NULL, NULL, NULL, 1, 1, 999, '2024-08-19 19:21:50', '2024-09-07 17:40:50'),
(9, 'san pham khong co size', 1000, 1000, NULL, NULL, 1, 1, 999, '2024-08-26 16:59:53', '2024-08-26 16:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `color_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `is_active`, `created_at`, `updated_at`) VALUES
(9, 3, 1, 1, NULL, NULL),
(10, 3, 2, 1, NULL, NULL),
(11, 3, 3, 1, NULL, NULL),
(12, 3, 4, 1, NULL, NULL),
(17, 5, 1, 1, NULL, NULL),
(18, 5, 2, 1, NULL, NULL),
(19, 5, 3, 1, NULL, NULL),
(20, 5, 4, 1, NULL, NULL),
(89, 8, 1, 1, NULL, NULL),
(90, 8, 2, 1, NULL, NULL),
(91, 8, 3, 1, NULL, NULL),
(92, 8, 4, 1, NULL, NULL),
(101, 7, 3, 1, NULL, NULL),
(102, 7, 4, 1, NULL, NULL),
(103, 9, 1, 1, NULL, NULL),
(104, 9, 2, 1, NULL, NULL),
(105, 9, 3, 1, NULL, NULL),
(106, 9, 4, 1, NULL, NULL),
(107, 4, 1, 1, NULL, NULL),
(108, 4, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_on_top` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `is_on_top`, `created_at`, `updated_at`) VALUES
(2, 5, 'app_models_productimage/1724087291_FjOR5WAXf6.jpg', 0, NULL, NULL),
(3, 5, 'app_models_productimage/1724087291_xCeRKuUaOR.jpg', 0, NULL, NULL),
(4, 5, 'app_models_productimage/1724087291_yjuzR6Vujp.png', 0, NULL, NULL),
(5, 5, 'app_models_productimage/1724087291_Vbo5HyZEQs.jpg', 0, NULL, NULL),
(6, 5, 'app_models_productimage/1724087291_bJ4qbhfVvR.jpg', 0, NULL, NULL),
(10, 7, 'app_models_productimage/1724090729_LFq6KKZbHv.jpg', 1, NULL, NULL),
(18, 4, 'app_models_productimage/1724094942_H8NdNPc1ly.jpg', 0, NULL, NULL),
(19, 4, 'app_models_productimage/1724094942_iy8vsm1TFX.jpg', 0, NULL, NULL),
(27, 8, 'app_models_productimage/1724095310_GQkpv16JF6.jpg', 0, NULL, NULL),
(28, 8, 'app_models_productimage/1724095310_mxpPJumUJD.jpg', 0, NULL, NULL),
(29, 8, 'app_models_productimage/1724095310_e06DUjq9br.png', 0, NULL, NULL),
(30, 4, 'app_models_productimage/1724161019_mx1DYgaAiJ.png', 1, NULL, NULL),
(31, 7, 'app_models_productimage/1724175969_Ui4UwCQuAa.png', 0, NULL, NULL),
(32, 7, 'app_models_productimage/1724175969_YGVOfUhW6w.png', 0, NULL, NULL),
(33, 7, 'app_models_productimage/1724175969_AsHuuVjCFk.png', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `size_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, NULL, NULL),
(2, 3, 2, 1, NULL, NULL),
(5, 5, 1, 1, NULL, NULL),
(6, 5, 2, 1, NULL, NULL),
(42, 8, 1, 1, NULL, NULL),
(43, 8, 2, 1, NULL, NULL),
(60, 7, 1, 1, NULL, NULL),
(61, 7, 2, 1, NULL, NULL),
(62, 7, 3, 1, NULL, NULL),
(63, 7, 4, 1, NULL, NULL),
(64, 7, 5, 1, NULL, NULL),
(65, 4, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `order_id`, `product_id`, `rating`, `note`, `created_at`, `updated_at`) VALUES
(1, 7, 24, 7, 1, 'tam duoc', '2024-09-16 15:17:19', '2024-09-16 15:17:19'),
(2, 7, 22, 4, 5, '5 saoooooooooooo', '2024-09-16 15:29:02', '2024-09-16 15:29:02'),
(3, 7, 25, 7, 4, 'hehe', '2024-09-16 15:34:00', '2024-09-16 15:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `level` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `level`, `name`, `created_at`, `updated_at`) VALUES
(1, 0, 'ROOT', '2024-08-18 08:21:14', '2024-08-18 08:21:14'),
(2, 1, 'Super Admin', '2024-08-18 08:21:14', '2024-08-18 08:21:14'),
(3, 2, 'Admin', '2024-08-18 08:21:14', '2024-08-18 08:21:14'),
(4, 3, 'User', '2024-08-18 08:21:14', '2024-08-18 08:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('OHDuTfSPntjrb9Voh9QQD95wmb4zFQL81CnKIkX1', 7, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNlpGS0VFOHcyYWZmTXJsQjdPamdFMlVNQWlKNFVFamRiVjRzRGk5YiI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU1OiJodHRwOi8vbG9jYWxob3N0Ojk5OTkvYWRtaW4vY2hhcnQta2luZC1zYWxlP2ZpbHRlcj15ZWFyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9', 1727377710);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `user_id`, `address`, `name`, `fullname`, `phone_number`, `is_default`, `created_at`, `updated_at`) VALUES
(14, 7, 'test', 'nha', 'ho quang anh', '0372238783', 0, '2024-09-25 00:40:44', '2024-09-25 00:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, 'XS', '6-8', '2024-08-18 08:23:27', '2024-08-20 16:50:42'),
(2, 'S', '8-10', '2024-08-18 17:35:43', '2024-08-18 17:35:43'),
(3, 'M', '10-12', '2024-08-20 13:21:36', '2024-08-20 13:21:36'),
(4, 'L', '12-14', '2024-08-20 13:21:44', '2024-08-20 13:21:44'),
(5, 'XL', '14-16', '2024-08-20 13:21:50', '2024-08-20 13:21:50'),
(6, 'XXL', '16-18', '2024-08-20 16:51:42', '2024-08-20 16:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `has_send_email_shipping` tinyint(1) NOT NULL DEFAULT '1',
  `has_send_email_order` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` bigint UNSIGNED NOT NULL DEFAULT '4',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `date_of_birth`, `phone_number`, `email`, `email_verified_at`, `has_send_email_shipping`, `has_send_email_order`, `password`, `provider`, `social_id`, `role`, `is_admin`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ho Quang Anh', NULL, NULL, 'root@admin.com', NULL, 1, 1, '$2y$12$wk574LollFfI7WAjDLWZ5u.h.WxCX3I0P.kKfvBz1YN.yeDu7PlvO', NULL, NULL, 1, 1, 1, 'kI0VHMUATBYLZ7iZHzxhJTt45KZoI6FvXoLJGwYz8V3OQQeDYyieH9nj5GJL', '2024-08-18 08:21:14', '2024-08-18 08:21:14'),
(2, 'Ho Quang Anh', NULL, NULL, 'superadmin@admin.com', NULL, 1, 1, '$2y$12$V8EKY.wvnO/s7QaZMTDii.YMdwoeAUWrHo3hjD.bZl3HgNTo73NPm', NULL, NULL, 2, 0, 1, NULL, '2024-08-18 08:21:14', '2024-08-18 08:21:14'),
(3, 'Ho Quang Anh', NULL, NULL, 'admin@admin.com', NULL, 1, 1, '$2y$12$63XBoh2MXb6SI9mm461o0uirOfc3F/yElvW.O5MmuvexrLVC11m/.', NULL, NULL, 3, 0, 1, '0Ztdz6AqN0QhyQ4HXFpORclkH5WehR3Lz8wx1BmPJ4r37rTQqIqdp2THg2mt', '2024-08-18 08:21:15', '2024-08-18 08:21:15'),
(4, 'Ho Quang Anh', NULL, NULL, 'user@admin.com', NULL, 1, 1, '$2y$12$KmxTomFAAtCBGZG8hU4SJOTFY82lGVjty.dKPGVtO/BpSaRctJhUC', NULL, NULL, 4, 0, 1, NULL, '2024-06-18 08:21:15', '2024-08-18 08:21:15'),
(5, 'trinh xuan son', NULL, NULL, 'son123@gmail.com', NULL, 1, 1, '$2y$12$dCVHK9qUkW9tyL/MNnxioOAWtcWUlgm3Iytz32e9DED3Li4EY7zka', NULL, NULL, 4, 0, 1, NULL, '2024-08-28 09:09:45', '2024-08-28 09:09:45'),
(6, 'Sơn Trịnh', NULL, NULL, 'sonit7122@gmail.com', NULL, 1, 1, '$2y$12$uToj/emWVTQP5Rxkzh5wjuxJMbXI6Du352LvbFWxbgKcBuXuVQwci', 'google', '101571965691342130603', 4, 0, 1, NULL, '2024-08-28 09:33:51', '2024-09-03 17:35:36'),
(7, 'ho quang anh', '2002-07-01', '0372238783', 'acczints001@gmail.com', '2024-09-16 22:49:25', 1, 1, '$2y$12$wGRP4BtqmvrH6DY1uXeMGObckQT200zVMeCMeonUnD5MaNk6iwJP6', 'google', '115460625758742207518', 4, 0, 1, 'KU8cpefpoO4pz6eybexlkJ9cxL2tn585s3Bgwu4WovfG1ywEWK7602dKqTPb', '2024-09-03 13:58:47', '2024-09-19 10:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint UNSIGNED NOT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:37:54', '2024-09-25 21:37:54'),
(2, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:38:56', '2024-09-25 21:38:56'),
(3, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:38:58', '2024-09-25 21:38:58'),
(4, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:00', '2024-09-25 21:39:00'),
(5, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:01', '2024-09-25 21:39:01'),
(6, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:02', '2024-09-25 21:39:02'),
(7, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:03', '2024-09-25 21:39:03'),
(8, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:06', '2024-09-25 21:39:06'),
(9, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:07', '2024-09-25 21:39:07'),
(10, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:08', '2024-09-25 21:39:08'),
(11, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:09', '2024-09-25 21:39:09'),
(12, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:10', '2024-09-25 21:39:10'),
(13, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:11', '2024-09-25 21:39:11'),
(14, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:11', '2024-09-25 21:39:11'),
(15, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:12', '2024-09-25 21:39:12'),
(16, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:13', '2024-09-25 21:39:13'),
(17, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:14', '2024-09-25 21:39:14'),
(18, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-25 21:39:15', '2024-09-25 21:39:15'),
(19, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-26 00:50:25', '2024-09-26 00:50:25'),
(20, '172.21.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-26 12:27:30', '2024-09-26 12:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 4, 7, '2024-09-03 15:00:53', '2024-09-03 15:00:53'),
(12, 3, 7, '2024-09-03 15:00:54', '2024-09-03 15:00:54'),
(13, 5, 7, '2024-09-03 15:00:56', '2024-09-03 15:00:56'),
(14, 9, 7, '2024-09-04 17:28:12', '2024-09-04 17:28:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `kinds`
--
ALTER TABLE `kinds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kinds_category_id_foreign` (`category_id`);

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
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`),
  ADD KEY `order_details_color_id_foreign` (`color_id`),
  ADD KEY `order_details_size_id_foreign` (`size_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_details`
--
ALTER TABLE `permission_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_details_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_kind_id_foreign` (`kind_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sizes_product_id_foreign` (`product_id`),
  ADD KEY `product_sizes_size_id_foreign` (`size_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_order_id_foreign` (`order_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_foreign` (`role`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kinds`
--
ALTER TABLE `kinds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_details`
--
ALTER TABLE `permission_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kinds`
--
ALTER TABLE `kinds`
  ADD CONSTRAINT `kinds_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_details`
--
ALTER TABLE `permission_details`
  ADD CONSTRAINT `permission_details_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_kind_id_foreign` FOREIGN KEY (`kind_id`) REFERENCES `kinds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_sizes_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD CONSTRAINT `shipping_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_foreign` FOREIGN KEY (`role`) REFERENCES `roles` (`id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
