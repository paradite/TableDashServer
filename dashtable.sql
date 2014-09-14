-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2014 at 02:41 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dashtable`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tag_id` varchar(100) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `activity` text NOT NULL,
  PRIMARY KEY (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`timestamp`, `tag_id`, `user_id`, `activity`) VALUES
('2014-09-13 13:42:03', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:44:41', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:45:26', '', 'hello2', 'checkout'),
('2014-09-13 13:48:36', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:50:30', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:51:07', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:51:49', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:52:40', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:52:54', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:53:05', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:53:50', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:54:13', 'hellotag2', 'hello2', ''),
('2014-09-13 13:54:19', 'hellotag2', 'hello2', ''),
('2014-09-13 13:55:36', 'hellotag2', 'hello2', ''),
('2014-09-13 13:57:26', 'hellotag2', 'hello2', ''),
('2014-09-13 13:59:11', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 13:59:39', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 14:00:24', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 14:02:07', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 14:02:37', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 14:03:19', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 14:03:29', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 14:03:38', '', 'hello2', 'checkout'),
('2014-09-13 14:07:01', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 14:07:12', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 14:07:45', 'hellotag2', 'hello2', 'checkin'),
('2014-09-13 14:14:37', '', 'hello2', 'checkout'),
('2014-09-13 14:17:46', '', 'hello2', 'checkout'),
('2014-09-13 14:18:02', '', 'hello2', 'checkout'),
('2014-09-13 14:20:21', 'hellotag2', 'hello2', 'checkout'),
('2014-09-13 14:37:56', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 14:38:23', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 14:39:02', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 14:41:17', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 14:41:30', '', 'a9808b7fd728a5ab', 'checkout'),
('2014-09-13 14:45:10', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 14:45:13', '', 'a9808b7fd728a5ab', 'checkout'),
('2014-09-13 14:45:58', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 14:46:25', '', 'a9808b7fd728a5ab', 'checkout'),
('2014-09-13 14:46:31', '', 'a9808b7fd728a5ab', 'checkout'),
('2014-09-13 14:47:00', '', 'a9808b7fd728a5ab', 'checkout'),
('2014-09-13 14:48:04', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 14:48:21', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:04:13', '', '', 'add_tag_table'),
('2014-09-13 15:04:54', 'D46DCCE4', '', 'add_tag_table'),
('2014-09-13 15:05:14', 'D46DCCE4', '', 'add_tag_table'),
('2014-09-13 15:09:53', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:11:29', '', 'a9808b7fd728a5ab', 'checkout'),
('2014-09-13 15:11:49', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:12:12', '', '', 'check_vacancy'),
('2014-09-13 15:12:52', '', '', 'check_vacancy'),
('2014-09-13 15:13:19', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:13:27', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:13:29', '', 'a9808b7fd728a5ab', 'checkout'),
('2014-09-13 15:13:33', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:13:37', '', 'a9808b7fd728a5ab', 'checkout'),
('2014-09-13 15:13:44', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:13:48', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:13:53', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:16:43', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:16:51', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:16:57', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:17:21', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:45:56', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 15:49:51', '', '', 'check_vacancy'),
('2014-09-13 15:50:09', '', '', 'check_vacancy'),
('2014-09-13 15:51:40', '', '', 'check_vacancy'),
('2014-09-13 15:54:03', '', '', 'check_vacancy'),
('2014-09-13 16:04:23', '', '', 'check_vacancy'),
('2014-09-13 16:07:55', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 16:09:21', '', '', 'check_vacancy'),
('2014-09-13 16:09:43', '', '', 'check_vacancy'),
('2014-09-13 16:16:47', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 16:18:51', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 16:19:52', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 16:21:28', '', 'a9808b7fd728a5ab', 'checkout'),
('2014-09-13 16:21:33', '6C5FCCE4', 'a9808b7fd728a5ab', 'checkin'),
('2014-09-13 16:33:45', '', '48128a5e552328ef', 'checkout'),
('2014-09-13 16:34:39', '', '48128a5e552328ef', 'checkout'),
('2014-09-13 16:36:44', '', '48128a5e552328ef', 'checkout'),
('2014-09-13 23:00:06', '', '', 'check_vacancy'),
('2014-09-13 23:00:11', '', '', 'check_vacancy'),
('2014-09-13 23:04:21', '', '48128a5e552328ef', 'checkout'),
('2014-09-13 23:07:07', '', '', 'check_vacancy'),
('2014-09-13 23:07:33', '', '', 'check_vacancy'),
('2014-09-13 23:07:35', '', '', 'check_vacancy'),
('2014-09-13 23:07:36', '', '', 'check_vacancy'),
('2014-09-13 23:07:38', '', '', 'check_vacancy'),
('2014-09-13 23:07:39', '', '', 'check_vacancy'),
('2014-09-13 23:07:40', '', '', 'check_vacancy'),
('2014-09-13 23:07:41', '', '', 'check_vacancy'),
('2014-09-13 23:08:06', '', '48128a5e552328ef', 'checkout'),
('2014-09-13 23:08:45', '', '48128a5e552328ef', 'checkout'),
('2014-09-13 23:11:11', '', '', 'check_vacancy'),
('2014-09-13 23:12:45', '', '48128a5e552328ef', 'checkout'),
('2014-09-13 23:19:30', '', '', 'check_vacancy'),
('2014-09-13 23:23:17', '', '', 'check_vacancy'),
('2014-09-13 23:28:38', '', '', 'check_vacancy'),
('2014-09-13 23:28:43', '', '', 'check_vacancy'),
('2014-09-13 23:29:31', '', '', 'check_vacancy'),
('2014-09-13 23:31:34', '', '', 'check_vacancy'),
('2014-09-13 23:31:46', '', '', 'check_vacancy'),
('2014-09-13 23:32:14', '', '', 'check_vacancy'),
('2014-09-13 23:37:20', 'hellotag', 'hello', 'checkin'),
('2014-09-13 23:38:05', '', '', 'check_vacancy'),
('2014-09-13 23:38:20', 'hellotag', 'hello', 'checkin'),
('2014-09-13 23:42:54', 'hellotag', 'hello', 'checkin'),
('2014-09-13 23:46:01', 'hellotag', 'hello', 'checkin'),
('2014-09-13 23:46:55', '', '', 'check_vacancy'),
('2014-09-13 23:48:32', '', '', 'check_vacancy'),
('2014-09-13 23:49:09', '', '', 'check_vacancy'),
('2014-09-13 23:53:06', '', '', 'check_vacancy'),
('2014-09-13 23:56:50', '', '', 'check_vacancy'),
('2014-09-13 23:58:46', 'hellotag', 'hello', 'checkin'),
('2014-09-13 23:59:17', 'hellotag', 'hello', 'checkin'),
('2014-09-14 00:03:24', 'hellotag', 'hello', 'checkin'),
('2014-09-14 00:03:48', 'hellotag', 'hello', 'checkin'),
('2014-09-14 00:04:14', '', 'hello2', 'checkout'),
('2014-09-14 00:04:21', '', 'hello', 'checkout'),
('2014-09-14 00:05:04', 'hellotag', 'hello', 'checkin'),
('2014-09-14 00:05:06', '', 'hello', 'checkout'),
('2014-09-14 00:05:37', '', 'hello', 'checkout'),
('2014-09-14 00:05:49', '', 'hello2', 'checkout'),
('2014-09-14 00:05:59', '', '', 'check_vacancy'),
('2014-09-14 00:06:29', '', '', 'check_vacancy'),
('2014-09-14 00:06:40', '', '', 'check_vacancy'),
('2014-09-14 00:10:41', '', '', 'check_vacancy'),
('2014-09-14 00:10:43', '', '', 'check_vacancy'),
('2014-09-14 00:10:56', '', '', 'check_vacancy'),
('2014-09-14 00:10:58', '', '', 'check_vacancy'),
('2014-09-14 00:15:41', '', '', 'check_vacancy'),
('2014-09-14 00:16:34', '', '', 'check_vacancy'),
('2014-09-14 00:17:29', '', '', 'check_vacancy'),
('2014-09-14 00:25:37', '', '', 'check_vacancy'),
('2014-09-14 00:25:48', '', '', 'check_vacancy'),
('2014-09-14 00:26:26', '', '', 'check_vacancy'),
('2014-09-14 00:26:49', '', '', 'check_vacancy'),
('2014-09-14 00:27:13', '', '', 'check_vacancy'),
('2014-09-14 00:29:47', '', '', 'check_vacancy'),
('2014-09-14 00:30:15', '', '', 'check_vacancy'),
('2014-09-14 00:30:21', '', '', 'check_vacancy'),
('2014-09-14 00:30:37', '', '', 'check_vacancy'),
('2014-09-14 00:30:42', '', '', 'check_vacancy'),
('2014-09-14 00:33:33', '', '', 'check_vacancy'),
('2014-09-14 00:33:35', '', '', 'check_vacancy'),
('2014-09-14 00:33:36', '', '', 'check_vacancy'),
('2014-09-14 00:33:37', '', '', 'check_vacancy'),
('2014-09-14 00:34:10', '', '', 'check_vacancy'),
('2014-09-14 00:36:36', 'hellotag2', 'hello2', 'checkin'),
('2014-09-14 00:37:07', 'hellotag2', 'hello2', 'checkin'),
('2014-09-14 00:38:23', 'hellotag2', 'hello2', 'checkin'),
('2014-09-14 00:39:57', 'hellotag2', 'hello2', 'checkin');

-- --------------------------------------------------------

--
-- Table structure for table `table_to_canteen`
--

CREATE TABLE IF NOT EXISTS `table_to_canteen` (
  `table_id` varchar(100) NOT NULL,
  `canteen_id` varchar(100) NOT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_to_canteen`
--

INSERT INTO `table_to_canteen` (`table_id`, `canteen_id`) VALUES
('table-J', 'canteen_1'),
('table-Y', 'canteen_1'),
('table-Z', 'canteen_1'),
('Table_virtual_1', 'canteen_1'),
('test_table_1', 'canteen_1');

-- --------------------------------------------------------

--
-- Table structure for table `tag_occupied_by_user`
--

CREATE TABLE IF NOT EXISTS `tag_occupied_by_user` (
  `tag_id` varchar(100) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `timestamp_checkin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_ending` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tag_id`),
  KEY `timestamp_checkin` (`timestamp_checkin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tag_to_table`
--

CREATE TABLE IF NOT EXISTS `tag_to_table` (
  `tag_id` varchar(100) NOT NULL,
  `table_id` varchar(100) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag_to_table`
--

INSERT INTO `tag_to_table` (`tag_id`, `table_id`) VALUES
('364A507A', 'table-Y'),
('6C5FCCE4', 'table-Z'),
('D46DCCE4', 'table-J'),
('hellotag2', 'table_virtual_1'),
('test_tag_1', 'test_table_1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` varchar(100) NOT NULL,
  `is_moderator` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_moderator`) VALUES
('test_user_1', 1),
('test_user_2', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
