-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: UniversityDB
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `season` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,2016,'fall'),(2,2017,'spring'),(3,2017,'fall'),(4,2018,'spring'),(5,2018,'fall'),(6,2019,'spring'),(7,2019,'fall'),(8,2020,'spring'),(9,2016,'fall'),(10,2017,'spring'),(11,2017,'fall'),(12,2018,'spring'),(13,2018,'fall'),(14,2019,'spring'),(15,2019,'fall'),(16,2020,'spring'),(17,2016,'fall'),(18,2017,'spring'),(19,2017,'fall'),(20,2018,'spring'),(21,2018,'fall'),(22,2019,'spring'),(23,2019,'fall'),(24,2020,'spring'),(25,2016,'fall'),(26,2017,'spring'),(27,2017,'fall'),(28,2018,'spring'),(29,2018,'fall'),(30,2019,'spring'),(31,2019,'fall'),(32,2020,'spring'),(33,2016,'fall'),(34,2017,'spring'),(35,2017,'fall'),(36,2018,'spring'),(37,2018,'fall'),(38,2019,'spring'),(39,2019,'fall'),(40,2020,'spring'),(41,2016,'fall'),(42,2017,'spring'),(43,2017,'fall'),(44,2018,'spring'),(45,2018,'fall'),(46,2019,'spring'),(47,2019,'fall'),(48,2020,'spring'),(49,2016,'fall'),(50,2017,'spring'),(51,2017,'fall'),(52,2018,'spring'),(53,2018,'fall'),(54,2019,'spring'),(55,2019,'fall'),(56,2020,'spring'),(57,2016,'fall'),(58,2017,'spring'),(59,2017,'fall'),(60,2018,'spring'),(61,2018,'fall'),(62,2019,'spring'),(63,2019,'fall'),(64,2020,'spring'),(65,2016,'fall'),(66,2017,'spring'),(67,2017,'fall'),(68,2018,'spring'),(69,2018,'fall'),(70,2019,'spring'),(71,2019,'fall'),(72,2020,'spring'),(73,2016,'fall'),(74,2017,'spring'),(75,2017,'fall'),(76,2018,'spring'),(77,2018,'fall'),(78,2019,'spring'),(79,2019,'fall'),(80,2020,'spring'),(81,2016,'fall'),(82,2017,'spring'),(83,2017,'fall'),(84,2018,'spring'),(85,2018,'fall'),(86,2019,'spring'),(87,2019,'fall'),(88,2020,'spring'),(89,2016,'fall'),(90,2017,'spring'),(91,2017,'fall'),(92,2018,'spring'),(93,2018,'fall'),(94,2019,'spring'),(95,2019,'fall'),(96,2020,'spring'),(97,2016,'fall'),(98,2017,'spring'),(99,2017,'fall'),(100,2018,'spring'),(101,2018,'fall'),(102,2019,'spring'),(103,2019,'fall'),(104,2020,'spring'),(105,2016,'fall'),(106,2017,'spring'),(107,2017,'fall'),(108,2018,'spring'),(109,2018,'fall'),(110,2019,'spring'),(111,2019,'fall'),(112,2020,'spring'),(113,2016,'fall'),(114,2017,'spring'),(115,2017,'fall'),(116,2018,'spring'),(117,2018,'fall'),(118,2019,'spring'),(119,2019,'fall'),(120,2020,'spring'),(121,2016,'fall'),(122,2017,'spring'),(123,2017,'fall'),(124,2018,'spring'),(125,2018,'fall'),(126,2019,'spring'),(127,2019,'fall'),(128,2020,'spring'),(129,2016,'fall'),(130,2017,'spring'),(131,2017,'fall'),(132,2018,'spring'),(133,2018,'fall'),(134,2019,'spring'),(135,2019,'fall'),(136,2020,'spring'),(137,2016,'fall'),(138,2017,'spring'),(139,2017,'fall'),(140,2018,'spring'),(141,2018,'fall'),(142,2019,'spring'),(143,2019,'fall'),(144,2020,'spring'),(145,2016,'fall'),(146,2017,'spring'),(147,2017,'fall'),(148,2018,'spring'),(149,2018,'fall'),(150,2019,'spring'),(151,2019,'fall'),(152,2020,'spring'),(153,2016,'fall'),(154,2017,'spring'),(155,2017,'fall'),(156,2018,'spring'),(157,2018,'fall'),(158,2019,'spring'),(159,2019,'fall'),(160,2020,'spring'),(161,2016,'fall'),(162,2017,'spring'),(163,2017,'fall'),(164,2018,'spring'),(165,2018,'fall'),(166,2019,'spring'),(167,2019,'fall'),(168,2020,'spring'),(169,2016,'fall'),(170,2017,'spring'),(171,2017,'fall'),(172,2018,'spring'),(173,2018,'fall'),(174,2019,'spring'),(175,2019,'fall'),(176,2020,'spring'),(177,2016,'fall'),(178,2017,'spring'),(179,2017,'fall'),(180,2018,'spring'),(181,2018,'fall'),(182,2019,'spring'),(183,2019,'fall'),(184,2020,'spring'),(185,2016,'fall'),(186,2017,'spring'),(187,2017,'fall'),(188,2018,'spring'),(189,2018,'fall'),(190,2019,'spring'),(191,2019,'fall'),(192,2020,'spring'),(193,2016,'fall'),(194,2017,'spring'),(195,2017,'fall'),(196,2018,'spring'),(197,2018,'fall'),(198,2019,'spring'),(199,2019,'fall'),(200,2020,'spring'),(201,2016,'fall'),(202,2017,'spring'),(203,2017,'fall'),(204,2018,'spring'),(205,2018,'fall'),(206,2019,'spring'),(207,2019,'fall'),(208,2020,'spring'),(209,2016,'fall'),(210,2017,'spring'),(211,2017,'fall'),(212,2018,'spring'),(213,2018,'fall'),(214,2019,'spring'),(215,2019,'fall'),(216,2020,'spring'),(217,2016,'fall'),(218,2017,'spring'),(219,2017,'fall'),(220,2018,'spring'),(221,2018,'fall'),(222,2019,'spring'),(223,2019,'fall'),(224,2020,'spring'),(225,2016,'fall'),(226,2017,'spring'),(227,2017,'fall'),(228,2018,'spring'),(229,2018,'fall'),(230,2019,'spring'),(231,2019,'fall'),(232,2020,'spring');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29 21:26:27
