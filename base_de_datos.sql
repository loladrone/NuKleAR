-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: aventura
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aventura`
--

DROP TABLE IF EXISTS `aventura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aventura` (
  `hist` varchar(2) DEFAULT NULL,
  `texto` text,
  `opA` varchar(2) DEFAULT NULL,
  `opB` varchar(2) DEFAULT NULL,
  `botonA` varchar(20) DEFAULT NULL,
  `botonB` varchar(20) DEFAULT NULL,
  `tipo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aventura`
--

LOCK TABLES `aventura` WRITE;
/*!40000 ALTER TABLE `aventura` DISABLE KEYS */;
INSERT INTO `aventura` VALUES ('1','Te encuentras en una planta de energía nuclear, el reactor principal presentó fallas y la sirena de evacuación comenzó a sonar. Los empleados comenzaron a alborotarse y a correr buscando una salida. ¿Hacia dónde te diriges?','2A','2B','NUCLEO','SALIDA','N'),('2A','[Núcleo del reactor principal] Dentro del núcleo del reactor, te encuentras con manuales y afiches con instrucciones y protocolos de emergencia. La oficina de los técnicos no está muy lejos, pero ninguno de ellos parece estar allí. ¿Intentas manipular el reactor o corres a buscar ayuda?','3A','4A','AYUDA','MANIPULARLO','N'),('3A','[Ayuda] Al entrar a la oficina de los técnicos, la encuentras vacía. ¿Deseas continuar la búsqueda de los técnicos o vuelves a chequear el reactor?','5A','6A','VOLVER','CONTINUAR','N'),('4A','[Manipularlo] El reactor en inmenso y hace muchos ruidos. A pesar de las instrucciones hay un último paso que no entiendes bien, apretar el botón central o tirar de la palanca que está a su lado, ya que ambos dicen EMERGENCIA. ¿Qué haces?','7A','8A','BOTON','PALANCA','N'),('5A','[Volver a chequear el núcleo] Vuelves al núcleo del reactor, la explosión es inevitable. Mueres. ','0','0','X','X','P'),('6A','[Continuar en la búsqueda de los técnicos] Sales al pasillo y te encuentras con un grupo de rescate. Te dirigen hasta la salida sano y salvo. ','0','0','X','X','G'),('7A','[Apretar botón] Se inicia el protocolo de aislamiento y toda la sala del reactor queda sellada contigo adentro. Se genera una gran explosión. Mueres. ','0','0','X','X','P'),('8A','[Tirar la palanca] Se activa el protocolo de escape rápido, se abre una compuerta con dos cápsulas de escape. Una ya tiene dueño y eres tú. Logras escapar. ','0','0','X','X','G'),('2B','[Salida] El tumulto de gente es atroz, casi no se puede salir afuera por el humo y el fuego. Encuentras un gran pasillo sin luz. ¿Sigues el tumulto de gente o avanzas hacia el pasillo? ','3B','4B','PASILLO','TUMULTO','N'),('3B','[Pasillo] Cruzas a tientas el pasillo porque la oscuridad es insoportable, la única luz que hay es la de un ascensor que está a pocos pasos, a su lado hay una escalera de emergencias. ¿Cuál decides tomar? ','5B','6B','ASCENSOR','ESCALERA','N'),('4B','[Tumulto] En la desesperación, la gente no ve uno de los pasillos laterales que lleva hasta el estacionamiento. Un lado del pasillo está cubierto de un líquido aceitoso, mientras que en el otro lado un par de cables cortados chispeando sin parar. ¿Por dónde decides pasar? ','7B','8B','LIQUIDO','CABLES','N'),('5B','[Ascensor] Subes desesperadamente al ascensor y la puerta cierra detrás de tí. Hiciste un largo camino hasta aquí pero no vas a ir más lejos, apenas el ascensor se mueve unos metros, un fuerte estruendo te sacude, un ruido metálico se deja oír y caes al vacío. Mueres.  ','0','0','X','X','P'),('6B','[Escalera] Bajas la escalera casi a los saltos, desesperado por llegar a la salida. Logras abandonar el edificio y corres a toda velocidad sin mirar atrás, ignorando la explosión que ocurre detrás de tí. Sobrevives. ','0','0','X','X','G'),('7B','[Líquido] Pasas lentamente sobre el líquido para no resbalarte. A medida que caminas, tus pies se van pegando más al suelo. Te quitas el calzado y logras caminar descalzo hacia la salida. La planta queda atrás junto con tus botas. Sobrevives. ','0','0','X','X','G'),('8B','[Cables] Prefieres arriesgarte a un peligro conocido que a un líquido que nadie sabe qué efectos podría tener. Lamentablemente a veces, elegir al malo conocido no es la solución. Te electrocutas y mueres. ','0','0','X','X','P');
/*!40000 ALTER TABLE `aventura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-21 13:27:06
