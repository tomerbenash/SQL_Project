-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: project_x
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `Artist`
--

DROP TABLE IF EXISTS `Artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artist` (
  `Artist_Id` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Date_Of_Birth` datetime DEFAULT NULL,
  `Phone_Number` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Artist_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` VALUES (7,'Dana','Zillertal','1999-03-11 00:00:00','0589929928','Dana@gmail.com','Pianist'),(8,'Shelly','Gur','1998-02-19 00:00:00','0525381649','Shelly@gmail.com','Guitarist'),(9,'Sima','Noon','1995-01-01 00:00:00','0529696660','Sima@gmail.com','Singer'),(10,'Ravid','Plotnik','1986-02-04 00:00:00','0588206601','Ravid@gmail.com','Rapper'),(11,'Itay','Tuna','1986-04-02 00:00:00','0520066006','Itay@gmail.com','Rapper'),(12,'Hadag','Nahash','1970-01-01 00:00:00','0505299929','Hadag@gmail.com','Band'),(13,'Marshall ','Matters','1967-09-08 00:00:00','0540006291','Marshall@gmail.com','Rapper'),(14,'Omer','Adam','1984-01-07 00:00:00','0510006820','Omer@gmail.com','Drummer');
/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cashier`
--

DROP TABLE IF EXISTS `Cashier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cashier` (
  `Cashier_Id` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Date_Of_Birth` varchar(45) DEFAULT NULL,
  `Phone_Number` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Sales_Goal` int DEFAULT NULL,
  PRIMARY KEY (`Cashier_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cashier`
--

LOCK TABLES `Cashier` WRITE;
/*!40000 ALTER TABLE `Cashier` DISABLE KEYS */;
INSERT INTO `Cashier` VALUES (15,'Aminadav','Yeshua','1980-07-08','0505296022','Amindav@gmail.com',15),(16,'Tomer','Levi','1996-01-07','0528858202','Tomerrrrr@gmail.com',10),(17,'Dror','Segev','1995-11-11','0529698819','Dror@gmail.com',0),(18,'Yosi','Levi','1987-07-24','0528199991','yosi@gmail.com',5),(19,'Eitan','Konder','1995-07-21','0582881911','eitan@gmail.com',100),(20,'Yuval','Cohen','2001-06-18','0548199292','yuval@gmail.com',7),(21,'Yaniv','Gershon','2002-01-02','0505058821','yaniv@gmail.com',0),(22,'Simi','Riger','2003-11-10','0591999222','simi@gmail.com',0);
/*!40000 ALTER TABLE `Cashier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `Customer_Id` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Date_Of_Birth` varchar(45) DEFAULT NULL,
  `Phone_Number` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (501,'Sarah','Johnson','1990-01-01','0521288851',' sarah.johnson@email.com'),(502,'Michael','Williams','1985-02-14','0505206077','michael.williams@email.com'),(503,'Jessica','Smith','1988-03-21','0529995101','jessica.smith@email.com'),(504,'John','Davis','1995-04-30','0505055005',' john.davis@email.com'),(505,'Rachel','Thompson','1992-05-15','0510858851','RAchel@gmail.com'),(506,'Christopher','Anderson','1997-06-22','0539599591','Chris@gmail.com'),(507,'Emily','Martin','1991-07-28','0545888510','Emiliy@gmail.com'),(508,'David','Thompson','1996-09-12','0591881810','David@gmail.com'),(509,'Melissa','Davis','1989-08-05','0595818810','Melissa@gmail.com'),(510,'William','Smith','1993-10-18','0503883811','William@gmail.com'),(511,'Jennifer','Johnson','1998-11-24','0505858819','jennifer.johnson@email.com'),(512,'Jane','WIlliams','1984-12-31','0585717819',' james.williams@email.com');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producer`
--

DROP TABLE IF EXISTS `Producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Producer` (
  `Id` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Date_Of_Birth` varchar(45) DEFAULT NULL,
  `Phone_Number` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producer`
--

LOCK TABLES `Producer` WRITE;
/*!40000 ALTER TABLE `Producer` DISABLE KEYS */;
INSERT INTO `Producer` VALUES (1,'Tomer','Ben Asher','1996-11-14','0505202022','tomer@gmail.com'),(2,'Noa','Rom','1998-10-25 00:00:00','0545325902','noa@gmail.com'),(3,'Itamar','Benaroche','1997-12-13 00:00:00','0542492810','Itamar@gmail.com'),(4,'Guy','Nataf','1996-01-01 00:00:00','0524860031','Guy@gmail.com'),(5,'Maya','Neuner','1998-01-06','0502229994','Maya@gmail.com'),(6,'Noa ','Azura','1999-04-04','0525550211','Noadddd@gmail.com'),(7,'Mister','Towelie','2005-05-08','0525381648','smartut@gmail.com');
/*!40000 ALTER TABLE `Producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shows`
--

DROP TABLE IF EXISTS `Shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shows` (
  `Code` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Length` decimal(4,2) NOT NULL,
  `Date` datetime NOT NULL,
  `Producer_Id` int NOT NULL,
  `Artist_Id` int DEFAULT NULL,
  PRIMARY KEY (`Code`),
  KEY `PID_idx` (`Producer_Id`),
  KEY `AID_idx` (`Artist_Id`),
  CONSTRAINT `AID` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Artist_Id`),
  CONSTRAINT `PID` FOREIGN KEY (`Producer_Id`) REFERENCES `Producer` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shows`
--

LOCK TABLES `Shows` WRITE;
/*!40000 ALTER TABLE `Shows` DISABLE KEYS */;
INSERT INTO `Shows` VALUES (100,'Galaxy',1.50,'2022-01-01 00:00:00',1,7),(101,'Earth',2.33,'2023-01-02 00:00:00',2,7),(102,'Sun',2.25,'2019-01-01 00:00:00',1,8),(103,'Moon',3.00,'2023-01-06 00:00:00',3,9),(104,'Poolday',2.50,'2020-11-11 00:00:00',3,10),(105,'DayNight',1.00,'2014-09-29 00:00:00',4,11),(106,'Blazer',1.50,'2022-02-21 00:00:00',5,11),(107,'Midnight',2.25,'2021-10-14 00:00:00',1,12),(108,'Obviously',3.50,'2019-11-11 00:00:00',6,11),(109,'ScreenSaver',4.00,'2020-05-05 00:00:00',2,13),(110,'Vans',1.25,'2021-09-09 00:00:00',5,14),(111,'AllTimesBest',3.33,'2022-03-03 00:00:00',6,10),(112,'XMAS',12.00,'2060-01-01 00:00:00',7,7);
/*!40000 ALTER TABLE `Shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tickets`
--

DROP TABLE IF EXISTS `Tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tickets` (
  `Number` int NOT NULL,
  `Seat` int NOT NULL,
  `Price` int DEFAULT NULL,
  `CustID` int DEFAULT NULL,
  `CodeShow` int DEFAULT NULL,
  `IdCashierSold` int DEFAULT NULL,
  PRIMARY KEY (`Number`),
  KEY `CustoID_idx` (`CustID`),
  KEY `CodID_idx` (`CodeShow`),
  KEY `CASHID_idx` (`IdCashierSold`),
  CONSTRAINT `CASHID` FOREIGN KEY (`IdCashierSold`) REFERENCES `Cashier` (`Cashier_Id`),
  CONSTRAINT `CodID` FOREIGN KEY (`CodeShow`) REFERENCES `Shows` (`Code`),
  CONSTRAINT `CustoID` FOREIGN KEY (`CustID`) REFERENCES `Customers` (`Customer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
INSERT INTO `Tickets` VALUES (901,14,150,501,100,15),(902,15,120,501,101,15),(903,166,300,502,101,15),(904,1,1500,509,102,15),(905,666,30,503,103,19),(906,11,450,512,104,17),(907,222,120,508,104,17),(908,4,300,505,104,16),(909,323,50,507,105,18),(910,276,500,507,106,21),(911,53,180,506,108,22),(912,111,319,505,107,19),(913,55,340,509,107,20),(914,109,250,510,109,20),(915,67,195,510,110,20),(916,94,225,511,111,20),(917,64,370,504,104,20),(918,3,545,508,107,21),(919,45,63,509,102,20),(920,100,120,510,111,15),(921,90,250,502,106,18),(922,1,1,502,112,20);
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-07 20:58:15
