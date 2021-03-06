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
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `description` text NOT NULL,
  `topics_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`topics_id`,`users_id`) COMMENT 'One report from one user to one topic',
  KEY `fk_reports_topics1_idx` (`topics_id`),
  KEY `fk_reports_users1_idx` (`users_id`),
  CONSTRAINT `fk_reports_topics1` FOREIGN KEY (`topics_id`) REFERENCES `topics` (`id`),
  CONSTRAINT `fk_reports_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES ('Quisquam et blanditiis temporibus aut ullam. Qui iusto praesentium nesciunt impedit eum. Doloremque ut numquam libero id fuga omnis occaecati ipsa.',23,888),('Sed sed ut dignissimos reiciendis. Omnis voluptatibus optio nulla labore eum possimus earum. Natus non officia est ipsum sint nam ut. Est sunt et recusandae corrupti ut.',52,367),('Iure quidem culpa assumenda autem qui. Aspernatur est earum quos et sint. Magnam vitae placeat asperiores corrupti.',169,173),('Occaecati sit eveniet magni et assumenda. Cumque aspernatur autem possimus ut quos architecto ullam. Ullam culpa reiciendis porro est porro doloribus ad. Impedit omnis ipsum et expedita qui sed.',174,413),('Veniam soluta qui rerum ducimus cumque dolor. Qui minus repudiandae ex molestiae. Ex ea et unde voluptas molestiae et sunt.',1426,136),('Vero maxime qui minus tenetur cum sed. Quia maxime et impedit. Aut aliquid similique est illum quis. Minima aspernatur quae incidunt eveniet.',1449,378),('Est iste quam architecto consectetur. Beatae tempore omnis voluptatem quia. Laboriosam sint consectetur sed laboriosam aut est similique. Ducimus reprehenderit nisi quo non nam.',1758,995),('Rerum aperiam dolores consequuntur suscipit eos qui velit. Officiis ut neque earum earum distinctio. Vel sunt voluptate eaque aut. Molestiae vero consequatur ipsa quo suscipit nesciunt ipsa nemo.',1805,213),('Unde commodi enim perspiciatis ut vero unde. Dolores et optio dignissimos aut suscipit nesciunt ipsa.',1915,983),('Ab esse quibusdam esse laudantium. Voluptas cum et temporibus nam et qui. Quia facilis ut quam veritatis earum commodi. Necessitatibus aut quasi modi error. Mollitia quisquam voluptatum nesciunt iure.',1921,740);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 11:51:26
