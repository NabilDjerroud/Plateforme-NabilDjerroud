-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: plateforme
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `id_forum` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `article` text NOT NULL,
  `date_` date NOT NULL,
  `user_id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id_forum`),
  KEY `fk_user_id_utilisateur` (`user_id_utilisateur`),
  CONSTRAINT `fk_user_id_utilisateur` FOREIGN KEY (`user_id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (42,'Les attentes et la pression élevées sont un privilège pour les Alouettes','Un peu plus d’une semaine après être devenus les rois de la Ligue canadienne de football (LCF), les Alouettes de Montréal savent très bien que les attentes à l’égard de l’équipe et la pression seront plus élevées en 2024.\r\n\r\nAvec un grand pouvoir viennent de grandes responsabilités, et le directeur général Danny Maciocia y voit là un privilège.\r\n\r\nAssis à quelques pieds de la coupe Grey, symbole de la victoire de 28-24 acquise aux dépens des Blue Bombers de Winnipeg dans le match de championnat de la LCF le 19 novembre, Maciocia a admis, lors du bilan de la direction des Alouettes, mercredi, que son plan d’avenir avait été quelque peu bousculé. Il n’échangerait toutefois pas sa place pour celle d’une des huit autres formations de la LCF.','2023-12-04',9),(43,'Ligue 1 : malgré les nouveaux déboires de Donnarumma, le PSG s’en remet à Mbappé pour s’imposer au H','Réduit à dix après l’expulsion de son gardien italien, le Paris Saint-Germain a battu Le Havre (2-0), dimanche, et augmente son avance sur Nice, défait pour la première fois de la saison, samedi.','2023-12-02',10),(44,'Euro 2024 : les Bleus héritent d’un groupe abordable lors du tirage au sort','L’équipe de France de football affrontera les Pays-Bas, l’Autriche et une équipe issue des barrages lors de la compétition continentale, en Allemagne, du 14 juin au 14 juillet.','2023-12-01',10),(46,'Article Modifié maintenant','Je viens de modifier l\'article','2023-12-05',9);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_utilisateur`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'Nabil Djerroud','nabil@bilou.dz','$2y$10$pP/VUgk537FtQ','1993-07-05'),(2,'Malek Cheour','malek@cheour.tn','$2y$10$Jwy5txFMtJwW8','1996-08-16'),(3,'Clara','clara@clara.ca','$2y$10$nYSW/ugMK4/9N','1993-07-05'),(4,'Nabil Bilou','nouveladresse@bilou.dz','$2y$10$Y17HsrjpGcMSOsAiKEbM7ewRbaTQtjhHFN7AlpdEj2ViuKby0xciy','1992-07-05'),(5,'peter','peter@peter.ca','$2y$10$6GxkzRHUz5.e1/FA9lGSi.I1xNx.2Q6wnwDPpaFWYI3T04zH8AstW','1895-05-20'),(6,'Nabil','nabil@nabil.dz','$2y$10$9wxvzf8uRYKws3pBic/Y9OCFf/ac5fCIdqXCVkQ018yyCEfAPbCAy','1993-07-05'),(7,'test','test@test.test','$2y$10$oABAp1uWR4v5Oge0tH3i..74a7vGJncrDk321.gizctgh0aSok4Ka','2011-11-11'),(8,'test2','test2@test.test','$2y$10$Gm/7mtGKp6MTjPa00Bjvzucah3NRsXjPbP7m2wn5X0LkkdTadTc/y','2011-11-11'),(9,'Bilou','bilou@bilou.com','$2y$10$dr8Oe5mqK3IPPPMffHkmxuUE2VUpZycYikLJOludBJoYZz/dydqpW','1993-07-05'),(10,'Malha','malha@test.com','$2y$10$2bZEtOFqlKYFGn53UNZ85ejHpcdlvCCA9J.GM9jHLhLf13KxgHedy','1992-11-12');
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 21:05:13
