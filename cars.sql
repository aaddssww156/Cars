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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tire`
--

LOCK TABLES `tire` WRITE;
/*!40000 ALTER TABLE `tire` DISABLE KEYS */;
INSERT INTO `tire` VALUES (1,'Bridgestone','Escopia EP150',195,60,'R15','Лето',4589),(2,'Bridgestone','Escopia EP200',225,60,'R16','Лето',5899),(3,'Hankook','Ventus V12 Evo2',225,60,'R18','Лето',9709),(4,'Maxxis','Premitra HP5',215,60,'R16','Лето',2419),(5,'Maxxis','Pragmatra MP10',195,60,'R15','Лето',2419),(6,'Yokohama','Geolandar SUV G055',225,70,'R15','Лето',4229),(7,'Yokohama','Geolandar SUV G055',215,55,'R17','Лето',6019),(8,'Yokohama','BlueEarth-ES ES32',175,82,'R14','Лето',6129),(9,'Yokohama','BlueEarth-ES ES32',185,60,'R14','Лето',6229),(10,'Yokohama','BlueEarth-ES ES32',175,70,'R14','Лето',6559),(11,'Yokohama','BlueEarth-ES ES32',185,65,'R14','Лето',6569),(12,'Yokohama','BlueEarth AE01J',175,65,'R15','Лето',6579),(13,'Yokohama','BlueEarth-ES ES32',185,65,'R15','Лето',6869),(14,'Yokohama','BlueEarth-ES ES32',185,60,'R15','Лето',6959),(15,'Yokohama','BlueEarth-ES ES32',195,65,'R15','Лето',7219),(16,'Yokohama','BlueEarth-ES ES32',185,70,'R14','Лето',7559),(17,'Yokohama','BlueEarth-A AE50',215,65,'R15','Лето',7569),(18,'Yokohama','Geolandar SUV G055',225,70,'R15','Лето',7759),(19,'Yokohama','BlueEarth-ES ES32',195,60,'R15','Лето',7789),(20,'Yokohama','BlueEarth-ES ES32',205,65,'R15','Лето',7959),(21,'Yokohama','BlueEarth-ES ES32',205,55,'R16','Лето',8289),(22,'Yokohama','BlueEarth-Van RY55',195,70,'R15','Лето',8559),(23,'Yokohama','BlueEarth-ES ES32',205,65,'R16','Лето',9209),(24,'Yokohama','BlueEarth-Van RY55',205,70,'R15','Лето',9209),(25,'Yokohama','BlueEarth-ES ES32',205,60,'R16','Лето',9329),(26,'Yokohama','C.Drive 2 AC02A',205,55,'R16','Лето',9939),(27,'Yokohama','BlueEarth-Van RY61',215,65,'R15','Лето',9969),(28,'Yokohama','BlueEarth-ES ES32',195,55,'R16','Лето',10719),(29,'Yokohama','Geolandar A/T G015',205,70,'R15','Лето',10909),(30,'Yokohama','BlueEarth-ES ES32',215,60,'R16','Лето',11059),(31,'Yokohama','BlueEarth-XT AE61',215,65,'R16','Лето',11169),(32,'Yokohama','Geolandar A/T G015',175,80,'R16','Лето',11469),(33,'Yokohama','Geolandar G033V',215,70,'R16','Лето',12109),(34,'Yokohama','Geolandar A/T G015',195,80,'R15','Лето',12249),(35,'Yokohama','Geolandar CVg058',215,65,'R16','Лето',12279),(36,'Yokohama','BlueEarth-ES ES32',215,55,'R17','Лето',12659),(37,'Yokohama','BlueEarth-XT AE61',225,65,'R17','Лето',12819),(38,'Yokohama','Geolandar SUV G055',225,55,'R18','Лето',12840),(39,'Yokohama','Geolandar A/T G015',215,75,'R15','Лето',12969),(40,'Yokohama','Geolandar G91At',225,60,'R18','Лето',13099),(41,'Yokohama','Geolandar A/T G015',225,70,'R15','Лето',13269),(42,'Yokohama','BlueEarth-GT AE-51',215,55,'R17','Лето',13289),(43,'Yokohama','Geolandar CVg058',225,65,'R17','Лето',13479),(44,'Yokohama','Geolandar A/T G015',215,70,'R16','Лето',13599),(45,'Yokohama','Geolandar CVg058',225,70,'R16','Лето',13669),(46,'Yokohama','BlueEarth-GT AE-51',215,45,'R17','Лето',13719),(47,'Yokohama','Geolandar A/T G015',235,75,'R15','Лето',13869),(48,'Yokohama','Geolandar A/T G015',215,80,'R15','Лето',13949),(49,'Yokohama','Geolandar A/T G015',225,70,'R16','Лето',14359),(50,'Yokohama','Geolandar A/T G015',235,60,'R16','Лето',14539),(51,'Yokohama','Geolandar H/T G056',215,70,'R15','Лето',14999),(52,'Yokohama','Geolandar H/T G056',265,70,'R16','Лето',15259),(53,'Yokohama','Geolandar A/T G015',225,65,'R17','Лето',15269),(54,'Yokohama','Geolandar A/T G015',215,70,'R15','Лето',15469),(55,'Yokohama','BlueEarth-GT AE-51',225,55,'R17','Лето',15739),(56,'Yokohama','Geolandar A/T G015',225,80,'R15','Лето',15879),(57,'Yokohama','Geolandar H/T G056',275,65,'R17','Лето',15939),(58,'Yokohama','Geolandar A/T G015',245,70,'R16','Лето',16059),(59,'Yokohama','Geolandar A/T G015',275,70,'R16','Лето',16189),(60,'Yokohama','Advan Sport V103S',225,45,'R17','Лето',16189),(61,'Yokohama','BlueEarth-XT AE61',215,60,'R17','Лето',16379),(62,'Yokohama','Geolandar A/T G015',265,70,'R15','Лето',16419),(63,'Yokohama','Geolandar A/T G015',265,70,'R16','Лето',16589),(64,'Yokohama','Geolandar A/T G015',235,65,'R17','Лето',16869),(65,'Yokohama','Geolandar CVg058',215,60,'R17','Лето',17029),(66,'Yokohama','Geolandar H/T G056',265,65,'R17','Лето',17249),(67,'Yokohama','BlueEarth RV-02',235,60,'R18','Лето',17249),(68,'Yokohama','BlueEarth-XT AE61',225,60,'R18','Лето',17329),(69,'Yokohama','Geolandar A/T G015',215,60,'R17','Лето',17349),(70,'Yokohama','Geolandar A/T G015',275,65,'R17','Лето',17409),(71,'Yokohama','Geolandar CVg058',225,60,'R18','Лето',17429),(72,'Yokohama','Geolandar A/T G015',225,60,'R18','Лето',18029),(73,'Yokohama','Geolandar CVg058',235,60,'R18','Лето',18129),(74,'Yokohama','Geolandar A/T G015',265,75,'R16','Лето',18299),(75,'Yokohama','Geolandar CVg058',225,55,'R18','Лето',18439),(76,'Yokohama','Geolandar A/T G015',265,65,'R17','Лето',18549),(77,'Yokohama','Geolandar CVg058',235,65,'R18','Лето',18559),(78,'Yokohama','Geolandar G94BV',265,60,'R18','Лето',19429),(79,'Yokohama','Geolandar H/T G056',285,60,'R18','Лето',19489),(80,'Yokohama','Geolandar CVg058',265,55,'R18','Лето',19819),(81,'Yokohama','Geolandar A/T G015',265,60,'R18','Лето',19919),(82,'Yokohama','Geolandar CVg058',235,55,'R19','Лето',20289),(83,'Yokohama','Geolandar A/T G015',225,55,'R18','Лето',20739),(84,'Yokohama','Geolandar A/T G015',285,60,'R18','Лето',21859),(85,'Yokohama','Geolandar A/T G015',235,55,'R19','Лето',25029),(86,'Yokohama','Geolandar A/T G015',275,60,'R20','Лето',29669),(87,'Yokohama','Geolandar H/T G056',285,50,'R20','Лето',29679),(88,'Yokohama','Geolandar A/T G015',275,55,'R20','Лето',34649),(89,'Bridgestone','Blizzak VRX',205,50,'R17','Зима',10779),(90,'Dunlop','Winter Maxx SJ8',275,70,'R16','Зима',15239),(91,'Dunlop','Winter Maxx WM01',175,65,'R14','Зима',4949),(92,'Dunlop','Winter Maxx WM01',185,60,'R15','Зима',6599),(93,'Dunlop','Winter Maxx WM01',215,60,'R16','Зима',8889),(94,'Dunlop','Winter Maxx WM02',175,70,'R14','Зима',5589),(95,'Dunlop','Winter Maxx WM02',185,65,'R14','Зима',6089),(96,'Hankook','Dynapro i*cept RW08',285,65,'R17','Зима',4449),(97,'Hankook','i*cept iZ2',175,65,'R14','Зима',5389),(98,'Hankook','i*cept iZ2',175,70,'R14','Зима',5419),(99,'Hankook','i*cept iZ2',205,70,'R15','Зима',8329),(100,'Hankook','i*cept iZ2',205,55,'R16','Зима',8119),(101,'Hankook','i*cept iZ2',225,55,'R17','Зима',4129),(102,'Hankook','i*pike RW11',215,70,'R16','Зима',5299),(103,'Hankook','i*cept X',245,70,'R16','Зима',14209),(104,'Hankook','i*pike RS2',185,60,'R15','Зима',7039),(105,'Hankook','i*pike RS2',205,65,'R15','Зима',7539),(106,'Maxxis','Premitra Ice SP3',185,65,'R14','Зима',3389),(107,'Maxxis','Premitra Ice SP3',195,55,'R15','Зима',4839),(108,'Maxxis','Premitra Ice SP3',205,65,'R16','Зима',5809),(109,'Maxxis','Presa Spike MA-SLW',205,70,'R15','Зима',6869),(110,'Maxxis','Presa SUV SS01',225,70,'R16','Зима',7499),(111,'Maxxis','Presa SUV SS01',215,60,'R17','Зима',7259),(112,'Maxxis','Presa SUV SS01',225,60,'R17','Зима',7379),(113,'Maxxis','Presa SUV SS01',255,50,'R19','Зима',12219),(114,'Nexen','WINGUARD ice Plus',175,65,'R14','Зима',4479),(115,'Nexen','WINGUARD ice Plus',185,70,'R14','Зима',5169),(116,'Nexen','WINGUARD ice ',225,65,'R17','Зима',9069),(117,'Yokohama','Geolandar I/T-S G073',265,50,'R20','Зима',7089),(118,'Yokohama','iceGuard G075',215,80,'R15','Зима',12999),(119,'Yokohama','iceGuard G075',225,70,'R16','Зима',17369),(120,'Yokohama','iceGuard G075',225,70,'R16','Зима',6499),(121,'Yokohama','iceGuard G075',275,70,'R16','Зима',20409),(122,'Yokohama','iceGuard G075',285,75,'R16','Зима',17929),(123,'Yokohama','iceGuard G075',225,65,'R17','Зима',15479),(124,'Yokohama','iceGuard G075',235,55,'R18','Зима',19829),(125,'Yokohama','iceGuard G075',235,65,'R18','Зима',18519),(126,'Yokohama','iceGuard G075',255,60,'R18','Зима',19699),(127,'Yokohama','iceGuard G075',265,60,'R18','Зима',20349),(128,'Yokohama','iceGuard G075',285,60,'R18','Зима',20429),(129,'Yokohama','iceGuard G075',235,55,'R19','Зима',19609),(130,'Yokohama','iceGuard G075',255,50,'R19','Зима',24129),(131,'Yokohama','iceGuard G075',265,50,'R20','Зима',28019),(132,'Yokohama','iceGuard G075',275,40,'R20','Зима',21969),(133,'Yokohama','iceGuard G075',275,50,'R21','Зима',33669),(134,'Yokohama','iceGuard G075',285,45,'R22','Зима',31209),(135,'Yokohama','IceGuard iG35+',265,65,'R17','Зима',5079),(136,'Yokohama','iceGuard iG50+',205,60,'R16','Зима',11109),(137,'Yokohama','iceGuard iG50+',215,60,'R16','Зима',11939),(138,'Yokohama','iceGuard iG50+',215,50,'R17','Зима',16399),(139,'Yokohama','iceGuard iG55',195,55,'R15','Зима',10419),(140,'Yokohama','iceGuard iG55',195,55,'R15','Зима',3569),(141,'Yokohama','iceGuard iG55',265,60,'R18','Зима',16579),(142,'Yokohama','iceGuard iG55',235,55,'R19','Зима',21479),(143,'Yokohama','iceGuard iG55',265,45,'R21','Зима',32299),(144,'Yokohama','iceGuard iG60',175,65,'R14','Зима',7359),(145,'Yokohama','iceGuard iG60',175,70,'R14','Зима',7479),(146,'Yokohama','iceGuard iG60',185,65,'R14','Зима',8239),(147,'Yokohama','iceGuard iG60',205,60,'R15','Зима',10429),(148,'Yokohama','iceGuard iG60',205,60,'R16','Зима',12429),(149,'Yokohama','iceGuard iG60',225,60,'R16','Зима',14179),(150,'Yokohama','iceGuard iG60',205,50,'R17','Зима',16139),(151,'Yokohama','iceGuard iG60',215,60,'R17','Зима',16879),(152,'Yokohama','iceGuard iG60',225,50,'R17','Зима',17309),(153,'Yokohama','iceGuard iG65',215,60,'R17','Зима',19199),(154,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2022-05-27  1:18:47
