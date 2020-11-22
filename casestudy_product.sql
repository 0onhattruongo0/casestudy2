-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: casestudy
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `img` longtext,
  `price` int DEFAULT NULL,
  `content` text,
  `created_time` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Nón Vàng Rap Việt','nonvang.jpg',299,'',NULL,NULL),(2,'Nón Vàng Wowy','nonvangwowy.jpg',200,NULL,NULL,NULL),(3,'Nón Vàng Suboi','nonvangsuboi.jpg',299,NULL,NULL,NULL),(4,'Nón Vàng Binz','nonvangbinz.jpg',200,NULL,NULL,NULL),(5,'Nón Vàng Karik','nonvangkarik.jpg',299,NULL,NULL,NULL),(6,'Áo Rap Việt','aorapviet.jpg',299,NULL,NULL,NULL),(7,'Áo RV Wowy','aowowy1.jpg',299,NULL,NULL,NULL),(8,'Áo RV Suboi','aosuboi1.jpg',200,NULL,NULL,NULL),(9,'Áo RV Binz','aobinz1.jpg',299,NULL,NULL,NULL),(10,'Áo RV Karik','aokarik1.jpg',200,NULL,NULL,NULL),(11,'Áo RV Rhymtee','aorhymt1.jpg',299,NULL,NULL,NULL),(12,'Áo RV Touliver','aotoulive1.jpg',200,NULL,NULL,NULL),(13,'Áo RV Trấn Thành','aotranthanh1.jpg',299,NULL,NULL,NULL),(14,'Nón Ráp Việt','nonrapviet1.jpg',200,NULL,NULL,NULL),(15,'Nón RV Wowy','nonwowy.jpg',200,NULL,NULL,NULL),(16,'Nón RV Suboi','nonsuboi.jpg',200,NULL,NULL,NULL),(17,'Nón RV Binz','nonbinz.jpg',299,NULL,NULL,NULL),(18,'Nón RV Karik','nonkarik.jpg',200,NULL,NULL,NULL),(19,'Nón RV Rhymtee','nonryhmat.jpg',200,NULL,NULL,NULL),(20,'Nón RV Touliver','nontouliver.jpg',299,NULL,NULL,NULL),(21,'Nón RV Trấn Thành','nontranthanh.jpg',200,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-22 20:14:18
