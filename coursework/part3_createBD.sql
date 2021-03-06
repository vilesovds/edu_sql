-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: thingiverse
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `users_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_collections_users1_idx` (`users_id`),
  CONSTRAINT `fk_collections_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collections_things`
--

DROP TABLE IF EXISTS `collections_things`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections_things` (
  `things_id` int unsigned NOT NULL,
  `collections_id` int unsigned NOT NULL,
  PRIMARY KEY (`things_id`,`collections_id`),
  KEY `fk_collections_things_things1_idx` (`things_id`),
  KEY `fk_collections_things_collections1_idx` (`collections_id`),
  CONSTRAINT `fk_collections_things_collections1` FOREIGN KEY (`collections_id`) REFERENCES `collections` (`id`),
  CONSTRAINT `fk_collections_things_things1` FOREIGN KEY (`things_id`) REFERENCES `things` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `text` tinytext NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `things_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_things1_idx` (`things_id`),
  KEY `fk_comments_users1_idx` (`users_id`),
  CONSTRAINT `fk_comments_things1` FOREIGN KEY (`things_id`) REFERENCES `things` (`id`),
  CONSTRAINT `fk_comments_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments_media`
--

DROP TABLE IF EXISTS `comments_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments_media` (
  `comments_id` int unsigned NOT NULL,
  `media_id` int unsigned NOT NULL,
  PRIMARY KEY (`comments_id`,`media_id`),
  KEY `fk_comments_media_comments1_idx` (`comments_id`),
  KEY `fk_comments_media_media1_idx` (`media_id`),
  CONSTRAINT `fk_comments_media_comments1` FOREIGN KEY (`comments_id`) REFERENCES `comments` (`id`),
  CONSTRAINT `fk_comments_media_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followers` (
  `who_id` int unsigned NOT NULL,
  `whom_id` int unsigned NOT NULL,
  PRIMARY KEY (`who_id`,`whom_id`),
  KEY `fk_followers_users1_idx` (`who_id`),
  KEY `fk_followers_users2_idx` (`whom_id`),
  CONSTRAINT `fk_followers_users1` FOREIGN KEY (`who_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_followers_users2` FOREIGN KEY (`whom_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forums` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `avatar_media_id` int unsigned NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_groups_media1_idx` (`avatar_media_id`),
  CONSTRAINT `fk_groups_media1` FOREIGN KEY (`avatar_media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `groups_forums`
--

DROP TABLE IF EXISTS `groups_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_forums` (
  `forums_id` int unsigned NOT NULL,
  `groups_id` int unsigned NOT NULL,
  PRIMARY KEY (`forums_id`,`groups_id`),
  KEY `fk_groups_forums_forums1_idx` (`forums_id`),
  KEY `fk_groups_forums_groups1_idx` (`groups_id`),
  CONSTRAINT `fk_groups_forums_forums1` FOREIGN KEY (`forums_id`) REFERENCES `forums` (`id`),
  CONSTRAINT `fk_groups_forums_groups1` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `things_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  PRIMARY KEY (`things_id`,`users_id`),
  KEY `fk_likes_things1_idx` (`things_id`),
  KEY `fk_likes_users1_idx` (`users_id`),
  CONSTRAINT `fk_likes_things1` FOREIGN KEY (`things_id`) REFERENCES `things` (`id`),
  CONSTRAINT `fk_likes_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `media_types_id` int unsigned NOT NULL,
  `size` int NOT NULL DEFAULT '0',
  `file_path` varchar(90) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_path_UNIQUE` (`file_path`),
  KEY `fk_media_media_types_idx` (`media_types_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_media_media_types` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(60) NOT NULL,
  `text` text NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `readed_time` datetime DEFAULT NULL,
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_messages_users1_idx` (`from_users_id`),
  KEY `fk_messages_users2_idx` (`to_users_id`),
  CONSTRAINT `fk_messages_users1` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users2` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `second_name` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `industry` varchar(45) NOT NULL,
  `subindustry` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  `bio` tinytext COMMENT 'About myself',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `website` varchar(60) DEFAULT NULL COMMENT 'url',
  `cover_photo_id` int unsigned NOT NULL,
  `avatar_photo_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`,`cover_photo_id`,`avatar_photo_id`),
  KEY `fk_profiles_media1_idx` (`cover_photo_id`),
  KEY `fk_profiles_media2_idx` (`avatar_photo_id`),
  CONSTRAINT `fk_profiles_media1` FOREIGN KEY (`cover_photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profiles_media2` FOREIGN KEY (`avatar_photo_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `description` text NOT NULL,
  `topics_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  PRIMARY KEY (`topics_id`,`users_id`) COMMENT 'One report from one user to one topic',
  KEY `fk_reports_topics1_idx` (`topics_id`),
  KEY `fk_reports_users1_idx` (`users_id`),
  CONSTRAINT `fk_reports_topics1` FOREIGN KEY (`topics_id`) REFERENCES `topics` (`id`),
  CONSTRAINT `fk_reports_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `things`
--

DROP TABLE IF EXISTS `things`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `things` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `summary` text NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT NULL,
  `categories_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_things_categories1_idx` (`categories_id`),
  CONSTRAINT `fk_things_categories1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `things_files`
--

DROP TABLE IF EXISTS `things_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `things_files` (
  `things_id` int unsigned NOT NULL,
  `media_id` int unsigned NOT NULL,
  PRIMARY KEY (`things_id`,`media_id`),
  KEY `fk_things_files_things1_idx` (`things_id`),
  KEY `fk_things_files_media1_idx` (`media_id`),
  CONSTRAINT `fk_things_files_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_things_files_things1` FOREIGN KEY (`things_id`) REFERENCES `things` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `things_tags`
--

DROP TABLE IF EXISTS `things_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `things_tags` (
  `tags_id` int unsigned NOT NULL,
  `things_id` int unsigned NOT NULL,
  PRIMARY KEY (`tags_id`,`things_id`),
  KEY `fk_things_tags_tags1_idx` (`tags_id`),
  KEY `fk_things_tags_things1_idx` (`things_id`),
  CONSTRAINT `fk_things_tags_tags1` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `fk_things_tags_things1` FOREIGN KEY (`things_id`) REFERENCES `things` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `text` text NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reply_to_id` int unsigned DEFAULT NULL COMMENT 'Parrent topic if it answer',
  `forums_id` int unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT 'must be only at first topic of thread',
  PRIMARY KEY (`id`),
  KEY `fk_topics_users1_idx` (`users_id`),
  KEY `fk_topics_topics1_idx` (`reply_to_id`),
  KEY `fk_topics_forums1_idx` (`forums_id`),
  CONSTRAINT `fk_topics_forums1` FOREIGN KEY (`forums_id`) REFERENCES `forums` (`id`),
  CONSTRAINT `fk_topics_topics1` FOREIGN KEY (`reply_to_id`) REFERENCES `topics` (`id`),
  CONSTRAINT `fk_topics_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `passwd_hash` varchar(40) NOT NULL COMMENT 'hash of password',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `profiles_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_users_profiles1_idx` (`profiles_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_users_profiles1` FOREIGN KEY (`profiles_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_groups` (
  `users_id` int unsigned NOT NULL,
  `groups_id` int unsigned NOT NULL,
  PRIMARY KEY (`users_id`,`groups_id`),
  KEY `fk_users_groups_users1_idx` (`users_id`),
  KEY `fk_users_groups_groups1_idx` (`groups_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 13:07:32
