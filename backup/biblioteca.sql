-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editoriales` (
  `id_editorial` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre_editorial` varchar(150) NOT NULL,
  `domicilio_editorial` varchar(150) NOT NULL,
  PRIMARY KEY (`id_editorial`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES (001,'alfa-omega','Madrid'),(002,'ilumina','Barcelona'),(003,'planeta','Barcelona'),(004,'Seix Barral','Madrid'),(005,'santillana','Madrid');
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros` (
  `id_libro` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre_libro` varchar(99) NOT NULL,
  `nombre_autor` varchar(99) DEFAULT NULL,
  `apellidos_autor` varchar(99) DEFAULT NULL,
  `genero` varchar(99) NOT NULL,
  `id_editorial` int(3) unsigned zerofill NOT NULL,
  `precio` float(6,2) unsigned zerofill DEFAULT NULL,
  `cantidad` int(3) unsigned zerofill NOT NULL DEFAULT '000',
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (0000000001,'Señor de los Anillos','JR','Tolkien','fantasía',001,010.50,003),(0000000002,'Dune','Frank','Herbert','Ciencia Ficción',002,005.00,004),(0000000003,'Naranja Mecanica','Anthony','Burgess','Ciencia Ficción',001,006.50,001),(0000000004,'Matilda','Roald','Dahl','Infantil',004,010.50,004),(0000000005,'Charlie y la Fabrica de Chocolates','Roald','Dahl','fantasía',003,013.50,004),(0000000006,'Pedro Paramo','Juan ','Rulfo','social',004,050.20,001),(0000000007,'Doña Barbara','Romulo','Gallegos','social',002,140.00,001),(0000000008,'Don Quijote','Miguel','de Cervantes','misterio',005,045.35,002),(0000000009,'Cien años de soledad','Gabriel','Garcia Marquez','misterio',002,027.34,003),(0000000010,'La Regenta','Leopoldo','Alas Clarín','social',005,004.20,003),(0000000011,'Extranjero','Marcel','Camus','novela',002,005.20,003);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-15 11:24:15
