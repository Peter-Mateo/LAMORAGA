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
-- Table structure for table `happyhr`
--

DROP TABLE IF EXISTS `happyhr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happyhr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happyhr`
--

LOCK TABLES `happyhr` WRITE;
/*!40000 ALTER TABLE `happyhr` DISABLE KEYS */;
INSERT INTO `happyhr` VALUES (1,'Calamari','Flash fried,  roasted almond & parsley aioli','Sea',12,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(2,'Mussels','Sautéed w/ chorizo, garlic & parsley','Sea',12,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(3,'Boquerones','Imported marinated white anchovies w/ EVOO &  garlic bread','Sea',10,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(4,'Lump Crab Stack','Tossed w/ mango aioli stacked on tomatoes & avocado','Sea',16,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(5,'Basil Wrapped Shrimp','Shrimp, basil leaf & orange chili sauce','Sea',10,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(6,'Avocado Pincho','Plantain, Avocado, tomato & balsamic drizzle','Land',9,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(7,'Fusion Wings','Teriyaki glazed & blue cheese crumble','Land',10,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(8,'Slider Combo','Choose your combo between our beef and pork sliders ','Land',10,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(9,'Thai Chicken Spring Roll','With a toasted peanut sauce & soy glaze','Land',9,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(10,'Albondigas','Beef & lamb meatballs ','Land',10,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(11,'Meat & Cheese','Chef selection of cured meats and cheeses','Land',18,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(12,'Iberico Bellota Ham','Aged 18 months, w/ pan con tomate','Land',20,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(13,'Chorizo Mushroom Caps','Chorizo and manchego & romesco sauce ','Land',9,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(14,'Mushroom Calamari','Oyster & shiitake mushrooms, lightly dusted & flash fried  w/ a caper citrus aioli ','Land',10,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(15,'French Fries','Add truffle +2','Side',4,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(16,'Patatas Bravas','','Side',5,'2022-12-21 10:11:48','2022-12-21 10:11:48'),(17,'Brussel Sprouts','','Side',6,'2022-12-21 10:11:48','2022-12-21 10:11:48');
/*!40000 ALTER TABLE `happyhr` ENABLE KEYS */;
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
