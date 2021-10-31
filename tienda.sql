CREATE DATABASE  IF NOT EXISTS `tienda` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tienda
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `idarticulo` int NOT NULL,
  `idcategoria` int NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `estado` bit(1) DEFAULT (1),
  PRIMARY KEY (`idarticulo`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `idcategoria` (`idcategoria`),
  CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `precio_venta`, `stock`, `descripcion`, `estado`) VALUES (1,1,'ID-01','Bota Confort',699.00,4,'Bota Confort Negra',_binary ''),(2,1,'ID-02','Tenis Casual',499.00,15,'Tenis Casual Adidas Rosa o Gris',_binary ''),(3,1,'ID-03','Confort Choclo',619.00,7,'Zapato Confort Choclo/Negro',_binary ''),(4,1,'ID-04','Confort Bota',399.00,7,'Bota Confort Negro',_binary ''),(5,1,'ID-05','Choclo Slash',299.00,10,'Zapato Choclo Slash',_binary ''),(6,1,'ID-06','Kit Fashion',399.00,10,'Zapato Kit Fashion Blanco',_binary ''),(7,1,'ID-07','Tenis Urbano',399.00,12,'Tenis Urbano Negro',_binary ''),(8,1,'ID-08','Kit Slash',589.00,9,'Zapatilla kit Slash Roja o Marron',_binary ''),(9,1,'ID-09','Confort slosh',399.00,2,'Confort slosh Amarillo',_binary ''),(10,1,'ID-10','kit Bota',449.00,1,'kit Bota Negro o Cafe',_binary ''),(11,1,'ID-11','Zapatilla Paris',799.00,25,'Zapatilla Paris Marron',_binary ''),(12,1,'ID-12','Heavy Bota',999.00,4,'Heavy Bota',_binary ''),(13,1,'ID-13','Heavy Goodyear',399.00,6,'Bota Heavy Goodyear Cafe Roble',_binary ''),(14,1,'ID-14','Heavy Keebo',389.00,15,'Bota Heavy Keebo Marron',_binary ''),(15,1,'ID-15','Tenis Nike',500.00,40,'Tenis Nike Blanco para correr',_binary ''),(16,2,'ID-16','Pants Casual',299.00,15,'Pants Casuales Rosas',_binary ''),(17,2,'ID-17','Pants azul',229.00,17,'Pants Casuales Azul',_binary ''),(18,2,'ID-18','Chamarra cuadros',499.00,12,'Chamarra con cuadros rojos y negros',_binary ''),(19,2,'ID-19','Abrigo beige',399.00,9,'Abrigo beige elegante',_binary ''),(20,2,'ID-20','Abrigo gris',399.00,11,'Abrigo gris elegante con capucha',_binary ''),(21,2,'ID-21','Abrigo negro',399.00,23,'Abrigo Negro elegante',_binary ''),(22,2,'ID-22','Conjunto deportivo',399.00,30,'Conjunto deportivo Azul',_binary ''),(23,2,'ID-23','Playera casual',199.00,6,'Playera casual para niña Rosa',_binary ''),(24,2,'ID-24','Chamarra negra',849.00,4,'Chamarra Casual Negra',_binary ''),(25,2,'ID-25','Sudadera Nike',799.00,1,'Sudadera Nike Negra casual',_binary ''),(26,2,'ID-26','Playera Nike',349.00,7,'Playera Nike casual Rosa',_binary ''),(27,2,'ID-27','Casual Nike',449.00,3,'Camisa para dama casual Nike Blanca',_binary ''),(28,2,'ID-28','Playera Puma',199.00,29,'Playera casual Puma Blanca',_binary ''),(29,2,'ID-29','Top casual',99.00,5,'Top casual blanco',_binary ''),(30,2,'ID-30','Top amarillo',99.00,15,'Top casual amarillo',_binary ''),(31,3,'ID-31','Mochila Puma',479.00,6,'Mochila Puma Negra con franja roja',_binary ''),(32,3,'ID-32','Cangurera Puma',299.00,4,'Cangurera Puma Rosa',_binary ''),(33,3,'ID-3','Morral Adidas',399.00,6,'Morral Adidas negro',_binary ''),(34,3,'ID-34','Gorra Lotto',149.00,5,'gorra Lotto Blanca',_binary ''),(35,3,'ID-35','Gorra Under Armor',249.00,1,'Gorra Under Armor Negra',_binary ''),(36,3,'ID-36','Mochila Puma Rosa',599.00,8,'Mochila Puma casual Rosa ',_binary ''),(37,3,'ID-37','Mochila Puma Azul',599.00,9,'Mochila Puma Azul',_binary ''),(38,3,'ID-38','Cangurera Converse',289.00,17,'Cangurera Converse Rosa',_binary ''),(39,3,'ID-39','Gorra Converse',399.00,19,'Gorra Converse',_binary ''),(40,3,'ID-40','Gorra K-Swiss',499.00,1,'Gorra K-Swiss Negra',_binary '');
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idcategoria` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `estado` bit(1) DEFAULT (1),
  PRIMARY KEY (`idcategoria`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `estado`) VALUES (1,'Zapatos','Zapatos de distintas marcas',_binary ''),(2,'Ropa','Ropa de distintas marcas',_binary ''),(3,'Accesorios','Accesorios de distintas marcas',_binary '');
UNLOCK TABLES;

--
-- Table structure for table `detalle_ingreso`
--

DROP TABLE IF EXISTS `detalle_ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_ingreso` (
  `iddetalle_ingreso` int NOT NULL,
  `idingreso` int NOT NULL,
  `idarticulo` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  PRIMARY KEY (`iddetalle_ingreso`),
  KEY `idingreso` (`idingreso`),
  KEY `idarticulo` (`idarticulo`),
  CONSTRAINT `detalle_ingreso_ibfk_1` FOREIGN KEY (`idingreso`) REFERENCES `ingreso` (`idingreso`) ON DELETE CASCADE,
  CONSTRAINT `detalle_ingreso_ibfk_2` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ingreso`
--

LOCK TABLES `detalle_ingreso` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int NOT NULL,
  `idventa` int NOT NULL,
  `idarticulo` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL,
  PRIMARY KEY (`iddetalle_venta`),
  KEY `idventa` (`idventa`),
  KEY `idarticulo` (`idarticulo`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE CASCADE,
  CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `ingreso`
--

DROP TABLE IF EXISTS `ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingreso` (
  `idingreso` int NOT NULL,
  `idproveedor` int NOT NULL,
  `idusuario` int NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`idingreso`),
  KEY `idproveedor` (`idproveedor`),
  KEY `idusuario` (`idusuario`),
  CONSTRAINT `ingreso_ibfk_1` FOREIGN KEY (`idproveedor`) REFERENCES `persona` (`idpersona`),
  CONSTRAINT `ingreso_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso`
--

LOCK TABLES `ingreso` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idpersona` int NOT NULL,
  `tipo_persona` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `num_documento` varchar(20) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idrol` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` bit(1) DEFAULT (1),
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
INSERT INTO `rol` (`idrol`, `nombre`, `descripcion`, `estado`) VALUES (1,'Administrador','Administrador de base de datos',_binary '');
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL,
  `idrol` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `num_documento` varchar(20) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varbinary(12) NOT NULL,
  `estado` bit(1) DEFAULT (1),
  PRIMARY KEY (`idusuario`),
  KEY `idrol` (`idrol`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
INSERT INTO `usuario` (`idusuario`, `idrol`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `passwd`, `estado`) VALUES (0,1,'Angel Ortiz Ruiz','Recibo','1','Av San juan Tlaxcala, Mexico','5549361523','angel@gmail.com',_binary '1234',_binary '');
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `idventa` int NOT NULL,
  `idcliente` int NOT NULL,
  `idusuario` int NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`idventa`),
  KEY `idcliente` (`idcliente`),
  KEY `idusuario` (`idusuario`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `persona` (`idpersona`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
UNLOCK TABLES;

--
-- Dumping events for database 'tienda'
--

--
-- Dumping routines for database 'tienda'
--

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
