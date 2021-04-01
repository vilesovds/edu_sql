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
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `avatar_media_id` int(10) unsigned NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_groups_media1_idx` (`avatar_media_id`),
  CONSTRAINT `fk_groups_media1` FOREIGN KEY (`avatar_media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Veritatis totam quae error tempore ut.',2522,'1975-07-27 04:17:46'),(2,'Ut ut et cumque magni qui porro odio.',1422,'2009-05-09 10:41:31'),(3,'Autem non laboriosam id vitae aut accusantium',3807,'1970-02-15 13:55:55'),(4,'Quia tempora blanditiis maxime laudantium ut ',884,'2009-04-18 14:12:35'),(5,'Quod quia consequatur accusantium sunt sed mo',833,'2016-10-30 16:43:28'),(6,'Ut alias ipsam commodi suscipit quidem aliqua',448,'1987-08-31 14:21:49'),(7,'Consequatur est facilis magnam atque.',197,'2015-05-09 08:43:06'),(8,'Quo rerum voluptatem a incidunt possimus veni',2529,'1997-10-25 20:01:21'),(9,'Consequuntur numquam illo qui.',2973,'2004-09-05 03:06:25'),(10,'Aliquam dolore commodi ipsa architecto earum ',2617,'2007-11-18 05:32:49'),(11,'Enim similique non a modi.',2458,'1970-08-13 12:43:22'),(12,'Eos voluptas et facilis quis.',3632,'1993-10-23 03:26:13'),(13,'Quis sed omnis aperiam distinctio.',3370,'2013-11-12 17:30:26'),(14,'Nam quos quo eum placeat id et itaque.',2227,'1980-07-04 06:08:56'),(15,'Sunt quo possimus iusto error tenetur.',912,'2005-01-14 17:36:08'),(16,'Ea nobis reiciendis qui perspiciatis ut error',3642,'2001-10-27 14:09:13'),(17,'Placeat aut a qui velit ea.',206,'2001-12-21 23:25:04'),(18,'Accusamus modi minima iusto cumque minus sit.',1754,'1994-10-05 02:13:49'),(19,'Consequatur odit dolor quas voluptate dolorum',3769,'2001-03-29 16:52:27'),(20,'Et aspernatur ut natus et.',2227,'1980-12-18 16:26:30'),(21,'Ut explicabo et ut et occaecati quas.',1984,'1970-03-09 13:49:51'),(22,'Vel adipisci enim qui et velit.',2004,'1985-12-04 17:24:46'),(23,'Vel nisi repudiandae repellendus quam volupta',1733,'2015-08-10 14:48:27'),(24,'Maiores maiores cum iure et.',2030,'1996-08-24 09:49:37'),(25,'Non et quos aut quas.',2955,'1979-02-06 20:30:19'),(26,'At voluptatem quaerat eum necessitatibus accu',720,'2020-04-30 02:15:05'),(27,'Reiciendis voluptatem fuga nostrum ut volupta',3781,'2004-11-18 11:02:47'),(28,'Et facilis in fugiat adipisci ea voluptatem a',2897,'1999-04-02 23:33:38'),(29,'Voluptatum temporibus iusto et voluptatibus n',833,'2000-03-17 12:27:40'),(30,'Asperiores tempora ratione nihil et officiis ',1243,'1970-07-15 02:29:33'),(31,'Expedita et laboriosam temporibus sapiente ut',2752,'1988-08-03 02:03:40'),(32,'Quae porro quasi unde placeat.',3354,'2017-10-19 08:20:00'),(33,'Fugit et qui sequi.',2665,'2013-06-26 12:50:13'),(34,'Soluta ad quis provident.',2558,'1984-06-24 19:29:32'),(35,'Deserunt aut est quis est id velit adipisci.',237,'2019-02-09 02:19:04'),(36,'Facere voluptatem animi recusandae veritatis ',3497,'1983-10-16 22:08:06'),(37,'Unde assumenda voluptatem voluptatem ea.',3006,'1971-04-15 17:36:49'),(38,'Minus exercitationem quasi officiis quaerat e',434,'2020-11-13 16:44:40'),(39,'Iusto dolore nisi ducimus.',2026,'1993-04-20 14:25:23'),(40,'Sit minus voluptates autem reiciendis dolor s',1978,'1974-08-26 10:19:23'),(41,'Odit doloribus suscipit quasi.',3050,'2003-01-14 03:28:02'),(42,'Fugit voluptas voluptatem non iusto quisquam.',483,'1988-10-13 03:34:57'),(43,'Ad vel et nisi voluptatem nulla consequuntur ',1610,'2003-12-05 11:38:31'),(44,'Magni voluptas qui nobis et cumque.',2419,'2008-01-29 15:25:35'),(45,'Perferendis quam eum enim error fugiat.',2710,'1976-11-13 18:38:02'),(46,'Corporis rerum dolor provident sapiente dolor',2522,'1991-08-03 06:12:41'),(47,'Excepturi cumque itaque enim saepe in rerum.',2060,'2018-03-19 23:58:26'),(48,'Ex quidem corporis quae ea itaque.',2916,'1999-06-15 00:39:23'),(49,'Labore assumenda labore sed autem corrupti no',275,'2014-04-10 05:01:19'),(50,'Nesciunt expedita consequatur illum incidunt ',1829,'1985-03-22 19:17:30'),(51,'Fugit dolor iure totam quo ullam architecto.',1143,'1988-10-23 10:42:39'),(52,'Voluptate vero saepe molestiae atque et et no',2259,'1990-02-20 19:17:28'),(53,'Hic laboriosam aut maiores qui qui quia accus',3832,'2020-07-19 07:00:14'),(54,'Similique adipisci voluptas cumque dignissimo',2875,'1999-02-28 11:42:35'),(55,'Provident fugiat sapiente qui dolores sint et',288,'2019-11-17 02:57:33'),(56,'Sapiente et praesentium nihil qui consequatur',2787,'1997-12-19 19:39:02'),(57,'Velit maiores enim quisquam nisi.',3595,'1970-11-29 22:52:37'),(58,'Animi aliquid molestias excepturi.',69,'1978-11-11 03:36:46'),(59,'Consequuntur aliquid autem voluptatem delectu',1683,'1992-09-20 07:18:46'),(60,'Minus voluptatum molestias provident.',428,'2002-05-27 23:27:00'),(61,'Alias quo est aut eveniet quidem natus saepe ',1312,'1974-08-31 12:12:12'),(62,'Doloribus rerum minima rerum aut reprehenderi',435,'2006-01-18 12:14:36'),(63,'Cupiditate laborum natus quisquam.',3781,'1994-02-16 13:12:59'),(64,'Illum beatae sit sit rerum consequatur praese',3976,'1980-12-25 18:53:01'),(65,'Qui expedita id dolorem quia optio ut.',2993,'2002-08-20 04:46:55'),(66,'Temporibus explicabo quia et omnis.',18,'1991-01-08 06:05:03'),(67,'Sint voluptatibus dolor odio recusandae autem',3473,'2002-12-09 20:13:09'),(68,'Rerum temporibus laborum harum alias aliquid ',1998,'2020-03-04 23:35:49'),(69,'Quod excepturi iste libero est quo explicabo.',451,'1992-12-30 15:22:55'),(70,'Molestiae ad impedit repudiandae repellat eve',1499,'2020-08-15 20:28:22'),(71,'Voluptate exercitationem veniam vel odit exer',3976,'2006-11-13 12:51:14'),(72,'Illo non corrupti recusandae in.',3500,'1982-06-19 20:35:11'),(73,'Mollitia soluta tenetur doloribus minus quaer',1982,'1995-02-26 05:41:23'),(74,'Consectetur totam fugiat dolorem recusandae.',1585,'1987-04-18 15:12:01'),(75,'Facilis sunt eum nulla consequatur velit dolo',1919,'2009-09-25 00:12:23'),(76,'Veniam vel velit nemo numquam dicta vitae.',691,'1978-08-24 16:27:01'),(77,'Impedit adipisci est amet sed.',106,'2001-08-20 20:16:49'),(78,'Incidunt nulla rem unde consequatur recusanda',3978,'1974-09-14 15:45:21'),(79,'Ut esse ullam eum accusantium debitis.',3607,'1995-04-06 16:06:49'),(80,'Reiciendis ea corrupti est.',380,'1989-02-15 04:30:23'),(81,'Quis labore incidunt dolores omnis.',1807,'2008-11-06 04:30:21'),(82,'Consectetur ab dolorem eos reprehenderit omni',749,'1985-04-14 03:06:50'),(83,'Nisi impedit aliquid exercitationem sunt eum ',2639,'1978-07-10 16:42:15'),(84,'Provident voluptatibus sequi quo odit et volu',1639,'1974-06-06 23:21:00'),(85,'Facilis fuga dolore aut labore id.',3624,'1991-06-11 06:48:14'),(86,'Vitae reiciendis aut quia enim aut velit nihi',2927,'1973-11-02 22:48:40'),(87,'Commodi debitis corporis iure autem.',425,'2003-11-17 17:02:20'),(88,'Aliquid distinctio fugit et quia labore.',3219,'2012-05-17 12:10:43'),(89,'Quia dolores qui rerum iste eos nisi.',2995,'2016-12-30 10:04:10'),(90,'Dolorem sit at hic eos autem nobis.',2108,'1981-11-11 17:31:41'),(91,'Voluptatem enim quisquam consequatur est porr',3646,'2018-07-17 22:35:21'),(92,'Soluta ab earum non ratione ut iure vel sapie',307,'1997-10-22 22:10:31'),(93,'Sequi accusantium id ullam earum et quo aut.',2542,'2012-03-17 23:20:44'),(94,'Earum aspernatur qui consequatur aut quis pos',3426,'1988-10-12 12:34:26'),(95,'Rerum laborum qui optio quasi laudantium omni',283,'1996-11-21 23:44:33'),(96,'Ipsa aut quas ipsam similique.',1534,'1994-10-15 04:42:20'),(97,'Ut quis impedit reprehenderit quo.',3444,'2001-07-05 13:47:14'),(98,'Vero saepe dolorum asperiores est eligendi re',3755,'1984-03-26 15:02:33'),(99,'Et eum odit mollitia dicta qui.',3532,'1980-05-02 21:45:10'),(100,'Voluptatem et nisi ad autem voluptatem ab non',3894,'1984-04-05 16:18:45');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 11:47:29
