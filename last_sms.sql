CREATE DATABASE  IF NOT EXISTS `sms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sms`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sms
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `admin_sms`
--

DROP TABLE IF EXISTS `admin_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_sms` (
  `aphone` varchar(50) DEFAULT NULL,
  `apass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_sms`
--

LOCK TABLES `admin_sms` WRITE;
/*!40000 ALTER TABLE `admin_sms` DISABLE KEYS */;
INSERT INTO `admin_sms` VALUES ('01818477521','aaa');
/*!40000 ALTER TABLE `admin_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_sms`
--

DROP TABLE IF EXISTS `course_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_sms` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) DEFAULT NULL,
  `ccredit` double(3,2) DEFAULT NULL,
  `csemester` int DEFAULT NULL,
  `cdept` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_sms`
--

LOCK TABLES `course_sms` WRITE;
/*!40000 ALTER TABLE `course_sms` DISABLE KEYS */;
INSERT INTO `course_sms` VALUES (1,'c',3.00,1,'cse'),(2,'phy1',3.00,1,'cse'),(3,'math1',3.00,1,'cse'),(4,'DBMS',3.00,4,'cse');
/*!40000 ALTER TABLE `course_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_sms`
--

DROP TABLE IF EXISTS `sc_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_sms` (
  `sid` int DEFAULT NULL,
  `cid` int DEFAULT NULL,
  `grade` varchar(100) DEFAULT NULL,
  KEY `sid` (`sid`),
  KEY `cid` (`cid`),
  CONSTRAINT `sc_sms_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student_sms` (`sid`),
  CONSTRAINT `sc_sms_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `course_sms` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_sms`
--

LOCK TABLES `sc_sms` WRITE;
/*!40000 ALTER TABLE `sc_sms` DISABLE KEYS */;
INSERT INTO `sc_sms` VALUES (5,1,'F');
/*!40000 ALTER TABLE `sc_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester_course`
--

DROP TABLE IF EXISTS `semester_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester_course` (
  `sem` int DEFAULT NULL,
  `cid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester_course`
--

LOCK TABLES `semester_course` WRITE;
/*!40000 ALTER TABLE `semester_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `semester_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_sms`
--

DROP TABLE IF EXISTS `student_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_sms` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `sfirst_name` varchar(100) DEFAULT NULL,
  `slast_name` varchar(100) DEFAULT NULL,
  `sphone` varchar(100) DEFAULT NULL,
  `semail` varchar(100) DEFAULT NULL,
  `scolor` varchar(100) DEFAULT NULL,
  `sdept` varchar(100) DEFAULT NULL,
  `spassword` varchar(100) DEFAULT NULL,
  `scgpa` double(3,2) DEFAULT NULL,
  `ssemester` int DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_sms`
--

LOCK TABLES `student_sms` WRITE;
/*!40000 ALTER TABLE `student_sms` DISABLE KEYS */;
INSERT INTO `student_sms` VALUES (3,'dog','','01010101010','d','red','cse','bbb',0.00,1),(4,'cat','','11111111111','a','red','cse','aaa',0.00,1),(5,'ifte','alam','01818477521','a','red','cse','aaa',0.00,1),(6,'helo','man','88888888888','a','red','cse','aaa',0.00,1),(7,'farhad','islam','44444444444','a','red','cse','bbb',0.00,1),(8,'arafat','quack','99999999999','aaa','red','cse','aaa',0.00,1);
/*!40000 ALTER TABLE `student_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_sms`
--

DROP TABLE IF EXISTS `tc_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_sms` (
  `tid` int DEFAULT NULL,
  `cid` int DEFAULT NULL,
  KEY `tid` (`tid`),
  KEY `cid` (`cid`),
  CONSTRAINT `tc_sms_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher_sms` (`tid`),
  CONSTRAINT `tc_sms_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `course_sms` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_sms`
--

LOCK TABLES `tc_sms` WRITE;
/*!40000 ALTER TABLE `tc_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_sms`
--

DROP TABLE IF EXISTS `teacher_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_sms` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `tfirst_name` varchar(100) DEFAULT NULL,
  `tlast_name` varchar(100) DEFAULT NULL,
  `tpassword` varchar(100) DEFAULT NULL,
  `tphone` varchar(100) DEFAULT NULL,
  `temail` varchar(100) DEFAULT NULL,
  `tcolor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_sms`
--

LOCK TABLES `teacher_sms` WRITE;
/*!40000 ALTER TABLE `teacher_sms` DISABLE KEYS */;
INSERT INTO `teacher_sms` VALUES (1,'iftekhar','alam','ccc','01818477522','ifte','red'),(2,'iftekhar','alam','bbb','01818477522','ifte','red'),(3,'dog','man','aaa','00818477521','dog','red'),(4,'pet','man','aaa','00018477521','pet','red'),(5,'ppet','man','aaa','00000000000','PPet','red'),(6,'jamil','bro','bbb','01010101011','jamil','red'),(7,'x','y','bbb','22222222222','a','red'),(8,'jamil','bro','aaa','01888888888','a','red'),(9,'jamil','bro','bbb','33333333333','a','red'),(10,'jamil','asad','aaa','58585858585','aaa','black'),(11,'jabir','mohaimin','aaa','31313131313','a','red');
/*!40000 ALTER TABLE `teacher_sms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-07 15:35:32
