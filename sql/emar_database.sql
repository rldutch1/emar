-- MySQL dump 10.14  Distrib 5.5.39-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: emar
-- ------------------------------------------------------
-- Server version	5.5.39-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `h_mar`
--

DROP TABLE IF EXISTS `h_mar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_mar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `medication` int(11) NOT NULL,
  `dose` varchar(100) NOT NULL,
  `unit` int(11) NOT NULL,
  `admin_dttm` datetime NOT NULL,
  `symptom` varchar(100) DEFAULT NULL,
  `active_ind` int(1) NOT NULL DEFAULT '1' COMMENT '1 if row is active, 0 if in error or incorrect.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_mar`
--

LOCK TABLES `h_mar` WRITE;
/*!40000 ALTER TABLE `h_mar` DISABLE KEYS */;
INSERT INTO `h_mar` (`id`, `person_id`, `medication`, `dose`, `unit`, `admin_dttm`, `symptom`, `active_ind`) VALUES (1,5,2,'208',7,'2013-08-23 06:19:00',NULL,1),(2,5,5,'150',7,'2013-08-23 10:00:00',NULL,1),(3,5,2,'208',7,'2013-08-23 11:10:00',NULL,1),(4,5,2,'208',7,'2013-08-23 18:00:00',NULL,1),(5,5,5,'150',7,'2013-08-23 19:00:00',NULL,1),(6,5,2,'208',7,'2013-08-23 22:00:00',NULL,1),(7,5,2,'208',7,'2013-08-24 06:20:00',NULL,1),(8,5,2,'208',7,'2013-08-24 11:45:00',NULL,1),(9,5,2,'208',7,'2013-08-24 16:48:00',NULL,1),(10,4,3,'750',7,'2013-12-23 13:30:00',NULL,1),(11,4,3,'750',7,'2013-12-23 20:00:00',NULL,1),(12,4,3,'750',7,'2013-12-24 08:30:00',NULL,1),(13,4,3,'750',7,'2013-12-24 20:30:00',NULL,1),(14,4,3,'750',7,'2013-12-25 09:01:00',NULL,1),(15,4,3,'750',7,'2013-12-25 20:14:00',NULL,1),(16,4,3,'750',7,'2013-12-26 08:05:00',NULL,1),(17,4,3,'750',7,'2013-12-26 20:20:00',NULL,1),(18,4,3,'750',7,'2013-12-27 07:55:00',NULL,1),(19,4,3,'750',7,'2013-12-27 20:38:00',NULL,1),(20,4,3,'750',7,'2013-12-28 08:43:00',NULL,1),(21,4,3,'750',7,'2013-12-28 19:48:00',NULL,1),(22,4,3,'750',7,'2013-12-29 08:03:00',NULL,1),(23,4,3,'750',7,'2013-12-29 20:14:00',NULL,1),(24,4,3,'750',7,'2013-12-30 08:45:00',NULL,1),(25,4,3,'750',7,'2013-12-30 20:28:00',NULL,1),(26,4,3,'750',7,'2013-12-31 08:14:00',NULL,1),(27,4,3,'750',7,'2013-12-31 20:35:00',NULL,1),(28,4,3,'750',7,'2014-01-01 08:20:00',NULL,1),(29,4,3,'750',7,'2014-01-01 20:38:00',NULL,1),(30,3,2,'208',7,'2014-01-01 02:11:54',NULL,1),(31,4,2,'320',7,'2014-04-14 07:10:00',NULL,1),(32,4,2,'320',7,'2014-04-14 07:10:00',NULL,0),(33,3,2,'320',7,'2014-05-06 20:55:00',NULL,1),(34,3,5,'200',7,'2014-05-07 07:54:00',NULL,1),(35,3,4,'25',7,'2014-05-07 18:00:00',NULL,1),(36,3,5,'200',7,'2014-05-07 15:00:00',NULL,1),(37,5,2,'320',7,'2014-08-16 17:22:00',NULL,1),(38,5,2,'320',7,'2014-08-17 01:18:00',NULL,1),(39,5,2,'240',7,'2014-08-17 08:42:00',NULL,1),(40,5,2,'240',7,'2014-08-17 16:08:00',NULL,1),(41,5,2,'320',7,'2014-08-17 19:38:00',NULL,1),(42,3,5,'200',7,'2014-08-24 09:24:00',NULL,1),(43,3,2,'320',7,'2014-08-24 13:18:00',NULL,1),(44,3,5,'200',7,'2014-08-24 16:18:00',NULL,1),(45,3,2,'320',7,'2014-08-24 18:10:00',NULL,1),(46,3,5,'200',7,'2014-08-25 01:00:00',NULL,1),(47,3,2,'320',7,'2014-08-25 01:00:00',NULL,1),(48,3,2,'320',7,'2014-08-25 11:00:00',NULL,1),(49,3,5,'200',7,'2014-08-25 11:00:00',NULL,1),(50,3,2,'320',7,'2014-08-25 18:25:00',NULL,1),(51,3,5,'200',7,'2014-08-25 16:00:00',NULL,1),(52,3,2,'320',7,'2014-08-26 19:55:00',NULL,1),(53,4,2,'240',7,'2014-08-31 06:15:00',NULL,1),(54,4,2,'240',7,'2014-08-31 10:15:00',NULL,1),(55,5,2,'240',7,'2014-09-28 13:59:32',NULL,1),(56,5,5,'240',7,'2014-10-02 06:30:00',NULL,0),(57,5,5,'240',7,'2014-10-02 10:32:00',NULL,0),(58,5,5,'240',7,'2014-10-02 14:20:00',NULL,0),(59,5,5,'240',7,'2014-10-02 19:20:00',NULL,0),(60,5,2,'240',7,'2014-10-02 22:14:00',NULL,0),(61,5,2,'100',7,'2014-10-02 22:14:00',NULL,0),(62,5,2,'240',7,'2014-10-02 06:30:00',NULL,1),(63,5,2,'240',7,'2014-10-02 10:32:00',NULL,1),(64,5,2,'240',7,'2014-10-02 14:20:00',NULL,1),(65,5,2,'240',7,'2014-10-02 19:20:00',NULL,1),(66,5,5,'100',7,'2014-10-02 22:14:00',NULL,1),(67,5,2,'240',7,'2014-10-03 00:04:00',NULL,1),(68,5,2,'240',7,'2014-10-03 08:30:00',NULL,1),(69,5,5,'100',7,'2014-10-03 08:30:00',NULL,1),(70,5,6,'0',1,'2014-10-03 10:28:00',NULL,1),(71,5,2,'240',7,'2014-10-03 13:13:00',NULL,1),(72,5,5,'100',7,'2014-10-03 13:39:00',NULL,1),(73,5,2,'240',7,'2014-10-03 17:04:00',NULL,1),(74,3,5,'200',7,'2014-10-17 01:38:00',NULL,1),(75,3,5,'200',7,'2014-10-17 15:38:00',NULL,1),(76,5,2,'240',7,'2014-10-19 12:00:00',NULL,1),(77,3,5,'200',0,'2014-11-21 04:32:00',NULL,0),(78,3,5,'200',7,'2014-11-21 04:32:00',NULL,1),(79,5,6,'240',7,'2014-11-08 17:39:29',NULL,1),(80,5,4,'25',7,'2014-11-28 08:05:00',NULL,1),(81,5,6,'240',7,'2014-11-28 17:02:00',NULL,1),(82,2,2,'1000',7,'2014-11-29 17:55:00','Fever',1),(83,4,2,'320',7,'2014-12-02 07:40:00','Itchy throat',1),(84,3,2,'320',7,'2014-12-02 07:55:00','Body ache',1),(85,3,2,'320',7,'2014-12-02 13:11:00','Fever, Headache, home from school.',1),(86,3,5,'200',7,'2014-12-02 17:00:00','Fever, headache',1),(87,3,4,'25',7,'2014-12-02 18:30:00',NULL,1),(88,3,2,'325',7,'2014-12-02 19:30:00','Slight fever',1),(89,3,2,'325',7,'2014-12-03 07:50:00','Precautionary',1),(90,3,2,'325',7,'2014-12-03 15:08:00',NULL,1),(91,3,2,'325',7,'2014-12-03 20:08:00','Fever',1),(92,3,2,'325',7,'2014-12-04 18:45:00','Headache',1),(93,0,0,'',0,'0000-00-00 00:00:00',NULL,0),(94,3,4,'25',7,'2014-12-04 19:00:00','Headache',1),(95,3,7,'9mL',7,'2014-12-05 20:45:00','Fever, pink eye, ear infection',1),(96,3,8,'2',6,'2014-12-05 20:45:00','Pink eye',1),(97,3,7,'9mL',7,'2014-12-06 08:00:00','Ear infection',1),(98,3,8,'2',6,'2014-12-06 08:10:00','Pink eye.',1);
/*!40000 ALTER TABLE `h_mar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_med`
--

DROP TABLE IF EXISTS `h_med`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_med` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `medication` varchar(200) NOT NULL,
  `active_ind` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `medication` (`medication`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_med`
--

LOCK TABLES `h_med` WRITE;
/*!40000 ALTER TABLE `h_med` DISABLE KEYS */;
INSERT INTO `h_med` (`id`, `medication`, `active_ind`) VALUES (1,'None Given',1),(2,'Acetaminophen',1),(3,'Amoxicillin 250/5mL',1),(4,'Benadryl',1),(5,'Ibuprofen',1),(6,'Asprin',1),(7,'Amoxicillin 400/5mL',1),(8,'Ofloxacin 0.3%',1);
/*!40000 ALTER TABLE `h_med` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_person`
--

DROP TABLE IF EXISTS `h_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_person` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `birth_date` datetime NOT NULL,
  `birth_city` varchar(100) DEFAULT NULL,
  `birth_state` varchar(100) DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL,
  `active_ind` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_person`
--

LOCK TABLES `h_person` WRITE;
/*!40000 ALTER TABLE `h_person` DISABLE KEYS */;
INSERT INTO `h_person` (`id`, `firstname`, `middlename`, `lastname`, `birth_date`, `birth_city`, `birth_state`, `birth_place`, `active_ind`) VALUES (1,'Robert','Lester','Holland','1968-07-08 10:07:00','Columbus','OH','Franklin County Hospital',1),(2,'Jeanette','Ann','Holland','1968-12-27 00:00:00','Chicago','IL','Saint Anne\'s Hospital',1),(3,'Leah','Patricia','Holland','2004-12-03 16:29:00','Scottsdale','AZ','Scottsdale Healthcare - Shea',1),(4,'Jason','Spriggs','Holland','2008-04-03 16:07:00','Tucson','AZ','University Medical Center',1),(5,'Keira','Moylan','Holland','2008-12-01 02:13:00','Phoenix','AZ','Saint Joeseph\'s Hospital',1),(6,'Stanley','David','Holland','1968-07-08 10:05:00','Columbus','OH','Franklin County Hospital',1),(7,'Vernon','Clabron','Holland III','1964-09-09 10:05:00','Columbus','OH','Franklin County Hospital',1);
/*!40000 ALTER TABLE `h_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_temp`
--

DROP TABLE IF EXISTS `h_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_temp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `temp_f` float NOT NULL,
  `person_id` int(11) NOT NULL,
  `temp_dttm` datetime NOT NULL,
  `active_ind` int(11) NOT NULL DEFAULT '1',
  `symptom` varchar(200) NOT NULL DEFAULT '--',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_temp`
--

LOCK TABLES `h_temp` WRITE;
/*!40000 ALTER TABLE `h_temp` DISABLE KEYS */;
INSERT INTO `h_temp` (`id`, `temp_f`, `person_id`, `temp_dttm`, `active_ind`, `symptom`) VALUES (1,102.6,5,'2013-08-23 06:19:00',1,'--'),(2,99.5,5,'2013-08-23 11:10:00',1,'--'),(3,98.7,5,'2013-08-23 18:00:00',1,'--'),(4,101.1,5,'2013-08-23 19:00:00',1,'--'),(5,101.2,5,'2013-08-24 07:35:00',1,'--'),(6,99,5,'2013-08-24 11:55:00',1,'--'),(7,99.8,5,'2013-08-24 16:45:00',1,'--'),(8,99.3,3,'2014-01-01 02:11:54',1,'--'),(9,100.7,4,'2013-12-25 18:49:44',1,'--'),(10,98.4,4,'2013-12-24 12:11:03',1,'--'),(11,102.2,4,'2013-12-24 23:00:00',1,'--'),(12,101.7,4,'2013-12-23 09:27:46',1,'--'),(13,101.1,4,'2013-12-22 09:19:25',1,'--'),(14,100.8,4,'2013-12-21 13:25:06',1,'--'),(15,100.7,4,'2013-12-21 12:19:38',1,'--'),(16,98.9,5,'2013-12-02 00:48:01',1,'--'),(17,100,5,'2013-10-23 23:21:17',1,'--'),(18,97.9,3,'2014-05-06 10:20:00',1,'--'),(19,97.9,3,'2014-05-06 11:23:00',1,'--'),(20,97.7,3,'2014-05-06 13:45:00',1,'--'),(21,97.7,5,'2014-06-08 08:45:26',1,'--'),(22,100,5,'2014-08-16 14:47:00',1,'--'),(23,100.3,5,'2014-08-16 17:22:00',1,'--'),(24,102,5,'2014-08-17 01:18:00',1,'--'),(25,99.2,5,'2014-08-17 08:42:00',1,'--'),(26,98.6,5,'2014-08-17 12:05:00',1,'--'),(27,100,5,'2014-08-17 15:55:00',1,'--'),(28,97.7,5,'2014-08-17 18:30:00',1,'--'),(29,100.5,3,'2014-08-24 13:18:00',1,'Headache'),(30,100.7,3,'2014-08-24 16:39:00',1,'--'),(31,99.4,3,'2014-08-25 01:00:00',1,'--'),(32,98.8,3,'2014-08-25 07:38:00',1,'--'),(33,99.3,3,'2014-08-25 11:00:00',1,'--'),(34,98.3,3,'2014-08-25 18:25:00',1,'--'),(35,98.8,3,'2014-08-26 19:55:00',1,'--'),(36,101.3,4,'2014-08-31 06:15:00',1,'Headache'),(37,98.6,4,'2014-08-31 10:15:00',1,'--'),(38,97.6,5,'2014-09-28 13:55:02',1,'Headache'),(39,99.9,5,'2014-10-02 06:30:00',1,'Fever'),(40,100.3,5,'2014-10-02 10:32:00',1,'Fever'),(41,98.6,5,'2014-10-02 14:20:00',1,'Fever'),(42,102.1,5,'2014-10-02 19:20:00',1,'Fever'),(43,99.6,5,'2014-10-02 22:14:00',1,'Fever'),(44,101.4,5,'2014-10-03 00:04:00',1,'Fever'),(45,99,5,'2014-10-03 08:30:00',1,'Headache, fever'),(46,100.1,5,'2014-10-03 10:28:00',1,'Fever, No meds because too soon since last administration.'),(47,101.1,5,'2014-10-03 13:13:00',1,'Fever'),(48,0,5,'2014-10-03 13:39:00',0,'Headache'),(49,98.8,5,'2014-10-03 17:04:00',1,'Fever'),(50,0,3,'2014-10-17 01:38:00',0,'Sore throat'),(51,0,3,'2014-10-17 15:38:00',0,'Sore throat'),(52,97.7,5,'2014-10-19 12:00:00',1,'Stomach ache'),(53,98.4,5,'2014-11-28 14:22:11',1,'No appetite. '),(54,99.2,2,'2014-11-29 17:55:00',1,'Headache'),(55,97.6,4,'2014-12-02 07:40:00',1,'Ichy throat.'),(56,97.7,3,'2014-12-02 07:55:00',1,'Body ache'),(57,99.9,3,'2014-12-02 13:11:00',1,'Fever, Headache'),(58,100.9,3,'2014-12-02 17:00:00',1,'Fever, Headache'),(59,98.7,3,'2014-12-02 19:30:00',1,'Slight fever'),(60,100.1,3,'2014-12-03 15:08:00',1,'--'),(61,99.6,3,'2014-12-03 20:08:00',1,'Fever'),(62,99.7,3,'2014-12-05 17:30:00',1,'fever'),(63,99.5,3,'2014-12-05 19:30:00',1,'fever');
/*!40000 ALTER TABLE `h_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_unit`
--

DROP TABLE IF EXISTS `h_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_unit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unit` varchar(10) NOT NULL,
  `active_ind` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_unit`
--

LOCK TABLES `h_unit` WRITE;
/*!40000 ALTER TABLE `h_unit` DISABLE KEYS */;
INSERT INTO `h_unit` (`id`, `unit`, `active_ind`) VALUES (1,'None',1),(2,'mcg',1),(3,'mL',1),(4,'tsp',1),(5,'TBS',1),(6,'gtt',1),(7,'mg',1);
/*!40000 ALTER TABLE `h_unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-06  9:19:49
