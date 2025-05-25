-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: employeemanager
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (4,'fatima.zahra@company.com','83fb291c-ade9-4f95-953f-b18013f58bd8','https://example.com/images/fatima','Graphic Designer','Fatima Zahra','0678901234'),(5,'amine.bouazza@gmail.com','d6026bb5-bdfa-440d-8605-9db7a0f213c4','https://example.com/images/amine','Project Manager','Amine Bouazza','0667890123'),(52,'amine.bouazza@gmail.com','c398a588-1520-4c45-9502-7d3ca6db1393','https://example.com/images/amine','Project Manager','Amine Bouazza','0667890123'),(153,'sara.elamrani@company.com','a2b39877-6a35-4c1e-b76a-70f6a9615024','https://example.com/images/sara','UX Designer','Sara El Amrani','0678456123'),(154,'youssef.karimi@company.com','1c1c43ce-d524-41b2-99fa-0a335abfd107','https://example.com/images/youssef','Backend Developer','Youssef Karimi','0654321890'),(155,'imane.chafiq@company.com','3901f65b-c6b3-4748-8e5b-1bf70051a622','https://example.com/images/imane','HR Specialist','Imane Chafiq','0667893456'),(156,'nadia.kabbaj@company.com','f0507a84-c4ae-4087-9340-b8b453e7e329','https://example.com/images/nadia','Marketing Coordinator','Nadia Kabbaj','0671234567'),(157,'reda.aitsaid@company.com','2874318b-fa0c-42db-8dd5-cd58c2d75d74','https://example.com/images/reda','IT Support Specialist','Reda Ait Said','0654321987');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-25 20:45:09
