CREATE DATABASE  IF NOT EXISTS `south_valley_uni` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `south_valley_uni`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: south_valley_uni
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `students_professors_evaluations`
--

DROP TABLE IF EXISTS `students_professors_evaluations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_professors_evaluations` (
  `Student_ID` int NOT NULL,
  `Professor_ID` int NOT NULL,
  `Professor_E_Score` decimal(5,2) DEFAULT NULL,
  `Professor_E_Comment` text,
  PRIMARY KEY (`Student_ID`,`Professor_ID`),
  KEY `Professor_ID` (`Professor_ID`),
  CONSTRAINT `students_professors_evaluations_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`),
  CONSTRAINT `students_professors_evaluations_ibfk_2` FOREIGN KEY (`Professor_ID`) REFERENCES `professors` (`Professor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_professors_evaluations`
--

LOCK TABLES `students_professors_evaluations` WRITE;
/*!40000 ALTER TABLE `students_professors_evaluations` DISABLE KEYS */;
INSERT INTO `students_professors_evaluations` VALUES (1,1,4.50,'Good professor, very knowledgeable.'),(2,3,3.80,'Helpful and explains concepts well.'),(3,5,4.20,'Engaging lectures and fair grading.'),(4,7,4.00,'Organized and approachable.'),(5,9,4.70,'Best professor I\'ve had so far.'),(6,11,3.50,'Knowledgeable but lectures can be dry.'),(7,13,4.10,'Passionate about the subject.'),(8,15,4.60,'Challenges students to think critically.'),(9,2,3.90,'Approachable and encourages class participation.'),(10,4,4.30,'Provides helpful feedback on assignments.'),(11,6,4.40,'Interactive classes and practical assignments.'),(12,8,3.70,'Clear explanations but grading is tough.'),(13,10,4.00,'Interesting lectures and fair exams.'),(14,12,4.50,'Supportive and encourages student collaboration.'),(15,14,4.20,'Creates a positive learning environment.');
/*!40000 ALTER TABLE `students_professors_evaluations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-15 23:50:18
