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
-- Table structure for table `library_img`
--

DROP TABLE IF EXISTS `library_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `library_img` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int DEFAULT NULL,
  `image` longtext,
  PRIMARY KEY (`id`),
  KEY `library_img_ibfk_1` (`id_product`),
  CONSTRAINT `library_img_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_img`
--

LOCK TABLES `library_img` WRITE;
/*!40000 ALTER TABLE `library_img` DISABLE KEYS */;
INSERT INTO `library_img` VALUES (1,1,'nonvang.jpg'),(2,1,'qc.jpg'),(3,2,'nonvangwowy.jpg'),(4,2,'qc.jpg'),(5,3,'nonvangsuboi.jpg'),(6,3,'qc.jpg'),(7,4,'nonvangbinz.jpg'),(8,4,'qc.jpg'),(9,5,'nonvangkarik.jpg'),(10,5,'qc.jpg'),(11,6,'aorapviet.jpg'),(12,6,'aorapvietall.jpg'),(13,7,'aowowy1.jpg'),(14,7,'aowowy2.jpg'),(15,8,'aosuboi1.jpg'),(16,8,'aosuboi2.jpg'),(17,9,'aobinz1.jpg'),(18,9,'aobinz2.jpg'),(19,10,'aokarik1.jpg'),(20,10,'aokarik2.jpg'),(21,11,'aorhymt1.jpg'),(22,11,'aorhymt2.jpg'),(23,12,'aotoulive1.jpg'),(24,12,'aotoulive2.jpg'),(25,13,'aotranthanh1.jpg'),(26,13,'aotranthanh2.jpg'),(27,14,'nonrapviet1.jpg'),(28,14,'nonrapviet2.jpg'),(29,15,'nonwowy.jpg'),(30,15,'nonrapviet2.jpg'),(31,16,'nonsuboi.jpg'),(32,16,'nonrapviet2.jpg'),(33,17,'nonbinz.jpg'),(34,17,'nonrapviet2.jpg'),(35,18,'nonkarik.jpg'),(36,18,'nonrapviet2.jpg'),(37,19,'nonryhmat.jpg'),(38,19,'nonrapviet2.jpg'),(39,20,'nontouliver.jpg'),(40,20,'nonrapviet2.jpg'),(41,21,'nontranthanh.jpg'),(42,21,'nonrapviet2.jpg');
/*!40000 ALTER TABLE `library_img` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-22 20:14:19
