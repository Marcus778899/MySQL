-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: photo_app2
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `authorName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'金庸'),(2,'JK Rowling'),(3,'查理蒙格');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `fk_author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_author_id` (`fk_author_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'天龍八部',1),(2,'哈利波特',2),(3,'窮查理的普通常識',3);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contents` varchar(240) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `photo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Quo velit iusto ducimus quos a incidunt nesciunt facilis.',2,4),(2,'Non est totam.',5,5),(3,'Fuga et iste beatae.',3,3),(4,'Molestias tempore est.',1,5),(5,'Est voluptatum voluptatem voluptatem est ullam quod quia in.',1,5),(6,'Aut et similique porro ullam.',1,3),(7,'Fugiat cupiditate consequatur sit magni at non ad omnis.',1,2),(8,'Accusantium illo maiores et sed maiores quod natus.',2,5),(9,'Perferendis cumque eligendi.',1,2),(10,'Nihil quo voluptatem placeat.',5,5),(11,'Rerum dolor sunt sint.',5,2),(12,'Id corrupti tenetur similique reprehenderit qui sint qui nulla tenetur.',2,1),(13,'Maiores quo quia.',1,5),(14,'Culpa perferendis qui perferendis eligendi officia neque ex.',1,4),(15,'Reprehenderit voluptates rerum qui veritatis ut.',1,1),(16,'Aut ipsum porro deserunt maiores sit.',5,3),(17,'Aut qui eum eos soluta pariatur.',1,1),(18,'Praesentium tempora rerum necessitatibus aut.',4,3),(19,'Magni error voluptas veniam ipsum enim.',4,2),(20,'Et maiores libero quod aliquam sit voluptas.',2,3),(21,'Eius ab occaecati quae eos aut enim rem.',5,4),(22,'Et sit occaecati.',4,3),(23,'Illum omnis et excepturi totam eum omnis.',1,5),(24,'Nemo nihil rerum alias vel.',5,1),(25,'Voluptas ab eius.',5,1),(26,'Dolor soluta quisquam voluptatibus delectus.',3,5),(27,'Consequatur neque beatae.',4,5),(28,'Aliquid vel voluptatem.',4,5),(29,'Maiores nulla ea non autem.',4,5),(30,'Enim doloremque delectus.',1,4),(31,'Facere vel assumenda.',2,5),(32,'Fugiat dignissimos dolorum iusto fugit voluptas et.',2,1),(33,'Sed cumque in et.',1,3),(34,'Doloribus temporibus hic eveniet temporibus corrupti et voluptatem et sint.',5,4),(35,'Quia dolorem officia explicabo quae.',3,1),(36,'Ullam ad laborum totam veniam.',1,2),(37,'Et rerum voluptas et corporis rem in hic.',2,3),(38,'Tempora quas facere.',3,1),(39,'Rem autem corporis earum necessitatibus dolores explicabo iste quo.',5,5),(40,'Animi aperiam repellendus in aut eum consequatur quos.',1,2),(41,'Enim esse magni.',4,3),(42,'Saepe cumque qui pariatur.',4,4),(43,'Sit dolorem ipsam nisi.',4,1),(44,'Dolorem veniam nisi quidem.',2,5),(45,'Porro illum perferendis nemo libero voluptatibus vel.',3,3),(46,'Dicta enim rerum culpa a quo molestiae nam repudiandae at.',2,4),(47,'Consequatur magnam autem voluptas deserunt.',5,1),(48,'Incidunt cum delectus sunt tenetur et.',4,3),(49,'Non vel eveniet sed molestiae tempora.',2,1),(50,'Ad placeat repellat et veniam ea asperiores.',5,1),(51,'Eum aut magni sint.',3,1),(52,'Aperiam voluptates quis velit explicabo ipsam vero eum.',1,3),(53,'Error nesciunt blanditiis quae quis et tempora velit repellat sint.',2,4),(54,'Blanditiis saepe dolorem enim eos sed ea.',1,2),(55,'Ab veritatis est.',2,2),(56,'Vitae voluptatem voluptates vel nam.',3,1),(57,'Neque aspernatur est non ad vitae nisi ut nobis enim.',4,3),(58,'Debitis ut amet.',4,2),(59,'Pariatur beatae nihil cum molestiae provident vel.',4,4),(60,'Aperiam sunt aliquam illum impedit.',1,4),(61,'Aut laudantium necessitatibus harum eaque.',5,3),(62,'Debitis voluptatum nesciunt quisquam voluptatibus fugiat nostrum sed dolore quasi.',3,2),(63,'Praesentium velit voluptatem distinctio ut voluptatum at aut.',2,2),(64,'Voluptates nihil voluptatum quia maiores dolorum molestias occaecati.',1,4),(65,'Quisquam modi labore.',3,2),(66,'Fugit quia perferendis magni doloremque dicta officia dignissimos ut necessitatibus.',1,4),(67,'Tempora ipsam aut placeat ducimus ut exercitationem quis provident.',5,3),(68,'Expedita ducimus cum quibusdam.',5,1),(69,'In voluptates doloribus aut ut libero possimus adipisci iste.',3,2),(70,'Sit qui est sed accusantium quidem id voluptatum id.',1,5),(71,'Libero eius quo consequatur laudantium reiciendis reiciendis aliquid nemo.',1,2),(72,'Officia qui reprehenderit ut accusamus qui voluptatum at.',2,2),(73,'Ad similique quo.',4,1),(74,'Commodi culpa aut nobis qui illum deserunt reiciendis.',2,3),(75,'Tenetur quam aut rerum doloribus est ipsa autem.',4,2),(76,'Est accusamus aut nisi sit aut id non natus assumenda.',2,4),(77,'Et sit et vel quos recusandae quo qui.',1,3),(78,'Velit nihil voluptatem et sed.',4,4),(79,'Sunt vitae expedita fugiat occaecati.',1,3),(80,'Consequatur quod et ipsam in dolorem.',4,2),(81,'Magnam voluptatum molestias vitae voluptatibus beatae nostrum sunt.',3,5),(82,'Alias praesentium ut voluptatem alias praesentium tempora voluptas debitis.',2,5),(83,'Ipsam cumque aut consectetur mollitia vel quod voluptates provident suscipit.',3,5),(84,'Ad dignissimos quia aut commodi vel ut nisi.',3,3),(85,'Fugit ut architecto doloremque neque quis.',4,5),(86,'Repudiandae et voluptas aut in excepturi.',5,3),(87,'Aperiam voluptatem animi.',5,1),(88,'Et mollitia vel soluta fugiat.',4,1),(89,'Ut nemo voluptas voluptatem voluptas.',5,2),(90,'At aut quidem voluptatibus rem.',5,1),(91,'Temporibus voluptates iure fuga alias minus eius.',2,3),(92,'Non autem laboriosam consectetur officiis aut excepturi nobis commodi.',4,3),(93,'Esse voluptatem sed deserunt ipsum eaque maxime rerum qui.',5,5),(94,'Debitis ipsam ut pariatur molestiae ut qui aut reiciendis.',4,4),(95,'Illo atque nihil et quod consequatur neque pariatur delectus.',3,3),(96,'Qui et hic accusantium odio quis necessitatibus et magni.',4,2),(97,'Debitis repellendus inventore omnis est facere aliquam.',3,3),(98,'Occaecati eos possimus deleniti itaque aliquam accusamus.',3,4),(99,'Molestiae officia architecto eius nesciunt.',5,4),(100,'Minima dolorem reiciendis excepturi culpa sapiente eos deserunt ut.',3,3);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'https://somecat.com',3),(2,'https://doggy.net',5),(3,'https://kailyn.name',3),(4,'http://marjolaine.name',1),(5,'http://chet.com',5),(6,'http://mac.org',2),(7,'https://meredith.net',4),(8,'http://iosgood.net',4),(9,'http://dayne.com',4),(10,'http://colten.net',2),(11,'https://adelbert.biz',5),(12,'http://kolby.org',1),(13,'https://deon.biz',2),(14,'https://trueisgood.com',5),(15,'http://johnson.info',1),(16,'https://tony.net',2),(17,'https://tyrique.info',4),(18,'http://goofy.info',5),(19,'https://elonmusk.name',2),(20,'http://postmangood.com',3),(21,'123.jpg',NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int DEFAULT NULL,
  `fk_reviewer_id` int DEFAULT NULL,
  `fk_book_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reviewer_id` (`fk_reviewer_id`),
  KEY `fk_book_id` (`fk_book_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`fk_reviewer_id`) REFERENCES `author` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`fk_book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,3,1,2),(2,4,2,1),(3,5,3,3);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'比爾蓋茲'),(2,'巴菲特'),(3,'伊隆馬斯克'),(4,'普丁'),(5,'拜登'),(6,'賭神');
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

-- Dump completed on 2023-03-10 15:49:32
