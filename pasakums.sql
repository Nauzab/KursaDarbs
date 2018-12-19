-- MySQL dump 10.15  Distrib 10.0.36-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pasakums
-- ------------------------------------------------------
-- Server version	10.0.36-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Adrese`
--

DROP TABLE IF EXISTS `Adrese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Adrese` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ValstsID` int(11) DEFAULT NULL,
  `Pilseta` varchar(255) DEFAULT NULL,
  `Adrese` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Adrese`
--

LOCK TABLES `Adrese` WRITE;
/*!40000 ALTER TABLE `Adrese` DISABLE KEYS */;
INSERT INTO `Adrese` VALUES (1,1,'Ventspils','Sporta iela 3/5'),(2,1,'Riga','R. Vāgnera iela 8'),(3,1,'Jelgave','Matea iela 44A'),(4,4,'Vilna','Ozo g. 14'),(5,4,'Klaipeda','Sauliu gatve 36'),(6,4,'Kauna','Karaluaus Mindaugo prospektas 50'),(7,5,'Narva','Aleksandr Puškini tänava allee'),(8,6,'Hamburg','Platz der Deutschen Einheit 1'),(9,6,'Berline','Herbert-von-Karajan-Straße 1'),(10,5,'Tallina','Haabersti linnaosa, Saku Suurhall'),(11,7,'Paris','13 Rue du Perche, 3rd'),(12,7,'Paris','24 boulevard Poissonnière'),(13,1,'Riga','13. janvāra iela 8');
/*!40000 ALTER TABLE `Adrese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `InformacijasSkats`
--

DROP TABLE IF EXISTS `InformacijasSkats`;
/*!50001 DROP VIEW IF EXISTS `InformacijasSkats`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `InformacijasSkats` (
  `valsts` tinyint NOT NULL,
  `pilseta` tinyint NOT NULL,
  `norise` tinyint NOT NULL,
  `Informacijai` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Koncerts`
--

DROP TABLE IF EXISTS `Koncerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Koncerts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PasakumaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Koncerts`
--

LOCK TABLES `Koncerts` WRITE;
/*!40000 ALTER TABLE `Koncerts` DISABLE KEYS */;
INSERT INTO `Koncerts` VALUES (1,8),(2,9),(3,12),(4,13),(5,14);
/*!40000 ALTER TABLE `Koncerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kontakti`
--

DROP TABLE IF EXISTS `Kontakti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kontakti` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LietotajaID` int(11) DEFAULT NULL,
  `AdresesID` int(11) DEFAULT NULL,
  `Epasts` varchar(255) DEFAULT NULL,
  `TelefonaNr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kontakti`
--

LOCK TABLES `Kontakti` WRITE;
/*!40000 ALTER TABLE `Kontakti` DISABLE KEYS */;
INSERT INTO `Kontakti` VALUES (1,1,1,'IlmarsElksnis@gmail.com','37124476821'),(2,2,2,'Jaunzems2@gmail.com','37123746587'),(4,3,4,'EPaulas@gmail.com','37050043782'),(5,3,5,'EPaulas@gmail.com','37050043782'),(6,4,6,'Marty@gmail.com','37051302738'),(7,5,7,'BreckasAndi@gmail.com','37255902738'),(8,5,10,'smiple@session.ee','37255902738'),(9,6,8,'Noolen@gmail.com','491525748574'),(10,6,9,'Noolen@gmail.com','491525748574'),(11,2,3,'Jaunzems2@gmail.com','37123746587'),(12,7,11,'Orchy@gmail.com','331726374822'),(13,8,12,'gasi@gmail.com','331726375585');
/*!40000 ALTER TABLE `Kontakti` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER KontaktiP  BEFORE INSERT ON Kontakti FOR EACH ROW  BEGIN  IF NEW.Epasts ="" OR NEW.Epasts IN ( SELECT k.Epasts FROM Kontakti k WHERE NEW.Epasts = k.Epasts)  THEN SIGNAL SQLSTATE '45000'  SET message_text = 'Epasts jau eksiste'; END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `LietotajaSkats`
--

DROP TABLE IF EXISTS `LietotajaSkats`;
/*!50001 DROP VIEW IF EXISTS `LietotajaSkats`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `LietotajaSkats` (
  `Vards` tinyint NOT NULL,
  `Uzvards` tinyint NOT NULL,
  `Epasts` tinyint NOT NULL,
  `TelefonaNr` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Lietotajs`
--

DROP TABLE IF EXISTS `Lietotajs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lietotajs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Vards` varchar(255) DEFAULT NULL,
  `Uzvards` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lietotajs`
--

LOCK TABLES `Lietotajs` WRITE;
/*!40000 ALTER TABLE `Lietotajs` DISABLE KEYS */;
INSERT INTO `Lietotajs` VALUES (1,'Ilmars',' Elksnis'),(2,'Janis','Jaunzems'),(3,'Endri','Paulas'),(4,'Martynas','Levickas'),(5,'Andi','Breckas'),(6,'Bred','Noolen'),(7,'Paul','Orchei'),(8,'Paul','Maurgasi');
/*!40000 ALTER TABLE `Lietotajs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `PasakumaSkats`
--

DROP TABLE IF EXISTS `PasakumaSkats`;
/*!50001 DROP VIEW IF EXISTS `PasakumaSkats`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PasakumaSkats` (
  `valsts` tinyint NOT NULL,
  `pilseta` tinyint NOT NULL,
  `norise` tinyint NOT NULL,
  `datums` tinyint NOT NULL,
  `laiks` tinyint NOT NULL,
  `ieeja` tinyint NOT NULL,
  `adrese` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Pasakums`
--

DROP TABLE IF EXISTS `Pasakums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pasakums` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LietotajaID` int(11) DEFAULT NULL,
  `ValstsID` int(11) DEFAULT NULL,
  `AdresesID` int(11) DEFAULT NULL,
  `Ieeja` char(50) DEFAULT NULL,
  `Datums` varchar(255) DEFAULT NULL,
  `Laiks` varchar(255) DEFAULT NULL,
  `Norise` varchar(255) DEFAULT NULL,
  `PasakumaTips` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pasakums`
--

LOCK TABLES `Pasakums` WRITE;
/*!40000 ALTER TABLE `Pasakums` DISABLE KEYS */;
INSERT INTO `Pasakums` VALUES (1,2,1,1,'M','08.12.2018','18:00','Basketbols \"Jurmala - BKVentspils\"','S'),(3,1,1,2,'M','15.12.2018','19:00','Teatris \"Reiz Jaungada nakti..\"','TK'),(4,1,1,2,'M','21.12.2018','19:00','Teatris \"Reiz Jaungada nakti..\"','TK'),(5,2,1,3,'M','19.12.2018','18:30','Basketbols BK Jelgava/LLU – BK Carnikava','S'),(6,3,4,4,'M','20.12.2018','18:50','Basketbols \"RYTAS - LIETKABELIS','S'),(8,3,4,5,'M','22.12.2018','17:00',' Martynas Levickis Koncerts','K'),(9,4,4,6,'B','16.02.2019','20:00',' Plácido Domingo Koncerts','K'),(10,5,5,7,'B','15.02.2018','12:00','Labdarības Ziemassvētku skrējiens Narvā ','S'),(11,5,5,10,'M','03.01.2019','15:00','Simple Session 2019 ','S'),(12,6,6,8,'M','03.02.2019','21:00','Tina Turner Koncerts ','K'),(13,6,6,9,'M','27.01.2019','21:00','Tina Turner Koncerts ','K'),(14,7,7,11,'B','12.02.2019','21:00','Free Classical Concert','K'),(15,8,7,12,'M','14.12.2018','19:00','Teatris \"How to Become A Parisian\"','TK'),(16,1,1,13,'M','28.12.2018','18:30','Kino Kults \"Patiesie Meli\"','TK');
/*!40000 ALTER TABLE `Pasakums` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER Datumsp BEFORE INSERT ON Pasakums FOR EACH ROW BEGIN DECLARE msg varchar(255); IF new.datums<date_sub(now(), INTERVAL 1 DAY) THEN SET msg =concat('Kluda - vecs datums ',cast(new.datums as char)); SIGNAL SQLSTATE '45000' SET message_text = msg; END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SportaPasakumi`
--

DROP TABLE IF EXISTS `SportaPasakumi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SportaPasakumi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PasakumaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SportaPasakumi`
--

LOCK TABLES `SportaPasakumi` WRITE;
/*!40000 ALTER TABLE `SportaPasakumi` DISABLE KEYS */;
INSERT INTO `SportaPasakumi` VALUES (2,1),(3,5),(4,6),(5,10),(6,11);
/*!40000 ALTER TABLE `SportaPasakumi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teatris/Kino`
--

DROP TABLE IF EXISTS `Teatris/Kino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teatris/Kino` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PasakumaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teatris/Kino`
--

LOCK TABLES `Teatris/Kino` WRITE;
/*!40000 ALTER TABLE `Teatris/Kino` DISABLE KEYS */;
/*!40000 ALTER TABLE `Teatris/Kino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeatrisKino`
--

DROP TABLE IF EXISTS `TeatrisKino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeatrisKino` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PasakumaID` int(11) DEFAULT NULL,
  `PasakumaTips` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeatrisKino`
--

LOCK TABLES `TeatrisKino` WRITE;
/*!40000 ALTER TABLE `TeatrisKino` DISABLE KEYS */;
INSERT INTO `TeatrisKino` VALUES (1,3,'T'),(2,4,'T'),(3,15,'T'),(4,16,'K');
/*!40000 ALTER TABLE `TeatrisKino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Valstis`
--

DROP TABLE IF EXISTS `Valstis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Valstis` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nosaukums` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Valstis`
--

LOCK TABLES `Valstis` WRITE;
/*!40000 ALTER TABLE `Valstis` DISABLE KEYS */;
INSERT INTO `Valstis` VALUES (1,'Latvija'),(4,'Lietuva'),(5,'Igaunija'),(6,'Vacija'),(7,'Francija');
/*!40000 ALTER TABLE `Valstis` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ValstsP BEFORE INSERT ON Valstis FOR EACH ROW BEGIN IF NEW.Nosaukums="" OR NEW.Nosaukums IN ( SELECT v.Nosaukums FROM Valstis v WHERE( NEW.Nosaukums = v.Nosaukums) ) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Valsts jau atrodas datubaze';
 END IF ;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `InformacijasSkats`
--

/*!50001 DROP TABLE IF EXISTS `InformacijasSkats`*/;
/*!50001 DROP VIEW IF EXISTS `InformacijasSkats`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `InformacijasSkats` AS select `v`.`Nosaukums` AS `valsts`,`a`.`Pilseta` AS `pilseta`,`p`.`Norise` AS `norise`,`k`.`Epasts` AS `Informacijai` from (((`Valstis` `v` join `Pasakums` `p` on((`v`.`ID` = `p`.`ValstsID`))) join `Adrese` `a` on((`p`.`AdresesID` = `a`.`ID`))) join `Kontakti` `k` on((`k`.`AdresesID` = `a`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `LietotajaSkats`
--

/*!50001 DROP TABLE IF EXISTS `LietotajaSkats`*/;
/*!50001 DROP VIEW IF EXISTS `LietotajaSkats`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `LietotajaSkats` AS select distinct `l`.`Vards` AS `Vards`,`l`.`Uzvards` AS `Uzvards`,`k`.`Epasts` AS `Epasts`,`k`.`TelefonaNr` AS `TelefonaNr` from (`Lietotajs` `l` join `Kontakti` `k`) where (`l`.`ID` = `k`.`LietotajaID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PasakumaSkats`
--

/*!50001 DROP TABLE IF EXISTS `PasakumaSkats`*/;
/*!50001 DROP VIEW IF EXISTS `PasakumaSkats`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `PasakumaSkats` AS select `v`.`Nosaukums` AS `valsts`,`a`.`Pilseta` AS `pilseta`,`p`.`Norise` AS `norise`,`p`.`Datums` AS `datums`,`p`.`Laiks` AS `laiks`,`p`.`Ieeja` AS `ieeja`,`a`.`Adrese` AS `adrese` from ((`Pasakums` `p` join `Valstis` `v` on((`p`.`ValstsID` = `v`.`ID`))) join `Adrese` `a` on((`p`.`AdresesID` = `a`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-19 18:47:59
