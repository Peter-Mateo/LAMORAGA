CREATE DATABASE  IF NOT EXISTS `lamoraga` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lamoraga`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: lamoraga
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `wine_bttle`
--

DROP TABLE IF EXISTS `wine_bttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_bttle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `btl_price` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine_bttle`
--

LOCK TABLES `wine_bttle` WRITE;
/*!40000 ALTER TABLE `wine_bttle` DISABLE KEYS */;
INSERT INTO `wine_bttle` VALUES (1,'Dibon',44,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(2,'Mas Fi Rosé',44,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(3,'R. Prüm Essence',44,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(4,'Ca Bolani',52,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(5,'Gaintza Txakolina',64,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(6,'Allan Scott',52,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(7,'Licia',56,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(8,'Langlois Chateau',72,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(9,'By. Ott',64,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(10,'Borsao Rosado',44,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(11,'Olema',60,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(12,'Black Slate, La Viella Alta',64,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(13,'Joseph Drouhiin, Bourgogne',72,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(14,'Tarima Hill',52,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(15,'Lemelson - Thea\'s Selection',72,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(16,'Proemio Reserve',60,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(17,'Viña Bujanda Reserva',64,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(18,'Oberon',64,'2022-12-19 01:35:46','2022-12-19 01:35:46'),(32,'SANGRIA',48,'2022-12-19 01:39:52','2022-12-19 01:39:52');
/*!40000 ALTER TABLE `wine_bttle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-22 19:09:47
