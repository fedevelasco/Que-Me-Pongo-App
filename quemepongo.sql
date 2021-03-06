-- MySQL dump 10.13  Distrib 5.6.45, for Win64 (x86_64)
--
-- Host: localhost    Database: quemepongo
-- ------------------------------------------------------
-- Server version	5.6.45-log

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
-- Table structure for table `atuendo`
--

DROP TABLE IF EXISTS `atuendo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atuendo` (
  `atuendo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `atuendo_aceptado` bit(1) DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`atuendo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atuendo`
--

LOCK TABLES `atuendo` WRITE;
/*!40000 ALTER TABLE `atuendo` DISABLE KEYS */;
/*!40000 ALTER TABLE `atuendo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atuendo_prenda`
--

DROP TABLE IF EXISTS `atuendo_prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atuendo_prenda` (
  `ATUENDO_atuendo_id` bigint(20) NOT NULL,
  `prendas_prenda_id` bigint(20) NOT NULL,
  KEY `FK_2yw27vpj0p3uxluv5dxmy5wlw` (`prendas_prenda_id`),
  KEY `FK_16uie54a1fl7pixwyyxnucyn1` (`ATUENDO_atuendo_id`),
  CONSTRAINT `FK_16uie54a1fl7pixwyyxnucyn1` FOREIGN KEY (`ATUENDO_atuendo_id`) REFERENCES `atuendo` (`atuendo_id`),
  CONSTRAINT `FK_2yw27vpj0p3uxluv5dxmy5wlw` FOREIGN KEY (`prendas_prenda_id`) REFERENCES `prenda` (`prenda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atuendo_prenda`
--

LOCK TABLES `atuendo_prenda` WRITE;
/*!40000 ALTER TABLE `atuendo_prenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `atuendo_prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `evento_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `evento_dias_repet` int(11) DEFAULT NULL,
  `evento_fecha` tinyblob,
  `evento_lugar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardarropa`
--

DROP TABLE IF EXISTS `guardarropa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardarropa` (
  `guardarropa_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guardarropa_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guardarropa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardarropa`
--

LOCK TABLES `guardarropa` WRITE;
/*!40000 ALTER TABLE `guardarropa` DISABLE KEYS */;
INSERT INTO `guardarropa` VALUES (1,'GuardarropaTestEntrega4'),(2,'GuardarropaTestEntrega4');
/*!40000 ALTER TABLE `guardarropa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardarropa_prenda`
--

DROP TABLE IF EXISTS `guardarropa_prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardarropa_prenda` (
  `GUARDARROPA_guardarropa_id` bigint(20) NOT NULL,
  `prendas_prenda_id` bigint(20) NOT NULL,
  PRIMARY KEY (`GUARDARROPA_guardarropa_id`,`prendas_prenda_id`),
  UNIQUE KEY `UK_fdnwyrbm1krwa4gwcdtswemiv` (`prendas_prenda_id`),
  CONSTRAINT `FK_ax7bspw7mjtu31xhjigmrv1e1` FOREIGN KEY (`GUARDARROPA_guardarropa_id`) REFERENCES `guardarropa` (`guardarropa_id`),
  CONSTRAINT `FK_fdnwyrbm1krwa4gwcdtswemiv` FOREIGN KEY (`prendas_prenda_id`) REFERENCES `prenda` (`prenda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardarropa_prenda`
--

LOCK TABLES `guardarropa_prenda` WRITE;
/*!40000 ALTER TABLE `guardarropa_prenda` DISABLE KEYS */;
INSERT INTO `guardarropa_prenda` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28);
/*!40000 ALTER TABLE `guardarropa_prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prenda`
--

DROP TABLE IF EXISTS `prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prenda` (
  `prenda_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prenda_categoria` varchar(255) DEFAULT NULL,
  `prenda_color_prim` varchar(255) DEFAULT NULL,
  `prenda_color_sec` varchar(255) DEFAULT NULL,
  `prenda_descripcion` varchar(255) DEFAULT NULL,
  `prenda_esta_en_guard` bit(1) DEFAULT NULL,
  `prenda_utiliza_atuendo` bit(1) DEFAULT NULL,
  `tela_tela_id` bigint(20) DEFAULT NULL,
  `tipoDePrenda_tipo_prenda_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`prenda_id`),
  KEY `FK_gtb1sc0l95uatc625wrvbfq7u` (`tela_tela_id`),
  KEY `FK_3g2diqyqi5cx53n7k0l8s5x1v` (`tipoDePrenda_tipo_prenda_id`),
  CONSTRAINT `FK_3g2diqyqi5cx53n7k0l8s5x1v` FOREIGN KEY (`tipoDePrenda_tipo_prenda_id`) REFERENCES `tipo_prenda` (`tipo_prenda_id`),
  CONSTRAINT `FK_gtb1sc0l95uatc625wrvbfq7u` FOREIGN KEY (`tela_tela_id`) REFERENCES `tela` (`tela_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenda`
--

LOCK TABLES `prenda` WRITE;
/*!40000 ALTER TABLE `prenda` DISABLE KEYS */;
INSERT INTO `prenda` VALUES (1,'Calzado','Negro','Blanco','pantufla','','\0',1,1),(2,'ParteSuperior','Negro','Blanco','sweater','','\0',2,2),(3,'Calzado','Negro','Rojo','zapatilla','','\0',1,3),(4,'Accesorio','Rojo','Blanco','pulsera','','\0',1,4),(5,'Accesorio','Blanco','Marron','reloj','','\0',1,4),(6,'ParteSuperior','Negro','Rojo','camperon','','\0',1,5),(7,'ParteSuperior','Amarillo','Blanco','buzo','','\0',2,2),(8,'ParteInferior','Azul','Blanco','joggin','','\0',1,6),(9,'ParteInferior','Negro','Blanco','pantalon','','\0',1,6),(10,'ParteSuperior','Blanco','Rojo','campera','','\0',1,5),(11,'Accesorio','Blanco','Marron','gorro','','\0',2,7),(12,'ParteSuperior','Negro','Rojo','camisa','','\0',2,8),(13,'ParteSuperior','Negro','Rojo','musculosa','','\0',2,9),(14,'ParteSuperior','Negro','Rojo','remera','','\0',2,9),(15,'ParteInferior','Negro','Blanco','pantalon','','\0',3,10),(16,'ParteSuperior','Negro','Rojo','remera','','\0',4,11),(17,'ParteSuperior','Negro','Rojo','camperon','','\0',3,12),(18,'ParteInferior','Azul','Blanco','joggin','','\0',3,10),(19,'ParteSuperior','Negro','Rojo','camisa','','\0',4,13),(20,'ParteSuperior','Blanco','Rojo','campera','','\0',3,12),(21,'ParteSuperior','Negro','Rojo','musculosa','','\0',4,11),(22,'Calzado','Negro','Rojo','zapatilla','','\0',3,14),(23,'Accesorio','Rojo','Blanco','pulsera','','\0',3,15),(24,'ParteSuperior','Amarillo','Blanco','buzo','','\0',4,16),(25,'Accesorio','Blanco','Marron','gorro','','\0',4,17),(26,'Calzado','Negro','Blanco','pantufla','','\0',3,18),(27,'Accesorio','Blanco','Marron','reloj','','\0',3,15),(28,'ParteSuperior','Negro','Blanco','sweater','','\0',4,16);
/*!40000 ALTER TABLE `prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prendasincompatibles`
--

DROP TABLE IF EXISTS `prendasincompatibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prendasincompatibles` (
  `tela_id` bigint(20) NOT NULL,
  `prendasIncompatibles` varchar(255) DEFAULT NULL,
  KEY `FK_q5sgexgfaiymq74jkx7kgdvq` (`tela_id`),
  CONSTRAINT `FK_q5sgexgfaiymq74jkx7kgdvq` FOREIGN KEY (`tela_id`) REFERENCES `tela` (`tela_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prendasincompatibles`
--

LOCK TABLES `prendasincompatibles` WRITE;
/*!40000 ALTER TABLE `prendasincompatibles` DISABLE KEYS */;
INSERT INTO `prendasincompatibles` VALUES (1,'remera'),(1,'camisa'),(1,'gorro'),(1,'guantes'),(2,'reloj'),(2,'pantalon'),(3,'remera'),(3,'camisa'),(3,'gorro'),(3,'guantes'),(4,'reloj'),(4,'pantalon');
/*!40000 ALTER TABLE `prendasincompatibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tela`
--

DROP TABLE IF EXISTS `tela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tela` (
  `tela_tipo` varchar(31) NOT NULL,
  `tela_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tela_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tela`
--

LOCK TABLES `tela` WRITE;
/*!40000 ALTER TABLE `tela` DISABLE KEYS */;
INSERT INTO `tela` VALUES ('cuero',1,'Cuero'),('algodon',2,'Algodon'),('cuero',3,'Cuero'),('algodon',4,'Algodon');
/*!40000 ALTER TABLE `tela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_prenda`
--

DROP TABLE IF EXISTS `tipo_prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_prenda` (
  `prenda_tipo` varchar(31) NOT NULL,
  `tipo_prenda_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo_prenda_capa` int(11) DEFAULT NULL,
  `tipo_prenda_nivel` int(11) DEFAULT NULL,
  `tipo_prenda_parte` varchar(255) DEFAULT NULL,
  `tipo_prenda_su_tipo` varchar(255) DEFAULT NULL,
  `nivelDeAbrigo` int(11) DEFAULT NULL,
  `suTipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tipo_prenda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_prenda`
--

LOCK TABLES `tipo_prenda` WRITE;
/*!40000 ALTER TABLE `tipo_prenda` DISABLE KEYS */;
INSERT INTO `tipo_prenda` VALUES ('pantufla',1,1,2,NULL,'pantufla',NULL,NULL),('sweater',2,2,6,NULL,'sweater',NULL,NULL),('zapatilla',3,1,3,NULL,'zapatilla',NULL,NULL),('reloj',4,1,0,'Ninguna','reloj',NULL,NULL),('campera',5,3,10,NULL,'campera',NULL,NULL),('pantalon',6,1,5,NULL,'pantalon',5,'pantalon'),('gorro',7,1,3,'Cabeza','gorro',NULL,NULL),('camisa',8,2,4,NULL,'camisa',NULL,NULL),('remera',9,1,5,NULL,'remera',NULL,NULL),('pantalon',10,1,5,NULL,'pantalon',5,'pantalon'),('remera',11,1,5,NULL,'remera',NULL,NULL),('campera',12,3,10,NULL,'campera',NULL,NULL),('camisa',13,2,4,NULL,'camisa',NULL,NULL),('zapatilla',14,1,3,NULL,'zapatilla',NULL,NULL),('reloj',15,1,0,'Ninguna','reloj',NULL,NULL),('sweater',16,2,6,NULL,'sweater',NULL,NULL),('gorro',17,1,3,'Cabeza','gorro',NULL,NULL),('pantufla',18,1,2,NULL,'pantufla',NULL,NULL);
/*!40000 ALTER TABLE `tipo_prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_sensibilidad`
--

DROP TABLE IF EXISTS `tipo_sensibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_sensibilidad` (
  `tipo` varchar(31) NOT NULL,
  `tipo_sensibilidad_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo_sensibilidad_cuerpo` varchar(255) DEFAULT NULL,
  `tipo_sensibilidad_valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`tipo_sensibilidad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_sensibilidad`
--

LOCK TABLES `tipo_sensibilidad` WRITE;
/*!40000 ALTER TABLE `tipo_sensibilidad` DISABLE KEYS */;
INSERT INTO `tipo_sensibilidad` VALUES ('caluroso',1,'Ninguna',-7),('caluroso',2,'Ninguna',-7);
/*!40000 ALTER TABLE `tipo_sensibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `tipo` varchar(31) NOT NULL,
  `tipo_usu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cant_maxima` int(11) DEFAULT NULL,
  PRIMARY KEY (`tipo_usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES ('premium',1,NULL),('premium',2,NULL);
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `usuario_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_nombre` varchar(255) DEFAULT NULL,
  `usuario_password` varchar(255) DEFAULT NULL,
  `usuario_user` varchar(255) DEFAULT NULL,
  `sensibilidad_tipo_sensibilidad_id` bigint(20) DEFAULT NULL,
  `tipoUsuario_tipo_usu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `FK_om4meo69ceyorhggxhl8r3kd8` (`sensibilidad_tipo_sensibilidad_id`),
  KEY `FK_b5lhh31sihgwl4gq6t34mygl8` (`tipoUsuario_tipo_usu_id`),
  CONSTRAINT `FK_b5lhh31sihgwl4gq6t34mygl8` FOREIGN KEY (`tipoUsuario_tipo_usu_id`) REFERENCES `tipo_usuario` (`tipo_usu_id`),
  CONSTRAINT `FK_om4meo69ceyorhggxhl8r3kd8` FOREIGN KEY (`sensibilidad_tipo_sensibilidad_id`) REFERENCES `tipo_sensibilidad` (`tipo_sensibilidad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'juan','1234','juan1234',1,1),(2,'juan','1234','juan1234',2,2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_atuendo`
--

DROP TABLE IF EXISTS `usuario_atuendo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_atuendo` (
  `USUARIO_usuario_id` bigint(20) NOT NULL,
  `atuendos_atuendo_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_rnblld22y9dptv5ut31e8n1gr` (`atuendos_atuendo_id`),
  KEY `FK_13ikxy2va3ignwj89trseo8fk` (`USUARIO_usuario_id`),
  CONSTRAINT `FK_13ikxy2va3ignwj89trseo8fk` FOREIGN KEY (`USUARIO_usuario_id`) REFERENCES `usuario` (`usuario_id`),
  CONSTRAINT `FK_rnblld22y9dptv5ut31e8n1gr` FOREIGN KEY (`atuendos_atuendo_id`) REFERENCES `atuendo` (`atuendo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_atuendo`
--

LOCK TABLES `usuario_atuendo` WRITE;
/*!40000 ALTER TABLE `usuario_atuendo` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_atuendo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_evento`
--

DROP TABLE IF EXISTS `usuario_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_evento` (
  `USUARIO_usuario_id` bigint(20) NOT NULL,
  `eventos_evento_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_5qvq3plav6qvm1do2cdjg27tq` (`eventos_evento_id`),
  KEY `FK_mwerdcp680gx8huefq1lo34t8` (`USUARIO_usuario_id`),
  CONSTRAINT `FK_5qvq3plav6qvm1do2cdjg27tq` FOREIGN KEY (`eventos_evento_id`) REFERENCES `evento` (`evento_id`),
  CONSTRAINT `FK_mwerdcp680gx8huefq1lo34t8` FOREIGN KEY (`USUARIO_usuario_id`) REFERENCES `usuario` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_evento`
--

LOCK TABLES `usuario_evento` WRITE;
/*!40000 ALTER TABLE `usuario_evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_guardarropa`
--

DROP TABLE IF EXISTS `usuario_guardarropa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_guardarropa` (
  `USUARIO_usuario_id` bigint(20) NOT NULL,
  `guardarropas_guardarropa_id` bigint(20) NOT NULL,
  KEY `FK_cu1ogt3e5k3u6obw21txt7ren` (`guardarropas_guardarropa_id`),
  KEY `FK_87agh96ckep97qpns701tfi9s` (`USUARIO_usuario_id`),
  CONSTRAINT `FK_87agh96ckep97qpns701tfi9s` FOREIGN KEY (`USUARIO_usuario_id`) REFERENCES `usuario` (`usuario_id`),
  CONSTRAINT `FK_cu1ogt3e5k3u6obw21txt7ren` FOREIGN KEY (`guardarropas_guardarropa_id`) REFERENCES `guardarropa` (`guardarropa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_guardarropa`
--

LOCK TABLES `usuario_guardarropa` WRITE;
/*!40000 ALTER TABLE `usuario_guardarropa` DISABLE KEYS */;
INSERT INTO `usuario_guardarropa` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `usuario_guardarropa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-24 22:36:28
