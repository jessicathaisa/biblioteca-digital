-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca_digital
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `FK_USUARIO_ADMIN` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artigo`
--

DROP TABLE IF EXISTS `artigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artigo` (
  `id_artigo` int(11) NOT NULL AUTO_INCREMENT,
  `ds_titulo` varchar(100) NOT NULL,
  `ds_resumo` varchar(1000) NOT NULL,
  `ds_ano` varchar(4) NOT NULL,
  `ds_url` varchar(100) NOT NULL,
  `nu_qtd_citacoes` int(11) DEFAULT '0',
  `nu_qtd_downloads` int(11) DEFAULT '0',
  `id_edicao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_artigo`),
  KEY `FK_EDICAO_idx` (`id_edicao`),
  CONSTRAINT `FK_EDICAO` FOREIGN KEY (`id_edicao`) REFERENCES `edicao` (`id_edicao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigo`
--

LOCK TABLES `artigo` WRITE;
/*!40000 ALTER TABLE `artigo` DISABLE KEYS */;
/*!40000 ALTER TABLE `artigo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artigo_autor`
--

DROP TABLE IF EXISTS `artigo_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artigo_autor` (
  `id_artigo` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  PRIMARY KEY (`id_artigo`,`id_autor`),
  KEY `FK_AUTOR_idx` (`id_autor`),
  CONSTRAINT `FK_AUTOR` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `F_ARTIGO_AUTOR` FOREIGN KEY (`id_artigo`) REFERENCES `artigo` (`id_artigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigo_autor`
--

LOCK TABLES `artigo_autor` WRITE;
/*!40000 ALTER TABLE `artigo_autor` DISABLE KEYS */;
/*!40000 ALTER TABLE `artigo_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artigo_palavra_chave`
--

DROP TABLE IF EXISTS `artigo_palavra_chave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artigo_palavra_chave` (
  `id_artigo` int(11) NOT NULL,
  `id_palavra_chave` int(11) NOT NULL,
  PRIMARY KEY (`id_artigo`,`id_palavra_chave`),
  KEY `FK_PALAVRA_CHAVE_idx` (`id_palavra_chave`),
  CONSTRAINT `FK_ARTIGO_PALAVRA` FOREIGN KEY (`id_artigo`) REFERENCES `artigo` (`id_artigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PALAVRA_CHAVE` FOREIGN KEY (`id_palavra_chave`) REFERENCES `palavra_chave` (`id_palavra_chave`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigo_palavra_chave`
--

LOCK TABLES `artigo_palavra_chave` WRITE;
/*!40000 ALTER TABLE `artigo_palavra_chave` DISABLE KEYS */;
/*!40000 ALTER TABLE `artigo_palavra_chave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nm_autor` varchar(100) NOT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congresso`
--

DROP TABLE IF EXISTS `congresso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congresso` (
  `id_congresso` int(11) NOT NULL,
  `nm_congresso` varchar(45) DEFAULT NULL,
  `ds_area` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_congresso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congresso`
--

LOCK TABLES `congresso` WRITE;
/*!40000 ALTER TABLE `congresso` DISABLE KEYS */;
/*!40000 ALTER TABLE `congresso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edicao`
--

DROP TABLE IF EXISTS `edicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edicao` (
  `id_edicao` int(11) NOT NULL AUTO_INCREMENT,
  `id_congresso` int(11) DEFAULT NULL,
  `nm_edicao` varchar(45) DEFAULT NULL,
  `ds_ano` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id_edicao`),
  KEY `FK_CONGRESSO_idx` (`id_congresso`),
  CONSTRAINT `FK_CONGRESSO` FOREIGN KEY (`id_congresso`) REFERENCES `congresso` (`id_congresso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edicao`
--

LOCK TABLES `edicao` WRITE;
/*!40000 ALTER TABLE `edicao` DISABLE KEYS */;
/*!40000 ALTER TABLE `edicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editor`
--

DROP TABLE IF EXISTS `editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editor` (
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `FK_USUARIO_EDITOR` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor`
--

LOCK TABLES `editor` WRITE;
/*!40000 ALTER TABLE `editor` DISABLE KEYS */;
/*!40000 ALTER TABLE `editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editor_edicao`
--

DROP TABLE IF EXISTS `editor_edicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editor_edicao` (
  `id_editor` int(11) NOT NULL,
  `id_edicao` int(11) NOT NULL,
  PRIMARY KEY (`id_editor`,`id_edicao`),
  KEY `FK_EDITOR_EDICAO_idx` (`id_edicao`),
  CONSTRAINT `FK_EDITOR_EDICAO` FOREIGN KEY (`id_edicao`) REFERENCES `edicao` (`id_edicao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_EDITOR_EDITOR` FOREIGN KEY (`id_editor`) REFERENCES `editor` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor_edicao`
--

LOCK TABLES `editor_edicao` WRITE;
/*!40000 ALTER TABLE `editor_edicao` DISABLE KEYS */;
/*!40000 ALTER TABLE `editor_edicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `palavra_chave`
--

DROP TABLE IF EXISTS `palavra_chave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `palavra_chave` (
  `id_palavra_chave` int(11) NOT NULL AUTO_INCREMENT,
  `ds_palavra_chave` varchar(45) NOT NULL,
  PRIMARY KEY (`id_palavra_chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `palavra_chave`
--

LOCK TABLES `palavra_chave` WRITE;
/*!40000 ALTER TABLE `palavra_chave` DISABLE KEYS */;
/*!40000 ALTER TABLE `palavra_chave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `ds_login` varchar(45) NOT NULL,
  `ds_senha` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `ds_login_UNIQUE` (`ds_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-28 18:18:44
