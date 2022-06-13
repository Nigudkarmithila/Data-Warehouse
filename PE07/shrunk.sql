CREATE DATABASE  IF NOT EXISTS `pe_earnings` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pe_earnings`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: pe_earnings
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer dimension`
--

DROP TABLE IF EXISTS `customer dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer dimension` (
  `cust_SK` int NOT NULL,
  `state` char(2) DEFAULT NULL,
  `districtID` int DEFAULT NULL,
  `districtName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cust_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer dimension`
--

LOCK TABLES `customer dimension` WRITE;
/*!40000 ALTER TABLE `customer dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earnings fact`
--

DROP TABLE IF EXISTS `earnings fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `earnings fact` (
  `earnings` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earnings fact`
--

LOCK TABLES `earnings fact` WRITE;
/*!40000 ALTER TABLE `earnings fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `earnings fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shrunk date`
--

DROP TABLE IF EXISTS `shrunk date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shrunk date` (
  `date_SK` int NOT NULL,
  `year` char(4) DEFAULT NULL,
  `quarter` char(1) DEFAULT NULL,
  PRIMARY KEY (`date_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shrunk date`
--

LOCK TABLES `shrunk date` WRITE;
/*!40000 ALTER TABLE `shrunk date` DISABLE KEYS */;
/*!40000 ALTER TABLE `shrunk date` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-18 18:40:17
