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
-- Table structure for table `tapas`
--

DROP TABLE IF EXISTS `tapas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tapas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tapas`
--

LOCK TABLES `tapas` WRITE;
/*!40000 ALTER TABLE `tapas` DISABLE KEYS */;
INSERT INTO `tapas` VALUES (1,'Spanish Octopus','Octopus marinated in garlic and herbs finished on the grill and served with our signature navy bean salad & sherry vinaigrette',NULL,'Sea','2022-12-17 15:49:23','2022-12-17 15:49:23'),(2,'P. E. I. Mussels','Fresh mussels sauteed with garlic, parsley and chorizo infused oil',16,'Sea','2022-12-17 15:49:23','2022-12-17 15:49:23'),(3,'Calamari','Lightly dusted flash fried calamari with roasted almonds and a parsley citrus aioli',15,'Sea','2022-12-17 15:49:23','2022-12-17 15:49:23'),(4,'Garlic Shrimp','Shrimp sauteed with olive oil, garlic, Spanish chiles and parsley',15,'Sea','2022-12-17 15:49:23','2022-12-17 15:49:23'),(5,'Basil Wrapped Shrimp','Shrimp and basil leaf in Brick dough with a orange ginger chili sauce',14,'Sea','2022-12-17 15:49:23','2022-12-17 15:49:23'),(6,'Dancing Eggplant','Blooming eggplant topped with mirin and honey sauce, sesame seeds & wobiko flakes',13,'Sea','2022-12-17 15:49:23','2022-12-17 15:49:23'),(7,'Lump Crab Stack','Tossed with mango aioli stacked on tomato & avocado',20,'Sea','2022-12-17 15:49:23','2022-12-17 15:49:23'),(8,'Tuna Tartare','Diced ahi tuna with avocado, mango topped with a crispy plantain',16,'Sea','2022-12-17 15:49:23','2022-12-17 15:49:23'),(9,'Boquerones','Imported marinated white anchovies served in olive oil & grilled garlic bread',13,'Sea','2022-12-17 15:49:23','2022-12-17 15:49:23'),(10,'Paleta Iberico Bellota Ham','One of the finest hams in the world, aged 18 months, with pan con tomate',25,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(11,'Seared Foie Gras','Seared foie gras with a berry port reduction, fresh berries over crostini',22,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(12,'Red pepper Roll','Pounded pork tenderloin roll stuffed with bacon, roasted red peppers and chipotle aïoli',14,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(13,'Meats and Cheeses','A combination of cured meats and cheeses',20,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(14,'Albondigas','Beef & lamb meatballs in a piquant red pepper tomato sauce',14,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(15,'Harissa Ribs','Dry rubbed & slow cooked pork ribs w/ a piquant harissa sauce & Asian peanut slaw',13,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(16,'Lamb Skewers','Marinated grilled lamb with quinoa tabbouleh',14,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(17,'Thai Chicken Spring Rolls','Served with peanut sauce and a soy glaze',13,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(18,'Fusion Wings','Honey teriyaki glazed chicken wings w/ blue cheese crumble',14,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(19,'Mushroom Caps','Stuffed w/ Spanish chorizo, manchego cheese on a romesco sauce',13,'Land','2022-12-17 15:56:31','2022-12-17 15:56:31'),(20,'Short Rib Pincho','Crustini topped with braised short rib, mushroom ragout and mascarpone cheese, topped w/ shallot roasted tomatoes',14,'pinchos','2022-12-17 15:59:16','2022-12-17 15:59:16'),(21,'Manchego Pincho','Crispy bread topped w/ tomato puree, manchego cheese & quince paste',9,'pinchos','2022-12-17 15:59:16','2022-12-17 15:59:16'),(22,'Serrano Pincho','Crustini topped with tomato puree, serrano ham and hard boiled egg',10,'pinchos','2022-12-17 15:59:16','2022-12-17 15:59:16'),(23,'Lobster Bisque','Creamy lobster bisque topped with sherry infused cream',12,'Soups','2022-12-17 16:04:06','2022-12-17 16:04:06'),(24,'Andalusian Gazpacho','Chilled traditional tomato gazpacho with a delicate tomato foam, basil oil and pine nuts',8,'Soups','2022-12-17 16:04:06','2022-12-17 16:04:06'),(25,'Roasted Artichoke & Tomato','Topped w/ house made croutons & truffle oil',8,'Soups','2022-12-17 16:04:06','2022-12-17 16:04:06'),(26,'Mediterranean Mixed Salad','Fresh cucumber, ripe tomatoes, crisp romaine lettuce & feta cheese crumble mixed with a sumac vinaigrette and mint',12,'Salads','2022-12-17 16:04:06','2022-12-17 16:04:06'),(27,'Goat Cheese Salad','Warm goat cheese crostini, steamed beets, baby kale with mixed greens, pistachios topped with balsamic reduction',14,'Salads','2022-12-17 16:04:06','2022-12-17 16:04:06'),(28,'Tomato & Fresh Burrata','Tomatoes with burrata cheese, arugula, pine nuts, basil pesto drizzle and lemon vinaigrette',13,'Salads','2022-12-17 16:04:06','2022-12-17 16:04:06'),(29,'Melon & Serrano Ham','Serrano ham with cantaloupe melon on baby arugula and port reduction',13,'Salads','2022-12-17 16:04:06','2022-12-17 16:04:06'),(30,'Calamari','',12,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(31,'Mussels','',12,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(32,'Basil Wrapped Shrimp','',10,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(33,'Lump Crab Stack','',16,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(34,'Boquerones','',10,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(35,'Slider Combo','',10,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(36,'Meat & Cheese','',18,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(37,'Iberico Bellota Ham','',20,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(38,'Avocado Pincho','',9,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(39,'Fusion Wings','',10,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(40,'Albondigas/Meatballs','',9,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(41,'Thai Chicken Spring Roll','',9,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(42,'Stuffed Mushrooms','',9,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(43,'French Fries','',4,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(44,'Patatas Bravas','',5,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(45,'Brussel Sprouts','',6,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52'),(46,'Truffle Risotto','',10,'happyhr','2022-12-17 16:33:52','2022-12-17 16:33:52');
/*!40000 ALTER TABLE `tapas` ENABLE KEYS */;
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
