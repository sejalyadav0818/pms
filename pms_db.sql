-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: pms_db
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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('41b6adc4-dba3-4094-b62e-25afa418e063','87afb90dc7333f00f2fe4883e1a607bd0a509d590bc6094cbacd76a946b27d20','2023-05-15 12:51:54.568','20230515125154_init',NULL,NULL,'2023-05-15 12:51:54.463',1),('84b9ffbc-54a8-4ce7-8522-b7785937402f','425dc44701b31ef9e023fea19c840355a7d58a417287aa61983a030d7b106485','2023-05-16 04:56:49.380','20230516045649_new',NULL,NULL,'2023-05-16 04:56:49.299',1),('cec78a72-1c53-40ec-9898-6b6f26d9de07','6d8bf4e5a27fd64693f8477cd2e443fadd8b7f6a243131d3ab950e1a74d4f595','2023-05-15 07:40:57.232','20230515074057_init',NULL,NULL,'2023-05-15 07:40:57.171',1),('d5f9e33a-5cde-426c-ad40-789f92a42c57','81fc21567f9575c7e45a48283daf7b6ef4638f77b8927b75965b10a137db8b0f','2023-05-16 04:35:07.288','20230516043507_db_change',NULL,NULL,'2023-05-16 04:35:07.140',1),('e72bf515-6ec7-44f3-880f-e7f0c0ddcadb','50a8d05090b5cfe2f02c2134f7dbd263f06f246dbdb10c157e377a2025552e0d','2023-05-15 12:55:05.977','20230515125505_user',NULL,NULL,'2023-05-15 12:55:05.935',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createddate` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `modifieddate` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email_key` (`email`),
  UNIQUE KEY `user_google_id_key` (`google_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'pmsadmin@gmail.com','admin','pmsadmin@123',1,NULL,'2023-05-16 05:03:29.312','2023-05-16 05:03:29.312'),(2,'sejalyadav122@gmail.com','sejal','Bul@123',0,NULL,'2023-05-16 07:45:32.872','2023-05-16 07:45:32.872'),(5,'sejalyadav@gmail.com','sejall','$argon2id$v=19$m=65536,t=3,p=4$/S1vaLs7Pu6qpPwJqyBDGQ$RI9CCLgqlVwFbvyWM+yQv+MUqzLPGklFSt+dIZgWXLY',0,NULL,'2023-05-16 08:05:56.239','2023-05-16 08:05:56.239'),(7,'jiyapatel@gmail.com','jiya','$argon2id$v=19$m=65536,t=3,p=4$8tJG7VtUTpizr/6XWnxy7Q$wDBwqi56/zv+7XT0RSqgolKIwyZUtONeNGmVrFTsb8A',0,NULL,'2023-05-16 13:12:30.491','2023-05-16 13:12:30.491');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 19:19:02
