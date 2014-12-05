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
-- Table structure for table `h_unit`
--

DROP TABLE IF EXISTS `h_unit`;
CREATE TABLE IF NOT EXISTS `h_unit` (
`id` int(11) unsigned NOT NULL,
  `unit` varchar(10) NOT NULL,
  `active_ind` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `h_unit`
--

INSERT INTO `h_unit` (`id`, `unit`, `active_ind`) VALUES
(1, 'mg', 1),
(2, 'mcg', 1),
(3, 'mL', 1),
(4, 'tsp', 1),
(5, 'TBS', 1),
(6, 'gtt', 1),
(7, 'None', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `h_unit`
--
ALTER TABLE `h_unit`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `h_unit`
--
ALTER TABLE `h_unit`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
