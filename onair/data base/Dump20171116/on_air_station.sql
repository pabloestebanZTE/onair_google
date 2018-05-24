-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: on_air
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.25-MariaDB

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
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station` (
  `k_id_station` int(11) NOT NULL,
  `k_id_city` int(11) DEFAULT NULL,
  `n_name_station` varchar(100) NOT NULL,
  PRIMARY KEY (`k_id_station`),
  KEY `fk_station_city` (`k_id_city`),
  CONSTRAINT `fk_station_city` FOREIGN KEY (`k_id_city`) REFERENCES `city` (`k_id_city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,1,'BOG.7 de Agosto'),(2,1,'BOG.Alameda'),(3,1,'BOG.Alamos-2'),(4,1,'BOG.Alborada'),(5,1,'BOG.Alqueria'),(6,1,'BOG.Andes-2'),(7,1,'BOG.Antonio Granados'),(8,1,'BOG.Argelia'),(9,1,'BOG.Armenia'),(10,1,'BOG.Armenia-2'),(11,1,'BOG.Arrayanes'),(12,1,'BOG.Atavanza'),(13,1,'BOG.Atlantis'),(14,1,'BOG.AV Colon'),(15,1,'BOG.Banderas-2'),(16,1,'BOG.Bellavista'),(17,1,'BOG.Benjamin Herrera'),(18,1,'BOG.Bodegas Hayuelos:H2'),(19,1,'BOG.Boita'),(20,1,'BOG.Bosa Jimenez'),(21,1,'BOG.Bosconia'),(22,1,'BOG.Bosque Izquierdo'),(23,1,'BOG.Cabana'),(24,1,'BOG.Calle 26:P1'),(25,1,'BOG.Calle 45'),(26,1,'BOG.Calle 57'),(27,1,'BOG.Can-2'),(28,1,'BOG.Candelaria la Nueva'),(29,1,'BOG.Canodromo'),(30,1,'BOG.Carimagua'),(31,1,'BOG.Carulla QC'),(32,1,'BOG.Castilla'),(33,1,'BOG.Catam'),(34,1,'BOG.Cedros'),(35,1,'BOG.Centro industrial n'),(36,1,'BOG.Chapinero-1'),(37,1,'BOG.Chapinero-3'),(38,1,'BOG.Chico Oriental'),(39,1,'BOG.Ciudad Jardin'),(40,1,'BOG.Coca Cola'),(41,1,'BOG.Corabastos'),(42,1,'BOG.Don Bosco P1'),(43,1,'BOG.El Lago-1'),(44,1,'BOG.Emaus-1'),(45,1,'BOG.Estadio Campin'),(46,1,'BOG.Exito Boyaca'),(47,1,'BOG.Exito Suba'),(48,1,'BOG.Floresta-2'),(49,1,'BOG.Fontibon HB'),(50,1,'BOG.Gaitana'),(51,1,'BOG.Galan'),(52,1,'BOG.Galan-2'),(53,1,'BOG.Galerias-1'),(54,1,'BOG.Germania'),(55,1,'BOG.Gran Estacion'),(56,1,'BOG.Grupo AR'),(57,1,'BOG.Gustavo Restrepo'),(58,1,'BOG.H Simon Bolivar'),(59,1,'BOG.Heroes-1'),(60,1,'BOG.Heroes-2'),(61,1,'BOG.Ilarco'),(62,1,'BOG.IND Autonal 128'),(63,1,'BOG.IND Campin'),(64,1,'BOG.IND Campin Nodo 1'),(65,1,'BOG.IND Campin Nodo 2'),(66,1,'BOG.IND Campin Nodo 3'),(67,1,'BOG.IND Campin Nodo 4'),(68,1,'BOG.IND Claro Suba-2'),(69,1,'BOG.IND Claro Suba-3'),(70,1,'BOG.IND Convenciones Cubo'),(71,1,'BOG.IND Convenciones Cubo-3'),(72,1,'BOG.IND Fundacion Santafe-6'),(73,1,'BOG.IND Nissan Morato'),(74,1,'BOG.IND Rastreo Salitre'),(75,1,'BOG.IND Siemens 113'),(76,1,'BOG.Ingles'),(77,1,'BOG.Jazmin-2'),(78,1,'BOG.La Magdalena'),(79,1,'BOG.La Magdalena-2'),(80,1,'BOG.La Merced'),(81,1,'BOG.La Sante'),(82,1,'BOG.La Unidad'),(83,1,'BOG.La Uribe'),(84,1,'BOG.Las Violetas'),(85,1,'BOG.Libertador'),(86,1,'BOG.Lorencita Villegas'),(87,1,'BOG.Los Laureles'),(88,1,'BOG.Los Olivos'),(89,1,'BOG.Lujan'),(90,1,'BOG.Madelena'),(91,1,'BOG.Marco Fidel Suarez'),(92,1,'BOG.Marroquinera'),(93,1,'BOG.Mazuren-2'),(94,1,'BOG.Megaoutlet'),(95,1,'Bog.Molinos Sur'),(96,1,'BOG.Monte Loma'),(97,1,'BOG.Murillo Toro'),(98,1,'BOG.Muzu-2'),(99,1,'BOG.Nogal'),(100,1,'BOG.Nuevo Aeropuerto Multi'),(101,1,'BOG.Pablo Sexto-2'),(102,1,'BOG.Piamonte'),(103,1,'BOG.Pinar'),(104,1,'BOG.Plaza Americas-3'),(105,1,'BOG.Plaza Bolivar'),(106,1,'BOG.Plaza Claro-1'),(107,1,'BOG.Plaza Claro-5'),(108,1,'BOG.Politecnico'),(109,1,'BOG.Polo'),(110,1,'BOG.Pontevedra'),(111,1,'BOG.Portal Sur'),(112,1,'BOG.Profamilia'),(113,1,'BOG.PSB:P1'),(114,1,'BOG.PSB:P11'),(115,1,'BOG.PSB:P2'),(116,1,'BOG.PSB:P2 Nodo 2'),(117,1,'BOG.PSB:P4'),(118,1,'BOG.PSB:P9'),(119,1,'BOG.Quinta Paredes'),(120,1,'BOG.Quinta Paredes-4:P1'),(121,1,'BOG.Quirinal-2'),(122,1,'BOG.Quiroga'),(123,1,'BOG.Rb Aloha'),(124,1,'BOG.RB Comcel-2'),(125,1,'BOG.Rb Soledad-2:H2'),(126,1,'BOG.REDIL'),(127,1,'BOG.Restrepo-1'),(128,1,'BOG.Restrepo-3'),(129,1,'BOG.Rosales'),(130,1,'BOG.San Diego'),(131,1,'BOG.San Francisco Sur'),(132,1,'BOG.San Jorge'),(133,1,'BOG.San Jose Sur'),(134,1,'BOG.San Nicolas'),(135,1,'BOG.Santa Cecilia'),(136,1,'BOG.Santa Ines-1'),(137,1,'BOG.Santa Isabel-2'),(138,1,'BOG.Senado'),(139,1,'BOG.Soatama'),(140,1,'BOG.Soledad'),(141,1,'BOG.Temp Cirque'),(142,1,'BOG.Tequendama'),(143,1,'BOG.Teusaquillo Parque P6'),(144,1,'BOG.Teusaquillo-2'),(145,1,'BOG.Tibana'),(146,1,'BOG.Tierra Firme'),(147,1,'BOG.Torca-2 P2'),(148,1,'BOG.Tunel Americas'),(149,1,'BOG.Tunjuelito'),(150,1,'BOG.Tunjuelito-3'),(151,1,'BOG.Valladolid'),(152,1,'BOG.Velodromo-2'),(153,1,'BOG.Villa Alsacia'),(154,1,'BOG.Villa del Prado-2'),(155,1,'SOA.Soacha-2'),(156,2,'CHI.Puente Piedra'),(158,3,'CHI.Colombia'),(159,3,'CHI.Delicias'),(160,3,'CUN.Funza'),(161,3,'CUN.IND Pisa'),(162,3,'CUN.IND Tractocarga P1'),(163,3,'CUN.IND Tractocarga P2S1'),(164,3,'CUN.Las Delicias'),(165,3,'CUN.Madrid-3'),(166,3,'CUN.Madrid-4'),(167,3,'CUN.Madrid-6'),(168,3,'CUN.Mesa de Yeguas:H1'),(169,3,'CUN.Mosquera-2'),(170,3,'CUN.Puente Quetame'),(171,3,'CUN.Siberia-1'),(172,3,'CUN.Tausa'),(173,4,'SAN.Buenavista'),(174,4,'SAN.Tom Hooker'),(175,5,'SOA.Compartir'),(176,5,'SOA.Porvenir'),(177,5,'SOA.Rb La Chucua'),(178,5,'SOA.San Marcos:H2'),(179,5,'SOA.San Mateo-2'),(180,5,'SOA.Soacha-2'),(181,6,'ATL.Piojo-2'),(182,7,'BAR.Altamira'),(183,7,'BAR.Americas'),(184,7,'BAR.Asuncion'),(185,7,'BAR.Buenavista-2 (P1)'),(186,7,'BAR.Buenavista-2 (P3)'),(187,7,'BAR.Calle 17-2'),(188,7,'BAR.Calle 72'),(189,7,'BAR.Calle 82'),(190,7,'BAR.Centro-1:H1'),(191,7,'BAR.Circunvalar-2 (P1)'),(192,7,'BAR.CUMBRE'),(193,7,'BAR.Estadio Metro'),(194,7,'BAR.Estadio Metro-2'),(195,7,'BAR.Flexotar'),(196,7,'BAR.Helena'),(197,7,'BAR.IND Carvajal Espacios'),(198,7,'BAR.IND Equinorte'),(199,7,'BAR.Los Andes'),(200,7,'BAR.Sena'),(201,7,'BAR.Uninorte-2'),(202,8,'BOL.Juan Arias'),(203,8,'BOL.Montecristo'),(204,8,'BOL.San Pablo-2'),(205,9,'CAR.India Catalina'),(206,9,'CAR.La Princesa'),(207,9,'CAR.La Quinta'),(208,9,'CAR.Mamonal-2'),(209,9,'CAR.Mamonal-2 (P1)'),(210,9,'CAR.Mamonal-3 Reub'),(211,9,'CAR.Manga'),(212,9,'CAR.Surtigas'),(213,9,'CAR.Tamarindo'),(214,10,'CES.Aguachica-10'),(215,11,'COR.Montelibano-4'),(216,11,'COR.Montelibano-8'),(217,11,'COR.San Carlos'),(218,12,'GUJ.Papayal'),(219,12,'GUJ.San Juan'),(220,12,'GUJ.San Juan-2'),(221,13,'MAG.Fundacion-3'),(222,13,'MAG.Paraiso'),(223,13,'STA.Rb Unimag'),(224,14,'MON.El Ceibal'),(225,15,'SIN.Av San Carlos'),(226,15,'SIN.Candelaria-2'),(227,15,'SIN.Exito'),(228,16,'SUC.La Union'),(229,16,'SUC.Ovejas'),(230,16,'SUC.Since'),(231,16,'SUC.Sucre'),(234,17,'VAD.Batallon'),(235,18,'ANT.Argelia'),(236,18,'ANT.Carmen Viboral'),(237,18,'ANT.IND CCC Ituango-1'),(238,18,'ANT.IND CCC Ituango-2'),(239,18,'ANT.IND Gramalote Jerico'),(240,18,'ANT.Ituango Santa Ana'),(241,18,'ANT.Peque Vega'),(242,18,'ANT.Santa Rosa de Oso-4'),(243,19,'CAD.Anserma-2'),(244,19,'CAD.La Cabana'),(245,19,'CAD.Santagueda-2'),(246,20,'CAU.Valle Nuevo'),(247,21,'CHO.Paito'),(248,22,'MED.IND DACOM Castellana'),(249,22,'MED.80 con Guayabal'),(250,22,'MED.Alpujarra'),(251,22,'MED.Barrio Obrero'),(252,22,'MED.Bucaros'),(253,22,'MED.CARIBE'),(254,22,'MED.CC Santafe'),(255,22,'MED.Ciudad del Rio'),(256,22,'MED.Cola del zorro'),(257,22,'MED.Cristo Rey'),(258,22,'MED.Curva Kevins:H1 ALT1'),(259,22,'MED.El Regalo de Dios'),(260,22,'MED.Envigado'),(261,22,'MED.Estacion Ayura'),(262,22,'MED.IND ALEMAUTOS'),(263,22,'MED.IND Atanasio Sur'),(264,22,'MED.IND Comercial Jeans'),(265,22,'MED.IND Creatum'),(266,22,'MED.IND Dropopular'),(267,22,'MED.IND Gramalote'),(268,22,'MED.IND Metroalarmas'),(269,22,'MED.IND NAF NAF'),(270,22,'MED.IND ROR Ingenieria'),(271,22,'MED.IND Union Electrica'),(272,22,'MED.Macarena'),(273,22,'MED.Megacenter'),(274,22,'MED.Norte America'),(275,22,'MED.P.Municipal'),(276,22,'MED.P.Nacional'),(277,22,'MED.Palmas Retorno 1 ALT1'),(278,22,'MED.Palmas Salle'),(279,22,'MED.Palmas Salle ALT'),(280,22,'MED.Parque Lleras'),(281,22,'MED.Punto Clave'),(282,22,'MED.RB Salento'),(283,22,'MED.San Carbon'),(284,22,'MED.Santa Monica'),(285,22,'MED.Terminal del Sur'),(286,22,'MED.Udea'),(287,22,'MED.Volador'),(288,23,'PER.Alamos'),(289,23,'PER.Coliseo'),(290,23,'PER.Cuba-1'),(291,23,'PER.Cuba-2'),(292,23,'PER.Dosquebradas-2'),(293,23,'PER.La Libertad'),(294,23,'PER.La Romelia'),(295,23,'PER.Tecnologica:H2'),(296,24,'QUI.Salento Parque-2'),(297,25,'RIS.Santuario Parque'),(298,25,'RIS.Virginia-4'),(299,26,'BCA.CAMPESTRE'),(300,27,'BOY.Coper'),(301,27,'BOY.Jenesano'),(302,27,'BOY.Nobsa Dicho'),(303,27,'BOY.Rondon Rancho Grande'),(304,27,'BOY.Santana'),(305,28,'BUC.Antonia Santos-2'),(306,28,'BUC.Centro-2'),(307,28,'BUC.IND Juegos Perla'),(308,28,'BUC.Kennedy-2'),(309,28,'BUC.Parque Bolivar'),(310,29,'CUC.Aeropuerto'),(311,29,'CUC.Americas'),(312,29,'CUC.Belen'),(313,29,'CUC.Buenos Aires'),(314,29,'CUC.Centro'),(315,29,'CUC.Cundinamarca'),(316,29,'CUC.La Libertad'),(317,29,'CUC.Ley Centro'),(318,29,'CUC.Pinar del Rio'),(319,29,'CUC.San Martin'),(320,30,'NOR.Chinacota'),(321,30,'NOR.El Carmen'),(322,30,'NOR.Gramalote'),(323,30,'NOR.La Y'),(324,30,'NOR.Ocana-4'),(325,30,'NOR.Ocana-8'),(326,30,'NOR.Ocaña-8'),(327,30,'NOR.ORU'),(328,30,'NOR.Pamplona-2'),(329,30,'NOR.Union Campesina'),(330,30,'NOR.Via Pto Santander'),(331,30,'NOR.Via Pto Santander'),(332,31,'SND.Barichara'),(333,31,'SND.Campo Capote'),(334,31,'SND.Capitanejo'),(335,31,'SND.Malaga-1'),(336,31,'SND.Rb2 Piedecuesta-3'),(337,31,'SND.Rb2 Piedecuesta-3_ 1 NODO'),(338,31,'SND.Rb2 Piedecuesta-3_ 2 NODO'),(339,31,'SND.Socorro-2'),(340,31,'SND.VIA PIEDECUESTA'),(341,32,'TUN.Centro'),(342,33,'ARA.Cravo Norte'),(343,33,'ARA.Fortul'),(344,33,'ARA.Tame'),(345,33,'ARA.TAME-2'),(346,33,'ARA.Tame-3'),(347,33,'ARA.Tame-4'),(348,34,'CAS.Caribayona'),(349,34,'CAS.El Convento'),(350,35,'CHI.Rio Frio-2'),(351,36,'CUN.Anapoima La Chica'),(352,36,'CUN.Cota-2'),(353,36,'CUN.Madrid-3'),(354,36,'CUN.Madrid-4'),(355,36,'CUN.Parque Sopo'),(356,37,'GIR.IND Unicentro'),(357,37,'GIR.La Cruz'),(358,38,'MET.Acacias-7'),(359,38,'MET.Apiay-1'),(360,38,'MET.Apiay-3'),(361,38,'MET.Canaguaro'),(362,38,'MET.Lejanias'),(363,38,'MET.Lejanias-2'),(364,38,'MET.Mesetas'),(365,38,'MET.San Miguel'),(366,39,'VCH.El Progreso'),(367,39,'VCH.San Jose de Ocune'),(368,40,'VCO.Americas-2'),(369,40,'VCO.Catama-3'),(370,40,'VCO.Catama-3_2do Nodo'),(371,40,'VCO.Catama-3_3er Nodo'),(372,40,'VCO.La Campina'),(373,40,'VCO.Parque Malocas'),(374,40,'VCO.Porfia'),(375,40,'VCO.San Benito'),(376,40,'VCO.San Benito-2'),(377,40,'VCO.Parque Malocas'),(378,41,'YOP.Colina'),(379,41,'YOP.El Laguito'),(380,42,'BNV.Naval'),(381,42,'BNV.Variante'),(382,43,'	CAL.Carrefour Norte'),(383,43,'CAL.Acueducto'),(384,43,'CAL.Alamos'),(385,43,'CAL.Alhambra'),(386,43,'CAL.Americas'),(387,43,'CAL.APACHE-2'),(388,43,'CAL.Arroyohondo'),(389,43,'CAL.Banderas'),(390,43,'CAL.Calle 13'),(391,43,'CAL.Campina'),(392,43,'CAL.Caney'),(393,43,'CAL.Capri'),(394,43,'CAL.CARREFOUR NORTE'),(395,43,'CAL.Carrefour Sur'),(396,43,'CAL.Carrillon'),(397,43,'CAL.Ciudad Cordoba'),(398,43,'CAL.Ciudad Cordoba-2'),(399,43,'CAL.Ciudad Jardin'),(400,43,'CAL.Club Campestre'),(401,43,'CAL.Decepaz'),(402,43,'CAL.Delicias'),(403,43,'CAL.Departamental'),(404,43,'CAL.Ecopapel'),(405,43,'CAL.Exito'),(406,43,'CAL.IND Importadora'),(407,43,'CAL.Javeriana-2'),(408,43,'CAL.La 66'),(409,43,'CAL.La Floresta'),(410,43,'CAL.La Sirena'),(411,43,'CAL.Nueva Floresta'),(412,43,'CAL.Poblado-2'),(413,43,'CAL.Primavera'),(414,43,'CAL.Radisson'),(415,43,'CAL.San Nicolas'),(416,43,'CAL.Santo Domingo'),(417,43,'CAL.Villa del Lago'),(418,43,'CAL.Vipasa'),(419,44,'CAQ.Campo Hermoso'),(420,45,'CAU.El Bordo-2'),(421,45,'CAU.El Rosario'),(422,45,'CAU.IND Alival'),(423,45,'CAU.Purace-2'),(424,45,'CAU.Pureto'),(425,45,'CAU.RB Incauca'),(426,45,'CAU.Usenda'),(427,45,'CAU.Valle Nuevo'),(428,45,'Val.Guacari'),(429,46,'CUC.Centro'),(430,47,'FLO.Andes'),(431,47,'FLO.Ciudadela-2'),(432,47,'FLO.Florida'),(433,48,'HUI.Acevedo-2'),(434,48,'HUI.Garzon-3'),(435,48,'HUI.Garzon-4'),(436,48,'HUI.IND Prosegur Pitalito'),(437,48,'HUI.Suaza'),(438,49,'IBG.Aeropuerto'),(439,49,'IBG.Ambala-1'),(440,49,'IBG.Boqueron'),(441,49,'IBG.Boqueron:H1'),(442,49,'IBG.CC Estacion'),(443,49,'IBG.CC Estacion F.O'),(444,49,'IBG.IND Colombina'),(445,49,'IBG.IND Fibratela'),(446,49,'IBG.La Quinta-2'),(447,49,'IBG.Libertador'),(448,49,'IBG.Los Tunjos'),(449,49,'IBG.Matallana'),(450,49,'IBG.Pijao'),(451,50,'NAR.Cordoba'),(452,50,'NAR.IND Transcointer'),(453,50,'NAR.Ipiales-11'),(454,50,'NAR.Ipiales-13'),(455,50,'NAR.Ipiales-5'),(456,50,'NAR.PAZISARA'),(457,50,'NAR.Penol'),(458,50,'NAR.Potosi'),(459,50,'NAR.Tumaco-9'),(460,51,'POP.Caldas'),(461,52,'PUT.Siberia'),(462,53,'SND.Malaga-1'),(463,54,'TOL.Casabianca-2'),(464,54,'TOL.Falan'),(465,54,'TOL.Guamo-2'),(466,54,'TOL.Planadas-2'),(467,54,'TOL.RB Suarez'),(468,54,'TOL.Riomanso'),(469,55,'TUL.Chiminangos'),(470,55,'TUL.La Quinta'),(471,55,'TUL.Miraflores'),(472,56,'VAL.El Aguila'),(473,57,'VAL.Caicedonia-2'),(474,57,'VAL.El Aguila'),(475,57,'Val.Guacari'),(476,57,'VAL.Las Mananitas'),(477,1,'BOG.Chapinero Norte'),(478,1,'BOG.Salamanca'),(479,46,'CUC.Pinar del Rio'),(480,1,'BOG.Quinta Paredes-2'),(481,7,'BAR.Batalla de Flores-3 (P1)'),(482,43,'CAL.Clinicomfandi'),(483,1,'BOG.Avenida 19-1'),(484,1,'BOG.POL Kennedy'),(485,46,'CUC.Antonia Santos'),(486,47,'FLO.Aeropuerto'),(487,1,'BOG.El Palmar-3'),(488,1,'BOG.Gibraltar'),(489,22,'MED.Santa Catalina ALT1'),(490,43,'CAL.Fortaleza'),(491,43,'CAL.Las Acacias-2'),(492,57,'VAL.Riofrio'),(493,31,'SND.Alto Viento'),(494,22,'MED.Itagui-2 ALT1'),(495,18,'ANT.Pintada-2'),(496,40,'VCO.Los Ocarros'),(497,46,'CUC.Santa Ana'),(498,31,'SND.San Gil-3'),(499,1,'BOG.Teleport'),(500,50,'NAR.La Florida'),(501,50,'NAR.Tamana'),(502,7,'BAR.Puerta del Sol'),(503,57,'VAL.Piedras'),(504,1,'BOG.RB Comcel'),(505,27,'BOY.Puerto Boyaca-3'),(506,1,'BOG.El Lago-2'),(507,18,'ANT.El Jordan'),(508,49,'IBG.Multicentro'),(509,43,'CAL.Centro-1'),(510,50,'NAR.Buesaco-2'),(511,50,'NAR.Encano'),(512,50,'NAR.Ricaute'),(513,57,'VAL.Villa Nueva'),(514,3,'CUN.Madrid-7'),(515,50,'NAR.Funes'),(516,50,'NAR.Ipiales-6'),(517,50,'NAR.Las Cruces'),(518,11,'COR.Cerete-1'),(519,3,'CUN.Sasaima'),(520,43,'CAL.Tequendama'),(521,1,'BOG.Polo-2:H1'),(522,1,'BOG.Los Libertadores'),(523,11,'COR.Cerro Matoso'),(524,43,'CAL.Ermita'),(525,43,'CAL.Cam'),(526,1,'ARM.Tayrona'),(527,49,'IBG.Jordan'),(528,1,'BOG.Eduardo Santos'),(529,43,'CAL.Apache'),(530,8,'BOL.Carmen Bolivar-2'),(531,9,'CAR.Las Americas-2'),(532,11,'COR.Las Margaritas'),(533,27,'SOG.Valdes Tavera'),(534,1,'BOG.Rincon de Castilla'),(535,22,'MED.Santa Ines'),(536,34,'CAS.Paz de Ariporo-5'),(537,16,'SUC.Corozal-2'),(538,15,'SIN.Mochila'),(539,49,'IBG.Makro'),(540,48,'HUI.Pital'),(541,1,'ARM.Estadio'),(542,11,'COR.Las Margaritas'),(543,12,'GUJ.Buenavista'),(544,18,'ANT.Parque San Pedro'),(545,1,'BOG.Bosa Carlos Alban'),(546,1,'BOG.Bochica'),(547,57,'VAL.Cerrito'),(548,57,'VAL.Andalucia'),(549,57,'VAL.El Cairo'),(550,57,'VAL.Bugalagrande'),(551,57,'VAL.Argelia-2'),(552,1,'BOG.Ministerio'),(553,1,'BOG.Laguneta Fatima'),(554,1,'DUI.Centro'),(555,43,'CAL.Pance'),(556,43,'CAL.Versalles'),(557,23,'PER.Japon'),(558,57,'VAL.Costa Rica'),(559,22,'MED.IND Multienlace PS'),(560,1,'BOG.Bosa San Pablo'),(561,1,'BOG.Bosa Nva Granada'),(562,31,'SND.Barbosa'),(563,1,'DUI.San Jose Alto'),(564,57,'VAL.Ceilan'),(565,40,'VCO.Las Flores'),(566,49,'IBG.Mirolindo'),(567,50,'NAR.Aldana'),(568,50,'NAR.Consaca'),(569,50,'NAR.Guachaves'),(570,50,'NAR.Izcuazan'),(571,50,'NAR.Sapuyes'),(572,50,'NAR.Gualmatan'),(573,27,'BOY.Chiquinquira-3'),(574,50,'NAR.Imues'),(575,50,'NAR.Payan'),(576,50,'NAR.Puerres'),(577,25,'RIS.El Eden'),(578,43,'CAL.Canaverales'),(579,13,'MAG.Fundacion-2'),(580,1,'BOG.Oikos'),(581,39,'VCH.Puerto Oriente'),(582,11,'COR.Pueblo Nuevo-2'),(583,22,'MED.Las Mercedes'),(584,7,'BAR.Concepcion-2 (P1)'),(585,3,'CUN.Via Tocaima Girardot'),(586,23,'PER.Centenario'),(587,22,'MED.Cundinamarca La Paz'),(588,49,'IBG.La Quinta'),(589,23,'PER.La Pradera'),(590,25,'RIS.Automotora'),(591,12,'MAG.Zona Bananera'),(592,1,'BOG.Rincon Modelia'),(593,22,'MED.IND Pavimentar'),(594,57,'VAL.Panorama'),(595,10,'CES.Becerril'),(596,1,'BOG.Sosiego'),(597,18,'ANT.Uramita'),(598,57,'VAL.Guacari-2'),(599,30,'NOR.Cucutilla-2'),(600,57,'VAL.Calima'),(601,1,'BOG.Circunvalar-3:P2'),(602,57,'VAL.El Tiple'),(603,45,'CAU.Santander-1'),(604,22,'MED.Buenos Aires-2'),(605,55,'TUL.Inmaculada'),(606,1,'BOG.Rb Hacienda'),(607,1,'BOG.Marroquinera-3'),(608,10,'CES.Costilla'),(609,48,'HUI.Palestina'),(610,5,'SOA.Malachi:P1'),(611,5,'SOA.El Altico'),(612,54,'TOL.La Sierra'),(613,10,'CES.Rio de Oro'),(614,55,'TUL.La 14'),(615,19,'CAD.Dorada Ferias'),(616,1,'BOG.J Vargas'),(617,19,'CAD.Los Lobos'),(618,23,'PER.Pueblo Sol'),(619,18,'ANT.Antioquia'),(620,10,'CES.Ultimo Caso'),(621,48,'QUI.Parque del Cafe'),(622,48,'HUI.Palestina'),(623,1,'BOG.Brasilia'),(624,1,'JAM.Circunvalar'),(625,9,'CAR.El Conde'),(626,43,'CAL.San Vicente'),(627,13,'STA.Via Alterna'),(628,43,'CAL.Puente Palma'),(629,7,'BAR.Murillo-2 (P1)'),(630,55,'TUL.Bosquesito'),(631,23,'PER.Cuba-3'),(632,16,'SUC.Sampues'),(633,16,'SUC.San Marcos-3'),(634,11,'COR.Ayapel'),(635,1,'BOG.Modelo Sur'),(636,40,'VCO.Cai Catama-2'),(637,11,'COR.Ure'),(638,11,'COR.Ayapel-3'),(639,11,'COR.Cienaga de Oro-2'),(640,22,'MED.La Finca ALT2'),(641,30,'NOR.Chinacota-3'),(642,43,'CAL.Valle del Lili ALT-6'),(643,43,'CAL.Valle del Lili ALT-4'),(644,43,'CAL.Valle del Lili ALT-2'),(645,1,'BOG.Centro Metropolis'),(646,22,'MED.Los Colores(T1)'),(647,1,'BOG.Bosa-2'),(648,22,'MED.Camino Real'),(649,48,'HUI.Campo Alegre'),(650,22,'MED.El Carmelo'),(651,25,'RIS.Santa Rosa-4:H3'),(652,12,'MAG.Fundacion-1'),(653,15,'SIN.Argelia'),(654,1,'BOG.AC Nielsen'),(655,15,'SIN.Bloques-2'),(656,15,'SIN.Santa Cecilia'),(657,1,'BOG.IND Finandina 72'),(658,18,'ANT.Armenia'),(659,1,'BOG.Chuniza-2'),(660,28,'BUC.La Cumbre-2'),(661,7,'BAR.Uninorte-2 (P2)'),(662,12,'MAG.Chivolo-2'),(663,12,'MAG.Chivolo'),(664,1,'BOG.Las Lomas'),(665,28,'BUC.La Cumbre-2'),(666,22,'MED.Camino Real'),(667,1,'CAQ.San Vicente-4'),(668,49,'IBG.Parque Galarza'),(669,1,'BOG.Alcazares'),(670,1,'HUI.Pitalito-7'),(671,1,'BOG.Chico Reservado-3'),(672,1,'PER.Clinica Risaralda'),(673,1,'Cal.Caney-4'),(674,1,'NEI.Yamuna'),(675,1,'BOG.Toberin-2'),(676,1,'ANT.Puerto Triunfo'),(677,1,'CAS.El Duya'),(678,1,'MED.IE Carlos Cortes ALT2'),(679,1,'NAR.LaLlanada'),(680,1,'FAC.Via Mancilla'),(681,1,'CAU.Ovejas'),(682,1,'NAR.Carlosama'),(683,1,'SOA.SDS Hogares'),(684,1,'ANT.Barbosa'),(685,1,'PER.Villa de Leyva'),(686,1,'BOG.IND Geofundaciones'),(687,22,'MED.Milla de Oro'),(688,43,'CAL.Polo'),(689,1,'BOY.Aquitania-3'),(690,1,'BGA.Albergue'),(691,1,'MON.Plaza (P1)'),(692,1,'CAL.Miraflores-2'),(693,1,'MON.Plaza (P1)'),(694,1,'CAL.Boca Junior'),(695,1,'CAR.Cartagenita'),(696,1,'SUC.Morroa'),(697,1,'BGA.Molinos'),(698,1,'CES.Zapatosa'),(699,22,'MED.Las Esmeraldas'),(700,1,'HUI.Pitalito-4'),(701,1,'CAL.Caney-4'),(702,1,'VAL.Yumbo-5'),(703,1,'MED.RB Yarumito ALT1'),(704,1,'MED.Itagui-4 ALT1'),(705,1,'VAL.Yumbo-5'),(706,1,'NAR.Tangua-2'),(707,1,'VAL.El Bolo'),(708,1,'BOG.Chico Reservado-3'),(709,1,'GUJ.OPM'),(710,1,'VCO.La Campina-2'),(711,1,'VCO.La Campina-2'),(712,1,'BOG.Las Mercedes'),(713,1,'SIN.Bongo'),(714,1,'ANT.Puerto Triunfo'),(715,1,'CAD.Dorada-3'),(716,1,'BUC.Alcaldia'),(717,1,'CAL.Aranjuez'),(718,1,'SOG.El Sol'),(719,1,'HUI.Pitalito-4'),(720,22,'MED.Itagui Olimpica ALT1'),(721,22,'MED.Itagui GMAS ALT1'),(722,1,'BOG.Cade Kennedy'),(723,22,'MED.Transito Itagui ALT1'),(724,1,'RIS.Boqueron'),(725,1,'CAQ.San Vicente-6'),(726,1,'CAS.Paz de Ariporo-4'),(727,1,'PER.Bosques de Cuba'),(728,1,'NEI.Centro'),(729,1,'TOL.Sicomorro'),(730,1,'FAC.Santa Isabel'),(731,1,'BOG.Alcazares'),(732,1,'CAL.Ciudad 2000'),(733,1,'FAC.Santa Isabel'),(734,1,'SOG.El Sol'),(735,1,'ATL.Sabana Larga-4'),(736,1,'SND.Rb Ciudadela GironH1'),(737,1,'BOG.Los Olivos-3'),(738,1,'CUN.Choachi-2'),(739,1,'SND.Rb Ciudadela GironH1'),(740,1,'BUC.Parque Industrial-2'),(741,1,'ATL.Sabana Larga-4'),(742,1,'MON.Centro-5'),(743,1,'PER.Ley Circunvalar'),(744,1,'CAD.Belalcazar'),(745,1,'NEI.Yamuna'),(746,1,'NEI.Fortaleza:P5'),(747,1,'MED.Colanta'),(748,1,'TOL.Sicomoro'),(749,1,'IBG.Simon Bolivar'),(750,1,'BOY.Aquitania-3'),(751,1,'NEI.Fortaleza:P3'),(752,1,'HUI.Ecopetrol'),(753,22,'MED.Las Esmeraldas'),(754,1,'MAG.El Pinon'),(755,1,'PUT.Villa Garzon-2'),(756,1,'MAG.El Pinon'),(757,22,'MED.Cl Manuel Uribe'),(758,1,'\"	BOG.Los Olivos-3\"');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-16  4:53:44