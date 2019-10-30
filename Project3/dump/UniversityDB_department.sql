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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `building` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=784 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Africana Studies','Main'),(2,'Biology','Sampson Hoffland'),(3,'Chemistry','Sampson Hoffland'),(4,'Classics','Main'),(5,'Communication Studies','Campus House'),(6,'Computer Science','Olin'),(7,'Economics Accounting and Management','Olin'),(8,'Education','Koren'),(9,'English','Main'),(10,'Environmental Studies','Valders'),(11,'Health Promotion and Exercise Science','Regents Center'),(12,'History','Koren'),(13,'International Studies','Olin'),(14,'Library','Preus Library'),(15,'Mathematics','Olin'),(16,'Modern Languages Literatures and Linguistics','Main'),(17,'Music','Jenson-Noble'),(18,'Nursing','Valders'),(19,'Paideia','Main'),(20,'Philosophy','Valders'),(21,'Physics','Valders'),(22,'Political Science','Koren'),(23,'Psychology','Valders'),(24,'Religion','Ockham House'),(25,'Sociology Social Work','Koren'),(26,'Visual and Performing Arts','Center for the Arts'),(27,'Women and Gender Studies','Koren'),(28,'Africana Studies','Main'),(29,'Biology','Sampson Hoffland'),(30,'Chemistry','Sampson Hoffland'),(31,'Classics','Main'),(32,'Communication Studies','Campus House'),(33,'Computer Science','Olin'),(34,'Economics Accounting and Management','Olin'),(35,'Education','Koren'),(36,'English','Main'),(37,'Environmental Studies','Valders'),(38,'Health Promotion and Exercise Science','Regents Center'),(39,'History','Koren'),(40,'International Studies','Olin'),(41,'Library','Preus Library'),(42,'Mathematics','Olin'),(43,'Modern Languages Literatures and Linguistics','Main'),(44,'Music','Jenson-Noble'),(45,'Nursing','Valders'),(46,'Paideia','Main'),(47,'Philosophy','Valders'),(48,'Physics','Valders'),(49,'Political Science','Koren'),(50,'Psychology','Valders'),(51,'Religion','Ockham House'),(52,'Sociology Social Work','Koren'),(53,'Visual and Performing Arts','Center for the Arts'),(54,'Women and Gender Studies','Koren'),(55,'Africana Studies','Main'),(56,'Biology','Sampson Hoffland'),(57,'Chemistry','Sampson Hoffland'),(58,'Classics','Main'),(59,'Communication Studies','Campus House'),(60,'Computer Science','Olin'),(61,'Economics Accounting and Management','Olin'),(62,'Education','Koren'),(63,'English','Main'),(64,'Environmental Studies','Valders'),(65,'Health Promotion and Exercise Science','Regents Center'),(66,'History','Koren'),(67,'International Studies','Olin'),(68,'Library','Preus Library'),(69,'Mathematics','Olin'),(70,'Modern Languages Literatures and Linguistics','Main'),(71,'Music','Jenson-Noble'),(72,'Nursing','Valders'),(73,'Paideia','Main'),(74,'Philosophy','Valders'),(75,'Physics','Valders'),(76,'Political Science','Koren'),(77,'Psychology','Valders'),(78,'Religion','Ockham House'),(79,'Sociology Social Work','Koren'),(80,'Visual and Performing Arts','Center for the Arts'),(81,'Women and Gender Studies','Koren'),(82,'Africana Studies','Main'),(83,'Biology','Sampson Hoffland'),(84,'Chemistry','Sampson Hoffland'),(85,'Classics','Main'),(86,'Communication Studies','Campus House'),(87,'Computer Science','Olin'),(88,'Economics Accounting and Management','Olin'),(89,'Education','Koren'),(90,'English','Main'),(91,'Environmental Studies','Valders'),(92,'Health Promotion and Exercise Science','Regents Center'),(93,'History','Koren'),(94,'International Studies','Olin'),(95,'Library','Preus Library'),(96,'Mathematics','Olin'),(97,'Modern Languages Literatures and Linguistics','Main'),(98,'Music','Jenson-Noble'),(99,'Nursing','Valders'),(100,'Paideia','Main'),(101,'Philosophy','Valders'),(102,'Physics','Valders'),(103,'Political Science','Koren'),(104,'Psychology','Valders'),(105,'Religion','Ockham House'),(106,'Sociology Social Work','Koren'),(107,'Visual and Performing Arts','Center for the Arts'),(108,'Women and Gender Studies','Koren'),(109,'Africana Studies','Main'),(110,'Biology','Sampson Hoffland'),(111,'Chemistry','Sampson Hoffland'),(112,'Classics','Main'),(113,'Communication Studies','Campus House'),(114,'Computer Science','Olin'),(115,'Economics Accounting and Management','Olin'),(116,'Education','Koren'),(117,'English','Main'),(118,'Environmental Studies','Valders'),(119,'Health Promotion and Exercise Science','Regents Center'),(120,'History','Koren'),(121,'International Studies','Olin'),(122,'Library','Preus Library'),(123,'Mathematics','Olin'),(124,'Modern Languages Literatures and Linguistics','Main'),(125,'Music','Jenson-Noble'),(126,'Nursing','Valders'),(127,'Paideia','Main'),(128,'Philosophy','Valders'),(129,'Physics','Valders'),(130,'Political Science','Koren'),(131,'Psychology','Valders'),(132,'Religion','Ockham House'),(133,'Sociology Social Work','Koren'),(134,'Visual and Performing Arts','Center for the Arts'),(135,'Women and Gender Studies','Koren'),(136,'Africana Studies','Main'),(137,'Biology','Sampson Hoffland'),(138,'Chemistry','Sampson Hoffland'),(139,'Classics','Main'),(140,'Communication Studies','Campus House'),(141,'Computer Science','Olin'),(142,'Economics Accounting and Management','Olin'),(143,'Education','Koren'),(144,'English','Main'),(145,'Environmental Studies','Valders'),(146,'Health Promotion and Exercise Science','Regents Center'),(147,'History','Koren'),(148,'International Studies','Olin'),(149,'Library','Preus Library'),(150,'Mathematics','Olin'),(151,'Modern Languages Literatures and Linguistics','Main'),(152,'Music','Jenson-Noble'),(153,'Nursing','Valders'),(154,'Paideia','Main'),(155,'Philosophy','Valders'),(156,'Physics','Valders'),(157,'Political Science','Koren'),(158,'Psychology','Valders'),(159,'Religion','Ockham House'),(160,'Sociology Social Work','Koren'),(161,'Visual and Performing Arts','Center for the Arts'),(162,'Women and Gender Studies','Koren'),(163,'Africana Studies','Main'),(164,'Biology','Sampson Hoffland'),(165,'Chemistry','Sampson Hoffland'),(166,'Classics','Main'),(167,'Communication Studies','Campus House'),(168,'Computer Science','Olin'),(169,'Economics Accounting and Management','Olin'),(170,'Education','Koren'),(171,'English','Main'),(172,'Environmental Studies','Valders'),(173,'Health Promotion and Exercise Science','Regents Center'),(174,'History','Koren'),(175,'International Studies','Olin'),(176,'Library','Preus Library'),(177,'Mathematics','Olin'),(178,'Modern Languages Literatures and Linguistics','Main'),(179,'Music','Jenson-Noble'),(180,'Nursing','Valders'),(181,'Paideia','Main'),(182,'Philosophy','Valders'),(183,'Physics','Valders'),(184,'Political Science','Koren'),(185,'Psychology','Valders'),(186,'Religion','Ockham House'),(187,'Sociology Social Work','Koren'),(188,'Visual and Performing Arts','Center for the Arts'),(189,'Women and Gender Studies','Koren'),(190,'Africana Studies','Main'),(191,'Biology','Sampson Hoffland'),(192,'Chemistry','Sampson Hoffland'),(193,'Classics','Main'),(194,'Communication Studies','Campus House'),(195,'Computer Science','Olin'),(196,'Economics Accounting and Management','Olin'),(197,'Education','Koren'),(198,'English','Main'),(199,'Environmental Studies','Valders'),(200,'Health Promotion and Exercise Science','Regents Center'),(201,'History','Koren'),(202,'International Studies','Olin'),(203,'Library','Preus Library'),(204,'Mathematics','Olin'),(205,'Modern Languages Literatures and Linguistics','Main'),(206,'Music','Jenson-Noble'),(207,'Nursing','Valders'),(208,'Paideia','Main'),(209,'Philosophy','Valders'),(210,'Physics','Valders'),(211,'Political Science','Koren'),(212,'Psychology','Valders'),(213,'Religion','Ockham House'),(214,'Sociology Social Work','Koren'),(215,'Visual and Performing Arts','Center for the Arts'),(216,'Women and Gender Studies','Koren'),(217,'Africana Studies','Main'),(218,'Biology','Sampson Hoffland'),(219,'Chemistry','Sampson Hoffland'),(220,'Classics','Main'),(221,'Communication Studies','Campus House'),(222,'Computer Science','Olin'),(223,'Economics Accounting and Management','Olin'),(224,'Education','Koren'),(225,'English','Main'),(226,'Environmental Studies','Valders'),(227,'Health Promotion and Exercise Science','Regents Center'),(228,'History','Koren'),(229,'International Studies','Olin'),(230,'Library','Preus Library'),(231,'Mathematics','Olin'),(232,'Modern Languages Literatures and Linguistics','Main'),(233,'Music','Jenson-Noble'),(234,'Nursing','Valders'),(235,'Paideia','Main'),(236,'Philosophy','Valders'),(237,'Physics','Valders'),(238,'Political Science','Koren'),(239,'Psychology','Valders'),(240,'Religion','Ockham House'),(241,'Sociology Social Work','Koren'),(242,'Visual and Performing Arts','Center for the Arts'),(243,'Women and Gender Studies','Koren'),(244,'Africana Studies','Main'),(245,'Biology','Sampson Hoffland'),(246,'Chemistry','Sampson Hoffland'),(247,'Classics','Main'),(248,'Communication Studies','Campus House'),(249,'Computer Science','Olin'),(250,'Economics Accounting and Management','Olin'),(251,'Education','Koren'),(252,'English','Main'),(253,'Environmental Studies','Valders'),(254,'Health Promotion and Exercise Science','Regents Center'),(255,'History','Koren'),(256,'International Studies','Olin'),(257,'Library','Preus Library'),(258,'Mathematics','Olin'),(259,'Modern Languages Literatures and Linguistics','Main'),(260,'Music','Jenson-Noble'),(261,'Nursing','Valders'),(262,'Paideia','Main'),(263,'Philosophy','Valders'),(264,'Physics','Valders'),(265,'Political Science','Koren'),(266,'Psychology','Valders'),(267,'Religion','Ockham House'),(268,'Sociology Social Work','Koren'),(269,'Visual and Performing Arts','Center for the Arts'),(270,'Women and Gender Studies','Koren'),(271,'Africana Studies','Main'),(272,'Biology','Sampson Hoffland'),(273,'Chemistry','Sampson Hoffland'),(274,'Classics','Main'),(275,'Communication Studies','Campus House'),(276,'Computer Science','Olin'),(277,'Economics Accounting and Management','Olin'),(278,'Education','Koren'),(279,'English','Main'),(280,'Environmental Studies','Valders'),(281,'Health Promotion and Exercise Science','Regents Center'),(282,'History','Koren'),(283,'International Studies','Olin'),(284,'Library','Preus Library'),(285,'Mathematics','Olin'),(286,'Modern Languages Literatures and Linguistics','Main'),(287,'Music','Jenson-Noble'),(288,'Nursing','Valders'),(289,'Paideia','Main'),(290,'Philosophy','Valders'),(291,'Physics','Valders'),(292,'Political Science','Koren'),(293,'Psychology','Valders'),(294,'Religion','Ockham House'),(295,'Sociology Social Work','Koren'),(296,'Visual and Performing Arts','Center for the Arts'),(297,'Women and Gender Studies','Koren'),(298,'Africana Studies','Main'),(299,'Biology','Sampson Hoffland'),(300,'Chemistry','Sampson Hoffland'),(301,'Classics','Main'),(302,'Communication Studies','Campus House'),(303,'Computer Science','Olin'),(304,'Economics Accounting and Management','Olin'),(305,'Education','Koren'),(306,'English','Main'),(307,'Environmental Studies','Valders'),(308,'Health Promotion and Exercise Science','Regents Center'),(309,'History','Koren'),(310,'International Studies','Olin'),(311,'Library','Preus Library'),(312,'Mathematics','Olin'),(313,'Modern Languages Literatures and Linguistics','Main'),(314,'Music','Jenson-Noble'),(315,'Nursing','Valders'),(316,'Paideia','Main'),(317,'Philosophy','Valders'),(318,'Physics','Valders'),(319,'Political Science','Koren'),(320,'Psychology','Valders'),(321,'Religion','Ockham House'),(322,'Sociology Social Work','Koren'),(323,'Visual and Performing Arts','Center for the Arts'),(324,'Women and Gender Studies','Koren'),(325,'Africana Studies','Main'),(326,'Biology','Sampson Hoffland'),(327,'Chemistry','Sampson Hoffland'),(328,'Classics','Main'),(329,'Communication Studies','Campus House'),(330,'Computer Science','Olin'),(331,'Economics Accounting and Management','Olin'),(332,'Education','Koren'),(333,'English','Main'),(334,'Environmental Studies','Valders'),(335,'Health Promotion and Exercise Science','Regents Center'),(336,'History','Koren'),(337,'International Studies','Olin'),(338,'Library','Preus Library'),(339,'Mathematics','Olin'),(340,'Modern Languages Literatures and Linguistics','Main'),(341,'Music','Jenson-Noble'),(342,'Nursing','Valders'),(343,'Paideia','Main'),(344,'Philosophy','Valders'),(345,'Physics','Valders'),(346,'Political Science','Koren'),(347,'Psychology','Valders'),(348,'Religion','Ockham House'),(349,'Sociology Social Work','Koren'),(350,'Visual and Performing Arts','Center for the Arts'),(351,'Women and Gender Studies','Koren'),(352,'Africana Studies','Main'),(353,'Biology','Sampson Hoffland'),(354,'Chemistry','Sampson Hoffland'),(355,'Classics','Main'),(356,'Communication Studies','Campus House'),(357,'Computer Science','Olin'),(358,'Economics Accounting and Management','Olin'),(359,'Education','Koren'),(360,'English','Main'),(361,'Environmental Studies','Valders'),(362,'Health Promotion and Exercise Science','Regents Center'),(363,'History','Koren'),(364,'International Studies','Olin'),(365,'Library','Preus Library'),(366,'Mathematics','Olin'),(367,'Modern Languages Literatures and Linguistics','Main'),(368,'Music','Jenson-Noble'),(369,'Nursing','Valders'),(370,'Paideia','Main'),(371,'Philosophy','Valders'),(372,'Physics','Valders'),(373,'Political Science','Koren'),(374,'Psychology','Valders'),(375,'Religion','Ockham House'),(376,'Sociology Social Work','Koren'),(377,'Visual and Performing Arts','Center for the Arts'),(378,'Women and Gender Studies','Koren'),(379,'Africana Studies','Main'),(380,'Biology','Sampson Hoffland'),(381,'Chemistry','Sampson Hoffland'),(382,'Classics','Main'),(383,'Communication Studies','Campus House'),(384,'Computer Science','Olin'),(385,'Economics Accounting and Management','Olin'),(386,'Education','Koren'),(387,'English','Main'),(388,'Environmental Studies','Valders'),(389,'Health Promotion and Exercise Science','Regents Center'),(390,'History','Koren'),(391,'International Studies','Olin'),(392,'Library','Preus Library'),(393,'Mathematics','Olin'),(394,'Modern Languages Literatures and Linguistics','Main'),(395,'Music','Jenson-Noble'),(396,'Nursing','Valders'),(397,'Paideia','Main'),(398,'Philosophy','Valders'),(399,'Physics','Valders'),(400,'Political Science','Koren'),(401,'Psychology','Valders'),(402,'Religion','Ockham House'),(403,'Sociology Social Work','Koren'),(404,'Visual and Performing Arts','Center for the Arts'),(405,'Women and Gender Studies','Koren'),(406,'Africana Studies','Main'),(407,'Biology','Sampson Hoffland'),(408,'Chemistry','Sampson Hoffland'),(409,'Classics','Main'),(410,'Communication Studies','Campus House'),(411,'Computer Science','Olin'),(412,'Economics Accounting and Management','Olin'),(413,'Education','Koren'),(414,'English','Main'),(415,'Environmental Studies','Valders'),(416,'Health Promotion and Exercise Science','Regents Center'),(417,'History','Koren'),(418,'International Studies','Olin'),(419,'Library','Preus Library'),(420,'Mathematics','Olin'),(421,'Modern Languages Literatures and Linguistics','Main'),(422,'Music','Jenson-Noble'),(423,'Nursing','Valders'),(424,'Paideia','Main'),(425,'Philosophy','Valders'),(426,'Physics','Valders'),(427,'Political Science','Koren'),(428,'Psychology','Valders'),(429,'Religion','Ockham House'),(430,'Sociology Social Work','Koren'),(431,'Visual and Performing Arts','Center for the Arts'),(432,'Women and Gender Studies','Koren'),(433,'Africana Studies','Main'),(434,'Biology','Sampson Hoffland'),(435,'Chemistry','Sampson Hoffland'),(436,'Classics','Main'),(437,'Communication Studies','Campus House'),(438,'Computer Science','Olin'),(439,'Economics Accounting and Management','Olin'),(440,'Education','Koren'),(441,'English','Main'),(442,'Environmental Studies','Valders'),(443,'Health Promotion and Exercise Science','Regents Center'),(444,'History','Koren'),(445,'International Studies','Olin'),(446,'Library','Preus Library'),(447,'Mathematics','Olin'),(448,'Modern Languages Literatures and Linguistics','Main'),(449,'Music','Jenson-Noble'),(450,'Nursing','Valders'),(451,'Paideia','Main'),(452,'Philosophy','Valders'),(453,'Physics','Valders'),(454,'Political Science','Koren'),(455,'Psychology','Valders'),(456,'Religion','Ockham House'),(457,'Sociology Social Work','Koren'),(458,'Visual and Performing Arts','Center for the Arts'),(459,'Women and Gender Studies','Koren'),(460,'Africana Studies','Main'),(461,'Biology','Sampson Hoffland'),(462,'Chemistry','Sampson Hoffland'),(463,'Classics','Main'),(464,'Communication Studies','Campus House'),(465,'Computer Science','Olin'),(466,'Economics Accounting and Management','Olin'),(467,'Education','Koren'),(468,'English','Main'),(469,'Environmental Studies','Valders'),(470,'Health Promotion and Exercise Science','Regents Center'),(471,'History','Koren'),(472,'International Studies','Olin'),(473,'Library','Preus Library'),(474,'Mathematics','Olin'),(475,'Modern Languages Literatures and Linguistics','Main'),(476,'Music','Jenson-Noble'),(477,'Nursing','Valders'),(478,'Paideia','Main'),(479,'Philosophy','Valders'),(480,'Physics','Valders'),(481,'Political Science','Koren'),(482,'Psychology','Valders'),(483,'Religion','Ockham House'),(484,'Sociology Social Work','Koren'),(485,'Visual and Performing Arts','Center for the Arts'),(486,'Women and Gender Studies','Koren'),(487,'Africana Studies','Main'),(488,'Biology','Sampson Hoffland'),(489,'Chemistry','Sampson Hoffland'),(490,'Classics','Main'),(491,'Communication Studies','Campus House'),(492,'Computer Science','Olin'),(493,'Economics Accounting and Management','Olin'),(494,'Education','Koren'),(495,'English','Main'),(496,'Environmental Studies','Valders'),(497,'Health Promotion and Exercise Science','Regents Center'),(498,'History','Koren'),(499,'International Studies','Olin'),(500,'Library','Preus Library'),(501,'Mathematics','Olin'),(502,'Modern Languages Literatures and Linguistics','Main'),(503,'Music','Jenson-Noble'),(504,'Nursing','Valders'),(505,'Paideia','Main'),(506,'Philosophy','Valders'),(507,'Physics','Valders'),(508,'Political Science','Koren'),(509,'Psychology','Valders'),(510,'Religion','Ockham House'),(511,'Sociology Social Work','Koren'),(512,'Visual and Performing Arts','Center for the Arts'),(513,'Women and Gender Studies','Koren'),(514,'Africana Studies','Main'),(515,'Biology','Sampson Hoffland'),(516,'Chemistry','Sampson Hoffland'),(517,'Classics','Main'),(518,'Communication Studies','Campus House'),(519,'Computer Science','Olin'),(520,'Economics Accounting and Management','Olin'),(521,'Education','Koren'),(522,'English','Main'),(523,'Environmental Studies','Valders'),(524,'Health Promotion and Exercise Science','Regents Center'),(525,'History','Koren'),(526,'International Studies','Olin'),(527,'Library','Preus Library'),(528,'Mathematics','Olin'),(529,'Modern Languages Literatures and Linguistics','Main'),(530,'Music','Jenson-Noble'),(531,'Nursing','Valders'),(532,'Paideia','Main'),(533,'Philosophy','Valders'),(534,'Physics','Valders'),(535,'Political Science','Koren'),(536,'Psychology','Valders'),(537,'Religion','Ockham House'),(538,'Sociology Social Work','Koren'),(539,'Visual and Performing Arts','Center for the Arts'),(540,'Women and Gender Studies','Koren'),(541,'Africana Studies','Main'),(542,'Biology','Sampson Hoffland'),(543,'Chemistry','Sampson Hoffland'),(544,'Classics','Main'),(545,'Communication Studies','Campus House'),(546,'Computer Science','Olin'),(547,'Economics Accounting and Management','Olin'),(548,'Education','Koren'),(549,'English','Main'),(550,'Environmental Studies','Valders'),(551,'Health Promotion and Exercise Science','Regents Center'),(552,'History','Koren'),(553,'International Studies','Olin'),(554,'Library','Preus Library'),(555,'Mathematics','Olin'),(556,'Modern Languages Literatures and Linguistics','Main'),(557,'Music','Jenson-Noble'),(558,'Nursing','Valders'),(559,'Paideia','Main'),(560,'Philosophy','Valders'),(561,'Physics','Valders'),(562,'Political Science','Koren'),(563,'Psychology','Valders'),(564,'Religion','Ockham House'),(565,'Sociology Social Work','Koren'),(566,'Visual and Performing Arts','Center for the Arts'),(567,'Women and Gender Studies','Koren'),(568,'Africana Studies','Main'),(569,'Biology','Sampson Hoffland'),(570,'Chemistry','Sampson Hoffland'),(571,'Classics','Main'),(572,'Communication Studies','Campus House'),(573,'Computer Science','Olin'),(574,'Economics Accounting and Management','Olin'),(575,'Education','Koren'),(576,'English','Main'),(577,'Environmental Studies','Valders'),(578,'Health Promotion and Exercise Science','Regents Center'),(579,'History','Koren'),(580,'International Studies','Olin'),(581,'Library','Preus Library'),(582,'Mathematics','Olin'),(583,'Modern Languages Literatures and Linguistics','Main'),(584,'Music','Jenson-Noble'),(585,'Nursing','Valders'),(586,'Paideia','Main'),(587,'Philosophy','Valders'),(588,'Physics','Valders'),(589,'Political Science','Koren'),(590,'Psychology','Valders'),(591,'Religion','Ockham House'),(592,'Sociology Social Work','Koren'),(593,'Visual and Performing Arts','Center for the Arts'),(594,'Women and Gender Studies','Koren'),(595,'Africana Studies','Main'),(596,'Biology','Sampson Hoffland'),(597,'Chemistry','Sampson Hoffland'),(598,'Classics','Main'),(599,'Communication Studies','Campus House'),(600,'Computer Science','Olin'),(601,'Economics Accounting and Management','Olin'),(602,'Education','Koren'),(603,'English','Main'),(604,'Environmental Studies','Valders'),(605,'Health Promotion and Exercise Science','Regents Center'),(606,'History','Koren'),(607,'International Studies','Olin'),(608,'Library','Preus Library'),(609,'Mathematics','Olin'),(610,'Modern Languages Literatures and Linguistics','Main'),(611,'Music','Jenson-Noble'),(612,'Nursing','Valders'),(613,'Paideia','Main'),(614,'Philosophy','Valders'),(615,'Physics','Valders'),(616,'Political Science','Koren'),(617,'Psychology','Valders'),(618,'Religion','Ockham House'),(619,'Sociology Social Work','Koren'),(620,'Visual and Performing Arts','Center for the Arts'),(621,'Women and Gender Studies','Koren'),(622,'Africana Studies','Main'),(623,'Biology','Sampson Hoffland'),(624,'Chemistry','Sampson Hoffland'),(625,'Classics','Main'),(626,'Communication Studies','Campus House'),(627,'Computer Science','Olin'),(628,'Economics Accounting and Management','Olin'),(629,'Education','Koren'),(630,'English','Main'),(631,'Environmental Studies','Valders'),(632,'Health Promotion and Exercise Science','Regents Center'),(633,'History','Koren'),(634,'International Studies','Olin'),(635,'Library','Preus Library'),(636,'Mathematics','Olin'),(637,'Modern Languages Literatures and Linguistics','Main'),(638,'Music','Jenson-Noble'),(639,'Nursing','Valders'),(640,'Paideia','Main'),(641,'Philosophy','Valders'),(642,'Physics','Valders'),(643,'Political Science','Koren'),(644,'Psychology','Valders'),(645,'Religion','Ockham House'),(646,'Sociology Social Work','Koren'),(647,'Visual and Performing Arts','Center for the Arts'),(648,'Women and Gender Studies','Koren'),(649,'Africana Studies','Main'),(650,'Biology','Sampson Hoffland'),(651,'Chemistry','Sampson Hoffland'),(652,'Classics','Main'),(653,'Communication Studies','Campus House'),(654,'Computer Science','Olin'),(655,'Economics Accounting and Management','Olin'),(656,'Education','Koren'),(657,'English','Main'),(658,'Environmental Studies','Valders'),(659,'Health Promotion and Exercise Science','Regents Center'),(660,'History','Koren'),(661,'International Studies','Olin'),(662,'Library','Preus Library'),(663,'Mathematics','Olin'),(664,'Modern Languages Literatures and Linguistics','Main'),(665,'Music','Jenson-Noble'),(666,'Nursing','Valders'),(667,'Paideia','Main'),(668,'Philosophy','Valders'),(669,'Physics','Valders'),(670,'Political Science','Koren'),(671,'Psychology','Valders'),(672,'Religion','Ockham House'),(673,'Sociology Social Work','Koren'),(674,'Visual and Performing Arts','Center for the Arts'),(675,'Women and Gender Studies','Koren'),(676,'Africana Studies','Main'),(677,'Biology','Sampson Hoffland'),(678,'Chemistry','Sampson Hoffland'),(679,'Classics','Main'),(680,'Communication Studies','Campus House'),(681,'Computer Science','Olin'),(682,'Economics Accounting and Management','Olin'),(683,'Education','Koren'),(684,'English','Main'),(685,'Environmental Studies','Valders'),(686,'Health Promotion and Exercise Science','Regents Center'),(687,'History','Koren'),(688,'International Studies','Olin'),(689,'Library','Preus Library'),(690,'Mathematics','Olin'),(691,'Modern Languages Literatures and Linguistics','Main'),(692,'Music','Jenson-Noble'),(693,'Nursing','Valders'),(694,'Paideia','Main'),(695,'Philosophy','Valders'),(696,'Physics','Valders'),(697,'Political Science','Koren'),(698,'Psychology','Valders'),(699,'Religion','Ockham House'),(700,'Sociology Social Work','Koren'),(701,'Visual and Performing Arts','Center for the Arts'),(702,'Women and Gender Studies','Koren'),(703,'Africana Studies','Main'),(704,'Biology','Sampson Hoffland'),(705,'Chemistry','Sampson Hoffland'),(706,'Classics','Main'),(707,'Communication Studies','Campus House'),(708,'Computer Science','Olin'),(709,'Economics Accounting and Management','Olin'),(710,'Education','Koren'),(711,'English','Main'),(712,'Environmental Studies','Valders'),(713,'Health Promotion and Exercise Science','Regents Center'),(714,'History','Koren'),(715,'International Studies','Olin'),(716,'Library','Preus Library'),(717,'Mathematics','Olin'),(718,'Modern Languages Literatures and Linguistics','Main'),(719,'Music','Jenson-Noble'),(720,'Nursing','Valders'),(721,'Paideia','Main'),(722,'Philosophy','Valders'),(723,'Physics','Valders'),(724,'Political Science','Koren'),(725,'Psychology','Valders'),(726,'Religion','Ockham House'),(727,'Sociology Social Work','Koren'),(728,'Visual and Performing Arts','Center for the Arts'),(729,'Women and Gender Studies','Koren'),(730,'Africana Studies','Main'),(731,'Biology','Sampson Hoffland'),(732,'Chemistry','Sampson Hoffland'),(733,'Classics','Main'),(734,'Communication Studies','Campus House'),(735,'Computer Science','Olin'),(736,'Economics Accounting and Management','Olin'),(737,'Education','Koren'),(738,'English','Main'),(739,'Environmental Studies','Valders'),(740,'Health Promotion and Exercise Science','Regents Center'),(741,'History','Koren'),(742,'International Studies','Olin'),(743,'Library','Preus Library'),(744,'Mathematics','Olin'),(745,'Modern Languages Literatures and Linguistics','Main'),(746,'Music','Jenson-Noble'),(747,'Nursing','Valders'),(748,'Paideia','Main'),(749,'Philosophy','Valders'),(750,'Physics','Valders'),(751,'Political Science','Koren'),(752,'Psychology','Valders'),(753,'Religion','Ockham House'),(754,'Sociology Social Work','Koren'),(755,'Visual and Performing Arts','Center for the Arts'),(756,'Women and Gender Studies','Koren'),(757,'Africana Studies','Main'),(758,'Biology','Sampson Hoffland'),(759,'Chemistry','Sampson Hoffland'),(760,'Classics','Main'),(761,'Communication Studies','Campus House'),(762,'Computer Science','Olin'),(763,'Economics Accounting and Management','Olin'),(764,'Education','Koren'),(765,'English','Main'),(766,'Environmental Studies','Valders'),(767,'Health Promotion and Exercise Science','Regents Center'),(768,'History','Koren'),(769,'International Studies','Olin'),(770,'Library','Preus Library'),(771,'Mathematics','Olin'),(772,'Modern Languages Literatures and Linguistics','Main'),(773,'Music','Jenson-Noble'),(774,'Nursing','Valders'),(775,'Paideia','Main'),(776,'Philosophy','Valders'),(777,'Physics','Valders'),(778,'Political Science','Koren'),(779,'Psychology','Valders'),(780,'Religion','Ockham House'),(781,'Sociology Social Work','Koren'),(782,'Visual and Performing Arts','Center for the Arts'),(783,'Women and Gender Studies','Koren');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29 21:26:28