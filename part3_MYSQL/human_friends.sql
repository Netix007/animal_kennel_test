-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: human_friends
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
-- Table structure for table `all_animals`
--

DROP TABLE IF EXISTS `all_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL,
  `pid1` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `comands` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_animals`
--

LOCK TABLES `all_animals` WRITE;
/*!40000 ALTER TABLE `all_animals` DISABLE KEYS */;
INSERT INTO `all_animals` VALUES (1,'pet','dog','Гром','2019-11-25',NULL),(2,'pet','dog','Спарта','2021-03-22',NULL),(4,'pet','cat','Тайсон','2017-09-11',NULL),(5,'pet','cat','Кокос','0201-10-20',NULL),(7,'pet','hamster','Марсик','2021-12-12',NULL),(8,'pet','hamster','Пончик','2022-10-10',NULL),(10,'pack_animal','horse','Богатырь','2013-09-03','[\"Везти груз\"]'),(11,'pack_animal','horse','Камелия','2017-11-22','[\"Везти груз\"]'),(12,'pack_animal','donkey','Нельсон','2014-11-25','[\"Везти груз\"]'),(13,'pack_animal','donkey','Загреб','2021-05-03','[\"Везти груз\"]');
/*!40000 ALTER TABLE `all_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `comands` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'root','Животные',NULL,NULL);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat`
--

DROP TABLE IF EXISTS `cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `comands` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat`
--

LOCK TABLES `cat` WRITE;
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` VALUES (1,'pet','Тайсон','2017-09-11',NULL),(2,'pet','Кокос','0201-10-20',NULL);
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dog`
--

DROP TABLE IF EXISTS `dog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `comands` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dog`
--

LOCK TABLES `dog` WRITE;
/*!40000 ALTER TABLE `dog` DISABLE KEYS */;
INSERT INTO `dog` VALUES (1,'pet','Гром','2019-11-25',NULL),(2,'pet','Спарта','2021-03-22',NULL);
/*!40000 ALTER TABLE `dog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamster`
--

DROP TABLE IF EXISTS `hamster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hamster` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `comands` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamster`
--

LOCK TABLES `hamster` WRITE;
/*!40000 ALTER TABLE `hamster` DISABLE KEYS */;
INSERT INTO `hamster` VALUES (1,'pet','Марсик','2021-12-12',NULL),(2,'pet','Пончик','2022-10-10',NULL);
/*!40000 ALTER TABLE `hamster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horse_and_donkey`
--

DROP TABLE IF EXISTS `horse_and_donkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horse_and_donkey` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL DEFAULT '',
  `pid1` varchar(6) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `birthday` date DEFAULT NULL,
  `comands` json DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horse_and_donkey`
--

LOCK TABLES `horse_and_donkey` WRITE;
/*!40000 ALTER TABLE `horse_and_donkey` DISABLE KEYS */;
INSERT INTO `horse_and_donkey` VALUES (1,'pack_animal','horse','Богатырь','2013-09-03','[\"Везти груз\"]'),(2,'pack_animal','horse','Камелия','2017-11-22','[\"Везти груз\"]'),(3,'pack_animal','donkey','Нельсон','2014-11-25','[\"Везти груз\"]'),(4,'pack_animal','donkey','Загреб','2021-05-03','[\"Везти груз\"]');
/*!40000 ALTER TABLE `horse_and_donkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_animal`
--

DROP TABLE IF EXISTS `pack_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pack_animal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_animal`
--

LOCK TABLES `pack_animal` WRITE;
/*!40000 ALTER TABLE `pack_animal` DISABLE KEYS */;
INSERT INTO `pack_animal` VALUES (1,'animal','Вьючные животные');
/*!40000 ALTER TABLE `pack_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES (1,'animal','Домашние животные');
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `young_animals`
--

DROP TABLE IF EXISTS `young_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `young_animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) NOT NULL,
  `pid1` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `comands` json DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `young_animals`
--

LOCK TABLES `young_animals` WRITE;
/*!40000 ALTER TABLE `young_animals` DISABLE KEYS */;
INSERT INTO `young_animals` VALUES (1,'pet','dog','Спарта','2021-03-22',NULL,'1 year 10 month'),(2,'pet','hamster','Марсик','2021-12-12',NULL,'1 year 2 month'),(3,'pet','hamster','Пончик','2022-10-10',NULL,'4 month'),(5,'pack_animal','donkey','Загреб','2021-05-03','[\"Везти груз\"]','1 year 9 month');
/*!40000 ALTER TABLE `young_animals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-12  2:51:27
