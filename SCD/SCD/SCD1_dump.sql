CREATE DATABASE  IF NOT EXISTS `scd_type1` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `scd_type1`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: scd_type1
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
-- Table structure for table `customer_dimension`
--

DROP TABLE IF EXISTS `customer_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_dimension` (
  `Customer_SK` int NOT NULL,
  `CustomerID` varchar(45) DEFAULT NULL,
  `CustomerName` varchar(45) DEFAULT NULL,
  `Addr1` varchar(45) DEFAULT NULL,
  `Addr2` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  `CustTypeID` varchar(45) DEFAULT NULL,
  `TypeName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_dimension`
--

LOCK TABLES `customer_dimension` WRITE;
/*!40000 ALTER TABLE `customer_dimension` DISABLE KEYS */;
INSERT INTO `customer_dimension` VALUES (1,'0','Specialty Teleconstructors Inc.       ','1570 Hordes Dr.','   ','Columbia            ','SC                      ','29260','F            ','US Govt             '),(2,'1','Beverly Equip.                        ','7581 Quisque St.','   ','Bloomington         ','HI                      ','88440','S            ','State_Local Gov     '),(3,'1','Haynes                                ','2920 Auctor Rd.','   ','Moraga              ','AZ                      ','70314','E            ','Education'),(4,'1','Room Plus Inc.                        ','6037 Ecuadorian St.','Suite 836','Clinton             ','MI                      ','49236','C            ','Commercial          '),(5,'2','Clio-Hutchinson                       ','1257 Ac Ave.','   ','Butler              ','SC                      ','82126','S            ','State_Local Gov     '),(6,'2','Rudyard Knapp                         ','9261 Nulla St.','   ','Sault Ste. Marie    ','LA                      ','94298','S            ','State_Local Gov     '),(7,'2','Motts Holdings Inc.                   ','1618 Greenland St.','   ','Tallahassee         ','FL                      ','32304','E            ','Education           '),(8,'3','YuliChem                              ','6440 Amet St.','   ','Laguna Woods        ','KY                      ','53141','C            ','Commercial          '),(9,'3','Baxter May                            ','796-2366 Vel Ave.','   ','Meriden             ','FL                      ','58328','C            ','Commercial          '),(10,'3','Beckman Coulter Inc.                  ','5841 Pervades Dr.','   ','Fairfax             ','VA                      ','22035','E            ','Education           '),(11,'4','Austin Burns                          ','2041 Venenatis Ave.','   ','Alexandria          ','DC                      ','34440','E            ','Education           '),(12,'4','Maya Brewer                           ','PO Box 825 6836 At Rd.','   ','Union City          ','ND                      ','82051','S            ','State_Local Gov     '),(13,'4','Magainin Pharmaceuticals Inc.         ','9138 Planetesimal Lane','Dept #332','Twining             ','MI                      ','48766','F            ','US Govt             '),(14,'5','Saint Andrews Golf Corporation        ','8068 Substances St.','   ','North Miami         ','Fl                      ','33261','F            ','US Govt             '),(15,'5','Mullins Inc.                          ','4009 Ornare Rd.','   ','Birmingham          ','NE                      ','59509','S            ','State_Local Gov     '),(16,'5','Sterling Financial Corporation Washing','7258 Meriting Ave.','Dept #505','Portland            ','OR                      ','97201','E            ','Education           '),(17,'6','Austin Ferrell                        ','8666 Justo Rd.','   ','Pullman             ','PA                      ','55979','C            ','Commercial          '),(18,'6','Raphael Allison                       ','734-2598 Sed Ave.','   ','La Crosse           ','HI                      ','58702','C            ','Commercial          '),(19,'6','Fidelity National Corporation Ga      ','11455 Sheaf Dr.','Dept #915','Anthony             ','FL                      ','32617','S            ','State_Local Gov     '),(20,'7','Hop Adams                             ','704 Nisl Rd.','   ','Sun Valley          ','NH                      ','84458','E            ','Education           '),(21,'7','Martin Donaldson                      ','2704 At Rd.','   ','Gardner             ','GA                      ','31421','E            ','Education           '),(22,'7','Fedders Corporation                   ','3311 Blatantly Circle','Dept #520','Santa Fe Springs    ','CA                      ','90670','E            ','Education           '),(23,'8','Mullins Inc.                          ','4009 Ornare Rd.','   ','Birmingham          ','NE                      ','59509','S            ','State_Local Gov     '),(24,'8','Gemma Castro                          ','9101 Duis St.','   ','Passaic             ','VT                      ','40926','F            ','US Govt             '),(25,'8','United Healthcare Corporation         ','675 Hordes Turnpike','Dept #855','Malaga              ','NM                      ','88263','E            ','Education           ');
/*!40000 ALTER TABLE `customer_dimension` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-05 23:21:53
