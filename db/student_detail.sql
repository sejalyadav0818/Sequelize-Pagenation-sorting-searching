-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: student_detail
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20230420050604-create-user.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Cali','Shawna','Jana.Schulist@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(2,'Llewellyn','Davon','Tyson.Brown55@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(3,'Alfredo','Omer','Eileen_OReilly@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(4,'Shea','Alan','Ova.Prohaska89@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(5,'Kurtis','Norwood','Bert1@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(6,'Felicity','Jayda','Dolly_Satterfield@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(7,'Alysa','Martina','Beryl.Spencer61@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(8,'Keaton','Ally','Adolphus.Mills50@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(9,'Kellie','Ewell','Kameron_Beier@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(10,'Ada','Jaron','Myra76@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(11,'Ron','Doris','Savion_Bradtke@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(12,'Salvador','Clare','Penelope_Littel36@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(13,'Dock','Ruben','Telly49@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(14,'Shanie','Garry','Eino_Armstrong24@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(15,'Kattie','Ismael','Federico62@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(16,'Sammy','Karley','Catalina.McDermott@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(17,'Roger','Kallie','Green_Gerhold@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(18,'Brooks','Sedrick','Ignacio_Leannon10@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(19,'Jerrod','Edison','Sidney.Rosenbaum83@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(20,'Friedrich','Philip','Renee.McClure57@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(21,'Mathias','Nora','Ubaldo39@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(22,'Juanita','Johnathan','Leonardo_Schmitt@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(23,'Kaela','Stanton','Ignatius.Frami@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(24,'Cathrine','Alejandra','Jacey83@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(25,'Garland','Mafalda','Travon31@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(26,'Max','Lelia','Winnifred.Wiegand@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(27,'Corbin','Maegan','Tod_Muller69@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(28,'Hailie','Silas','Holly.McCullough75@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(29,'Bryce','Harvey','Mikel_Durgan63@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(30,'Madelynn','Jesus','Hannah96@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(31,'Addie','Karina','Cristal.Gerhold@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(32,'Ephraim','Evalyn','Elton_Sporer13@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(33,'Amiya','Ashly','Marquise.Kunde45@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(34,'Flavie','Halie','Jordon.Oberbrunner@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(35,'Anahi','Hilton','Hyman_King80@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(36,'Granville','Emile','Kameron_Tillman68@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(37,'Rodrigo','Brooks','Jaylin_Sporer60@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(38,'Cory','John','Elisabeth.Lang@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(39,'Brent','Laury','Karine58@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(40,'Felipa','Bernice','Alford_Quitzon@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(41,'Hilda','Justina','Claude.Ward83@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(42,'Jazmyn','Clement','Tiffany.Schumm82@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(43,'Lavada','Terrence','Dortha61@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(44,'Sydni','Santa','Jordan3@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(45,'Hans','Gabriel','Maurine.Lesch@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(46,'Cheyenne','Sandy','Cassandra42@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(47,'Linwood','Kiel','Alexandre_Grant@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(48,'Trycia','Esta','Danielle_Von85@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(49,'Ibrahim','Tiara','Barry_Collier@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(50,'Elwin','Dewayne','Crystal_Goodwin@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(51,'Lola','Amelie','Sarai_Blick52@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(52,'Bessie','Brandon','Nathanael97@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(53,'Jaiden','Winfield','Jacques.Cummerata37@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(54,'Stevie','Jeremie','Jacquelyn22@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(55,'Fleta','Gerry','Moriah.Kling@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(56,'Henderson','Wayne','Jovanny.Farrell@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(57,'Guadalupe','Eileen','Doris.Grant37@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(58,'Emmett','Dominic','Fredy_Feil57@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(59,'Ernie','Holly','Linwood_Osinski@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(60,'Lukas','Delpha','Art_Lebsack@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(61,'Aurelio','Reynold','Clyde.Romaguera91@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(62,'Paris','Johnathan','Joy.Mohr@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(63,'Bernhard','Saige','Nico.Casper@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(64,'Magdalena','Lexie','Keith20@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(65,'Jeremie','Audrey','Shirley_OConnell@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(66,'Margarete','Thurman','Lilly_Reichert37@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(67,'Davion','Oren','Rudolph3@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(68,'Meggie','Cesar','Rosalee.Hegmann@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(69,'Nelle','Santino','Carmella28@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(70,'Magdalen','Stanton','Roy42@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(71,'Max','Malinda','Josefina.Zieme66@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(72,'Kirstin','Camilla','Otha_Schaefer@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(73,'Maxwell','Rosanna','Gustave.Langworth49@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(74,'Ladarius','Maximilian','Ramiro.Stroman@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(75,'Dulce','Eunice','Rhett71@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(76,'Hailey','Robb','Treva_Orn@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(77,'Jerad','Kailey','Wilfred57@gmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(78,'Regan','Jesus','Geraldine_Torp9@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(79,'Ted','Shyanne','Newton_Hintz54@yahoo.com','2023-04-20 05:33:20','2023-04-20 05:33:20'),(80,'Carey','Zoie','Candido.Feeney76@hotmail.com','2023-04-20 05:33:20','2023-04-20 05:33:20');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 19:26:58
