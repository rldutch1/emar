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
-- Table structure for table `h_person`
--

DROP TABLE IF EXISTS `h_person`;
CREATE TABLE IF NOT EXISTS `h_person` (
`id` int(11) unsigned NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `birth_date` datetime NOT NULL,
  `birth_city` varchar(100) DEFAULT NULL,
  `birth_state` varchar(100) DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `h_person`
--

INSERT INTO `h_person` (`id`, `firstname`, `middlename`, `lastname`, `birth_date`, `birth_city`, `birth_state`, `birth_place`) VALUES
(1, 'Robert', 'Lester', 'Holland', '1968-07-08 10:07:00', 'Columbus', 'OH', 'Franklin County Hospital'),
(2, 'Jeanette', 'Ann', 'Holland', '1968-12-27 00:00:00', 'Chicago', 'IL', 'Saint Anne''s Hospital'),
(3, 'Leah', 'Patricia', 'Holland', '2004-12-03 16:29:00', 'Scottsdale', 'AZ', 'Scottsdale Healthcare - Shea'),
(4, 'Jason', 'Spriggs', 'Holland', '2008-04-03 16:07:00', 'Tucson', 'AZ', 'University Medical Center'),
(5, 'Keira', 'Moylan', 'Holland', '2008-12-01 02:13:00', 'Phoenix', 'AZ', 'Saint Joeseph''s Hospital'),
(6, 'Stanley', 'David', 'Holland', '1968-07-08 10:05:00', 'Columbus', 'OH', 'Franklin County Hospital'),
(7, 'Vernon', 'Clabron', 'Holland III', '1964-09-09 10:05:00', 'Columbus', 'OH', 'Franklin County Hospital');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `h_person`
--
ALTER TABLE `h_person`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `h_person`
--
ALTER TABLE `h_person`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
