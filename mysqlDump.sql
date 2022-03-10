-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (arm64)
--
-- Host: 127.0.0.1    Database: matrixdb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `clone`
--

DROP TABLE IF EXISTS `clone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `place` int NOT NULL,
  `matrix_type_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj3xskor3r98hsbmviraxohu00` (`matrix_type_id`),
  KEY `FKq21u8l54kcrcja0uia49n13ai` (`user_id`),
  CONSTRAINT `FKj3xskor3r98hsbmviraxohu00` FOREIGN KEY (`matrix_type_id`) REFERENCES `matrix_type` (`id`),
  CONSTRAINT `FKq21u8l54kcrcja0uia49n13ai` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clone`
--

LOCK TABLES `clone` WRITE;
/*!40000 ALTER TABLE `clone` DISABLE KEYS */;
/*!40000 ALTER TABLE `clone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clone_stat`
--

DROP TABLE IF EXISTS `clone_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clone_stat` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clone_stat`
--

LOCK TABLES `clone_stat` WRITE;
/*!40000 ALTER TABLE `clone_stat` DISABLE KEYS */;
INSERT INTO `clone_stat` VALUES (1,0,'1'),(2,0,'2'),(3,0,'3'),(4,0,'4'),(5,0,'5'),(6,0,'6'),(7,0,'7'),(8,0,'8'),(9,0,'9'),(10,0,'11'),(11,0,'12');
/*!40000 ALTER TABLE `clone_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrix`
--

DROP TABLE IF EXISTS `matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matrix` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `matrix_essence` int DEFAULT NULL,
  `matrix_type_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2qf6hly5g1e0xird4i3e5d9m2` (`matrix_type_id`),
  KEY `FK9xke8h761m0rj3j1du7lrds64` (`parent_id`),
  KEY `FK8er9lvvnovg1suvnyfluck5dn` (`user_id`),
  CONSTRAINT `FK2qf6hly5g1e0xird4i3e5d9m2` FOREIGN KEY (`matrix_type_id`) REFERENCES `matrix_type` (`id`),
  CONSTRAINT `FK8er9lvvnovg1suvnyfluck5dn` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK9xke8h761m0rj3j1du7lrds64` FOREIGN KEY (`parent_id`) REFERENCES `matrix` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrix`
--

LOCK TABLES `matrix` WRITE;
/*!40000 ALTER TABLE `matrix` DISABLE KEYS */;
INSERT INTO `matrix` VALUES (1,'2022-03-05 12:04:49.000000',2,1,NULL,1),(492,'2022-03-09 02:59:06.358677',NULL,1,1,1),(493,'2022-03-09 02:59:09.225013',NULL,1,1,1),(494,'2022-03-09 02:59:12.214715',NULL,1,493,1),(495,'2022-03-09 02:59:15.677563',NULL,1,493,1),(496,'2022-03-09 02:59:18.818818',NULL,1,495,1);
/*!40000 ALTER TABLE `matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrix_type`
--

DROP TABLE IF EXISTS `matrix_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matrix_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `can_buy` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `sum` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrix_type`
--

LOCK TABLES `matrix_type` WRITE;
/*!40000 ALTER TABLE `matrix_type` DISABLE KEYS */;
INSERT INTO `matrix_type` VALUES (1,1,1,'m1',500),(2,0,0,'m2',1500),(3,0,0,'m3',4000),(4,0,0,NULL,7000),(5,0,0,NULL,10000),(6,0,0,NULL,16000),(7,0,0,NULL,20000),(8,0,0,NULL,30000),(9,0,0,NULL,30000),(10,0,0,NULL,90000),(11,0,0,NULL,260000);
/*!40000 ALTER TABLE `matrix_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `roles_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roles_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistic`
--

DROP TABLE IF EXISTS `statistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `all_comet` int NOT NULL,
  `all_planet` int NOT NULL,
  `first_planet` int NOT NULL,
  `my_comet` int NOT NULL,
  `my_inventory_income` int NOT NULL,
  `my_planet` int NOT NULL,
  `structure_planet` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoifiete5h1dmj02jk2fwe6d65` (`user_id`),
  CONSTRAINT `FKoifiete5h1dmj02jk2fwe6d65` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistic`
--

LOCK TABLES `statistic` WRITE;
/*!40000 ALTER TABLE `statistic` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `roles_id` bigint NOT NULL,
  KEY `FKdbv8tdyltxa1qjmfnj9oboxse` (`roles_id`),
  KEY `FKhfh9dx7w3ubf1co1vdev94g3f` (`user_id`),
  CONSTRAINT `FKdbv8tdyltxa1qjmfnj9oboxse` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`roles_id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activation_date` datetime(6) DEFAULT NULL,
  `active_partners` int NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `balance` int NOT NULL DEFAULT '0',
  `can_create_comment` bit(1) NOT NULL,
  `clones` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `finance_password` varchar(255) DEFAULT NULL,
  `first_enter` bit(1) NOT NULL,
  `first_lines` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `has_fin_password` bit(1) NOT NULL,
  `income` int NOT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `last_name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `ref_link` varchar(255) DEFAULT NULL,
  `registration_date` datetime(6) DEFAULT NULL,
  `show_inviter` bit(1) NOT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `tg_key` varchar(255) DEFAULT NULL,
  `user_on_links` int DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `vkontakte` varchar(255) DEFAULT NULL,
  `referral_id` bigint DEFAULT NULL,
  `statistic_id` bigint DEFAULT NULL,
  `matrix_parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbw2farnk1qbpl942bebl5r2q0` (`referral_id`),
  KEY `FK6h413ri0tvdo8gnlp6akea59s` (`statistic_id`),
  KEY `FKlcixvlxxygeur42jtpajxq827` (`matrix_parent_id`),
  CONSTRAINT `FK6h413ri0tvdo8gnlp6akea59s` FOREIGN KEY (`statistic_id`) REFERENCES `statistic` (`id`),
  CONSTRAINT `FKbw2farnk1qbpl942bebl5r2q0` FOREIGN KEY (`referral_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKlcixvlxxygeur42jtpajxq827` FOREIGN KEY (`matrix_parent_id`) REFERENCES `matrix` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2022-03-04 14:18:35.000000',0,NULL,0,_binary '',62,'marxjung@gmail.com',NULL,_binary '\0',0,'Marlen',_binary '',0,'darewod1703',1,'Ibraimov',NULL,'$2a$12$Uxxav406xrSs3GbAubmexOxOwLzY2U.MKPdQpN/5AaYhc2mcalvem','996555331627',NULL,'2022-03-07 00:36:28.000000',_binary '',NULL,NULL,0,'darewod',NULL,NULL,NULL,1),(2,'2022-03-04 14:18:35.000000',0,NULL,0,_binary '',0,'marxjung@gmail.com',NULL,_binary '\0',0,'Egor',_binary '',0,'darewod1703',1,'Kravchuk',NULL,'$2a$12$Uxxav406xrSs3GbAubmexOxOwLzY2U.MKPdQpN/5AaYhc2mcalvem','996555331627',NULL,'2022-03-07 00:36:30.000000',_binary '',NULL,NULL,0,'switgold',NULL,1,NULL,NULL);
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

-- Dump completed on 2022-03-09 16:19:47
