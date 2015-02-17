-- MySQL dump 10.14  Distrib 5.5.41-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: emar
-- ------------------------------------------------------
-- Server version	5.5.41-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_mar`
--

LOCK TABLES `h_mar` WRITE;
/*!40000 ALTER TABLE `h_mar` DISABLE KEYS */;
INSERT INTO `h_mar` (`id`, `person_id`, `medication`, `dose`, `unit`, `admin_dttm`, `symptom`, `active_ind`) VALUES (1,5,2,'208',7,'2013-08-23 06:19:00',NULL,1),(2,5,5,'150',7,'2013-08-23 10:00:00',NULL,1),(3,5,2,'208',7,'2013-08-23 11:10:00',NULL,1),(4,5,2,'208',7,'2013-08-23 18:00:00',NULL,1),(5,5,5,'150',7,'2013-08-23 19:00:00',NULL,1),(6,5,2,'208',7,'2013-08-23 22:00:00',NULL,1),(7,5,2,'208',7,'2013-08-24 06:20:00',NULL,1),(8,5,2,'208',7,'2013-08-24 11:45:00',NULL,1),(9,5,2,'208',7,'2013-08-24 16:48:00',NULL,1),(10,4,3,'750',7,'2013-12-23 13:30:00',NULL,1),(11,4,3,'750',7,'2013-12-23 20:00:00',NULL,1),(12,4,3,'750',7,'2013-12-24 08:30:00',NULL,1),(13,4,3,'750',7,'2013-12-24 20:30:00',NULL,1),(14,4,3,'750',7,'2013-12-25 09:01:00',NULL,1),(15,4,3,'750',7,'2013-12-25 20:14:00',NULL,1),(16,4,3,'750',7,'2013-12-26 08:05:00',NULL,1),(17,4,3,'750',7,'2013-12-26 20:20:00',NULL,1),(18,4,3,'750',7,'2013-12-27 07:55:00',NULL,1),(19,4,3,'750',7,'2013-12-27 20:38:00',NULL,1),(20,4,3,'750',7,'2013-12-28 08:43:00',NULL,1),(21,4,3,'750',7,'2013-12-28 19:48:00',NULL,1),(22,4,3,'750',7,'2013-12-29 08:03:00',NULL,1),(23,4,3,'750',7,'2013-12-29 20:14:00',NULL,1),(24,4,3,'750',7,'2013-12-30 08:45:00',NULL,1),(25,4,3,'750',7,'2013-12-30 20:28:00',NULL,1),(26,4,3,'750',7,'2013-12-31 08:14:00',NULL,1),(27,4,3,'750',7,'2013-12-31 20:35:00',NULL,1),(28,4,3,'750',7,'2014-01-01 08:20:00',NULL,1),(29,4,3,'750',7,'2014-01-01 20:38:00',NULL,1),(30,3,2,'208',7,'2014-01-01 02:11:54',NULL,1),(31,4,2,'320',7,'2014-04-14 07:10:00',NULL,1),(32,4,2,'320',7,'2014-04-14 07:10:00',NULL,0),(33,3,2,'320',7,'2014-05-06 20:55:00',NULL,1),(34,3,5,'200',7,'2014-05-07 07:54:00',NULL,1),(35,3,4,'25',7,'2014-05-07 18:00:00',NULL,1),(36,3,5,'200',7,'2014-05-07 15:00:00',NULL,1),(37,5,2,'320',7,'2014-08-16 17:22:00',NULL,1),(38,5,2,'320',7,'2014-08-17 01:18:00',NULL,1),(39,5,2,'240',7,'2014-08-17 08:42:00',NULL,1),(40,5,2,'240',7,'2014-08-17 16:08:00',NULL,1),(41,5,2,'320',7,'2014-08-17 19:38:00',NULL,1),(42,3,5,'200',7,'2014-08-24 09:24:00',NULL,1),(43,3,2,'320',7,'2014-08-24 13:18:00',NULL,1),(44,3,5,'200',7,'2014-08-24 16:18:00',NULL,1),(45,3,2,'320',7,'2014-08-24 18:10:00',NULL,1),(46,3,5,'200',7,'2014-08-25 01:00:00',NULL,1),(47,3,2,'320',7,'2014-08-25 01:00:00',NULL,1),(48,3,2,'320',7,'2014-08-25 11:00:00',NULL,1),(49,3,5,'200',7,'2014-08-25 11:00:00',NULL,1),(50,3,2,'320',7,'2014-08-25 18:25:00',NULL,1),(51,3,5,'200',7,'2014-08-25 16:00:00',NULL,1),(52,3,2,'320',7,'2014-08-26 19:55:00',NULL,1),(53,4,2,'240',7,'2014-08-31 06:15:00',NULL,1),(54,4,2,'240',7,'2014-08-31 10:15:00',NULL,1),(55,5,2,'240',7,'2014-09-28 13:59:32',NULL,1),(56,5,5,'240',7,'2014-10-02 06:30:00',NULL,0),(57,5,5,'240',7,'2014-10-02 10:32:00',NULL,0),(58,5,5,'240',7,'2014-10-02 14:20:00',NULL,0),(59,5,5,'240',7,'2014-10-02 19:20:00',NULL,0),(60,5,2,'240',7,'2014-10-02 22:14:00',NULL,0),(61,5,2,'100',7,'2014-10-02 22:14:00',NULL,0),(62,5,2,'240',7,'2014-10-02 06:30:00',NULL,1),(63,5,2,'240',7,'2014-10-02 10:32:00',NULL,1),(64,5,2,'240',7,'2014-10-02 14:20:00',NULL,1),(65,5,2,'240',7,'2014-10-02 19:20:00',NULL,1),(66,5,5,'100',7,'2014-10-02 22:14:00',NULL,1),(67,5,2,'240',7,'2014-10-03 00:04:00',NULL,1),(68,5,2,'240',7,'2014-10-03 08:30:00',NULL,1),(69,5,5,'100',7,'2014-10-03 08:30:00',NULL,1),(70,5,6,'0',1,'2014-10-03 10:28:00',NULL,1),(71,5,2,'240',7,'2014-10-03 13:13:00',NULL,1),(72,5,5,'100',7,'2014-10-03 13:39:00',NULL,1),(73,5,2,'240',7,'2014-10-03 17:04:00',NULL,1),(74,3,5,'200',7,'2014-10-17 01:38:00',NULL,1),(75,3,5,'200',7,'2014-10-17 15:38:00',NULL,1),(76,5,2,'240',7,'2014-10-19 12:00:00',NULL,1),(77,3,5,'200',0,'2014-11-21 04:32:00',NULL,0),(78,3,5,'200',7,'2014-11-21 04:32:00',NULL,1),(79,5,6,'240',7,'2014-11-08 17:39:29',NULL,1),(80,5,4,'25',7,'2014-11-28 08:05:00',NULL,1),(81,5,6,'240',7,'2014-11-28 17:02:00',NULL,1),(82,2,2,'1000',7,'2014-11-29 17:55:00','Fever',1),(83,4,2,'320',7,'2014-12-02 07:40:00','Itchy throat',1),(84,3,2,'320',7,'2014-12-02 07:55:00','Body ache',1),(85,3,2,'320',7,'2014-12-02 13:11:00','Fever, Headache, home from school.',1),(86,3,5,'200',7,'2014-12-02 17:00:00','Fever, headache',1),(87,3,4,'25',7,'2014-12-02 18:30:00',NULL,1),(88,3,2,'325',7,'2014-12-02 19:30:00','Slight fever',1),(89,3,2,'325',7,'2014-12-03 07:50:00','Precautionary',1),(90,3,2,'325',7,'2014-12-03 15:08:00',NULL,1),(91,3,2,'325',7,'2014-12-03 20:08:00','Fever',1),(92,3,2,'325',7,'2014-12-04 18:45:00','Headache',1),(93,0,0,'',0,'0000-00-00 00:00:00',NULL,0),(94,3,4,'25',7,'2014-12-04 19:00:00','Headache',1),(95,3,8,'2',6,'2014-12-06 16:30:00','Pink eye',1),(96,3,8,'2',6,'2014-12-06 20:30:00','Pink eye',1),(97,3,7,'9',3,'2014-12-06 19:30:00','Ear infection',1),(98,3,8,'2',6,'2014-12-06 07:52:00','Pink eye.',1),(99,3,8,'2',6,'2014-12-06 12:10:00','Pink Eye',1),(100,3,8,'2',6,'2014-12-06 16:30:00','Pink eye',1),(101,3,8,'2',6,'2014-12-06 20:30:00','Pink eye',1),(102,3,7,'9',3,'2014-12-06 19:30:00','Ear infection',1),(103,3,7,'9',3,'2014-12-07 08:10:00','Ear infection',1),(104,3,8,'2',6,'2014-12-07 08:10:00','Pink eye',1),(105,3,8,'2',6,'2014-12-07 12:13:00','Pink eye',1),(106,3,8,'2',6,'2014-12-07 16:08:00','Pink eye',1),(107,3,8,'2',6,'2014-12-07 20:10:00','Pink eye',1),(108,3,7,'9',3,'2014-12-07 20:10:00','Ear infection',1),(109,3,8,'2',6,'2014-12-08 07:35:00','Pink eye',1),(110,3,7,'9',3,'2014-12-08 07:35:00','Ear infection',1),(111,3,8,'2',6,'2014-12-08 16:05:00','Pink eye',1),(112,3,7,'9',3,'2014-12-08 20:25:00','Ear infection',1),(113,3,8,'2',6,'2014-12-08 20:25:00','Pink eye',1),(114,3,8,'2',6,'2014-12-09 07:25:00','Pink eye',1),(115,3,7,'9',3,'2014-12-09 07:25:00','Ear infection',1),(116,3,8,'2',6,'2014-12-09 16:02:00','Pink eye',1),(117,3,7,'9',3,'2014-12-09 20:07:00','Ear infection',1),(118,3,8,'2',6,'2014-12-09 20:07:00','Pink eye',1),(119,3,8,'2',6,'2014-12-10 08:07:00','Pink eye',1),(120,3,7,'9',3,'2014-12-10 08:07:00','Ear infection',1),(121,3,8,'2',6,'2014-12-10 16:02:00','Pink eye',1),(122,3,7,'9',3,'2014-12-10 20:10:00','Ear infection',1),(123,3,8,'2',6,'2014-12-10 20:10:00','Pink eye',1),(124,3,7,'9',3,'2014-12-11 08:17:00','Ear infection',1),(125,3,7,'9',3,'2014-12-11 18:00:00','Ear infection',1),(126,1,9,'2',8,'2014-12-09 08:20:00','Cough',1),(127,2,9,'2',8,'2014-12-09 08:20:00','Cough',1),(128,1,9,'2',8,'2014-12-09 18:30:00','Cough',1),(129,2,9,'2',8,'2014-12-09 18:30:00','Cough',1),(130,2,9,'2',8,'2014-12-10 07:33:00','Cough',1),(131,2,9,'2',8,'2014-12-10 21:30:00','Cough',1),(132,1,9,'2',8,'2014-12-11 08:04:00','Cough',1),(133,2,9,'2',8,'2014-12-11 08:34:00','Cough',1),(134,2,2,'500',7,'2014-12-12 08:05:00','Cough, itchy throat.',1),(135,1,2,'500',7,'2014-12-12 08:05:00','Cough, itchy throat.',1),(136,2,10,'2',9,'2014-12-12 08:05:00','Cough, itchy throat.',1),(137,1,10,'2',9,'2014-12-12 08:23:00','Cough, itchy throat.',1),(138,2,2,'500',7,'2014-12-12 18:11:00','Cough',1),(139,2,2,'500',7,'2014-12-13 08:30:00','Cough',1),(140,2,10,'2',9,'2014-12-13 08:30:00','Cough',1),(141,2,11,'1',8,'2014-12-13 08:30:00','Cough',1),(142,1,10,'2',8,'2014-12-13 18:11:00','Cough, headache',1),(143,3,7,'9',3,'2014-12-12 07:50:00','Ear Infection',1),(144,3,7,'9',3,'2014-12-12 20:00:00','Ear Infection',1),(145,3,7,'9',3,'2014-12-13 07:55:00','Ear Infection',1),(146,3,7,'9',3,'2014-12-13 20:29:00','Ear Infection',1),(147,3,1,'0',1,'2014-12-14 08:00:00','Ear Infection. Missed Dose',1),(148,3,7,'9',3,'2014-12-14 15:39:00','Ear Infection',1),(149,3,7,'9',3,'2014-12-15 07:52:00','Ear Infection',1),(150,1,5,'800',7,'2014-12-15 12:32:00','Headache',1),(151,1,2,'1000',7,'2014-12-17 07:41:00','Body ache',1),(152,1,5,'800',7,'2014-12-17 07:41:00','Body ache',1),(153,3,5,'200',7,'2014-12-18 15:54:00','Fever',1),(154,3,4,'25',7,'2014-12-18 15:54:00','Fever',1),(155,3,11,'1',8,'2014-12-18 15:54:00','runny nose.',1),(156,3,4,'25',7,'2014-12-19 15:30:00','Headache',1),(157,3,5,'200',7,'2014-12-19 15:30:00','Headache',1),(158,3,11,'1',8,'2014-12-19 15:30:00','Runny nose, headache',1),(159,3,2,'325',7,'2014-12-19 18:00:00','Headache',1),(160,3,5,'200',7,'2014-12-19 21:34:00','Fever',1),(161,3,2,'325',7,'2014-12-20 00:08:00','Fever',1),(162,3,2,'325',7,'2014-12-20 08:53:00','Fever',1),(163,3,5,'200',7,'2014-12-22 23:40:00','Sore Throat',1),(164,3,5,'200',7,'2014-12-23 21:08:00','Sore Throat',1),(165,3,5,'200',7,'2014-12-26 22:50:00','Sore Throat',1),(166,1,2,'1000',7,'2014-12-26 16:15:00','Sore Neck and headache',1),(167,1,5,'800',7,'2014-12-26 16:15:00','Sore neck and headache',1),(168,3,5,'200',7,'2014-12-28 20:35:00','Sore Throat',1),(169,3,12,'12',3,'2014-12-29 19:15:00','Strep Throat',1),(170,3,5,'200',7,'2014-12-29 20:00:00','Strep Throat',1),(171,3,12,'12',3,'2014-12-30 08:27:38','Strep Throat',1),(172,3,12,'12',3,'2014-12-30 21:15:08','Strep Throat',1),(173,3,12,'12',3,'2014-12-31 09:45:00','Strep Throat',1),(174,3,12,'12',3,'2014-12-31 17:40:00','Strep Throat',1),(175,3,12,'12',3,'2015-01-01 10:24:00','Strep Throat',1),(176,3,12,'12',3,'2015-01-01 19:41:13','Strep Throat',1),(177,3,12,'12',3,'2015-01-02 10:05:13','Strep Throat',1),(178,3,12,'12',3,'2015-01-03 08:40:00','Strep Throat',1),(179,3,12,'12',3,'2015-01-03 19:10:02','Strep Throat',1),(180,3,12,'12',3,'2015-01-04 09:29:08','Strep Throat',1),(181,3,12,'12',3,'2015-01-04 18:03:51','Strep Throat',1),(182,3,12,'12',3,'2015-01-05 08:17:55','Strep Throat',1),(183,3,12,'12',3,'2015-01-05 16:48:33','Strep Throat',1),(184,5,12,'12',3,'2015-01-05 18:50:11','Headache',1),(185,3,12,'12',3,'2015-01-06 07:50:11','Strep Throat',1),(186,3,12,'12',3,'2015-01-06 19:15:11','Strep Throat',1),(187,3,12,'12',3,'2015-01-07 08:15:59','Strep Throat',1),(188,3,12,'12',3,'2015-01-07 19:03:02','Strep Throat',1),(189,3,12,'12',3,'2015-01-08 07:44:22','Strep Throat',1),(190,3,12,'12',3,'2015-01-08 20:35:19','Strep Throat',1),(191,3,12,'12',3,'2015-01-09 07:35:08','Strep Throat',1),(192,3,4,'25',7,'2015-02-13 21:39:00','Allergies',1),(193,3,11,'1',8,'2015-02-13 21:39:00','Allergies',1),(194,1,2,'1000',7,'2015-02-14 19:30:00','Body Ache',1),(195,1,5,'800',7,'2015-02-14 19:30:00','Body Ache',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_med`
--

LOCK TABLES `h_med` WRITE;
/*!40000 ALTER TABLE `h_med` DISABLE KEYS */;
INSERT INTO `h_med` (`id`, `medication`, `active_ind`) VALUES (1,'None/Missed Dose',1),(2,'Acetaminophen',1),(3,'Amoxicillin 250/5mL',1),(4,'Benadryl',1),(5,'Ibuprofen',1),(6,'Asprin',1),(7,'Amoxicillin 400/5mL',1),(8,'Ofloxacin 0.3%',1),(9,'Mucinex DM',1),(10,'Sudafed PE',1),(11,'Aller-Tec',1),(12,'AMOX-CLAV ES 600MG/5ML Susp 125ML',1);
/*!40000 ALTER TABLE `h_med` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_med_ingredients`
--

DROP TABLE IF EXISTS `h_med_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_med_ingredients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `h_med_id` int(1) NOT NULL COMMENT 'id from h_med table',
  `ingredients` varchar(100) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_med_ingredients`
--

LOCK TABLES `h_med_ingredients` WRITE;
/*!40000 ALTER TABLE `h_med_ingredients` DISABLE KEYS */;
INSERT INTO `h_med_ingredients` (`id`, `h_med_id`, `ingredients`, `Type`) VALUES (1,9,'600 mg guaifenesin, 30 mg dextromethorphan HBr','Expectorant and Cough Suppressant'),(2,10,'Acetaminophen 325mg, Dextromethorphan HBr 10mg, Guaifenesin 100mg, Phenylephrine HCl 5mg.',NULL),(3,11,'Citirizine Hydrochloride Tablets 10mg','Antihistamine');
/*!40000 ALTER TABLE `h_med_ingredients` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
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
  `hm_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_temp`
--

LOCK TABLES `h_temp` WRITE;
/*!40000 ALTER TABLE `h_temp` DISABLE KEYS */;
INSERT INTO `h_temp` (`id`, `temp_f`, `person_id`, `temp_dttm`, `active_ind`, `symptom`, `hm_id`) VALUES (1,102.6,5,'2013-08-23 06:19:00',1,'--',0),(2,99.5,5,'2013-08-23 11:10:00',1,'--',0),(3,98.7,5,'2013-08-23 18:00:00',1,'--',0),(4,101.1,5,'2013-08-23 19:00:00',1,'--',0),(5,101.2,5,'2013-08-24 07:35:00',1,'--',0),(6,99,5,'2013-08-24 11:55:00',1,'--',0),(7,99.8,5,'2013-08-24 16:45:00',1,'--',0),(8,99.3,3,'2014-01-01 02:11:54',1,'--',0),(9,100.7,4,'2013-12-25 18:49:44',1,'--',0),(10,98.4,4,'2013-12-24 12:11:03',1,'--',0),(11,102.2,4,'2013-12-24 23:00:00',1,'--',0),(12,101.7,4,'2013-12-23 09:27:46',1,'--',0),(13,101.1,4,'2013-12-22 09:19:25',1,'--',0),(14,100.8,4,'2013-12-21 13:25:06',1,'--',0),(15,100.7,4,'2013-12-21 12:19:38',1,'--',0),(16,98.9,5,'2013-12-02 00:48:01',1,'--',0),(17,100,5,'2013-10-23 23:21:17',1,'--',0),(18,97.9,3,'2014-05-06 10:20:00',1,'--',0),(19,97.9,3,'2014-05-06 11:23:00',1,'--',0),(20,97.7,3,'2014-05-06 13:45:00',1,'--',0),(21,97.7,5,'2014-06-08 08:45:26',1,'--',0),(22,100,5,'2014-08-16 14:47:00',1,'--',0),(23,100.3,5,'2014-08-16 17:22:00',1,'--',0),(24,102,5,'2014-08-17 01:18:00',1,'--',0),(25,99.2,5,'2014-08-17 08:42:00',1,'--',0),(26,98.6,5,'2014-08-17 12:05:00',1,'--',0),(27,100,5,'2014-08-17 15:55:00',1,'--',0),(28,97.7,5,'2014-08-17 18:30:00',1,'--',0),(29,100.5,3,'2014-08-24 13:18:00',1,'Headache',0),(30,100.7,3,'2014-08-24 16:39:00',1,'--',0),(31,99.4,3,'2014-08-25 01:00:00',1,'--',0),(32,98.8,3,'2014-08-25 07:38:00',1,'--',0),(33,99.3,3,'2014-08-25 11:00:00',1,'--',0),(34,98.3,3,'2014-08-25 18:25:00',1,'--',0),(35,98.8,3,'2014-08-26 19:55:00',1,'--',0),(36,101.3,4,'2014-08-31 06:15:00',1,'Headache',0),(37,98.6,4,'2014-08-31 10:15:00',1,'--',0),(38,97.6,5,'2014-09-28 13:55:02',1,'Headache',0),(39,99.9,5,'2014-10-02 06:30:00',1,'Fever',0),(40,100.3,5,'2014-10-02 10:32:00',1,'Fever',0),(41,98.6,5,'2014-10-02 14:20:00',1,'Fever',0),(42,102.1,5,'2014-10-02 19:20:00',1,'Fever',0),(43,99.6,5,'2014-10-02 22:14:00',1,'Fever',0),(44,101.4,5,'2014-10-03 00:04:00',1,'Fever',0),(45,99,5,'2014-10-03 08:30:00',1,'Headache, fever',0),(46,100.1,5,'2014-10-03 10:28:00',1,'Fever, No meds because too soon since last administration.',0),(47,101.1,5,'2014-10-03 13:13:00',1,'Fever',0),(48,0,5,'2014-10-03 13:39:00',0,'Headache',0),(49,98.8,5,'2014-10-03 17:04:00',1,'Fever',0),(50,0,3,'2014-10-17 01:38:00',0,'Sore throat',0),(51,0,3,'2014-10-17 15:38:00',0,'Sore throat',0),(52,97.7,5,'2014-10-19 12:00:00',1,'Stomach ache',0),(53,98.4,5,'2014-11-28 14:22:11',1,'No appetite. ',0),(54,99.2,2,'2014-11-29 17:55:00',1,'Headache',0),(55,97.6,4,'2014-12-02 07:40:00',1,'Ichy throat.',0),(56,97.7,3,'2014-12-02 07:55:00',1,'Body ache',0),(57,99.9,3,'2014-12-02 13:11:00',1,'Fever, Headache',0),(58,100.9,3,'2014-12-02 17:00:00',1,'Fever, Headache',0),(59,98.7,3,'2014-12-02 19:30:00',1,'Slight fever',0),(60,100.1,3,'2014-12-03 15:08:00',1,'Fever',0),(61,99.6,3,'2014-12-03 20:08:00',1,'Fever',0),(62,99.7,3,'2014-12-05 17:30:00',1,'fever',0),(63,99.5,3,'2014-12-05 19:30:00',1,'fever',0),(64,100.3,3,'2014-12-18 15:53:00',1,'Headache',0),(65,101.3,3,'2014-12-19 18:00:00',1,'Headache',0),(66,101,3,'2014-12-19 21:34:00',1,'Chills',0),(67,102,3,'2014-12-20 00:08:00',1,'Feeling hot',0),(68,99.7,3,'2014-12-20 08:24:00',1,'Feeling hot',0),(69,0,3,'2015-01-01 19:41:13',1,'Strep Throat',176),(70,0,3,'2015-01-02 10:05:13',1,'Strep Throat',177),(71,0,3,'2015-01-03 08:40:00',1,'Strep Throat',178),(72,0,3,'2015-01-03 19:10:02',1,'Strep Throat',179),(73,0,3,'2015-01-04 09:29:08',1,'Strep Throat',180),(74,0,3,'2015-01-04 18:03:51',1,'Strep Throat',181),(75,0,3,'2015-01-05 08:17:55',1,'Strep Throat',182),(76,0,3,'2015-01-05 16:48:33',1,'Strep Throat',183),(77,97.9,5,'2015-01-05 18:50:11',1,'Headache',184),(78,0,3,'2015-01-06 07:50:11',1,'Strep Throat',185),(79,0,3,'2015-01-06 19:15:11',1,'Strep Throat',186),(80,0,3,'2015-01-07 08:15:59',1,'Strep Throat',187),(81,0,3,'2015-01-07 19:03:02',1,'Strep Throat',188),(82,0,3,'2015-01-08 07:44:22',1,'Strep Throat',189),(83,0,3,'2015-01-08 20:35:19',1,'Strep Throat',190),(84,0,3,'2015-01-09 07:35:08',1,'Strep Throat',191),(85,0,3,'2015-02-13 21:39:00',1,'Allergies',192),(86,0,3,'2015-02-13 21:39:00',1,'Allergies',193),(87,0,1,'2015-02-14 19:30:00',1,'Body Ache',194),(88,0,1,'2015-02-14 19:30:00',1,'Body Ache',195);
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
  `unit` varchar(20) NOT NULL,
  `active_ind` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_unit`
--

LOCK TABLES `h_unit` WRITE;
/*!40000 ALTER TABLE `h_unit` DISABLE KEYS */;
INSERT INTO `h_unit` (`id`, `unit`, `active_ind`) VALUES (1,'None/Missed Dose',1),(2,'mcg',1),(3,'mL',1),(4,'tsp',1),(5,'TBS',1),(6,'gtt',1),(7,'mg',1),(8,'Tablet',1),(9,'Capsule',1);
/*!40000 ALTER TABLE `h_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_healthmar`
--

DROP TABLE IF EXISTS `vw_healthmar`;
/*!50001 DROP VIEW IF EXISTS `vw_healthmar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_healthmar` (
  `person` tinyint NOT NULL,
  `medication` tinyint NOT NULL,
  `dose_unit` tinyint NOT NULL,
  `date_time` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_temp`
--

DROP TABLE IF EXISTS `vw_temp`;
/*!50001 DROP VIEW IF EXISTS `vw_temp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_temp` (
  `person` tinyint NOT NULL,
  `celcius` tinyint NOT NULL,
  `Fahrenheit` tinyint NOT NULL,
  `date_time` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_healthmar`
--

/*!50001 DROP TABLE IF EXISTS `vw_healthmar`*/;
/*!50001 DROP VIEW IF EXISTS `vw_healthmar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_healthmar` AS select concat(`p`.`firstname`,' ',`p`.`middlename`,' ',`p`.`lastname`,' ') AS `person`,`med`.`medication` AS `medication`,concat(`m`.`dose`,' ',`u`.`unit`) AS `dose_unit`,`m`.`admin_dttm` AS `date_time` from (((`h_mar` `m` join `h_person` `p` on(((`m`.`person_id` = `p`.`id`) and (`m`.`active_ind` = 1)))) join `h_med` `med` on(((`m`.`medication` = `med`.`id`) and (`med`.`active_ind` = 1)))) join `h_unit` `u` on(((`m`.`unit` = `u`.`id`) and (`u`.`active_ind` = 1)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_temp`
--

/*!50001 DROP TABLE IF EXISTS `vw_temp`*/;
/*!50001 DROP VIEW IF EXISTS `vw_temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_temp` AS select concat(`p`.`firstname`,' ',`p`.`middlename`,' ',`p`.`lastname`,' ') AS `person`,substr(((`t`.`temp_f` - 32) * (5 / 9)),1,5) AS `celcius`,`t`.`temp_f` AS `Fahrenheit`,`t`.`temp_dttm` AS `date_time` from (`h_temp` `t` join `h_person` `p` on(((`t`.`person_id` = `p`.`id`) and (`t`.`active_ind` = 1)))) order by `t`.`temp_dttm` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-16 19:54:45
