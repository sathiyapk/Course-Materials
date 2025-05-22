-- MySQL dump 10.13  Distrib 8.4.4, for Linux (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `cno` smallint DEFAULT NULL,
  `cname` varchar(27) DEFAULT NULL,
  `dname` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (302,'Intro to Programming','Computer Sciences'),(310,'Thermodynamics','Chemical Engineering'),(310,'Intro to Garbage','Sanitary Engineering'),(365,'City Planning','Civil Engineering'),(375,'Highway Engineering','Civil Engineering'),(461,'College Geometry 1','Mathematics'),(462,'College Geometry 2','Mathematics'),(467,'Intro to Data Structures','Computer Sciences'),(514,'Manpower Utilization','Industrial Engineering'),(561,'Advanced City Planning','Civil Engineering'),(561,'Advanced Garbage Collection','Sanitary Engineering'),(701,'Compiler Construction','Computer Sciences'),(726,'Nonlinear Programming','Computer Sciences');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `dname` varchar(22) DEFAULT NULL,
  `numphds` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES ('Chemical Engineering',32),('Civil Engineering',88),('Computer Sciences',47),('Industrial Engineering',41),('Mathematics',129),('Sanitary Engineering',3);
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enroll`
--

DROP TABLE IF EXISTS `enroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enroll` (
  `sid` smallint DEFAULT NULL,
  `grade` decimal(2,1) DEFAULT NULL,
  `dname` varchar(22) DEFAULT NULL,
  `cno` smallint DEFAULT NULL,
  `sectno` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll`
--

LOCK TABLES `enroll` WRITE;
/*!40000 ALTER TABLE `enroll` DISABLE KEYS */;
INSERT INTO `enroll` VALUES (1,3.0,'Chemical Engineering',310,1),(2,3.0,'Computer Sciences',302,1),(3,3.5,'Civil Engineering',375,1),(4,4.0,'Mathematics',461,1),(5,3.0,'Industrial Engineering',514,1),(6,3.5,'Computer Sciences',302,2),(7,4.0,'Computer Sciences',302,1),(8,4.0,'Computer Sciences',302,1),(9,3.0,'Civil Engineering',375,1),(10,2.0,'Computer Sciences',302,1),(11,3.0,'Computer Sciences',302,2),(12,2.5,'Computer Sciences',302,2),(13,2.5,'Computer Sciences',302,2),(14,2.5,'Mathematics',462,1),(15,3.0,'Chemical Engineering',310,1),(16,3.0,'Computer Sciences',467,1),(16,3.0,'Computer Sciences',701,1),(17,3.0,'Mathematics',461,1),(18,2.0,'Civil Engineering',375,1),(18,3.5,'Mathematics',461,1),(19,3.5,'Mathematics',461,1),(20,2.5,'Computer Sciences',302,1),(21,3.0,'Computer Sciences',467,1),(21,3.5,'Industrial Engineering',514,1),(22,3.0,'Computer Sciences',302,1),(22,3.0,'Computer Sciences',467,1),(23,4.0,'Civil Engineering',561,1),(24,4.0,'Computer Sciences',302,2),(25,3.5,'Computer Sciences',302,1),(26,3.5,'Mathematics',462,1),(27,2.5,'Industrial Engineering',514,1),(28,3.0,'Mathematics',461,1),(29,3.0,'Civil Engineering',365,1),(29,3.0,'Civil Engineering',375,1),(29,3.0,'Civil Engineering',561,1),(30,4.0,'Computer Sciences',467,1),(31,3.5,'Computer Sciences',302,1),(32,2.0,'Civil Engineering',561,1),(33,2.0,'Civil Engineering',365,1),(33,3.0,'Computer Sciences',726,1),(34,1.0,'Civil Engineering',561,1),(35,3.0,'Mathematics',461,1),(36,3.0,'Civil Engineering',375,1),(37,3.0,'Mathematics',462,1),(38,3.0,'Computer Sciences',302,2),(39,3.0,'Computer Sciences',302,1),(40,3.5,'Mathematics',462,1),(41,3.0,'Computer Sciences',701,1),(42,3.5,'Computer Sciences',701,1),(43,2.5,'Computer Sciences',467,1),(44,4.0,'Computer Sciences',726,1),(45,3.0,'Chemical Engineering',310,1),(46,4.0,'Computer Sciences',726,1),(47,1.0,'Civil Engineering',365,1),(47,0.0,'Civil Engineering',561,1),(48,1.5,'Civil Engineering',561,1),(49,3.5,'Chemical Engineering',310,1),(49,3.5,'Industrial Engineering',514,1),(50,4.0,'Industrial Engineering',514,1),(51,3.0,'Computer Sciences',726,1),(52,1.0,'Computer Sciences',302,1),(52,4.0,'Computer Sciences',467,1),(53,4.0,'Mathematics',462,1),(54,3.0,'Civil Engineering',375,1),(55,2.5,'Mathematics',461,1),(56,2.5,'Chemical Engineering',310,1),(57,3.5,'Computer Sciences',467,1),(58,2.0,'Industrial Engineering',514,1),(59,3.5,'Mathematics',462,1),(60,2.5,'Civil Engineering',561,1),(61,3.5,'Civil Engineering',561,1),(61,2.0,'Computer Sciences',726,1),(62,2.5,'Computer Sciences',726,1),(63,2.5,'Computer Sciences',701,1),(64,4.0,'Civil Engineering',561,1),(64,3.5,'Computer Sciences',726,1),(66,1.5,'Civil Engineering',365,1),(66,4.0,'Civil Engineering',375,1),(67,3.5,'Computer Sciences',467,1),(67,4.0,'Computer Sciences',701,1),(68,3.5,'Computer Sciences',726,1),(69,3.5,'Computer Sciences',302,2),(69,2.0,'Computer Sciences',467,1),(70,3.5,'Civil Engineering',561,1),(71,2.5,'Computer Sciences',701,1),(72,3.5,'Computer Sciences',726,1),(73,3.0,'Civil Engineering',375,1),(74,2.5,'Civil Engineering',365,1),(75,3.0,'Computer Sciences',726,1),(76,3.5,'Civil Engineering',365,1),(77,2.0,'Computer Sciences',701,1),(78,3.0,'Industrial Engineering',514,1),(79,4.0,'Civil Engineering',365,1),(80,4.0,'Computer Sciences',726,1),(81,2.5,'Civil Engineering',561,1),(82,3.5,'Computer Sciences',726,1),(83,3.0,'Computer Sciences',726,1),(84,3.0,'Computer Sciences',726,1),(85,3.5,'Civil Engineering',375,1),(86,2.5,'Computer Sciences',467,1),(86,3.0,'Computer Sciences',701,1),(87,4.0,'Computer Sciences',701,1),(88,2.0,'Chemical Engineering',310,1),(89,3.5,'Computer Sciences',701,1),(90,3.5,'Computer Sciences',726,1),(90,3.5,'Mathematics',462,1),(91,4.0,'Mathematics',462,1),(92,4.0,'Computer Sciences',726,1),(93,4.0,'Chemical Engineering',310,1),(94,2.0,'Mathematics',461,1),(96,4.0,'Civil Engineering',365,1),(96,3.0,'Civil Engineering',561,1),(97,3.0,'Industrial Engineering',514,1),(98,4.0,'Industrial Engineering',514,1),(99,3.5,'Computer Sciences',701,1),(100,2.0,'Computer Sciences',726,1),(101,4.0,'Mathematics',462,1),(102,3.5,'Mathematics',461,1),(103,4.0,'Computer Sciences',701,1),(104,2.8,'Computer Sciences',302,2),(104,2.6,'Sanitary Engineering',561,1);
/*!40000 ALTER TABLE `enroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `dname` varchar(22) DEFAULT NULL,
  `sid` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES ('Chemical Engineering',25),('Chemical Engineering',26),('Chemical Engineering',27),('Chemical Engineering',28),('Chemical Engineering',29),('Chemical Engineering',30),('Chemical Engineering',31),('Chemical Engineering',32),('Chemical Engineering',33),('Chemical Engineering',34),('Chemical Engineering',35),('Civil Engineering',36),('Civil Engineering',37),('Civil Engineering',38),('Civil Engineering',39),('Civil Engineering',40),('Civil Engineering',41),('Civil Engineering',42),('Civil Engineering',43),('Civil Engineering',44),('Civil Engineering',45),('Civil Engineering',46),('Civil Engineering',47),('Civil Engineering',48),('Civil Engineering',49),('Civil Engineering',50),('Civil Engineering',51),('Civil Engineering',52),('Civil Engineering',53),('Civil Engineering',54),('Civil Engineering',55),('Civil Engineering',56),('Civil Engineering',57),('Civil Engineering',58),('Civil Engineering',59),('Civil Engineering',60),('Civil Engineering',61),('Civil Engineering',62),('Civil Engineering',63),('Computer Sciences',1),('Computer Sciences',2),('Computer Sciences',3),('Computer Sciences',4),('Computer Sciences',5),('Computer Sciences',6),('Computer Sciences',7),('Computer Sciences',8),('Computer Sciences',9),('Computer Sciences',10),('Computer Sciences',11),('Computer Sciences',12),('Computer Sciences',13),('Computer Sciences',14),('Computer Sciences',15),('Computer Sciences',16),('Computer Sciences',17),('Computer Sciences',18),('Computer Sciences',19),('Computer Sciences',20),('Computer Sciences',21),('Computer Sciences',22),('Computer Sciences',23),('Computer Sciences',24),('Industrial Engineering',64),('Industrial Engineering',65),('Industrial Engineering',66),('Industrial Engineering',67),('Industrial Engineering',68),('Industrial Engineering',69),('Industrial Engineering',70),('Industrial Engineering',71),('Industrial Engineering',72),('Industrial Engineering',73),('Industrial Engineering',74),('Industrial Engineering',75),('Industrial Engineering',76),('Industrial Engineering',77),('Industrial Engineering',78),('Industrial Engineering',79),('Industrial Engineering',80),('Industrial Engineering',81),('Industrial Engineering',82),('Industrial Engineering',83),('Mathematics',84),('Mathematics',85),('Mathematics',86),('Mathematics',87),('Mathematics',88),('Mathematics',89),('Mathematics',90),('Mathematics',91),('Mathematics',92),('Mathematics',93),('Mathematics',94),('Mathematics',95),('Mathematics',96),('Mathematics',97),('Mathematics',98),('Mathematics',99),('Mathematics',0),('Mathematics',1),('Mathematics',2),('Mathematics',3),('Sanitary Engineering',4);
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof`
--

DROP TABLE IF EXISTS `prof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prof` (
  `pname` varchar(13) DEFAULT NULL,
  `dname` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof`
--

LOCK TABLES `prof` WRITE;
/*!40000 ALTER TABLE `prof` DISABLE KEYS */;
INSERT INTO `prof` VALUES (' Brian, C.','Computer Sciences'),(' Brown, S.','Civil Engineering'),(' Bucket, T.','Sanitary Engineering'),(' Clark, E.','Civil Engineering'),(' Edison, L.','Chemical Engineering'),(' Jones, J.','Computer Sciences'),(' Randolph, B.','Civil Engineering'),(' Robinson, T.','Mathematics'),(' Smith, S.','Industrial Engineering'),(' Walter, A.','Industrial Engineering');
/*!40000 ALTER TABLE `prof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `dname` varchar(22) DEFAULT NULL,
  `cno` smallint DEFAULT NULL,
  `sectno` tinyint DEFAULT NULL,
  `pname` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES ('Chemical Engineering',310,1,'Edison, L.'),('Civil Engineering',365,1,'Randolph, B.'),('Civil Engineering',375,1,'Brown, S.'),('Civil Engineering',561,1,'Randolph, B.'),('Computer Sciences',302,1,'Jones, J.'),('Computer Sciences',302,2,'Smith, S.'),('Computer Sciences',467,1,'Jones, J.'),('Computer Sciences',701,1,'Clark, E.'),('Computer Sciences',726,1,'Brian, C.'),('Industrial Engineering',514,1,'Walter, A.'),('Mathematics',461,1,'Robinson, T.'),('Mathematics',462,1,'Robinson, T.'),('Sanitary Engineering',561,1,'Bucket, T.');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `sid` smallint DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `age` tinyint DEFAULT NULL,
  `year` tinyint DEFAULT NULL,
  `gpa` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Jacobs, T.','m',29,5,3.6),(2,'Pierson, E.','m',32,5,3.5),(3,'Zeene, Ben N.','m',21,5,3.9),(4,'Sulfate, Barry M.','m',19,2,2.8),(5,'Form, Clara O.','f',18,1,3.3),(6,'Scott, Kim J.','m',20,1,3.8),(7,'Sather, Roberto B.','m',22,4,2.2),(8,'Stanley, Leotha T.','m',21,3,3.6),(9,'Smith, Joyce A.','f',21,4,2.0),(10,'Jones, David S.','m',19,2,3.5),(11,'Paul, Mary W.','f',23,5,3.6),(12,'Soong, V.','f',24,5,3.5),(13,'Kellerman, S.','f',21,3,2.9),(14,'Cheong, R.','m',25,4,3.0),(15,'Borchart, Sandra L.','f',26,5,3.9),(16,'Alsberg, David J.','m',25,5,3.5),(17,'Thorton, James Q.','m',28,4,2.7),(18,'Gooch','m',26,1,1.4),(19,'Smith, L.','m',43,4,0.7),(20,'Korpel, E.','f',19,3,3.5),(21,'Surk, K.','m',23,2,2.5),(22,'Emile, R.','m',18,1,2.0),(23,'Bomber, C.','f',22,4,3.2),(24,'Carter, Jimmy','m',56,5,3.5),(25,'Kissinger, Henry','m',58,5,3.4),(26,'Ford, Gerald','m',60,5,3.5),(27,'Anderson, P.','f',18,1,3.2),(28,'Austin, G.','m',25,5,3.5),(29,'Hamilton, S.','m',21,3,2.8),(30,'Baker, C.','f',18,1,3.5),(31,'Andrews, R.','m',19,2,2.8),(32,'Liu, Huihusan','m',29,5,3.9),(33,'Chao, Tsechih','f',23,5,3.6),(34,'Kasten, Norman L.','m',23,2,2.5),(35,'Mathews, John W.','m',29,5,3.6),(36,'Burroughs, Susan S.','f',18,1,3.0),(37,'Dunbar, D.','m',30,5,3.4),(38,'Auen, B.','m',21,3,2.7),(39,'Shoemaker, A.','f',22,4,3.5),(40,'Rosemeyer, S.','f',21,3,2.9),(41,'Fisher, C.','f',22,4,3.5),(42,'Trude, T.','m',19,2,2.9),(43,'Ksar, J.','m',20,3,3.4),(44,'Moeri, S.','f',20,4,3.2),(45,'June, Granson','f',18,1,3.1),(46,'Micheal, Zadicki T.','m',22,2,2.7),(47,'Roger, Blotter N.','m',21,3,1.9),(48,'Natividad, A.','f',25,5,4.0),(49,'Villa-lobos, M.','m',47,5,3.7),(50,'Moomchi, B.','m',32,5,3.5),(51,'Jetplane, Leaving O.','m',30,1,0.0),(52,'Fy, Clara I.','f',18,2,2.0),(53,'Atny, Mary H.','f',26,5,3.8),(54,'Maximillian','m',98,5,3.0),(55,'Glitch, R.','m',19,1,2.8),(56,'Starry, J.','f',22,4,3.3),(57,'Hiemerschmitz, A.','f',19,1,2.7),(58,'Marshmallton','m',20,3,3.0),(59,'Ziebart, F.','m',22,4,1.8),(60,'Calcmity, J.','f',23,3,2.6),(61,'Kennedy, Ed','m',55,3,2.3),(62,'Moses, A.','m',18,1,3.2),(63,'Kool, Joseph F.','m',35,5,3.7),(64,'Fred, Edwin B.','m',80,5,4.0),(65,'Ripper, Jack T.','m',18,1,0.5),(66,'Altenhaus, Stuart','m',21,4,2.8),(67,'Altenhaus, Gloria','f',22,5,4.0),(68,'Crist, J.','m',23,4,3.0),(69,'Heilskov, G.','m',23,4,2.5),(70,'Caucutt, B.','m',24,5,3.0),(71,'Mark, B.','m',24,4,3.6),(72,'Barnes, J.','m',45,5,2.3),(73,'Quarnty, G.','f',20,2,4.0),(74,'Andrus, J.','f',21,3,3.7),(75,'Jones, A.','f',23,5,3.2),(76,'Zorhoff, C.','m',20,3,3.0),(77,'Paull, Thomas H.','m',23,4,2.6),(78,'Cool, J.','m',18,2,2.6),(79,'Evert, Chris','f',21,4,3.9),(80,'Connors, Jimmy','m',25,1,0.2),(81,'Smith, Ike Z.','m',33,1,1.1),(82,'News, Nightly','m',15,1,1.9),(83,'Jones, Ivan L.','m',55,5,3.5),(84,'Smith, R.','m',19,3,2.7),(85,'Mayer, N.','f',21,5,3.5),(86,'Gonring, J.','m',21,4,3.7),(87,'Mueller, D.','m',20,3,3.3),(88,'Bates, M.','m',22,4,3.3),(89,'Longlastname, A.','f',99,5,4.0),(90,'Zappa, F.','m',16,4,4.0),(91,'Ghandi, I.','f',78,1,3.5),(92,'Kirk, J.','m',34,5,2.2),(93,'Andermanthenol, K.','m',26,5,3.7),(94,'Uoiea, Z.','f',19,2,3.3),(95,'Grzlbltz, Q.','m',43,5,2.5),(96,'Birch, M.','f',23,5,3.5),(97,'Morgan, D.','m',18,1,3.5),(98,'Taylor, R.','m',20,3,2.8),(99,'Jones, J.','f',21,1,1.1),(100,'Gringo, C.','m',25,5,2.9),(101,'Davis, Scott P.','m',19,3,3.7),(102,'Bates, Michael L.','m',22,4,3.4),(103,'Kaisler, Janet M.','f',21,4,3.5),(104,'Baskett, Wayse T.','m',23,3,2.1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-11 13:29:58
