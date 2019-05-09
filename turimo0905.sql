CREATE DATABASE  IF NOT EXISTS `turismo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `turismo`;

--
-- Host: localhost    Database: turismo
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actividades` (
  `id` int(3) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` decimal(6,2) NOT NULL DEFAULT '0.00',
  `horario` varchar(250) DEFAULT NULL,
  `descripcion` longtext,
  `url` varchar(300) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `idSubtipo` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_actividades_subtipos1_idx` (`idSubtipo`),
  CONSTRAINT `fk_actividades_subtipos1` FOREIGN KEY (`idSubtipo`) REFERENCES `subtipos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'Rijksmuseum',17.50,'todos los días de 9.00 a 17.00 H','El Rijksmuseum (Museo Nacional) está considerado como el mejor museo de Holanda. Con la mayor colección de cuadros del Siglo de Oro holandés atrae a cerca de dos millones de visitantes anuales.','https://www.rijksmuseum.nl/en','Jan Luijkenstraat 1',NULL,NULL,1),(2,'Barrio Judío ',0.00,NULL,'El barrio judío, con un tamaño de tan sólo un kilómetro cuadrado, está situado en el centro de Ámsterdam, al sur de Nieuwmarkt.El barrio tiene muchos monumentos como el Museo Histórico Judío, que se encuentra dentro de la impresionante Sinagoga portuguesa, un magnífico edificio construido en 1675, el Memorial del Holocausto, y el Museo de los Niños.','https://www.amsterdam.net/es/barrio-judio/ ',NULL,NULL,NULL,2),(3,'Casa Anna Frank ',10.00,'Todos los días de 9:00 a 19:00 ,los sábados que el horario es 9:00 a 22:00.','Es un museo dedicado a la diarista de guerra judía Ana Frank. La familia Frank se escondió el 6 de julio de 1942 en el inmueble de la calle Prinsengracht 263. Este es el inmueble comercial de la compañía de Otto Frank. Más tarde, la familia Van Pels y Fritz Pfeffer se unieron a ellos. Las instalaciones comerciales de Otto constan de dos partes. Una casa delantera y una casa de atrás Las ocho personas escondidas permanecen en los pisos superiores de la casa de atrás. ','https://www.annefrank.org/es/ ',NULL,NULL,'sitio3.png',1),(4,'Plaza Dam ',0.00,NULL,'La Plaza Dam es la plaza más importante de Ámsterdam y marca el punto donde se encontraba la primera presa del río Amstel en el siglo XIII. Es el lugar en torno al cual fue creada la ciudad y se encuentra rodeada de monumentos y edificios históricos, entre los que destacan el Monumento Nacional y el Palacio Real.  Es el mejor lugar para relajarse y para observar el ambiente tan animado que se respira en la ciudad. Si visitáis Ámsterdam en alguna fiesta especial, es muy probable que encontréis conciertos y otros eventos en la Plaza Dam.','https://www.disfrutaamsterdam.com/plaza-dam ',NULL,NULL,'sitio4.png',2),(5,'Museo Van Gogh ',19.00,'9:00h - 19:00h, Viernes y sábados 9:00h - 21:00h ','El Museo Van Gogh es el segundo museo más visitado de Ámsterdam con más de 2 millones de visitantes anuales. En las modernas instalaciones del Museo Van Gogh podréis encontrar más de 200 pinturas, 500 dibujos y cientos de cartas del artista.','https://www.vangoghmuseum.nl/download/f9db023e-235b-41fa-8f75-b9567b2a34fa.pdf ',NULL,NULL,'sitio5.png',1),(6,'Vondelpark ',0.00,NULL,'El Vondelpark es el parque más grande de Ámsterdam y el lugar preferido para caminar, pasear en bicicleta, practicar deportes, comer al aire libre o relajarse sentado en alguno de sus cafés con terraza.','https://www.disfrutaamsterdam.com/vondelpark ',NULL,NULL,'sitio6.png',2),(7,'Spui',0.00,NULL,'La Plaza Spui es un agradable lugar donde pasear sin prisa, tomar un café, leer o conseguir obras de arte y libros.','https://www.visitandoeuropa.com/amsterdam/lugares-interes/spui ',NULL,NULL,'sitio7.png',2),(8,'Coffee Shop',0.00,'Los horarios de la mayoría de los establecimientos ronda desde las 9:00 hasta la 1:00','Es un lugar donde el protagonista no es el buen café sino el hachís y la marihuana. Estos lugares son legales, aunque bastantes vigilados por la ley. Hay algunos vacíos legales bastante irónicos, como por ejemplo, los Coffeeshops pueden venderte marihuana, pero no pueden comprarla a los productores y  el consumo y la venta en estos lugares está permitido pero está prohibido consumir en la calle. Así que todos pretendemos que la hierba crece naturalmente en el establecimiento.',NULL,NULL,NULL,'sitio8.png',2),(9,'Museo de Rembrant',13.00,'Todos los días: de 10:00 a 18:00 horas.','Maestro de la técnica pictórica, del dibujo y del grabado, Rembrandt compró esta casa en 1639 cuando era un artista de éxito. En 1656 se declaró en quiebra porque las deudas le ahogaban, así que todos los objetos de valor de la casa acabaron siendo subastados. La parte más importante de la casa es la sala donde pintó sus obras maestras. Además de esta sala también se puede visitar la cocina, algunas habitaciones y una sala de arte donde se recogen los objetos que utilizaba como modelos para sus pinturas y las de sus alumnos, tales como figuras de yeso, animales extraños o caracolas.','https://www.disfrutaamsterdam.com/museo-rembrandt ',NULL,NULL,'sitio9.png',1),(10,'Oude Kerk',10.00,'De lunes a sábado: de 10:00 a 18:00 horas. Domingos: de 13:00 a 17:30 horas.Cerrada el 25 de diciembre, el 1 de enero y el 30 de abril.','Fue construida en 1302 y es el edificio más antiguo de la ciudad. La iglesia comenzó siendo una capilla de madera que con el paso de los años se fue ampliando hasta convertirse en una gran basílica gótica. Está ubicada en el corazón del Barrio Rojo. El interior de la iglesia Oude Kerk quedó sin decoración en 1566 por culpa del movimiento iconoclasta. Es importante prestar atención al enorme techo abovedado de madera que aún conserva algunas pinturas del siglo XV, las preciosas vidrieras que se mantienen intactas y su órgano mayor, un instrumento que cobra aún más importancia ante la escasa decoración que se conserva en la iglesia.','https://www.disfrutaamsterdam.com/oude-kerk',NULL,NULL,'sitio10.png',2),(11,'The Lobby Nesplein Restaurant & Bar: ',36.00,NULL,'Rango de precios: 8 € - 36 €. Dietas especiales: opciones vegetarianas, opciones veganas y opciones sin gluten.','https://www.thelobbynesplein.nl/en/index.html?utm_source=tripadvisor&utm_medium=referral','Nes 49 Hotel V Nesplein, 1012 KD Ámsterdam',NULL,'rest1.png',3),(12,'De Blauwe Hollander:',20.00,NULL,NULL,'http://www.deblauwehollander.nl/?utm_source=tripadvisor&utm_medium=referral','Leidsekruisstraat 28, 1017 RJ Ámsterdam',NULL,'rest2.png',3),(13,'Foodhallen:',20.00,NULL,'Rango de precios: 11€-20€ Opciones vegetarianas, Opciones veganas, Opciones sin gluten',' https://www.foodhallen.nl/','Bellamy Plein 51, 1053 AT Ámsterdam ',NULL,'rest3.png',3),(14,'McDonald\'s',15.00,NULL,'Rango de precios: 8€-15€',' https://www.mcdonalds.nl/restaurant',NULL,NULL,'rest4.png',4),(15,'Febo',9.00,NULL,'Rango de precios: 4€-9€',' https://www.febo.nl/',NULL,NULL,'rest5.png',4),(16,'Kfc',20.00,NULL,'Rango de precios: 6€-20€','https://www.kfc.nl/',NULL,NULL,'rest6.png',4),(17,'Il Pacioccone :',35.00,NULL,'Rango de precios : 20 € - 35 €','http://www.theredwinedistrict.com/il-pacioccone/?utm_source=tripadvisor&utm_medium=referral',' Koggestraat 1A, 1012 NC Ámsterdam',NULL,'rest7.png',5),(18,'The French connection ',60.00,NULL,'( Cocina francesa,aunque también europea y asiática ):Rango de precios : 30 € - 60 €',':http://www.tfcrestaurant.nl/','Singel 460, 1017 AW Amsterdam',NULL,'rest8.png',5),(19,'The Mexican',8.00,NULL,'(Cocina mexicana )','http://www.the-mexican.nl/',NULL,NULL,'rest9.png',5),(20,'Golden Temple',10.00,NULL,'Rango de precios: 7€-10€','  http://www.restaurantgoldentemple.com/','Utrechtsestraat 126, 1017 VT Amsterdam',NULL,'rest10.png',6),(21,'Pompstation',25.00,NULL,'Rango de precios de 5 € - 25 €. Dietas especiales: Opciones vegetarianas y opciones sin gluten',' http://www.pompstation.nu/','Zeeburgerdijk 52, 1094 AE Amsterdam',NULL,'rest11.png',6),(22,'Deshima ',20.00,NULL,'Rango de precios de 5 € - 20 €. ','http://www.veganamsterdam.org/deshima-restaurant/',' Weteringschans 65, 1017 RX Ámsterdam',NULL,'rest12.png',6),(23,'De Bolhoed:',25.00,NULL,'Rango de precios: 15€-25€','https://www.tripadvisor.es/Restaurant_Review-g188590-d696914-Reviews-De_Bolhoed-Amsterdam_North_Holland_Province.html','Prinsengracht 60-62, 1015DX Ámsterdam',NULL,'rest13.png',7),(24,'Juice by nature',10.00,NULL,'Rango de precios: 6€-10€','https://www.juicebynature.com','Warmoesstraat 108, 1012 JJ Amsterdam',NULL,'rest14.png',7),(25,'Vegabond',15.00,NULL,'Rango de precios: 6€-15€','https://vegabond.nl/','Leliegracht 16, 1015 CK Amsterdam',NULL,'rest15.png',7);
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia_actividad`
--

DROP TABLE IF EXISTS `experiencia_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `experiencia_actividad` (
  `orden` int(3) NOT NULL,
  `idExperiencia` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  `numPlazas` int(3) NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaFinal` datetime NOT NULL,
  `duracion` time DEFAULT NULL,
  `precio` decimal(5,2) NOT NULL,
  PRIMARY KEY (`orden`,`idExperiencia`),
  KEY `fk_actividad_experiencia_experiencia1_idx` (`idExperiencia`),
  KEY `fk_actividad_experiencia_actividad1_idx` (`idActividad`),
  CONSTRAINT `fk_actividad_experiencia_actividad10` FOREIGN KEY (`idActividad`) REFERENCES `actividades` (`id`),
  CONSTRAINT `fk_actividad_experiencia_experiencia10` FOREIGN KEY (`idExperiencia`) REFERENCES `experiencias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_actividad`
--

LOCK TABLES `experiencia_actividad` WRITE;
/*!40000 ALTER TABLE `experiencia_actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencia_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencias`
--

DROP TABLE IF EXISTS `experiencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `experiencias` (
  `id` int(3) NOT NULL,
  `idUsuario` int(3) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fechaTopeValidez` date NOT NULL,
  `foto` blob,
  PRIMARY KEY (`id`,`idUsuario`),
  KEY `fk_experiencia_usuario_idx` (`idUsuario`),
  CONSTRAINT `fk_experiencia_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencias`
--

LOCK TABLES `experiencias` WRITE;
/*!40000 ALTER TABLE `experiencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtipos`
--

DROP TABLE IF EXISTS `subtipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subtipos` (
  `id` int(3) NOT NULL,
  `idTipo` int(3) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`idTipo`),
  KEY `fk_subtipos_tipos1_idx` (`idTipo`),
  CONSTRAINT `fk_subtipos_tipos1` FOREIGN KEY (`idTipo`) REFERENCES `tipos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtipos`
--

LOCK TABLES `subtipos` WRITE;
/*!40000 ALTER TABLE `subtipos` DISABLE KEYS */;
INSERT INTO `subtipos` VALUES (1,1,'Museos'),(2,1,'Sitios'),(3,2,'Comida Tradicional'),(4,2,'Comida Rapida'),(5,2,'Comida Extranjera'),(6,2,'Comida Vegetariana'),(7,2,'Comida Vegana');
/*!40000 ALTER TABLE `subtipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos`
--

DROP TABLE IF EXISTS `tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipos` (
  `id` int(3) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos`
--

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` VALUES (1,'Que Visitar'),(2,'Restaurantes');
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nick` varchar(45) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `FecNac` date DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `rol` enum('cliente','administrador') NOT NULL DEFAULT 'cliente',
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'juan','123456','1971-03-10','jose','rodriguez Ballester','12345678A','cliente','963838101','mari curi 4, 5 mislata','joselkjklsjd@gmail.com'),(2,'pepe','N/ER5X9XPLM8zpqKW5YVxnBso60SwqFL','1971-10-10','juan','perez garcia','12345678A','cliente','963838101','jlkhkljlhlk','sdffsdsdf');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'turismo'
--

--
-- Dumping routines for database 'turismo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09 12:24:37
