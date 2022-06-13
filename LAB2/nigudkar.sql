-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nigudkar_financialdm
-- ------------------------------------------------------
-- Server version	8.0.21

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
  `Customer_ID(NK)` int NOT NULL,
  `Customer_name` varchar(45) DEFAULT NULL,
  `Customer_type` varchar(45) DEFAULT NULL,
  `Customer_state` varchar(45) DEFAULT NULL,
  `Customer_city` varchar(45) DEFAULT NULL,
  `Customer_zip` int DEFAULT NULL,
  `Customer_addr1` varchar(45) DEFAULT NULL,
  `Customer_addr2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_dimension`
--

LOCK TABLES `customer_dimension` WRITE;
/*!40000 ALTER TABLE `customer_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_date_dimension`
--

DROP TABLE IF EXISTS `order_date_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_date_dimension` (
  `order_date_SK` int NOT NULL,
  `order_year` year DEFAULT NULL,
  `order_quarter` int DEFAULT NULL,
  `order_month` int DEFAULT NULL,
  `order_week` int DEFAULT NULL,
  `Fisal_order_year` year DEFAULT NULL,
  `Fiscal_order_month` int DEFAULT NULL,
  `Fiscal_order_quarter` int DEFAULT NULL,
  `Fiscal_order_week` int DEFAULT NULL,
  `order_day` date DEFAULT NULL,
  PRIMARY KEY (`order_date_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_date_dimension`
--

LOCK TABLES `order_date_dimension` WRITE;
/*!40000 ALTER TABLE `order_date_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_date_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pec_dimension`
--

DROP TABLE IF EXISTS `pec_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pec_dimension` (
  `PEC_SK` int NOT NULL,
  `Payment_method` varchar(45) DEFAULT NULL,
  `Shipping_method` varchar(45) DEFAULT NULL,
  `Ordering_method` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PEC_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pec_dimension`
--

LOCK TABLES `pec_dimension` WRITE;
/*!40000 ALTER TABLE `pec_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `pec_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_dimension`
--

DROP TABLE IF EXISTS `product_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_dimension` (
  `Product_Sk` int NOT NULL,
  `Product_ID(NK)` int NOT NULL,
  `Business_unit_name` varchar(45) DEFAULT NULL,
  `Busniess_abbrev` varchar(45) DEFAULT NULL,
  `Unit_cost` varchar(45) DEFAULT NULL,
  `Product_desc` varchar(45) DEFAULT NULL,
  `Product_type_desc` varchar(45) DEFAULT NULL,
  `price1` int DEFAULT NULL,
  `price2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Product_Sk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_dimension`
--

LOCK TABLES `product_dimension` WRITE;
/*!40000 ALTER TABLE `product_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_date_dimension`
--

DROP TABLE IF EXISTS `sales_date_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_date_dimension` (
  `Sales_date_SK` int NOT NULL,
  `Sales_year` year DEFAULT NULL,
  `Sales_quarter` int DEFAULT NULL,
  `Sales_month` int DEFAULT NULL,
  `Sales_week` int DEFAULT NULL,
  `Fiscal_sales_year` year DEFAULT NULL,
  `Fiscal_sales_quarter` int DEFAULT NULL,
  `Fiscal_sales_month` int DEFAULT NULL,
  `Fiscal_sales_week` int DEFAULT NULL,
  `Sales_day` date DEFAULT NULL,
  PRIMARY KEY (`Sales_date_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_date_dimension`
--

LOCK TABLES `sales_date_dimension` WRITE;
/*!40000 ALTER TABLE `sales_date_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_date_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_fact`
--

DROP TABLE IF EXISTS `sales_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_fact` (
  `PEC_SK` int DEFAULT NULL,
  `Days_to_ship` varchar(45) DEFAULT NULL,
  `Days_to_confirm` varchar(45) DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Discounted` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_fact`
--

LOCK TABLES `sales_fact` WRITE;
/*!40000 ALTER TABLE `sales_fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_date_dimension`
--

DROP TABLE IF EXISTS `shipping_date_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_date_dimension` (
  `Shipping_date_SK` int NOT NULL,
  `Shipping_year` year DEFAULT NULL,
  `Shipping_quarter` int DEFAULT NULL,
  `Shipping_month` int DEFAULT NULL,
  `Shipping_week` int DEFAULT NULL,
  `Fiscal_shipping_year` year DEFAULT NULL,
  `Fiscal_shipping_month` int DEFAULT NULL,
  `Fiscal_shipping_quarter` int DEFAULT NULL,
  `Fiscal_shipping_week` int DEFAULT NULL,
  `Shipping_day` date DEFAULT NULL,
  PRIMARY KEY (`Shipping_date_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_date_dimension`
--

LOCK TABLES `shipping_date_dimension` WRITE;
/*!40000 ALTER TABLE `shipping_date_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_date_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_dimension`
--

DROP TABLE IF EXISTS `supplier_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_dimension` (
  `Supplier_SK` int NOT NULL,
  `Supplier_ID(NK)` int NOT NULL,
  `Supplier_city` varchar(45) DEFAULT NULL,
  `Supplier_state` varchar(45) DEFAULT NULL,
  `Supplier_zip` int DEFAULT NULL,
  `Supplier_addr1` varchar(45) DEFAULT NULL,
  `Supplier_addr2` varchar(45) DEFAULT NULL,
  `Supplier_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Supplier_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_dimension`
--

LOCK TABLES `supplier_dimension` WRITE;
/*!40000 ALTER TABLE `supplier_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_dimension` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-18 14:06:19
