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
-- Table structure for table `question_banks`
--

DROP TABLE IF EXISTS `question_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_banks` (
  `Question_ID` int NOT NULL,
  `Question_Text` text,
  `Correct_answer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Question_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_banks`
--

LOCK TABLES `question_banks` WRITE;
/*!40000 ALTER TABLE `question_banks` DISABLE KEYS */;
INSERT INTO `question_banks` VALUES (1,'What is the capital of France?','Paris'),(2,'Who wrote the play \"Hamlet\"?','William Shakespeare'),(3,'What is the formula for the area of a circle?','π * r^2'),(4,'What year did World War II end?','1945'),(5,'Who painted the Mona Lisa?','Leonardo da Vinci'),(6,'What is the powerhouse of the cell?','Mitochondria'),(7,'What is the chemical symbol for water?','H2O'),(8,'Who discovered gravity?','Isaac Newton'),(9,'What is the boiling point of water in Celsius?','100'),(10,'What is the longest river in the world?','Nile'),(11,'Who invented the telephone?','Alexander Graham Bell'),(12,'What is the atomic number of carbon?','6'),(13,'Who is credited with the theory of relativity?','Albert Einstein'),(14,'Who wrote \"1984\"?','George Orwell'),(15,'What is the largest planet in our solar system?','Jupiter');
/*!40000 ALTER TABLE `question_banks` ENABLE KEYS */;
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
