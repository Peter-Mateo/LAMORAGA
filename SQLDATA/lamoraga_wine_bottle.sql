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
-- Table structure for table `wine_bottle`
--

DROP TABLE IF EXISTS `wine_bottle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_bottle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine_bottle`
--

LOCK TABLES `wine_bottle` WRITE;
/*!40000 ALTER TABLE `wine_bottle` DISABLE KEYS */;
INSERT INTO `wine_bottle` VALUES (17,NULL,'Laurent-Perrier','Champagne, France','Champagne',95,'Sparkling','2022-12-18 22:51:31','2022-12-18 22:51:31'),(18,NULL,'Laurent-Perrier','Champagne, France','Champagne',115,'Sparkling','2022-12-18 22:51:31','2022-12-18 22:51:31'),(19,2003,'Nicolas Feulliatte','Champagne, France','Champagne',125,'Sparkling','2022-12-18 22:51:31','2022-12-18 22:51:31'),(20,NULL,'Banfi La Pettegola','Piedmont, Italy','Vermentino',44,'Light&Crisp','2022-12-18 22:51:31','2022-12-18 22:51:31'),(21,NULL,'AA Badenhorst, \'Secateurs\'','Swartland, South Africa','Chenin Blanc',48,'Light&Crisp','2022-12-18 22:51:31','2022-12-18 22:51:31'),(22,NULL,'J.C Dagueneau','Pouilly-Fume, France','Sauvignon Blanc',60,'Light&Crisp','2022-12-18 22:51:31','2022-12-18 22:51:31'),(23,NULL,'Henri Bourgois, Les Baronnes','Sancerre, France','Sauvignon Blanc',68,'Light&Crisp','2022-12-18 22:51:31','2022-12-18 22:51:31'),(24,NULL,'Quinta Da Fonte Souto Branco','Alentejo, Portugal','Verdelho',45,'Fun&Interesting','2022-12-18 22:51:31','2022-12-18 22:51:31'),(25,NULL,'Telmo Rodriguez, Basa','Rueda, Spain','Verdejo',46,'Fun&Interesting','2022-12-18 22:51:31','2022-12-18 22:51:31'),(26,NULL,'Royal Tokaji, The Oddity','Tokaj, Hungary','Furmint',50,'Fun&Interesting','2022-12-18 22:51:31','2022-12-18 22:51:31'),(27,NULL,'Godelia','Bierzo, Spain','Godello',54,'Fun&Interesting','2022-12-18 22:51:31','2022-12-18 22:51:31'),(28,NULL,'Dr. P. Bergweiler Noble House','Mosel, Germany','Eiswein',55,'Fun&Interesting','2022-12-18 22:51:31','2022-12-18 22:51:31'),(29,NULL,'Les Sarrins','Cotes de Provence, France','Rose',60,'Fun&Interesting','2022-12-18 22:51:31','2022-12-18 22:51:31'),(30,NULL,'La Crema','Sonoma, California','Chardonnay',65,'Full&Bold','2022-12-18 22:51:31','2022-12-18 22:51:31'),(31,NULL,'Provenance Vineyard','Carneros, California','Chardonnay',70,'Full&Bold','2022-12-18 22:51:31','2022-12-18 22:51:31'),(32,NULL,'Rombauer','Carneros, California','Chardonnay',95,'Full&Bold','2022-12-18 22:51:31','2022-12-18 22:51:31'),(33,2016,'Sierra Cantabria Crianza','Rioja, Spain','Tempranillo',55,'SpanishRed','2022-12-18 22:51:31','2022-12-18 22:51:31'),(34,2019,'Cuentavinas','Rivera del Duero, Spain','Tinto Fino',80,'SpanishRed','2022-12-18 22:51:31','2022-12-18 22:51:31'),(35,2016,'Numanthia Numanthia','Toro, Spain','Tinta de Toro',95,'SpanishRed','2022-12-18 22:51:31','2022-12-18 22:51:31'),(36,2016,'Marques de Caceres, Gaudium','Rioja, Spain','Tempranillo',100,'SpanishRed','2022-12-18 22:51:31','2022-12-18 22:51:31'),(37,2016,'Vegas Sicilia Alion','Ribera del Duero, Spain','Tempranillo',170,'SpanishRed','2022-12-18 22:51:31','2022-12-18 22:51:31'),(38,2015,'Emilio Moro, Malleolus De Valderramiro','Ribera del Duero, Spain','Tempranillo',205,'SpanishRed','2022-12-18 22:51:31','2022-12-18 22:51:31'),(39,2011,'Numanthia Termanthia','Toro, Spain','Tinta de Toro',245,'SpanishRed','2022-12-18 22:51:31','2022-12-18 22:51:31'),(40,2014,'Benjamin Romeo Contador','Rioja, Spain','Tempranillo',325,'SpanishRed','2022-12-18 22:51:31','2022-12-18 22:51:31'),(41,2010,'Vegas Sicilia Unico','Ribera del Duero, Spain','Tempranillo',495,'SpanishRed','2022-12-18 22:51:31','2022-12-18 22:51:31'),(42,NULL,'Elena Walch','Alto Adige, Italy','Lagrein',50,'Light Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(43,2017,'Sonnet, Muns Vineyard','Santa Cruz Mountains, California','Pinot Noir',65,'Light Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(44,2018,'Greg La Follette (GLF)','North Coast, California','Pinot Noir',65,'Light Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(45,2018,'Pascal Clement','Savigny-Les-Beaune, Burgundy, France','Pinot Noir',85,'Light Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(46,2016,'Dom. de L\'Ecu, Sanctus','Loire, France','Gamay',105,'Light Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(47,2017,'Aurelien Verdet, Vielilles Vignes','Vosne-Romanee, Burgundy, France','Pinot Noir',195,'Light Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(48,2016,'Mommessin Grand Granite Sirane','Quincie, France','Syrah',54,'Medium Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(49,2017,'Di Stasio','Arnador County, California','Zinfadel',60,'Medium Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(50,2018,'Chateau Haut-Vigneau','Pessac-Leognan, France','Bordeaux',65,'Medium Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(51,2015,'Lo Zoccolaio Baccanera','Langhe, Italy','Barbera Blend',70,'Medium Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(52,2013,'Cain Concept','St. Helena, Napa, California','Bordeaux Blend',95,'Medium Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(53,2019,'Titus','Napa, California','Cabernet Franc',110,'Medium Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(54,2019,'San Salvatore Ceraso','Campania, Italy','Aglianico',55,'Full Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(55,2018,'Wine & Soul Manoella','Douro, Portugal','Vinho Tinto',64,'Full Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(56,2017,'Black Ridge, San Andreas','Santa Cruz Mountains, California','Cabernet Blend',70,'Full Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(57,2018,'Lancaster, Winemaker\'s Cuvee','Alexander Valley, California','Bordeaux Blend',105,'Full Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(58,2017,'Quinta De La Rosa, Reserva','Douro, Portugal','Red Blend',110,'Full Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(59,2016,'Lewelling Vineyards','St. Helena, Napa, California','Cabernet Sauv.',125,'Full Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(60,2017,'Roubaix','Rutherford, Napa, California','Cabernet Sauv.',160,'Full Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(61,2018,'Antinori Solaia, Toscana IGT','Tuscany, Italy','Tuscan Blend',395,'Full Bodied','2022-12-18 23:27:50','2022-12-18 23:27:50'),(62,2020,'Barista','Western Cape, South Africa','Pinotage',55,'End Of Bin','2022-12-18 23:27:50','2022-12-18 23:27:50'),(63,2012,'Cantine Russo, Rampante','Sicily, Italy','Red Blend',55,'End Of Bin','2022-12-18 23:27:50','2022-12-18 23:27:50'),(64,2019,'Donnafugata, Bell\'Assai','Sicily, Italy','Frappato',65,'End Of Bin','2022-12-18 23:27:50','2022-12-18 23:27:50'),(65,2016,'Pepper Bridge','Walla Walla, Washington','Cabernet Sauv.',85,'End Of Bin','2022-12-18 23:27:50','2022-12-18 23:27:50'),(66,2013,'Camigliano Gualto Riserva','Brunello di Montalcino, Italy','Sangiovesse',115,'End Of Bin','2022-12-18 23:27:50','2022-12-18 23:27:50'),(67,2017,'Inglenook','Rutherford, Napa, California','Cabernet Sauv.',115,'End Of Bin','2022-12-18 23:27:50','2022-12-18 23:27:50'),(68,2017,'Leon Barral Faugeres Valiniere','Languedoc-Roussillon, France','Red Blend',125,'End Of Bin','2022-12-18 23:27:50','2022-12-18 23:27:50');
/*!40000 ALTER TABLE `wine_bottle` ENABLE KEYS */;
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
