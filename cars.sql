-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: CarsDatabase
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `generation` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `radius` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'Nissan','Xtrail','T30','215','70','R15'),(2,'Nissan','Xtrail','T30','215','65','R16'),(3,'Nissan','Xtrail','T30','235','60','R16'),(4,'Nissan','Xtrail','T30','215','60','R17'),(5,'Nissan','Xtrail','T30','225','55','R17'),(6,'Nissan','Xtrail','T30','235','55','R17'),(7,'Nissan','Xtrail','T30','235','50','R18'),(8,'Nissan','Xtrail','T31','215','70','R15'),(9,'Nissan','Xtrail','T31','215','65','R16'),(10,'Nissan','Xtrail','T31','215','60','R17'),(11,'Nissan','Xtrail','T31','225','60','R17'),(12,'Nissan','Xtrail','T31','215','60','R17'),(13,'Nissan','Xtrail','T31','235','50','R18'),(14,'Nissan','Xtrail','T31','225','55','R18'),(15,'Nissan','Xtrail','T32','225','65','R17'),(16,'Nissan','Xtrail','T32','225','60','R18'),(17,'Nissan','Qashqai','J10','215','65','R16'),(18,'Nissan','Qashqai','J10','215','60','R17'),(19,'Nissan','Qashqai','J10','215','55','R18'),(20,'Nissan','Qashqai','J11','215','65','R16'),(21,'Nissan','Qashqai','J11','215','60','R17'),(22,'Nissan','Qashqai','J11','225','45','R19'),(23,'Nissan','Teana','J31','205','65','R16'),(24,'Nissan','Teana','J31','215','55','R17'),(25,'Nissan','Teana','J31','215','60','R16'),(26,'Nissan','Teana','J31','215','55','R17'),(27,'Nissan','Teana','J32','205','65','R16'),(28,'Nissan','Teana','J32','215','55','R17'),(29,'Nissan','Teana','J32','215','60','R16'),(30,'Nissan','Teana','L33','215','60','R16'),(31,'Nissan','Teana','L33','215','55','R17'),(32,'Nissan','Teana','L33','235','45','R18'),(33,'Subaru','Outback','BL/BP','205','60','R16'),(34,'Subaru','Outback','BL/BP','215','55','R16'),(35,'Subaru','Outback','BL/BP','215','60','R16'),(36,'Subaru','Outback','BL/BP','205','50','R17'),(37,'Subaru','Outback','BL/BP','215','55','R17'),(38,'Subaru','Outback','BL/BP','225','45','R17'),(39,'Subaru','Outback','BL/BP','195','65','R15'),(40,'Subaru','Outback','BL/BP','205','70','R15'),(41,'Subaru','Outback','BL/BP','215','65','R15'),(42,'Subaru','Outback','BL/BP','215','60','R16'),(43,'Subaru','Outback','BM','225','60','R17'),(44,'Subaru','Outback','BM','215','65','R16'),(45,'Subaru','Outback','BM','225','60','R16'),(46,'Subaru','Outback','BM','215','60','R17'),(47,'Subaru','Outback','BM','225','55','R17'),(48,'Subaru','Outback','BM','225','55','R18'),(49,'Subaru','Outback','B6','225','60','R18'),(50,'Subaru','Outback','B6','225','65','R17'),(51,'Subaru','Forester','SF/SFS','185','80','R15'),(52,'Subaru','Forester','SF/SFS','195','70','R15'),(53,'Subaru','Forester','SF/SFS','205','70','R15'),(54,'Subaru','Forester','SF/SFS','215','60','R16'),(55,'Subaru','Forester','SF/SFS','215','65','R15'),(56,'Subaru','Forester','SF/SFS','225','60','R15'),(57,'Subaru','Forester','SF/SFS','215','60','R16'),(58,'Subaru','Forester','SF/SFS','225','55','R16'),(59,'Subaru','Forester','SF/SFS','215','50','R17'),(60,'Subaru','Forester','SF/SFS','225','50','R17'),(61,'Subaru','Forester','SF/SFS','225','45','R18'),(62,'Subaru','Forester','SG/SGS','195','65','R15'),(63,'Subaru','Forester','SG/SGS','195','70','R15'),(64,'Subaru','Forester','SG/SGS','205','70','R15'),(65,'Subaru','Forester','SG/SGS','215','65','R15'),(66,'Subaru','Forester','SG/SGS','205','60','R16'),(67,'Subaru','Forester','SG/SGS','205','65','R16'),(68,'Subaru','Forester','SG/SGS','215','60','R16'),(69,'Subaru','Forester','SG/SGS','215','55','R17'),(70,'Subaru','Forester','SG/SGS','215','55','R16'),(71,'Subaru','Forester','SH/SHS','195','65','R15'),(72,'Subaru','Forester','SH/SHS','195','70','R15'),(73,'Subaru','Forester','SH/SHS','205','70','R15'),(74,'Subaru','Forester','SH/SHS','215','65','R15'),(75,'Subaru','Forester','SH/SHS','215','60','R16'),(76,'Subaru','Forester','SH/SHS','215','65','R16'),(77,'Subaru','Forester','SH/SHS','225','55','R17'),(78,'Subaru','Forester','SH/SHS','205','60','R16'),(79,'Subaru','Forester','SH/SHS','205','65','R16'),(80,'Subaru','Forester','SH/SHS','215','55','R17'),(81,'Subaru','Forester','SJ','225','60','R17'),(82,'Subaru','Forester','SJ','215','65','R16'),(83,'Subaru','Forester','SJ','225','55','R18'),(84,'Subaru','Forester','SK','225','60','R17'),(85,'Subaru','Forester','SK','225','55','R18'),(86,'Subaru','Impreza','GD/GG/GGS','175','70','R14'),(87,'Subaru','Impreza','GD/GG/GGS','185','70','R14'),(88,'Subaru','Impreza','GD/GG/GGS','185','65','R15'),(89,'Subaru','Impreza','GD/GG/GGS','195','60','R15'),(90,'Subaru','Impreza','GD/GG/GGS','205','55','R15'),(91,'Subaru','Impreza','GD/GG/GGS','205','50','R16'),(92,'Subaru','Impreza','GD/GG/GGS','205','55','R16'),(93,'Subaru','Impreza','GD/GG/GGS','215','45','R17'),(94,'Subaru','Impreza','G4','205','50','R17'),(95,'Subaru','Impreza','G4','195','65','R15'),(96,'Subaru','Impreza','G4','205','55','R16'),(97,'Subaru','Impreza','G4','195','55','R16'),(98,'Subaru','Impreza','G4','205','50','R17'),(99,'Subaru','Impreza','G4','215','55','R17'),(100,'Subaru','Impreza','G4','225','55','R17'),(101,'Subaru','Impreza','G3','195','65','R15'),(102,'Subaru','Impreza','G3','205','55','R16'),(103,'Subaru','Legacy','BE','185','70','R14'),(104,'Subaru','Legacy','BE','195','60','R15'),(105,'Subaru','Legacy','BE','205','50','R16'),(106,'Subaru','Legacy','BL/BPS','195','65','R15'),(107,'Subaru','Legacy','BL/BPS','205','60','R15'),(108,'Subaru','Legacy','BL/BPS','205','55','R16'),(109,'Subaru','Legacy','BL/BPS','215','45','R17'),(110,'Subaru','Legacy','BL/BPS','205','50','R16'),(111,'Subaru','Legacy','BL/BPS','205','60','R16'),(112,'Subaru','Legacy','BL/BPS','205','50','R17'),(113,'Subaru','Legacy','BM/BRS','205','60','R16'),(114,'Subaru','Legacy','BM/BRS','215','50','R17'),(115,'Subaru','Legacy','BM/BRS','225','45','R18'),(116,'Toyota','MarkX','X12','215','60','R16'),(117,'Toyota','MarkX','X12','225','45','R18'),(118,'Toyota','MarkX','X13','215','60','R16'),(119,'Toyota','MarkX','X13','235','45','R18'),(120,'Toyota','MarkX','X13','235','40','R19'),(121,'Toyota','MarkX','X13','235','40','R19'),(122,'Toyota','Chaser','X100','185','70','R14'),(123,'Toyota','Chaser','X100','195','65','R15'),(124,'Toyota','Chaser','X100','195','60','R15'),(125,'Toyota','Chaser','X100','205','55','R16'),(126,'Toyota','Chaser','X90','185','70','R14'),(127,'Toyota','Chaser','X90','195','65','R15'),(128,'Toyota','Chaser','X90','205','60','R15'),(129,'Toyota','Corolla','E11','165','70','R14'),(130,'Toyota','Corolla','E11','175','65','R14'),(131,'Toyota','Corolla','E11','185','65','R14'),(132,'Toyota','Corolla','E11','195','55','R15'),(133,'Toyota','Corolla','E12','195','60','R15'),(134,'Toyota','Corolla','E12','195','55','R16'),(135,'Toyota','Corolla','E14','195','65','R15'),(136,'Toyota','Corolla','E14','205','55','R16'),(137,'Toyota','Corolla','E15','205','55','R16'),(138,'Toyota','Corolla','E15','195','65','R15'),(139,'Toyota','Corolla','E16','195','65','R15'),(140,'Toyota','Corolla','E16','205','55','R16'),(141,'Toyota','RAV4','A20','215','70','R16'),(142,'Toyota','RAV4','XA30','215','70','R16'),(143,'Toyota','RAV4','XA30','225','65','R17'),(144,'Toyota','RAV4','XA40','225','65','R17'),(145,'Toyota','RAV4','XA40','235','55','R18'),(146,'Toyota','RAV4','XA50','225','65','R17'),(147,'Toyota','RAV4','XA50','225','60','R18'),(148,'Toyota','RAV4','XA50','235','55','R19'),(149,'Toyota','Camry','XV20','205','65','R15'),(150,'Toyota','Camry','XV30','205','65','R15'),(151,'Toyota','Camry','XV30','215','60','R16'),(152,'Toyota','Camry','XV40','215','60','R16'),(153,'Toyota','Camry','XV50','215','60','R16'),(154,'Toyota','Camry','XV60','205','65','R16'),(155,'Toyota','Camry','XV60','215','55','R17'),(156,'Toyota','Camry','XV60','235','45','R18'),(157,'BMW','X5','E53','235','65','R17'),(158,'BMW','X5','E53','255','55','R18'),(159,'BMW','X5','E70','255','55','R18'),(160,'BMW','X5','E70','255','50','R19'),(161,'BMW','X5','F15','255','55','R18'),(162,'BMW','X5','G05','265','50','R19'),(163,'BMW','X5','G05','275','45','R20'),(164,'BMW','X6','E71','235','65','R17'),(165,'BMW','X6','E71','255','55','R18'),(166,'BMW','X6','F15','255','55','R18'),(167,'BMW','X6','F15','255','50','R19'),(168,'BMW','X6','F15','255','55','R18'),(169,'BMW','X6','G06','265','50','R19');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_to_disks`
--

DROP TABLE IF EXISTS `cars_to_disks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars_to_disks` (
  `carId` int NOT NULL,
  `diskId` int NOT NULL,
  PRIMARY KEY (`carId`,`diskId`),
  KEY `diskId` (`diskId`),
  CONSTRAINT `cars_to_disks_ibfk_1` FOREIGN KEY (`carId`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cars_to_disks_ibfk_2` FOREIGN KEY (`diskId`) REFERENCES `disk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_to_disks`
--

LOCK TABLES `cars_to_disks` WRITE;
/*!40000 ALTER TABLE `cars_to_disks` DISABLE KEYS */;
INSERT INTO `cars_to_disks` VALUES (1,1),(2,1),(3,1),(1,2),(2,2),(1,3),(1,4),(3,4),(1,5),(2,5),(3,5),(1,6),(2,6),(3,6),(1,7),(2,7),(3,7),(1,8),(2,8),(3,8),(1,9),(2,9),(3,9),(1,10),(2,10),(3,10);
/*!40000 ALTER TABLE `cars_to_disks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_to_tires`
--

DROP TABLE IF EXISTS `cars_to_tires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars_to_tires` (
  `carId` int NOT NULL,
  `tireId` int NOT NULL,
  PRIMARY KEY (`carId`,`tireId`),
  KEY `tireId` (`tireId`),
  CONSTRAINT `cars_to_tires_ibfk_1` FOREIGN KEY (`carId`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cars_to_tires_ibfk_2` FOREIGN KEY (`tireId`) REFERENCES `tire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_to_tires`
--

LOCK TABLES `cars_to_tires` WRITE;
/*!40000 ALTER TABLE `cars_to_tires` DISABLE KEYS */;
INSERT INTO `cars_to_tires` VALUES (116,3),(80,6),(116,29),(80,35),(50,36),(80,41),(50,42),(50,52),(116,92),(50,115),(50,122),(116,136);
/*!40000 ALTER TABLE `cars_to_tires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disk`
--

DROP TABLE IF EXISTS `disk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `diameter` int DEFAULT NULL,
  `DIA` varchar(255) DEFAULT NULL,
  `PCD` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `carName` varchar(255) DEFAULT NULL,
  `carManufacturer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disk`
--

LOCK TABLES `disk` WRITE;
/*!40000 ALTER TABLE `disk` DISABLE KEYS */;
INSERT INTO `disk` VALUES (1,'Replay Nissan','NS76','6,5',16,'66,1','5x114,3',5440,'Xtrail','Nissan'),(2,'Replay Nissan','NS179','7',17,'66,1','5x114,3',6490,'Xtrail','Nissan'),(3,'Replay Nissan','NS166','6,5',15,'66,1','5x114,3',7370,'Xtrail','Nissan'),(4,'Replay Nissan','NS180','7',16,'66,1','5x114,3',8290,'Xtrail','Nissan'),(5,'Replay Nissan','NS215','7',18,'66,1','5x114,3',8510,'Xtrail','Nissan'),(6,'Replay Nissan','NS225','7',18,'66,1','5x114,3',8510,'Xtrail','Nissan'),(7,'Replay Nissan','NS48','6,5',16,'66,1','5x114,3',9210,'Xtrail','Nissan'),(8,'Replay Nissan','NS251','6,5',16,'66,1','5x114,3',9210,'Xtrail','Nissan'),(9,'Replay Nissan','NS121','6,5',16,'66,1','5x114,3',9210,'Xtrail','Nissan'),(10,'Replay Nissan','NS5409','6,5',16,'66,1','5x114,3',10200,'Xtrail','Nissan'),(11,'Replay Nissan','NS146','6,5',16,'66,1','5x114,3',9900,'Xtrail','Nissan'),(12,'Replay Nissan','NS100','7',17,'66,1','5x114,3',11510,'Xtrail','Nissan'),(13,'Replay Nissan','NS123','7',17,'66,1','5x114,3',11510,'Xtrail','Nissan'),(14,'Replay Nissan','NS48','7',17,'66,1','5x114,3',11510,'Xtrail','Nissan'),(15,'Replay Nissan','NS178','7,5',17,'66,1','5x114,3',11510,'Xtrail','Nissan'),(16,'Replay Nissan','NS203','7,5',17,'66,1','5x114,3',11510,'Xtrail','Nissan'),(17,'Replay Nissan','NS76','6,5',16,'66,1','5x114,3',5440,'Qashqai','Nissan'),(18,'Replay Nissan','NS225','7',18,'66,1','5x114,3',8510,'Qashqai','Nissan'),(19,'Replay Nissan','NS121','6,5',16,'66,1','5x114,3',9210,'Qashqai','Nissan'),(20,'Replay Nissan','NS48','6,5',16,'66,1','5x114,3',9210,'Qashqai','Nissan'),(21,'Replay Nissan','NS146','6,5',16,'66,1','5x114,3',9900,'Qashqai','Nissan'),(22,'Replay Nissan','NS 48','7',17,'66,1','5x114,3',11510,'Qashqai','Nissan'),(23,'Replay Nissan','NS5409','6,5',17,'66,1','5x114,3',11970,'Qashqai','Nissan'),(24,'Replay Nissan','NS188','7',17,'66,1','5x114,3',11970,'Qashqai','Nissan'),(25,'Replay Nissan','NS73','6,5',17,'66,1','5x114,3',11970,'Qashqai','Nissan'),(26,'Replay Nissan','NS38','6,5',17,'66,1','5x114,3',11970,'Qashqai','Nissan'),(27,'Replay Nissan','NS99','6,5',17,'66,1','5x114,3',11970,'Qashqai','Nissan'),(28,'Replay Nissan','NS77','6,5',17,'66,1','5x114,3',11970,'Qashqai','Nissan'),(29,'Replay Nissan','NS38','6,5',17,'66,1','5x114,3',11970,'Qashqai','Nissan'),(30,'Replay Nissan','NS224','7',17,'66,1','5x114,3',12350,'Qashqai','Nissan'),(31,'Replay Nissan','NS66','7',17,'66,1','5x114,3',12430,'Qashqai','Nissan'),(32,'Replay Nissan','NS82','6,5',17,'66,1','5x114,3',12430,'Qashqai','Nissan'),(33,'Replay Nissan','NS66','7',17,'66,1','5x114,3',12430,'Qashqai','Nissan'),(34,'Replay Nissan','NS150','6,5',17,'66,1','5x114,3',12430,'Qashqai','Nissan'),(35,'Replay Nissan','NS196','7',17,'66,1','5x114,3',12430,'Qashqai','Nissan'),(36,'Replay Nissan','NS229','7',17,'66,1','5x114,3',12900,'Qashqai','Nissan'),(37,'Replay Nissan','NS76','6,5',16,'66,1','5x114,3',5440,'Teana','Nissan'),(38,'Replay Nissan','NS179','7',17,'66,1','5x114,3',6490,'Teana','Nissan'),(39,'Replay Nissan','NS63','7',17,'66,1','5x114,3',6490,'Teana','Nissan'),(40,'Replay Nissan','NS68','7',17,'66,1','5x114,3',6490,'Teana','Nissan'),(41,'Replay Nissan','NS45','7',17,'66,1','5x114,3',7640,'Teana','Nissan'),(42,'Replay Nissan','NS180','7',16,'66,1','5x114,3',8290,'Teana','Nissan'),(43,'Replay Nissan','NS160','7,5',18,'66,1','5x114,3',8510,'Teana','Nissan'),(44,'Replay Nissan','NS215','7',18,'66,1','5x114,3',8510,'Teana','Nissan'),(45,'Replay Nissan','NS225','7',18,'66,1','5x114,3',8510,'Teana','Nissan'),(46,'Replay Nissan','NS121','6,5',16,'66,1','5x114,3',9210,'Teana','Nissan'),(47,'Replay Nissan','NS48','6,5',16,'66,1','5x114,3',9210,'Teana','Nissan'),(48,'Replay Nissan','NS251','6,5',16,'66,1','5x114,3',10200,'Teana','Nissan'),(49,'Replay Nissan','NS5409','6,5',16,'66,1','5x114,3',9900,'Teana','Nissan'),(50,'Replay Nissan','NS146','6,5',16,'66,1','5x114,3',11510,'Teana','Nissan'),(51,'Replay Nissan','NS203','7,5',17,'66,1','5x114,3',11510,'Teana','Nissan'),(52,'Replay Nissan','NS178','7,5',17,'66,1','5x114,3',11510,'Teana','Nissan'),(53,'Replay Nissan','NS151','7',17,'66,1','5x114,3',11510,'Teana','Nissan'),(54,'Replay Nissan','NS100','7',17,'66,1','5x114,3',11510,'Teana','Nissan'),(55,'Replay Nissan','NS48','7',17,'66,1','5x114,3',11510,'Teana','Nissan'),(56,'Replay Nissan','NS123','7',17,'66,1','5x114,3',11510,'Teana','Nissan'),(57,'Replay Subaru','SB25','7',17,'56,1','5X100',7100,'Outback','Subaru'),(58,'Replay Subaru','SB96','7',17,'56,1','5X114,3',7150,'Outback','Subaru'),(59,'Replay Subaru','SB5','7',17,'56,1','5X100',7340,'Outback','Subaru'),(60,'Replay Subaru','SB15','6,5',16,'56,1','5X100',8290,'Outback','Subaru'),(61,'Replay Subaru','SB25','7',17,'56,1','5X114,3',8680,'Outback','Subaru'),(62,'Replay Subaru','SB22','6,5',16,'56,1','5X100',8740,'Outback','Subaru'),(63,'Replay Subaru','SB11','6,5',16,'56,1','5X100',8740,'Outback','Subaru'),(64,'Replay Subaru','SB11','6,5',16,'56,1','5X100',8740,'Outback','Subaru'),(65,'Replay Subaru','SB14','6,5',16,'56,1','5X100',8740,'Outback','Subaru'),(66,'Replay Subaru','SB18','6,5',16,'56,1','5X100',8740,'Outback','Subaru'),(67,'Replay Subaru','SB11','6,5',16,'56,1','5X100',8740,'Outback','Subaru'),(68,'Replay Subaru','SB18','6,5',16,'56,1','5X100',8740,'Outback','Subaru'),(69,'Replay Subaru','SB8','6,5',16,'56,1','5X100',8740,'Outback','Subaru'),(70,'Replay Subaru','SB43','7',17,'56,1','5X114,3',9770,'Outback','Subaru'),(71,'Replay Subaru','SB84','7',17,'56,1','5X114,3',9770,'Outback','Subaru'),(72,'Replay Subaru','SB67','7',17,'56,1','5X114,3',9770,'Outback','Subaru'),(73,'Replay Subaru','SB25','7',17,'56,1','5X100',7100,'Forester','Subaru'),(74,'Replay Subaru','SB5','7',17,'56,1','5X100',7340,'Forester','Subaru'),(75,'Replay Subaru','SB15','6,5',16,'56,1','5X100',8290,'Forester','Subaru'),(76,'Replay Subaru','SB11','6,5',16,'56,1','5X100',8740,'Forester','Subaru'),(77,'Replay Subaru','SB11','6,5',16,'56,1','5X100',8740,'Forester','Subaru'),(78,'Replay Subaru','SB18','6,5',16,'56,1','5X100',8740,'Forester','Subaru'),(79,'Replay Subaru','SB84','7',17,'56,1','5X114,3',9770,'Forester','Subaru'),(80,'Replay Subaru','SB67','7',17,'56,1','5X114,3',9770,'Forester','Subaru'),(81,'Replay Subaru','SB43','7',17,'56,1','5X114,3',9770,'Forester','Subaru'),(82,'Replay Subaru','SB12','7',17,'56,1','5X114,3',11510,'Forester','Subaru'),(83,'Replay Subaru','SB62','7',17,'56,1','5X114,3',11970,'Forester','Subaru'),(84,'Replay Subaru','SB27','7',17,'56,1','5X114,3',11970,'Forester','Subaru'),(85,'Replay Subaru','SB32','7',17,'56,1','5X114,3',11970,'Forester','Subaru'),(86,'Replay Subaru','SB105','7',17,'56,1','5X114,3',11970,'Forester','Subaru'),(87,'Replay Subaru','SB103','7',17,'56,1','5X114,3',11971,'Forester','Subaru'),(88,'Replay Subaru','SB102','7',17,'56,1','5X114,3',11970,'Forester','Subaru'),(89,'Replay Subaru','SB25','7',17,'56,1','5X100',7100,'Impreza','Subaru'),(90,'Replay Subaru','SB5','7',17,'56,1','5X100',7340,'Impreza','Subaru'),(91,'Replay Subaru','SB15','6,5',16,'56,1','5X100',8290,'Impreza','Subaru'),(92,'Replay Subaru','SB22','6,5',16,'56,1','5X100',8740,'Impreza','Subaru'),(93,'Replay Subaru','SB14','6,5',16,'56,1','5X100',8740,'Impreza','Subaru'),(94,'Replay Subaru','SB8','6,5',16,'56,1','5X100',8740,'Impreza','Subaru'),(95,'Replay Subaru','SB18','6,5',16,'56,1','5X100',8740,'Impreza','Subaru'),(96,'Replay Subaru','SB11','6,5',16,'56,1','5X100',8740,'Impreza','Subaru'),(97,'Replay Subaru','SB25','7',17,'56,1','5X100',7154,'Legacy','Subaru'),(98,'Replay Subaru','SB96','7',17,'56,1','5X114,3',7100,'Legacy','Subaru'),(99,'Replay Subaru','SB5','7',17,'56,1','5X100',7150,'Legacy','Subaru'),(100,'Replay Subaru','SB15','6,5',16,'56,1','5X100',7340,'Legacy','Subaru'),(101,'Replay Subaru','SB25','7',17,'56,1','5X114,3',8290,'Legacy','Subaru'),(102,'Replay Subaru','SB8','6,5',16,'56,1','5X100',8680,'Legacy','Subaru'),(103,'Replay Subaru','SB22','6,5',16,'56,1','5X100',8740,'Legacy','Subaru'),(104,'Replay Subaru','SB11','6,5',16,'56,1','5X100',8740,'Legacy','Subaru'),(105,'Replay Toyota','TY21','7',17,'60,1','5X114,3',7650,'RAV4','Toyota'),(106,'Replay Toyota','TY196','7',17,'60,1','5X114,3',7910,'RAV4','Toyota'),(107,'Replay Toyota','TY2051','7',17,'60,1','5X114,3',8350,'RAV4','Toyota'),(108,'Replay Toyota','TY259','7',17,'60,1','5X114,3',8130,'RAV4','Toyota'),(109,'Replay Toyota','TY219','7',17,'60,1','5X114,3',8380,'RAV4','Toyota'),(110,'Replay Toyota','TY229','6,5',16,'60,1','5X114,3',9210,'RAV4','Toyota'),(111,'Replay Toyota','TY552','6,5',16,'60,1','5X114,3',10340,'RAV4','Toyota'),(112,'Replay Toyota','TY552','6,5',16,'60,1','5X114,3',10340,'RAV4','Toyota'),(113,'Replay Toyota','TY21','7',17,'60,1','5X114,3',7680,'MarkX','Toyota'),(114,'Replay Toyota','TY196','7',17,'60,1','5X114,3',7910,'MarkX','Toyota'),(115,'Replay Toyota','TY2051','7',17,'60,1','5X114,3',8350,'MarkX','Toyota'),(116,'Replay Toyota','TY259','7',17,'60,1','5X114,3',8130,'MarkX','Toyota'),(117,'Replay Toyota','TY219','7',17,'60,1','5X114,3',8380,'MarkX','Toyota'),(118,'Replay Toyota','TY229','6,5',16,'60,1','5X114,3',9210,'MarkX','Toyota'),(119,'Replay Toyota','TY552','6,5',16,'60,1','5X114,3',10340,'MarkX','Toyota'),(120,'Replay Toyota','TY552','6,5',16,'60,1','5X114,3',10340,'MarkX','Toyota'),(121,'Replay Toyota','TY439','6,5',15,'60,1','5X114,3',7370,'Corolla','Toyota'),(122,'Replay Toyota','TY210','5,5',15,'60,1','5X114,3',7370,'Corolla','Toyota'),(123,'Replay Toyota','TY438','6,5',15,'60,1','5X114,3',7370,'Corolla','Toyota'),(124,'Replay Toyota','TY21','7',17,'60,1','5X114,3',7680,'Corolla','Toyota'),(125,'Replay Toyota','TY196','7',17,'60,1','5X114,3',7910,'Corolla','Toyota'),(126,'Replay Toyota','TY2051','7',17,'60,1','5X114,3',8350,'Corolla','Toyota'),(127,'Replay Toyota','TY259','7',17,'60,1','5X114,3',8130,'Corolla','Toyota'),(128,'Replay Toyota','TY219','7',17,'60,1','5X114,3',8380,'Corolla','Toyota'),(129,'Replay Toyota','TY438','6,5',15,'60,1','5X114,3',7370,'Chaser','Toyota'),(130,'Replay Toyota','TY210','5,5',15,'60,1','5X114,3',7370,'Chaser','Toyota'),(131,'Replay Toyota','TY439','6,5',15,'60,1','5X114,3',7370,'Chaser','Toyota'),(132,'Replay Toyota','TY229','6,5',16,'60,1','5X114,3',9210,'Chaser','Toyota'),(133,'LegeArtis','TY552','6,5',16,'60,1','5X114,3',10340,'Chaser','Toyota'),(134,'LegeArtis','TY552','6,5',16,'60,1','5X114,3',10560,'Chaser','Toyota'),(135,'iFree','Ernesto','6,5',15,'60,1','5X114,3',5060,'Chaser','Toyota'),(136,'iFree','Ernesto','6,5',15,'60,1','5X114,3',5062,'Chaser','Toyota'),(137,'Replay Toyota','TY438','6,5',15,'60,1','5X114,3',7370,'Camry','Toyota'),(138,'Replay Toyota','TY439','6,5',15,'60,1','5X114,3',7370,'Camry','Toyota'),(139,'Replay Toyota','TY210','5,5',15,'60,1','5X114,3',7370,'Camry','Toyota'),(140,'Replay Toyota','TY21','7',17,'60,1','5X114,3',7680,'Camry','Toyota'),(141,'Replay Toyota','TY196','7',17,'60,1','5X114,3',7910,'Camry','Toyota'),(142,'Replay Toyota','TY2051','7',17,'60,1','5X114,3',8350,'Camry','Toyota'),(143,'Replay Toyota','TY259','7',17,'60,1','5X114,3',8130,'Camry','Toyota'),(144,'Replay Toyota','TY219','7',17,'60,1','5X114,3',8380,'Camry','Toyota'),(145,'Replay BMW','B131','8',17,'72,6','5X120',7640,'X5','BMW'),(146,'Replay BMW','B70','9',18,'72,6','5x120',640,'X5','BMW'),(147,'Replay BMW','B47','9',18,'72,6','5x120',8510,'X5','BMW'),(148,'Replay BMW','B151','8,5',18,'74,1','5x120',8510,'X5','BMW'),(149,'Replay BMW','B121','8',18,'72,6','5x120',8510,'X5','BMW'),(150,'Replay BMW','B83','8',18,'72,6','5x120',8510,'X5','BMW'),(151,'Replay BMW','B175','8',18,'66,6','5x112',8680,'X5','BMW'),(152,'Replay BMW','B203','7,5',17,'66,6','5x112',8680,'X5','BMW'),(153,'Replay BMW','B129','10',19,'72,5','5x120',9500,'X6','BMW'),(154,'Replay BMW','B74','11,5',21,'72,6','5x120',9500,'X6','BMW'),(155,'Replay BMW','B5255','9,5',19,'66,6','5x112',10950,'X6','BMW'),(156,'LegisArtis Concept','B529','10',20,'72,5','5x120',10940,'X6','BMW'),(157,'Replay BMW','B58','8',19,'72,6','5x120',11410,'X6','BMW'),(158,'Replay BMW','B58','8',19,'72,6','5x120',11450,'X6','BMW'),(159,'Replay BMW','B189T','8,5',19,'66,6','5x112',12000,'X6','BMW');
/*!40000 ALTER TABLE `disk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tire`
--

DROP TABLE IF EXISTS `tire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `radius` varchar(3) DEFAULT NULL,
  `season` varchar(4) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tire`
--

LOCK TABLES `tire` WRITE;
/*!40000 ALTER TABLE `tire` DISABLE KEYS */;
INSERT INTO `tire` VALUES (1,'Bridgestone','Escopia EP200',225,60,'R16','Лето',5899),(2,'Hankook','Ventus V12 Evo2',225,60,'R18','Лето',9709),(3,'Maxxis','Premitra HP5',215,60,'R16','Лето',2419),(4,'Maxxis','Pragmatra MP10',195,60,'R15','Лето',2419),(5,'Yokohama','Geolandar SUV G055',225,70,'R15','Лето',4229),(6,'Yokohama','Geolandar SUV G055',215,55,'R17','Лето',6019),(7,'Yokohama','BlueEarth-ES ES32',175,82,'R14','Лето',6129),(8,'Yokohama','BlueEarth-ES ES32',185,60,'R14','Лето',6229),(9,'Yokohama','BlueEarth-ES ES32',175,70,'R14','Лето',6559),(10,'Yokohama','BlueEarth-ES ES32',185,65,'R14','Лето',6569),(11,'Yokohama','BlueEarth AE01J',175,65,'R15','Лето',6579),(12,'Yokohama','BlueEarth-ES ES32',185,65,'R15','Лето',6869),(13,'Yokohama','BlueEarth-ES ES32',185,60,'R15','Лето',6959),(14,'Yokohama','BlueEarth-ES ES32',195,65,'R15','Лето',7219),(15,'Yokohama','BlueEarth-ES ES32',185,70,'R14','Лето',7559),(16,'Yokohama','BlueEarth-A AE50',215,65,'R15','Лето',7569),(17,'Yokohama','Geolandar SUV G055',225,70,'R15','Лето',7759),(18,'Yokohama','BlueEarth-ES ES32',195,60,'R15','Лето',7789),(19,'Yokohama','BlueEarth-ES ES32',205,65,'R15','Лето',7959),(20,'Yokohama','BlueEarth-ES ES32',205,55,'R16','Лето',8289),(21,'Yokohama','BlueEarth-Van RY55',195,70,'R15','Лето',8559),(22,'Yokohama','BlueEarth-ES ES32',205,65,'R16','Лето',9209),(23,'Yokohama','BlueEarth-Van RY55',205,70,'R15','Лето',9209),(24,'Yokohama','BlueEarth-ES ES32',205,60,'R16','Лето',9329),(25,'Yokohama','C.Drive 2 AC02A',205,55,'R16','Лето',9939),(26,'Yokohama','BlueEarth-Van RY61',215,65,'R15','Лето',9969),(27,'Yokohama','BlueEarth-ES ES32',195,55,'R16','Лето',10719),(28,'Yokohama','Geolandar A/T G015',205,70,'R15','Лето',10909),(29,'Yokohama','BlueEarth-ES ES32',215,60,'R16','Лето',11059),(30,'Yokohama','BlueEarth-XT AE61',215,65,'R16','Лето',11169),(31,'Yokohama','Geolandar A/T G015',175,80,'R16','Лето',11469),(32,'Yokohama','Geolandar G033V',215,70,'R16','Лето',12109),(33,'Yokohama','Geolandar A/T G015',195,80,'R15','Лето',12249),(34,'Yokohama','Geolandar CVg058',215,65,'R16','Лето',12279),(35,'Yokohama','BlueEarth-ES ES32',215,55,'R17','Лето',12659),(36,'Yokohama','BlueEarth-XT AE61',225,65,'R17','Лето',12819),(37,'Yokohama','Geolandar SUV G055',225,55,'R18','Лето',12840),(38,'Yokohama','Geolandar A/T G015',215,75,'R15','Лето',12969),(39,'Yokohama','Geolandar G91At',225,60,'R18','Лето',13099),(40,'Yokohama','Geolandar A/T G015',225,70,'R15','Лето',13269),(41,'Yokohama','BlueEarth-GT AE-51',215,55,'R17','Лето',13289),(42,'Yokohama','Geolandar CVg058',225,65,'R17','Лето',13479),(43,'Yokohama','Geolandar A/T G015',215,70,'R16','Лето',13599),(44,'Yokohama','Geolandar CVg058',225,70,'R16','Лето',13669),(45,'Yokohama','BlueEarth-GT AE-51',215,45,'R17','Лето',13719),(46,'Yokohama','Geolandar A/T G015',235,75,'R15','Лето',13869),(47,'Yokohama','Geolandar A/T G015',215,80,'R15','Лето',13949),(48,'Yokohama','Geolandar A/T G015',225,70,'R16','Лето',14359),(49,'Yokohama','Geolandar A/T G015',235,60,'R16','Лето',14539),(50,'Yokohama','Geolandar H/T G056',215,70,'R15','Лето',14999),(51,'Yokohama','Geolandar H/T G056',265,70,'R16','Лето',15259),(52,'Yokohama','Geolandar A/T G015',225,65,'R17','Лето',15269),(53,'Yokohama','Geolandar A/T G015',215,70,'R15','Лето',15469),(54,'Yokohama','BlueEarth-GT AE-51',225,55,'R17','Лето',15739),(55,'Yokohama','Geolandar A/T G015',225,80,'R15','Лето',15879),(56,'Yokohama','Geolandar H/T G056',275,65,'R17','Лето',15939),(57,'Yokohama','Geolandar A/T G015',245,70,'R16','Лето',16059),(58,'Yokohama','Geolandar A/T G015',275,70,'R16','Лето',16189),(59,'Yokohama','Advan Sport V103S',225,45,'R17','Лето',16189),(60,'Yokohama','BlueEarth-XT AE61',215,60,'R17','Лето',16379),(61,'Yokohama','Geolandar A/T G015',265,70,'R15','Лето',16419),(62,'Yokohama','Geolandar A/T G015',265,70,'R16','Лето',16589),(63,'Yokohama','Geolandar A/T G015',235,65,'R17','Лето',16869),(64,'Yokohama','Geolandar CVg058',215,60,'R17','Лето',17029),(65,'Yokohama','Geolandar H/T G056',265,65,'R17','Лето',17249),(66,'Yokohama','BlueEarth RV-02',235,60,'R18','Лето',17249),(67,'Yokohama','BlueEarth-XT AE61',225,60,'R18','Лето',17329),(68,'Yokohama','Geolandar A/T G015',215,60,'R17','Лето',17349),(69,'Yokohama','Geolandar A/T G015',275,65,'R17','Лето',17409),(70,'Yokohama','Geolandar CVg058',225,60,'R18','Лето',17429),(71,'Yokohama','Geolandar A/T G015',225,60,'R18','Лето',18029),(72,'Yokohama','Geolandar CVg058',235,60,'R18','Лето',18129),(73,'Yokohama','Geolandar A/T G015',265,75,'R16','Лето',18299),(74,'Yokohama','Geolandar CVg058',225,55,'R18','Лето',18439),(75,'Yokohama','Geolandar A/T G015',265,65,'R17','Лето',18549),(76,'Yokohama','Geolandar CVg058',235,65,'R18','Лето',18559),(77,'Yokohama','Geolandar G94BV',265,60,'R18','Лето',19429),(78,'Yokohama','Geolandar H/T G056',285,60,'R18','Лето',19489),(79,'Yokohama','Geolandar CVg058',265,55,'R18','Лето',19819),(80,'Yokohama','Geolandar A/T G015',265,60,'R18','Лето',19919),(81,'Yokohama','Geolandar CVg058',235,55,'R19','Лето',20289),(82,'Yokohama','Geolandar A/T G015',225,55,'R18','Лето',20739),(83,'Yokohama','Geolandar A/T G015',285,60,'R18','Лето',21859),(84,'Yokohama','Geolandar A/T G015',235,55,'R19','Лето',25029),(85,'Yokohama','Geolandar A/T G015',275,60,'R20','Лето',29669),(86,'Yokohama','Geolandar H/T G056',285,50,'R20','Лето',29679),(87,'Yokohama','Geolandar A/T G015',275,55,'R20','Лето',34649),(88,'Bridgestone','Blizzak VRX',205,50,'R17','Зима',10779),(89,'Dunlop','Winter Maxx SJ8',275,70,'R16','Зима',15239),(90,'Dunlop','Winter Maxx WM01',175,65,'R14','Зима',4949),(91,'Dunlop','Winter Maxx WM01',185,60,'R15','Зима',6599),(92,'Dunlop','Winter Maxx WM01',215,60,'R16','Зима',8889),(93,'Dunlop','Winter Maxx WM02',175,70,'R14','Зима',5589),(94,'Dunlop','Winter Maxx WM02',185,65,'R14','Зима',6089),(95,'Hankook','Dynapro i*cept RW08',285,65,'R17','Зима',4449),(96,'Hankook','i*cept iZ2',175,65,'R14','Зима',5389),(97,'Hankook','i*cept iZ2',175,70,'R14','Зима',5419),(98,'Hankook','i*cept iZ2',205,70,'R15','Зима',8329),(99,'Hankook','i*cept iZ2',205,55,'R16','Зима',8119),(100,'Hankook','i*cept iZ2',225,55,'R17','Зима',4129),(101,'Hankook','i*pike RW11',215,70,'R16','Зима',5299),(102,'Hankook','i*cept X',245,70,'R16','Зима',14209),(103,'Hankook','i*pike RS2',185,60,'R15','Зима',7039),(104,'Hankook','i*pike RS2',205,65,'R15','Зима',7539),(105,'Maxxis','Premitra Ice SP3',185,65,'R14','Зима',3389),(106,'Maxxis','Premitra Ice SP3',195,55,'R15','Зима',4839),(107,'Maxxis','Premitra Ice SP3',205,65,'R16','Зима',5809),(108,'Maxxis','Presa Spike MA-SLW',205,70,'R15','Зима',6869),(109,'Maxxis','Presa SUV SS01',225,70,'R16','Зима',7499),(110,'Maxxis','Presa SUV SS01',215,60,'R17','Зима',7259),(111,'Maxxis','Presa SUV SS01',225,60,'R17','Зима',7379),(112,'Maxxis','Presa SUV SS01',255,50,'R19','Зима',12219),(113,'Nexen','WINGUARD ice Plus',175,65,'R14','Зима',4479),(114,'Nexen','WINGUARD ice Plus',185,70,'R14','Зима',5169),(115,'Nexen','WINGUARD ice ',225,65,'R17','Зима',9069),(116,'Yokohama','Geolandar I/T-S G073',265,50,'R20','Зима',7089),(117,'Yokohama','iceGuard G075',215,80,'R15','Зима',12999),(118,'Yokohama','iceGuard G075',225,70,'R16','Зима',17369),(119,'Yokohama','iceGuard G075',225,70,'R16','Зима',6499),(120,'Yokohama','iceGuard G075',275,70,'R16','Зима',20409),(121,'Yokohama','iceGuard G075',285,75,'R16','Зима',17929),(122,'Yokohama','iceGuard G075',225,65,'R17','Зима',15479),(123,'Yokohama','iceGuard G075',235,55,'R18','Зима',19829),(124,'Yokohama','iceGuard G075',235,65,'R18','Зима',18519),(125,'Yokohama','iceGuard G075',255,60,'R18','Зима',19699),(126,'Yokohama','iceGuard G075',265,60,'R18','Зима',20349),(127,'Yokohama','iceGuard G075',285,60,'R18','Зима',20429),(128,'Yokohama','iceGuard G075',235,55,'R19','Зима',19609),(129,'Yokohama','iceGuard G075',255,50,'R19','Зима',24129),(130,'Yokohama','iceGuard G075',265,50,'R20','Зима',28019),(131,'Yokohama','iceGuard G075',275,40,'R20','Зима',21969),(132,'Yokohama','iceGuard G075',275,50,'R21','Зима',33669),(133,'Yokohama','iceGuard G075',285,45,'R22','Зима',31209),(134,'Yokohama','IceGuard iG35+',265,65,'R17','Зима',5079),(135,'Yokohama','iceGuard iG50+',205,60,'R16','Зима',11109),(136,'Yokohama','iceGuard iG50+',215,60,'R16','Зима',11939),(137,'Yokohama','iceGuard iG50+',215,50,'R17','Зима',16399),(138,'Yokohama','iceGuard iG55',195,55,'R15','Зима',10419),(139,'Yokohama','iceGuard iG55',195,55,'R15','Зима',3569),(140,'Yokohama','iceGuard iG55',265,60,'R18','Зима',16579),(141,'Yokohama','iceGuard iG55',235,55,'R19','Зима',21479),(142,'Yokohama','iceGuard iG55',265,45,'R21','Зима',32299),(143,'Yokohama','iceGuard iG60',175,65,'R14','Зима',7359),(144,'Yokohama','iceGuard iG60',175,70,'R14','Зима',7479),(145,'Yokohama','iceGuard iG60',185,65,'R14','Зима',8239),(146,'Yokohama','iceGuard iG60',205,60,'R15','Зима',10429),(147,'Yokohama','iceGuard iG60',205,60,'R16','Зима',12429),(148,'Yokohama','iceGuard iG60',225,60,'R16','Зима',14179),(149,'Yokohama','iceGuard iG60',205,50,'R17','Зима',16139),(150,'Yokohama','iceGuard iG60',215,60,'R17','Зима',16879),(151,'Yokohama','iceGuard iG60',225,50,'R17','Зима',17309),(152,'Yokohama','iceGuard iG65',215,60,'R17','Зима',19199);
/*!40000 ALTER TABLE `tire` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 13:55:36
