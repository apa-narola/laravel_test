-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2014 at 09:43 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel_test`
--
CREATE DATABASE IF NOT EXISTS `laravel_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_test`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_03_01_044351_create_password_reminders_table', 1),
('2014_03_05_065915_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reminders`
--

INSERT INTO `password_reminders` (`email`, `token`, `created_at`) VALUES
('apa.narola@narolainfotech.com', 'ffe83005c0cba16deb09768bdabca5508f0093f8', '2014-02-28 23:37:11'),
('ds.narola@narolainfotech.com', '415fb3322f6c744eb0f75ef25c53de2bd736741b', '2014-02-28 23:45:31'),
('apa.narola@narolainfotech.com', '6dc13cd8c473f35c23d697665d10835234dae5b5', '2014-02-28 23:52:47'),
('apa.narola@narolainfotech.com', '517c19aa95ad0e72ebd951907de63552a302ace7', '2014-03-04 01:13:43'),
('apa.narola@narolainfotech.com', '4a131cd7b9bcbe0c476d5cf631521aa995ba6332', '2014-03-04 01:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(2, 'ashish', '$2y$10$arBvLdejIXvpvgPwGOCQpOGkzt.1t5s5YT20AyFAx3Ag9HiEHvami', '2014-03-05 05:48:36', '2014-03-05 05:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `users_old`
--

CREATE TABLE IF NOT EXISTS `users_old` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Stores users information' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users_old`
--

INSERT INTO `users_old` (`id`, `username`, `password`, `email`, `phone`, `name`, `created_at`, `updated_at`) VALUES
(7, 'ds', 'ashish123', 'ds.narola@narolainfotech.com', '0261-255455', 'Dharmesh', '2014-02-28 07:57:32', '2014-02-28 07:57:32'),
(8, 'venus', 'sdfsf', 'ss.bb@cc.com', '0261-255655', 'testadfd', '2014-02-28 07:58:42', '2014-02-28 07:58:42'),
(11, 'apanarola', 'ashish123', 'apa.narola@narolainfotech.com', '0261-255455', 'Ashish Narola', '2014-02-28 08:02:13', '2014-02-28 22:53:26');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
