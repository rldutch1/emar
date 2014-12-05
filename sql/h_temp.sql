-- phpMyAdmin SQL Dump
-- version 4.2.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2014 at 05:31 PM
-- Server version: 5.5.36-cll-lve
-- PHP Version: 5.5.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `robdba5`
--

-- --------------------------------------------------------

--
-- Table structure for table `h_temp`
--

DROP TABLE IF EXISTS `h_temp`;
CREATE TABLE IF NOT EXISTS `h_temp` (
`id` int(11) unsigned NOT NULL,
  `temp_f` float NOT NULL,
  `person_id` int(11) NOT NULL,
  `temp_dttm` datetime NOT NULL,
  `active_ind` int(11) NOT NULL DEFAULT '1',
  `symptom` varchar(200) NOT NULL DEFAULT '--'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `h_temp`
--

INSERT INTO `h_temp` (`id`, `temp_f`, `person_id`, `temp_dttm`, `active_ind`, `symptom`) VALUES
(1, 102.6, 5, '2013-08-23 06:19:00', 1, '--'),
(2, 99.5, 5, '2013-08-23 11:10:00', 1, '--'),
(3, 98.7, 5, '2013-08-23 18:00:00', 1, '--'),
(4, 101.1, 5, '2013-08-23 19:00:00', 1, '--'),
(5, 101.2, 5, '2013-08-24 07:35:00', 1, '--'),
(6, 99, 5, '2013-08-24 11:55:00', 1, '--'),
(7, 99.8, 5, '2013-08-24 16:45:00', 1, '--'),
(8, 99.3, 3, '2014-01-01 02:11:54', 1, '--'),
(9, 100.7, 4, '2013-12-25 18:49:44', 1, '--'),
(10, 98.4, 4, '2013-12-24 12:11:03', 1, '--'),
(11, 102.2, 4, '2013-12-24 23:00:00', 1, '--'),
(12, 101.7, 4, '2013-12-23 09:27:46', 1, '--'),
(13, 101.1, 4, '2013-12-22 09:19:25', 1, '--'),
(14, 100.8, 4, '2013-12-21 13:25:06', 1, '--'),
(15, 100.7, 4, '2013-12-21 12:19:38', 1, '--'),
(16, 98.9, 5, '2013-12-02 00:48:01', 1, '--'),
(17, 100, 5, '2013-10-23 23:21:17', 1, '--'),
(18, 97.9, 3, '2014-05-06 10:20:00', 1, '--'),
(19, 97.9, 3, '2014-05-06 11:23:00', 1, '--'),
(20, 97.7, 3, '2014-05-06 13:45:00', 1, '--'),
(21, 97.7, 5, '2014-06-08 08:45:26', 1, '--'),
(22, 100, 5, '2014-08-16 14:47:00', 1, '--'),
(23, 100.3, 5, '2014-08-16 17:22:00', 1, '--'),
(24, 102, 5, '2014-08-17 01:18:00', 1, '--'),
(25, 99.2, 5, '2014-08-17 08:42:00', 1, '--'),
(26, 98.6, 5, '2014-08-17 12:05:00', 1, '--'),
(27, 100, 5, '2014-08-17 15:55:00', 1, '--'),
(28, 97.7, 5, '2014-08-17 18:30:00', 1, '--'),
(29, 100.5, 3, '2014-08-24 13:18:00', 1, 'Headache'),
(30, 100.7, 3, '2014-08-24 16:39:00', 1, '--'),
(31, 99.4, 3, '2014-08-25 01:00:00', 1, '--'),
(32, 98.8, 3, '2014-08-25 07:38:00', 1, '--'),
(33, 99.3, 3, '2014-08-25 11:00:00', 1, '--'),
(34, 98.3, 3, '2014-08-25 18:25:00', 1, '--'),
(35, 98.8, 3, '2014-08-26 19:55:00', 1, '--'),
(36, 101.3, 4, '2014-08-31 06:15:00', 1, 'Headache'),
(37, 98.6, 4, '2014-08-31 10:15:00', 1, '--'),
(38, 97.6, 5, '2014-09-28 13:55:02', 1, 'Headache'),
(39, 99.9, 5, '2014-10-02 06:30:00', 1, 'Fever'),
(40, 100.3, 5, '2014-10-02 10:32:00', 1, 'Fever'),
(41, 98.6, 5, '2014-10-02 14:20:00', 1, 'Fever'),
(42, 102.1, 5, '2014-10-02 19:20:00', 1, 'Fever'),
(43, 99.6, 5, '2014-10-02 22:14:00', 1, 'Fever'),
(44, 101.4, 5, '2014-10-03 00:04:00', 1, 'Fever'),
(45, 99, 5, '2014-10-03 08:30:00', 1, 'Headache, fever'),
(46, 100.1, 5, '2014-10-03 10:28:00', 1, 'Fever, No meds because too soon since last administration.'),
(47, 101.1, 5, '2014-10-03 13:13:00', 1, 'Fever'),
(48, 0, 5, '2014-10-03 13:39:00', 0, 'Headache'),
(49, 98.8, 5, '2014-10-03 17:04:00', 1, 'Fever'),
(50, 0, 3, '2014-10-17 01:38:00', 0, 'Sore throat'),
(51, 0, 3, '2014-10-17 15:38:00', 0, 'Sore throat'),
(52, 97.7, 5, '2014-10-19 12:00:00', 1, 'Stomach ache'),
(53, 98.4, 5, '2014-11-28 14:22:11', 1, 'No appetite. '),
(54, 99.2, 2, '2014-11-29 17:55:00', 1, 'Headache');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `h_temp`
--
ALTER TABLE `h_temp`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `h_temp`
--
ALTER TABLE `h_temp`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
