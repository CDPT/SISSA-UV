# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.1.56-1
# Server OS:                    debian-linux-gnu
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2011-04-03 22:31:51
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for serviciosocial_fca_uv
CREATE DATABASE IF NOT EXISTS `serviciosocial_fca_uv` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `serviciosocial_fca_uv`;


# Dumping structure for table serviciosocial_fca_uv.acuerdo_ss_fca
CREATE TABLE IF NOT EXISTS `acuerdo_ss_fca` (
  `IdAcu` int(10) unsigned zerofill NOT NULL,
  `IdEmp` varchar(16) COLLATE latin1_spanish_ci NOT NULL,
  `IdEnc` varchar(16) COLLATE latin1_spanish_ci NOT NULL,
  `FechaAcu` date DEFAULT NULL,
  `DirectorAcu` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`IdAcu`,`IdEmp`,`IdEnc`),
  KEY `FK_acuerdo_ss_fca_empresa_ss_fca` (`IdEmp`),
  KEY `FK_acuerdo_ss_fca_encargado_ss_fca` (`IdEnc`),
  CONSTRAINT `FK_acuerdo_ss_fca_empresa_ss_fca` FOREIGN KEY (`IdEmp`) REFERENCES `empresa_ss_fca` (`IdEmp`) ON DELETE NO ACTION,
  CONSTRAINT `FK_acuerdo_ss_fca_encargado_ss_fca` FOREIGN KEY (`IdEnc`) REFERENCES `encargado_ss_fca` (`IdEnc`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Se mantendrán los registros de los acuerdos recabados';

# Dumping data for table serviciosocial_fca_uv.acuerdo_ss_fca: ~0 rows (approximately)
/*!40000 ALTER TABLE `acuerdo_ss_fca` DISABLE KEYS */;
/*!40000 ALTER TABLE `acuerdo_ss_fca` ENABLE KEYS */;


# Dumping structure for table serviciosocial_fca_uv.alumno_ss_fca
CREATE TABLE IF NOT EXISTS `alumno_ss_fca` (
  `MatriculaAlu` varchar(9) COLLATE latin1_spanish_ci NOT NULL,
  `NombreAlu` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  `CarreraAlu` varchar(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SeccionAlu` varchar(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PeriodoAlu` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `EmailAlu` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TelefonoAlu` bigint(20) unsigned DEFAULT NULL,
  `CriterioAlu` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL COMMENT 'el nombre de la tabla que criterio que maneja el alumno',
  PRIMARY KEY (`MatriculaAlu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

# Dumping data for table serviciosocial_fca_uv.alumno_ss_fca: ~78 rows (approximately)
/*!40000 ALTER TABLE `alumno_ss_fca` DISABLE KEYS */;
REPLACE INTO `alumno_ss_fca` (`MatriculaAlu`, `NombreAlu`, `CarreraAlu`, `SeccionAlu`, `PeriodoAlu`, `EmailAlu`, `TelefonoAlu`, `CriterioAlu`) VALUES
	('', '', '', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S04002031', 'MARTINEZ ORTIZ MIGUEL ANGEL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S05007275', 'MARTINEZ CID EDGAR', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S05007332', 'CONTRERAS HERNANDEZ ILSE ISABEL', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S05007343', 'GARCIA OROPEZA TAMARA ARLETTE', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S05007372', 'FERNANDEZ MOTA MIRIAM GUADALUPE', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S05007382', 'MENDOZA DOMINGUEZ LINDA CRISTAL', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S05012197', 'BAUTISTA POLO DUVELSA', 'lsca', '701', 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S05015407', 'GONZALEZ CAMPILLO LETICIA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S05017485', 'HERNANDEZ LOPEZ LILIA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06000127', 'JACOME JUAREZ YAZMIN', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06000178', 'RODRIGUEZ ORAMAS ALFONSO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06000432', 'ALVARADO ROSARIO RAMON', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06002898', 'DOMINGUEZ NAVARRO JOSE CARLOS', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06002922', 'NARCISO DOMINGUEZ BLANCA ISABEL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06003016', 'QUIROZ GARCIA EDGAR ISRAEL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06003124', 'DE LA CRUZ HERNANDEZ JUAN ', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06003675', 'CALLEJAS GALICIA CARLOS DANIEL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06004237', 'OVANDO TELLEZ JOSE ANWAR', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06004299', 'MARTINEZ HERNANDEZ CONSUELO BERENICE', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06004325', 'TORRES ABURTO YOCELIN LETICIA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06004329', 'MENDOZA DURAN CARLOS RAUL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06004357', 'CORTES ROBELO MARISELA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06004374', 'GARCIA DIAZ DANIEL PAULINO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06012277', 'VAZQUEZ ARREVILLAGA VICTOR HUMBERTO', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06012476', 'ROJAS RUIZ SARAI', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06012520', 'NARCISO CIPRIANO JONATHAN RODRIGO', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06014736', 'MARGAIN BRETON MARIO ALEJANDRO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06014765', 'POUS CRUZ HERLINDO DEL ANGEL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06014769', 'CUEVAS BAEZ JULISSA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06016185', 'LARA GONZALEZ ANA LAURA', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06016191', 'MESTIZO LOPEZ MOISES', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06016194', 'LEON CORTES PERLA SARAI', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06016208', 'GARCIA ABURTO ANTONIO', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06018257', 'CHIMAL CARRASCO JORGE IVAN', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06018261', 'JIMENEZ BELLO JUAN RAMON', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S06018834', 'FERNANDEZ GOMEZ LAURA NATIVIDAD', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07000000', 'LOPEZ GARRIDO PAOLA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07002697', 'REYES MORALES OSCAR', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07005238', 'MENDEZ ESPINOSA ALEJANDRO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07005305', 'BAUTISTA MARTINEZ KATIA SUGEY', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07006937', 'SANCHEZ MENDOZA CARLOS ENRIQUE', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07006947', 'MARTINEZ GONZALEZ LORENA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07006965', 'CARREIRO CORBAL ALFONSO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07006992', 'VILLA HERNANDEZ NANCY YUZEET', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07006999', 'RIVERA SOLANO ROSA ISELA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007001', 'SOLANO REYES RODRIGO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007012', 'MAGAÑA CASTRO JAIME DE JESUS', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007015', 'REYES PEREZ DORA LUZ ', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007018', 'PEREZ CORTES JORGE ROBERTO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007029', 'CARBONELL BOLDU LIDIA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007039', 'ALTAMIRANO RODRIGUEZ JOSE GUDALUPE', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007042', 'DAVILA HERNANDEZ MIRIAM YAZMIN', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007059', 'ROA ZAINZ ROGELIO ENRIQUE', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007067', 'RUIZ AQUINO GUILLERMO IVAN', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007078', 'CERECEDO ZALETA ANGELA CRISTINA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007096', 'RODRIGUEZ MOLINA EDGAR JERONIMO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007097', 'RODRIGUEZ RIOS SUSANA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007105', 'OLASCOAGA CASO MIGUEL ANGEL', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007121', 'AVENDAÑO ARAUJO INGRID MELISA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007124', 'ARAUJO PEREZ ALINA LIZETH', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007128', 'FERNANDEZ TAPIA IRMA YADIRA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007135', 'JACOBO MORALES YARELI DEL CARMEN', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007146', 'HERNANDEZ RODRIGUEZ JUAN', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007147', 'OLIVEROS MARTINEZ MARIO URIEL', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007155', 'HERRERA ORTEGA JESUS FERNANDO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007160', 'MENDEZ TORRES MIRIAM YADIRA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007169', 'AMEZCUA DE MARCOS ERIKA GIOVANNA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007179', 'MARTINEZ GONZALEZ PATRICIA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07007185', 'MENDEZ RIOS JUAN MANUEL', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008255', 'CONTRERAS LOPEZ MIRIAM', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008256', 'GOMEZ JIMENEZ ISABEL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008260', 'BAEZ GALVAN LAURA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008263', 'GARCIA CORDOBA KARINA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008269', 'CRUZ GONZALEZ ROCIO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008277', 'GUZMAN JUAN VIANNEY', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008279', 'DIAZ ORTEGA ARACELI', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008280', 'ARCOS SANCHEZ MARIBEL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008291', 'TORRES FUENTES MAURICIO YAID', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008293', 'PIEDRA FERNANDEZ OLOFI ALEJANDRO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008297', 'ROMERO CONTRERAS AZUCENA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008302', 'TREVIÑO GUERSON ALFREDO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008305', 'TAPIA HERNANDEZ JESUS MIGUEL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008306', 'REYES LARA OMAR', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008308', 'VAZQUEZ HERNANDEZ MARICRUZ', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008311', 'PRUDENCIO SABINO AURORA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008315', 'SEGOVIA SARABIA ANDREA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008320', 'SANCHEZ PEÑA MARIO ALBERTO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008324', 'PEREZ GUZMAN ARMANDO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008329', 'LANDA CANSECO MARIA ANGELICA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008330', 'HUESCA GUZMAN JUAN EDUARDO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008331', 'CALDERON VAZQUEZ ALBERTO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008335', 'MOVIS SANCHEZ LUIS', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008338', 'OROZCO GARCIA KAREN', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008339', 'LUNA GOMEZ SALVADOR ', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008351', 'LANDA AVILA GENESIS ARGENTINA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008356', 'LOPEZ HERRERA OSCAR', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008361', 'LOPEZ ESPINOZA ELIZABETH', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008378', 'DE LA RIVA HUBER CARLOS ALBERTO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008380', 'LOPEZ HERNANDEZ GERARDO ANTONIO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008387', 'RODRIGUEZ DE LA ROSA MARIA MAGDALENA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008395', 'VELAZQUEZ VAZQUEZ JACQUELINE', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008396', 'RIVERA AGUIRRE AZUCENA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008409', 'LUNA SAGAYO SOFIA ALEJANDRA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008414', 'MENDEZ VALDEZ JOAQUIN', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008423', 'COLORADO REDUCINDO NATALIA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008427', 'BENAVIDES ARMAS EDUARDO FRANCISCO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008429', 'AQUINO SANCHEZ YEIMY LIZBETH', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07008451', 'AGUILAR CASTILLO ROSA ISELA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07012097', 'FARRERA LEON JORGE EDUARDO', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07012100', 'CAYETANO PONCE OSCAR GERARDO', 'lsca', '701', 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07012120', 'FERNANDEZ SUAREZ ELIZABETH', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07012139', 'SERRANO CARRION DESAR GIOVANNI', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07012163', 'ORTIZ JUAREZ MIGUEL ANTONIO', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07012165', 'MARTINEZ MARIN JULIO CESAR', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07012178', 'MESTIZO REYES ANTONIO ALVARO', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07012192', 'ALARCON ORTIZ ORLANDO JOSEPH', 'lsca', '701', 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015267', 'CASTILLO NAVARRETE ISIS DEL CARMEN', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015270', 'HERNANDEZ CASTAÑEDA ALEJANDRO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015276', 'HILARIO BERISTAIN VICTOR OMAR', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015282', 'ALARCON HERNNDEZ JOSE LUIS', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015288', 'AROCHI MUÑOS BOSCO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015308', 'HERNANDEZ VAZQUEZ ANABEL', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015311', 'CRIOLLO REYES ALINA CONCEPCION', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015317', 'SOLANO MARTINEZ ERIKA NOHEMI', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015327', 'ACOSTA ACOSTA JESUS JAZMIN', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015620', 'LARA CORTEZ SUSANA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015624', 'HERNANDEZ CEBALLOS MIGUEL ANGEL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015626', 'JIMENEZ GOMEZ ERICK ERNESTO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015630', 'VIVEROS VIVEROS LILIANA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015631', 'SALAS AGUILAR MARISOL', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015633', 'TRUJILLO TELLES MARIANA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015637', 'LANDA RODRIGUEZ JORGE ALBERTO', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015641', 'CONTRERAS FLORES HECTOR RAMON', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07015643', 'ESPINOZA GOMEZ ADRIAN', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07016375', 'GONZALEZ ALARCON MIGUEL ANGEL', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07016390', 'GONZALEZ ARGOTE RAUL EDUARDO', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07016395', 'ORTEGA CANO IRVIN ADRIAN', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07018673', 'HERRERA HERNANDEZ GERMAN', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07018675', 'JIMENEZ CONTRERAS VICTOR HUGO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07018677', 'HERNANDEZ GALVAN MANUEL', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07018680', 'DOMINGUEZ NADAL ANA LAURA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07018682', 'FRIAS HERRERA MAYRA SELENE', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07018683', 'GONZALEZ ORTIGOZA LILIANA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07018689', 'SALAS GONZALEZ GUDELIA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07018788', 'QUIROZ ELOTLAN ROSALBA', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07019411', 'LANDA LOPEZ DANIA ARLETTE', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07019412', 'LANDA LOPEZ DIANA GISELA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07023268', 'VELA IZOZORBE IVAN RUBEN ', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07023272', 'VAZQUEZ OROPEZA DANIEL', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07023273', 'DE LA CRUZ HERNANDEZ CLAUDIO', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07023289', 'ORTIZ ORTIZ PEDRO LUDWING', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07023292', 'BLASQUEZ PEREZ ANALLELY', 'lsca', '701', 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07023294', 'CASTAÑEDA GOMEZ RAFAEL ESTEBAN', 'lsca', '701', 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07023295', 'FRANCISCO HERNANDEZ GABRIELA', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07023307', 'OLVERA CANCELA PAOLA ALEJANDRA', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07023310', 'CABALLERO LAGUNES MARIA DE LA PAZ', 'lsca', '701', 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S07026149', 'LOPEZ DIAZ FILIBERTO', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08007278', 'SEGURA GONZALEZ MA. GUADALUPE', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08007294', 'RODRIGUEZ RAMIREZ JOVITA', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08007296', 'SOLANO MARTINEZ LADY ASTRID', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08007439', 'MEJIA OLIVO JOSE RAFAEL', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08008719', 'BARDO CASTILLO JAZMIN MONSERRAT', 'lc', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08010031', 'VILLA MOLINA EDUARDO', 'lg', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08010034', 'RENDON DOMINGUEZ LUCILA IVETTE', 'lg', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08010035', 'POLO RUIZ BERNARDO', 'lg', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08010038', 'AGUILAR ACEVEDO ERIKA NATHALIE', 'lg', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08010049', 'VILLAVERDE GRIJALVA EUNICE ALEJANDRA', 'lg', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08010063', 'LANDA TRILLO RUBÉN ADRÍAN', 'lg', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08010071', 'CUEVAS LORMENDEZ MATHIA SELENE', 'lg', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08010072', 'CARDENAS CACOULIDES RONALD', 'lg', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08010078', 'CHANG RAMIREZ IRIS', 'lg', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08024283', 'CUEVAS GARRIDO CARLOS VALENTIN', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S08028858', 'MAPEL MAPEL JANETH', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S09013831', 'VIVEROS GONZÁLEZ MAYRA ALEJANDRA', 'lsca', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1'),
	('S09029157', 'PEREZ ESCALANTE VANIA DENISSE', 'la', NULL, 'ENERO2011-JUNIO2011', NULL, NULL, 'MEIFv1');
/*!40000 ALTER TABLE `alumno_ss_fca` ENABLE KEYS */;


# Dumping structure for table serviciosocial_fca_uv.configuraciones_ss_fca
CREATE TABLE IF NOT EXISTS `configuraciones_ss_fca` (
  `perido` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '' COMMENT 'el documento a evaluar (criterio)',
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`perido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

# Dumping data for table serviciosocial_fca_uv.configuraciones_ss_fca: ~1 rows (approximately)
/*!40000 ALTER TABLE `configuraciones_ss_fca` DISABLE KEYS */;
REPLACE INTO `configuraciones_ss_fca` (`perido`, `fecha_inicio`, `fecha_fin`) VALUES
	('ENERO2011-FEBRERO2011', '2011-02-08', '2011-08-12');
/*!40000 ALTER TABLE `configuraciones_ss_fca` ENABLE KEYS */;


# Dumping structure for table serviciosocial_fca_uv.criterios_ss_fca
CREATE TABLE IF NOT EXISTS `criterios_ss_fca` (
  `nombreCriterio` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL COMMENT 'el nombre que identifica al criterio',
  `evaluar` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `valor` float unsigned DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

# Dumping data for table serviciosocial_fca_uv.criterios_ss_fca: ~11 rows (approximately)
/*!40000 ALTER TABLE `criterios_ss_fca` DISABLE KEYS */;
REPLACE INTO `criterios_ss_fca` (`nombreCriterio`, `evaluar`, `valor`, `fechaInicio`, `fechaEntrega`) VALUES
	('MEIFv1', 'Platica', 2, '2011-02-01', '2011-02-01'),
	('MEIFv1', 'Carta de Presentación/Aceptación', 1, '2011-02-08', '2011-02-11'),
	('MEIFv1', 'Solicitud de Registro', 2, '2011-02-08', '2011-02-11'),
	('MEIFv1', 'Programa de Trabajo', 5, '2011-02-08', '2011-02-11'),
	('MEIFv1', 'Acuerdo de Colaboración', 5, '2011-02-08', '2011-02-11'),
	('MEIFv1', 'Informe Bimestral 1', 10, '2011-04-11', '2011-04-15'),
	('MEIFv1', 'Informe Bimestral 2', 10, '2011-06-13', '2011-05-17'),
	('MEIFv1', 'Informe Bimestral 3', 10, '2011-08-08', '2011-08-12'),
	('MEIFv1', 'Informe Final', 5, '2011-08-08', '2011-08-12'),
	('MEIFv1', 'Evaluación del Jefe', 50, '2011-08-08', '2011-08-12'),
	('Rigido', 'Validado', 0, '2011-04-03', '2011-04-03'),
	('Rigido', 'Algo', 0, '2011-04-03', '2011-04-03'),
	('Rigido', 'dos cosas', 0, '2011-04-03', '2011-04-03');
/*!40000 ALTER TABLE `criterios_ss_fca` ENABLE KEYS */;


# Dumping structure for table serviciosocial_fca_uv.empresa_ss_fca
CREATE TABLE IF NOT EXISTS `empresa_ss_fca` (
  `IdEmp` varchar(16) COLLATE latin1_spanish_ci NOT NULL,
  `NombreEmp` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `DireccionEmp` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  `EmailEmp` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TelefonoEmp` int(10) unsigned DEFAULT NULL,
  `Telefono2Emp` int(10) unsigned DEFAULT NULL,
  `Telefono3Emp` int(10) unsigned DEFAULT NULL,
  `SectorEmp` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`IdEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

# Dumping data for table serviciosocial_fca_uv.empresa_ss_fca: ~0 rows (approximately)
/*!40000 ALTER TABLE `empresa_ss_fca` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_ss_fca` ENABLE KEYS */;


# Dumping structure for table serviciosocial_fca_uv.encargado_ss_fca
CREATE TABLE IF NOT EXISTS `encargado_ss_fca` (
  `IdEnc` varchar(16) COLLATE latin1_spanish_ci NOT NULL,
  `NombreEnc` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  `PuestoEnc` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `EmailEnc` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TelefonoEnc` int(10) unsigned DEFAULT NULL,
  `CelEnc` bigint(13) unsigned DEFAULT NULL,
  PRIMARY KEY (`IdEnc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

# Dumping data for table serviciosocial_fca_uv.encargado_ss_fca: ~0 rows (approximately)
/*!40000 ALTER TABLE `encargado_ss_fca` DISABLE KEYS */;
/*!40000 ALTER TABLE `encargado_ss_fca` ENABLE KEYS */;


# Dumping structure for table serviciosocial_fca_uv.evaluacion_MEIFv1
CREATE TABLE IF NOT EXISTS `evaluacion_MEIFv1` (
  `MatriculaAlu` varchar(9) COLLATE latin1_spanish_ci NOT NULL,
  `Platica` float DEFAULT '-1' COMMENT 'criterio evaluado',
  `CartadePresentacion/Aceptacion` float DEFAULT '-1' COMMENT 'criterio evaluado',
  `SolicituddeRegistro` float DEFAULT '-1' COMMENT 'criterio evaluado',
  `ProgramadeTrabajo` float DEFAULT '-1' COMMENT 'criterio evaluado',
  `AcuerdodeColaboracion` float DEFAULT '-1' COMMENT 'criterio evaluado',
  `InformeBimestral1` float DEFAULT '-1' COMMENT 'criterio evaluado',
  `InformeBimestral2` float DEFAULT '-1' COMMENT 'criterio evaluado',
  `InformeBimestral3` float DEFAULT '-1' COMMENT 'criterio evaluado',
  `InformeFinal` float DEFAULT '-1' COMMENT 'criterio evaluado',
  `EvaluaciondelJefe` float DEFAULT '-1' COMMENT 'criterio evaluado',
  PRIMARY KEY (`MatriculaAlu`),
  CONSTRAINT `evaluacion_MEIFv1_ibfk_1` FOREIGN KEY (`MatriculaAlu`) REFERENCES `alumno_ss_fca` (`MatriculaAlu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

# Dumping data for table serviciosocial_fca_uv.evaluacion_MEIFv1: ~12 rows (approximately)
/*!40000 ALTER TABLE `evaluacion_MEIFv1` DISABLE KEYS */;
REPLACE INTO `evaluacion_MEIFv1` (`MatriculaAlu`, `Platica`, `CartadePresentacion/Aceptacion`, `SolicituddeRegistro`, `ProgramadeTrabajo`, `AcuerdodeColaboracion`, `InformeBimestral1`, `InformeBimestral2`, `InformeBimestral3`, `InformeFinal`, `EvaluaciondelJefe`) VALUES
	('S05012197', 2, -1, -1, -1, -1, -1, -1, -1, -1, -1),
	('S06000432', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
	('S07008269', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
	('S07008409', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
	('S07008429', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
	('S07008451', 2, 2, 2, 9, -1, -1, -1, -1, -1, -1),
	('S07012192', 1, -1, 8, -1, -1, -1, -1, -1, -1, 132),
	('S07015327', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
	('S07016390', 9, -1, -1, -1, -1, -1, -1, -1, -1, -1),
	('S07023310', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
	('S08010038', 9, -1, -1, -1, -1, -1, -1, -1, -1, -1),
	('S09013831', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
/*!40000 ALTER TABLE `evaluacion_MEIFv1` ENABLE KEYS */;


# Dumping structure for table serviciosocial_fca_uv.historial_alumno_ss_fca
CREATE TABLE IF NOT EXISTS `historial_alumno_ss_fca` (
  `MatriculaAlu` varchar(9) COLLATE latin1_spanish_ci NOT NULL,
  `IdAcu` int(10) unsigned zerofill NOT NULL,
  `FuncionHist` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL COMMENT 'A que se va a dedicar el estudiante',
  `TipoHist` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL COMMENT 'Si es Becado, dentro de la UV o brigada',
  `JefeDirectoHist` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL COMMENT 'quien es su jefe directo',
  `EvaluacionHist` float unsigned DEFAULT NULL,
  PRIMARY KEY (`MatriculaAlu`,`IdAcu`),
  KEY `FK_historial_alumno_ss_fca_acuerdo_ss_fca` (`IdAcu`),
  CONSTRAINT `FK_historial_alumno_ss_fca_acuerdo_ss_fca` FOREIGN KEY (`IdAcu`) REFERENCES `acuerdo_ss_fca` (`IdAcu`),
  CONSTRAINT `FK_historial_alumno_ss_fca_alumno_ss_fca` FOREIGN KEY (`MatriculaAlu`) REFERENCES `alumno_ss_fca` (`MatriculaAlu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

# Dumping data for table serviciosocial_fca_uv.historial_alumno_ss_fca: ~0 rows (approximately)
/*!40000 ALTER TABLE `historial_alumno_ss_fca` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_alumno_ss_fca` ENABLE KEYS */;


# Dumping structure for table serviciosocial_fca_uv.notas_ss_fca
CREATE TABLE IF NOT EXISTS `notas_ss_fca` (
  `MatriculaAlu` varchar(9) NOT NULL DEFAULT '',
  `Evaluacion` varchar(50) NOT NULL DEFAULT '',
  `Nota` varchar(50) DEFAULT 'No hay comentarios.',
  `FechaEntrega` date DEFAULT NULL,
  PRIMARY KEY (`MatriculaAlu`,`Evaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dumping data for table serviciosocial_fca_uv.notas_ss_fca: ~0 rows (approximately)
/*!40000 ALTER TABLE `notas_ss_fca` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas_ss_fca` ENABLE KEYS */;


# Dumping structure for table serviciosocial_fca_uv.usuarios_ss_fca
CREATE TABLE IF NOT EXISTS `usuarios_ss_fca` (
  `usuario` varchar(20) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `contrasenia` varchar(42) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nivel` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

# Dumping data for table serviciosocial_fca_uv.usuarios_ss_fca: ~4 rows (approximately)
/*!40000 ALTER TABLE `usuarios_ss_fca` DISABLE KEYS */;
REPLACE INTO `usuarios_ss_fca` (`usuario`, `contrasenia`, `nombre`, `nivel`) VALUES
	('demo', '*C142FB215B6E05B7C134B1A653AD4B455157FD79', 'raul glez', 'evaluador'),
	('lol', 'lol', 'test1', 'admin'),
	('rafex', '*98ADC911B9E716E05F900381B9CEB869923710EE', 'raul glez', 'admin'),
	('test', '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29', 'raul glez', 'admin');
/*!40000 ALTER TABLE `usuarios_ss_fca` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
