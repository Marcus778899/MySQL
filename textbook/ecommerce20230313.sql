CREATE DATABASE  IF NOT EXISTS `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,41,100,1),(2,27,99,0),(3,50,72,0),(4,24,81,1),(5,24,54,1),(6,1,6,1),(7,17,25,0),(8,8,5,1),(9,34,3,1),(10,41,19,1),(11,15,23,1),(12,23,60,1),(13,31,44,1),(14,46,34,0),(15,11,76,0),(16,44,74,1),(17,18,58,1),(18,40,1,0),(19,41,22,1),(20,10,20,0),(21,50,49,0),(22,14,30,1),(23,4,38,0),(24,42,34,1),(25,22,16,0),(26,4,89,1),(27,49,18,1),(28,35,30,1),(29,7,59,0),(30,31,25,1),(31,43,16,0),(32,18,27,0),(33,47,91,1),(34,32,22,0),(35,5,11,0),(36,14,68,0),(37,19,8,0),(38,43,74,1),(39,29,1,0),(40,7,6,1),(41,16,3,1),(42,29,15,0),(43,25,80,1),(44,5,15,1),(45,23,9,1),(46,20,28,0),(47,18,21,1),(48,34,27,0),(49,33,44,1),(50,26,18,0),(51,10,42,0),(52,49,47,1),(53,4,87,1),(54,8,82,1),(55,32,96,1),(56,3,88,1),(57,2,8,1),(58,49,25,0),(59,3,34,1),(60,38,81,0),(61,41,69,1),(62,50,19,1),(63,44,44,0),(64,20,52,0),(65,16,44,0),(66,50,62,0),(67,47,4,0),(68,4,2,1),(69,36,56,1),(70,49,18,1),(71,20,63,1),(72,18,44,1),(73,30,69,1),(74,33,52,1),(75,18,1,1),(76,39,94,1),(77,39,53,1),(78,31,75,1),(79,39,64,0),(80,33,46,0),(81,16,43,0),(82,41,41,0),(83,33,77,1),(84,8,95,0),(85,16,75,0),(86,4,12,0),(87,14,4,1),(88,31,90,1),(89,30,77,1),(90,44,53,0),(91,34,70,1),(92,23,76,0),(93,22,87,0),(94,45,15,1),(95,14,15,1),(96,6,11,1),(97,3,84,0),(98,25,89,1),(99,5,66,1),(100,40,70,0),(101,10,95,1),(102,22,39,1),(103,13,13,0),(104,12,46,0),(105,28,77,0),(106,14,67,0),(107,11,52,0),(108,11,6,0),(109,32,17,1),(110,40,79,1),(111,5,84,1),(112,38,67,0),(113,45,8,0),(114,21,90,1),(115,38,9,1),(116,23,33,0),(117,14,32,0),(118,47,71,0),(119,15,63,1),(120,12,13,1),(121,32,76,1),(122,17,23,1),(123,48,20,0),(124,25,29,1),(125,20,18,1),(126,49,6,1),(127,28,97,0),(128,2,29,1),(129,36,96,0),(130,13,99,0),(131,36,70,0),(132,34,38,1),(133,15,11,0),(134,19,17,0),(135,32,73,1),(136,45,27,1),(137,34,86,0),(138,27,68,1),(139,49,90,0),(140,10,60,1),(141,31,84,0),(142,35,83,0),(143,28,43,0),(144,39,95,0),(145,11,53,1),(146,8,89,1),(147,23,7,1),(148,39,42,0),(149,41,60,0),(150,25,18,1),(151,38,88,0),(152,47,69,1),(153,15,13,1),(154,37,35,0),(155,37,52,1),(156,12,80,0),(157,39,40,1),(158,28,23,0),(159,3,58,0),(160,33,92,0),(161,38,51,1),(162,18,15,0),(163,25,57,0),(164,46,28,0),(165,42,49,1),(166,31,5,1),(167,37,29,0),(168,4,64,1),(169,23,12,0),(170,37,93,1),(171,13,46,1),(172,4,95,0),(173,44,59,1),(174,39,72,0),(175,28,44,1),(176,3,55,0),(177,17,36,0),(178,7,40,0),(179,4,69,1),(180,39,22,1),(181,25,2,0),(182,21,88,0),(183,13,1,1),(184,34,76,0),(185,9,19,1),(186,43,95,0),(187,42,16,0),(188,50,35,0),(189,7,61,0),(190,16,17,1),(191,45,25,1),(192,36,53,1),(193,5,85,0),(194,1,27,1),(195,29,29,1),(196,14,41,1),(197,1,95,1),(198,2,1,1),(199,43,63,1),(200,6,36,1),(201,34,26,1),(202,35,52,0),(203,14,92,1),(204,18,100,1),(205,13,17,1),(206,25,69,0),(207,45,3,0),(208,37,85,0),(209,44,87,0),(210,36,1,1),(211,15,68,0),(212,12,30,1),(213,22,41,0),(214,16,26,1),(215,34,46,0),(216,33,33,0),(217,31,31,0),(218,41,75,1),(219,32,66,0),(220,11,30,1),(221,29,20,0),(222,16,13,0),(223,39,79,0),(224,45,94,0),(225,9,96,0),(226,36,47,0),(227,2,34,1),(228,43,38,1),(229,27,6,1),(230,19,55,1),(231,29,48,0),(232,45,85,0),(233,18,38,0),(234,1,15,1),(235,13,25,0),(236,14,10,0),(237,31,28,0),(238,20,85,0),(239,18,88,1),(240,8,8,0),(241,24,58,0),(242,24,48,1),(243,24,68,0),(244,29,87,1),(245,6,36,1),(246,46,51,1),(247,20,21,0),(248,18,40,1),(249,36,12,0),(250,22,54,1),(251,22,10,1),(252,20,13,0),(253,2,33,1),(254,20,46,1),(255,48,37,1),(256,41,2,0),(257,2,53,1),(258,45,87,0),(259,5,35,0),(260,28,46,0),(261,42,79,1),(262,27,45,0),(263,11,21,0),(264,36,96,0),(265,35,59,1),(266,30,92,1),(267,17,28,0),(268,28,28,1),(269,23,43,1),(270,44,24,0),(271,26,98,0),(272,36,51,0),(273,1,66,0),(274,47,92,0),(275,1,36,0),(276,9,8,0),(277,42,97,1),(278,32,38,0),(279,17,60,1),(280,14,24,1),(281,43,14,1),(282,47,21,1),(283,38,46,1),(284,22,75,0),(285,19,47,1),(286,10,37,1),(287,9,11,1),(288,44,56,1),(289,50,6,1),(290,21,99,0),(291,34,4,1),(292,5,37,0),(293,8,11,0),(294,12,66,0),(295,21,74,1),(296,38,53,0),(297,24,54,0),(298,33,85,1),(299,9,57,0),(300,20,71,1),(301,21,4,0),(302,38,96,0),(303,35,50,0),(304,16,89,0),(305,45,95,1),(306,33,92,0),(307,41,87,0),(308,25,15,0),(309,42,86,0),(310,2,68,0),(311,5,85,1),(312,42,43,0),(313,15,8,1),(314,13,3,1),(315,24,86,0),(316,34,66,0),(317,35,98,0),(318,48,90,0),(319,34,97,0),(320,48,36,1),(321,21,31,0),(322,40,93,0),(323,26,89,1),(324,47,15,1),(325,27,24,1),(326,30,34,0),(327,44,23,1),(328,17,54,1),(329,31,42,0),(330,42,32,0),(331,20,55,1),(332,2,80,1),(333,30,70,1),(334,24,18,1),(335,5,96,0),(336,50,31,0),(337,35,98,1),(338,41,30,0),(339,48,22,1),(340,19,31,0),(341,34,33,0),(342,19,58,0),(343,26,72,0),(344,34,59,1),(345,8,39,1),(346,40,73,0),(347,44,56,0),(348,36,91,1),(349,33,56,0),(350,36,90,1),(351,28,22,0),(352,49,70,1),(353,19,14,1),(354,39,59,0),(355,17,39,0),(356,40,72,1),(357,21,96,0),(358,3,66,1),(359,23,6,1),(360,6,6,0),(361,18,52,1),(362,48,87,1),(363,40,83,1),(364,23,10,1),(365,21,6,0),(366,24,63,1),(367,18,67,0),(368,35,47,0),(369,26,62,0),(370,14,37,0),(371,9,51,0),(372,1,51,1),(373,35,29,0),(374,49,66,1),(375,45,47,0),(376,26,52,0),(377,31,60,0),(378,4,89,0),(379,43,46,1),(380,16,23,0),(381,37,97,1),(382,47,70,0),(383,22,88,0),(384,21,45,1),(385,46,25,1),(386,36,80,1),(387,42,20,1),(388,14,5,0),(389,10,65,0),(390,14,30,0),(391,1,37,0),(392,2,22,1),(393,41,3,1),(394,47,17,1),(395,34,50,1),(396,23,60,0),(397,13,29,1),(398,18,16,1),(399,23,91,1),(400,46,68,0),(401,3,87,0),(402,31,52,0),(403,49,23,0),(404,50,75,1),(405,20,43,1),(406,13,100,0),(407,14,6,0),(408,19,99,1),(409,45,82,1),(410,41,66,1),(411,9,39,1),(412,18,41,1),(413,47,17,0),(414,25,100,1),(415,49,57,0),(416,41,15,0),(417,22,41,0),(418,15,1,1),(419,29,96,1),(420,2,78,1),(421,4,87,1),(422,22,99,1),(423,41,7,0),(424,6,98,1),(425,41,20,0),(426,25,17,0),(427,21,54,1),(428,48,64,1),(429,4,29,0),(430,46,98,1),(431,23,66,1),(432,35,64,1),(433,37,98,0),(434,30,84,0),(435,8,24,0),(436,12,56,1),(437,7,23,1),(438,25,31,1),(439,25,46,0),(440,49,80,0),(441,29,97,0),(442,30,60,1),(443,50,37,1),(444,42,48,0),(445,44,24,1),(446,34,93,1),(447,7,44,1),(448,34,13,1),(449,37,47,0),(450,40,12,0),(451,43,76,1),(452,41,2,0),(453,12,22,1),(454,2,75,1),(455,19,18,0),(456,31,39,1),(457,20,72,1),(458,25,15,0),(459,42,34,0),(460,33,13,0),(461,40,8,1),(462,5,33,1),(463,44,28,1),(464,29,5,1),(465,37,88,0),(466,44,61,0),(467,1,57,0),(468,39,28,1),(469,25,88,0),(470,47,52,0),(471,1,42,0),(472,26,97,1),(473,29,24,0),(474,19,48,1),(475,5,60,1),(476,45,74,1),(477,25,97,1),(478,37,71,0),(479,30,18,0),(480,7,6,1),(481,38,9,1),(482,36,56,1),(483,34,17,1),(484,19,90,1),(485,7,16,1),(486,6,43,1),(487,15,22,0),(488,1,60,1),(489,9,65,1),(490,35,21,1),(491,18,62,0),(492,1,36,0),(493,30,26,0),(494,12,82,0),(495,34,30,0),(496,18,86,1),(497,12,77,1),(498,12,37,0),(499,31,12,0),(500,6,28,0),(501,13,68,0),(502,41,81,1),(503,6,87,0),(504,21,10,0),(505,28,53,1),(506,30,22,0),(507,47,24,0),(508,22,84,0),(509,21,88,0),(510,39,81,1),(511,42,15,0),(512,25,31,1),(513,1,6,0),(514,11,82,1),(515,8,64,0),(516,50,16,1),(517,17,9,0),(518,41,36,1),(519,23,18,1),(520,32,64,1),(521,2,73,1),(522,24,52,1),(523,22,12,1),(524,17,32,1),(525,32,76,1),(526,20,95,0),(527,36,33,1),(528,18,52,0),(529,24,34,1),(530,21,48,0),(531,9,65,0),(532,7,67,1),(533,22,54,0),(534,18,40,0),(535,6,11,1),(536,29,34,1),(537,39,11,1),(538,16,60,0),(539,19,11,0),(540,31,38,0),(541,18,58,1),(542,7,16,0),(543,12,85,0),(544,32,95,0),(545,24,45,0),(546,50,80,0),(547,5,66,1),(548,27,56,0),(549,36,95,0),(550,3,32,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Practical Fresh Shirt','Toys',876,3),(2,'Gorgeous Steel Towels','Outdoors',412,16),(3,'Rustic Plastic Bacon','Movies',10,6),(4,'Tasty Wooden Ball','Industrial',796,23),(5,'Fantastic Soft Fish','Tools',10,10),(6,'Gorgeous Concrete Towels','Grocery',328,11),(7,'Incredible Granite Mouse','Home',989,2),(8,'Gorgeous Rubber Ball','Books',801,4),(9,'Generic Fresh Computer','Toys',926,11),(10,'Unbranded Cotton Shoes','Sports',298,29),(11,'Fantastic Metal Chair','Home',887,9),(12,'Ergonomic Metal Pizza','Jewelery',463,16),(13,'Ergonomic Steel Car','Outdoors',53,20),(14,'Licensed Steel Car','Movies',664,10),(15,'Tasty Metal Cheese','Beauty',650,17),(16,'Handcrafted Rubber Towels','Baby',945,6),(17,'Intelligent Metal Mouse','Music',509,7),(18,'Awesome Cotton Salad','Shoes',211,16),(19,'Unbranded Plastic Pizza','Industrial',72,9),(20,'Practical Concrete Sausages','Industrial',408,9),(21,'Handcrafted Frozen Chair','Garden',411,16),(22,'Generic Cotton Pizza','Home',555,4),(23,'Intelligent Cotton Chips','Books',280,21),(24,'Small Plastic Soap','Beauty',345,1),(25,'Small Wooden Pizza','Garden',307,7),(26,'Rustic Rubber Soap','Beauty',127,2),(27,'Handmade Plastic Gloves','Sports',301,10),(28,'Unbranded Cotton Tuna','Jewelery',633,10),(29,'Practical Plastic Towels','Games',379,20),(30,'Practical Wooden Shoes','Computers',112,20),(31,'Sleek Granite Towels','Toys',797,30),(32,'Practical Rubber Mouse','Garden',948,15),(33,'Handcrafted Concrete Bike','Toys',748,10),(34,'Rustic Granite Chair','Electronics',76,8),(35,'Unbranded Wooden Ball','Sports',384,2),(36,'Licensed Frozen Chair','Books',417,9),(37,'Handmade Rubber Chicken','Movies',959,22),(38,'Awesome Fresh Keyboard','Home',982,30),(39,'Generic Fresh Hat','Baby',791,25),(40,'Licensed Plastic Keyboard','Garden',433,17),(41,'Fantastic Steel Chicken','Computers',472,17),(42,'Tasty Rubber Soap','Tools',823,6),(43,'Refined Wooden Mouse','Music',842,15),(44,'Gorgeous Steel Cheese','Movies',548,9),(45,'Fantastic Fresh Sausages','Industrial',360,26),(46,'Incredible Granite Bacon','Music',982,9),(47,'Handcrafted Fresh Sausages','Games',231,21),(48,'Intelligent Fresh Ball','Home',619,9),(49,'Handmade Plastic Fish','Games',312,23),(50,'Handcrafted Cotton Bacon','Kids',480,12),(51,'Sleek Rubber Shoes','Jewelery',597,6),(52,'Handmade Granite Fish','Electronics',166,14),(53,'Practical Wooden Chips','Toys',707,4),(54,'Handmade Rubber Salad','Outdoors',232,13),(55,'Unbranded Granite Shirt','Music',519,13),(56,'Gorgeous Plastic Sausages','Movies',556,2),(57,'Awesome Steel Mouse','Clothing',175,5),(58,'Licensed Steel Towels','Industrial',939,23),(59,'Handcrafted Fresh Bacon','Sports',387,29),(60,'Fantastic Cotton Shirt','Health',496,24),(61,'Licensed Cotton Sausages','Sports',751,27),(62,'Ergonomic Fresh Pants','Baby',638,30),(63,'Handcrafted Frozen Shoes','Sports',84,1),(64,'Small Concrete Pants','Health',487,19),(65,'Intelligent Plastic Car','Shoes',628,13),(66,'Intelligent Cotton Chips','Baby',521,22),(67,'Licensed Steel Towels','Health',132,11),(68,'Sleek Soft Computer','Movies',619,7),(69,'Fantastic Fresh Shirt','Tools',643,17),(70,'Generic Fresh Shoes','Kids',628,29),(71,'Sleek Fresh Gloves','Clothing',919,15),(72,'Gorgeous Rubber Keyboard','Baby',32,8),(73,'Handcrafted Soft Chicken','Kids',720,8),(74,'Small Metal Mouse','Baby',60,6),(75,'Fantastic Fresh Chips','Home',966,14),(76,'Awesome Metal Pants','Shoes',460,8),(77,'Handcrafted Frozen Chips','Shoes',564,19),(78,'Gorgeous Plastic Gloves','Movies',341,14),(79,'Rustic Metal Salad','Health',240,12),(80,'Small Fresh Gloves','Garden',991,8),(81,'Small Fresh Bacon','Baby',473,10),(82,'Refined Rubber Tuna','Garden',1,21),(83,'Small Metal Chips','Home',161,27),(84,'Unbranded Fresh Tuna','Home',657,9),(85,'Refined Metal Hat','Industrial',309,21),(86,'Refined Concrete Pants','Sports',724,2),(87,'Licensed Plastic Salad','Beauty',834,5),(88,'Licensed Soft Chicken','Toys',425,13),(89,'Fantastic Granite Soap','Home',666,29),(90,'Awesome Steel Towels','Baby',552,10),(91,'Ergonomic Wooden Tuna','Garden',778,29),(92,'Fantastic Wooden Chair','Jewelery',145,26),(93,'Tasty Granite Chips','Home',37,9),(94,'Tasty Rubber Table','Computers',525,29),(95,'Ergonomic Granite Shoes','Beauty',48,12),(96,'Refined Metal Tuna','Jewelery',708,23),(97,'Intelligent Rubber Chicken','Industrial',1,11),(98,'Practical Steel Shoes','Toys',947,14),(99,'Handcrafted Rubber Shoes','Sports',275,6),(100,'Intelligent Cotton Gloves','Home',447,29);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Iva','Lindgren'),(2,'Ignatius','Johns'),(3,'Jannie','Boehm'),(4,'Neal','Wehner'),(5,'Mikayla','Casper'),(6,'Patience','Stracke'),(7,'Josianne','Gerhold'),(8,'Kailee','Jacobson'),(9,'Marlen','Hickle'),(10,'Pansy','Daugherty'),(11,'Vinnie','Feest'),(12,'Cierra','Johns'),(13,'Violette','Heathcote'),(14,'Stan','Rath'),(15,'Neha','Hyatt'),(16,'Kaylah','Gleason'),(17,'Jacky','Hegmann'),(18,'Duane','Lockman'),(19,'Sonya','Marquardt'),(20,'Brenden','Streich'),(21,'Laurianne','Douglas'),(22,'Orlando','Kerluke'),(23,'Irma','Wintheiser'),(24,'Cletus','Schultz'),(25,'Jermaine','Langosh'),(26,'Alexanne','Dickens'),(27,'Garret','Williamson'),(28,'Max','Goodwin'),(29,'Tad','Wilderman'),(30,'Lindsay','Yost'),(31,'Elliot','Oberbrunner'),(32,'Brendan','Thompson'),(33,'Brennan','Auer'),(34,'Luigi','Johnston'),(35,'Garth','McLaughlin'),(36,'Ressie','Nikolaus'),(37,'Ruby','Turner'),(38,'Caden','Turcotte'),(39,'Armand','Kshlerin'),(40,'Albertha','Yundt'),(41,'Kathryn','Mueller'),(42,'Arely','McGlynn'),(43,'Lawrence','Casper'),(44,'Johathan','Kirlin'),(45,'Clara','Gerhold'),(46,'Miller','Feil'),(47,'Rosendo','Sawayn'),(48,'Sally','Mann'),(49,'Kennith','Hettinger'),(50,'Mathilde','Eichmann');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-13 14:15:58
