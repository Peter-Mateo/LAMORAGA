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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `intro` text,
  `par1heading` varchar(45) DEFAULT NULL,
  `par1` text,
  `par2heading` varchar(45) DEFAULT NULL,
  `par2` text,
  `par3heading` varchar(45) DEFAULT NULL,
  `par3` text,
  `sumheading` varchar(255) DEFAULT NULL,
  `summary` text,
  `cover` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (26,'Tips For Prepping And Caring For Your Grill','Grilling is a great way to add flavor to your food while also getting some exercise. But before you start grilling, there are a few important things to do first.','Choose the right fuel','There are three main types of fuel: charcoal, wood, and propane. Charcoal is best for high-heat grilling because it burns cleaner than other fuels and produces less ash. Wood gives off more smoke than charcoal does, but it creates a nice smoky flavor that can enhance certain foods. Propane is good for low-and-slow cooking because it burns hot and cleanly.','Maintain your grill','This means replacing any parts (like burners or grates) as needed and cleaning out the interior of your grill after each use to prevent rusting or corrosion from forming inside the grill itself. You should also keep an eye on your grill\'s heat levels so that food cooks evenly across all sides of its surface—you can do this by adjusting vents or adding more fuel if necessary!','','','Tips','Another important step before grilling is choosing the right tools: tongs will help you flip meats easily without damaging them during cooking time; spatulas are useful for flipping burgers over while they\'re still cooking; brushes will help remove any dirt particles','paul-hermann-jeiqzOgwwKU-unsplash 1.png','2022-12-21 03:16:35','2022-12-21 03:16:35'),(30,'About Mediterranean Cuisine ','Mediterranean cuisine is a diverse and flavorful culinary tradition with roots in countries around the Mediterranean Sea, including Italy, Spain, Greece, and Morocco. This type of cuisine is known for its use of fresh, seasonal ingredients such as vegetables, fruits, grains, legumes, olive oil, and herbs like parsley, basil, and mint.','','One of the defining characteristics of Mediterranean cuisine is its reliance on plant-based ingredients. Meals often feature a variety of vegetables, including tomatoes, peppers, eggplant, zucchini, and artichokes, as well as grains like rice, quinoa, and bulgur. Legumes such as chickpeas, lentils, and beans are also commonly used in Mediterranean dishes.','Love of the Ocean','Seafood is another important component of Mediterranean cuisine, with a variety of fish, shellfish, and other seafood used in dishes like paella, cioppino, and bouillabaisse. Meat, especially lamb and chicken, is also often included in Mediterranean dishes, though it is usually served in smaller quantities than plant-based ingredients.','Over Time','One of the most popular dishes in Mediterranean cuisine is hummus, a creamy dip made from chickpeas, tahini, lemon juice, and garlic. It is often served with pita bread or veggies as a snack or appetizer. Another popular dish is falafel, which is small, deep-fried balls made from ground chickpeas or fava beans and spices. They are often served in a pita pocket with vegetables and tahini sauce.','Recap','Overall, Mediterranean cuisine is a delicious and healthy culinary tradition that celebrates the use of fresh, seasonal ingredients and emphasizes the importance of plant-based foods. So whether you are looking for a light snack or a hearty meal, there is something for everyone in the rich and varied culinary tradition of the Mediterranean.','kao-rodriguez-IeTzHiuepmU-unsplash.jpg','2022-12-21 15:18:52','2022-12-21 15:18:52'),(31,'Mediterranean Student Cuisine','We all know that Mediterranean cuisine has been around for thousands of years. It\'s rich in history, culture, and flavor. But what exactly is it? And when did it first originate? Let\'s look at the different countries that make up this region to find out more about Mediterranean student cuisine\'s influences on other cultures around the world in this section:','Spain','Spain is known for having a tapas culture, with small plates of food you can share with friends. The Spanish also love to drink wine, often with their food. Paella is a popular dish made with rice and seafood or meat (if you want to try it at home, make sure to use saffron). You may have heard of chorizo before—it\'s a spicy sausage that can be used in many different dishes! Garlic shrimp is delicious when cooked on the grill or stovetop, making it perfect for summertime cooking.','Portugal','Portuguese cuisine is a style of cooking originating from Portugal. Portuguese cuisine is similar to other Iberian cuisines, mainly Spanish, French, and Italian. Arab influence came from the many Muslims living in the Portuguese territory during the Middle Ages. The country\'s major cities were established as colonies of trading partners (mainly Lisbon, where the Phoenicians settled).','Malta','Malta is a Mediterranean island, and its cuisine reflects the fact that it\'s surrounded by water. Seafood is one of Malta\'s most popular foods, with fish and shellfish being featured in dishes like seafood pasta or grilled octopus. If you\'re looking for something sweet after dinner, try baklava or Kalami tal-għasel (a dessert made with semolina). You\'ll also find street food at local markets throughout Malta—grab some falafel or spanakopita while you\'re out and about!','Explore the delicious world of Mediterranean student cuisine.','The Mediterranean is an area that spans a vast amount of countries, cultures, and cuisines. This can make it difficult to know where to start when you want to explore the world of student cooking. If you\'re looking for inspiration on what to cook next but don\'t know where your tastes lie, I recommend looking at the food in Spain. The Mediterranean region is famous for its seafood dishes and tapas bars, so why not combine them? That\'s precisely what I did when I made this tapas-inspired dish!','raul-taciu-D1fs2x11_jk-unsplash.jpg','2022-12-21 18:09:32','2022-12-21 18:09:32');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
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
