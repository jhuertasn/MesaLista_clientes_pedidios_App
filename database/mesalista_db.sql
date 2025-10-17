CREATE DATABASE  IF NOT EXISTS `mesalista_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mesalista_db`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mesalista_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(16) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `documento` varchar(12) NOT NULL,
  `tarjeta` varchar(50) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `direccion` varchar(200) NOT NULL,
  `creado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `actualizado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documento` (`documento`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Pedro Sánchez Haylas','970555444','pedro.sanchez@example.com','55667788','************9318',1,'Jr. Lima 234 Surco','2025-06-28 16:27:57','2025-10-15 02:10:51'),(2,'Luis Javier González','981234567','luis.gonzalez@example.com','99001122','************1122',1,'Jr. Pescadores 123 Surco','2025-06-28 16:27:57','2025-10-15 00:32:47'),(3,'Andrea Rojas Mamani','984321654','andrea.rojas@example.com','46129948','************9948',0,'Av. Jorge Chávez 450 Surco','2025-06-28 16:27:57','2025-10-14 20:52:18'),(4,'Luis Raúl Montenegro','991876543','carlos.montenegro@example.com','10010011','************5672',0,'Calle San Marcos 567 Chorrillos','2025-06-28 16:27:57','2025-10-14 22:30:13'),(5,'Mariana Ignacia Paredes Tello','972345678','mariana.paredes@example.com','10010012','************0112',1,'Jr. Los Álamos 321 Surco','2025-06-28 16:27:57','2025-10-14 18:41:05'),(6,'Ricardo Levi Linares Alvarado','989543210','ricardo.linares@example.com','10010013','************0013',1,'Av. El Sol 890 Chorrillos','2025-06-28 16:27:57','2025-10-14 18:41:05'),(7,'Rosa Gabriela Herrera Torres','998112233','rosa.herrera@example.com','10010014','************0014',1,'Calle Santa Rosa 768 Surco','2025-06-28 16:27:57','2025-10-14 18:41:05'),(8,'Fernando Nicolás Salas Higuera','987654320','fernando.salas@example.com','10010015','************0015',1,'Jr. Huaylas 222 Surco','2025-06-28 16:27:57','2025-10-14 18:41:05'),(9,'Lucía Herrera Henríquez','986543210','lucia.herrera@example.com','10010016','************0016',1,'Av. Caminos del Inca 987 Surco','2025-06-28 16:27:57','2025-10-14 18:41:05'),(10,'Diego José Ramírez Justo','981112233','diego.ramirez@example.com','10010017','************0017',1,'Calle Los Jardines 555 Chorrillos','2025-06-28 16:27:57','2025-10-14 18:41:05'),(11,'Paola Germán Cárdenas','975123456','paola.cardenas@example.com','10010018','************0018',1,'Jr. Doña Delmira 105 Chorrillos','2025-06-28 16:27:57','2025-10-14 18:41:05'),(12,'Sergio Daniel Guzmán Contreras','988765432','sergio.guzman@example.com','10010019','************0019',1,'Av. Defensores del Morro 800 Surco','2025-06-28 16:27:57','2025-10-14 18:41:05'),(13,'Natalia Elena Barrera','971223344',NULL,'10010020',NULL,1,'Calle Monte de los Olivos 214 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(14,'Héctor José Valenzuela Reyes','967889900',NULL,'10010021',NULL,1,'Jr. San Sebastián 902 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(15,'Isabel Mary Castro Calle','973456789',NULL,'10010022',NULL,1,'Av. Pedro Venturo 634 Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(16,'Esteban Ignacio Rivas Sucre','976112244',NULL,'10010023',NULL,1,'Jr. Ballestas 432 Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(17,'Melisa Navarro Altamirano','986778899',NULL,'10010024',NULL,1,'Calle Los Cedros 210 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(18,'Tomás Santiago Aguirre Casas','972334455',NULL,'10010025',NULL,1,'Av. Guardia Civil 301 Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(19,'Karla María Mendoza Figueroa','980112233',NULL,'10010026',NULL,1,'Jr. San Borja Norte 202 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(20,'Jorge Dan Zambrano Peña','997654321',NULL,'10010027',NULL,1,'Av. Alameda Sur 601 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(21,'Rosario Vélez Vidal','984556677',NULL,'10010028',NULL,1,'Calle Doña Juana 131 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(22,'Miguel Ángel Campos Ayamamani','979876543',NULL,'10010029',NULL,1,'Av. Alameda San Marcos 701 Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(23,'Tatiana Lola Morales Mamani','961122334',NULL,'10010030',NULL,1,'Calle Las Gardenias 115 Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(24,'Álvaro Vásquez Reyes','969123456',NULL,'10010031',NULL,1,'Jr. Tambo de Oro 400 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(25,'Verónica Nicole Estrella Espinoza','995112233',NULL,'10010032',NULL,1,'Av. Velasco Astete 1020 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(26,'Ramiro Rúa Sáenz','994223344',NULL,'10010033',NULL,1,'Av. Huaylas 1500 Chorrillos Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(27,'Leticia Eugenia Rivas','993334455',NULL,'10010034',NULL,1,'Calle Las Violetas 309 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(28,'Julio Alcántara Meneses','965443322',NULL,'10010035',NULL,1,'Jr. Los Pinos 112 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(29,'Valeria Sofía Soto Germosén','962345678',NULL,'10010036',NULL,1,'Av. Cristóbal de Peralta Norte 750 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(30,'Renato Hugo Tintaya Vega','961234567',NULL,'10010037',NULL,1,'Calle Las Lomas 134 Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(31,'Camila Abigail Lozano','989123456',NULL,'10010038',NULL,1,'Av. Caminos del Inca 300 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(32,'Jonathan de Jesús Herrera','981223344',NULL,'10010039',NULL,1,'Jr. Santa Rosa 250 Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(33,'Alejandra Díaz Mampero','974321987',NULL,'10010040',NULL,1,'Calle Las Acacias 101 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(34,'Liliana María Mendoza','950117233',NULL,'60010026',NULL,1,'Jirón Júpiter 221 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(35,'Brígida Fernández Hidalgo','623115048',NULL,'63957741',NULL,1,'Calle Pinales 88 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(36,'Ariel Camilo Peña','951245774',NULL,'48597445',NULL,1,'Calle Las Lilas 123 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(37,'Helen Cuadros Hidalgo','232151948',NULL,'41984562',NULL,1,'Calle Las Lilas 155 Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(38,'Feliciana Dani Amaya Llopis','995822412',NULL,'75213198',NULL,1,'Av. Alameda Sur 458,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(39,'Jose Ignacio Jacinto Chaparro','913356886',NULL,'11249419',NULL,1,'Jr. Jorge Chávez 213,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(40,'Inmaculada Manu Bonet Roca','942868828',NULL,'90607503',NULL,1,'Calle Las Gaviotas 178,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(41,'Amílcar Amor Bueno Gil','928728463',NULL,'49289263',NULL,1,'Av. Alameda Sur 458,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(42,'Joan Anselma Amor Flor','983197857',NULL,'54623809',NULL,1,'Jr. Ballestas 977,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(43,'Lilia Florentina Rivas Giménez','989254563',NULL,'25251262',NULL,1,'Av. Ayacucho 550,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(44,'Vidal Dolores Lobo Agudo','914265799',NULL,'42384885',NULL,1,'Av. Huaylas 308,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(45,'Martina Noelia Cuervo Rocamora','922575562',NULL,'36170644',NULL,1,'Calle Manco Cápac 221,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(46,'Noé Leopoldo Cortés Garrido','941227216',NULL,'43698567',NULL,1,'Av. Velasco Astete 1023,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(47,'María Carmen Nicodemo Bru','990801586',NULL,'99980907',NULL,1,'Av. Huaylas 308,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(48,'Ricardo Cleto Palomar Núñez','985329037',NULL,'88808839',NULL,1,'Calle Manco Cápac 221,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(49,'Elisabet Aroca Segovia','997226012',NULL,'44101477',NULL,1,'Av. Tomás Marsano 1080,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(50,'Brunilda Edelmira Pinedo Bermúdez','966306997',NULL,'34080873',NULL,1,'Calle Las Gaviotas 178,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(51,'Carmina Jazmin Pardo Fernández','970291817',NULL,'28099938',NULL,1,'Av. La Merced 651,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(52,'Julie Buenaventura Arroyo Goñi','947338124',NULL,'28257073',NULL,1,'Av. Huaylas 308,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(53,'María Teresa Bernal Guerrero','931429110',NULL,'46985553',NULL,1,'Av. Ayacucho 550,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(54,'Roxana Cosme Pinto Lobo','955667651',NULL,'50156553',NULL,1,'Jr. Jorge Chávez 213,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(55,'Minerva Fabiola Patiño Cánovas','930868105',NULL,'99826109',NULL,1,'Calle Manco Cápac 221,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(56,'Raimundo Pedro Gallego Lasa','955176955',NULL,'68660891',NULL,1,'Av. Alameda Sur 458,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(57,'Judith Isabela Bellido Donoso','922448136',NULL,'33826133',NULL,1,'Av. Benavides 113,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(58,'Bibiana Luisina Hierro Cárdenas','922981052',NULL,'43147995',NULL,1,'Av. Benavides 928,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(59,'Óscar Reynaldo Lerma Gimenez','956164955',NULL,'14261580',NULL,1,'Av. Pedro Venturo 450,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(60,'Isidora Marín Justo Grande','945503389',NULL,'21863917',NULL,1,'Av. Defensores del Morro 181,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(61,'Paca Amílcar Morales Quiroz','971662963',NULL,'56534846',NULL,1,'Av. Tomás Marsano 1080,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(62,'Julio Blas Galván Miranda','926753883',NULL,'27082486',NULL,1,'Av. Benavides 113,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(63,'Iván Gabriel Valera Priego','920576383',NULL,'45807893',NULL,1,'Av. Tomás Marsano 1080,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(64,'Soledad Yaiza Segarra Clavero','949349722',NULL,'47792013',NULL,1,'Av. Pedro Venturo 450,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(65,'Manuel Emilio Huerta Jódar','958537831',NULL,'91536387',NULL,1,'Av. La Merced 651,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(66,'Margarita Daniela Romero Pujols','935808537',NULL,'34305904',NULL,1,'Jr. Ballestas 977,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(67,'Porfirio Isidoro Chacón Vergara','916150444',NULL,'66920359',NULL,1,'Calle Las Gaviotas 178,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(68,'Ana Ciriaco Arévalo','948840994',NULL,'41684089',NULL,1,'Jr. Ballestas 977,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(69,'Abril Eulalia Cuesta Roca','941244663',NULL,'87659372',NULL,1,'Av. Alameda Sur 458,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(70,'Débora Bernarda Plaza Pizarro','961019678',NULL,'33244599',NULL,1,'Jr. Jorge Chávez 213,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(71,'Betty Adelina Henríquez Iglesias','970855700',NULL,'73244877',NULL,1,'Av. Benavides 928,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(72,'Carolina Rosalinda Alberti Carbó','931831063',NULL,'76490597',NULL,1,'Av. Benavides 928,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(73,'Isabel Sonia Laza Nieto','957683626',NULL,'62718356',NULL,1,'Calle Manco Cápac 221,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(74,'Dani Virginia Arroyo Cruz','999949389',NULL,'74119995',NULL,1,'Jr. Jorge Chávez 213,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(75,'Wilfredo Abraham Lago Valle','996977837',NULL,'82444910',NULL,1,'Jr. Ballestas 977,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(76,'María Belén Vera Camino','991756179',NULL,'89864568',NULL,1,'Av. Paseo de La República 6050,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(77,'Sabina Eufemia Martín Vera','981691040',NULL,'11988115',NULL,1,'Calle Las Gaviotas 178,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(78,'Emelina Heliodoro Coronado Pereira','931931511',NULL,'50346871',NULL,1,'Av. El Polo 745,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(79,'María Belén Felix Morante','960929647',NULL,'25770014',NULL,1,'Jr. Jorge Chávez 213,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(80,'Amaya Carmín Caparrós Parejo','995899313',NULL,'57809460',NULL,1,'Av. Tomás Marsano 1080,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(81,'Selena Paz Meléndez Veras','939476249',NULL,'21737266',NULL,1,'Av. Caminos del Inca 716,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(82,'José Ángel Bermúdez Boada','917507864',NULL,'15257950',NULL,1,'Calle Las Gaviotas 178,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(83,'Lupita Amalia Bayón Casas','914308421',NULL,'91077954',NULL,1,'Av. Caminos del Inca 716,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(84,'Eduardo Jorge Talavera Dalmau','963843426',NULL,'39615929',NULL,1,'Jr. Jorge Chávez 213,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(85,'Juan Manuel Belén Rocha','918883684',NULL,'94845781',NULL,1,'Calle Manco Cápac 221,  Chorrillos','2025-06-28 16:27:57','2025-06-28 16:27:57'),(86,'Úrsula Calixta Fuentes Mesa','986125617',NULL,'75381128',NULL,1,'Av. Caminos del Inca 716,  Surco','2025-06-28 16:27:57','2025-06-28 16:27:57'),(87,'Iris Hilda Barea Ríos','938538251',NULL,'82368299',NULL,0,'Calle Los Faisanes 516,  Surco','2025-06-28 16:27:57','2025-10-14 20:51:33'),(88,'Joel Suarez janampa','989898999','joel@gmail.com','00000000','****************1223',1,'av siempre viva 123','2025-10-14 23:09:59','2025-10-14 23:09:59'),(94,'Raul Pajuelo Torres','987678789','alejandro@gmail.com','45656766','***********1222',1,'Av siempre viva 123','2025-10-14 23:58:14','2025-10-15 00:00:56'),(95,'Jose Ortega Panduro','987898267','yaser@gmail.com','12665565','***********7656',1,'av honduras 202','2025-10-15 02:08:55','2025-10-15 02:09:34');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `id` int unsigned NOT NULL,
  `unidad` varchar(25) NOT NULL,
  `placa` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `placa` (`placa`),
  CONSTRAINT `fk_delivery_empleado` FOREIGN KEY (`id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (4,'Mototaxi','2102-JD'),(6,'Moto','3400-AE'),(9,'Mototaxi','EGKJ-N0'),(13,'Moto','BAZG-0P');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pedido_id` int unsigned NOT NULL,
  `producto_id` int unsigned NOT NULL,
  `cantidad` tinyint unsigned NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `estado` tinyint unsigned NOT NULL DEFAULT '1',
  `comentario` varchar(60) DEFAULT NULL,
  `creado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `actualizado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dias`
--

DROP TABLE IF EXISTS `dias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dias` (
  `id` tinyint unsigned NOT NULL,
  `nombre` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dias`
--

LOCK TABLES `dias` WRITE;
/*!40000 ALTER TABLE `dias` DISABLE KEYS */;
INSERT INTO `dias` VALUES (7,'Domingo'),(4,'Jueves'),(1,'Lunes'),(2,'Martes'),(3,'Miércoles'),(6,'Sábado'),(5,'Viernes');
/*!40000 ALTER TABLE `dias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(16) NOT NULL,
  `documento` varchar(12) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `salt` varchar(64) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `nivel` tinyint unsigned DEFAULT '2',
  `estado` tinyint unsigned DEFAULT '1',
  `creado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `actualizado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documento` (`documento`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'DBADMIN','953270108','48485959','f3cf35cb784079ae31b0398e8a61ea34e2acdbd2c5a49e9adff84aae039d6950','f5eb27f525373487','(No disponible)',0,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(2,'Mariela Solorzano','987654321','42921514','2490d510ba60bc18196022ab689bba0734f184bd55d42ce54c3b517d475c3bc0','ffc3e7af97d55b85','Jirón Las Gaviotas 122 Chorrillos',1,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(3,'Andrea Mamani','976543210','87654321','02d4327d2b07e6e943e9f2eca0b1a926d70cc93add7aa8626951da3907df88d8','eda81521ba2e58e5','Jirón Las Gaviotas 355 Chorrillos',2,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(4,'Carlos José Fernández','965432109','23456789','f5b147a52ef7a99fa9d3f24271873b669c9cf6b8723368c296c2fc6177cefafb','fd0871554dc65d02','Av. Arequipa 789 Chorrillos',3,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(5,'Ana Torres','954321098','34567890','68566e411cd674c6988ec97064a77d3017c66e0d84509a66458b169e7bedd091','477a310a4c6898a4','Calle La Paz 321 Chorrillos',2,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(6,'Luis Martínez','943210987','45678901','8b66868d4cd954e6bb31a08cd8c2094fb760cf75b2809be4f86e0693714af3fe','069394a1a7d4a4b4','Av. Brasil 654 Surco',3,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(7,'Sofía Ruiz','932109876','56789012','138801d2e8970dfe3e03fc434cba82093ec5ac04ca21c1be1e77683e1429e9e5','f106df0cf55ceaa8','Calle Los Pinos 987 Chorrillos',4,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(8,'Pedro Pablo Contreras','951124055','48452001','df3768a250d685a9203129f3b56c66a125e818e68586fc014c9bee81b60616ef','a6217378978839d2','Jiron Las Gaviotas 88 Chorrillos',4,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(9,'Takumi Sakamoto','462150109','50122144','eb552fbe33a7817a0a01e46d53b4f5131371840b650d806dfe7182c935b1554d','998f0e3c4b3e15ef','Calle Huaylas 223 Surco',3,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(10,'Jorge Juan Negrete','659501248','95162840','566a9b1e7a1eeebe6af5852bbc3d8371502e58146bd5da54edb4f8cf0955a231','8cc3817e5c637c11','Calle La Joya 2332,   Chorrillos',4,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(11,'Luis Alberto Quispe Ramos','987654321','71234567','84936cfa4faabe4cf4819ab554bb4abf525a71709fb56d188fa7906a77746006','737480d51477fc06','Av. Defensores del Morro,  Chorrillos',2,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(12,'María Fernanda Huamán Paredes','976543210','72345678','c74b4ffbc546de7a4ac0344b736ccf66f4324bcba6b622a6ee254edf39d64dd4','1118bb84e7bd3fff','Jr. Pedro Silva,  Surco',3,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(13,'José Carlos Apaza Mamani','965432109','73456789','7e5db1337f4962ccdcd2adfbd53468dfff80b44ad65c4b0d1b07b0eb73e96c7f','1872fd1aa4d063d8','Calle Las Gaviotas,  Chorrillos',2,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(14,'Ana Lucía Condori Quispe','954321098','74567890','c1dc7c657790a1b1eb10160b41a4091e33262f986a18fcdfcf1e142c765064b5','6c6ce22b08be1b3d','Av. Ayacucho,  Surco',3,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(15,'Juan Diego Ticona Flores','943210987','75678901','0ef2827bc18c9981db52e190bd68ac11ebd397970ba427e001ff10fb1fe27c54','bc68412b137e0a66','Pasaje Las Palmas,  Chorrillos',2,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(16,'Rosa Elena Chuquimia Aguilar','932109876','76789012','da63ab3a6bf011edfaa064a1d3c531728a04277c0538117f0a3ea00f0a6925a1','163bc30a3d632bb1','Calle Monte de los Olivos,  Surco',3,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(17,'Carlos Eduardo Mamani Huanca','921098765','77890123','cfd18a53a85d535496d5e8c20addbf0384d5fcc5fd278b5554387f2160fb4715','46f5dc8f73cd494f','Jr. Los Próceres,  Chorrillos',2,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(18,'Fiorella Milagros Ccahuana Soto','910987654','78901234','47e86aeec30f1862abf186efd4dabfd4b6fb785028eab1b5055f03aa0d462d59','1b77d5d9fc623ff0','Av. Caminos del Inca,  Surco',3,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(19,'Andrés Martín Poma Huari','999876543','79012345','e4f93ccfec311ebd21a06d47413ab579158cd8b92c740fb618e6aa7e713df9b4','8a7aac845871c66c','Jr. Santa Leonor,  Chorrillos',2,1,'2025-06-28 16:27:57','2025-06-28 16:27:57'),(20,'Valeria Sofía Quispe Ñahui','988765432','70123456','5c0acfe2610e2733840bdf3f0a64a6ef1a0339ed3421c2cf744a3d553db74fae','0c1ad6b7270cefea','Calle Los Álamos,  Surco',3,1,'2025-06-28 16:27:57','2025-06-28 16:27:57');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidentes`
--

DROP TABLE IF EXISTS `incidentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidentes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` int unsigned NOT NULL,
  `pedido_id` int unsigned NOT NULL,
  `ubicacion` varchar(60) DEFAULT NULL,
  `estado` tinyint unsigned NOT NULL DEFAULT '1',
  `incidente` text,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `delivery_id` (`delivery_id`),
  KEY `pedido_id` (`pedido_id`),
  CONSTRAINT `incidentes_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `empleados` (`id`),
  CONSTRAINT `incidentes_ibfk_2` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidentes`
--

LOCK TABLES `incidentes` WRITE;
/*!40000 ALTER TABLE `incidentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_del_dia`
--

DROP TABLE IF EXISTS `menu_del_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_del_dia` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `producto_id` int unsigned NOT NULL,
  `dia_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_producto_dia` (`producto_id`,`dia_id`),
  KEY `idx_dia_id` (`dia_id`),
  CONSTRAINT `fk_menu_dia` FOREIGN KEY (`dia_id`) REFERENCES `dias` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_menu_producto` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_del_dia`
--

LOCK TABLES `menu_del_dia` WRITE;
/*!40000 ALTER TABLE `menu_del_dia` DISABLE KEYS */;
INSERT INTO `menu_del_dia` VALUES (1,1,1),(2,1,5),(3,2,2),(4,2,6),(5,3,3),(6,4,2),(7,4,7),(8,5,3),(9,5,5),(10,6,4),(11,6,7),(12,7,4),(13,8,4),(14,9,1),(15,9,5),(16,10,4),(17,11,2),(18,11,7),(19,12,2),(20,12,6),(21,13,1),(22,13,5),(23,14,1),(24,14,6),(25,15,2),(26,15,5),(27,16,3),(28,16,7),(29,17,2),(30,17,6),(31,18,3),(32,19,4),(33,19,7),(34,20,1),(35,20,6),(36,21,3),(37,22,4),(38,23,2),(39,23,6),(40,24,2),(41,24,7),(42,25,1),(43,25,2),(44,25,3),(45,25,4),(46,25,5),(47,25,6),(48,25,7),(49,26,1),(50,26,2),(51,26,3),(52,26,4),(53,26,5),(54,26,6),(55,26,7),(56,27,2),(57,27,6),(58,28,1),(59,28,5),(60,29,1),(61,29,2),(62,29,6),(63,30,1),(64,30,2),(65,30,3),(66,30,4),(67,30,5),(68,30,6),(69,30,7),(70,31,1),(71,31,2),(72,31,3),(73,31,4),(74,31,5),(75,31,6),(76,31,7),(77,32,3),(78,33,1),(79,33,2),(80,33,3),(81,33,4),(82,33,5),(83,33,6),(84,33,7),(85,34,3),(86,34,7),(87,35,2),(88,36,3),(89,36,4),(90,36,7),(91,37,1),(92,37,5),(93,39,2),(94,39,7),(95,40,1),(96,40,5),(97,40,6),(98,41,4),(99,41,6),(100,42,4),(101,42,7),(102,43,2),(103,43,7),(104,44,1),(105,44,5),(106,44,6),(107,45,3),(108,46,3),(109,46,7),(110,47,5),(111,47,7),(112,48,4),(113,49,4),(114,49,7),(115,50,1),(116,50,6),(117,51,3),(118,52,1),(119,52,6),(120,53,3),(121,53,6),(122,54,5),(123,54,7),(124,55,4),(125,56,3),(126,57,1),(127,57,5),(128,58,1),(129,58,2),(130,58,3),(131,58,4),(132,58,5),(133,58,6),(134,58,7),(135,59,1),(136,59,2),(137,59,3),(138,59,4),(139,59,5),(140,59,6),(141,59,7),(142,60,1),(143,60,5),(144,60,6),(145,60,7),(146,61,3),(147,61,4),(148,61,5),(149,61,7),(150,62,2),(151,62,3),(152,62,6),(153,62,7),(154,64,1),(155,64,3),(156,64,5),(157,64,6),(158,64,7),(159,65,3),(160,66,2),(161,66,4),(162,66,6),(163,67,1),(164,67,2),(165,67,5),(166,67,7),(167,68,2),(168,68,4),(169,68,5),(172,69,1),(173,69,3),(170,69,4),(174,69,6),(171,69,7);
/*!40000 ALTER TABLE `menu_del_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` int unsigned NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `hash_pedido` varchar(66) DEFAULT NULL,
  `empleado_id` int unsigned DEFAULT NULL,
  `estado_pedido` tinyint unsigned NOT NULL,
  `para_llevar` bit(1) NOT NULL DEFAULT b'0',
  `direccion_entrega` varchar(200) DEFAULT NULL,
  `delivery_id` int unsigned DEFAULT NULL,
  `fecha_pedido` timestamp NULL DEFAULT NULL,
  `creado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `actualizado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `empleado_id` (`empleado_id`),
  KEY `fk_pedidos_delivery` (`delivery_id`),
  CONSTRAINT `fk_pedidos_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,100.00,'0x1fd7cc0d062dd98b217982aeacb9beed6318da989a5ecabef869252393f9bb58',4,1,_binary '\0','Recojo en tienda',NULL,NULL,'2025-10-15 02:26:49','2025-10-15 02:26:49',1);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo_producto` tinyint unsigned NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  `imagen_url` varchar(255) DEFAULT NULL,
  `creado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `actualizado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Papa a la Huancaína',1,3.00,_binary '\0','img/productos/1749773952904_papahuancaina.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(2,'Causa de Pollo',1,3.00,_binary '','img/productos/1750392704686_causita.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(3,'Causa de Atún',1,3.00,_binary '\0','img/productos/1749778867412_causaatun.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(4,'Ocopa Arequipeña',1,3.00,_binary '\0','img/productos/1749778881120_ocopa.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(5,'Yuquitas Fritas',1,3.00,_binary '\0','img/productos/1749778952613_yucas.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(6,'Palta Rellena',1,3.00,_binary '\0','img/productos/1749778961004_palta.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(7,'Ensalada Rusa',1,3.00,_binary '\0','img/productos/1749778975685_rusa.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(8,'Sopa Criolla',1,3.00,_binary '\0','img/productos/1749778982187_sopa.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(9,'Chicharrón de Pota',1,3.00,_binary '\0','img/productos/1749778994653_pota.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(10,'Ceviche',1,3.00,_binary '\0','img/productos/1749779005043_cevicheentrada.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(11,'Ensalada Criolla',1,3.00,_binary '\0','img/productos/1749779016823_ensaladacriolla.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(12,'Gelatina',1,3.00,_binary '','img/productos/1749779025182_gelatina.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(13,'Lomo Saltado',2,9.00,_binary '\0','img/productos/1749784424316_lomosaltado.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(14,'Ají de Gallina',2,9.00,_binary '','img/productos/1749784820862_ajidegallina.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(15,'Arroz con Pollo',2,9.00,_binary '\0','img/productos/1749818505290_arrozconpollo.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(16,'Cau Cau',2,9.00,_binary '\0','img/productos/1749818629504_caucau.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(17,'Seco con Frejoles',2,9.00,_binary '','img/productos/1749795645429_seco.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(18,'Tacu Tacu con Lomo',2,9.00,_binary '\0','img/productos/1749818725914_tacutacu.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(19,'Chicharrón de Pescado',2,9.00,_binary '\0','img/productos/1749819229125_chicharronpescado.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(20,'Milanesa de pollo',2,9.00,_binary '\0','img/productos/1749795697272_milanesa.png','2025-06-28 16:27:57','2025-06-28 16:44:06'),(21,'Arroz Chaufa',2,9.00,_binary '\0','img/productos/1749795752054_chaufa.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(22,'Ceviche Mixto',2,9.00,_binary '\0','img/productos/1749819353472_cevichemixto.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(23,'Arroz Tapado',2,9.00,_binary '','img/productos/1749819489850_arroztapado.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(24,'Chupe de Pescado',2,9.00,_binary '\0','img/productos/1749819646274_chupe.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(25,'Inca Kola 500ml',3,2.80,_binary '','img/productos/1749795852125_incakola500.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(26,'Inca Kola 1.5L',3,4.00,_binary '','img/productos/1749795902146_incakola1500.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(27,'Chicha Morada',3,3.50,_binary '','img/productos/1749796014385_chicha.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(28,'Maracuyá',3,3.00,_binary '\0','img/productos/1749796113705_maracuya.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(29,'Limonada',3,3.00,_binary '','img/productos/1749820235066_limonada.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(30,'Coca-Cola Zero 500ml',3,3.00,_binary '','img/productos/1749796213072_cocacola500.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(31,'Coca-Cola Zero 1.5L',3,6.00,_binary '','img/productos/1749796276274_cocacola1500.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(32,'Jugo de Naranja',3,3.50,_binary '\0','img/productos/1749796322929_naranja.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(33,'Agua con gas 500ml',3,2.00,_binary '','img/productos/1749820367920_aguagas.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(34,'Chicha de Jora',3,3.50,_binary '\0','img/productos/1749820459880_jora.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(35,'Té de Hierba Luisa',3,3.00,_binary '\0','img/productos/1749820556588_hierbaluisa.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(36,'Jugo de Sandía',3,3.50,_binary '\0','img/productos/1749820669696_sandia.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(37,'Jugo de Carambola',3,3.00,_binary '\0','img/productos/1749820781605_carambola.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(38,'Jugo de Manzana',3,3.50,_binary '\0','img/productos/1749820843678_manzana.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(39,'Helado tricolor',4,4.00,_binary '\0','img/productos/1749844214564_helado.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(40,'Torta tres leches',4,4.50,_binary '','img/productos/1749844453290_3leches.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(41,'Flan de Vainilla',4,3.50,_binary '','img/productos/1749844522430_flandevainilla.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(42,'Helado de vainilla',4,2.50,_binary '\0','img/productos/1749844607579_heladovainilla.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(43,'Arroz con Leche',4,3.00,_binary '\0','img/productos/1749796377208_arrozconleche.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(44,'Crema Volteada',4,3.50,_binary '','img/productos/1749844751199_cremavolteada.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(45,'Aeropuerto',2,9.50,_binary '\0','img/productos/1749819717960_aeropuerto.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(46,'Mazamorra de Durazno',4,2.80,_binary '\0','img/productos/1749844843607_mazamorraduraaz.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(47,'Leche de tigre',1,3.00,_binary '\0','img/productos/1750047824808_leche.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(48,'Rocoto Relleno',2,9.00,_binary '\0','img/productos/1749819930172_rocoto.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(49,'Refresco de Chirimoya',3,4.00,_binary '\0','img/productos/1749820951367_chirimoya.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(50,'Tequeños con guacamole',1,3.00,_binary '','img/productos/1749819000079_tequenos.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(51,'Sopa de la casa',1,2.50,_binary '\0','img/productos/1749819078637_sopacasa.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(52,'Sopa de mote',1,2.50,_binary '','img/productos/1749819153011_sopamote.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(53,'Picarones',4,8.00,_binary '','img/productos/1749844894914_picarones.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(54,'Pollo Broaster',2,9.00,_binary '\0','img/productos/1749820046499_broaster.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(55,'Pollo Saltado',2,9.50,_binary '\0','img/productos/1749775712607_pollosaltado.png','2025-06-28 16:27:57','2025-06-28 16:37:54'),(56,'Alitas Broaster',1,3.00,_binary '\0','img/productos/1749875397783_alitasBroaster.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(57,'Bistek a lo Pobre',2,10.00,_binary '\0','img/productos/1749875679090_bistek.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(58,'Arroz Blanco',5,5.00,_binary '','img/productos/1750123782467_arrozblanco.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(59,'Papas fritas',5,5.50,_binary '','img/productos/1750123857312_papafrita.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(60,'Camote frito',5,5.50,_binary '','img/productos/1750123892081_camote.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(61,'Papa sancochada',5,4.50,_binary '\0','img/productos/1750123939310_papahervida.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(62,'Camote sancochado',5,4.50,_binary '','img/productos/1750123961014_camotehervido.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(63,'Arroz chaufa clásico',5,6.00,_binary '\0','img/productos/1750124027802_arrozchaufa.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(64,'Yucas fritas',5,6.00,_binary '','img/productos/1750124048220_yucafrita.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(65,'Maduro frito',5,6.00,_binary '\0','img/productos/1750124071507_maduro.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(66,'Ensalada de palta',5,5.00,_binary '','img/productos/1750136196333_ensapalta.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(67,'Ensalada César',5,4.50,_binary '\0','img/productos/1750136276038_cesar.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(68,'Pico de gallo',5,4.50,_binary '\0','img/productos/1750136444178_picodegallo.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54'),(69,'Nuggets de pollo',5,6.00,_binary '','img/productos/1750136551107_nuggets.jpg','2025-06-28 16:27:57','2025-06-28 16:37:54');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-17 14:14:17
