-- MySQL dump 10.13  Distrib 5.1.63, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: wtrans
-- ------------------------------------------------------
-- Server version	5.1.63-0ubuntu0.11.04.1

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
-- Current Database: `wtrans`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `wtrans` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `wtrans`;

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
-- Table structure for table `conferences`
--

DROP TABLE IF EXISTS `conferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conferences` (
  `name_conference` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `editor` varchar(150) NOT NULL DEFAULT '',
  `ISBN` varchar(100) NOT NULL DEFAULT '',
  `month` varchar(100) NOT NULL DEFAULT '',
  `days` varchar(100) NOT NULL DEFAULT '',
  `year` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conferences`
--

LOCK TABLES `conferences` WRITE;
/*!40000 ALTER TABLE `conferences` DISABLE KEYS */;
INSERT INTO `conferences` VALUES ('WTRANS13','wtrans.inf.puc-rio.br/wtrans13','André Luiz de Castro Leal, Marília Guterres Ferreira, Julio Cesar Sampaio do Prado Leite','ISSN: 2178-6097','Setembro','29','2013','Brasília','Brasil',1),('WTRANS14','wtrans.inf.puc-rio.br/wtrans14','Julio Cesar Sampaio do Prado Leite, Eduardo Kinder Almentero','','Maio','28','2014','Londrina','2014',2);
/*!40000 ALTER TABLE `conferences` ENABLE KEYS */;
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
-- Table structure for table `papers`
--

DROP TABLE IF EXISTS `papers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_title` varchar(255) NOT NULL DEFAULT '',
  `file_name` varchar(100) NOT NULL DEFAULT '',
  `key_words` varchar(200) DEFAULT '',
  `language` varchar(100) DEFAULT '',
  `author` varchar(100) NOT NULL DEFAULT '',
  `add_author` varchar(200) DEFAULT '',
  `abstract` text CHARACTER SET utf8,
  `paper_session` varchar(100) DEFAULT '',
  `page` varchar(100) DEFAULT '',
  `name_conference` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=latin1 COMMENT='Papers on WER proceedings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papers`
--

LOCK TABLES `papers` WRITE;
/*!40000 ALTER TABLE `papers` DISABLE KEYS */;
INSERT INTO `papers` VALUES (1,'Prefácio Português','PREFACIOportugues.pdf','transparência, processo, software, informação','pt','André Luiz de Castro Leal','Marília Guterres Ferreira, Julio Cesar Sampaio do Prado Leite','Recentes movimentos sociais registram uma forte tendência na necessidade de considerar \r\nexplicitamente  a  informação  aberta  em  sistemas  que  são  de  interesse  do  cidadão.  Essa \r\nabertura  no  sentido  de  acesso  à  informação  é  um  tema  central  no  estudo  do  conceito  de \r\nTransparência.\r\nA recente Lei de Acesso à Informação brasileira é um reflexo desse movimento e traz uma \r\nsérie de desafios para a evolução de sistemas que precisam lidar com informação aberta. Esses \r\ndesafios  estão  presentes  em  diversas  áreas  de  interesse  de  pesquisa,  com  forte  impacto  na \r\nconstrução de sistemas que venham a lidar com essa nova demanda.\r\nDados  abertos,  usabilidade  orientada  ao  cidadão,  acessibilidade,  apresentação  de \r\ninformação,  proveniência  da  informação  e  confiança  na  informação  são  algumas  das  novas \r\nnecessidades que os sistemas terão que atender. Discuti-los num contexto de software, que \r\napoiarão os referidos sistemas, é importante para que se possa ter uma visão interdisciplinar \r\npara um desafio de tal magnitude. O desafio aplica-se tanto no uso de sistemas para prover \r\ntransparência, como na própria arquitetura dos sistemas que devem ser transparentes.\r\nO  objetivo  desse  workshop  é  procurar  agregar  diferentes  pesquisadores  com  interesse \r\ntanto em Ciência da Computação, como em outras áreas, no sentido de discutir como tratar os \r\nreferidos desafios, para nortear a criação de tecnologias que deem efetivo apoio na evolução \r\nde sistemas na direção da transparência.','01 Prefácio','','WTRANS13'),(2,'Transparência de Sistemas: oportunidades para pesquisa interdisciplinar','wtransPalestra1.pdf','','pt','Prof. Dr. José Carlos Vaz','','','Keynotes','','WTRANS13'),(3,'Implementação da Lei de Acesso à Informação: Avanços e Desafios','PREFACIOportugues.pdf','','pt','Joara Marchezini ','(Artigo 19)','','Keynotes','','WTRANS13'),(4,'Relações de Interseção entre Transparência e o MPS.BR','119000.pdf','Transparência, MPS.BR, processo, software, qualidade.','pt','Henrique do Prado Sousa','André Luiz de Castro Leal, Marília Guterres Ferreira, Julio Cesar Sampaio do Prado Leite, Arndt von Staa','O modelo MPS.BR sugere uma série  de práticas para dar suporte à  melhoria da qualidade do \r\nprocesso  de  software.  Por  outro  lado,  atualmente  existe  uma  forte  tendência  para  questões  de \r\nTransparência  relacionadas  ao  processo  organizacional,  informação  e  software.  Ao  avaliar  processos \r\nelaborados  para  atender  as  exigências  dos  níveis  de  MPS.BR  são  identificadas  características  de \r\nTransparência.  Desta  forma,  há  um  entendimento  de  que  implantar  o  MPS.BR  contribui  para  a \r\nTransparência,  e  vice-versa.  Portanto,  é relevante identificar um relacionamento  bidirecional que pode \r\npotencializar  o  processo  de  alinhamento  entre  as  abordagens.  O  objetivo  deste  artigo  é  abrir  uma \r\ndiscussão  sobre  as  principais  convergências  dos  processos  dos  níveis  do  modelo  MPS.BR  com \r\nTransparência.','Papers','','WTRANS13'),(5,'Processo de Avaliação da Transparência Organizacional','119784.pdf','Transparência, Organizacional','pt','Kizzy Macedo Benjamin','Claudia Cappelli, Gleison Santos','Transparência  organizacional  consiste  em  dar  acesso,  uso, \r\nqualidade,  entendimento  e  permitir  a  auditabilidade  de  processos  e \r\ninformações.  O  modelo  de  Maturidade  em  Transparência \r\nOrganizacional é o instrumento que permite a organização estabelecer \r\nas  práticas  para  implantação  deste  conceito.  Como  todo  modelo  de \r\nmaturidade, este modelo tem atrelado a ele o  modelo  de Avaliação em \r\nTransparência  Organizacional,  que  permite  verificar  o  estado  de  cada \r\numa destas práticas. O presente trabalho tem como objetivo  apresentar \r\nos processos necessários à realização desta avaliação.','Papers','','WTRANS13'),(6,'Requisitos para construção de um padrão publicação da execução de orçamento público no Brasil','119827.pdf','Requisitos, Transparência, Orçamento Público, Padrão','pt','Marcelo T. Santana','Gisele S. Craveiro','O  Brasil  tem  um  quadro  legal  que  impõe  a  todas  entidades\r\ngovernamentais a publicação de dados detalhados da execução do orçamento\r\nem tempo real na Web. Conforme um diagnóstico encontrado na literatura, a\r\ngrande maioria dos portais de transparência não atende o nível mínimo de\r\nqualidade da informação prevista no arcabouço legal, o que leva a uma\r\nsituação de opacidade das contas públicas. Este artigo apresenta requisitos a\r\nser considerados numa proposta de padronização de publicação de dados da\r\nexecução orçamentária no Brasil e aponta alguns caminhos','Papers','','WTRANS13'),(7,'Transparência das Contas Públicas e Controle Social via Portal do Cidadão - um estudo de caso ','119828.pdf','Transparência Pública, Cidadãos, Usabilidade, Controle Social','pt','Lislaine Krupek Braz de Oliveira','Cristiano Maciel','A  transparência  pública  é  evidenciada  pela  publicidade  dos  atos  praticados  na \r\nAdministração Pública, objetivando o controle social e a participação dos cidadãos nos atos do \r\npoder  público.  Neste  sentido,  esta  pesquisa  tem  como  foco  principal  analisar  a  participação \r\npopular nas contas públicas, por meio dos demonstrativos disponibilizados para os cidadãos via \r\nPortal  do  Cidadão  pelo  Tribunal  de  Contas  do  Estado  de  Mato  Grosso.  Para  tal,  o  trabalho \r\nabrange  uma  revisão  bibliográfica  de  referenciais  e legislações  nesta  área;  a  aplicação  de \r\nquestionários aos cidadãos e de entrevistas a gestores; e análise qualitativa dos dados com uso \r\ndo  método  de  triangulação,  confrontando  opiniões  dos  sujeitos  envolvidos  na  pesquisa.  A \r\nanálise dos dados revela importantes elementos parao desenvolvimento de sistemas nessa área.','Papers','','WTRANS13'),(8,'Construção do Modelo de Maturidade em Transparência Organizacional','119834.pdf','Transparência, Modelo de Maturidade, Avaliação de transparência','pt','Claudia Cappelli','Priscila Engiel, Julio Cesar Sampaio do Prado Leite, Vanessa Nunes, Asterio Tanaka, Renata Mendes de Araujo, Gleison Santos, Kizzy Benjamim, Miriam Moraes','Organizational  transparency consists in giving access,  use,  quality, \r\nunderstanding, and allow auditability of processes and information. To be used \r\nin practice, this concept needs methods that allow establishing it efficiently and \r\nsystematically in organizations. This paper describes the transparency maturity \r\nmodel being built, as well as the creation process, what were the theoretical bases and which steps and activities were already undertaken.','Papers','','WTRANS13'),(9,'Desafios da Transparência no Contexto da Terceirização do Desenvolvimento de Software no Setor Público','119836.pdf','Transparência de Software, Transparência Pública, Terceirização de ','pt','Fabíola Ferreira de Macedo','Patrícia Vilain','A transparência tem sido amplamente discutida nas sociedades atuais \r\ne com isso enfatizada também nas organizações públicas. O aumento da atenção \r\nsobre  as  questões  de  transparência  nos  governos  originaram  a  proposição  de \r\nnovas leis, a exemplo da Lei de Acesso à Informação (LAI), que define um importante marco regulatório em direção à transparência pública.  A LAI gerou às \r\ninstituições governamentais a necessidade de  estabelecer  mecanismos que demonstrem a transparência de suas informações e seus processos. Este artigo  aborda alguns desafios da transparência no contexto da terceirização do desenvolvimento de software no setor público. Ele apresenta ações a serem realizadas \r\npelas empresas públicas contratantes, ainda na fase de levantamento de requisitos, a fim de apoiar a  definição  dos requisitos de transparência desejados pela \r\ninstituição, e a incluí-los nos contratos licitatórios.  Estas ações auxiliam, também, na validação dos requisitos e no acompanhamento da evolução do processo de desenvolvimento de software terceirizado.','Papers','','WTRANS13'),(10,'Ações de Transparência no Processo de Desenvolvimento de Software no Setor Público','119837.pdf','Transparência de Software, Transparência Pública, Ações de Trans-parência, Terceirização de Software, Processo de Software','pt','Fabíola Ferreira de Macedo','Patrícia Vilain','Impulsionadas pela sociedade e por legislações mais rigorosas, cada \r\nvez mais as organizações públicas necessitam demonstrar transparência. Após a \r\npromulgação da Lei de Acesso à Informação (LAI), que regulamenta a transparência pública, o desafio está na aplicação desta lei nos processos e informações \r\ndos órgãos  governamentais,  incluindo o processo de  desenvolvimento  de  software. Para  isso,  são necessários  esforços  em resolver questões  de  como  cada\r\nsoftware irá lidar com os requisitos de transparência  ao longo do  seu  processo \r\nde  desenvolvimento.  Este artigo  apresenta como órgãos públicos,  que terceirizam  algumas  etapas  do desenvolvimento  de software,  podem realizar ações de \r\ntransparência  durante  o  processo  de  desenvolvimento  de  software  apoiando  a \r\nimplementação de requisitos de transparência.','Papers','','WTRANS13'),(11,'Transparência em Sistemas Multiagentes','119839.pdf','Transpar^encia, rastreabilidade, auditabilidade, multiagentes','pt','Caique Peixoto','Maurcio Serrano e Milene Serrano','A proposta desse artigo consiste em aplicar o conceito de\r\ntransparência na interação entre agentes de software, os quais simulam,\r\nem contextos do cotidiano, a socialização entre indivduos. O intuito\r\ne proporcionar maior auditabilidade, conabilidade, clareza, rastreabilidade, dentre outros criterios de qualidade, principalmente, a comunicação\r\nentre os agentes. Varios estudos de caso, orientados ao paradigma de\r\nsistemas multiagentes, foram desenvolvidos para identicar situações recorrentes nas interações entre os agentes. Dada a intrnseca autonomia,\r\nmobilidade, exibilidade, dentre outros aspectos autonômicos dos agentes de software, percebeu-se, a necessidade de manter, por exemplo, o\r\nrastro (i.e log) das decisões, negociações, colaborações e demais ações\r\ndesempenhadas pelos agentes. No intuito de evoluir nesse sentido, foi\r\neleito um estudo de caso, o qual foi renado com o desenvolvimento de\r\num agente estratégico na comunidade multiagentes. Diante dos resultados obtidos com a pesquisa experimental, os quais s~ao relatados nesse\r\nartigo, observa-se maior rastreabilidade, auditabilidade, clareza, e transparência na interação entre os agentes. Além disso, a proposta e dirigida\r\na reutilização de software e a noção de retroalimentação.','Papers','','WTRANS13'),(12,'Desafios para a Governança Eletrônica e Dados Governamentais Abertos em Governos Locais','119843.pdf','Governança eletrônica, Dados governamentais abertos, Transparência, Controle social dos Governos, Participação cidadã','pt','José Carlos Vaz','Manuella Maia Ribeiro, Ricardo Matheus','Este texto apresenta os objetivos e principais conclusões alcançadas até o momento na pesquisa \"Desafios para a \r\nGovernança Eletrônica e Dados Governamentais Abertos em Governos Locais\". A pesquisa fundamenta-se na \r\narticulação entre as aplicações da tecnologia e a promoção de direitos de cidadania associados à sua utilização para a \r\ngovernança eletrônica. Iniciou-se em 2008, identificando experiências de uso da TI para promoção da transparência em \r\ngovernos locais brasileiros e latino-americanos. A partir de 2010, a pesquisa orientou-se para a temática dos dados \r\ngovernamentais abertos, levantando as experiências emergentes nos governos no Brasil. A partir de 2013, a pesquisa \r\naprofundou o estudo das experiências de governos locais, desta vez sob uma abordagem comparativa em governos \r\nlocais do Cone Sul, documentando e comparando as experiências de São Paulo, Montevidéu e Buenos Aires. Enquanto,\r\nna etapa anterior, a pesquisa focou as potencialidades e as decisões sobre abertura de dados, nesta fase corrente já foi \r\npossível identificar elementos concretos do processo de implementação, obtendo avaliaçòes mais aprofundadas sobre os\r\ndesafios, dificuldades e novos potenciais de uso dos dados governamentais abertos, a partir da incorporação de novos \r\natores e novas práticas de trabalho na implementação das experiências. Futuramente, a pesquisa deverá expandir o \r\nnúmero de casos estudados para governos locais de outros países da América Latina e também deverá aprofundar os \r\nrequisitos e atributos dos processos de abertura de dados governamentais, tanto do ponto de vista técnico quanto \r\norganizacional e institucional. A metodologia do trabalho combina pesquisa exploratória e estudos de caso em \r\nprofundidade, através de inspeção estruturada de websites e levantamento e análise de experiências de referência.','Papers','','WTRANS13'),(13,'O Processo de Construção de Léxico Ampliado da Linguagem para a Transparência ','119844.pdf','Transparência, ontologia, Léxico','pt','Priscila Engiel','Marília Guterres Ferreira, Antonio Lutfi, Julio Cesar Sampaio do Prado Leite','Atualmente existe uma grande demanda para que empresas, principalmente públicas, disponibilizem determinadas informações, ou seja, tornemse transparentes para a sociedade. Este  trabalho apresenta um processo de criação de um Léxico Ampliado da Linguagem (LAL) sobre Transparência, Este \r\nLéxico foi modelado a partir da discussão de dois livros de autores com perfis \r\ndistintos,  um  com  características  sócio  históricas  e  outro  com  a  preocupação \r\nmais voltada ao governo e à legislação. A partir deste LAL pretende-se elaborar \r\numa ontologia sobre Transparência. ','Papers','','WTRANS13'),(14,'Transparência e Testabilidade para a Geração Automatizada de Casos de Teste de Software ','119846.pdf','transparência de software, testabilidade, requisitos, cenários, teste de software, casos de teste','pt','Edgar Sarmiento Calisaya','Julio Cesar Sampaio do Prado Leite','Transparência de Software é um conceito relacionado à disponibilidade de informação; e, o software é considerado transparente quando suas operações são visíveis e se tem acesso ao processo que ogerou. Durante o processo \r\nde construção do grafo de interdependências de transparência, percebeu-se que \r\nos requisitos não funcionais relacionados à transparência também estavam relacionadas  à  Testabilidade; ou  seja,  transparência  e  testabilidade  têm  contribuições positivas. Testabilidade é uma característica de software que expõe o grau \r\nem que um artefato de software facilita o processo de testes. Este trabalho descreve os relacionamentos entre a testabilidade e a transparência: como a testabilidade melhora a transparência, e como a transparência facilita a testabilidade. A testabilidade e a transparência podem facilitar  à automação de testes, e \r\neste trabalho propõe uma abordagem automatizada para a geração de casos de \r\nteste a partir de descrições de requisitos. O entendimento e a transparência dos \r\nrequisitos  possibilitam  a  construção  de  software  mais  transparente;  as  linguagens de Cenário e Léxico serão usadas para representar as descrições de requisitos.  ','Papers','','WTRANS13'),(15,'Incorporando Transparência na Pedagogia através do Uso de Jogos para Ensino','119887.pdf','Transparência, Pedagogia, Jogos para ensino','pt','Elizabeth Suescún Monsalve','Vera Maria B. Werneck, Julio Cesar Sampaio do Prado Leite','Na  sociedade  em  constante  transformação,  a  educação é  quem \r\nfacilita a adaptação do ser humano ao mundo, sendo a pedagogia a responsável em criar uma educação  mais  eficaz. Neste contexto, se olharmos  o \r\npassado  a pedagogia era fundamentalmente voltada para uma relação professor-aluno e menos numa sinergia aluno-professor, ou seja, o  papel do \r\nestudante era menos ativo. Novas propostas pedagógicas incluem o olhar \r\na pedagogia com o foco da transparência, informação revelada. Pedagogia \r\ncom  transparência  oferece  um  equilíbrio  entre  professor  e  aluno.  E  faz \r\ncom que este último participe mais e seja ciente sobre processos e conteúdos  educativos.  Nesse  contexto,  jogos  surgem  como  uma  alternativa  de \r\nensino em que existe mais participação do aluno. Nosso trabalho pretende \r\nexplorar as noções de transparência pedagógica.','Papers','','WTRANS13'),(16,'Using Transparency Models to evaluate Open Data Systems: a case study using a Mexican Open Data Platform','120486.pdf','Transparencia, Datos Abiertos, Modelo de Transparencia, Plataforma de Datos Abiertos','en','Hugo Estrada','Blanca Vazquez, Karen Najera','Actualmente, la transparencia es un tema demandado por la\r\nsociedad principalmente en el ámbito político. En este sentido, muchos\r\norganismos gubernamentales han buscado transparentar su información\r\nmediante el uso de plataformas de software que exponen públicamente\r\nsus datos. El uso de éstas plataformas se ha generalizado en muchos\r\npaíses, y es posible evaluar el nivel de apertura de los datos que publican.\r\nSin embargo, no es posible determinar su nivel de transparencia como\r\nsistemas de software. En este artículo, proponemos el uso de modelos de\r\ntransparencia desarrollados por expertos para evaluar cualitativamente el\r\nnivel de transparencia de una plataforma de Datos Abiertos desarrollada\r\nen México. Como caso de estudio presentamos los resultados previos de\r\nésta evaluación los cuales comprenden el nivel de transparencia de la\r\nplataforma como sistema de software así como el nivel de transparencia\r\nde la información que publica.','Papers','','WTRANS13'),(17,'Transparência em Experimentos Científicos  Apoiados Em Proveniência: Uma Perspectiva para Workflows Científicos Transparentes','paper1.pdf','','pt','André Luiz de Castro Leal','Sergio Manuel Serra da Cruz','This  work  applies  the  GIS  Transparency  in  the  field  of  science  in \r\nsilico-based  scientific  workflows  (WFC)  experiments.  The  demand  of  the \r\napplication  is embedded  in the context  of human  relationship, since  workflows\r\nare  the  result  of  a  social  construction,  with  different  participants  and  their\r\nexpectations,  which  means that  scientific information and  processes  need to be\r\ntransparent  so they can  leverage  the features  of the social context.  For this,  it is \r\nsuggested  in this paper a SIG of  Transparency  adherent  to the context of  WFC\r\nfor  scientific  in  silico  with  the  expansion  of  softgoal  traceability  from  the\r\ndecomposition characteristics of Provenance.','Papers','','WTRANS14'),(18,'Guia de Avaliação em Transparência Organizacional ','paper2.pdf','','pt','Kizzy Macedo Benjamin','Claudia Cappelli, Gleison Santos','To  verify  the  organization  maturity  level  in  relation  to  Organizational Transparency implementation, an Organizational Transparency Maturity Assessment Method was built. This method, described in the Organizational \r\nTransparency  Assessment Guide,  consists of  evaluation process,  scoring  rules\r\nand tools to support the assessment. The objective of this paper is to describe \r\nthe Organizational Transparency Assessment Guide.','Papers','','WTRANS14'),(19,'Formalização do Catálogo de Características de Entendimento de Modelos de Processo de Prestação de  Serviços Públicos Inseridos na Carta de Serviços','paper3.pdf','','pt','Cristiane Iglesias','Claudia Cappelli, Renata Araujo','The inclusion of process models in the Services Letter can contribute \r\nto  a  better  understanding  of  the  Letter  by  citizens.  The  catalog  of \r\ncharacteristics  for  understandability  enables  the  transformation  of  process \r\nmodels  into  more  intelligible  ones.  This  paper  presents  the  evolution  of  this \r\ncatalog  to  meet  the  requirements  of  the  Services  Letter  Development  Guide \r\nand  Decree  6932,  besides  its  formalization  through  a  Softgoal \r\nInterdependency  Graph  (SIG)  and  the  Goal-Question-Operationalization \r\n(GQO) method.','Papers','','WTRANS14'),(20,'Confirmando a Demanda por Transparência: Um Estudo  Inicial sobre um Sistema de Avaliação de Projetos de Lei ','paper4.pdf','','pt','Priscila Engiel','Julio Cesar Sampaio do Prado Leite, Claudia Cappelli','This work examines a set of law proposals, in a given time frame, to \r\ncheck how laws classified as implementation of target transparency are being \r\nreceived  by  the  public.  The  site  votenaweb,  which  publicizes  Brazilian \r\ncongress law proposals, also provides a simple feedback mechanism to users, \r\nwhich may vote on approval or disapproval of the proposals. Our results are \r\nlimited to the information on votenaweb, but provides partial data that support \r\nthe general interest on transparency.','Papers','','WTRANS14'),(21,'A Evolução do Modelo de Maturidade em Transparência Organizacional ','paper5.pdf','','pt','Claudia Cappelli','Priscila Engiel, Julio Cesar Sampario do Prado Leite, Vanessa Nunes, Asterio Tanaka, Gleison Santos, Kizzy Benjamim','The concept  of organizational transparency was built based  on the \r\nrelationship among other quality characteristics of organizational information\r\n(accessibility, usability, informative, understandability and auditability). From \r\nthis  conceptualization,  an  organizational  transparency  maturity  model  was \r\ndesigned.  This  model  aims  to  guide  an  organization  to  implement \r\ntransparency  practices.  The level 2 of this model already was built. For  the \r\nsubsequent  levels, only their definitions  were taken. This work aims to present \r\nthe evolvement of this model since the publication of level 2','Papers','','WTRANS14'),(22,'Análise da Transparência de Software em Sites de Instituições de Ensino Superior','paper6.pdf','','pt','Fabio Bittencourt Forte','Patrícia Vilain, Fabíola Ferreira de Macedo','The  importance  of  transparency  of  information has  grown since \r\nmanifestations in  favor  of  the  administrative  information  disclosure,  both \r\npublic  and  private, become frequent.  The  present  work  uses  a  checklist \r\n(checkTrans) in order to explore problems of information publicity in public \r\ninstitutions  websites,  trying  to  identify,  inform  and  assist  in  correcting \r\nproblems.  The  checkTrans  is  adapted  to  support  the  analysis  of  existing \r\nwebsites. We analyzed 9  websites  of Brazilian  universities and  the  results \r\nrevealed that  there  are  problems  of  transparency  in  all  sites  analyzed, \r\nindicating where corrective actions should be concentrated.','Papers','','WTRANS14'),(23,'Aumentando a Transparência no Software C&L - Lua','paper7.pdf','','pt','Edgar Sarmiento Calisaya','Eduardo Almentero, JulioCesar Sampaio do Prado Leite','Software  is  transparent  when  the  information  processed  is \r\ntransparent and it informs about itself, how it does, what it does and why it \r\ndoes.  The  use  of  scenario  and  lexicon  languages  for modeling  and \r\nspecification of software requirements enable the construction of transparent \r\nsoftware,  because  they  make  explicit:  (1)  the  entities  and  the  information \r\nprocessed by the system, (2) the operations that process this information, (3) \r\nthe  relationships  between  entities,  information  and operations,  This  work \r\nshows,  how  the  C&L  –  Lua  software  enables  the  comprehension,  the \r\ntransparency  and  the  evolution  of  software requirements in test cases of the \r\ndifferent execution flows of the software. ','Papers','','WTRANS14'),(24,'Abertura e Disponibilização de Dados Abertos Governamentais: Estudos de Caso','paper8.pdf','','pt','Andrés M. R. Martano','Gisele S. Craveiro','The opening of government data is still an underexplored process.\r\nThis study aims to monitor and participate in one of these processes throughout\r\ntheir development, documenting it in detail and helping it to be built collaboratively with diverse groups of society. Finally, there will be an evaluation of\r\nresults and possible impacts of the whole process. We intend to achieve this\r\ngoal through interviews, public events and the development of an open source\r\ntool for data publishing according to the requirements raised with stakeholders.','Papers','','WTRANS14'),(25,'Criação de um repositório integrado de dados da execução orçamentária brasileira proveniente de diferentes fontes de dados em um modelo dimensional Data Warehouse','paper9.pdf','','pt','José R. Beluzo','Gisele S. Craveiro','This paper presents a proposal for  data and schemes integration of \r\npublic  budget  execution  (revenues  and  expenses)  in a Data Warehouse from \r\nthe data  available in portals transparency. The prototype integration proposal \r\naims  better  information  transparency  of  federal  entities  to  better  subsides \r\nresearches  on  public  policy,  political  science  and  also  auditing  and  citizen \r\nparticipation in public policy in Brazil.','Papers','','WTRANS14'),(26,'Dados Governamentais Abertos e o ciclo virtuoso de uso de dados e informações públicas para o controle social, melhoria dos serviços públicos e desenvolvimento da economia: Estudo de Caso da Cidade do Rio de Janeiro','paper10.pdf','','pt','Ricardo Matheus','José Carlos Vaz, Manuella Maia Ribeiro','The use of Information and Communication Technologies (ICTs) for \r\ninformation  transparency  in  Brazil  is  not  something  recent.  However,  it  is \r\npossible to highlight several strategies have emerged to promote transparency \r\nof such information. This article aims to fill a gap observed in the literature \r\nregarding the use of data and information provided by governments and used \r\nby  citizens  and  companies  from  the  comparison  with  the  specialized \r\nbibliography cycle. The methodology consists of a single case study, the city of \r\nRio de Janeiro, with review of literature in the field of e-government and open \r\ndata, followed by an exploratory study of the portals open data and open data \r\npolicy municipality of Rio.','Papers','','WTRANS14');
/*!40000 ALTER TABLE `papers` ENABLE KEYS */;
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

--
-- Current Database: `biblioteca-digital`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `biblioteca-digital` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `biblioteca-digital`;

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigo`
--

LOCK TABLES `artigo` WRITE;
/*!40000 ALTER TABLE `artigo` DISABLE KEYS */;
INSERT INTO `artigo` VALUES (1,'Prefácio Português','Recentes movimentos sociais registram uma forte tendência na necessidade de considerar \r\nexplicitamente  a  informação  aberta  em  sistemas  que  são  de  interesse  do  cidadão.  Essa \r\nabertura  no  sentido  de  acesso  à  informação  é  um  tema  central  no  estudo  do  conceito  de \r\nTransparência.\r\nA recente Lei de Acesso à Informação brasileira é um reflexo desse movimento e traz uma \r\nsérie de desafios para a evolução de sistemas que precisam lidar com informação aberta. Esses \r\ndesafios  estão  presentes  em  diversas  áreas  de  interesse  de  pesquisa,  com  forte  impacto  na \r\nconstrução de sistemas que venham a lidar com essa nova demanda.\r\nDados  abertos,  usabilidade  orientada  ao  cidadão,  acessibilidade,  apresentação  de \r\ninformação,  proveniência  da  informação  e  confiança  na  informação  são  algumas  das  novas \r\nnecessidades que os sistemas terão que atender. Discuti-los num contexto de software, que \r\napoiarão os referidos sistemas, é importante para que','','',NULL,NULL,NULL),(2,'Transparência de Sistemas: oportunidades para pesquisa interdisciplinar','','','',NULL,NULL,NULL),(3,'Implementação da Lei de Acesso à Informação: Avanços e Desafios','','','',NULL,NULL,NULL),(4,'Relações de Interseção entre Transparência e o MPS.BR','O modelo MPS.BR sugere uma série  de práticas para dar suporte à  melhoria da qualidade do \r\nprocesso  de  software.  Por  outro  lado,  atualmente  existe  uma  forte  tendência  para  questões  de \r\nTransparência  relacionadas  ao  processo  organizacional,  informação  e  software.  Ao  avaliar  processos \r\nelaborados  para  atender  as  exigências  dos  níveis  de  MPS.BR  são  identificadas  características  de \r\nTransparência.  Desta  forma,  há  um  entendimento  de  que  implantar  o  MPS.BR  contribui  para  a \r\nTransparência,  e  vice-versa.  Portanto,  é relevante identificar um relacionamento  bidirecional que pode \r\npotencializar  o  processo  de  alinhamento  entre  as  abordagens.  O  objetivo  deste  artigo  é  abrir  uma \r\ndiscussão  sobre  as  principais  convergências  dos  processos  dos  níveis  do  modelo  MPS.BR  com \r\nTransparência.','','',NULL,NULL,NULL),(5,'Processo de Avaliação da Transparência Organizacional','Transparência  organizacional  consiste  em  dar  acesso,  uso, \r\nqualidade,  entendimento  e  permitir  a  auditabilidade  de  processos  e \r\ninformações.  O  modelo  de  Maturidade  em  Transparência \r\nOrganizacional é o instrumento que permite a organização estabelecer \r\nas  práticas  para  implantação  deste  conceito.  Como  todo  modelo  de \r\nmaturidade, este modelo tem atrelado a ele o  modelo  de Avaliação em \r\nTransparência  Organizacional,  que  permite  verificar  o  estado  de  cada \r\numa destas práticas. O presente trabalho tem como objetivo  apresentar \r\nos processos necessários à realização desta avaliação.','','',NULL,NULL,NULL),(6,'Requisitos para construção de um padrão publicação da execução de orçamento público no Brasil','O  Brasil  tem  um  quadro  legal  que  impõe  a  todas  entidades\r\ngovernamentais a publicação de dados detalhados da execução do orçamento\r\nem tempo real na Web. Conforme um diagnóstico encontrado na literatura, a\r\ngrande maioria dos portais de transparência não atende o nível mínimo de\r\nqualidade da informação prevista no arcabouço legal, o que leva a uma\r\nsituação de opacidade das contas públicas. Este artigo apresenta requisitos a\r\nser considerados numa proposta de padronização de publicação de dados da\r\nexecução orçamentária no Brasil e aponta alguns caminhos','','',NULL,NULL,NULL),(7,'Transparência das Contas Públicas e Controle Social via Portal do Cidadão - um estudo de caso ','A  transparência  pública  é  evidenciada  pela  publicidade  dos  atos  praticados  na \r\nAdministração Pública, objetivando o controle social e a participação dos cidadãos nos atos do \r\npoder  público.  Neste  sentido,  esta  pesquisa  tem  como  foco  principal  analisar  a  participação \r\npopular nas contas públicas, por meio dos demonstrativos disponibilizados para os cidadãos via \r\nPortal  do  Cidadão  pelo  Tribunal  de  Contas  do  Estado  de  Mato  Grosso.  Para  tal,  o  trabalho \r\nabrange  uma  revisão  bibliográfica  de  referenciais  e legislações  nesta  área;  a  aplicação  de \r\nquestionários aos cidadãos e de entrevistas a gestores; e análise qualitativa dos dados com uso \r\ndo  método  de  triangulação,  confrontando  opiniões  dos  sujeitos  envolvidos  na  pesquisa.  A \r\nanálise dos dados revela importantes elementos parao desenvolvimento de sistemas nessa área.','','',NULL,NULL,NULL),(8,'Construção do Modelo de Maturidade em Transparência Organizacional','Organizational  transparency consists in giving access,  use,  quality, \r\nunderstanding, and allow auditability of processes and information. To be used \r\nin practice, this concept needs methods that allow establishing it efficiently and \r\nsystematically in organizations. This paper describes the transparency maturity \r\nmodel being built, as well as the creation process, what were the theoretical bases and which steps and activities were already undertaken.','','',NULL,NULL,NULL),(9,'Desafios da Transparência no Contexto da Terceirização do Desenvolvimento de Software no Setor Públi','A transparência tem sido amplamente discutida nas sociedades atuais \r\ne com isso enfatizada também nas organizações públicas. O aumento da atenção \r\nsobre  as  questões  de  transparência  nos  governos  originaram  a  proposição  de \r\nnovas leis, a exemplo da Lei de Acesso à Informação (LAI), que define um importante marco regulatório em direção à transparência pública.  A LAI gerou às \r\ninstituições governamentais a necessidade de  estabelecer  mecanismos que demonstrem a transparência de suas informações e seus processos. Este artigo  aborda alguns desafios da transparência no contexto da terceirização do desenvolvimento de software no setor público. Ele apresenta ações a serem realizadas \r\npelas empresas públicas contratantes, ainda na fase de levantamento de requisitos, a fim de apoiar a  definição  dos requisitos de transparência desejados pela \r\ninstituição, e a incluí-los nos contratos licitatórios.  Estas ações auxiliam, também, na validação dos requisitos e no acompanhamento ','','',NULL,NULL,NULL),(10,'Ações de Transparência no Processo de Desenvolvimento de Software no Setor Público','Impulsionadas pela sociedade e por legislações mais rigorosas, cada \r\nvez mais as organizações públicas necessitam demonstrar transparência. Após a \r\npromulgação da Lei de Acesso à Informação (LAI), que regulamenta a transparência pública, o desafio está na aplicação desta lei nos processos e informações \r\ndos órgãos  governamentais,  incluindo o processo de  desenvolvimento  de  software. Para  isso,  são necessários  esforços  em resolver questões  de  como  cada\r\nsoftware irá lidar com os requisitos de transparência  ao longo do  seu  processo \r\nde  desenvolvimento.  Este artigo  apresenta como órgãos públicos,  que terceirizam  algumas  etapas  do desenvolvimento  de software,  podem realizar ações de \r\ntransparência  durante  o  processo  de  desenvolvimento  de  software  apoiando  a \r\nimplementação de requisitos de transparência.','','',NULL,NULL,NULL),(11,'Transparência em Sistemas Multiagentes','A proposta desse artigo consiste em aplicar o conceito de\r\ntransparência na interação entre agentes de software, os quais simulam,\r\nem contextos do cotidiano, a socialização entre indivduos. O intuito\r\ne proporcionar maior auditabilidade, conabilidade, clareza, rastreabilidade, dentre outros criterios de qualidade, principalmente, a comunicação\r\nentre os agentes. Varios estudos de caso, orientados ao paradigma de\r\nsistemas multiagentes, foram desenvolvidos para identicar situações recorrentes nas interações entre os agentes. Dada a intrnseca autonomia,\r\nmobilidade, exibilidade, dentre outros aspectos autonômicos dos agentes de software, percebeu-se, a necessidade de manter, por exemplo, o\r\nrastro (i.e log) das decisões, negociações, colaborações e demais ações\r\ndesempenhadas pelos agentes. No intuito de evoluir nesse sentido, foi\r\neleito um estudo de caso, o qual foi renado com o desenvolvimento de\r\num agente estratégico na comunidade multiagentes. Diante dos resultados ','','',NULL,NULL,NULL),(12,'Desafios para a Governança Eletrônica e Dados Governamentais Abertos em Governos Locais','Este texto apresenta os objetivos e principais conclusões alcançadas até o momento na pesquisa \"Desafios para a \r\nGovernança Eletrônica e Dados Governamentais Abertos em Governos Locais\". A pesquisa fundamenta-se na \r\narticulação entre as aplicações da tecnologia e a promoção de direitos de cidadania associados à sua utilização para a \r\ngovernança eletrônica. Iniciou-se em 2008, identificando experiências de uso da TI para promoção da transparência em \r\ngovernos locais brasileiros e latino-americanos. A partir de 2010, a pesquisa orientou-se para a temática dos dados \r\ngovernamentais abertos, levantando as experiências emergentes nos governos no Brasil. A partir de 2013, a pesquisa \r\naprofundou o estudo das experiências de governos locais, desta vez sob uma abordagem comparativa em governos \r\nlocais do Cone Sul, documentando e comparando as experiências de São Paulo, Montevidéu e Buenos Aires. Enquanto,\r\nna etapa anterior, a pesquisa focou as potencialidades e as decisões sobre abertur','','',NULL,NULL,NULL),(13,'O Processo de Construção de Léxico Ampliado da Linguagem para a Transparência ','Atualmente existe uma grande demanda para que empresas, principalmente públicas, disponibilizem determinadas informações, ou seja, tornemse transparentes para a sociedade. Este  trabalho apresenta um processo de criação de um Léxico Ampliado da Linguagem (LAL) sobre Transparência, Este \r\nLéxico foi modelado a partir da discussão de dois livros de autores com perfis \r\ndistintos,  um  com  características  sócio  históricas  e  outro  com  a  preocupação \r\nmais voltada ao governo e à legislação. A partir deste LAL pretende-se elaborar \r\numa ontologia sobre Transparência.','','',NULL,NULL,NULL),(14,'Transparência e Testabilidade para a Geração Automatizada de Casos de Teste de Software ','Transparência de Software é um conceito relacionado à disponibilidade de informação; e, o software é considerado transparente quando suas operações são visíveis e se tem acesso ao processo que ogerou. Durante o processo \r\nde construção do grafo de interdependências de transparência, percebeu-se que \r\nos requisitos não funcionais relacionados à transparência também estavam relacionadas  à  Testabilidade; ou  seja,  transparência  e  testabilidade  têm  contribuições positivas. Testabilidade é uma característica de software que expõe o grau \r\nem que um artefato de software facilita o processo de testes. Este trabalho descreve os relacionamentos entre a testabilidade e a transparência: como a testabilidade melhora a transparência, e como a transparência facilita a testabilidade. A testabilidade e a transparência podem facilitar  à automação de testes, e \r\neste trabalho propõe uma abordagem automatizada para a geração de casos de \r\nteste a partir de descrições de requisitos. O entendimento','','',NULL,NULL,NULL),(15,'Incorporando Transparência na Pedagogia através do Uso de Jogos para Ensino','Na  sociedade  em  constante  transformação,  a  educação é  quem \r\nfacilita a adaptação do ser humano ao mundo, sendo a pedagogia a responsável em criar uma educação  mais  eficaz. Neste contexto, se olharmos  o \r\npassado  a pedagogia era fundamentalmente voltada para uma relação professor-aluno e menos numa sinergia aluno-professor, ou seja, o  papel do \r\nestudante era menos ativo. Novas propostas pedagógicas incluem o olhar \r\na pedagogia com o foco da transparência, informação revelada. Pedagogia \r\ncom  transparência  oferece  um  equilíbrio  entre  professor  e  aluno.  E  faz \r\ncom que este último participe mais e seja ciente sobre processos e conteúdos  educativos.  Nesse  contexto,  jogos  surgem  como  uma  alternativa  de \r\nensino em que existe mais participação do aluno. Nosso trabalho pretende \r\nexplorar as noções de transparência pedagógica.','','',NULL,NULL,NULL),(16,'Using Transparency Models to evaluate Open Data Systems: a case study using a Mexican Open Data Plat','Actualmente, la transparencia es un tema demandado por la\r\nsociedad principalmente en el ámbito político. En este sentido, muchos\r\norganismos gubernamentales han buscado transparentar su información\r\nmediante el uso de plataformas de software que exponen públicamente\r\nsus datos. El uso de éstas plataformas se ha generalizado en muchos\r\npaíses, y es posible evaluar el nivel de apertura de los datos que publican.\r\nSin embargo, no es posible determinar su nivel de transparencia como\r\nsistemas de software. En este artículo, proponemos el uso de modelos de\r\ntransparencia desarrollados por expertos para evaluar cualitativamente el\r\nnivel de transparencia de una plataforma de Datos Abiertos desarrollada\r\nen México. Como caso de estudio presentamos los resultados previos de\r\nésta evaluación los cuales comprenden el nivel de transparencia de la\r\nplataforma como sistema de software así como el nivel de transparencia\r\nde la información que publica.','','',NULL,NULL,NULL),(17,'Transparência em Experimentos Científicos  Apoiados Em Proveniência: Uma Perspectiva para Workflows ','This  work  applies  the  GIS  Transparency  in  the  field  of  science  in \r\nsilico-based  scientific  workflows  (WFC)  experiments.  The  demand  of  the \r\napplication  is embedded  in the context  of human  relationship, since  workflows\r\nare  the  result  of  a  social  construction,  with  different  participants  and  their\r\nexpectations,  which  means that  scientific information and  processes  need to be\r\ntransparent  so they can  leverage  the features  of the social context.  For this,  it is \r\nsuggested  in this paper a SIG of  Transparency  adherent  to the context of  WFC\r\nfor  scientific  in  silico  with  the  expansion  of  softgoal  traceability  from  the\r\ndecomposition characteristics of Provenance.','','',NULL,NULL,NULL),(18,'Guia de Avaliação em Transparência Organizacional ','To  verify  the  organization  maturity  level  in  relation  to  Organizational Transparency implementation, an Organizational Transparency Maturity Assessment Method was built. This method, described in the Organizational \r\nTransparency  Assessment Guide,  consists of  evaluation process,  scoring  rules\r\nand tools to support the assessment. The objective of this paper is to describe \r\nthe Organizational Transparency Assessment Guide.','','',NULL,NULL,NULL),(19,'Formalização do Catálogo de Características de Entendimento de Modelos de Processo de Prestação de  ','The inclusion of process models in the Services Letter can contribute \r\nto  a  better  understanding  of  the  Letter  by  citizens.  The  catalog  of \r\ncharacteristics  for  understandability  enables  the  transformation  of  process \r\nmodels  into  more  intelligible  ones.  This  paper  presents  the  evolution  of  this \r\ncatalog  to  meet  the  requirements  of  the  Services  Letter  Development  Guide \r\nand  Decree  6932,  besides  its  formalization  through  a  Softgoal \r\nInterdependency  Graph  (SIG)  and  the  Goal-Question-Operationalization \r\n(GQO) method.','','',NULL,NULL,NULL),(20,'Confirmando a Demanda por Transparência: Um Estudo  Inicial sobre um Sistema de Avaliação de Projeto','This work examines a set of law proposals, in a given time frame, to \r\ncheck how laws classified as implementation of target transparency are being \r\nreceived  by  the  public.  The  site  votenaweb,  which  publicizes  Brazilian \r\ncongress law proposals, also provides a simple feedback mechanism to users, \r\nwhich may vote on approval or disapproval of the proposals. Our results are \r\nlimited to the information on votenaweb, but provides partial data that support \r\nthe general interest on transparency.','','',NULL,NULL,NULL),(21,'A Evolução do Modelo de Maturidade em Transparência Organizacional ','The concept  of organizational transparency was built based  on the \r\nrelationship among other quality characteristics of organizational information\r\n(accessibility, usability, informative, understandability and auditability). From \r\nthis  conceptualization,  an  organizational  transparency  maturity  model  was \r\ndesigned.  This  model  aims  to  guide  an  organization  to  implement \r\ntransparency  practices.  The level 2 of this model already was built. For  the \r\nsubsequent  levels, only their definitions  were taken. This work aims to present \r\nthe evolvement of this model since the publication of level 2','','',NULL,NULL,NULL),(22,'Análise da Transparência de Software em Sites de Instituições de Ensino Superior','The  importance  of  transparency  of  information has  grown since \r\nmanifestations in  favor  of  the  administrative  information  disclosure,  both \r\npublic  and  private, become frequent.  The  present  work  uses  a  checklist \r\n(checkTrans) in order to explore problems of information publicity in public \r\ninstitutions  websites,  trying  to  identify,  inform  and  assist  in  correcting \r\nproblems.  The  checkTrans  is  adapted  to  support  the  analysis  of  existing \r\nwebsites. We analyzed 9  websites  of Brazilian  universities and  the  results \r\nrevealed that  there  are  problems  of  transparency  in  all  sites  analyzed, \r\nindicating where corrective actions should be concentrated.','','',NULL,NULL,NULL),(23,'Aumentando a Transparência no Software C&L - Lua','Software  is  transparent  when  the  information  processed  is \r\ntransparent and it informs about itself, how it does, what it does and why it \r\ndoes.  The  use  of  scenario  and  lexicon  languages  for modeling  and \r\nspecification of software requirements enable the construction of transparent \r\nsoftware,  because  they  make  explicit:  (1)  the  entities  and  the  information \r\nprocessed by the system, (2) the operations that process this information, (3) \r\nthe  relationships  between  entities,  information  and operations,  This  work \r\nshows,  how  the  C&L  –  Lua  software  enables  the  comprehension,  the \r\ntransparency  and  the  evolution  of  software requirements in test cases of the \r\ndifferent execution flows of the software.','','',NULL,NULL,NULL),(24,'Abertura e Disponibilização de Dados Abertos Governamentais: Estudos de Caso','The opening of government data is still an underexplored process.\r\nThis study aims to monitor and participate in one of these processes throughout\r\ntheir development, documenting it in detail and helping it to be built collaboratively with diverse groups of society. Finally, there will be an evaluation of\r\nresults and possible impacts of the whole process. We intend to achieve this\r\ngoal through interviews, public events and the development of an open source\r\ntool for data publishing according to the requirements raised with stakeholders.','','',NULL,NULL,NULL),(25,'Criação de um repositório integrado de dados da execução orçamentária brasileira proveniente de dife','This paper presents a proposal for  data and schemes integration of \r\npublic  budget  execution  (revenues  and  expenses)  in a Data Warehouse from \r\nthe data  available in portals transparency. The prototype integration proposal \r\naims  better  information  transparency  of  federal  entities  to  better  subsides \r\nresearches  on  public  policy,  political  science  and  also  auditing  and  citizen \r\nparticipation in public policy in Brazil.','','',NULL,NULL,NULL),(26,'Dados Governamentais Abertos e o ciclo virtuoso de uso de dados e informações públicas para o contro','The use of Information and Communication Technologies (ICTs) for \r\ninformation  transparency  in  Brazil  is  not  something  recent.  However,  it  is \r\npossible to highlight several strategies have emerged to promote transparency \r\nof such information. This article aims to fill a gap observed in the literature \r\nregarding the use of data and information provided by governments and used \r\nby  citizens  and  companies  from  the  comparison  with  the  specialized \r\nbibliography cycle. The methodology consists of a single case study, the city of \r\nRio de Janeiro, with review of literature in the field of e-government and open \r\ndata, followed by an exploratory study of the portals open data and open data \r\npolicy municipality of Rio.','','',NULL,NULL,NULL);
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
INSERT INTO `congresso` VALUES (1,'WTRANS13','Programação'),(2,'WTRANS14','Finanças');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edicao`
--

LOCK TABLES `edicao` WRITE;
/*!40000 ALTER TABLE `edicao` DISABLE KEYS */;
INSERT INTO `edicao` VALUES (1,1,'1','2013'),(2,2,'1','2014');
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

-- Dump completed on 2015-07-07 19:23:46
