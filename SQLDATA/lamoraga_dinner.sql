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
-- Table structure for table `dinner`
--

DROP TABLE IF EXISTS `dinner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dinner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinner`
--

LOCK TABLES `dinner` WRITE;
/*!40000 ALTER TABLE `dinner` DISABLE KEYS */;
INSERT INTO `dinner` VALUES (1,'Lamoraga Paella','Traditional Spanish saffron rice prepared with a selection of fresh seafood and chorizo',34,'Sea','2022-12-17 16:19:39','2022-12-17 16:19:39'),(2,'Chilean Sea Bass','Baked wasabi pea encrusted sea bass on top roasted cauliflower-mashed potatoes along with shiitake mushrooms & bok choy in a sweet soy reduction',43,'Sea','2022-12-17 16:19:39','2022-12-17 16:19:39'),(3,'Black Grouper','Grilled black grouper over carrot whipped potatoes & grilled artichoke with a lemon beurre blanc',38,'Sea','2022-12-17 16:19:39','2022-12-17 16:19:39'),(4,'Scottish Salmon','Seared salmon over quinoa, spinach & mushroom medley',30,'Sea','2022-12-17 16:19:39','2022-12-17 16:19:39'),(5,'Lobster Truffle Fettuccine','Maine lobster, cherry tomatoes, kale and fettuccine tossed in a lemon truffle cream sauce',42,'Sea','2022-12-17 16:19:39','2022-12-17 16:19:39'),(6,'Florida Snapper','Seared snapper over creamy polenta & a fennel tomato broth w/a hint of anise',36,'Sea','2022-12-17 16:19:39','2022-12-17 16:19:39'),(7,'Local Mahi Mahi','Grilled Mahi Mahi w/ an orange-ginger-chili sauce, lemongrass rice, shiitake mushrooms boy chok & mango salsa',29,'Sea','2022-12-17 16:19:39','2022-12-17 16:19:39'),(8,'Pir Piri Swordfish','Grilled swordfish, bell pepper & onion skewers marinated in a piri piri pepper sauce',32,'Sea','2022-12-17 16:19:39','2022-12-17 16:19:39'),(9,'Tuna Niçoise Salad','Seared Ahi tuna, mixed baby greens, cherry tomatoes, green beans, red peppers, onions, pine nuts, boiled egg, anchovies, olives & lemon caper dressing',28,'Sea','2022-12-17 16:19:39','2022-12-17 16:19:39'),(10,'Meat Paella','A meat lover\'s delight, featuring beef filet, pork shoulder, chorizo & chicken thigh blended with saffron rice',32,'Land','2022-12-17 16:23:54','2022-12-17 16:23:54'),(11,'Beef Short Ribs','Tender slow-braised short ribs in a red wine reduction with mashed potatoes and vegetable of the day',36,'Land','2022-12-17 16:23:54','2022-12-17 16:23:54'),(12,'Grass-Fed Hanger Steak','Grilled marinated hanger steak with French fries, vegetable of the day & chipotle Hollandaise sauce',32,'Land','2022-12-17 16:23:54','2022-12-17 16:23:54'),(13,'Chicken Rigatoni','Imported pasta, grilled chicken breast, crimini mushrooms & peas tossed in a house made vodka sauce',26,'Land','2022-12-17 16:23:54','2022-12-17 16:23:54'),(14,'Dry Aged Pork Chop','14 oz bone in pork chop with roasted brussel sprouts, roasted fingerling potatoes & a spiced rum demi glaze',34,'Land','2022-12-17 16:23:54','2022-12-17 16:23:54'),(15,'1/2 Grilled Chicken','Rosemary-lemon marinated chicken, grilled & served w/ French fries, vegetables of the day & salsa verde',26,'Land','2022-12-17 16:23:54','2022-12-17 16:23:54'),(16,'Filet Mignon','Grilled filet of beef w/ jalapeño scalloped potatoes & haricot vert',46,'Land','2022-12-17 16:23:54','2022-12-17 16:23:54'),(17,'Vegan Paella','A wide variety of fresh seasonal vegetables and house made vegetable stock prepared saffron rice',26,'Vegan','2022-12-17 16:25:58','2022-12-17 16:25:58'),(18,'Avocado Pincho','Crispy plantain topped with smashed avocado, diced cherry tomato, EVOO and balsamic drizzle',14,'Vegan','2022-12-17 16:25:58','2022-12-17 16:25:58'),(19,'Mushroom Calamari','Oyster & Shiitake mushrooms flash fried w/ roasted almonds & caper citrus aioli',14,'Vegan','2022-12-17 16:25:58','2022-12-17 16:25:58'),(20,'Massaman Curry','A flavorful & lightly spiced Thai curry w/ coconut milk. vegetables, potatoes, cashews & lemon grass rice',26,'Vegan','2022-12-17 16:25:58','2022-12-17 16:25:58'),(21,'Truffle Pasta','Vegan pasta tossed w/ Beyond sausage, mushrooms, vegan cream & truffle sauce',30,'Vegan','2022-12-17 16:25:58','2022-12-17 16:25:58'),(22,'French Fries','House cut french fries with sea salt',8,'Sides','2022-12-17 16:27:29','2022-12-17 16:27:29'),(23,'Grilled Asparagus','Asparagus with olive oil and sea salt',8,'Sides','2022-12-17 16:27:29','2022-12-17 16:27:29'),(24,'Patatas Bravas','',10,'Sides','2022-12-17 16:27:29','2022-12-17 16:27:29'),(25,'Maple Soy Brussel Sprouts','',8,'Sides','2022-12-17 16:27:29','2022-12-17 16:27:29'),(26,'Grilled Artichoke Hearts','',12,'Sides','2022-12-17 16:27:29','2022-12-17 16:27:29'),(27,'Lamoraga Bread Pudding','Coconut and white chocolate laced bread pudding with vanilla ice cream',9,'Dessert','2022-12-17 16:29:41','2022-12-17 16:29:41'),(28,'Flan','Thick Andalusian custard topped with house made caramel',9,'Dessert','2022-12-17 16:29:41','2022-12-17 16:29:41'),(29,'Cheesecake','Delicate cheesecake tartlet on ginger bread crust with violet ice cream',11,'Dessert','2022-12-17 16:29:41','2022-12-17 16:29:41'),(30,'Belgium Chocolate Brownie Vegan','Warm chunky chocolate brownie with wild berry compote',10,'Dessert','2022-12-17 16:29:41','2022-12-17 16:29:41'),(31,'Key Lime Torte','Tangy lime mousse and cake layered with cream cheese filling',10,'Dessert','2022-12-17 16:29:41','2022-12-17 16:29:41'),(32,'Chocolate Deluxe','Warm chocolate lava cake with vanilla ice cream and raspberry drizzle',11,'Dessert','2022-12-17 16:29:41','2022-12-17 16:29:41'),(33,'Fig Tart','Warm roasted fig shortbread with vanilla ice cream',11,'Dessert','2022-12-17 16:29:41','2022-12-17 16:29:41'),(34,'Sorbets & Ice Creams','Ask your server for our varieties',7,'Dessert','2022-12-17 16:29:41','2022-12-17 16:29:41');
/*!40000 ALTER TABLE `dinner` ENABLE KEYS */;
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
