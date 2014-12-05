-- phpMyAdmin SQL Dump
-- version 4.2.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2014 at 06:35 AM
-- Server version: 5.5.36-cll-lve
-- PHP Version: 5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `robdba5`
--

-- --------------------------------------------------------

--
-- Table structure for table `h_med`
--

DROP TABLE IF EXISTS `h_med`;
CREATE TABLE IF NOT EXISTS `h_med` (
`id` int(11) unsigned NOT NULL,
  `medication` varchar(200) NOT NULL,
  `active_ind` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `h_med`
--

INSERT INTO `h_med` (`id`, `medication`, `active_ind`) VALUES
(1, 'None Given', 1),
(2, 'Acetaminophen', 1),
(3, 'Amoxicillin 250/5mL', 1),
(4, 'Benadryl', 1),
(5, 'Ibuprofen', 1),
(6, 'Asprin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `h_med`
--
ALTER TABLE `h_med`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `medication` (`medication`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `h_med`
--
ALTER TABLE `h_med`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
