-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (8,'A aut.'),(24,'A voluptatem.'),(21,'Ab animi et.'),(61,'Alias omnis ratione.'),(36,'Alias optio.'),(16,'Amet veritatis incidunt.'),(90,'Aut accusamus.'),(97,'Aut veritatis eum.'),(86,'Consequatur ut ullam.'),(73,'Consequuntur sint ipsum.'),(33,'Cupiditate aliquam.'),(80,'Cupiditate quasi illo.'),(76,'Dolor doloribus.'),(58,'Dolor quis.'),(62,'Dolor quo pariatur.'),(15,'Dolores corporis est.'),(69,'Doloribus quam quis.'),(52,'Ea quibusdam a.'),(17,'Enim ut omnis.'),(92,'Error eum quo.'),(55,'Esse necessitatibus fuga.'),(3,'Est aliquid.'),(19,'Est aut.'),(99,'Est distinctio.'),(65,'Est rerum.'),(44,'Et doloribus minima.'),(96,'Et qui.'),(77,'Et sed.'),(74,'Eveniet rerum.'),(49,'Expedita enim quia.'),(68,'Explicabo sit.'),(20,'Fugit in voluptas.'),(26,'Id natus eos.'),(39,'Illo earum et.'),(7,'In alias.'),(42,'Incidunt in dicta.'),(81,'Ipsa sapiente.'),(88,'Ipsum a fuga.'),(38,'Ipsum praesentium.'),(63,'Itaque fugiat.'),(53,'Iure aut.'),(4,'Laborum id expedita.'),(43,'Libero aliquam.'),(57,'Magni ipsum.'),(60,'Molestiae ipsum.'),(91,'Nam quod nihil.'),(5,'Natus exercitationem.'),(30,'Neque quos.'),(48,'Nesciunt possimus.'),(54,'Non id distinctio.'),(34,'Non nesciunt.'),(71,'Non suscipit consequatur.'),(1,'Non vitae.'),(25,'Odio est sed.'),(51,'Odio quia quo.'),(2,'Optio sit.'),(9,'Pariatur ad.'),(98,'Pariatur ea dolores.'),(35,'Placeat est.'),(78,'Porro dolor quae.'),(67,'Quae veniam doloremque.'),(11,'Quas aut nihil.'),(47,'Qui possimus nisi.'),(50,'Quia eius dolor.'),(45,'Quia qui.'),(13,'Quia rem qui.'),(23,'Quisquam consectetur suscipit.'),(31,'Quo velit.'),(64,'Quod doloribus beatae.'),(56,'Quod iste beatae.'),(93,'Quos ex nesciunt.'),(46,'Recusandae voluptatibus dolores.'),(59,'Repellendus asperiores.'),(27,'Reprehenderit ipsa ipsa.'),(37,'Reprehenderit nihil earum.'),(32,'Rerum minus quis.'),(84,'Rerum quod.'),(72,'Similique tempora illo.'),(100,'Sint aut.'),(85,'Sint provident omnis.'),(41,'Sit perferendis nisi.'),(94,'Sit qui error.'),(75,'Tempora ut.'),(22,'Tempore totam minus.'),(10,'Tempore ut fugiat.'),(29,'Temporibus dolor quos.'),(14,'Tenetur commodi.'),(82,'Ullam fugit quasi.'),(12,'Unde sit nihil.'),(18,'Ut expedita possimus.'),(70,'Vel fugiat officia.'),(28,'Velit debitis.'),(95,'Velit sit fuga.'),(87,'Vitae doloribus amet.'),(6,'Voluptas non odio.'),(40,'Voluptatem eos.'),(79,'Voluptatem porro quis.'),(89,'Voluptatem quisquam.'),(66,'Voluptatem ut.'),(83,'Voluptatibus non sunt.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 11:52:22
