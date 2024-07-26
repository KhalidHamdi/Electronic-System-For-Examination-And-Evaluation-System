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
-- Table structure for table `students_courses_departments`
--

DROP TABLE IF EXISTS `students_courses_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_courses_departments` (
  `Student_ID` int NOT NULL,
  `Course_ID` int NOT NULL,
  `Course_E_Score` decimal(5,2) DEFAULT NULL,
  `Course_E_Comment` text,
  PRIMARY KEY (`Student_ID`,`Course_ID`),
  KEY `Course_ID` (`Course_ID`),
  CONSTRAINT `students_courses_departments_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`),
  CONSTRAINT `students_courses_departments_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `department_courses` (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_courses_departments`
--

LOCK TABLES `students_courses_departments` WRITE;
/*!40000 ALTER TABLE `students_courses_departments` DISABLE KEYS */;
INSERT INTO `students_courses_departments` VALUES (1,1,87.50,'Excellent understanding of programming concepts.'),(2,3,92.00,'Innovative mechanical design project.'),(3,5,85.30,'Strong grasp of calculus principles.'),(4,7,89.70,'Achieved high marks in organic chemistry.'),(5,9,91.20,'Impressive microeconomic analysis skills.'),(6,11,84.60,'Comprehensive understanding of literary analysis.'),(7,13,90.10,'Excellent research paper on art history.'),(8,15,93.50,'Insightful sociological analysis of cultural phenomena.'),(9,2,88.20,'Solid understanding of circuit analysis principles.'),(10,4,90.90,'Advanced understanding of quantum mechanics.'),(11,6,86.40,'High marks in cell biology experiments.'),(12,8,83.80,'Comprehensive knowledge of world history events.'),(13,10,88.70,'Strong analytical skills in psychology.'),(14,12,91.50,'Exemplary business ethics case study.'),(15,14,89.40,'Achieved high marks in music theory assignments.');
/*!40000 ALTER TABLE `students_courses_departments` ENABLE KEYS */;
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
