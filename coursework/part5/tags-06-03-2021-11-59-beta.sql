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
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (18,'A alias tenetur est eligendi omnis vel omnis '),(54,'Ab aut quibusdam veniam blanditiis.'),(47,'Ab cumque autem expedita et perferendis corru'),(24,'Ad odit quod rerum molestiae dolor unde velit'),(75,'Ad sunt et aut et.'),(71,'Aliquam provident optio enim quia repellat ma'),(16,'Animi excepturi qui vel consequatur autem.'),(50,'Animi non et est tempora ipsum est.'),(38,'Aperiam aut asperiores qui vero.'),(51,'Architecto enim quo consequatur iste nesciunt'),(48,'Aspernatur iusto voluptatem nisi ipsum.'),(72,'Assumenda sint mollitia in sed quis.'),(57,'Aut asperiores aliquam libero dolor sequi.'),(70,'Autem ut sit quae ab exercitationem vel sapie'),(81,'Beatae ullam enim voluptatem rem.'),(53,'Blanditiis quis omnis facere dolorum rerum.'),(39,'Corporis commodi qui et aut sapiente perferen'),(92,'Corporis distinctio tempora libero aut sed.'),(66,'Corrupti at amet harum fuga magnam eaque.'),(3,'Delectus eum et est illo.'),(9,'Deleniti provident et numquam maxime nesciunt'),(25,'Dicta aut voluptas consectetur consequatur re'),(2,'Dolores dicta commodi numquam eum quos aut ex'),(27,'Doloribus quo qui praesentium debitis aut com'),(8,'Ducimus numquam aut officia est quam et.'),(65,'Eaque porro sapiente est.'),(83,'Eligendi eos est esse ut.'),(55,'Est sed nesciunt rerum tempore quia sunt.'),(64,'Est voluptas aspernatur dolore amet ratione.'),(62,'Et maxime natus maiores deleniti et maiores t'),(85,'Eum corporis commodi rerum saepe et.'),(35,'Eum earum mollitia voluptatem culpa autem.'),(86,'Excepturi minus excepturi aut distinctio vero'),(19,'Explicabo inventore quia rerum tempora nulla '),(96,'Explicabo quia qui eaque aut accusantium id d'),(100,'Facilis fugit iusto sed.'),(12,'Fugiat ea qui perferendis quas dolores neque.'),(30,'Harum consequatur dolores qui quisquam rerum.'),(58,'Id quae alias occaecati error suscipit earum '),(76,'Illum optio et unde sunt rerum quidem et.'),(14,'Ipsam et blanditiis eius laborum nisi.'),(79,'Ipsam quasi repellendus iusto necessitatibus '),(31,'Iste iste quod voluptatibus nulla.'),(23,'Iste vero sapiente dolor consequatur.'),(7,'Itaque corrupti modi laborum quam et quibusda'),(45,'Magnam vel hic sapiente iure laboriosam corpo'),(26,'Maiores laboriosam quia voluptas dolorem.'),(97,'Minima voluptate dicta cupiditate numquam adi'),(10,'Mollitia accusamus voluptatem labore est occa'),(6,'Necessitatibus dolores vel ab minus eum incid'),(94,'Nihil labore odit molestias magni accusamus e'),(1,'Nisi eos tenetur dolor placeat quae veniam te'),(13,'Non corporis doloribus et molestiae qui culpa'),(95,'Nostrum exercitationem suscipit et natus repe'),(90,'Numquam numquam optio minima aut quibusdam te'),(82,'Odit a soluta quibusdam quo perspiciatis omni'),(99,'Placeat dignissimos et velit eius reprehender'),(32,'Porro deserunt voluptatem cumque commodi.'),(61,'Provident illum dolor ut vel saepe et similiq'),(5,'Quam est qui sit porro provident est.'),(91,'Quas harum incidunt iste.'),(63,'Qui est aut cupiditate tempore recusandae.'),(20,'Qui illo quis architecto ratione debitis.'),(88,'Qui ut ipsam accusantium eius ipsa neque prae'),(68,'Quia maiores officiis ducimus molestiae eos.'),(44,'Quia quibusdam exercitationem id quasi ut nos'),(60,'Quibusdam perferendis modi est dolores.'),(98,'Quibusdam voluptas illum nam repellendus anim'),(87,'Quo fugit voluptatem consequatur deserunt nec'),(37,'Reiciendis neque voluptas dignissimos nihil l'),(46,'Rem earum nulla dolorem consequatur et ut.'),(69,'Repellat amet molestiae non ut ducimus.'),(78,'Sapiente ducimus facilis labore harum id.'),(89,'Sapiente qui aliquam rem labore quis in.'),(15,'Sed ad aut a.'),(43,'Sed ad omnis vel aliquam nihil voluptatem nem'),(52,'Sed autem deserunt ut eos quis.'),(21,'Sed deserunt enim quos aut quia sint vitae ut'),(36,'Sed temporibus modi non in aliquid.'),(40,'Sint facere iusto aut esse fugit animi.'),(28,'Sint illum eveniet iure ut rerum ducimus illo'),(29,'Sit rerum voluptas incidunt voluptatem ex sed'),(67,'Sunt nulla neque accusamus error.'),(56,'Sunt nulla odio aliquid totam exercitationem.'),(49,'Tempore dolores qui mollitia nam.'),(74,'Tempore maxime aut quo eligendi incidunt eius'),(17,'Tenetur molestias et illo veniam.'),(84,'Tenetur temporibus eaque veritatis harum et m'),(4,'Tenetur ut placeat labore ipsum soluta nisi l'),(77,'Totam eaque aliquam rerum corrupti perspiciat'),(22,'Unde laborum voluptatem dolores facere.'),(41,'Ut dolor minima sunt non doloribus facere ab '),(93,'Ut sunt pariatur unde ut voluptatem.'),(33,'Velit aspernatur cumque doloribus cumque.'),(80,'Veniam tempora voluptatibus soluta aperiam.'),(59,'Vero voluptas eos earum at ut ut maxime rerum'),(11,'Voluptas ad qui velit voluptas.'),(34,'Voluptas et porro unde aut consequatur.'),(73,'Voluptas sint non et ut molestiae quaerat.'),(42,'Voluptatem et maiores fugit reprehenderit mag');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 11:59:47
