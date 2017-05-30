-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gregs_list
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Temporary view structure for view `check_genders`
--

DROP TABLE IF EXISTS `check_genders`;
/*!50001 DROP VIEW IF EXISTS `check_genders`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `check_genders` AS SELECT 
 1 AS `gender`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `contact_interest`
--

DROP TABLE IF EXISTS `contact_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_interest` (
  `contact_id` int(11) DEFAULT NULL,
  `interest_id` int(11) DEFAULT NULL,
  KEY `my_contacts_contact_id_fk1` (`contact_id`),
  KEY `interests_interest_id_fk` (`interest_id`),
  CONSTRAINT `interests_interest_id_fk` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`interest_id`),
  CONSTRAINT `my_contacts_contact_id_fk1` FOREIGN KEY (`contact_id`) REFERENCES `my_contacts` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_interest`
--

LOCK TABLES `contact_interest` WRITE;
/*!40000 ALTER TABLE `contact_interest` DISABLE KEYS */;
INSERT INTO `contact_interest` VALUES (1,4),(1,12),(2,11),(3,5),(3,3),(3,9),(4,2),(4,9),(4,5),(4,3),(5,3),(5,7),(5,1),(6,3),(7,8),(7,5),(7,6),(14,10);
/*!40000 ALTER TABLE `contact_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_seeking`
--

DROP TABLE IF EXISTS `contact_seeking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_seeking` (
  `contact_id` int(11) DEFAULT NULL,
  `seeking_id` int(11) DEFAULT NULL,
  KEY `my_contacts_contact_id_fk` (`contact_id`),
  KEY `seeking_seeking_id_fk` (`seeking_id`),
  CONSTRAINT `my_contacts_contact_id_fk` FOREIGN KEY (`contact_id`) REFERENCES `my_contacts` (`contact_id`),
  CONSTRAINT `seeking_seeking_id_fk` FOREIGN KEY (`seeking_id`) REFERENCES `seeking` (`seeking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_seeking`
--

LOCK TABLES `contact_seeking` WRITE;
/*!40000 ALTER TABLE `contact_seeking` DISABLE KEYS */;
INSERT INTO `contact_seeking` VALUES (1,2),(2,1),(3,5),(4,6),(5,3),(6,4),(7,7),(14,2);
/*!40000 ALTER TABLE `contact_seeking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `gender_w`
--

DROP TABLE IF EXISTS `gender_w`;
/*!50001 DROP VIEW IF EXISTS `gender_w`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gender_w` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `interest_id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`interest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,'geo-search'),(2,'detectives'),(3,'animals'),(4,'kayak'),(5,'cinema'),(6,'books'),(7,'collectible cards'),(8,'cookery'),(9,'horses'),(10,'cars'),(11,'not known'),(12,'terrarium');
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_current`
--

DROP TABLE IF EXISTS `job_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_current` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  CONSTRAINT `my_contacts_contact_id_fk2` FOREIGN KEY (`contact_id`) REFERENCES `my_contacts` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_current`
--

LOCK TABLES `job_current` WRITE;
/*!40000 ALTER TABLE `job_current` DISABLE KEYS */;
INSERT INTO `job_current` VALUES (1,'Writer',7500.00,'2010-11-04'),(4,'Vet',3500.00,'2015-01-25'),(5,'Clown',5000.00,'2013-04-12'),(6,'Painter',5000.50,'2012-07-14'),(14,'Farmer',4500.00,'2016-02-20');
/*!40000 ALTER TABLE `job_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_desired`
--

DROP TABLE IF EXISTS `job_desired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_desired` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `salary_low` decimal(8,2) DEFAULT NULL,
  `salary_high` decimal(8,2) DEFAULT NULL,
  `available` char(1) DEFAULT NULL,
  `years_exp` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  CONSTRAINT `my_contacts_contact_id_fk3` FOREIGN KEY (`contact_id`) REFERENCES `my_contacts` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_desired`
--

LOCK TABLES `job_desired` WRITE;
/*!40000 ALTER TABLE `job_desired` DISABLE KEYS */;
INSERT INTO `job_desired` VALUES (1,'Writer',8500.00,10000.00,'N',6.5),(4,'Vet',4000.00,6000.00,'Y',2.2),(6,'Painter',6000.00,8000.00,'Y',5.0),(14,'Programmer',6000.00,12000.00,'Y',1.0);
/*!40000 ALTER TABLE `job_desired` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_listings`
--

DROP TABLE IF EXISTS `job_listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_listings` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_listings`
--

LOCK TABLES `job_listings` WRITE;
/*!40000 ALTER TABLE `job_listings` DISABLE KEYS */;
INSERT INTO `job_listings` VALUES (1,'Postman',5550.00,'Austin','Fjkdfg bnbcnxereu eureyu hfdh'),(2,'Programmer',12000.00,'Kharkiv','Tkj kjfkd djfkjdk, djfj'),(3,'Farmer',8000.00,'Princeton','B fhdjf. fdbfdf, fdfhd'),(4,'Painter',7000.00,'Pflugerville','Dhgfhd fhdjkf dhfjh!');
/*!40000 ALTER TABLE `job_listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `job_raises`
--

DROP TABLE IF EXISTS `job_raises`;
/*!50001 DROP VIEW IF EXISTS `job_raises`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `job_raises` AS SELECT 
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `email`,
 1 AS `phone`,
 1 AS `salary`,
 1 AS `salarylow`,
 1 AS `raise`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `my_contacts`
--

DROP TABLE IF EXISTS `my_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(30) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `prof_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `profession_prof_id_fk` (`prof_id`),
  KEY `status_status_id_fk` (`status_id`),
  KEY `zip_code_zip_code_fk` (`zip_code`),
  CONSTRAINT `profession_prof_id_fk` FOREIGN KEY (`prof_id`) REFERENCES `profession` (`prof_id`),
  CONSTRAINT `status_status_id_fk` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  CONSTRAINT `zip_code_zip_code_fk` FOREIGN KEY (`zip_code`) REFERENCES `zip_code` (`zip_code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_contacts`
--

LOCK TABLES `my_contacts` WRITE;
/*!40000 ALTER TABLE `my_contacts` DISABLE KEYS */;
INSERT INTO `my_contacts` VALUES (1,'Anderson','Djillian',NULL,'jill_anderson@breakneckpizza.com','W','1980-05-09',3,4,3),(2,NULL,'Pet',NULL,'patpost@breakneckpizza.com','X','1977-07-21',4,5,5),(3,'Mur','Najdgel','5552311111','nigelmoore@ranchersrule.com','M','1975-08-28',5,3,3),(4,'Fiore','Karla','5557894855','cfiore@fioreanimalclinic.com','W','1974-01-07',1,7,3),(5,'Salivan','Redji','5552311122','me@kathieleeisaflake.com','M','1955-03-20',2,1,3),(6,'Fergusson','Aleksis','5550983476','alexangel@yahoo.com','W','1956-09-19',6,6,3),(7,'Bolduin','Tara','5555553432','tara@breakneckpizza.com','W','1970-01-09',7,3,1),(14,'Dmitriev','Dmitriy','3332311111','dmit@dmitry.com','M','1980-08-28',5,2,1);
/*!40000 ALTER TABLE `my_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession`
--

DROP TABLE IF EXISTS `profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profession` (
  `prof_id` int(11) NOT NULL AUTO_INCREMENT,
  `profession` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`prof_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession`
--

LOCK TABLES `profession` WRITE;
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
INSERT INTO `profession` VALUES (1,'Vet'),(2,'Comedian'),(3,'Writer'),(4,'Postman'),(5,'Farmer'),(6,'Painter'),(7,'Not known');
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seeking`
--

DROP TABLE IF EXISTS `seeking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seeking` (
  `seeking_id` int(11) NOT NULL AUTO_INCREMENT,
  `seeking` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`seeking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seeking`
--

LOCK TABLES `seeking` WRITE;
/*!40000 ALTER TABLE `seeking` DISABLE KEYS */;
INSERT INTO `seeking` VALUES (1,'Friend'),(2,'Friends'),(3,'Woman'),(4,'Man'),(5,'Unmarried woman'),(6,'Lonely man'),(7,'Adventure');
/*!40000 ALTER TABLE `seeking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Married'),(3,'Not married'),(5,'Not known');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zip_code`
--

DROP TABLE IF EXISTS `zip_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code` (
  `zip_code` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(30) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  PRIMARY KEY (`zip_code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zip_code`
--

LOCK TABLES `zip_code` WRITE;
/*!40000 ALTER TABLE `zip_code` DISABLE KEYS */;
INSERT INTO `zip_code` VALUES (1,'Cambridge','MA'),(2,'Kiev','UA'),(3,'Austin','TX'),(4,'Palo Alto','CA'),(5,'Princeton','NJ'),(6,'Pflugerville','MA'),(7,'Round Rock','TX');
/*!40000 ALTER TABLE `zip_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `check_genders`
--

/*!50001 DROP VIEW IF EXISTS `check_genders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `check_genders` AS select `my_contacts`.`gender` AS `gender` from `my_contacts` where ((`my_contacts`.`gender` = 'W') or (`my_contacts`.`gender` = 'M') or (`my_contacts`.`gender` = 'x')) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gender_w`
--

/*!50001 DROP VIEW IF EXISTS `gender_w`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gender_w` AS select `my_contacts`.`first_name` AS `first_name`,`my_contacts`.`last_name` AS `last_name`,`my_contacts`.`phone` AS `phone` from `my_contacts` where (`my_contacts`.`gender` = 'W') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `job_raises`
--

/*!50001 DROP VIEW IF EXISTS `job_raises`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `job_raises` AS select `mc`.`first_name` AS `firstname`,`mc`.`last_name` AS `lastname`,`mc`.`email` AS `email`,`mc`.`phone` AS `phone`,`jc`.`salary` AS `salary`,`jd`.`salary_low` AS `salarylow`,(`jd`.`salary_low` - `jc`.`salary`) AS `raise` from ((`my_contacts` `mc` join `job_current` `jc` on((`mc`.`contact_id` = `jc`.`contact_id`))) join `job_desired` `jd` on((`jc`.`contact_id` = `jd`.`contact_id`))) */;
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

-- Dump completed on 2017-05-30 19:06:25
