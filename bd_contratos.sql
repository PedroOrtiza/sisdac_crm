-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_contratos
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `tbl_contratos`
--

DROP TABLE IF EXISTS `tbl_contratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contratos` (
  `id_contrato` int NOT NULL AUTO_INCREMENT,
  `documento` varchar(20) DEFAULT NULL,
  `razon_social` varchar(100) DEFAULT NULL,
  `cantidad` bigint unsigned DEFAULT NULL,
  `objeto_contractual` mediumtext,
  `fecha_inicio` timestamp NOT NULL,
  `fecha_fin` timestamp NOT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_registro` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contratos`
--

LOCK TABLES `tbl_contratos` WRITE;
/*!40000 ALTER TABLE `tbl_contratos` DISABLE KEYS */;
INSERT INTO `tbl_contratos` VALUES (32,'1','ASOCIACIÓN OBRAS SOCIALES EN BENEFICIO DE LA POLICÍA NACIONAL',58491100,'SUMINISTRO DE ESTACIÓN DE TRABAJO','2024-02-07 05:00:00','2024-12-09 05:00:00','2024-12-05 02:40:21','Administrador');
/*!40000 ALTER TABLE `tbl_contratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_documentos`
--

DROP TABLE IF EXISTS `tbl_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_documentos` (
  `id_documento` int NOT NULL AUTO_INCREMENT,
  `id_contrato` int DEFAULT NULL,
  `nombre_documento` varchar(100) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_registro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_documentos`
--

LOCK TABLES `tbl_documentos` WRITE;
/*!40000 ALTER TABLE `tbl_documentos` DISABLE KEYS */;
INSERT INTO `tbl_documentos` VALUES (20,32,'20241204214021_Factura_1.pdf','2024-12-05 02:40:21','Administrador');
/*!40000 ALTER TABLE `tbl_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_documentos_innovacion`
--

DROP TABLE IF EXISTS `tbl_documentos_innovacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_documentos_innovacion` (
  `id_documento` int NOT NULL AUTO_INCREMENT,
  `id_innovacion` int DEFAULT NULL,
  `nombre_documento` varchar(500) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_registro` varchar(45) DEFAULT NULL,
  `id_tema` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_documentos_innovacion`
--

LOCK TABLES `tbl_documentos_innovacion` WRITE;
/*!40000 ALTER TABLE `tbl_documentos_innovacion` DISABLE KEYS */;
INSERT INTO `tbl_documentos_innovacion` VALUES (4,10,'20241115204014_Diseno_del_formulario_registro_de_contratos.png','2024-11-16 01:40:14','Administrador','6'),(5,10,'20241115204116_esquema_de_arquitectura.png','2024-11-16 01:41:16','Administrador','6'),(6,10,'20241115204359_demostracion_y_pruebas.png','2024-11-16 01:43:59','Administrador','7'),(7,10,'20241115204509_resultados_encuesta.png','2024-11-16 01:45:09','Administrador','8');
/*!40000 ALTER TABLE `tbl_documentos_innovacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_innovacion`
--

DROP TABLE IF EXISTS `tbl_innovacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_innovacion` (
  `id_innovacion` int NOT NULL AUTO_INCREMENT,
  `titulo_idea` varchar(200) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `descripcion_idea` text,
  `espacio_problema` text,
  `aspecto` text,
  `roles` text,
  `estrategias` text,
  `diseno` text,
  `id_kim` int DEFAULT NULL,
  `implementacion` text,
  `fecha_plazo` date DEFAULT NULL,
  `evaluacion` text,
  `aprender_planear` text,
  `ajustes` text,
  `fecha_fin` date DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_registro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_innovacion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_innovacion`
--

LOCK TABLES `tbl_innovacion` WRITE;
/*!40000 ALTER TABLE `tbl_innovacion` DISABLE KEYS */;
INSERT INTO `tbl_innovacion` VALUES (10,'Módulo para Integración de Datos de Contratos','2024-10-15','AconpiExpress requiere explotar los datos recolectados en sus sistemas de gestión (CRM, ERP, servidor de archivos), con el ánimo de tener respuesta ágiles a los clientes y la analítica de datos, aunque carece de personal especializado, dispone de herramientas básicas como Bitrix24 y World Office, que pueden soportar la integración de datos.\r\nLa solución propuesta se orienta a mejorar la interoperabilidad entre sistemas para aumentar la eficiencia y la retención de clientes, se utilizarán encuestas y tableros de BI para evaluar el desempeño del módulo desarrollado.\r\n\r\n','En el momento la empresa con cuenta con herramientas de integración y análisis de datos que le permitan realizar lecturas sobre los contratos realizados, y buscar rápidamente los archivos digitales para dar respuesta oportuna a los clientes.\r\nLimitaciones:\r\nUna de las limitaciones es no contar con personal que pueda dedicar en la implementación de tecnologías como por ejemplo desarrollo de software o inteligencia de negocios.\r\n\r\nUso limitado de plataformas tecnológicas, esto afecta la centralización de datos.\r\nDesconexión entre sistemas, los sistemas actuales (CRM, ERP, servidor de archivos) no están integrados, esto dificulta la gestión unificada de clientes y proyectos.\r\nAusencia de analítica de datos, tienen datos en varias plataformas y no se integran para análisis.\r\nCapacidades.\r\nEn el momento se tienen las siguientes herramientas de TI.\r\n-	CRM (Bitrix24)\r\n-	ERP (World Office)\r\n-	Servidor de archivos (Copia en cintas LTO)\r\n-	Servidores en las instalaciones.\r\n-	Red de datos\r\n-	Protección de firewall\r\n\r\nCriterios de evaluación:\r\nEncuesta de nivel de aceptación de los usuarios.\r\nTablero de BI funcional.\r\n','Existen muchas empresas de la competencia que usan plataformas de CRM con mayor apropiación.\r\nIgualmente utilizan plataformas de inteligencia de negocios para explorar los datos recolectados y obtener ventaja competitiva en el sector.\r\n\r\nPartes interesadas:\r\nPropietario de la empresa, empleados y clientes.\r\n','- Propietario o gerente general:\r\nResponsable de tomar decisiones frente a la innovación digital a implementar.\r\nAsegurar la asignación de recursos necesarios (financieros, humanos y tecnológicos).\r\nMonitorear y evaluar los resultados de la implementación.\r\n- Responsable de innovación o IT:\r\nDefinir requisitos del sistema.\r\nConfigurar entornos de desarrollo, pruebas y producción.\r\nSupervisar el proceso de implementación y mantenimiento del sistema.\r\nGestionar el equipo técnico interno de la empresa.\r\n- Consultor de la Pontificia Universidad javeriana:\r\nDiseñar el prototipo del sistema basándose en las mejores prácticas de diseño y las necesidades específicas de la PYME.\r\nDesarrollar el sistema de integración de datos, integrando los flujos de datos entre las diferentes plataformas.\r\nImplementar la solución y acompañar en la puesta en marcha, para que el sistema funcione correctamente en el entorno real y que los usuarios reciban la capacitación necesaria para su uso.\r\nImplementación de la solución.\r\n',NULL,'- Se diseña la arquitectura del sistema, enfocándose en la interoperabilidad entre el CRM, ERP y el servidor de archivos, este diseño integra tanto los requisitos funcionales (gestión de datos de clientes, proyectos) como no funcionales (seguridad, escalabilidad).\r\n\r\n- El diseño del sistema de integración de datos se centra en estructurar los datos básicos de los documentos de procesos contractuales que tienen un gran valor para AconpiExpress, toda vez que es de total interés tener herramientas de consulta ágil tanto de los archivos como hacer analítica de datos.\r\n',1,'- Se implementar la solución en un entorno de pruebas controlado y se realizan pruebas piloto para validar su funcionamiento, orientado a la integración en la mejora de la eficiencia operativa y la retención de clientes.\r\n\r\n- De la misma manera se realizan pruebas funcionales con la herramienta CRM (Bitrix24) y evaluar la interoperabilidad con el ERP (World Office) y el servidor de archivos, mediante un modelo de analítica descriptiva en inteligencia de negocios.\r\n','2024-11-15','- Se aplica la encuesta a 7 funcionarios para evaluar el desempeño de la solución implementada utilizando métricas frente al nivel de aceptación de los usuarios, eficiencia en la respuesta para el registro de datos y satisfacción de la gerencia. Las métricas se pueden obtener de las plataformas integrada.\r\n','- Como reflexión se evidencia que la herramienta es útil para abordar los siguientes proyectos de innovación digital.\r\n- Se planea como el siguiente proyecto de innovación digital, fortalecer la aplicación inteligencia ce negocios integrando datos de contabilidad.\r\n','- Aprovechar el conocimiento técnico de los empleados en el uso de las herramientas de TI actuales, así como su experiencia en la gestión de clientes y proyectos.\r\n- Aplicar mejores prácticas de la gestión de relaciones con los clientes (CRM) y la integración de plataformas empresariales (ERP) según los estándares de la industria.\r\n- Incorporar lecciones aprendidas de proyectos anteriores dentro de la empresa y experiencias en la implementación de tecnología.\r\n','2024-11-15','2024-11-16 01:12:09','Administrador');
/*!40000 ALTER TABLE `tbl_innovacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_innovacion_tema`
--

DROP TABLE IF EXISTS `tbl_innovacion_tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_innovacion_tema` (
  `id_tema` int NOT NULL AUTO_INCREMENT,
  `descripcion_tema` varchar(500) NOT NULL,
  PRIMARY KEY (`id_tema`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_innovacion_tema`
--

LOCK TABLES `tbl_innovacion_tema` WRITE;
/*!40000 ALTER TABLE `tbl_innovacion_tema` DISABLE KEYS */;
INSERT INTO `tbl_innovacion_tema` VALUES (1,'Resumen del proyecto'),(2,'Contexto del negocio'),(3,'Entorno competitivo'),(4,'Definir roles del equipo de trabajo'),(5,'Seleccione la estrategia de la matriz del conocimiento (KIM)'),(6,'Diseño del proyecto de innovación digital'),(7,'Implementación y demostración'),(8,'Resultados de la encuesta de aceptación'),(9,'Planear nuevos proyectos de innovación digital'),(10,'Base de conocimiento (ajustes necesarios)');
/*!40000 ALTER TABLE `tbl_innovacion_tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kim`
--

DROP TABLE IF EXISTS `tbl_kim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kim` (
  `id_kim` int NOT NULL,
  `nombre_kim` varchar(100) NOT NULL,
  `descripcion_kim` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kim`
--

LOCK TABLES `tbl_kim` WRITE;
/*!40000 ALTER TABLE `tbl_kim` DISABLE KEYS */;
INSERT INTO `tbl_kim` VALUES (1,'Mejora','Desarrollar nuevas soluciones para problemas conocidos Oportunidad de investigación Oportunidad de impacto'),(2,'Invención','Inventar nuevas soluciones para nuevos problemas Oportunidad de investigación Impacto no probado'),(3,'Explotación','Aplicar soluciones conocidas a problemas conocidos Oportunidad limitada de investigación Oportunidad de impacto'),(4,'Exaptación','Extender soluciones conocidas a problemas nuevos o diferentes (es decir, adoptar soluciones de otros campos) Oportunidad de investigación Oportunidad de impacto');
/*!40000 ALTER TABLE `tbl_kim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_percepcion`
--

DROP TABLE IF EXISTS `tbl_percepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_percepcion` (
  `id_percepcion` int NOT NULL AUTO_INCREMENT,
  `id_innovacion` int NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `pregunta` varchar(200) NOT NULL,
  `respuesta` int DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_registro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_percepcion`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_percepcion`
--

LOCK TABLES `tbl_percepcion` WRITE;
/*!40000 ALTER TABLE `tbl_percepcion` DISABLE KEYS */;
INSERT INTO `tbl_percepcion` VALUES (37,10,'Espectativa de Rendimiento','La implementación de la presente innovación digital me permitirá ser eficiente en mi desempeño laboral.',7,'2024-11-16 23:24:05','Administrador'),(38,10,'Espectativa de Rendimiento','Me siento comprometido con la implementación de la innovación digital, esto me ayudará a mejorar la calidad de mi trabajo.',5,'2024-11-16 23:24:05','Administrador'),(39,10,'Expectativa de Esfuerzo','Aprendiendo y usando el proyecto de innovación digital con todas sus características, cumpliré fácilmente mis tareas.',7,'2024-11-16 23:24:05','Administrador'),(40,10,'Expectativa de Esfuerzo','Me siento en satisfacción utilizando la propuesta implementada con la innovación digital y podré cumplir con todas mis tareas a tiempo',5,'2024-11-16 23:24:05','Administrador'),(41,10,'Condiciones Facilitadoras','Cuento con los recursos necesarios para utilizar la innovación digital en implementación.',7,'2024-11-16 23:24:05','Administrador'),(42,10,'Condiciones Facilitadoras','Cuento con entrenamiento suficiente para apropiar la nueva innovación digital.',3,'2024-11-16 23:24:05','Administrador'),(43,10,'Actitud para el uso de la idea de Innovación','Tengo una actitud positiva para adoptar la implementación de la innovación digital.',4,'2024-11-16 23:24:05','Administrador'),(44,10,'Actitud para el uso de la idea de Innovación','Considero beneficiosa la innovación digital para mi empresa le ayudará seguir siendo más competitiva.',6,'2024-11-16 23:24:05','Administrador'),(45,10,'Espectativa de Rendimiento','La implementación de la presente innovación digital me permitirá ser eficiente en mi desempeño laboral.',5,'2024-11-16 23:24:41','Administrador'),(46,10,'Espectativa de Rendimiento','Me siento comprometido con la implementación de la innovación digital, esto me ayudará a mejorar la calidad de mi trabajo.',3,'2024-11-16 23:24:41','Administrador'),(47,10,'Expectativa de Esfuerzo','Aprendiendo y usando el proyecto de innovación digital con todas sus características, cumpliré fácilmente mis tareas.',7,'2024-11-16 23:24:41','Administrador'),(48,10,'Expectativa de Esfuerzo','Me siento en satisfacción utilizando la propuesta implementada con la innovación digital y podré cumplir con todas mis tareas a tiempo',5,'2024-11-16 23:24:41','Administrador'),(49,10,'Condiciones Facilitadoras','Cuento con los recursos necesarios para utilizar la innovación digital en implementación.',6,'2024-11-16 23:24:41','Administrador'),(50,10,'Condiciones Facilitadoras','Cuento con entrenamiento suficiente para apropiar la nueva innovación digital.',7,'2024-11-16 23:24:41','Administrador'),(51,10,'Actitud para el uso de la idea de Innovación','Tengo una actitud positiva para adoptar la implementación de la innovación digital.',6,'2024-11-16 23:24:41','Administrador'),(52,10,'Actitud para el uso de la idea de Innovación','Considero beneficiosa la innovación digital para mi empresa le ayudará seguir siendo más competitiva.',5,'2024-11-16 23:24:41','Administrador'),(53,10,'Espectativa de Rendimiento','La implementación de la presente innovación digital me permitirá ser eficiente en mi desempeño laboral.',7,'2024-11-17 02:44:32','Administrador'),(54,10,'Espectativa de Rendimiento','Me siento comprometido con la implementación de la innovación digital, esto me ayudará a mejorar la calidad de mi trabajo.',7,'2024-11-17 02:44:32','Administrador'),(55,10,'Expectativa de Esfuerzo','Aprendiendo y usando el proyecto de innovación digital con todas sus características, cumpliré fácilmente mis tareas.',4,'2024-11-17 02:44:32','Administrador'),(56,10,'Expectativa de Esfuerzo','Me siento en satisfacción utilizando la propuesta implementada con la innovación digital y podré cumplir con todas mis tareas a tiempo',7,'2024-11-17 02:44:32','Administrador'),(57,10,'Condiciones Facilitadoras','Cuento con los recursos necesarios para utilizar la innovación digital en implementación.',6,'2024-11-17 02:44:32','Administrador'),(58,10,'Condiciones Facilitadoras','Cuento con entrenamiento suficiente para apropiar la nueva innovación digital.',5,'2024-11-17 02:44:32','Administrador'),(59,10,'Actitud para el uso de la idea de Innovación','Tengo una actitud positiva para adoptar la implementación de la innovación digital.',6,'2024-11-17 02:44:32','Administrador'),(60,10,'Actitud para el uso de la idea de Innovación','Considero beneficiosa la innovación digital para mi empresa le ayudará seguir siendo más competitiva.',5,'2024-11-17 02:44:32','Administrador');
/*!40000 ALTER TABLE `tbl_percepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_proveedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `documento_proveedor` varchar(20) DEFAULT NULL,
  `razon_social` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (100,'1','ASOCIACIÓN OBRAS SOCIALES EN BENEFICIO DE LA POLICÍA NACIONAL');
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_surname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rol` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_user` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Pedro Ortiz','pedro_ortiza@javeriana.edu.co','scrypt:32768:8:1$3CiH6043lGdOydgG$ef6db7f2667f50838e5ec1644d2dcb0932221213e2d31036493d3c3b8872561f03ba22aa3f1169515f38c7c5c3de5e15db8c3b3ca5ef480eb20d84a5a9fd39e1','Administrador','2024-05-19 22:34:49'),(18,'Administrador','admin@admin.com','scrypt:32768:8:1$Z5n6KNOAgTs1qU3Y$604b98d5d2fffc5cd54b993111946199b935d1d8ed2ce2078c8b1b303ac2fd177f01238632dc3e04f4ddf2fd7aa1696acb2db7b7d50b092eac677a60bd4c000b','Administrador','2024-09-22 16:57:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-16 21:47:57
