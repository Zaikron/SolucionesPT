-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: soluciones_pt
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `codigo`
--

DROP TABLE IF EXISTS `codigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigo` (
  `id_codigo_pk` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cod` varchar(20) NOT NULL,
  PRIMARY KEY (`id_codigo_pk`),
  UNIQUE KEY `id_codigo_pk` (`id_codigo_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigo`
--

LOCK TABLES `codigo` WRITE;
/*!40000 ALTER TABLE `codigo` DISABLE KEYS */;
INSERT INTO `codigo` VALUES (1,'2343852904194');
/*!40000 ALTER TABLE `codigo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identificador_equipo`
--

DROP TABLE IF EXISTS `identificador_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identificador_equipo` (
  `ide_pk` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_equipo` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`ide_pk`),
  UNIQUE KEY `ide_pk` (`ide_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identificador_equipo`
--

LOCK TABLES `identificador_equipo` WRITE;
/*!40000 ALTER TABLE `identificador_equipo` DISABLE KEYS */;
INSERT INTO `identificador_equipo` VALUES (1,'PC1','12345PASS');
/*!40000 ALTER TABLE `identificador_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identificador_soluciones`
--

DROP TABLE IF EXISTS `identificador_soluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identificador_soluciones` (
  `id_is_pk` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_equipo_fk` bigint unsigned DEFAULT NULL,
  `cantidad` int NOT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `id_solucion_fk` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_is_pk`),
  UNIQUE KEY `id_is_pk` (`id_is_pk`),
  KEY `id_solucion_fk` (`id_solucion_fk`),
  KEY `id_equipo_fk` (`id_equipo_fk`),
  CONSTRAINT `identificador_soluciones_ibfk_1` FOREIGN KEY (`id_solucion_fk`) REFERENCES `solucion` (`id_solucion_pk`),
  CONSTRAINT `identificador_soluciones_ibfk_2` FOREIGN KEY (`id_equipo_fk`) REFERENCES `identificador_equipo` (`ide_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identificador_soluciones`
--

LOCK TABLES `identificador_soluciones` WRITE;
/*!40000 ALTER TABLE `identificador_soluciones` DISABLE KEYS */;
INSERT INTO `identificador_soluciones` VALUES (1,1,12,'2343852904194',1),(2,1,7,'9528490129581',2);
/*!40000 ALTER TABLE `identificador_soluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solucion`
--

DROP TABLE IF EXISTS `solucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solucion` (
  `id_solucion_pk` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `metodologia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_solucion_pk`),
  UNIQUE KEY `id_solucion_pk` (`id_solucion_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solucion`
--

LOCK TABLES `solucion` WRITE;
/*!40000 ALTER TABLE `solucion` DISABLE KEYS */;
INSERT INTO `solucion` VALUES (1,'Solucion 1','Rojo','JFK3KD3KN'),(2,'Solucion 2','Verde','KCWS34P21');
/*!40000 ALTER TABLE `solucion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-24 13:47:09
