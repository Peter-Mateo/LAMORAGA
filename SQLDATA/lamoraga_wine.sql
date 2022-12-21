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
-- Table structure for table `wine`
--

DROP TABLE IF EXISTS `wine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `grape` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine`
--

LOCK TABLES `wine` WRITE;
/*!40000 ALTER TABLE `wine` DISABLE KEYS */;
INSERT INTO `wine` VALUES (1,'SANGRIA','House made Sangria',12,'red or white','red or white','2022-12-17 13:57:26','2022-12-17 13:57:26'),(3,'Dibon','Cava, Spain',11,'Sparkling','Sparkling','2022-12-17 13:58:31','2022-12-17 13:58:31'),(5,'Zonin 1821','Veneto, Italy',13,'Prosecco','Sparkling','2022-12-17 14:00:08','2022-12-17 14:00:08'),(6,'Mas Fi Rosé','Cava, Spain',11,'Sparkling','Sparkling','2022-12-17 14:00:39','2022-12-17 14:00:39'),(8,'Castello di Poggio','Barbera d\'Asti, Italy',13,'Moscato','white','2022-12-17 14:04:53','2022-12-17 14:04:53'),(9,'R. Prüm Essence','Mosel, Germany',11,'Riesling','white','2022-12-17 14:11:28','2022-12-17 14:11:28'),(11,'Ca Bolani','Friuli, Italy',13,'Pinot Grigio','white','2022-12-17 14:25:33','2022-12-17 14:25:33'),(13,'Gaintza Txakolina','Basque Region, Spain',16,'Hondarrabi Zuri/Beltza','white','2022-12-17 14:26:41','2022-12-17 14:26:41'),(15,'Allan Scott','Marlborough, NZ',13,'Sauvignon Blanc','white','2022-12-17 14:33:32','2022-12-17 14:33:32'),(17,'Licia','Rias Baixas, Spain',14,'Albariño','white','2022-12-17 14:35:07','2022-12-17 14:35:07'),(19,'Langlois Chateau','Sancerre, France',18,'Sauvignon Blanc','white','2022-12-17 14:36:35','2022-12-17 14:36:35'),(21,'By. Ott','Côtes de Provence, France',16,'Rosé','Rosé','2022-12-17 14:39:53','2022-12-17 14:39:53'),(23,'Borsao Rosado','Campo de Borja, Spain',11,'Rosé','Rosé','2022-12-17 14:40:40','2022-12-17 14:40:40'),(25,'Olema','Sonoma, CA',15,'Chardonnay','white','2022-12-17 14:43:04','2022-12-17 14:43:04'),(28,'Black Slate, La Viella Alta','Priorat, Spain',16,'Garnacha','red','2022-12-17 14:44:32','2022-12-17 14:44:32'),(29,'Joseph Drouhiin, Bourgogne','Burgundy , France',18,'Pinot Noir','red','2022-12-17 14:47:03','2022-12-17 14:47:03'),(31,'Tarima Hill','Alicante, Spain',13,'Monastrell','red','2022-12-17 14:51:46','2022-12-17 14:51:46'),(33,'Lemelson - Thea\'s Selection','Willamette Valley, OR',18,'Monastrell','red','2022-12-17 14:52:25','2022-12-17 14:52:25'),(35,'Proemio Reserve','Mendoza, Argentina',15,'Malbec','red','2022-12-17 14:53:04','2022-12-17 14:53:04'),(37,'Viña Bujanda Reserva','Rioja, Spain',16,'Tempranillo','red','2022-12-17 14:53:50','2022-12-17 14:53:50'),(39,'Oberon','Napa, CA',16,'Cabernet Sauv.','red','2022-12-17 14:54:32','2022-12-17 14:54:32');
/*!40000 ALTER TABLE `wine` ENABLE KEYS */;
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
