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
-- Table structure for table `cocktails`
--

DROP TABLE IF EXISTS `cocktails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cocktails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cocktails`
--

LOCK TABLES `cocktails` WRITE;
/*!40000 ALTER TABLE `cocktails` DISABLE KEYS */;
INSERT INTO `cocktails` VALUES (1,'Grapefruit Crush','Stoli Ruby Red Vodka, Bauchant Orange, Grapefruit Juice',14,'2022-12-17 13:50:38','2022-12-17 13:50:38'),(2,'Lychee Vacation','Stolichnaya Vodka, St Germain Elderflower, Lemon Juice, Lychee Purée',15,'2022-12-17 13:51:28','2022-12-17 13:51:28'),(3,'Bloody Monkey','Monkey 47 gin, Blood Orange, Aperol',18,'2022-12-17 13:51:50','2022-12-17 13:51:50'),(4,'Espresso Martini','Lavazza Espresso, Stolichnaya Vanilla, Licor 43',16,'2022-12-17 13:52:12','2022-12-17 13:52:12'),(5,'Basíl-ica Martini','Spanish Ginraw Gin, St Germain Elderflower, Lemon Juice, Basil Leaf',15,'2022-12-17 13:53:08','2022-12-17 13:53:08'),(6,'Strawberry Spiced Margarita','Espanita Blanco Tequila, habanero Simple Syrup, Lime Juice, Strawberry Purée, w/ Sugar and Salt Rim',15,'2022-12-17 13:53:31','2022-12-17 13:53:31'),(7,'The Dragon Margarita','Casa Dragones Blanco, one of the world\'s top Tequilas, Agave Nectar, Fresh Lime Juice',20,'2022-12-17 13:54:05','2022-12-17 13:54:05'),(8,'Starburst','Disaronno Amaretto, Pallini Limoncello, Agave Nectar',15,'2022-12-17 13:54:27','2022-12-17 13:54:27'),(9,'High West Old Fashioned','High West American Prairie Bourbon, Luxardo Cherry, Orange Peel, Bitters',17,'2022-12-17 13:54:49','2022-12-17 13:54:49'),(10,'The Joven','Casa Dragones Joven, neat & served with dark chocolate. A Must Try!',55,'2022-12-17 13:55:12','2022-12-17 13:55:12');
/*!40000 ALTER TABLE `cocktails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-20 19:01:38
