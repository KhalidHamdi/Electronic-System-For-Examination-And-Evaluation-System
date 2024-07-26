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
-- Table structure for table `department_courses`
--

DROP TABLE IF EXISTS `department_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_courses` (
  `Course_ID` int NOT NULL,
  `Course_Name` varchar(100) DEFAULT NULL,
  `Department_ID` int DEFAULT NULL,
  `HOFD_Professor` int DEFAULT NULL,
  PRIMARY KEY (`Course_ID`),
  KEY `Department_ID` (`Department_ID`),
  KEY `HOFD_Professor` (`HOFD_Professor`),
  CONSTRAINT `department_courses_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `departments` (`Department_ID`),
  CONSTRAINT `department_courses_ibfk_2` FOREIGN KEY (`HOFD_Professor`) REFERENCES `professors` (`Professor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_courses`
--

LOCK TABLES `department_courses` WRITE;
/*!40000 ALTER TABLE `department_courses` DISABLE KEYS */;
INSERT INTO `department_courses` VALUES (1,'Introduction to Programming',1,1),(2,'Circuit Analysis',2,2),(3,'Mechanical Design',3,3),(4,'Quantum Mechanics',4,4),(5,'Calculus I',5,5),(6,'Cell Biology',6,6),(7,'Organic Chemistry',7,7),(8,'World History',8,8),(9,'Microeconomics',9,9),(10,'Introduction to Psychology',10,10),(11,'English Literature',11,11),(12,'Business Ethics',12,12),(13,'Art History',13,13),(14,'Music Theory',14,14),(15,'Sociology of Culture',15,15);
/*!40000 ALTER TABLE `department_courses` ENABLE KEYS */;
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
