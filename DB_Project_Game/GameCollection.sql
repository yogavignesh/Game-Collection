CREATE DATABASE  IF NOT EXISTS `gamedb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gamedb`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gamedb
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categ_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`categ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Sports'),(2,'Platformer'),(3,'Arcade'),(4,'RPG'),(5,'Strategy'),(6,'Action-Adventure'),(7,'Beat\'em up'),(8,'Shooter'),(9,'Adventure'),(10,'Family');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `col_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) NOT NULL,
  `cons_id` int(11) NOT NULL,
  `condition` varchar(45) NOT NULL,
  `completeness` varchar(45) NOT NULL,
  `market_price` float NOT NULL,
  `played` tinyint(1) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `keep` tinyint(1) NOT NULL,
  `might_sell` tinyint(1) NOT NULL,
  `certainly_sell` tinyint(1) NOT NULL,
  `p_date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`col_id`),
  KEY `t_id_idx` (`t_id`),
  KEY `cons_id_idx` (`cons_id`),
  CONSTRAINT `cons_id` FOREIGN KEY (`cons_id`) REFERENCES `console` (`con_id`) ON UPDATE CASCADE,
  CONSTRAINT `t_id` FOREIGN KEY (`t_id`) REFERENCES `title` (`title_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (1,1,1,'Brand new','CIB',161.99,0,0,1,0,0,'2014-01-08',65),(2,1,1,'good','C',80.63,1,1,0,0,1,'2014-06-08',95),(3,2,1,'very good','CIB',109.99,1,1,1,0,0,'2014-02-11',125.99),(4,3,1,'good','C',79,1,1,0,0,1,'2014-03-05',67.99),(5,4,1,'very good','CIB',65.92,0,0,1,0,0,'2014-02-24',45),(6,5,2,'very good','C',147,0,0,1,0,0,'2014-04-19',150),(7,5,2,'good','C',147,1,1,0,0,1,'2014-02-11',89),(8,6,2,'very good','C',147,1,1,0,1,0,'2014-02-27',120),(9,7,2,'very good','CIB',19.5,1,1,1,0,0,'2014-08-12',128),(10,7,2,'acceptable','C',16,1,1,0,0,1,'2014-06-12',70),(11,8,2,'very good','CIB',67,1,1,1,0,0,'2014-07-23',80),(12,8,2,'good','C',15,1,1,0,1,0,'2014-03-16',58),(13,9,2,'very good','CIB',45,0,0,1,0,0,'2014-11-11',25),(14,9,2,'poor','C',74.99,0,0,0,1,0,'2014-09-21',65),(15,10,2,'good','CIB',157.5,1,1,0,0,1,'2014-10-24',100),(16,10,2,'acceptable','C',22.5,1,1,0,0,1,'2014-12-12',75),(17,11,2,'very good','CIB',14.99,0,0,1,0,0,'2014-08-04',20),(18,11,2,'acceptable','C',8.5,0,0,1,0,0,'2014-09-26',10),(19,12,2,'good','CIB',46,0,1,1,0,0,'2014-05-15',50),(20,12,2,'good','C',9.49,0,1,1,0,0,'2014-04-30',15),(21,13,3,'very good','CIB',42,1,1,0,0,1,'2014-04-23',20),(22,13,3,'poor','C',16,1,1,0,1,0,'2014-02-13',25),(23,14,3,'acceptable','C',13,1,0,1,0,0,'2014-01-14',23),(24,15,3,'very good','C',33.98,0,0,1,0,0,'2014-05-12',46),(25,15,3,'very good','CIB',73.99,1,1,0,0,1,'2014-03-19',90),(26,16,3,'acceptable','CIB',43.74,1,1,0,0,1,'2014-08-08',32),(27,16,3,'poor','C',12,1,1,0,0,1,'2014-04-06',8.79),(28,17,3,'good','CIB',24.99,0,0,1,0,0,'2014-11-08',30),(29,17,3,'very good','C',15.75,0,0,1,0,0,'2014-07-29',18.49),(30,18,3,'good','CIB',34.99,1,1,0,0,1,'2014-10-14',45.99),(31,18,3,'good','C',16.05,1,1,0,1,0,'2014-12-12',6.39),(32,19,3,'very good','CIB',5.95,1,1,1,0,0,'2014-07-13',13.39),(33,20,3,'acceptable','CIB',40,0,0,1,0,0,'2014-05-17',35),(34,20,3,'good','C',16.95,0,0,1,0,0,'2014-03-04',19.99),(35,21,4,'good','CIB',24.99,1,1,0,0,1,'2014-04-12',24.99),(36,21,4,'very good','C',13.45,1,1,0,0,1,'2014-05-23',17.99),(37,22,4,'acceptable','C',20,1,1,0,0,1,'2014-09-12',25),(38,23,4,'good','CIB',99.99,1,1,0,0,1,'2014-10-10',54.99),(39,24,4,'very good','CIB',19.95,0,10,1,0,0,'2014-06-09',13),(40,24,4,'very good','C',12.5,0,0,1,0,0,'2014-02-19',25),(41,25,4,'poor','C',2.99,1,1,0,0,1,'2014-08-25',5.39),(42,26,4,'very good','CIB',12.95,1,1,1,0,0,'2014-10-10',16.39),(43,26,4,'good','C',5.88,1,1,1,0,0,'2014-11-11',2.44),(44,27,4,'acceptable','C',9.37,1,0,0,1,0,'2014-12-18',14.59),(45,27,4,'good','CIB',11.92,1,1,0,0,1,'2014-01-27',13.22),(46,28,5,'very good','CIB',200.75,1,1,1,0,0,'2014-01-27',87),(47,28,5,'very good','C',68,1,1,1,0,0,'2014-11-11',90),(48,29,5,'good','CIB',65,1,1,1,0,0,'2014-08-25',35),(49,29,5,'poor','C',28,1,1,1,0,0,'2014-02-19',35),(50,30,5,'acceptable','CIB',59.99,1,1,1,0,0,'2014-02-19',63.24),(51,30,5,'poor','C',23.66,1,1,1,0,0,'2014-07-29',12.99),(52,31,5,'very good','CIB',89,1,1,1,0,0,'2014-02-19',125),(53,31,5,'good','C',32.99,1,1,1,0,0,'2014-03-04',43.56),(54,32,5,'acceptable','CIB',169.99,1,1,1,0,0,'2014-04-12',75),(55,32,5,'good','C',80,1,1,1,0,0,'2014-10-14',89.99),(56,33,5,'good','CIB',141.25,1,1,1,0,0,'2014-05-17',119.59),(57,33,5,'very good','C',44,1,1,1,0,0,'2015-12-12',75),(58,34,5,'good','CIB',29.99,1,1,0,1,0,'2014-05-25',35.49),(59,34,5,'acceptable','C',16,1,1,0,1,0,'2014-03-05',21.99),(60,35,5,'very good','CIB',29.99,0,0,1,0,0,'2014-05-17',32.5),(61,35,5,'very good','C',3.99,0,0,1,0,0,'2014-07-29',7.99),(62,36,5,'poor','CIB',86,0,0,0,0,1,'2014-09-12',49.5),(63,36,5,'poor','C',24.25,1,1,1,0,0,'2014-04-12',15.99),(64,37,5,'acceptable','CIB',81.26,1,1,1,0,0,'2014-09-12',60.25),(65,37,5,'very good','C',45,1,1,1,0,0,'2014-09-12',99.99),(66,38,5,'very good','CIB',141.99,0,0,0,0,1,'2014-12-12',175.99),(67,38,5,'acceptable','C',63.7,0,0,0,0,1,'2014-11-11',23.49),(68,39,5,'very good','CIB',69.94,1,0,0,0,1,'2014-02-23',87),(69,39,5,'acceptable','C',29.94,1,0,0,0,1,'2014-05-08',33.69),(70,40,5,'very good','CIB',19.99,1,1,1,0,0,'2014-09-09',45),(71,41,5,'poor','C',60.99,1,1,0,0,1,'2014-07-16',32.99),(72,42,5,'good','C',22.65,0,0,1,0,0,'2014-11-11',17.89),(73,42,5,'very good','CIB',37.21,0,0,1,0,0,'2014-11-11',39.99),(74,43,5,'good','CIB',15,0,0,1,0,0,'2014-09-17',13.99),(75,44,5,'poor','C',4.25,1,1,0,0,1,'2014-06-16',2.75),(76,45,5,'good','CIB',12.5,1,1,0,0,1,'2014-04-12',17),(77,46,6,'good','CIB',20.5,1,1,0,0,1,'2014-06-06',21),(78,46,6,'good','C',17.88,1,1,0,0,1,'2014-09-26',15),(79,47,6,'very good','CIB',27,1,1,0,0,1,'2014-07-12',31),(80,47,6,'very good','C',20.35,1,1,0,0,1,'2014-08-14',15),(81,48,6,'good','CIB',17.5,0,0,1,0,0,'2014-09-15',20),(82,48,6,'acceptable','C',14,0,0,1,0,0,'2014-05-12',10),(83,49,6,'poor','CIB',30,1,1,0,0,1,'2014-09-24',35),(84,49,6,'very good','C',25,0,0,1,0,0,'2014-12-27',25),(85,50,6,'very good','CIB',8.99,0,0,1,0,0,'2014-11-12',18),(86,50,6,'poor','C',5.99,0,0,1,0,0,'2014-10-18',3),(87,51,6,'very good','CIB',9.95,1,1,1,0,0,'2014-09-12',17),(88,51,6,'very good','C',5.59,1,1,1,0,0,'2014-08-18',8.59),(89,52,6,'acceptable','CIB',35.25,1,0,0,0,1,'2014-07-14',26),(90,52,6,'very good','C',19.95,1,0,1,0,0,'2014-03-14',49),(91,53,6,'good','CIB',39.99,0,0,1,0,0,'2014-03-14',27.89),(92,54,6,'good','C',19.63,1,1,1,0,0,'2014-03-12',22),(93,54,6,'very good','CIB',41.99,1,1,0,0,1,'2014-02-02',45.99),(94,55,6,'very good','CIB',16.95,0,0,0,0,1,'2014-04-12',25),(95,55,6,'poor','C',15.5,1,1,1,0,0,'2014-06-06',7.65),(96,56,6,'very good','CIB',11.59,1,1,0,0,1,'2014-09-26',39),(97,56,6,'very good','C',9.99,0,0,0,0,1,'2014-07-12',15.99),(98,57,6,'acceptable','CIB',12.95,1,0,0,0,1,'2014-08-13',7.89),(99,57,6,'very good','C',9,1,0,0,0,1,'2014-09-15',3.45),(100,58,6,'good','CIB',19.97,1,1,0,0,1,'2014-05-12',23.59),(101,58,6,'good','C',16.48,1,1,0,0,1,'2014-09-24',12.39),(102,59,6,'very good','CIB',20,0,0,0,1,0,'2014-12-27',28),(103,59,6,'very good','C',18.99,0,0,1,0,0,'2014-11-12',25.99),(104,60,6,'poor','CIB',22.99,0,0,0,1,0,'2014-10-18',12.79),(105,60,6,'very good','C',15.55,0,0,1,0,0,'2014-09-12',23),(106,61,6,'very good','CIB',14.99,0,0,1,0,0,'2014-08-19',14.99),(107,62,7,'acceptable','CIB',4.75,1,1,1,0,0,'2014-06-09',15),(108,63,7,'very good','CIB',5.25,1,1,1,0,0,'2014-09-26',6.25),(109,64,7,'good','CIB',5.27,1,1,1,0,0,'2014-07-12',7.5),(110,65,7,'good','CIB',5,1,1,1,0,0,'2014-08-13',12.99),(111,66,7,'very good','CIB',6.5,1,1,1,0,0,'2014-09-15',13),(112,67,7,'very good','CIB',19.9,1,1,1,0,0,'2014-05-12',25.5),(113,68,7,'very good','CIB',39.5,1,1,1,0,0,'2014-09-24',49.99),(114,69,8,'very good','CIB',44.99,1,1,0,0,1,'2014-12-27',63.99),(115,70,8,'very good','CIB',9.99,1,1,0,0,1,'2014-11-12',15.5),(116,71,8,'very good','CIB',22.9,1,1,1,0,0,'2014-10-18',7.25),(117,71,8,'very good','C',13.44,0,0,0,1,0,'2014-07-12',21.5),(118,72,8,'very good','C',106.84,1,0,0,0,1,'2014-07-16',142),(119,73,8,'very good','CIB',54.99,1,1,1,0,0,'2014-07-21',65.99),(120,73,8,'very good','C',19.99,0,0,0,0,1,'2014-07-13',19.99),(121,74,9,'good','C',5.89,0,0,1,0,0,'2014-12-25',7.5),(122,75,9,'very good','CIB',6.99,0,0,1,0,0,'2014-12-29',10.99),(123,76,9,'very good','C',16.47,1,1,0,0,1,'2014-08-13',21.99),(124,77,9,'good','CIB',8.28,1,1,0,0,1,'2014-08-18',10.2),(125,78,9,'good','C',3.75,1,0,1,0,0,'2014-03-12',4.5),(126,79,9,'very good','C',3.74,1,1,1,0,0,'2014-02-15',5.6),(127,80,9,'very good','CIB',6.85,0,0,1,0,0,'2014-04-17',7.8),(128,81,9,'very good','CIB',13.85,0,0,1,0,0,'2014-06-23',15),(129,82,9,'very good','CIB',9.49,1,0,1,0,0,'2014-09-26',12.39),(130,83,9,'very good','C',4.3,0,0,1,0,0,'2014-07-11',12.99),(131,84,9,'good','C',7.95,1,1,1,0,0,'2014-08-18',8.5),(132,85,9,'very good','CIB',9.99,0,0,1,0,0,'2014-09-15',11.2),(133,86,9,'very good','CIB',6.99,1,0,1,0,0,'2014-05-12',9.75),(134,87,10,'very good','CIB',33.5,1,1,1,0,0,'2014-09-24',39.99),(135,88,10,'good','CIB',33.99,1,1,0,0,1,'2014-09-24',39.99),(136,89,11,'very good','CIB',3.15,1,1,1,0,0,'2014-03-03',8.99),(137,90,11,'very good','CIB',3.51,1,1,1,0,0,'2014-02-02',8.99),(138,91,11,'very good','CIB',5.49,1,1,1,0,0,'2014-04-12',11.5),(139,92,11,'good','CIB',19.99,1,1,1,0,0,'2014-06-10',39.99),(140,93,11,'very good','CIB',39.99,0,0,1,0,0,'2014-09-19',75.5),(141,94,12,'very good','CIB',6.99,1,1,0,0,1,'2014-07-12',25.5),(142,95,12,'very good','CIB',9.89,0,0,1,0,0,'2014-08-15',16.75),(143,96,12,'good','CIB',15.24,1,1,0,0,1,'2014-09-17',35.25),(144,97,12,'very good','CIB',10.95,1,1,1,0,0,'2014-01-12',23.95),(145,98,13,'acceptable','CIB',15.5,1,1,1,0,0,'2014-10-01',12.39),(146,99,13,'very good','CIB',24.99,1,1,1,0,0,'2014-04-02',79.99),(147,100,13,'good','CIB',17.99,0,0,1,0,0,'2014-05-07',55.75),(148,101,13,'good','C',21,1,1,1,0,0,'2014-10-03',28.24),(149,102,13,'good','C',24.3,1,1,1,0,0,'2014-10-08',45.5),(150,103,13,'good','C',25.13,1,1,1,0,0,'2014-01-17',35.99),(152,110,11,'Brand new','C',34.5,0,0,1,0,0,'2014-04-05',34.5),(153,111,7,'Brand new','C',78,0,0,1,0,0,'2014-04-05',56),(154,110,8,'Brand new','CI',54,0,0,0,0,0,'2014-03-11',33),(155,112,9,'good','C',34,0,0,0,1,0,'2015-02-03',43),(156,112,3,'Brand new','C',33,0,0,0,0,0,'2014-03-11',67);
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `console`
--

DROP TABLE IF EXISTS `console`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `console` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `console` varchar(45) NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `console`
--

LOCK TABLES `console` WRITE;
/*!40000 ALTER TABLE `console` DISABLE KEYS */;
INSERT INTO `console` VALUES (1,'Atari Jaguar'),(2,'Atari 5200'),(3,'Sega Genesis'),(4,'Sega Master System'),(5,'Nintendo NES'),(6,'Nintendo DS'),(7,'Playstation 3'),(8,'Playstation 4'),(9,'Wii'),(10,'Xbox One'),(11,'Xbox 360'),(12,'Xbox'),(13,'GameBoy');
/*!40000 ALTER TABLE `console` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `Dev_id` int(11) NOT NULL AUTO_INCREMENT,
  `Developer` varchar(45) NOT NULL,
  PRIMARY KEY (`Dev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES (1,'Eclipse Software Design'),(2,'Ubi Soft Italy'),(3,'Atari Inc'),(4,'Bally Midway'),(5,'Parker Brothers'),(6,'Sega'),(7,'Gabriel Industries'),(8,'Koei'),(9,'Game Refuge'),(10,'Sunsoft'),(11,'Probe Entertainment'),(12,'Capcom'),(13,'Broderbund'),(14,'Enix'),(15,'Westwood Associates'),(16,'Strategic Simulations. Inc'),(17,'Nintendo'),(18,'Technos Japan'),(19,'Tecmo Koei'),(20,'Game Freak'),(21,'Intelligent System'),(22,'Namco Bandai Games'),(23,'Square Enix'),(24,'Think & Feel'),(25,'EA Canada'),(26,'Vicarious Visions'),(27,'Toys for Bob'),(28,'FarSight Studios'),(29,'Magic Wand Productions'),(30,'Cauldron'),(31,'BioWare'),(32,'Eurocom'),(33,'HotGen'),(34,'Ubisoft Montreal'),(35,'Rare');
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher` (
  `Pub_id` int(11) NOT NULL AUTO_INCREMENT,
  `Publisher` varchar(45) NOT NULL,
  PRIMARY KEY (`Pub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'Telegames Inc.'),(2,'Ubi Soft'),(3,'Atari Inc.'),(4,'Bally Midway'),(5,'Parker Brothers'),(6,'Sega'),(7,'CBS Electronics'),(8,'Koei'),(9,'Electronic Arts'),(10,'Sunsoft'),(11,'Acclaim Tectory'),(12,'Capcom'),(13,'Broderbund'),(14,'Nintendo'),(15,'Strategic Simulations. Inc'),(16,'Technos Japan'),(17,'The Pokemon Company'),(18,'Namco Bandai Games'),(19,'Square Enix'),(20,'EA Sports'),(21,'Crave Entertainment '),(22,'Activision Value'),(23,'EA Games'),(24,'Kemco');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title` (
  `title_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `d_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `wants_to_play` tinyint(1) NOT NULL,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`title_id`),
  KEY `d_id_idx` (`d_id`),
  KEY `p_id_idx` (`p_id`),
  KEY `c_id_idx` (`c_id`),
  CONSTRAINT `c_id` FOREIGN KEY (`c_id`) REFERENCES `category` (`categ_id`) ON UPDATE CASCADE,
  CONSTRAINT `d_id` FOREIGN KEY (`d_id`) REFERENCES `developer` (`Dev_id`) ON UPDATE CASCADE,
  CONSTRAINT `p_id` FOREIGN KEY (`p_id`) REFERENCES `publisher` (`Pub_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` VALUES (1,'Iron Soldier 2',1,1,1,6),(2,'Rayman',2,2,0,6),(3,'Breakout 2000',3,3,0,3),(4,'Missile Command 3D',3,3,1,6),(5,'Jr. Pac-Man',4,4,1,3),(6,'Jr. Pac-Man',3,3,1,3),(7,'James Bond 007',5,5,0,6),(8,'Star Wars: The Arcade Game',3,3,1,6),(9,'Star Wars: Return of the Jedi Death Star Battle',5,5,0,6),(10,'Zaxxon',6,6,0,6),(11,'Star Trek',6,6,1,6),(12,'Wizard of Wor',7,7,1,6),(13,'Phantasy Star 2',6,6,0,4),(14,'Phantasy Star III Generations of Doom',6,6,1,4),(15,'Phantasy Star 4',6,6,1,4),(16,'Genghis Khan II Clan of the Gray Wolf',8,8,0,5),(17,'General Chaos',9,9,1,5),(18,'Batman',10,10,0,6),(19,'Batman Forever',11,11,1,6),(20,'Batma Revenge of the Joker',10,10,1,6),(21,'Alex Kidd in High-Tech World',6,6,0,6),(22,'Alex Kidd in Miracle World',6,6,0,6),(23,'Alex Kidd in Shinobi World',6,6,0,6),(24,'Alex Kidd the Lost Stars',6,6,1,6),(25,'Rambo',6,6,0,6),(26,'Rambo First Blood Part 2',6,6,1,6),(27,'Rambo 3',6,6,0,6),(28,'Mega Man',12,12,1,6),(29,'Mega Man 2',12,12,1,6),(30,'Mega Man 3',12,12,1,6),(31,'Mega Man 4',12,12,1,6),(32,'Mega Man 5',12,12,1,6),(33,'Mega Man 6',12,12,1,6),(34,'Prince of Persia',13,13,0,6),(35,'Dragon Warrior',14,14,1,4),(36,'Dragon Warrior 2',14,14,1,4),(37,'Dragon Warrior 3',14,14,1,4),(38,'Dragon Warrior 4',14,14,1,4),(39,'Advanced Dungeons & Dragons Dragon Strike',15,15,0,5),(40,'Advanced Dungeons & Dragons Heroes of the Lance ',16,15,0,5),(41,'Advanced Dungeons & Dragons Hillsfar',15,15,0,5),(42,'Advanced Dungeons & Dragons Pool of Radiance',16,15,0,5),(43,'Punch out',17,14,1,1),(44,'Super Spike Volleyball',18,16,0,1),(45,'Super Spike Volleyball',18,14,0,1),(46,'Pokemon Conquest',19,17,0,5),(47,'Pokemon Platinum',20,17,0,5),(48,'Advance Wars Days of Ruin',21,14,1,5),(49,'Advance Wars Dual Strike',21,14,1,5),(50,'Mario and Sonic Olympic Games',6,14,1,1),(51,'Mario and Sonic Olympic Winter Games',6,14,1,1),(52,'Digimon World Dawn',22,18,1,4),(53,'Digimon World DS',22,18,0,4),(54,'Digimon World Dusk',22,18,1,4),(55,'Final Fantasy Crystal Chronicles: Echoes of Time',23,19,1,4),(56,'Final Fantasy Crystal Chronicles Ring of Fates',23,19,0,4),(57,'Final Fantasy III',23,19,0,4),(58,'Final Fantasy IV',23,19,0,4),(59,'Final Fantasy Tactics A2',23,19,1,4),(60,'Final Fantasy: The 4 Heroes of Light',23,19,1,4),(61,'Final Fantasy XII Revenant Wings',24,19,1,4),(62,'FIFA 2008',25,20,1,1),(63,'FIFA Soccer 09',25,20,1,1),(64,'FIFA Soccer 10',25,20,1,1),(65,'FIFA Soccer 11',25,9,1,1),(66,'FIFA Soccer 12',25,9,1,1),(67,'FIFA 14',25,9,1,1),(68,'FIFA 15',25,20,1,1),(69,'Final Fantasy Type-0 HD',23,19,0,4),(70,'Final Fantasy XIV: A Realm Reborn',23,19,0,4),(71,'Skylanders Swap Force: Starter Pack',26,19,1,6),(72,'Skylanders Trap Team Dark Edition: Starter Pack',27,19,0,6),(73,'Skylanders Trap Team: Starter Pack',27,19,1,6),(74,'Namco Museum Megamix',22,18,1,3),(75,'Namco Museum Remix',22,18,1,3),(76,'Pinball Hall of Fame: The Gottlieb Collection',28,21,0,3),(77,'Pinball Hall of Fame: The Williams Collection',28,21,0,3),(78,'Cabela\'s Big Game Hunter 2008',29,22,1,1),(79,'Cabela\'s Dangerous Hunts 2009',29,22,1,1),(80,'Cabela\'s Big Game Hunter 2010',30,22,1,1),(81,'Cabela\'s Dangerous Hunts 2011 Bundle',30,22,1,1),(82,'Cabela\'s Big Game Hunter 2012',30,22,1,1),(83,'Cabela\'s Legendary Adventures',30,22,1,1),(84,'Cabela\'s Monster Buck Hunter',30,22,1,1),(85,'Cabela\'s Outdoor Adventures 2010',30,22,1,1),(86,'Cabela\'s Trophy Bucks',30,22,1,1),(87,'Dragon Age: Inquisition',31,9,1,4),(88,'Dragon Age: Inquisition Deluxe Edition',31,9,4,4),(89,'NHL 08',25,20,1,1),(90,'NHL 09',25,20,1,1),(91,'NHL 11',25,20,1,1),(92,'NHL 14',25,20,1,1),(93,'NHL 15',25,20,1,1),(94,'Batman Begins',32,23,0,6),(95,'Batman Dark Tomorrow',33,24,1,6),(96,'Batman Rise of Sin Tzu',34,2,0,6),(97,'Batman Vengeance',34,2,1,6),(98,'Donkey Kong Land',35,14,1,6),(99,'Donkey Kong Land 2',35,14,1,6),(100,'Donkey Kong Land 3',35,14,1,6),(101,'Pokemon Blue',20,14,1,4),(102,'Pokemon Red',20,14,1,4),(103,'Pokemon Yellow',20,14,1,4),(110,'Tekken 6',19,24,1,7),(111,'Mortal Kombat X',3,4,1,7),(112,'Mario Bros',12,6,1,3);
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'gamedb'
--
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q1`()
BEGIN
select distinct title as Game_Title,console as Console_Name from title,collection,console where
    title.title_id=collection.t_id and
    collection.cons_id=console.con_id order by title;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q10`()
BEGIN
select col_id as ID,title as Game_Title,max(val) as Highest_Value from
    (select col_id,title,(market_price)-(price) as val 
    from title,collection where title.title_id=collection.t_id order by val desc) as t order by Game_Title;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q2`()
BEGIN
select title as Game_Title,counts as Total_Copies from (select title,count(*) as counts from 
title,collection where title.title_id=collection.t_id group by t_id,cons_id having counts>1) as cntTable Order by Game_Title;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q3`()
BEGIN
 select title as Game_Title,console as Console_Name,cast(price as decimal(19,2)) as Total_Cost from (select title,console,sum(market_price) as price from title,collection,console
   where title.title_id=collection.t_id and
   collection.cons_id=console.con_id
   group by console) as t order by Game_Title;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q4`()
BEGIN
select col_id as ID,title as Game_Title,completeness as Game_Info from title,collection where title.title_id=collection.t_id and (completeness ='CIB' or completeness='C' or completeness='CI') order by completeness asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q5`()
BEGIN
select col_id as ID,title as Game_Title,current_value as Market_Price from (select col_id,title,market_price as current_value from title,collection where 
collection.t_id=title.title_id order by current_value desc) as t limit 100;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q6` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q6`()
BEGIN
SELECT 
col_id AS ID,
title,
price AS Purchased_Price,
market_price as Current_Market_Price
FROM
  title,
collection

WHERE
 title.title_id = collection.t_id
        
AND price < market_price order by title;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q7` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q7`()
BEGIN
select collection.col_id,title.title,collection.condition,console.console,collection.keep from title,collection,console where
    title.title_id=collection.t_id and
    collection.cons_id=console.con_id and
    keep='1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q8`()
BEGIN
 select col_id,title,collection.condition,console,wants_to_play from title,collection,console where
    title.title_id=collection.t_id and
    collection.cons_id=console.con_id and
     wants_to_play='1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TASK_4_Q9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TASK_4_Q9`()
BEGIN
SELECT     
	EXTRACT(MONTH FROM p_date) AS month,    
	EXTRACT(YEAR FROM p_date) AS year,    
	SUM(price) as expense 
FROM 
	collection 
GROUP BY month , year;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-30 18:57:58
