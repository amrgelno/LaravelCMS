-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 02:48 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asphallt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) UNSIGNED NOT NULL,
  `username` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(325) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_Role` varchar(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `User_Role`, `pic`, `token`, `created_at`, `updated_at`) VALUES
(1, 'yourcompany', 'yourcompany@gmail.com', '$2y$10$Jg82Zb9cLcT4f3shH7p2o.j5eltPKc2C2bVjDpeGlrP/zBL7tGSG6', 'Admin', NULL, 'MTIzNDU2', '2023-02-24 19:51:31', '2023-05-26 19:27:00'),
(11, 'amr hassan', 'amrgelno@gmail.com', '$2y$10$V0DQC3apoVSojIWGQsTCdeiGQgyofuw.KbXENhbMPRxy2ImgvIFue', 'Admin', NULL, 'eWVsb3gxMA==', '2023-02-24 20:07:46', '2023-02-25 00:58:39'),
(12, 'amrhassanjilanymohamed', 'amrhassanjob5@gmail.com', '$2y$10$uH6aYHfw7zpyG2Ze0aBRiudd/kPy4tC2otdsku6fUOQFEUSvFhHTW', 'supervisor', NULL, 'MTIzNDU2Nzg5', '2023-02-24 20:09:30', '2023-02-24 20:22:28'),
(13, 'AhmedMohamed', 'AhmedMohamed@gmail.com', '$2y$10$zqZGoyPmsYNNQNZALk03XOUixSR619h8yw8Nzew14FNlKeEe8in3G', 'Admin', NULL, 'MTIzNDU2Nzg5', '2023-02-24 20:15:32', '2023-02-24 20:15:32'),
(14, 'HassanAli', 'HassanAli@gmail.com', '$2y$10$cVEWvip6hiIVNsXMRcPxEe4Oz91HFvQ3rbVi8oPRadZkQt/U/lyXS', 'supervisor', NULL, 'MTIzNDU2Nzg5', '2023-02-24 20:18:38', '2023-02-24 20:22:28'),
(15, 'alijsui', 'alinjusi@gmail.com', '$2y$10$doPhpoi53Sh5v7.9L4i6TewhAr8fI7Z0t30fgDx5E.f8CQdLW5I56', 'supervisor', NULL, 'MTIzNDU2Nzg5', '2023-02-24 20:20:48', '2023-02-24 20:22:28'),
(17, 'alikamel', 'alikamel@gmail.com', '$2y$10$V0DQC3apoVSojIWGQsTCdeiGQgyofuw.KbXENhbMPRxy2ImgvIFue', 'Admin', NULL, 'MTIzNDU2', '2023-02-25 04:34:27', '2023-02-25 04:34:27'),
(18, 'Amr Hassan Ahmed', 'Bico@gmail.com', '$2y$10$3KWhPraWaAAfl6AQ1Ig7eOCEaZ8UEcGKVTfYQD7uAiYspkg4Ht7Hy', 'supervisor', NULL, 'QWhtZWRCaWNvMjAyMg==', '2023-05-19 14:20:57', '2023-05-19 14:20:57'),
(19, 'amr hassan', 'amrhassanjob6@gmail.com', '$2y$10$NN4Ay0EUc4C3N2QCWICM6uKtsQ244aqnVabDH17dvSTS5Wmc5fiHC', 'supervisor', NULL, 'MDEwOTU5NDQzNDc=', '2023-05-26 19:24:52', '2023-05-26 19:24:52'),
(20, 'amrhassan', 'am@gmail.com', '$2y$10$Qem19DKiYqfZOkHEX3rmve2sm.1hByaJQDlkEWc3MZV00gDioOCfW', 'supervisor', NULL, 'YW1AZ21haWwuY29t', '2023-05-26 19:26:59', '2023-05-26 19:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `adminposts`
--

CREATE TABLE `adminposts` (
  `id` int(10) UNSIGNED NOT NULL,
  `Posts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boxes`
--

CREATE TABLE `boxes` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ar_title` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ar_Desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageName` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_Name` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_type` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `box_id` int(10) DEFAULT NULL,
  `relatedtopic_id` int(10) UNSIGNED DEFAULT NULL,
  `BOX_STYLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boxes`
--

INSERT INTO `boxes` (`ID`, `Desc`, `title`, `Ar_title`, `Ar_Desc`, `ImageName`, `cat_Name`, `cat_type`, `price`, `price1`, `class`, `nav_id`, `box_id`, `relatedtopic_id`, `BOX_STYLE`, `created_at`, `updated_at`) VALUES
(1, '[value-2]', 'رصف وتمهيد الطرق', '[value-4]', '[value-5]', 'n9tgbt0a-33306-50033.jpg', 'خدماتنا', 'خدماتنا', 0, '[value-10]', '[value-11]', 1, 0, 0, 'BOXModel1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '[value-2]', 'رصف الطرق العامة', '[value-4]', '[value-5]', '-260nw-1110138479.jpg', NULL, 'خدماتنا', 0, '[value-10]', '[value-11]', 1, 0, 0, 'BOXModel1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '[value-2]', 'رصف المواقف والمداخل', '[value-4]', '[value-5]', '-260nw-403913614.jpg', NULL, 'خدماتنا', 0, '[value-10]', '[value-11]', 1, 0, 0, 'BOXModel1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '[value-2]', 'معالجة الطرق المكسرة', '[value-4]', '[value-5]', '-260nw-1123676783.jpg', NULL, 'خدماتنا', 0, '[value-10]', '[value-11]', 1, 0, 0, 'BOXModel1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '[value-2]', 'خدمات العزل', '[value-4]', '[value-5]', 'Waterproofing_Membranes-300x201.jpg', NULL, 'خدماتنا', 0, '[value-10]', '[value-11]', 1, 0, 0, 'BOXModel1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '[value-2]', 'خدمة الهدم و التكسير', '[value-4]', '[value-5]', 'l1qextxs3zw-w600.jpg', NULL, 'خدماتنا', 0, '[value-10]', '[value-11]', 1, 0, 0, 'BOXModel1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `client_comment`
--

CREATE TABLE `client_comment` (
  `ID` int(22) NOT NULL,
  `avatar` varchar(22) CHARACTER SET utf8 NOT NULL,
  `username` varchar(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(22) CHARACTER SET utf8 NOT NULL,
  `Client_POST` varchar(22) CHARACTER SET utf8 NOT NULL,
  `status` varchar(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `client_req`
--

CREATE TABLE `client_req` (
  `ID` int(20) NOT NULL,
  `username` varchar(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Client_POST` varchar(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_req`
--

INSERT INTO `client_req` (`ID`, `username`, `email`, `Client_POST`) VALUES
(2, '[value-2]', '[value-3]', '[value-4]');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `Comp_Name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Business` varchar(325) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(325) COLLATE utf8mb4_unicode_ci NOT NULL,
  `WBDescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(325) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tax_register` int(11) DEFAULT NULL,
  `postalCode` varchar(23) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tele_Number` int(11) NOT NULL,
  `fax` int(11) NOT NULL,
  `country` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_pic` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `Comp_Name`, `Business`, `Address`, `WBDescription`, `Email`, `Tax_register`, `postalCode`, `Tele_Number`, `fax`, `country`, `city`, `path_pic`) VALUES
(1, 'مقاول أسفلت الأحساء', 'مقاولات', 'الاحساء -ش المتنبي', 'من أفضل الشركات في أعمال الإسفلت بالاحساء مما جعل لهذه الشركة أسما عاليا في سماء هذا المجال وقد حققا نجاحا باهرا في تطبيق كل ما هو جديد في أعمال الإسفلت', 'info@asphallt.net', 0, '[value-8]', 582689808, 0, 'السعودية', 'المنطقة الشرقية', 'Asphaltlogo.png');

-- --------------------------------------------------------

--
-- Table structure for table `covers`
--

CREATE TABLE `covers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cover_Desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cover_Name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_title` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ar_title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ar_Desc` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `box_id` int(10) UNSIGNED DEFAULT NULL,
  `relatedtopic_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `covers`
--

INSERT INTO `covers` (`id`, `cover_Desc`, `Cover_Name`, `cover_title`, `Ar_title`, `Ar_Desc`, `nav_id`, `box_id`, `relatedtopic_id`, `created_at`, `updated_at`) VALUES
(1, '[value-2]', 'R (5).jfif', '[value-4]', '[value-5]', '[value-6]', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '[value-2]', 'R (11).jfif', '[value-4]', '[value-5]', '[value-6]', 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '[value-2]', 'starter-pad-asphalt-2000x1495.jpg', '[value-4]', '[value-5]', '[value-6]', 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '[value-2]', 'Green-Paving-in-Fairfax-Parking-Lot.jpg', '[value-4]', '[value-5]', '[value-6]', 0, 4, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '[value-2]', 'Azl-Astoh.jpg', '[value-4]', '[value-5]', '[value-6]', 0, 5, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '[value-2]', 'l1qextxs3zw-w600.jpg', '[value-4]', '[value-5]', '[value-6]', 0, 6, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
-- Table structure for table `fav_product`
--

CREATE TABLE `fav_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PROD_ID` int(255) DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `QU` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fav_product`
--

INSERT INTO `fav_product` (`id`, `PROD_ID`, `member_id`, `QU`, `total`, `created_at`, `updated_at`) VALUES
(17, 1, 7, 0, 0, '2023-07-31 18:14:54', '2023-07-31 18:14:54'),
(18, 2, 7, 0, 0, '2023-07-31 18:15:00', '2023-07-31 18:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Username` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `massage` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_cards`
--

CREATE TABLE `inv_cards` (
  `ID` int(11) NOT NULL,
  `product_ID` varchar(40) NOT NULL,
  `product_ver` varchar(40) NOT NULL,
  `price` int(40) NOT NULL,
  `quantity` int(40) NOT NULL,
  `total` int(40) NOT NULL,
  `seller_id` int(40) NOT NULL,
  `purchaser_id` int(40) NOT NULL,
  `purchaser_visa` varchar(40) NOT NULL,
  `seller_visa` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobreq`
--

CREATE TABLE `jobreq` (
  `ID` int(22) NOT NULL,
  `username` varchar(22) CHARACTER SET utf8 NOT NULL,
  `email` varchar(22) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cv` varchar(22) CHARACTER SET utf8 NOT NULL,
  `comment` varchar(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Keyword` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `box_id` int(10) UNSIGNED DEFAULT NULL,
  `relatedtopic_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`ID`, `Keyword`, `description`, `author`, `title`, `nav_id`, `box_id`, `relatedtopic_id`, `created_at`, `updated_at`) VALUES
(1, 'رصف وتمهيد الطرق', 'رصف وتمهيد الطرق', 'رصف وتمهيد الطرق', 'رصف وتمهيد الطرق', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'رصف الطرق العامة', 'رصف الطرق العامة', 'رصف الطرق العامة', 'رصف الطرق العامة', 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'رصف المواقف والمداخل', 'رصف المواقف والمداخل', 'رصف المواقف والمداخل', 'رصف المواقف والمداخل', 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'معالجة الطرق المكسرة', 'معالجة الطرق المكسرة', 'معالجة الطرق المكسرة', 'معالجة الطرق المكسرة', 0, 4, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'خدمات العزل', 'خدمات العزل', 'خدمات العزل', 'خدمات العزل', 0, 5, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'خدمة الهدم و التكسير', 'خدمة الهدم و التكسير', 'خدمة الهدم و التكسير', 'خدمة الهدم و التكسير', 0, 6, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'مقاول أسفلت الأحساء-الرئيسية -0582689808', 'مقاول أسفلت الأحساء-الرئيسية -0582689808', 'مقاول أسفلت الأحساء-الرئيسية -0582689808', 'مقاول أسفلت الأحساء-الرئيسية -0582689808', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `marques`
--

CREATE TABLE `marques` (
  `id` int(10) UNSIGNED NOT NULL,
  `NEWS` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ar_NEWS` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nav_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marques`
--

INSERT INTO `marques` (`id`, `NEWS`, `Ar_NEWS`, `nav_id`, `created_at`, `updated_at`) VALUES
(5, 'sadsadsad', '', 1, '2023-05-06 09:27:53', '2023-05-06 09:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `Distantion` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_pic` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_pic` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instgram` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `olx` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `email_verified_at`, `password`, `mobile`, `Distantion`, `country`, `prof_pic`, `cover_pic`, `facebook`, `instgram`, `olx`, `visa`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'asphalltmember', 'asphalltmember@gmail.com', NULL, '$2y$10$A2dgJZtPxRub9sUS1ErX0ewDcKHoAHEn8Th.Xs4iYeuqkd8n54sMS', 123456, 'Hasa', 'Saudi Arabia', '1694769346.png', NULL, 'www.fb.com', 'www.insta.com', 'www.olx.com', NULL, 'MTIzNDU2', '2023-09-15 16:02:24', '2023-09-15 16:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `member_pr`
--

CREATE TABLE `member_pr` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_Model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_ver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_cat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_cost` int(11) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `Discount` int(11) DEFAULT NULL,
  `QR` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_Des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Box_ID` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_pr`
--

INSERT INTO `member_pr` (`id`, `product_Model`, `product_ver`, `product_cat`, `product_cost`, `product_price`, `Discount`, `QR`, `supplier`, `product_Des`, `Image1`, `Image2`, `Image3`, `Image4`, `Box_ID`, `created_at`, `updated_at`) VALUES
(1, 'oppo F17', 'oppo x', 'mobile  ', 12, 20, 10, 'xmnsqr123', 'Amr', 'oppo F16Description', 'shopmarket.png', '1686795941.png', '1686795941.png', '1112.jpg', 3, '2023-05-30 06:08:19', '2023-06-15 09:25:41'),
(2, 'OppoF7', 'Oppo', 'Mobile', 120, 150, 20, 'xmnsqrls', 'Amr', 'OppoF7 Description', 'shopmarket.png', '61G68tYZ1UL._AC_SX425_.jpg', '61G68tYZ1UL._AC_SX425_.jpg', '61G68tYZ1UL._AC_SX425_.jpg', 3, '2023-05-30 06:17:38', '2023-05-30 06:17:38');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_29_182106_create_marques_table', 3),
(7, '2022_05_29_182224_create_sliders_table', 3),
(8, '2022_05_29_182325_create_topics_table', 3),
(9, '2022_05_29_182441_create_companies_table', 3),
(10, '2022_05_29_182533_create_boxes_table', 3),
(11, '2022_05_29_182636_create_socials_table', 3),
(12, '2022_05_29_183144_create_forms_table', 3),
(13, '2022_05_29_183252_create_navs_table', 3),
(14, '2022_05_29_183358_create_videos_table', 3),
(15, '2022_06_01_074644_create_paragraphs_table', 3),
(16, '2022_06_01_183542_create_s_numbers_table', 3),
(17, '2022_06_04_134630_covers', 3),
(21, '2022_05_01_192830_Adminposts', 4),
(22, '2022_12_25_235345_migrations', 5),
(23, '2023_05_24_162940_create_members_table', 6),
(24, '2023_05_30_042251_member_pr', 7);

-- --------------------------------------------------------

--
-- Table structure for table `navs`
--

CREATE TABLE `navs` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub1menu` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ar_sub1menu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenuico` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Active` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SUBMENUID` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `footer` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navs`
--

INSERT INTO `navs` (`id`, `sub1menu`, `Ar_sub1menu`, `submenuico`, `Active`, `SUBMENUID`, `parent_id`, `footer`, `created_at`, `updated_at`) VALUES
(1, 'الرئيسية', '', '', 'active', 0, NULL, NULL, '0000-00-00 00:00:00', '2023-09-15 21:53:04'),
(3, 'اخبارنا', '', '', '', 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(22) NOT NULL,
  `username` varchar(22) NOT NULL,
  `profile_IMG` varchar(22) DEFAULT NULL,
  `massage` varchar(300) NOT NULL,
  `sender_id` int(22) NOT NULL,
  `recevier_id` int(22) NOT NULL,
  `bg_color` varchar(22) NOT NULL,
  `DIR` varchar(22) NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `username`, `profile_IMG`, `massage`, `sender_id`, `recevier_id`, `bg_color`, `DIR`, `Time`) VALUES
(12, 'Amrgelno', '1686910600.png', 'insert your massage here !', 7, 0, '#070', 'rtl', '2023-06-21 22:16:10'),
(13, 'asphalltmember', NULL, 'insert your massage here !', 10, 0, '#070', 'rtl', '2023-09-15 09:06:47'),
(14, 'technicalsupportteam', 'Asphaltlogo.png', 'ok sir', 0, 10, '#070', 'rtl', '2023-09-15 09:11:14'),
(15, 'asphalltmember', '1694769346.png', 'تمام   شكرا لكم', 10, 0, '#070', 'rtl', '2023-09-15 09:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `paragraphs`
--

CREATE TABLE `paragraphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `Paragraph` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ar_paragraph` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `box_id` int(10) UNSIGNED DEFAULT NULL,
  `relatedtopic_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paragraphs`
--

INSERT INTO `paragraphs` (`id`, `Paragraph`, `Ar_paragraph`, `nav_id`, `box_id`, `relatedtopic_id`, `created_at`, `updated_at`) VALUES
(1, '<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: right; line-height: normal;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">مقاول <strong>اسفلت الاحساء</strong> &ndash; خدمة بارزة من خدمات شركة <strong>رصف طرق </strong>التي تساعد المختصين بدورها في <strong>تمهيد الطرق</strong> وصيانتها لجعلها أكثر أمانا حرصا على السلامة العامة وتحسين <strong>قدرة الطرق</strong> وهو ما يساهم فيه أيضا افضل مقاول <strong>اسفلت الاحساء</strong> الذي توفره التي تقدم خدماتها في <strong>اعمال ازفلت</strong> <strong>الاحساء</strong> بالتعاون مع افضل مهندسين <strong>الطرق</strong> ومقاولين <strong>أسفلت الاحساء</strong> وكذلك تضم بين أفرادها معلم <strong>اسفلت ممتاز</strong> وتستخدم الخامات فائقة الجودة لتكوين <strong>خلطات أسفلت </strong>تتحمل أعلى الأوزان وتغيرات المناخ وتعمل بكفاءة عالية لأطول فترة زمنية. </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: center; line-height: normal;\" align=\"center\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: right; line-height: normal;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">وإمكانيتنا كواحدة من أكبر شركات <strong>اسفلت بالاحساء</strong> تؤهلنا لتحسين أرضية أي طريق مهما كانت قساوته وتعدد مشكلاته بل نستطيع بناء <strong>الطرق</strong> من الصفر وقد تشرفنا بالمشاركة في العديد من أعمال مقاولات <strong>الطرق</strong> وإنشاء الجسور بالمملكة ولدينا سجل مشرف من سوابق الأعمال الخاصة بنا كأفضل شركة <strong>اسفلت بالاحساء</strong> وبجانب <strong>أعمال الأسفلت </strong>نقدم جميع خدمات الصيانة المنزلية بنفس مستوى الخدمة المتميز.</span><span style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\"><br /><br /><strong><span dir=\"RTL\" lang=\"AR-SA\">اعمال اسفلت بالاحساء</span></strong><span dir=\"RTL\" lang=\"AR-SA\"> يتم تنفيذها تحت اشراف اكاديمي رفيع المستوى اعمال <strong>اسفلت الاحساء</strong> التي يتولى تنفيذها مقاول <strong>اسفلت الاحساء</strong>الذي نوفر لكم خدماته بشركتنا تتميز بدقة الخطوات واتباع برنامج عمل محكم. </span><br /><strong><span dir=\"RTL\" lang=\"AR-SA\">تقييم الطرق</span></strong><span dir=\"RTL\" lang=\"AR-SA\"> وتحديد نوعيتها ونوعية خلطات <strong>الاسفلت</strong> المناسبة لها يتم إرجاعه لنخبة من أستاذة هندسة <strong>الطرق</strong> الاكاديميين الممارسين. افضل مهندس <strong>اسفلت الاحساء</strong> يشرف على تكوين <strong>الخلطات الأسفلتية </strong>التي نستخدمها في اعمال <strong>اسفلت بالاحساء</strong> تحسين الخلطات المستخدمة في اعمال <strong>ازفلت الاحساء</strong> وتعلية قدراتها لتتحمل أقصى درجات الاستخدام لأطول فترة زمنية ممكنة.<br /><br /></span></span><span dir=\"RTL\" lang=\"AR-EG\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none; mso-bidi-language: AR-EG;\">يتم </span><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">اعتماد التجربة اليابانية في تخطيط و<strong>سفلتة الطرق </strong>نقدم لكم خدماتنا في اعمال <strong>اسفلت بالاحساء</strong> ونحن شركة كبرى متخصصة في<strong> تخطيط الطرق </strong>وتنفيذ اعمال <strong>اسفلت</strong> الطرق <strong>بالاحساء</strong> ونتبع الأنظمة القياسية المعمول بها في كبرى هيئات <strong>تخطيط</strong> <strong>الطرق</strong> العالمية ولدينا برامج عمل مشتركة مع أهم الشركات اليابانية المتخصصة في <strong>تمهيد الطرق</strong> وتخطيطها وتنفيذ أعمال <strong>الأسفلت</strong> واعتمادنا على الخبرات اليابانية يأتي لتفوقها وتميزها فيما يخص أعمال <strong>تخطيط وتنظيم وتمهيد الطرق</strong>،<br />أن <strong>اعوجاج الطرق </strong>ووجود المعوقات الحجرية والصخرية وحتى الشقوق والفجوات الناتجة عن تواتر الاستخدام والأوزان الكبيرة لحمولات السيارات مع عدم الاهتمام بأعمال الصيانة بجانب تأثير عوامل المناخ المختلفة يجعل استخدامها محفوف بالخطورة على الأنفس وعلى السيارات بل وحتى السير على الأقدام في الطرق الغير مستوية غير آمن أيضا وهو ما يجعل مهمة مقاول <strong>اسفلت بالاحساء</strong> على درجة كبيرة من الضرورة والأهمية كونه يساهم في تحسين<strong> الطرق</strong> وجعلها آمنة بتمهيدها وتنفيذ أعمال <strong>السفلتة</strong> الخاصة بها والتي تجعلها أفضل وأكثر أمنا وهو ما يعود بالإيجاب على <strong>سلامة الطرق</strong> وبالتالي سلامة الأنفس فإذا كنت بحاجة لتنفيذ اعمال <strong>ازفلت بالاحساء</strong> للشوارع أو مداخل الجراجات والشركات وواجهات المنازل والفلل والقصور الكبيرة يمكنك الاعتماد على افضل مقاول <strong>اسفلت بالاحساء</strong> وأنتم مطمئنون للنتيجة الممتازة للخدمة.</span><span style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\"><br /><span dir=\"RTL\" lang=\"AR-SA\">بمجرد التعاقد مع مقاول <strong>اسفلت الاحساء</strong> لتنفيذ خدماته يتم عمل دراسة متكاملة <strong>للطريق</strong> لتحديد برنامج العمل والمواد الأسفلتية المناسبة</span><span style=\"mso-spacerun: yes;\">&nbsp; </span><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>كما يتم تحديد المعدات الثقيلة التي تتناسب مع طبيعة الأعمال التي ستنفذ على <strong>الطريق</strong><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>كافة الخطوات يتم تطبيقها على جميع المساحات التي يتم اختيار شركتنا <strong>لتمهيدها ورصفها وسفلتتها</strong>. مقاول <strong>ازفلت بالاحساء</strong> يعتمد على خبرات نخبة من مهندسين التخطيط العمراني <strong>وتمهيد الطرق</strong> شركتنا تتيح لكم التعاون مع افضل مقاول <strong>ازفلت بالاحساء</strong> والذي يعمل ضمن طاقم رفيع من المهندسين والاستشاريين المتخصصين <strong>بتخطيط الطرق</strong> وتمهيدها. يقوم مقاول<strong> ازفلت الاحساء</strong> بتنفيذ برنامج عمل محكم موضوع بأيادي اهم مهندسي الطرق بالمملكة.</span><br style=\"mso-special-character: line-break;\" /><!-- [if !supportLineBreakNewLine]--><br style=\"mso-special-character: line-break;\" /><!--[endif]--></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: right; line-height: normal;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>يتم باستمرار تحسين نوعية المواد <strong>الاسفلتية</strong> المستخدمة في اعمال <strong>ازفلت بالاحساء</strong> ويتم إدخال مكونات كيميائية من شأنها تعلية قدرة التركيبة وتزيد من تحملها. تحسين نوعية <strong>الاسفلت </strong>بإضافة مواد بوليمرية تم عمل دراسة على مدى قدرتها في تحسين نوعية <strong>الاسفلت</strong>.</span><span style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\"><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>اثبتت الخلطات الاسفلتية المحسنة التي نعتمدها في شركتنا والتي يتم تطبيقها على الطريق من خلال افضل مقاول <strong>اسفلت بالاحساء</strong> نجاحها الكبير. مع اعتمادنا على أكبر المعدات وأحدثها وأهم المهندسين المتخصصين <strong>بالطرق</strong> وأجود خامات خلطات <strong>الاسفلت</strong> نوفر لكم فريق فني متميز بأعمال رصف <strong>الطرق</strong> وتحسينها. مقاول <strong>اسفلت</strong> بالاحساء الافضل لتسوية <strong>الطرق</strong> والواجهات وسفلتتها بأفضل تركيبات <strong>الاسفلت</strong> وبأقل سعر <strong>اسفلت</strong>-طرق-<strong>الاحساء</strong>-مقاول-<strong>اسفلت</strong> افضل تركيبة </span><br /><span dir=\"RTL\" lang=\"AR-SA\"><br /><strong>اسفلت</strong> مضادة للتشققات مقاومة للعوامل البيئية والمناخية كما سبق وأشرنا أننا في افضل شركة <strong>اسفلت</strong> <strong>الاحساء</strong> تقوم بتحسين نوعية الخامات المستخدمة في تكوين طبقة <strong>الاسفلت</strong> التي يتم استخدامها في <strong>رصف</strong> <strong>وسفلتة</strong> الطرق وهو أمر يتم بعد دراسة دقيقة من قبل المتخصصين من كبار الاستشاريين الهندسيين المتخصصين في أعمال <strong>الطرق</strong> <strong>والأسفلت</strong> وكما أوضحنا أيضا أننا نسترشد بالتجربة اليابانية الفائقة واستعننا فعليا بأساتذة متخصصين قاموا باختبار قدرة مواد <strong>الاسفلت</strong> نستعين بها في شركتنا وتم ترقيتها بإضافة مواد بوليمرية وتركيبات كيميائية على جزيئات <strong>الاسفلت</strong> أدت لتقوية التركيبة وتم عمل اختبارات قياسية لها وأثبتت قدرتها وكفاءتها لاستخدامها على <strong>الطرق</strong> في بيئتنا وأنها تتحمل العمل لسنوات عديدة دون <strong>تلف</strong> او <strong>تشقق</strong> أو تأثر بأي عامل خارجي، وهو ما يجعل افضل مقاول اسفلت <strong>بالاحساء</strong> التابع لشركتنا هو خيارك الأمثل. مقاول اعمال<strong> اسفلت الاحساء</strong> وخدماته المتميزة مقاول اعمال <strong>اسفلت بالاحساء </strong>من شركتنا يتولى جميع مقاولات <strong>الاسفلت وتمهيد ورصف الطرق بالاحساء</strong>. يقوم بمساعدة معلم<strong> اسفلت الاحساء</strong> بصيانة الطريقة وصيانة <strong>الأسفلت</strong> القائم وإصلاح أي عيوب به وتحديث <strong>رصفه</strong> <strong>وتمهيده</strong>. يقوم افضل معلم <strong>اسفلت</strong> <strong>الاحساء</strong> مع فريق شركتنا من الهندسيين والفنيين ببناء جسور المشاة وتسوية<strong> الطرق</strong>.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>تركيب الحواجز الاسمنتية والسياج على جوانب <strong>الطرق</strong> وكذلك تركيب البنرات ولوحات الاعلانات. <strong>تسوية الطرق وسفلتة </strong>الواجهات المقابلة للشركات والقصور وكشط الترسبات الحجرية ودك <strong>الطرق</strong> <strong>وسفلتتها</strong>. تمتلك شركة <strong>ازفلت</strong> <strong>الاحساء</strong> أحدث المعدات والتي تسهل <strong>أعمال الاسفلت</strong> وتجعلها أفضل. معلم <strong>اسفلت الاحساء</strong> ودوره في ترتيب خطوات تركيب <strong>الاسفلت</strong> معلم <strong>اسفلت</strong> <strong>الاحساء</strong> ضمن فريق متكامل العناصر من الاستشاريين ومهندسين المواقع والفنيين الذي يقدمون خدماتهم تحت رعاية شركتنا.</span><br /><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>تأتي خطوة الكشط وتسوية الطريق كأول خطوات معلم <strong>اسفلت الاحساء </strong>لتنفيذ عملية <strong>الرصف والسفلتة</strong>. بعدها يتم دك الطريق للتأكد من تسويته وتمهيده استعدادا لوضع طبقات <strong>الازفلت</strong>. توضع خلطة <strong>الاسفلت</strong> على طبقات متتالية ويتم وضع كل طبقة وتغطيتها بالرمال مع رشها وانتظارها لتجف قبل وضع الطبقة التالية. بعد وضع طبقات <strong>الازفلت</strong> يتم دكها بالمعدات الثقيلة المخصصة لهذا الأمر ويتم إخضاع الطريق <strong>المسفلت</strong> لتجارب بأوزان وحمولات عالية الثقل للتأكد من جودته. بعدها نعلن انتهاء عملية <strong>السفلتة</strong> ونضمن للعميل كفاءتها وعمرها الطويل كوننا نعتمد على أفضل خلطة <strong>اسفلت</strong>. حساب تكلفة <strong>الاسفلت</strong> &ndash; سعر متر <strong>الاسفلت</strong> في الاحساء اما عن حساب تكلفة <strong>الاسفلت</strong> وسعر متر <strong>الاسفلت</strong> في <strong>الاحساء</strong> وهو الاستفسار الأكثر شيوعا من عملائنا وكل من يريد خدمة <strong>الأسفلت</strong> فإننا وإن كنا نقدم مستوى خدمة يرتقي للعالمية فيما يخص أعمال <strong>الازفلت</strong> بمشتقاتها التي يتولاها افضل مقاول اسفلت الاحساء فإننا كذلك نقدم ارخص سعر متر <strong>الاسفلت</strong> <strong>بالاحساء</strong> ولا نبالغ في ذلك لأننا فعليا نعتمد على تقدير خدماتنا بأسعار التكلفة وهو ما يحدده حجم وسعة الطريق المراد <strong>سفلتته</strong> مع تحديد أنواع الخلطات المناسبة وعدد العمالة المشاركة وأيضا المعدات التي يستم استخدامها في عمليات التمهيد والسفلتة. افضل مقاول <strong>اسفلت</strong> في <strong>الاحساء</strong> خدماته متاحة للجميع إذا كنت تبحث عن افضل مقاول <strong>اسفلت</strong> في <strong>بالاحساء</strong> <strong>لتمهيد</strong> <strong>وسفلتة</strong> الطرق والواجهات أو أي من خدماته التي تم توضيحها من خلال هذا الموضوع تتيح لكم التعاون مع الأفضل من المهندسين والفنيين ومقاولين الأسفلت بالاحساء وتقدم لكم كافة إمكانياتها لتقديم الخدمة المثالية التي تتميز بها كمؤسسة خدمية رائدة وأرقامنا متاحة طوال الوقت وبمجرد اتصالك سيتم توجيهم لأفضل مهندس اسفلت الاحساء والذي سيتولى عملية الاسفلت والتي نسأل الله أن نوفق في تأديتها مع باقي خدماتنا بالشكل المرضي لعملائنا فلم نبخل في توفير المعدات والكوادر البشرية حتى نقدم لكم أفضل ما لدينا<br /></span>.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">&nbsp;</p>', '<p>SAXSAXS</p>', 0, 1, 0, '0000-00-00 00:00:00', '2024-02-15 13:26:47'),
(2, '<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: right; line-height: normal;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">رصف الطرق </span></strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">أصبح إحدى دعائم الدول الحديثة، وهو نتاج لمجهودات العلم الحديث، وما أفرزه من تطوُّرات ساهمت في تحقيق الرفاهية للإنسان في شتَّى ميادين الحياة، وفي حالة العودة إلى الوراء لقرن من الزمن أو أكثر فسوف نجد عالمًا من دون طُرُق مُمهَّدة، وكان ذلك الأمر أشبه بعائق لعديد من الجوانب، وخصوصًا في ظل اكتشاف وسائل النقل السريعة المتمثلة في السيارات، والدَّرَّاجات البخارية، ولا يمكن لتلك الوسائل أن تسير بالأريحية المطلوبة دون وجود طريق يسهُل السير عليه، ومن الممكن أن نقول إن ظهور صناعة <strong>رصف الطرق </strong>ارتبط ارتباطًا وثيقًا بتطوُّر وسائل النقل، وسوف نتعرَّف في هذا المقال على عديد من الأوجه التي تدور حول <strong>رصف الطرق الاحساء</strong> مع أفضل شركة <strong>لرصف الطرق </strong>شركة العالمية المحدودة؛ وذلك من خلال الإجابة عن بعض الأسئلة المهمة.</span><span style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\"><br /><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>ما أهمية <strong>رصف الطرق</strong>؟</span><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>يوجد عديد من العناصر فيما يتعلَّق بأهمية <strong>رصف الطرق</strong>، أو <strong>سفلتة الطرق</strong>، وسوف نوضحها كما يلي: &middot; بالنسبة للاقتصاد القومي: تلعب عملية <strong>رصف الطرق بالاحساء </strong>دورًا كبيرًا على مستوى الاقتصاد القومي، حيث إن<strong> رصف الطرق</strong> أحد المعايير التي يطلبها المستثمرون في حالة الرغبة في إقامة مشروعات في إحدى الدول، ومن هذا المنطلق فإن الفُرص الاستثمارية لا تتأتَّى لأي دولة من دون شبكة طُرُق مُنظَّمة، ولا شك أن سفلتة الطرق تُؤدِّي إلى خفض تكلفة عوامل الإنتاج بما يعود بالنفع على الاقتصاد؛ من خلال تقديم منتجات منخفضة السعر، ويساعد ذلك أيضًا في زيادة مُعدَّلات التصدير الخارجي.</span><br /><span dir=\"RTL\" lang=\"AR-SA\">التوسع في رقعة الأراضي الزراعية: تُساهم عملية <strong>رصف الطرق </strong>في توجيه الطاقات البشرية نحو استصلاح الأراضي الزراعية، حيث إن <strong>رصف الطرق </strong>يُسهِّل من عملية الانتقال لتلك المناطق، ونقل الأجهزة والمُعدَّات والمواد التي تلزم عملية الاستصلاح، كما أن وجود طُرُق مُمهَّدة يُساعد أيضًا في نقل منتجات الأراضي الزراعية وتسويقها فيما بعد، سواء بالداخل أو الخارج. &middot; بالنسبة لحركة المرور: تُعَدُّ <strong>سفلتة الطرق </strong>أحد الأمور التي تحتاج إليها الدولة العصرية، وخصوصًا في ظل وجود مئات الآلاف من السيارات في الدولة الواحدة، لذا وجب على تلك الدول <strong>سفلتة الطرق</strong>؛ لتحقيق السيولة المرورية وعدم تعطيل وسائل النقل، ومن ثَمَّ يقوم رجال المرور بدورهم في تنظيم تلك العملية، ويُعَدُّ ذلك من عناصر أهمية <strong>رصف الطرق</strong>. </span><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>ظهور الصناعات ذات الصلة: يُؤدِّي التوسع في <strong>رصف الطرق </strong>إلى تدشين كثير من الصناعات المرتبطة بذلك، ويتمثَّل ذلك في شركات المقاولات، وكذلك الشركات التي تقوم بتصنيع إشارات المرور، وأعمدة الإنارة، والحواجز الخرسانية، واللوحات الاسترشادية، بما يُؤدِّي إلى إيجاد فُرص عمل للمواطنين، وخفض نسبة البطالة. &middot;</span><br /><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>بالنسبة للمحافظة على وسائل النقل: وسائل النقل المُتمثِّلة في السيارات والحافلات والدَّرَّاجات تلزمها طُرُق مستوية قدر الإمكان؛ من أجل المحافظة عليها، وعدم تعرُّضها لأي سلبيات، وذلك الأمر من بين أوجه أهمية <strong>رصف الطرق</strong>. &middot; إنشاء المدن الحضرية: تتمثَّل أهمية رصف الطرق في تحقيق عامل الجذب السكاني لأي مدينة جديدة، فمن دون <strong>رصف الطرق </strong>لن يكون هناك مجتمع عمراني يستطيع أن يقطن منطقة معينة، حيث إن سفلتة الطرق تُسهِّل على المواطنين التَّوجُّه إلى أعمالهم أو جامعاتهم، والعودة دون أي مشاكل، أو إهدار للوقت. ما أنواع <strong>رصف الطرق</strong>؟ يوجد عديد من أنواع <strong>رصف الطرق</strong>، وسوف نوضحها كما يلي: </span><br /><span dir=\"RTL\"><span style=\"mso-spacerun: yes;\">&nbsp;</span><u><span lang=\"AR-SA\">الرصف الأسمنتي أو المرن</span></u><span lang=\"AR-SA\">: وهو النوع الأكثر شيوعًا من أنواع <strong>رصف الطرق</strong>، وتُستخدم تلك الطريقة في حالة قُدرة التُّربة على التحمُّل، حيث يتم عمل ثلاث طبقات؛ الأولى تُعرف بطبقة ما تحت الأساس، والثانية طبقة الأساس، وهي عبارة عن مواد قادرة على التحمُّل، والعلوية عبارة عن طبقة الأسفلت، وفي الغالب طبقة الأساس تكون متناسبة مع سُمك طبقة الأسفلت. &middot; الرصف الخرساني أو الصلب: وذلك النوع من أنواع <strong>رصف الطرق </strong>يعتمد على إنشاء فرشة خرسانية سميكة يتم وضعها فوق التُّربة بشكل مباشر، أو بعد طبقة بسيطة من الحصى الصغير، وتُستخدم تلك الطريقة في <strong>رصف الطرق</strong> بالدول التي تتَّسم بدرجات الحرارة المنخفضة، مثل كندا، وروسيا، وشمال أوروبا، حيث تعمل الطبقة الأسمنتية كفاصل عازل، وقد يُستخدم حديد التسليح أو لا، وذلك على حسب نوعية الناقلات والأحمال التي تمرُّ عبر الطريق. &middot; الرصف المُركَّب: وفي ذلك النوع من أنواع رصف الطرق تُستخدم الطريقتين سالفتي الذكر، حيث يتم استخدام طبقات من الأسمنت والخرسانة المُسلَّحة في الوقت نفسه، وبعد ذلك تتم كسوة تلك الطبقات بطبقة الأسفلت، وبذلك الأسلوب يُصبح الطريق أكثر قُدرة على تحمُّل الناقلات الكبيرة؛ نظرًا لسماكة طبقات الأساس. ما طريقة الحصول على الأسفلت؟ &middot; يُعَدُّ الأسفلت أحد نواتج البترول، ويتم الحصول عليه كمرحلة من مراحل تكرير البترول (التقطير)، والتي تبدأ بتسخين البترول الخام، ومن ثم تتطاير المواد الأقل وزنًا وكثافة، وفي تلك المرحلة يتم الحصول على الغازات مثل البيوتان (الغاز الطبيعي)، وبعد ذلك البنزين، والسولار، وآخر مُركَّب كيميائي يتم الحصول عليه هو الأسفلت، فهو الأكبر كثافة فيما بين مكونات النفط. &middot; من الممكن أن يُوجد مُركَّب الأسفلت الذي يُستخدم في<strong> رصف الطرق</strong> بصورة طبيعية ومن دون أي مواد بترولية مُختلطة به، ومن أمثلة ذلك بحيرة تُوجد في البحر الكاريبي، وبالتحديد بجزيرة ترينداد، وتُعرف باسم (بحيرة القار)، ويوجد بها طبقة تُغطِّي مساحة قاع البحيرة من مادة الأسفلت، وكذلك هناك (بحيرة غوانكو) في أمريكا اللاتينية، وبالتحديد في دولة فنزويلا، ويوجد بقاع تلك البحيرة طبقة من الأسفلت تُغطِّي مساحة أربعمائة هكتار، وكذلك هناك نوع من الأسفلت على درجة مرتفعة من الصلابة، ويعرف باسم (غلسوانيت)، ويوجد بولايتي كولورادو ويوتا بأمريكا. </span></span><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>الأسفلت مركب أسود اللون ويُستخدم في <strong>رصف الطرق</strong>، وكذلك في صناعة أحبار الطباعة، وفي صناعة المواد العازلة التي تُستخدم في عزل دورات المياه والمطابخ والمسابح، بالإضافة إلى صناعة الورنيش الذي يُستخدم في تلميع الأحذية&hellip; إلخ. ما الصفات التي جعلت من الأسفلت مادة مثالية في<strong> رصف الطرق</strong>؟ &middot; يتميَّز الأسفلت بإمكانية تحويله إلى سائل؛ من خلال درجات الحرارة المرتفعة، وبعد الانتهاء من عملية <strong>رصف الطرق </strong>يعود مرَّة أخرى صلبًا ومتماسكًا نتيجة انخفاض الحرارة. &middot; تستمر مادة الأسفلت التي تُستخدم في رصف الطرق لفترات زمنية طويلة تصل إلى عشرات السنوات دون حدوث أي سلبيات. &middot; الأسفلت مادة عازلة، لذا فإنه في حالة سقوط الأمطار بغزارة، أو في حالة وجود أعاصير، فإنه يُعَدُّ بمثابة طبقة حامية لما قد يوجد أسفله من أنابيب صرف وغاز وطبيعي&hellip; إلخ. ما مراحل رصف الطرق؟ &middot; المرحلة الأولى: دراسة نوعية الطريق: وهي أهم مراحل رصف الطرق، حيث ينطوي عليها الاستمرار قُدُمًا في <strong>رصف الطرق</strong> بالأسفلت أو استخدام طريقة أخرى للتمهيد، وفي تلك المرحلة تتم دراسة نوعية الطريق المُراد رصفه وطبيعة التُّربة المكونة له، سواء صخرية أو رملية&hellip; إلخ، حيث يتم عمل مجسَّات للتعرف على مدى تحمُّل سطح الطريق الخارجي لطبقة الأسفلت، والهدف من ذلك هو عدم حدوث هبوط في طبقة الأسفلت على المدى المتوسط والطويل. &middot; المرحلة الثانية: إنشاء طبقة الأساس: وطبقة الأساس عبارة عن حصوات صغيرة تتم تسويتها على سطح الطرق كطبقة أوَّلية، ومن المهم أن تكون الحصوات ذات أحجام مُتساوية قدر الإمكان وجافَّة؛ حتى لا توجد فجوات عند تسويتها، ولطبقة الأساس أهمية كبيرة في منع وجود تفاوت في درجات الحرارة فيما بين طبقة الأسفلت العلوية وطبقات الأرض الداخلية، وخصوصًا في البلدان ذات الحرارة المنخفضة جدًّا، وتُسهِّل طبقة الأساس من تسوية الطبقة التي تليها، والتي تتمثَّل في الأسفلت، كما أنها تُساعد في تصريف المياه بأسلوب سلس.</span><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&middot; المرحلة الثالثة: تسوية الطريق: وتتم تسوية الطريق؛ من خلال مرور الآلات أو السيارات ذات المكابس، مع مُراعاة أنه في حالة وجود طريق دائري أو ينحرف قليلًا من حيث الارتفاع، أن تتم التسوية من أعلى لأسفل؛ حتى لا يُؤثِّر في حدوث مشاكل أثناء سير السيارات والحافلات بسُرعة. &middot; المرحلة الرابعة: سفلتة الطرق: وهي آخر مرحلة من مراحل <strong>رصف الطرق</strong>، حيث تتم إضافة مادة القار (مركب الأسفلت) في درجة حرارة عالية حتى تسهُل تسويته، بعد ذلك يُترك الطريق لمدة يومين أو ثلاثة أيام على الأقل قبل الاستخدام حتى تأخذ طبقة الأسفلت وقتها كي تبرد. شركة <strong>رصف طرق </strong>مع تزايد أهمية شبكات الطرق وتكلفتها العالية استوجب تطوير عدة أساليب لتصميم <strong>رصفات الطرق </strong>أخذه بالاعتبار سلوك التربة تحت تاثير ومواد الرصف الأحمال الكبيره والتأثيرات المناخية والبيئية المختلفه الطّرق حتى تكون جاهز للنقل يجب أن تكون خاضعة لعملية رصف جيدة، و تتم عملية <strong>رصف الطّرق</strong> بعدة خطوات و عدة مواصفات، و لرصف الطّريق أولا يجب أن يكون هناك دراسة واضحة للطريق يعني من حيث المساحة و الإتجاه و طبيعة الأتربة، و طبيعة الطريق . يبدأ رصف الطّريق بجرف الأتربة و عمل طريق واضح المعالم ثم يتم غربلتها من الحجارة الكبيرة و أحيانا تتم بواسطة الكسارات الضخمة المتحركة التي تعمل على رص الحجارة جيدا أي تقوم بتمهيد الطريق و رص الحجارة جيدا هي للعمل على زيادة قوة التماسك و سد الفراغات حتى يصبح الطريق يتحمل قوة الشاحنات الثقيلة التي تمر عليها و <strong>لرصف الطّريق</strong> أيضاً، يجب معرفة هل الطّريق الذي سنقوم برصفه من حيث طبيعة الأتربة التي ستكون هي طبقة الأساس هل ستكون قوية التّحمل و هل ستتعرض للإنهيار عندما تهطل الأمطار، فبعض الطّرق عندما تتشبع بمياه الأمطار تعمل على تجويف في الطّريق من الصّعب على وسائل النّقل أن تسير بسهولة .لذلك مهندس الطّريق عندما يبدأ أول خطوة في رصف الطّريق يعمل على دراسة التّراب جيداً و بعدها يضع طبقة الأساس و هذه الطبقة تكون من الحجارة الصّغيرة و هي الحصوة التي تدخل في صناعة الطّوب، و هذه الحصوة يجب أن تكون خالية من أي تراب يذوب في الماء حتى لا يعمل على ترك فراغات بين الحجارة لأنها يجب أن تكون كذلك نظيفة خالية من أي أوساخ لأنه يأخذ بعين الإعتبار كم مدة من الوقت ستخدم كطبقة أساس نظيفة خالية من مواد تجعلها طبقة أساس ضعيفة أنواع الرصفات: هناك ثلاثة أنواع رئيسية للرصفات: أ&zwnj;- الإسفلتية أو المرنة</span> ( Flexible Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">ب&zwnj;- الخرسانية أو الصلدة</span> ( Rigid Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">ت&zwnj;- المركبة أو المختلطة</span> ( Composite Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">أولاً : الرصفات الإسفلتية أو المرنة</span> ( Flexible Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">يوجد ثلاثة أساليب لإنشاء هذا النوع من الرصفات</span> : I. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية التقليدية</span> ( Conventional Flexible Pavement ). Ii. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية</span> ( Full-Depth Asphalt Pavement ). Iii. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية الحاضنة</span> ( Contained Rock Asphalt Mats-CRAM ). I. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية التقليدية</span> ( Conventional Flexible Pavement ). <span dir=\"RTL\" lang=\"AR-SA\">تتكون من ثلاث طبقات رئيسية الطبقة السطحية</span> (Surface Course) <span dir=\"RTL\" lang=\"AR-SA\">تليها طبقة الأساس</span> (Base Course) <span dir=\"RTL\" lang=\"AR-SA\">ثم طبقة ما تحت الأساس</span> (Subbase Course ). <span dir=\"RTL\" lang=\"AR-SA\">الطبقة السطحية تكون من أفضل نوعية مواد من حيث القدرة على التحمل. ينتقل تأثير الحمولات المرورية من خلال هذه الطبقات إلى التربة الطبيعية التي يفترض أن تكون قدرتها على التحمل عالية نسبياً حيث يتم دمكها بشكل جيد</span> (Compacted Subgrade) <span dir=\"RTL\" lang=\"AR-SA\">لتحسين مواصفاتها</span>. Ii. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية</span> ( Full-Depth Asphalt Pavement ). <span dir=\"RTL\" lang=\"AR-SA\">تتكون الرصفة من طبقة أو أكثر من الخلطات الإسفلتية الساخنة</span> (Hot Mix Asphalt) <span dir=\"RTL\" lang=\"AR-SA\">ويتم إنشاؤها مباشرة فوق التربة الطبيعية أو المحسنة</span> (Improved Subgrade). <span dir=\"RTL\" lang=\"AR-SA\">تعتبر من أفضل الرصفات قدرة على تحمل الشاحنات الثقيلة. لا يوجد فيها طبقات تحتجز المياه لمدة طويلة. المدة الزمنية اللازمة لإنشائها أقل من الرصفات المرنة التقليدية. لا تتأثر بالرطوبة أو الصقيع. هناك تجانس بين مختلف طبقات الرصف</span>. Iii. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية الحاضنة</span> ( Contained Rock Asphalt Mats-CRAM ). <span dir=\"RTL\" lang=\"AR-SA\">تتكون من أربع طبقات العليا والسفلى من الخلطات الإسفلتية الساخنة والثانية والثالثة من مواد حصوية. هذا الأسلوب الإنشائي ميزته أن الطبقة الإسفلتية السفلى تساهم بشكل ملحوظ في تقليل تأثير الإجهاد الرأسي على التربة والذي يسبب هبوط التربة. ومن مميزاتها ما يلي : التحكم بتصريف مياه الأمطار بوجود الطبقة الحصوية العالية النفاذية. منع تلوث الحصمة بالأتربة القادمة من طبقة التربة الطبيعية. تقليل حدوث تشققات الكلل أو التمساحية</span> (Fatigue Cracking) <span dir=\"RTL\" lang=\"AR-SA\">التي تتكون في أسفل الطبقة الإسفلتية العليا باستخدام إسفلت قليل اللزوجة. ثانياً : الرصفات الخرسانية</span> ( Rigid Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">يتكون هذا النوع من بلاطة خرسانية</span> (Slab PCC) <span dir=\"RTL\" lang=\"AR-SA\">يتم إنشاؤها مباشرة على التربة الطبيعية أو يوضع تحتها طبقة أساس حصوية</span> (Base Course). <span dir=\"RTL\" lang=\"AR-SA\">تعتبر صلابة البلاطة الخرسانية العامل الأهم في التصميم أما العامل الأهم في تصميم الرصفات المرنة هو قدرة تحمل التربة الطبيعية. ينتشر هذا النوع من الرصفات في المناطق الباردة (أوروبا وروسيا وأمريكا الشمالية) حيث تقاوم الفواصل الموجودة بين بلاطات الرصفة التغيرات الحرارية الكبيرة بين الصيف والشتاء أو بين الليل والنهار. قد تكون هذه الرصفات مسلحة أو غير مسلحة وذلك حسب الحجوم المرورية ونسبة الشاحنات الثقيلة. أهمية عمل طبقة الأساس: التحكم بتسرب المياه الجوفية والأتربة من خلال الفواصل الموجودة في البلاطة الخرسانية. التحكم بتأثير الصقيع في البلاد الباردة</span> (Frost Action). <span dir=\"RTL\" lang=\"AR-SA\">تحسين تصريف مياه الأمطار. تقليل حدوث الانكماش</span> (Shrinkage) <span dir=\"RTL\" lang=\"AR-SA\">والانتفاخ</span> (Swell). <span dir=\"RTL\" lang=\"AR-SA\">تسريع عملية الإنشاء. ثالثاً : الرصفات المركبة</span> ( Composite Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">يحتوي هذا النوع من الرصفات على طبقات إسفلتية وخرسانية وتكون الطبقة الإسفلتية فوق البلاطة الخرسانية كطبقة إكساء</span> (Overlay) <span dir=\"RTL\" lang=\"AR-SA\">بغية إعادة تأهيل أو إصلاح الرصفة. تستخدم الرصفات المركبة عند إعادة الإنشاء لمقاومة الحمولات المرورية العالية في الطرق الاستراتيجية. عوامل التصميم</span> (Design Factors): <span dir=\"RTL\" lang=\"AR-SA\">أ&zwnj; &ndash; الحجوم والحمولات المرورية</span> (Traffic And Loading). <span dir=\"RTL\" lang=\"AR-SA\">ب&zwnj; &ndash; البيئة المحيطة</span> (Environment). <span dir=\"RTL\" lang=\"AR-SA\">ت&zwnj; &ndash; مواد الرصفة</span> (Pavement Materials). <span dir=\"RTL\" lang=\"AR-SA\">أ&zwnj;- الحجوم والحمولات المرورية</span> (Traffic And Loading). 1) <span dir=\"RTL\" lang=\"AR-SA\">تقدير الحمولات المحورية يتم باستخدام الحمل المحوري القياسي المساوي وهذا يستلزم معرفة أنواع وعدد المركبات المتوقع مرورها على الطريق خلال العمر التصميمي</span> (Design Period). 2) <span dir=\"RTL\" lang=\"AR-SA\">وعند تصميم رصفة الطريق يلزم معرفة مساحة منطقة التماس بين عجلات المركبة وسطح الرصفة</span> (Contact Area). 3) <span dir=\"RTL\" lang=\"AR-SA\">يقل تأثير حمولة المركبات على رصفة الطريق بازدياد السرعة ولذلك تزيد سماكة الرصفة في مواقف الشاحنات والتقاطعات. ب&zwnj;- البيئة المحيطة</span> (Environment). <span dir=\"RTL\" lang=\"AR-SA\">أهم العوامل البيئية التي تؤثر على تصميم الرصفات: 1) تغير درجات الحرارة الذي يسبب حصول التشققات. 2) وزيادة معدل هطول المطر وتراكم الثلوج ترفع نسبة الرطوبة في طبقات الرصفة السفلية وتعمل على ارتفاع مستوى المياه الجوفية التي يجب أن تبقى على عمق 90سم على الأقل من سطح الرصفة. ت&zwnj;- مواد الرصفة</span> (Pavement Materials). <span dir=\"RTL\" lang=\"AR-SA\">يجب توفر الخصائص التالية في المواد المكونة لطبقات الرصفة المرنة: 1) يجب أن تتحمل الخلطات الإسفلتية التغير في درجات الحرارة. 2) تناسب مواد الرصفة مع متطلبات التصميم مثلاً تكون مقاومة للتشققات التمساحية أو تكون الطبقات السفلية للرصفة تقاوم التشوه الثابت</span> (Permanent Deformation) <span dir=\"RTL\" lang=\"AR-SA\">الناتج عن زيادة الحمولات المحورية</span>.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: right; line-height: normal;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">رصف الطرق أصبح إحدى دعائم الدول الحديثة، وهو نتاج لمجهودات العلم الحديث، وما أفرزه من تطوُّرات ساهمت في تحقيق الرفاهية للإنسان في شتَّى ميادين الحياة، وفي حالة العودة إلى الوراء لقرن من الزمن أو أكثر فسوف نجد عالمًا من دون طُرُق مُمهَّدة، وكان ذلك الأمر أشبه بعائق لعديد من الجوانب، وخصوصًا في ظل اكتشاف وسائل النقل السريعة المتمثلة في السيارات، والدَّرَّاجات البخارية، ولا يمكن لتلك الوسائل أن تسير بالأريحية المطلوبة دون وجود طريق يسهُل السير عليه، ومن الممكن أن نقول إن ظهور صناعة رصف الطرق ارتبط ارتباطًا وثيقًا بتطوُّر وسائل النقل، وسوف نتعرَّف في هذا المقال على عديد من الأوجه التي تدور حول رصف الطرق الاحساء مع أفضل شركة لرصف الطرق شركة العالمية المحدودة؛ وذلك من خلال الإجابة عن بعض الأسئلة المهمة. ما أهمية <strong>رصف الطرق</strong>؟ يوجد عديد من العناصر فيما يتعلَّق بأهمية <strong>رصف الطرق</strong>، أو <strong>سفلتة الطرق</strong>، وسوف نوضحها كما يلي: &middot; بالنسبة للاقتصاد القومي: تلعب عملية <strong>رصف الطرق بالاحساء</strong> دورًا كبيرًا على مستوى الاقتصاد القومي، حيث إن رصف الطرق أحد المعايير التي يطلبها المستثمرون في حالة الرغبة في إقامة مشروعات في إحدى الدول، ومن هذا المنطلق فإن الفُرص الاستثمارية لا تتأتَّى لأي دولة من دون شبكة طُرُق مُنظَّمة، ولا شك أن سفلتة الطرق تُؤدِّي إلى خفض تكلفة عوامل الإنتاج بما يعود بالنفع على الاقتصاد؛ من خلال تقديم منتجات منخفضة السعر، ويساعد ذلك أيضًا في زيادة مُعدَّلات التصدير الخارجي. &middot; التوسع في رقعة الأراضي الزراعية: تُساهم عملية رصف الطرق في توجيه الطاقات البشرية نحو استصلاح الأراضي الزراعية، حيث إن رصف الطرق يُسهِّل من عملية الانتقال لتلك المناطق، ونقل الأجهزة والمُعدَّات والمواد التي تلزم عملية الاستصلاح، كما أن وجود طُرُق مُمهَّدة يُساعد أيضًا في نقل منتجات الأراضي الزراعية وتسويقها فيما بعد، سواء بالداخل أو الخارج. &middot; بالنسبة لحركة المرور: تُعَدُّ سفلتة الطرق أحد الأمور التي تحتاج إليها الدولة العصرية، وخصوصًا في ظل وجود مئات الآلاف من السيارات في الدولة الواحدة، لذا وجب على تلك الدول سفلتة الطرق؛ لتحقيق السيولة المرورية وعدم تعطيل وسائل النقل، ومن ثَمَّ يقوم رجال المرور بدورهم في تنظيم تلك العملية، ويُعَدُّ ذلك من عناصر أهمية <strong>رصف الطرق</strong>. <br />&middot; ظهور الصناعات ذات الصلة: يُؤدِّي التوسع في رصف الطرق إلى تدشين كثير من الصناعات المرتبطة بذلك، ويتمثَّل ذلك في شركات المقاولات، وكذلك الشركات التي تقوم بتصنيع إشارات المرور، وأعمدة الإنارة، والحواجز الخرسانية، واللوحات الاسترشادية، بما يُؤدِّي إلى إيجاد فُرص عمل للمواطنين، وخفض نسبة البطالة. &middot; بالنسبة للمحافظة على وسائل النقل: وسائل النقل المُتمثِّلة في السيارات والحافلات والدَّرَّاجات تلزمها طُرُق مستوية قدر الإمكان؛ من أجل المحافظة عليها، وعدم تعرُّضها لأي سلبيات، وذلك الأمر من بين أوجه أهمية رصف الطرق. &middot; إنشاء المدن الحضرية: تتمثَّل أهمية رصف الطرق في تحقيق عامل الجذب السكاني لأي مدينة جديدة، فمن دون رصف الطرق لن يكون هناك مجتمع عمراني يستطيع أن يقطن منطقة معينة، حيث إن سفلتة الطرق تُسهِّل على المواطنين التَّوجُّه إلى أعمالهم أو جامعاتهم، والعودة دون أي مشاكل، أو إهدار للوقت. ما أنواع <strong>رصف الطرق</strong>؟ يوجد عديد من أنواع رصف الطرق، وسوف نوضحها كما يلي: &middot; الرصف الأسمنتي أو المرن: وهو النوع الأكثر شيوعًا من أنواع <strong>رصف الطرق</strong>، وتُستخدم تلك الطريقة في حالة قُدرة التُّربة على التحمُّل، حيث يتم عمل ثلاث طبقات؛ الأولى تُعرف بطبقة ما تحت الأساس، والثانية طبقة الأساس، وهي عبارة عن مواد قادرة على التحمُّل، والعلوية عبارة عن طبقة الأسفلت، وفي الغالب طبقة الأساس تكون متناسبة مع سُمك طبقة الأسفلت. &middot; الرصف الخرساني أو الصلب: وذلك النوع من أنواع <strong>رصف الطرق </strong>يعتمد على إنشاء فرشة خرسانية سميكة يتم وضعها فوق التُّربة بشكل مباشر، أو بعد طبقة بسيطة من الحصى الصغير، وتُستخدم تلك الطريقة في رصف الطرق بالدول التي تتَّسم بدرجات الحرارة المنخفضة، مثل كندا، وروسيا، وشمال أوروبا، حيث تعمل الطبقة الأسمنتية كفاصل عازل، وقد يُستخدم حديد التسليح أو لا، وذلك على حسب نوعية الناقلات والأحمال التي تمرُّ عبر الطريق. &middot; الرصف المُركَّب: وفي ذلك النوع من أنواع <strong>رصف الطرق </strong>تُستخدم الطريقتين سالفتي الذكر، حيث يتم استخدام طبقات من الأسمنت والخرسانة المُسلَّحة في الوقت نفسه، وبعد ذلك تتم كسوة تلك الطبقات بطبقة الأسفلت، وبذلك الأسلوب يُصبح الطريق أكثر قُدرة على تحمُّل الناقلات الكبيرة؛ نظرًا لسماكة طبقات الأساس. ما طريقة الحصول على الأسفلت؟ <br />&middot; يُعَدُّ الأسفلت أحد نواتج البترول، ويتم الحصول عليه كمرحلة من مراحل تكرير البترول (التقطير)، والتي تبدأ بتسخين البترول الخام، ومن ثم تتطاير المواد الأقل وزنًا وكثافة، وفي تلك المرحلة يتم الحصول على الغازات مثل البيوتان (الغاز الطبيعي)، وبعد ذلك البنزين، والسولار، وآخر مُركَّب كيميائي يتم الحصول عليه هو الأسفلت، فهو الأكبر كثافة فيما بين مكونات النفط.<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&middot; من الممكن أن يُوجد مُركَّب الأسفلت الذي يُستخدم في <strong>رصف الطرق </strong>بصورة طبيعية ومن دون أي مواد بترولية مُختلطة به، ومن أمثلة ذلك بحيرة تُوجد في البحر الكاريبي، وبالتحديد بجزيرة ترينداد، وتُعرف باسم (بحيرة القار)، ويوجد بها طبقة تُغطِّي مساحة قاع البحيرة من مادة الأسفلت، وكذلك هناك (بحيرة غوانكو) في أمريكا اللاتينية، وبالتحديد في دولة فنزويلا، ويوجد بقاع تلك البحيرة طبقة من الأسفلت تُغطِّي مساحة أربعمائة هكتار، وكذلك هناك نوع من الأسفلت على درجة مرتفعة من الصلابة، ويعرف باسم (غلسوانيت)، ويوجد بولايتي كولورادو ويوتا بأمريكا.<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&middot; الأسفلت مركب أسود اللون ويُستخدم في رصف الطرق، وكذلك في صناعة أحبار الطباعة، وفي صناعة المواد العازلة التي تُستخدم في عزل دورات المياه والمطابخ والمسابح، بالإضافة إلى صناعة الورنيش الذي يُستخدم في تلميع الأحذية&hellip; إلخ. ما الصفات التي جعلت من الأسفلت مادة مثالية في رصف الطرق؟ &middot; يتميَّز الأسفلت بإمكانية تحويله إلى سائل؛ من خلال درجات الحرارة المرتفعة، وبعد الانتهاء من عملية <strong>رصف الطرق </strong>يعود مرَّة أخرى صلبًا ومتماسكًا نتيجة انخفاض الحرارة. &middot; تستمر مادة الأسفلت التي تُستخدم في رصف الطرق لفترات زمنية طويلة تصل إلى عشرات السنوات دون حدوث أي سلبيات. &middot; الأسفلت مادة عازلة، لذا فإنه في حالة سقوط الأمطار بغزارة، أو في حالة وجود أعاصير، فإنه يُعَدُّ بمثابة طبقة حامية لما قد يوجد أسفله من أنابيب صرف وغاز وطبيعي&hellip; إلخ. ما مراحل رصف الطرق؟ &middot; المرحلة الأولى: دراسة نوعية الطريق: وهي أهم مراحل رصف الطرق، حيث ينطوي عليها الاستمرار قُدُمًا في <strong>رصف الطرق</strong> بالأسفلت أو استخدام طريقة أخرى للتمهيد، وفي تلك المرحلة تتم دراسة نوعية الطريق المُراد رصفه وطبيعة التُّربة المكونة له، سواء صخرية أو رملية&hellip; إلخ، حيث يتم عمل مجسَّات للتعرف على مدى تحمُّل سطح الطريق الخارجي لطبقة الأسفلت، والهدف من ذلك هو عدم حدوث هبوط في طبقة الأسفلت على المدى المتوسط والطويل. &middot; المرحلة الثانية: إنشاء طبقة الأساس: وطبقة الأساس عبارة عن حصوات صغيرة تتم تسويتها على سطح الطرق كطبقة أوَّلية، ومن المهم أن تكون الحصوات ذات أحجام مُتساوية قدر الإمكان وجافَّة؛ حتى لا توجد فجوات عند تسويتها، ولطبقة الأساس أهمية كبيرة في منع وجود تفاوت في درجات الحرارة فيما بين طبقة الأسفلت العلوية وطبقات الأرض الداخلية، وخصوصًا في البلدان ذات الحرارة المنخفضة جدًّا، وتُسهِّل طبقة الأساس من تسوية الطبقة التي تليها، والتي تتمثَّل في الأسفلت، كما أنها تُساعد في تصريف المياه بأسلوب سلس. &middot; المرحلة الثالثة: تسوية الطريق: وتتم تسوية الطريق؛ من خلال مرور الآلات أو السيارات ذات المكابس، مع مُراعاة أنه في حالة وجود طريق دائري أو ينحرف قليلًا من حيث الارتفاع، أن تتم التسوية من أعلى لأسفل؛ حتى لا يُؤثِّر في حدوث مشاكل أثناء سير السيارات والحافلات بسُرعة. &middot;</span><span style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\"><br /><span dir=\"RTL\" lang=\"AR-SA\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>المرحلة الرابعة: <strong>سفلتة الطرق</strong>: وهي آخر مرحلة من مراحل <strong>رصف الطرق</strong>، حيث تتم إضافة مادة القار (مركب الأسفلت) في درجة حرارة عالية حتى تسهُل تسويته، بعد ذلك يُترك الطريق لمدة يومين أو ثلاثة أيام على الأقل قبل الاستخدام حتى تأخذ طبقة الأسفلت وقتها كي تبرد. شركة <strong>رصف طرق </strong>مع تزايد أهمية شبكات الطرق وتكلفتها العالية استوجب تطوير عدة أساليب لتصميم <strong>رصفات الطرق </strong>أخذه بالاعتبار سلوك التربة تحت تاثير ومواد الرصف الأحمال الكبيره والتأثيرات المناخية والبيئية المختلفه الطّرق حتى تكون جاهز للنقل يجب أن تكون خاضعة لعملية رصف جيدة، و تتم عملية <strong>رصف الطّرق </strong>بعدة خطوات و عدة مواصفات، و لرصف الطّريق أولا يجب أن يكون هناك دراسة واضحة للطريق يعني من حيث المساحة و الإتجاه و طبيعة الأتربة، و طبيعة الطريق . يبدأ رصف الطّريق بجرف الأتربة و عمل طريق واضح المعالم ثم يتم غربلتها من الحجارة الكبيرة و أحيانا تتم بواسطة الكسارات الضخمة المتحركة التي تعمل على رص الحجارة جيدا أي تقوم بتمهيد الطريق و رص الحجارة جيدا هي للعمل على زيادة قوة التماسك و سد الفراغات حتى يصبح الطريق يتحمل قوة الشاحنات الثقيلة التي تمر عليها و<strong> لرصف الطّريق </strong>أيضاً، يجب معرفة هل الطّريق الذي سنقوم برصفه من حيث طبيعة الأتربة التي ستكون هي طبقة الأساس هل ستكون قوية التّحمل و هل ستتعرض للإنهيار عندما تهطل الأمطار، فبعض الطّرق عندما تتشبع بمياه الأمطار تعمل على تجويف في الطّريق من الصّعب على وسائل النّقل أن تسير بسهولة .لذلك مهندس الطّريق عندما يبدأ أول خطوة في رصف الطّريق يعمل على دراسة التّراب جيداً و بعدها يضع طبقة الأساس و هذه الطبقة تكون من الحجارة الصّغيرة و هي الحصوة التي تدخل في صناعة الطّوب، و هذه الحصوة يجب أن تكون خالية من أي تراب يذوب في الماء حتى لا يعمل على ترك فراغات بين الحجارة لأنها يجب أن تكون كذلك نظيفة خالية من أي أوساخ لأنه يأخذ بعين الإعتبار كم مدة من الوقت ستخدم كطبقة أساس نظيفة خالية من مواد تجعلها طبقة أساس ضعيفة أنواع الرصفات: هناك ثلاثة أنواع رئيسية للرصفات: أ&zwnj;- الإسفلتية أو المرنة</span> ( Flexible Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">ب&zwnj;- الخرسانية أو الصلدة</span> ( Rigid Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">ت&zwnj;- المركبة أو المختلطة</span> ( Composite Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">أولاً : الرصفات الإسفلتية أو المرنة</span> ( Flexible Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">يوجد ثلاثة أساليب لإنشاء هذا النوع من الرصفات</span> : I. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية التقليدية</span> ( Conventional Flexible Pavement ). Ii. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية</span> ( Full-Depth Asphalt Pavement ). Iii. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية الحاضنة</span> ( Contained Rock Asphalt Mats-CRAM ). I. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية التقليدية</span> ( Conventional Flexible Pavement ). <span dir=\"RTL\" lang=\"AR-SA\">تتكون من ثلاث طبقات رئيسية الطبقة السطحية</span> (Surface Course) <span dir=\"RTL\" lang=\"AR-SA\">تليها طبقة الأساس</span> (Base Course) <span dir=\"RTL\" lang=\"AR-SA\">ثم طبقة ما تحت الأساس</span> (Subbase Course ). <span dir=\"RTL\" lang=\"AR-SA\">الطبقة السطحية تكون من أفضل نوعية مواد من حيث القدرة على التحمل. ينتقل تأثير الحمولات المرورية من خلال هذه الطبقات إلى التربة الطبيعية التي يفترض أن تكون قدرتها على التحمل عالية نسبياً حيث يتم دمكها بشكل جيد</span> (Compacted Subgrade) <span dir=\"RTL\" lang=\"AR-SA\">لتحسين مواصفاتها</span>. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية</span> ( Full-Depth Asphalt Pavement ). <span dir=\"RTL\" lang=\"AR-SA\">تتكون الرصفة من طبقة أو أكثر من الخلطات الإسفلتية الساخنة</span> (Hot Mix Asphalt) <span dir=\"RTL\" lang=\"AR-SA\">ويتم إنشاؤها مباشرة فوق التربة الطبيعية أو المحسنة</span> (Improved Subgrade). <span dir=\"RTL\" lang=\"AR-SA\">تعتبر من أفضل الرصفات قدرة على تحمل الشاحنات الثقيلة. لا يوجد فيها طبقات تحتجز المياه لمدة طويلة. المدة الزمنية اللازمة لإنشائها أقل من الرصفات المرنة التقليدية. لا تتأثر بالرطوبة أو الصقيع. هناك تجانس بين مختلف طبقات الرصف</span>. Iii. <span dir=\"RTL\" lang=\"AR-SA\">الرصفات الإسفلتية الحاضنة</span> ( Contained Rock Asphalt Mats-CRAM ). <span dir=\"RTL\" lang=\"AR-SA\">تتكون من أربع طبقات العليا والسفلى من الخلطات الإسفلتية الساخنة والثانية والثالثة من مواد حصوية. هذا الأسلوب الإنشائي ميزته أن الطبقة الإسفلتية السفلى تساهم بشكل ملحوظ في تقليل تأثير الإجهاد الرأسي على التربة والذي يسبب هبوط التربة. ومن مميزاتها ما يلي : التحكم بتصريف مياه الأمطار بوجود الطبقة الحصوية العالية النفاذية. منع تلوث الحصمة بالأتربة القادمة من طبقة التربة الطبيعية. تقليل حدوث تشققات الكلل أو التمساحية</span> (Fatigue Cracking) <span dir=\"RTL\" lang=\"AR-SA\">التي تتكون في أسفل الطبقة الإسفلتية العليا باستخدام إسفلت قليل اللزوجة. ثانياً : الرصفات الخرسانية</span> ( Rigid Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">يتكون هذا النوع من بلاطة خرسانية</span> (Slab PCC) <span dir=\"RTL\" lang=\"AR-SA\">يتم إنشاؤها مباشرة على التربة الطبيعية أو يوضع تحتها طبقة أساس حصوية</span> (Base Course). <span dir=\"RTL\" lang=\"AR-SA\">تعتبر صلابة البلاطة الخرسانية العامل الأهم في التصميم أما العامل الأهم في تصميم الرصفات المرنة هو قدرة تحمل التربة الطبيعية. ينتشر هذا النوع من الرصفات في المناطق الباردة (أوروبا وروسيا وأمريكا الشمالية) حيث تقاوم الفواصل الموجودة بين بلاطات الرصفة التغيرات الحرارية الكبيرة بين الصيف والشتاء أو بين الليل والنهار. قد تكون هذه الرصفات مسلحة أو غير مسلحة وذلك حسب الحجوم المرورية ونسبة الشاحنات الثقيلة. أهمية عمل طبقة الأساس: التحكم بتسرب المياه الجوفية والأتربة من خلال الفواصل الموجودة في البلاطة الخرسانية. التحكم بتأثير الصقيع في البلاد الباردة</span> (Frost Action). <span dir=\"RTL\" lang=\"AR-SA\">تحسين تصريف مياه الأمطار. تقليل حدوث الانكماش</span> (Shrinkage) <span dir=\"RTL\" lang=\"AR-SA\">والانتفاخ</span> (Swell). <span dir=\"RTL\" lang=\"AR-SA\">تسريع عملية الإنشاء. ثالثاً : الرصفات المركبة</span> ( Composite Pavements ). <span dir=\"RTL\" lang=\"AR-SA\">يحتوي هذا النوع من الرصفات على طبقات إسفلتية وخرسانية وتكون الطبقة الإسفلتية فوق البلاطة الخرسانية كطبقة إكساء</span> (Overlay) <span dir=\"RTL\" lang=\"AR-SA\">بغية إعادة تأهيل أو إصلاح الرصفة. تستخدم الرصفات المركبة عند إعادة الإنشاء لمقاومة الحمولات المرورية العالية في الطرق الاستراتيجية. عوامل التصميم</span> (Design Factors): <span dir=\"RTL\" lang=\"AR-SA\">أ&zwnj; &ndash; الحجوم والحمولات المرورية</span> (Traffic And Loading). <span dir=\"RTL\" lang=\"AR-SA\">ب&zwnj; &ndash; البيئة المحيطة</span> (Environment). <span dir=\"RTL\" lang=\"AR-SA\">ت&zwnj; &ndash; مواد الرصفة</span> (Pavement Materials). <span dir=\"RTL\" lang=\"AR-SA\">أ&zwnj;- الحجوم والحمولات المرورية</span> (Traffic And Loading). 1) <span dir=\"RTL\" lang=\"AR-SA\">تقدير الحمولات المحورية يتم باستخدام الحمل المحوري القياسي المساوي وهذا يستلزم معرفة أنواع وعدد المركبات المتوقع مرورها على الطريق خلال العمر التصميمي</span> (Design Period). 2) <span dir=\"RTL\" lang=\"AR-SA\">وعند تصميم رصفة الطريق يلزم معرفة مساحة منطقة التماس بين عجلات المركبة وسطح الرصفة</span> (Contact Area). 3) <span dir=\"RTL\" lang=\"AR-SA\">يقل تأثير حمولة المركبات على رصفة الطريق بازدياد السرعة ولذلك تزيد سماكة الرصفة في مواقف الشاحنات والتقاطعات. ب&zwnj;- البيئة المحيطة</span> (Environment). <span dir=\"RTL\" lang=\"AR-SA\">أهم العوامل البيئية التي تؤثر على تصميم الرصفات: 1) تغير درجات الحرارة الذي يسبب حصول التشققات. 2) وزيادة معدل هطول المطر وتراكم الثلوج ترفع نسبة الرطوبة في طبقات الرصفة السفلية وتعمل على ارتفاع مستوى المياه الجوفية التي يجب أن تبقى على عمق 90سم على الأقل من سطح الرصفة. ت&zwnj;- مواد الرصفة</span> (Pavement Materials). <span dir=\"RTL\" lang=\"AR-SA\">يجب توفر الخصائص التالية في المواد المكونة لطبقات الرصفة المرنة: 1) يجب أن تتحمل الخلطات الإسفلتية التغير في درجات الحرارة. 2) تناسب مواد الرصفة مع متطلبات التصميم مثلاً تكون مقاومة للتشققات التمساحية أو تكون الطبقات السفلية للرصفة تقاوم التشوه الثابت</span> (Permanent Deformation) <span dir=\"RTL\" lang=\"AR-SA\">الناتج عن زيادة الحمولات المحورية</span>.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">&nbsp;</p>', '<p>sadsadsad</p>', 0, 2, 0, '0000-00-00 00:00:00', '2024-02-15 13:32:57');
INSERT INTO `paragraphs` (`id`, `Paragraph`, `Ar_paragraph`, `nav_id`, `box_id`, `relatedtopic_id`, `created_at`, `updated_at`) VALUES
(3, '<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: right; line-height: normal;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">مقاول اسفلت الاحساء </span></strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">من أفضل الشركات وأشهرها في هذا المجال وقد أدت أفضل الخدمات في أعمال <strong>الإسفلت</strong> مما جعل لهذه الشركة أسما عاليا في سماء هذا المجال وقد حققا نجاحا باهرا في تطبيق كل ما هو جديد في أعمال الإسفلت لتترك بصمة واضحة لهذا المجال يكسب الكثير من العملاء الثقة لهذه الشركة.<br /><br /><strong>مقاول اسفلت الاحساء </strong>ما العوامل التي أسندت عليها <strong>مقاول اسفلت الاحساء</strong> في هذا النجاح والتقدم؟ من أهم عوامل النجاح هي المصداقية في العمل والدقة في كل خطوة لتكون على أجمل وجه. <strong>مقاول اسفلت الاحساء </strong>اختارت أفضل المهندسين والفنيين وغيرهم الذين لديهم الخبرة الكبيرة من كثرة القيام بأعمال <strong>الإسفلت</strong>. <strong>مقاول اسفلت الاحساء</strong> تمتلك الآن أفضل المعدات والأجهزة التي تساعد بقدر كبير في تسهيل العمل وإنجازه بشكل سريع.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span><strong>مقاول اسفلت الاحساء </strong>تعتمد على أفضل المواد المصرح بها والتي لا تتأثر بمناخ أو تتشقق وتسبب في تكسير الطريق مرة أخرى. <br /><br /><strong>مقاول اسفلت الاحساء </strong>لديها القدرة على <strong>رصف أطول الطرق</strong> وبالمدة المحددة لها.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span><strong>مقاول اسفلت الاحساء </strong>تقدم أفضل الأسعار وأقلها من كل المنافسين بسوق العمل كله مع العروض الكبيرة التي تقدمها. يتم عمل <strong>الإسفلت</strong> في الطرق والمصانع والوجهات والاستراحات والمزارع والنوادي الرياضية والمصانع ومحطات الوقود ومواقف السيارات وأمام المنازل والفلل والبيوت. <br /><br />الشركة تقدم ضمان كامل لعدة أعوام لطول العمر الافتراضي للإسفلت لتتأكد من أننا شركة موثوق بها ما هي أنواع الإسفلت التي يستخدمها <strong>مقاول اسفلت الاحساء</strong> ؟ وما العوامل المؤثرة على اختيار طرق رصف الطريق؟ الإسفلت الصلب: له أربعة أنواع ولكنه يتم اختيار إحداهما على حسب الظروف المناخية لهذا المكان أو على حسب درجة الحرارة. الإسفلت السائل: يوجد منه ثلاث أنواع (سريع التطاير ومتوسط وبطيء التطاير)، كما ولكنه يتم اختياره على حسب الرطوبة في هذا المكان.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>هناك الكثير من العوامل التي تؤثر على اختيار <strong>رصف الطرق</strong>: درجة حرارة المكان والرطوبة. الأحمال التي يمكن للطريق تحملها من سيارات عادية أو سيارات الحمل الثقيل. واتجاه الأتربة. مساحة الطريق. واتجاه الطريق مزدوج أو فردي. تواجد الأمطار. نوع الطريق من حيث طرق سريعة أو طرق زراعية أو صحراوية وغيرها. ما هي أنواع <strong>رصف الطرق </strong>التي يقدمها <strong>مقاول اسفلت الاحساء</strong>؟ وما هي المواصفات الجيدة للمواد الأسفلتية؟ رصف الطريق المرن: وهذا النوع يكون عن طريق الإسفلت وهذه الطريقة شائعة ورخيصة الثمن.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>رصف الطرق الصلب: هذه الطريقة قوية جدا ولكنها مكلف للغاية لأنها تكون عن طريق عمل خرسانة المسلحة أو العادية. <br /><br />المواصفات الجيدة للمادة الإسفلتية: مرنة عند وضعها لتنفرد بسهولة. تتحمل درجات الحرارة والرطوبة العالية. تتحمل أثقل الأوزان. لا تحتوي على أي قدر من الماء عند وضعها على الطريق. خطوات عمل الإسفلت مع <strong>مقاول اسفلت الاحساء</strong>: مقاول اسفلت بعنيزةمقاول اسفلت الاحساء يتم تحديد ارتفاع الحفر والردم . يتم تحديد المواد المستخدمة <strong>للإسفلت والطبقات</strong> .<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>يتم عملية الحفر والردم، ويكون الردم بالحصى والصخر والطمي. يتم دراسة نوع التراب وطبيعته. يتم عمل أساس بالصحى والرمل أيضا ولكن تكون في الطرق السريعة فقط وهذه الطبقة يجب أن تكون خالية من التراب حتى لا يذوب عند اختلاطه بالماء عند الأمطار وتكون نظيفة تماما. يتم مرور سيارة رصف الطريق حتى يتم رص الحصى بجانب بعضه لبعض. يتم خلط الإسفلت بمادة الكيروسين والتي تكون بمثابة قاعدة ويتم تركها حوالي ساعة.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>يتم وضع طبقة أخرى أكثر كأساس من <strong>الإسفلت </strong>ولكنها تكون أكثر خشونة.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>خلط البيتومين والجازولين ووضعها على الطبقة السابقة. يتم وضع الطبقة الأخيرة الخارجية وتتكون من البيتومين مع بعض الأحجار ومادة الزفت وتكون في درجة حرارة أعلى من 100 درجة مئوية ولكنها تكون ناعمة ويتم اختيار سمكها على حسب نوع هذا الطريق إذا كان هذا الطريق يسير عليه السيارات الثقيلة يزيد سمك الطريق لتحمله هذه الأوزان. يترك الطبقة الخارجية على أقل لمدة 48 ساعة حتى تصير صلبة<br /><br /></span><span style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: right; line-height: normal;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">مقاول اسفلت الاحساء </span></strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">من أفضل الشركات وأشهرها في هذا المجال وقد أدت أفضل الخدمات في أعمال <strong>الإسفلت</strong> مما جعل لهذه الشركة أسما عاليا في سماء هذا المجال وقد حققا نجاحا باهرا في تطبيق كل ما هو جديد في أعمال <strong>الإسفلت</strong> لتترك بصمة واضحة لهذا المجال يكسب الكثير من العملاء الثقة لهذه الشركة.<br /><br /><br /><strong>مقاول اسفلت الاحساء </strong>ما العوامل التي أسندت عليها <strong>مقاول اسفلت الاحساء</strong> في هذا النجاح والتقدم؟ من أهم عوامل النجاح هي المصداقية في العمل والدقة في كل خطوة لتكون على أجمل وجه. <br /><br /><strong>مقاول اسفلت الاحساء </strong>اختارت أفضل المهندسين والفنيين وغيرهم الذين لديهم الخبرة الكبيرة من كثرة القيام بأعمال الإسفلت.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span><strong>مقاول اسفلت الاحساء </strong>تمتلك الآن أفضل المعدات والأجهزة التي تساعد بقدر كبير في تسهيل العمل وإنجازه بشكل سريع. <strong>مقاول اسفلت الاحساء </strong>تعتمد على أفضل المواد المصرح بها والتي لا تتأثر بمناخ أو تتشقق وتسبب في تكسير الطريق مرة أخرى. <strong>مقاول اسفلت الاحساء </strong>لديها القدرة على رصف أطول الطرق وبالمدة المحددة لها.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span><strong>مقاول اسفلت الاحساء </strong>تقدم أفضل الأسعار وأقلها من كل المنافسين بسوق العمل كله مع العروض الكبيرة التي تقدمها. يتم عمل <strong>الإسفلت </strong>في الطرق والمصانع والوجهات والاستراحات والمزارع والنوادي الرياضية والمصانع ومحطات الوقود ومواقف السيارات وأمام المنازل والفلل والبيوت. الشركة تقدم ضمان كامل لعدة أعوام لطول العمر الافتراضي للإسفلت لتتأكد من أننا شركة موثوق بها ما هي أنواع الإسفلت التي يستخدمها <strong>مقاول اسفلت الاحساء</strong> ؟ وما العوامل المؤثرة على اختيار طرق <strong>رصف الطريق</strong>؟ الإسفلت الصلب: له أربعة أنواع ولكنه يتم اختيار إحداهما على حسب الظروف المناخية لهذا المكان أو على حسب درجة الحرارة. الإسفلت السائل: يوجد منه ثلاث أنواع (سريع التطاير ومتوسط وبطيء التطاير)، كما ولكنه يتم اختياره على حسب الرطوبة في هذا المكان. هناك الكثير من العوامل التي تؤثر على اختيار <strong>رصف الطرق</strong>: درجة حرارة المكان والرطوبة. الأحمال التي يمكن للطريق تحملها من سيارات عادية أو سيارات الحمل الثقيل. واتجاه الأتربة. مساحة الطريق. واتجاه الطريق مزدوج أو فردي. تواجد الأمطار.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>نوع الطريق من حيث طرق سريعة أو طرق زراعية أو صحراوية وغيرها. ما هي أنواع <strong>رصف الطرق</strong> التي يقدمها <strong>مقاول اسفلت الاحساء</strong>؟ وما هي المواصفات الجيدة للمواد الأسفلتية؟ رصف الطريق المرن: وهذا النوع يكون عن طريق الإسفلت وهذه الطريقة شائعة ورخيصة الثمن. رصف الطرق الصلب: هذه الطريقة قوية جدا ولكنها مكلف للغاية لأنها تكون عن طريق عمل خرسانة المسلحة أو العادية. المواصفات الجيدة للمادة الإسفلتية: مرنة عند وضعها لتنفرد بسهولة. تتحمل درجات الحرارة والرطوبة العالية. تتحمل أثقل الأوزان. لا تحتوي على أي قدر من الماء عند وضعها على الطريق. خطوات عمل <strong>الإسفلت </strong>مع <strong>مقاول اسفلت الاحساء</strong>: <strong>مقاول اسفلت الاحساء </strong>يتم تحديد ارتفاع الحفر والردم .<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>يتم تحديد المواد المستخدمة للإسفلت والطبقات . يتم عملية الحفر والردم، ويكون الردم بالحصى والصخر والطمي. يتم دراسة نوع التراب وطبيعته. يتم عمل أساس بالصحى والرمل أيضا ولكن تكون في الطرق السريعة فقط وهذه الطبقة يجب أن تكون خالية من التراب حتى لا يذوب عند اختلاطه بالماء عند الأمطار وتكون نظيفة تماما. يتم مرور سيارة رصف الطريق حتى يتم رص الحصى بجانب بعضه لبعض.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>يتم خلط الإسفلت بمادة الكيروسين والتي تكون بمثابة قاعدة ويتم تركها حوالي ساعة. يتم وضع طبقة أخرى أكثر كأساس من الإسفلت ولكنها تكون أكثر خشونة. خلط البيتومين والجازولين ووضعها على الطبقة السابقة. يتم وضع الطبقة الأخيرة الخارجية وتتكون من البيتومين مع بعض الأحجار ومادة الزفت وتكون في درجة حرارة أعلى من 100 درجة مئوية ولكنها تكون ناعمة ويتم اختيار سمكها على حسب نوع هذا الطريق إذا كان هذا الطريق يسير عليه السيارات الثقيلة يزيد سمك الطريق لتحمله هذه الأوزان. يترك الطبقة الخارجية على أقل لمدة 48 ساعة حتى تصير صلبة</span><span style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">&nbsp;</p>', '<p>sadasdsad</p>', 0, 3, 0, '0000-00-00 00:00:00', '2024-02-15 13:38:19'),
(4, '<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: right; line-height: normal;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">مقاول اسفلت الاحساء</span></strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\"> &ndash; خدمة بارزة من خدمات شركة <strong>رصف طرق </strong>التي تساعد المختصين بدورها في <strong>تمهيد الطرق </strong>وصيانتها لجعلها أكثر أمانا حرصا على السلامة العامة وتحسين قدرة الطرق وهو ما يساهم فيه أيضا افضل <strong>مقاول اسفلت الاحساء</strong> الذي توفره التي تقدم خدماتها في اعمال <strong>ازفلت الاحساء</strong> بالتعاون مع افضل مهندسين الطرق <strong>ومقاولين الاسفلت الاحساء</strong> وكذلك تضم بين أفرادها معلم <strong>اسفلت</strong> ممتاز وتستخدم الخامات فائقة الجودة لتكوين خلطات <strong>أسفلت</strong> تتحمل أعلى الأوزان وتغيرات المناخ وتعمل بكفاءة عالية لأطول فترة زمنية.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span><strong>أفضل مقاول اسفلت بالاحساء </strong>لعلاج<strong> اعوجاج الطرق </strong>ووجود المعوقات الحجرية والصخرية وحتى الشقوق والفجوات الناتجة عن تواتر الاستخدام والأوزان الكبيرة لحمولات السيارات مع عدم الاهتمام بأعمال الصيانة بجانب تأثير عوامل المناخ المختلفة يجعل استخدامها محفوف بالخطورة على الأنفس وعلى السيارات بل وحتى السير على الأقدام في <strong>الطرق</strong> الغير مستوية غير آمن أيضا وهو ما يجعل مهمة <strong>مقاول اسفلت بالاحساء </strong>على درجة كبيرة من الضرورة والأهمية كونه يساهم في تحسين <strong>الطرق</strong> وجعلها آمنة بتمهيدها وتنفيذ أعمال السفلتة الخاصة بها والتي تجعلها أفضل وأكثر أمنا وهو ما يعود بالإيجاب على سلامة الطرق وبالتالي سلامة الأنفس فإذا كنت بحاجة لتنفيذ <strong>اعمال ازفلت بالاحساء</strong> للشوارع أو مداخل الجراجات والشركات وواجهات المنازل والفلل والقصور الكبيرة يمكنك الاعتماد على افضل <strong>مقاول اسفلت بالاحساء</strong> وأنتم مطمئنون للنتيجة الممتازة للخدمة.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span><strong>شركة اسفلت بالاحساء </strong>واعتماد التجربة اليابانية في تخطيط و<strong>سفلتة الطرق </strong>نقدم لكم خدماتنا في اعمال <strong>اسفلت بالاحساء</strong> ونحن شركة كبرى متخصصة في تخطيط الطرق وتنفيذ اعمال اسفلت الطرق بالاحساء ونتبع الأنظمة القياسية المعمول بها في كبرى هيئات تخطيط الطرق العالمية ولدينا برامج عمل مشتركة مع أهم الشركات اليابانية المتخصصة في <strong>تمهيد الطرق </strong>وتخطيطها وتنفيذ أعمال <strong>الأسفلت</strong> واعتمادنا على الخبرات اليابانية يأتي لتفوقها وتميزها فيما يخص أعمال <strong>تخطيط وتنظيم وتمهيد الطرق</strong>، وإمكانيتنا كواحدة من أكبر شركات <strong>اسفلت بالاحساء</strong> تؤهلنا لتحسين أرضية أي طريق مهما كانت قساوته وتعدد مشكلاته بل نستطيع <strong>بناء الطرق </strong>من الصفر وقد تشرفنا بالمشاركة في العديد من أعمال مقاولات الطرق وإنشاء الجسور بالمملكة ولدينا سجل مشرف من سوابق الأعمال الخاصة بنا كأفضل شركة <strong>اسفلت بالاحساء</strong> وبجانب أعمال الأسفلت نقدم جميع خدمات الصيانة المنزلية بنفس مستوى الخدمة المتميز. <strong>اعمال اسفلت بالاحساء</strong> يتم تنفيذها تحت اشراف اكاديمي رفيع المستوى اعمال اسفلت الاحساء التي يتولى تنفيذها <strong>مقاول اسفلت الاحساء</strong>الذي نوفر لكم خدماته بشركتنا تتميز بدقة الخطوات واتباع برنامج عمل محكم. تقييم الطرق وتحديد نوعيتها ونوعية خلطات الاسفلت المناسبة لها يتم إرجاعه لنخبة من أستاذة هندسة الطرق الاكاديميين الممارسين.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>افضل مهندس <strong>اسفلت الاحساء</strong> يشرف على تكوين الخلطات الأسفلتية التي نستخدمها في اعمال اسفلت بالاحساء تحسين الخلطات المستخدمة في اعمال <strong>ازفلت الاحساء</strong> وتعلية قدراتها لتتحمل أقصى درجات الاستخدام لأطول فترة زمنية ممكنة.<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>بمجرد التعاقد مع <strong>مقاول اسفلت الاحساء</strong> لتنفيذ خدماته يتم عمل دراسة متكاملة للطريق لتحديد برنامج العمل والمواد الأسفلتية المناسبة. كما يتم تحديد المعدات الثقيلة التي تتناسب مع طبيعة الأعمال التي ستنفذ على الطريق. كافة الخطوات يتم تطبيقها على جميع المساحات التي يتم اختيار شركتنا لتمهيدها ورصفها وسفلتتها. <strong>مقاول ازفلت بالاحساء</strong> يعتمد على خبرات نخبة من مهندسين التخطيط العمراني وتمهيد الطرق شركتنا تتيح لكم التعاون مع افضل <strong>مقاول ازفلت بالاحساء </strong>والذي يعمل ضمن طاقم رفيع من المهندسين والاستشاريين المتخصصين بتخطيط الطرق وتمهيدها. يقوم <strong>مقاول ازفلت الاحساء </strong>بتنفيذ برنامج عمل محكم موضوع بأيادي اهم مهندسي الطرق بالمملكة.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>يتم باستمرار تحسين نوعية المواد الاسفلتية المستخدمة في اعمال <strong>ازفلت بالاحساء</strong> ويتم إدخال مكونات كيميائية من شأنها تعلية قدرة التركيبة وتزيد من تحملها. تحسين نوعية الاسفلت بإضافة مواد بوليمرية تم عمل دراسة على مدى قدرتها في تحسين نوعية <strong>الاسفلت</strong>. <br /><br />اثبتت الخلطات الاسفلتية المحسنة التي نعتمدها في شركتنا والتي يتم تطبيقها على الطريق من خلال افضل <strong>مقاول اسفلت بالاحساء </strong>نجاحها الكبير.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>مع اعتمادنا على أكبر المعدات وأحدثها وأهم المهندسين المتخصصين بالطرق وأجود خامات خلطات الاسفلت نوفر لكم فريق فني متميز بأعمال <strong>رصف الطرق </strong>وتحسينها. مقاول اسفلت بالاحساء الافضل لتسوية الطرق والواجهات وسفلتتها بأفضل تركيبات الاسفلت وبأقل سعر اسفلت-طرق-<strong>الاحساء</strong>-مقاول-اسفلت افضل تركيبة اسفلت مضادة للتشققات مقاومة للعوامل البيئية والمناخية كما سبق وأشرنا أننا في افضل شركة <strong>اسفلت الاحساء</strong> تقوم بتحسين نوعية الخامات المستخدمة في تكوين طبقة الاسفلت التي يتم استخدامها في <strong>رصف وسفلتة الطرق</strong> وهو أمر يتم بعد دراسة دقيقة من قبل المتخصصين من كبار الاستشاريين الهندسيين المتخصصين في أعمال الطرق و<strong>الأسفلت</strong> وكما أوضحنا أيضا أننا نسترشد بالتجربة اليابانية الفائقة واستعننا فعليا بأساتذة متخصصين قاموا باختبار قدرة مواد الاسفلت نستعين بها في شركتنا وتم ترقيتها بإضافة مواد بوليمرية وتركيبات كيميائية على جزيئات الاسفلت أدت لتقوية التركيبة وتم عمل اختبارات قياسية لها وأثبتت قدرتها وكفاءتها لاستخدامها على الطرق في بيئتنا وأنها تتحمل العمل لسنوات عديدة دون تلف او تشقق أو تأثر بأي عامل خارجي، وهو ما يجعل افضل <strong>مقاول اسفلت بالاحساء </strong>التابع لشركتنا هو خيارك الأمثل. مقاول اعمال اسفلت الاحساء وخدماته المتميزة مقاول اعمال اسفلت بالاحساء من شركتنا يتولى جميع مقاولات الاسفلت وتمهيد و<strong>رصف الطرق بالاحساء</strong>.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>يقوم بمساعدة معلم <strong>اسفلت الاحساء</strong> بصيانة الطريقة وصيانة الأسفلت القائم وإصلاح أي عيوب به وتحديث رصفه وتمهيده. يقوم افضل معلم <strong>اسفلت الاحساء</strong> مع فريق شركتنا من الهندسيين والفنيين ببناء جسور المشاة وتسوية الطرق.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>تركيب الحواجز الاسمنتية والسياج على جوانب الطرق وكذلك تركيب البنرات ولوحات الاعلانات.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>تسوية الطرق وسفلتة الواجهات المقابلة للشركات والقصور وكشط الترسبات الحجرية ودك الطرق وسفلتتها. تمتلك شركة <strong>ازفلت الاحساء </strong>أحدث المعدات والتي تسهل أعمال الاسفلت وتجعلها أفضل. معلم اسفلت الاحساء ودوره في ترتيب خطوات تركيب الاسفلت معلم اسفلت الاحساء ضمن فريق متكامل العناصر من الاستشاريين ومهندسين المواقع والفنيين الذي يقدمون خدماتهم تحت رعاية شركتنا. تأتي خطوة الكشط وتسوية الطريق كأول خطوات معلم <strong>اسفلت الاحساء</strong> لتنفيذ عملية الرصف والسفلتة. بعدها يتم دك الطريق للتأكد من تسويته وتمهيده استعدادا لوضع طبقات الازفلت. توضع خلطة الاسفلت على طبقات متتالية ويتم وضع كل طبقة وتغطيتها بالرمال مع رشها وانتظارها لتجف قبل وضع الطبقة التالية.<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>بعد وضع طبقات الازفلت يتم دكها بالمعدات الثقيلة المخصصة لهذا الأمر ويتم إخضاع الطريق المسفلت لتجارب بأوزان وحمولات عالية الثقل للتأكد من جودته. بعدها نعلن انتهاء عملية السفلتة ونضمن للعميل كفاءتها وعمرها الطويل كوننا نعتمد على أفضل خلطة <strong>اسفلت</strong>. حساب تكلفة الاسفلت &ndash; سعر متر الاسفلت في الاحساء اما عن حساب تكلفة الاسفلت وسعر متر <strong>الاسفلت في الاحساء</strong> وهو الاستفسار الأكثر شيوعا من عملائنا وكل من يريد خدمة الأسفلت فإننا وإن كنا نقدم مستوى خدمة يرتقي للعالمية فيما يخص أعمال الازفلت بمشتقاتها التي يتولاها افضل <strong>مقاول اسفلت الاحساء</strong> فإننا كذلك نقدم ارخص سعر متر <strong>الاسفلت بالاحساء</strong> ولا نبالغ في ذلك لأننا فعليا نعتمد على تقدير خدماتنا بأسعار التكلفة وهو ما يحدده حجم وسعة الطريق المراد سفلتته مع تحديد أنواع الخلطات المناسبة وعدد العمالة المشاركة وأيضا المعدات التي يستم استخدامها في عمليات التمهيد والسفلتة. افضل مقاول اسفلت في الاحساء خدماته متاحة للجميع إذا كنت تبحث عن افضل مقاول اسفلت في بالاحساء لتمهيد و<strong>سفلتة الطرق </strong>والواجهات أو أي من خدماته التي تم توضيحها من خلال هذا الموضوع تتيح لكم التعاون مع الأفضل من المهندسين والفنيين ومقاولين الأسفلت بالاحساء وتقدم لكم كافة إمكانياتها لتقديم الخدمة المثالية التي تتميز بها كمؤسسة خدمية رائدة وأرقامنا متاحة طوال الوقت وبمجرد اتصالك سيتم توجيهم لأفضل مهندس <strong>اسفلت الاحساء</strong> والذي سيتولى عملية الاسفلت والتي نسأل الله أن نوفق في تأديتها مع باقي خدماتنا بالشكل المرضي لعملائنا فلم نبخل في توفير المعدات والكوادر البشرية حتى نقدم لكم أفضل ما لدينا</span><span style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">&nbsp;</p>', '<p>sadsadsad</p>', 0, 4, 0, '0000-00-00 00:00:00', '2024-02-15 13:41:51'),
(5, '<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; text-align: right; line-height: normal;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">العوازل المائية و الحرارية</span></strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\"> أصبح إحدى دعائم الدول الحديثة، وهو نتاج لمجهودات العلم الحديث، وما أفرزه من تطوُّرات ساهمت في تحقيق الرفاهية للإنسان في شتَّى ميادين الحياة، وفي حالة العودة إلى الوراء لقرن من الزمن أو أكثر فسوف نجد عالمًا من دون طُرُق مُمهَّدة، وكان ذلك الأمر أشبه بعائق لعديد من الجوانب مع الإرتفاع المتزايد في درجات الحرارة يتزايد الإستهلاك العالمي من الطاقة و الوقود بشكل أسرع، لذلك كان من الضروري أن يتم إبتكار أشياء أو مواد تمنع تسرب الحرارة إلى داخل المنازل و كذلك منع تسرب البرودة إلى خارج المباني مع الحفاظ على درجات الحراراة المنخفضة داخل المباني بأقل إستهلاك للطاقة و الوقود، و إلى جانب عزل الحرارة يوجد أيضاً عزل للصوت حيث يهتم الكثيرين بضروروة الحفاظ على الخصوصية في المباني السكنية و كذلك في المستشفيات و المدارس لمنع تداخل الأصوات و من هنا ظهرت أهمية إستخدام عوازل للصوت عند بناء المباني، و سوف نتحدث في هذا الموضوع عن <strong>العوازل</strong> و أنواعها و كيف يتم إستخدامها ما هي <strong>العوازل</strong>؟ يطلق عليها أيضاً <strong>العوازل الجدارية</strong>، و تكون على هيئة ألواح يتم إستخدامها في مرحلة بناء المباني، و يتم صناعة هذه الألواح من مواد تمنع تسرب درجات الحرارة العالية من خارج المبنى إلى داخله في فصل الصيف و كذلك منع تسربها من الداخل إلى الخارج في الشتاء العزل الحراري يتم هذا العزل على الجدران و الأسطح الخاصة بالمباني أثناء عملية البناء . ويتم إستخدام مواد تمنع تسرب الحرارة إلى داخل المبنى. العزل الصوتي و يعتمد هذا النوع من العزل على منع إنتقال الموجات الصوتية من مكان لآخر. <strong>العزل المائي </strong>و يطلق عليه في بعض الأحيان العزل الرطوبي و يعد هذا العزل من أهم خطوات البناء لأنه يحافظ على سلامة المباني من الرطوبة و المياه الجوفيه التي تتواجد في الأرض التي يتم البناء عليها. <strong>العوازل الحرارية </strong>هي مواد ذات صفات معينة تمنع إنتقال الحرارة من داخل المبنى إلى خارجه أو العكس، و من الخواص التي يجب أن تتوفر في المواد العازلة و الت تؤثر على كفاءة المادة المستخدمة في العزل: القدرة على التوصيل الحراري. كثافة المادة المستخدمة في العزل. الحرارة النوعية. يتم إستخدام <strong>العوازل الحرارية</strong> بعدة طرق سنذكرها في إيجاز في حالة إستخدام البوليسترين في العزل يتم وضع ألواح منه يكون سمكها 10 سنتيمترات، و لكن يجب مراعاة أن يكون الجدار بسمك 30 سنتيمتراً في بعض الحالات يتم إستبدال البوليسترين بمادة الصوف الصخري بسمك 5 سنتيمترات و يتم وضع البلوكات العازلة بين جدارين بسمك 15 سنتيمتراً ليكون سمك الجدار بعد العزل 35 سنتيمتراً. يجب مراعاة سد الفواصل بين البلوكات حتى لا تتسرب الحرارة من هذه الفواصل.<br /><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>سكب الحبيبات و الألياف السائبة في الفراغات بين الخرسانة. سكب اللباد في الفراغات في الحوائط و الأسقف</span><span style=\"font-size: 15.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 0pt; mso-ligatures: none;\">.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">&nbsp;</p>', '<p>zXZXZX</p>', 0, 5, 0, '0000-00-00 00:00:00', '2024-02-15 13:42:50'),
(7, '<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\"><strong><em><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; color: black;\">هدم المبانى بالاحساء </span></em></strong><em><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 15.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; color: black;\">عزيزي العميل لقد استطاعت شركتنا عن تقوم بعمليه<strong> هدم المباني </strong>و هدم الشقق و المنازل والطرق حتى نستطيع ان نقوم بتجديد المنازل مره اخرى او يستطيع عميلنا العزيز القيام بالتخلص من المشكلات التي تتواجد في ذلك المبنى والقيام بانشاء مباني مميزه بتصميمات حديثا وافضل الخدمات من خلال شركات<strong> هدم المباني</strong> نقدمها لكم عن طريق افضل المقاولين <strong>شركات هدم المبانى بالاحساء</strong><br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل نوفر افضل وامهر وارخص<strong> مقاول هدم بالاحساء</strong> ؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل نوفر افضل الاوناش وكبسولات تفجير المباني ؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل نوفر كافة خدمات <strong>هدم المباني </strong>؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل خدمة <strong>هدم المباني </strong>تحتاج الي حذر شديد وخبرة <strong>؟ <br /><span style=\"mso-spacerun: yes;\">&nbsp;</span></strong>&bull; هل عمالنا يمتلكون السرعة و المهارة و الكفاءة و الدقة ؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل نوفر خدمة <strong>الهدم</strong> الكلي و<strong> الهدم </strong>الجزئي و<strong> الهدم </strong>الداخلي ؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل عمالنا يقومون بانجاز العميلية بسرعة ؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل نوفر مهندسيين و فنيين متخصصين فى عملية هدم المبانى ؟ <br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل يصل عمال<strong> شركة الاحساء </strong>في اسرع وقت ممكن ؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل اسعار شركتنا شركة مقاول هدم تعد اسعار خيالية ؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل نقوم بازالة مخلفات<strong> الهدم </strong>بعد الانتهاء من المهمه ؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; هل نقوم بهدم اي مبني بمساحات مختلفة ؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span><strong>شركات هدم المبانى بالاحساء</strong> مقاول <strong>هدم الاحساء </strong>الذين يستطيعون ان يؤدون تلك المهام وان يؤدون ايضا عمليه ازاله الحوائط الخاصة بالمنازل بعد الانتهاء من هدمها حتى لا يؤذي اي من المناطق المتجاوره او تتسبب فى اى اذى الشقق والشوارع التي تتواجد بجوار هذا المنزل ولقد استطعنا ان نقدم لكم تلك الخدمات منذ العديد من السنوات وان نوفر لكم خدمه هدم المبانى في اي من المناطق التي تحتاجون اليها حيث اننا قمنا هل نوفر افضل وامهر وارخص <strong>مقاول هدم بالاحساء </strong>؟<strong> مقاول هدم الاحساء</strong> بتوفير الكثير من الفروع التابعه للدوله والتي سهلت عمليه الهدم في اي من الاوقات ولكن حتى لا نزعج عملائنا الاعزاء المتواجدين بجوار تلك المنازل فنحن نقوم بتوضيح لكم كيفيه القيام بعمليه الهدم و اختيار الاوقات المناسبه لكم في توفير هذه الخدمه فقد استطاعت شركتنا ان تتفوق على مثيلاتها من الشركات الاخرى هل نوفر افضل الاوناش وكبسولات تفجير المباني ؟<strong> مقاول هدم الاحساء </strong>و ان تقوم بتقديم لكم الاحترافيه هو المهاره وان توفر لكم خدمه التكسير والهدم وخدمات التميز واننا قادرين على الوصول اليكم وتحقيق ليكم كل ما تحتاجونه واننا قادرين على توفير الامور والمميزات كما ان شركتنا<strong> شركة هدم المبانى</strong> هي التي تستطيع ان توفر لكم كافه الخصومات والمميزات هل نوفر كافة خدمات <strong>هدم المباني </strong>؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span><strong>مقاول هدم الاحساء</strong> التي تحتاجونها وان نكون قادرين على اتاحه لكم جميع الفرص المميزه في التواصل معنا والاطلاع على كل ما هو جديد ومميز فى عالم<strong> خدمه الهدم والتكسير </strong>للجدران المباني فان الرغبه في <strong>هدم المباني </strong>هو الامر الذي يحتاج اليه العميل عند قيامهم بعمليه ترميم المنازل او القيام بانشائها ولكن بعض من التصميمات هل نقوم بهدم اي مبني بمساحات مختلفة ؟<br /><strong><span style=\"mso-spacerun: yes;\">&nbsp;</span>مقاول هدم الاحساء</strong> الجميله والرائعه ولقد اثبتت لكم شركتنا شركة <strong>هدم المبانى </strong>انها من افضل الشركات التي تستطيع ان تتيح لكم العروض والخصومات المميزه وان تطلع على كل ما هو حديث ومميز و انها سوف تذيع الخصومات والعروض التي ليس لها مثيل ولقد قامت شركتنا بكم هل<strong> خدمة هدم المباني </strong>تحتاج الي حذر شديد وخبرة ؟ مقاول <strong>هدم الاحساء </strong>بعد الرغبه في <strong>عمليه الهدم</strong> حتى تتعرفون على كافه التفاصيل الخاصه بنا من العناوين الخاصه ومن الاثار التي تقدمها الشركه و من اهم المميزات والعروض ومن الخصومات ولا يمكنك القلق ابدا عزيزي العميل عند الرغبه في توفير لكم كل ما تحتاجون اليه وان نقوم بعمليه هدم المنازل هل عمالنا يمتلكون السرعة و المهارة و الكفاءة و الدقة ؟<br /><strong><span style=\"mso-spacerun: yes;\">&nbsp;</span>مقاول هدم الاحساء</strong> التي تتواجد لديكم مهما اختلفت في الاشكال او الاحجام الخاصه بها فنحن قادرين على توفير و انجاز تلك المهمه بشكل سريع وبدون اي تقليد للشركات الاخرى فقد حصلت شركتنا شركة هدم مبانى على الكثير من المهاره والاحترافيه والتميز وانها كانت قادره على تحقيق تلك الخدمات بشكل سريع هل نوفر خدمة<strong> الهدم</strong> الكلي و<strong> الهدم </strong>الجزئي و<strong> الهدم </strong>الداخلي<strong>؟ مقاول هدم الاحساء</strong> فلابد من الاعتماد علينا باي وقت والاطلاع على كل ما نقدمه لكم والاطلاع على كل ما تحتاجون اليه واننا من خلال شركة الهدم استطعنا ان ييسر لكم الاسعار الرخيصه وافضل المقاولين في عمليه الهدم حيث انهم يقوم بتكسير كافه الاجزاء الصعبه والخرسانيه وايضا المباني القديمه هل عمالنا يقومون بانجاز العميلية بسرعة <strong>؟ مقاول هدم الاحساء </strong>وان يقدمون لكم تلك الخدمات بشكل سهل وسريع كما انهم يقوم بترحيل كافه المخلفات والموبايل التى تم هدمها الى اماكن خاصه بها حتى لا يكون هناك اي قلق من انسداد الشوارع او عدم قدره السيارات على المرور او تعطيل الحركات العامه وقد قمنا بتوفير لكم الفنيين ذو الاحترافيه الكبيره والسرعه في انجاز الاعمال هل نوفر مهندسيين و فنيين متخصصين فى عملية <strong>هدم المبانى </strong>؟<br /><span style=\"mso-spacerun: yes;\">&nbsp;</span>مقاول هدم الاحساء و ان نقدم لكم التميز والمصداقيه باي شكل وان نقوم بالتواجد معكم واثبات لكم كل ما هو رائع في الاعتماد على شركة<strong> الهدم </strong>و في تحقيق تلك المميزات عزيزي العميل لقد اصبحت شركتنا توفر لكم كافه الادوات والمعدات التي تميزنا عن غيرنا من الشركات الاخرى والتي نستطيع ان نوفرها لكم لازدياد الثقه الخاصه بشركه شركات <strong>هدم المبانى بالاحساء مقاول هدم الاحساء </strong>و اللجوء الى التعامل معنا والمجئ الينا في اي وقت وانك اذا كنت لم تتعرف من قبل على الادوات الخاصه <strong>بالتكسير او الهدم </strong>التي تتواجد لدينا يمكنك الاطلاع عليها التعرف على كل ما هو جديد و انها من الشركات التي يكون هدفها هو تحقيق التميز والاحترافيه وان نكون قادرين على الوصول اليكم شركات <strong>هدم المبانى بالاحساء مقاول هدم الاحساء</strong> و تحديد ساعات العمل و تحديد الاماكن التي يمكن ان نقوم بوضع بها المخلفات الخاصه بالمباني وكيفيه قيامنا بتكسير المباني وكيفيه اعتمادنا على الفنيين و كيفيه الاطلاع على كل ما هو مميز</span></em></p>', NULL, NULL, 6, NULL, '2024-02-15 13:53:11', '2024-02-15 13:53:11');

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

-- --------------------------------------------------------

--
-- Table structure for table `pg_features`
--

CREATE TABLE `pg_features` (
  `ID` int(11) NOT NULL,
  `boxes` varchar(22) DEFAULT NULL,
  `paragraphs` varchar(22) DEFAULT NULL,
  `covers` varchar(22) DEFAULT NULL,
  `marques` varchar(22) DEFAULT NULL,
  `sliders` varchar(22) DEFAULT NULL,
  `socials` varchar(22) DEFAULT NULL,
  `topics` varchar(22) DEFAULT NULL,
  `s_numbers` varchar(22) DEFAULT NULL,
  `videos` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `AdminPosts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searchbar`
--

CREATE TABLE `searchbar` (
  `TargetedKeyword` varchar(20) DEFAULT NULL,
  `IP_Address` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Devices` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `searchbar`
--

INSERT INTO `searchbar` (`TargetedKeyword`, `IP_Address`, `country`, `Devices`, `Time`) VALUES
('tiktukIframe', '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-31 10:58:47'),
('tiktukIframe', '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-31 11:09:22'),
('tik', '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-31 11:29:49'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-31 23:49:42'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-31 23:55:41'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-31 23:57:19'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-31 23:58:09'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 00:01:38'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 00:02:57'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 00:04:12'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 00:05:32'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 08:02:07'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 08:07:32'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 10:36:12'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 10:36:40'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 10:37:28'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 10:37:49'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 10:38:22'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 10:38:56'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 10:39:23'),
(NULL, '127.0.0.1', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-08-01 10:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `ID` int(11) NOT NULL,
  `Domain_site` varchar(100) NOT NULL,
  `KEYWORDS` varchar(23) NOT NULL,
  `Breadcrumbs` varchar(23) NOT NULL,
  `FAQS` varchar(23) NOT NULL,
  `schema` varchar(22) NOT NULL,
  `Microformats` varchar(23) NOT NULL,
  `Footersitemap` varchar(22) NOT NULL,
  `inspect` varchar(22) NOT NULL,
  `contentpage` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`ID`, `Domain_site`, `KEYWORDS`, `Breadcrumbs`, `FAQS`, `schema`, `Microformats`, `Footersitemap`, `inspect`, `contentpage`) VALUES
(1, 'Domainsite.net', 'Active', 'Active', 'Active', 'Active', '', 'Active', '', ''),
(2, 'Asphallt.net', 'DisActive', 'DisActive', 'DisActive', 'DisActive', '', 'Active', '', ''),
(3, '127.0.0.1:8000', 'Active', 'DisActive', 'DisActive', 'DisActive', '', 'Active', 'Active', 'DisActive'),
(4, '127.0.0.1:8000', 'Active', 'Active', 'Active', 'DisActive', 'schemaorg', 'DisActive', 'Active', 'Active'),
(5, 'localhost/Asphal', 'Active', 'Active', 'Active', 'Active', 'vcard', 'Active', 'Active', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageName` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `box_id` int(10) UNSIGNED DEFAULT NULL,
  `relatedtopic_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `Image`, `ImageName`, `nav_id`, `box_id`, `relatedtopic_id`, `created_at`, `updated_at`) VALUES
(1, 'الشكل المثالي في رصف  الأسفلت و مواقف السيارات  و الطرق  العامة', '[value-3]', '976286-bigthumbnail.jpg', 1, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'القوة والمتانه في اعمال اسفلت الطرق ', '[value-3]', '976286-bigthumbnail.jpg', 1, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'الحداثة في  أستخدام احدث المواد المطابقة لموصفات  العالمية  و مقاومة للعوامل الطبيعية ', '[value-3]', '976286-bigthumbnail.jpg', 1, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `social_icon` varchar(325) COLLATE utf8mb4_unicode_ci NOT NULL,
  `links` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `social_icon`, `links`, `created_at`, `updated_at`) VALUES
(1, 'facebook.png', 'https://www.facebook.com/asphalltHasa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'linkedin.png', 'https://www.linkedin.com/company/78859436/admin/', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'twitter.png', 'https://twitter.com/MqawlAsflt?t=8zey-kmZzXkGKNoUGnQVhw&s=09', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `s_numbers`
--

CREATE TABLE `s_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ar_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SNumber_Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SNumber_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SNumber_Num` int(11) DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `box_id` int(10) UNSIGNED DEFAULT NULL,
  `relatedtopic_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_numbers`
--

INSERT INTO `s_numbers` (`id`, `title`, `Ar_title`, `ImageName`, `SNumber_Name`, `SNumber_type`, `SNumber_Num`, `symbol`, `nav_id`, `box_id`, `relatedtopic_id`, `created_at`, `updated_at`) VALUES
(1, 'معدة جاهزة للاستخدام', '[value-3]', 'Asphallt.png', 'اعمالنا بالارقام\'', 'اعمالنا بالارقام\'', 8, '[value-8]', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'عميل داخل الاحساء', '[value-3]', 'client.png', NULL, 'اعمالنا بالارقام\'', 160, '[value-8]', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'نعمل علي مدار الاسبوع', '[value-3]', 'clock--v2.png', NULL, 'اعمالنا بالارقام\'', 24, '[value-8]', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'عميل يثقون بأعمالنا', '[value-3]', 'hands2.png', NULL, 'اعمالنا بالارقام\'', 220, '[value-8]', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `themeresources`
--

CREATE TABLE `themeresources` (
  `ID` int(22) NOT NULL,
  `CSS` varchar(522) NOT NULL,
  `JS` varchar(522) NOT NULL,
  `ThemeName` varchar(522) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `timelineposts`
--

CREATE TABLE `timelineposts` (
  `ID` int(100) NOT NULL,
  `subject` varchar(22) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `Ar_subject` varchar(22) CHARACTER SET utf8 NOT NULL,
  `Ar_content` text CHARACTER SET utf8 NOT NULL,
  `ImageName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Post_style` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tags` varchar(22) NOT NULL,
  `admin_id` int(22) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `box_id` int(11) NOT NULL,
  `relatedtopic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ar_subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ar_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageName` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Topic_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `box_id` int(10) UNSIGNED DEFAULT NULL,
  `relatedtopic_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `subject`, `content`, `Ar_subject`, `Ar_content`, `ImageName`, `Topic_style`, `nav_id`, `box_id`, `relatedtopic_id`, `created_at`, `updated_at`) VALUES
(1, 'مقاول أسفلت الأحساء', 'من أفضل الشركات في أعمال الإسفلت بالاحساء مما جعل لهذه الشركة أسما عاليا في سماء هذا المجال وقد حققا نجاحا باهرا في تطبيق كل ما هو جديد في أعمال الإسفلت', 'Ar_subject', 'Arabic_content', 'Asphallt_Hasa KsA.png', 'Topic_Model1', 1, NULL, NULL, '2023-02-18 18:28:47', '2023-07-29 20:40:15');

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
(3, 'amr hassan', 'amrgelno@gmail.com', NULL, '$2y$10$4f5ue6zsk3nDcO9Az7OO8eMMOfKWALsuPOUX/Fk.FNtItfYTwZgsC', NULL, '2023-02-04 13:29:14', '2023-02-04 13:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ar_title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VIDOName` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_Name` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_type` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `box_id` int(10) UNSIGNED DEFAULT NULL,
  `relatedtopic_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `Ar_title`, `VIDOName`, `cat_Name`, `cat_type`, `price`, `nav_id`, `box_id`, `relatedtopic_id`, `created_at`, `updated_at`) VALUES
(11, 'vidoe2', '', '1676896181.jpg', 'cat', 'cat', NULL, 1, NULL, NULL, '2023-02-20 20:29:41', '2023-02-20 21:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `ID` int(15) NOT NULL,
  `Fontstyle` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fontsize` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `ulcolor` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fontcolor` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FontType` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub1color` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub2color` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bgcolor` varchar(22) NOT NULL,
  `bg_Image` varchar(100) DEFAULT NULL,
  `Footercolor` varchar(200) DEFAULT NULL,
  `headline` varchar(150) NOT NULL,
  `container` varchar(22) NOT NULL,
  `lang` varchar(22) NOT NULL,
  `BusinessModel` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`ID`, `Fontstyle`, `Fontsize`, `ulcolor`, `Fontcolor`, `FontType`, `width`, `height`, `sub1color`, `sub2color`, `font_id`, `bgcolor`, `bg_Image`, `Footercolor`, `headline`, `container`, `lang`, `BusinessModel`) VALUES
(1, 'normal', 'medium ', '#f28787', '#dcdbdb', 'Verdana, Geneva, sans-serif', '200px', '50px', '#f5f0f0', '#e26f6f', '', '0', 'Asphalltbg.png', '#d1eebe', 'Georgia, Times New Roman, Times, serif', 'container', 'en', 'Blog with member');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `ID` int(22) NOT NULL,
  `IP_Address` varchar(23) NOT NULL,
  `vlink` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vlinktype` varchar(22) NOT NULL,
  `time` datetime NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  `Devices` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`ID`, `IP_Address`, `vlink`, `vlinktype`, `time`, `country`, `Devices`) VALUES
(1, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 17:39:52', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(2, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 17:40:58', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(3, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:04:05', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(4, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:09:11', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(5, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:10:40', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(6, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:11:55', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(7, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:13:21', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(8, '::1', 'http:127.0.0.1:8000?box_ID=2', 'boxlink', '2023-09-13 18:15:45', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(9, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:17:08', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(10, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:17:42', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(11, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:18:25', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(12, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:18:49', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(13, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 18:19:09', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(14, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:19:28', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(15, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:19:36', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(16, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:22:28', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(17, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:24:45', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(18, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:26:17', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(19, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:27:30', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(20, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:30:04', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(21, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:32:39', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(22, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:35:46', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(23, '::1', 'http:127.0.0.1:8000?box_ID=3', 'boxlink', '2023-09-13 20:36:05', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(24, '::1', 'http:127.0.0.1:8000?box_ID=2', 'boxlink', '2023-09-13 20:36:19', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(25, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-13 20:39:33', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(26, '::1', 'http:127.0.0.1:8000?box_ID=1', 'boxlink', '2023-09-13 20:39:43', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(27, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-14 08:39:16', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(28, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-14 08:41:38', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(29, '::1', 'http:127.0.0.1:8000', 'navlink', '2023-09-14 08:42:38', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(30, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:13:09', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(31, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:13:11', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(32, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:13:14', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(33, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:16:38', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(34, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:16:41', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(35, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:16:45', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(36, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:17:36', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(37, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:17:39', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(38, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:17:41', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(39, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:20:05', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(40, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:20:13', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(41, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:20:14', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(42, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:20:16', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(43, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:23:04', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(44, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:24:24', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(45, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:24:26', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(46, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:24:31', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(47, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:25:24', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(48, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:25:28', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(49, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:25:31', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(50, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:25:49', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(51, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:28:51', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(52, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:38:55', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(53, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:40:33', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(54, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:40:35', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(55, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 09:40:38', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(56, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 10:34:04', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(57, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 10:36:55', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(58, '::1', 'http:localhost/AsphalltNet/?box_ID=6', 'boxlink', '2023-09-14 10:37:13', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.76'),
(59, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 10:52:48', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(60, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 10:53:41', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(61, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 10:53:57', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(62, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 11:05:49', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(63, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 11:06:50', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(64, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 11:07:17', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(65, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 11:09:28', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(66, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 11:11:29', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107'),
(67, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 11:12:20', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107'),
(68, '127.0.0.1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 11:14:28', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(69, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 14:08:27', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(70, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 14:12:30', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(71, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 14:14:44', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(72, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 14:18:53', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(73, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 14:19:24', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(74, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-14 18:19:35', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(75, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:22:01', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(76, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:45:56', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(77, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:47:23', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(78, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:54:05', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(79, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:54:30', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(80, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:55:07', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(81, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:55:32', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(82, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:55:58', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(83, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:56:37', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(84, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:57:35', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(85, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 05:58:27', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(86, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:01:12', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(87, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:02:22', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(88, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:02:41', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(89, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:07:24', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(90, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:08:13', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(91, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:08:22', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(92, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:08:46', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(93, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:12:12', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(94, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:19:23', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(95, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:20:51', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(96, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:22:02', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(97, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:23:55', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(98, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:24:16', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(99, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:24:33', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(100, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:24:52', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(101, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:25:15', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(102, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:25:35', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(103, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:30:21', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(104, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:31:45', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(105, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:34:56', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(106, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:38:26', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(107, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:38:55', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(108, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:39:45', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(109, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:41:02', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(110, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:41:22', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(111, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:42:33', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(112, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:43:23', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(113, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:44:39', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(114, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:44:53', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(115, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:45:20', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107'),
(116, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:46:24', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(117, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:46:41', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107'),
(118, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:47:16', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107'),
(119, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:47:51', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107'),
(120, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:48:30', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107'),
(121, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:49:19', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(122, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:54:18', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(123, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:54:37', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(124, '::1', 'http:localhost/AsphalltNet/?MainM_ID=2', 'navlink', '2023-09-15 06:56:16', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(125, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 06:56:46', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(126, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:04:50', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(127, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:05:02', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(128, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:05:37', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(129, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:07:22', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(130, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:08:40', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(131, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:15:22', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(132, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:41:16', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(133, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:43:08', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107'),
(134, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:44:28', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(135, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 08:44:40', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(136, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 09:09:46', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(137, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 09:12:30', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(138, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 12:46:32', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(139, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 12:48:28', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(140, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 12:51:39', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(141, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 12:51:51', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(142, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 12:52:24', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(143, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 12:53:56', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(144, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 12:57:39', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(145, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 12:58:50', 'Egypt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(146, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:04:18', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(147, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:11:30', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(148, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:12:01', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(149, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:17:28', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(150, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:24:06', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(151, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:26:55', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(152, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:28:19', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(153, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:28:52', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(154, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:30:18', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(155, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:38:22', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(156, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:40:36', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(157, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:41:13', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(158, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:42:07', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(159, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:42:33', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(160, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:43:20', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(161, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:43:56', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(162, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:45:09', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(163, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:47:50', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(164, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:48:18', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(165, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:49:47', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(166, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:51:25', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(167, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 14:53:10', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(168, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-15 17:06:03', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(169, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-16 14:39:06', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(170, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-16 14:40:06', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(171, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-16 14:40:29', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(172, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-16 14:41:10', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(173, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-16 14:42:01', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(174, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-17 05:11:44', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.81'),
(175, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-20 01:50:27', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31'),
(176, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-09-25 09:56:39', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.36'),
(177, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-10-09 21:21:39', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.60'),
(178, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-10-14 10:32:55', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.60'),
(179, '::1', 'http:localhost/AsphalltNet/?MainM_ID=3', 'navlink', '2023-10-14 10:56:40', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.60'),
(180, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2023-12-25 12:10:21', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(181, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2024-01-16 19:56:20', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(182, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2024-01-16 19:56:20', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(183, '::1', 'http:localhost/AsphalltNet/?box_ID=1', 'boxlink', '2024-01-16 19:56:48', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(184, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2024-01-27 17:54:58', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(185, '::1', 'http:localhost/AsphalltNet/?box_ID=2', 'boxlink', '2024-01-27 18:01:07', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(186, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2024-01-27 18:43:28', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(187, '::1', 'http:localhost/AsphalltNet/?box_ID=3', 'boxlink', '2024-01-27 18:44:02', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(188, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2024-01-27 19:03:34', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(189, '::1', 'http:localhost/AsphalltNet/?box_ID=4', 'boxlink', '2024-01-27 19:04:05', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(190, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2024-01-27 19:25:57', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(191, '::1', 'http:localhost/AsphalltNet/?box_ID=5', 'boxlink', '2024-01-27 19:26:23', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(192, '::1', 'http:localhost/AsphalltNet/?box_ID=6', 'boxlink', '2024-01-27 19:32:11', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(193, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2024-01-30 14:40:48', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(194, '::1', 'http:localhost/AsphalltNet/', 'navlink', '2024-01-30 14:46:14', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(195, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-13 18:42:14', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(196, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-14 10:52:02', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(197, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-14 22:10:15', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(198, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-15 04:17:47', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(199, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-15 04:17:54', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(200, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-15 04:18:27', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(201, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-15 05:25:02', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(202, '::1', 'http:localhost/Asphal?box_ID=1', 'boxlink', '2024-02-15 05:25:26', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(203, '::1', 'http:localhost/Asphal?box_ID=1', 'boxlink', '2024-02-15 05:26:54', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(204, '::1', 'http:localhost/Asphal?box_ID=1', 'boxlink', '2024-02-15 05:27:08', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(205, '::1', 'http:localhost/Asphal?box_ID=2', 'boxlink', '2024-02-15 05:31:04', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(206, '::1', 'http:localhost/Asphal?box_ID=1', 'boxlink', '2024-02-15 05:33:04', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(207, '::1', 'http:localhost/Asphal?box_ID=1', 'boxlink', '2024-02-15 05:33:26', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(208, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-15 05:45:37', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(209, '::1', 'http:localhost/Asphal?box_ID=6', 'boxlink', '2024-02-15 05:45:52', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(210, '::1', 'http:localhost/Asphal?box_ID=1', 'boxlink', '2024-02-15 05:48:07', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(211, '::1', 'http:localhost/Asphal?box_ID=6', 'boxlink', '2024-02-15 05:48:58', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(212, '::1', 'http:localhost/Asphal?box_ID=6', 'boxlink', '2024-02-15 05:53:27', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(213, '::1', 'http:localhost/Asphal?box_ID=6', 'boxlink', '2024-02-15 05:55:20', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(214, '::1', 'http:localhost/Asphal?box_ID=6', 'boxlink', '2024-02-15 05:56:38', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(215, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-15 05:57:04', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(216, '::1', 'http:localhost/Asphal?box_ID=1', 'boxlink', '2024-02-15 05:57:18', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67'),
(217, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-17 23:10:53', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(218, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-17 23:49:04', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(219, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 05:51:01', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(220, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 05:51:16', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(221, '::1', 'http:localhost/Asphal?box_ID=1', 'boxlink', '2024-02-18 05:55:29', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(222, '::1', 'http:localhost/Asphal?box_ID=2', 'boxlink', '2024-02-18 05:57:16', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(223, '::1', 'http:localhost/Asphal?box_ID=3', 'boxlink', '2024-02-18 05:58:16', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(224, '::1', 'http:localhost/Asphal?box_ID=4', 'boxlink', '2024-02-18 05:59:27', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(225, '::1', 'http:localhost/Asphal?box_ID=5', 'boxlink', '2024-02-18 06:01:49', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(226, '::1', 'http:localhost/Asphal?box_ID=5', 'boxlink', '2024-02-18 06:04:03', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0');
INSERT INTO `visitors` (`ID`, `IP_Address`, `vlink`, `vlinktype`, `time`, `country`, `Devices`) VALUES
(227, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 06:06:01', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(228, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 08:18:20', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(229, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 08:21:04', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(230, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 09:04:07', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(231, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 09:06:08', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(232, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 10:01:51', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(233, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 12:40:13', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(234, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 12:42:44', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(235, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 12:43:40', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(236, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 12:45:13', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(237, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 13:00:09', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(238, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 14:40:44', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(239, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 14:52:24', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(240, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 14:53:26', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(241, '::1', 'http:localhost/Asphal', 'navlink', '2024-02-18 21:55:38', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0'),
(242, '::1', 'http:localhost/Asphal?box_ID=1', 'boxlink', '2024-02-18 21:56:46', 'saudiArabia', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `ID` int(11) NOT NULL,
  `socialMediapanel` varchar(22) NOT NULL,
  `share panel` varchar(22) NOT NULL,
  `clock` varchar(22) NOT NULL,
  `photo Gallery` varchar(22) NOT NULL,
  `chatBot` varchar(22) NOT NULL,
  `Map` varchar(22) NOT NULL,
  `contactus` varchar(22) NOT NULL,
  `logo` varchar(22) NOT NULL,
  `BrandIcon` varchar(22) NOT NULL,
  `SearchBar` varchar(22) NOT NULL,
  `langsection` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`ID`, `socialMediapanel`, `share panel`, `clock`, `photo Gallery`, `chatBot`, `Map`, `contactus`, `logo`, `BrandIcon`, `SearchBar`, `langsection`) VALUES
(1, ' Active', ' Active', ' Active', ' Active', ' Active', ' Active', ' Active', ' Active', ' Active', ' Active', ''),
(2, 'Active', 'DisActive', 'DisActive', 'DisActive', 'Active', 'Active', 'DisActive', 'Active', 'Active', 'DisActive', ''),
(3, 'Active', 'Active', 'Active', 'Active', 'Active', 'Active', 'Active', 'Active', 'Active', 'Active', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `adminposts`
--
ALTER TABLE `adminposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminposts_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `boxes`
--
ALTER TABLE `boxes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `client_comment`
--
ALTER TABLE `client_comment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `client_req`
--
ALTER TABLE `client_req`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `covers`
--
ALTER TABLE `covers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fav_product`
--
ALTER TABLE `fav_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_cards`
--
ALTER TABLE `inv_cards`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jobreq`
--
ALTER TABLE `jobreq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `marques`
--
ALTER TABLE `marques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `member_pr`
--
ALTER TABLE `member_pr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navs`
--
ALTER TABLE `navs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `paragraphs`
--
ALTER TABLE `paragraphs`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_numbers`
--
ALTER TABLE `s_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `adminposts`
--
ALTER TABLE `adminposts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes`
--
ALTER TABLE `boxes`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client_comment`
--
ALTER TABLE `client_comment`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_req`
--
ALTER TABLE `client_req`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `covers`
--
ALTER TABLE `covers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fav_product`
--
ALTER TABLE `fav_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_cards`
--
ALTER TABLE `inv_cards`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobreq`
--
ALTER TABLE `jobreq`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `marques`
--
ALTER TABLE `marques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `member_pr`
--
ALTER TABLE `member_pr`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `navs`
--
ALTER TABLE `navs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `paragraphs`
--
ALTER TABLE `paragraphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `s_numbers`
--
ALTER TABLE `s_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminposts`
--
ALTER TABLE `adminposts`
  ADD CONSTRAINT `adminposts_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
