/*
SQLyog - Free MySQL GUI v4.1
Host - 4.1.12a-nt : Database - serviciosocial_fca_uv
*********************************************************************
Server version : 4.1.12a-nt
*/


create database if not exists `serviciosocial_fca_uv`;

USE `serviciosocial_fca_uv`;

/*Table structure for table `acuerdo_ss_fca` */

drop table if exists `acuerdo_ss_fca`;

CREATE TABLE `acuerdo_ss_fca` (
  `IdAcu` int(10) unsigned zerofill NOT NULL default '0000000000',
  `IdEmp` varchar(16) collate latin1_spanish_ci NOT NULL default '',
  `IdEnc` varchar(16) collate latin1_spanish_ci NOT NULL default '',
  `FechaAcu` date default NULL,
  `DirectorAcu` varchar(40) collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`IdAcu`,`IdEmp`,`IdEnc`),
  KEY `FK_acuerdo_ss_fca_empresa_ss_fca` (`IdEmp`),
  KEY `FK_acuerdo_ss_fca_encargado_ss_fca` (`IdEnc`),
  CONSTRAINT `FK_acuerdo_ss_fca_empresa_ss_fca` FOREIGN KEY (`IdEmp`) REFERENCES `empresa_ss_fca` (`IdEmp`) ON DELETE NO ACTION,
  CONSTRAINT `FK_acuerdo_ss_fca_encargado_ss_fca` FOREIGN KEY (`IdEnc`) REFERENCES `encargado_ss_fca` (`IdEnc`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Se mantendr�n los registros de los acuerdos recabados';

/*Data for the table `acuerdo_ss_fca` */

LOCK TABLES `acuerdo_ss_fca` WRITE;

UNLOCK TABLES;

/*Table structure for table `alumno_ss_fca` */

drop table if exists `alumno_ss_fca`;

CREATE TABLE `alumno_ss_fca` (
  `MatriculaAlu` varchar(9) collate latin1_spanish_ci NOT NULL default '',
  `NombreAlu` varchar(40) collate latin1_spanish_ci NOT NULL default '',
  `CarreraAlu` varchar(5) collate latin1_spanish_ci default NULL,
  `SeccionAlu` varchar(5) collate latin1_spanish_ci default NULL,
  `PeriodoAlu` varchar(50) collate latin1_spanish_ci default NULL,
  `EmailAlu` varchar(50) collate latin1_spanish_ci default NULL,
  `TelefonoAlu` bigint(20) unsigned default NULL,
  `CriterioAlu` varchar(30) collate latin1_spanish_ci default NULL COMMENT 'el nombre de la tabla que criterio que maneja el alumno',
  PRIMARY KEY  (`MatriculaAlu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `alumno_ss_fca` */

LOCK TABLES `alumno_ss_fca` WRITE;

insert into `alumno_ss_fca` values ('','','',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S04002031','MARTINEZ ORTIZ MIGUEL ANGEL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S05007275','MARTINEZ CID EDGAR','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S05007332','CONTRERAS HERNANDEZ ILSE ISABEL','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S05007343','GARCIA OROPEZA TAMARA ARLETTE','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S05007372','FERNANDEZ MOTA MIRIAM GUADALUPE','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S05007382','MENDOZA DOMINGUEZ LINDA CRISTAL','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S05012197','BAUTISTA POLO DUVELSA','lsca','701','ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S05015407','GONZALEZ CAMPILLO LETICIA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S05017485','HERNANDEZ LOPEZ LILIA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06000127','JACOME JUAREZ YAZMIN','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06000178','RODRIGUEZ ORAMAS ALFONSO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06000432','ALVARADO ROSARIO RAMON','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06002898','DOMINGUEZ NAVARRO JOSE CARLOS','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06002922','NARCISO DOMINGUEZ BLANCA ISABEL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06003016','QUIROZ GARCIA EDGAR ISRAEL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06003124','DE LA CRUZ HERNANDEZ JUAN','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06003675','CALLEJAS GALICIA CARLOS DANIEL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06004237','OVANDO TELLEZ JOSE ANWAR','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06004299','MARTINEZ HERNANDEZ CONSUELO BERENICE','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06004325','TORRES ABURTO YOCELIN LETICIA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06004329','MENDOZA DURAN CARLOS RAUL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06004357','CORTES ROBELO MARISELA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06004374','GARCIA DIAZ DANIEL PAULINO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06012277','VAZQUEZ ARREVILLAGA VICTOR HUMBERTO','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06012476','ROJAS RUIZ SARAI','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06012520','NARCISO CIPRIANO JONATHAN RODRIGO','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06014736','MARGAIN BRETON MARIO ALEJANDRO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06014765','POUS CRUZ HERLINDO DEL ANGEL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06014769','CUEVAS BAEZ JULISSA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06016185','LARA GONZALEZ ANA LAURA','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06016191','MESTIZO LOPEZ MOISES','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06016194','LEON CORTES PERLA SARAI','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06016208','GARCIA ABURTO ANTONIO','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06018257','CHIMAL CARRASCO JORGE IVAN','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06018261','JIMENEZ BELLO JUAN RAMON','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S06018834','FERNANDEZ GOMEZ LAURA NATIVIDAD','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07000000','LOPEZ GARRIDO PAOLA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07002697','REYES MORALES OSCAR','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07005238','MENDEZ ESPINOSA ALEJANDRO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07005305','BAUTISTA MARTINEZ KATIA SUGEY','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07006937','SANCHEZ MENDOZA CARLOS ENRIQUE','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07006947','MARTINEZ GONZALEZ LORENA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07006965','CARREIRO CORBAL ALFONSO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07006992','VILLA HERNANDEZ NANCY YUZEET','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07006999','RIVERA SOLANO ROSA ISELA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007001','SOLANO REYES RODRIGO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007012','MAGA�A CASTRO JAIME DE JESUS','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007015','REYES PEREZ DORA LUZ','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007018','PEREZ CORTES JORGE ROBERTO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007029','CARBONELL BOLDU LIDIA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007039','ALTAMIRANO RODRIGUEZ JOSE GUDALUPE','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007042','DAVILA HERNANDEZ MIRIAM YAZMIN','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007059','ROA ZAINZ ROGELIO ENRIQUE','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007067','RUIZ AQUINO GUILLERMO IVAN','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007078','CERECEDO ZALETA ANGELA CRISTINA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007096','RODRIGUEZ MOLINA EDGAR JERONIMO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007097','RODRIGUEZ RIOS SUSANA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007105','OLASCOAGA CASO MIGUEL ANGEL','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007121','AVENDA�O ARAUJO INGRID MELISA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007124','ARAUJO PEREZ ALINA LIZETH','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007128','FERNANDEZ TAPIA IRMA YADIRA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007135','JACOBO MORALES YARELI DEL CARMEN','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007146','HERNANDEZ RODRIGUEZ JUAN','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007147','OLIVEROS MARTINEZ MARIO URIEL','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007155','HERRERA ORTEGA JESUS FERNANDO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007160','MENDEZ TORRES MIRIAM YADIRA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007169','AMEZCUA DE MARCOS ERIKA GIOVANNA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007179','MARTINEZ GONZALEZ PATRICIA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07007185','MENDEZ RIOS JUAN MANUEL','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008255','CONTRERAS LOPEZ MIRIAM','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008256','GOMEZ JIMENEZ ISABEL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008260','BAEZ GALVAN LAURA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008263','GARCIA CORDOBA KARINA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008269','CRUZ GONZALEZ ROCIO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008277','GUZMAN JUAN VIANNEY','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008279','DIAZ ORTEGA ARACELI','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008280','ARCOS SANCHEZ MARIBEL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008291','TORRES FUENTES MAURICIO YAID','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008293','PIEDRA FERNANDEZ OLOFI ALEJANDRO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008297','ROMERO CONTRERAS AZUCENA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008302','TREVI�O GUERSON ALFREDO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008305','TAPIA HERNANDEZ JESUS MIGUEL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008306','REYES LARA OMAR','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008308','VAZQUEZ HERNANDEZ MARICRUZ','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008311','PRUDENCIO SABINO AURORA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008315','SEGOVIA SARABIA ANDREA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008320','SANCHEZ PE�A MARIO ALBERTO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008324','PEREZ GUZMAN ARMANDO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008329','LANDA CANSECO MARIA ANGELICA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008330','HUESCA GUZMAN JUAN EDUARDO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008331','CALDERON VAZQUEZ ALBERTO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008335','MOVIS SANCHEZ LUIS','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008338','OROZCO GARCIA KAREN','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008339','LUNA GOMEZ SALVADOR','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008351','LANDA AVILA GENESIS ARGENTINA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008356','LOPEZ HERRERA OSCAR','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008361','LOPEZ ESPINOZA ELIZABETH','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008378','DE LA RIVA HUBER CARLOS ALBERTO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008380','LOPEZ HERNANDEZ GERARDO ANTONIO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008387','RODRIGUEZ DE LA ROSA MARIA MAGDALENA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008395','VELAZQUEZ VAZQUEZ JACQUELINE','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008396','RIVERA AGUIRRE AZUCENA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008409','LUNA SAGAYO SOFIA ALEJANDRA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008414','MENDEZ VALDEZ JOAQUIN','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008423','COLORADO REDUCINDO NATALIA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008427','BENAVIDES ARMAS EDUARDO FRANCISCO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008429','AQUINO SANCHEZ YEIMY LIZBETH','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07008451','AGUILAR CASTILLO ROSA ISELA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07012097','FARRERA LEON JORGE EDUARDO','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07012100','CAYETANO PONCE OSCAR GERARDO','lsca','701','ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07012120','FERNANDEZ SUAREZ ELIZABETH','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07012139','SERRANO CARRION DESAR GIOVANNI','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07012163','ORTIZ JUAREZ MIGUEL ANTONIO','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07012165','MARTINEZ MARIN JULIO CESAR','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07012178','MESTIZO REYES ANTONIO ALVARO','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07012192','ALARCON ORTIZ ORLANDO JOSEPH','lsca','701','ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015267','CASTILLO NAVARRETE ISIS DEL CARMEN','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015270','HERNANDEZ CASTA�EDA ALEJANDRO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015276','HILARIO BERISTAIN VICTOR OMAR','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015282','ALARCON HERNNDEZ JOSE LUIS','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015288','AROCHI MU�OS BOSCO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015308','HERNANDEZ VAZQUEZ ANABEL','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015311','CRIOLLO REYES ALINA CONCEPCION','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015317','SOLANO MARTINEZ ERIKA NOHEMI','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015327','ACOSTA ACOSTA JESUS JAZMIN','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015620','LARA CORTEZ SUSANA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015624','HERNANDEZ CEBALLOS MIGUEL ANGEL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015626','JIMENEZ GOMEZ ERICK ERNESTO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015630','VIVEROS VIVEROS LILIANA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015631','SALAS AGUILAR MARISOL','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015633','TRUJILLO TELLES MARIANA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015637','LANDA RODRIGUEZ JORGE ALBERTO','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015641','CONTRERAS FLORES HECTOR RAMON','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07015643','ESPINOZA GOMEZ ADRIAN','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07016375','GONZALEZ ALARCON MIGUEL ANGEL','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07016390','GONZALEZ ARGOTE RAUL EDUARDO','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07016395','ORTEGA CANO IRVIN ADRIAN','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07018673','HERRERA HERNANDEZ GERMAN','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07018675','JIMENEZ CONTRERAS VICTOR HUGO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07018677','HERNANDEZ GALVAN MANUEL','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07018680','DOMINGUEZ NADAL ANA LAURA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07018682','FRIAS HERRERA MAYRA SELENE','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07018683','GONZALEZ ORTIGOZA LILIANA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07018689','SALAS GONZALEZ GUDELIA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07018788','QUIROZ ELOTLAN ROSALBA','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07019411','LANDA LOPEZ DANIA ARLETTE','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07019412','LANDA LOPEZ DIANA GISELA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07023268','VELA IZOZORBE IVAN RUBEN','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07023272','VAZQUEZ OROPEZA DANIEL','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07023273','DE LA CRUZ HERNANDEZ CLAUDIO','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07023289','ORTIZ ORTIZ PEDRO LUDWING','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07023292','BLASQUEZ PEREZ ANALLELY','lsca','701','ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07023294','CASTA�EDA GOMEZ RAFAEL ESTEBAN','lsca','701','ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07023295','FRANCISCO HERNANDEZ GABRIELA','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07023307','OLVERA CANCELA PAOLA ALEJANDRA','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07023310','CABALLERO LAGUNES MARIA DE LA PAZ','lsca','701','ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S07026149','LOPEZ DIAZ FILIBERTO','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08007278','SEGURA GONZALEZ MA. GUADALUPE','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08007294','RODRIGUEZ RAMIREZ JOVITA','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08007296','SOLANO MARTINEZ LADY ASTRID','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08007439','MEJIA OLIVO JOSE RAFAEL','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08008719','BARDO CASTILLO JAZMIN MONSERRAT','lc',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08010031','VILLA MOLINA EDUARDO','lg',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08010034','RENDON DOMINGUEZ LUCILA IVETTE','lg',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08010035','POLO RUIZ BERNARDO','lg',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08010038','AGUILAR ACEVEDO ERIKA NATHALIE','lg',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08010049','VILLAVERDE GRIJALVA EUNICE ALEJANDRA','lg',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08010063','LANDA TRILLO RUB�N ADR�AN','lg',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08010071','CUEVAS LORMENDEZ MATHIA SELENE','lg',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08010072','CARDENAS CACOULIDES RONALD','lg',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08010078','CHANG RAMIREZ IRIS','lg',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08024283','CUEVAS GARRIDO CARLOS VALENTIN','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S08028858','MAPEL MAPEL JANETH','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S09013831','VIVEROS GONZ�LEZ MAYRA ALEJANDRA','lsca',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1'),('S09029157','PEREZ ESCALANTE VANIA DENISSE','la',NULL,'ENERO2011-JUNIO2011',NULL,NULL,'MEIFv1');

UNLOCK TABLES;

/*Table structure for table `configuraciones_ss_fca` */

drop table if exists `configuraciones_ss_fca`;

CREATE TABLE `configuraciones_ss_fca` (
  `perido` varchar(50) collate latin1_spanish_ci NOT NULL default '' COMMENT 'el documento a evaluar (criterio)',
  `fecha_inicio` date default NULL,
  `fecha_fin` date default NULL,
  PRIMARY KEY  (`perido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `configuraciones_ss_fca` */

LOCK TABLES `configuraciones_ss_fca` WRITE;

insert into `configuraciones_ss_fca` values ('ENERO2011-FEBRERO2011','2011-02-08','2011-08-12');

UNLOCK TABLES;

/*Table structure for table `criterios_ss_fca` */

drop table if exists `criterios_ss_fca`;

CREATE TABLE `criterios_ss_fca` (
  `nombreCriterio` varchar(60) collate latin1_spanish_ci default NULL COMMENT 'el nombre que identifica al criterio',
  `evaluar` varchar(60) character set utf8 default NULL,
  `valor` float unsigned default NULL,
  `fechaInicio` date default NULL,
  `fechaEntrega` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `criterios_ss_fca` */

LOCK TABLES `criterios_ss_fca` WRITE;

insert into `criterios_ss_fca` values ('MEIFv1','Pl�tica',2,'2011-02-01','2011-02-01'),('MEIFv1','Carta de Presentaci�n/Aceptaci�n',1,'2011-02-08','2011-02-11'),('MEIFv1','Solicitud de Registro',2,'2011-02-08','2011-02-11'),('MEIFv1','Programa de Trabajo',5,'2011-02-08','2011-02-11'),('MEIFv1','Acuerdo de Colaboraci�n',5,'2011-02-08','2011-02-11'),('MEIFv1','Informe Bimestral 1',10,'2011-04-11','2011-04-15'),('MEIFv1','Informe Bimestral 2',10,'2011-06-13','2011-05-17'),('MEIFv1','Informe Bimestral 3',10,'2011-08-08','2011-08-12'),('MEIFv1','Informe Final',5,'2011-08-08','2011-08-12'),('MEIFv1','Evaluaci�n del Jefe',50,'2011-08-08','2011-08-12'),('Rigido','Validado',0,'2011-04-03','2011-04-03'),('Rigido','Algo',0,'2011-04-03','2011-04-03'),('Rigido','dos cosas',0,'2011-04-03','2011-04-03'),('testinterno','1uno�',10,'2011-04-06','2011-04-04'),('pepe','c�sa',20,'2011-04-06','2011-04-07'),('pepe','varc�r�sa',12,'2011-04-05','2011-04-20');

UNLOCK TABLES;

/*Table structure for table `empresa_ss_fca` */

drop table if exists `empresa_ss_fca`;

CREATE TABLE `empresa_ss_fca` (
  `IdEmp` varchar(16) collate latin1_spanish_ci NOT NULL default '',
  `NombreEmp` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `DireccionEmp` varchar(70) collate latin1_spanish_ci default NULL,
  `EmailEmp` varchar(50) collate latin1_spanish_ci default NULL,
  `TelefonoEmp` int(10) unsigned default NULL,
  `Telefono2Emp` int(10) unsigned default NULL,
  `Telefono3Emp` int(10) unsigned default NULL,
  `SectorEmp` varchar(10) collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`IdEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `empresa_ss_fca` */

LOCK TABLES `empresa_ss_fca` WRITE;

UNLOCK TABLES;

/*Table structure for table `encargado_ss_fca` */

drop table if exists `encargado_ss_fca`;

CREATE TABLE `encargado_ss_fca` (
  `IdEnc` varchar(16) collate latin1_spanish_ci NOT NULL default '',
  `NombreEnc` varchar(40) collate latin1_spanish_ci NOT NULL default '',
  `PuestoEnc` varchar(50) collate latin1_spanish_ci default NULL,
  `EmailEnc` varchar(50) collate latin1_spanish_ci default NULL,
  `TelefonoEnc` int(10) unsigned default NULL,
  `CelEnc` bigint(13) unsigned default NULL,
  PRIMARY KEY  (`IdEnc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `encargado_ss_fca` */

LOCK TABLES `encargado_ss_fca` WRITE;

UNLOCK TABLES;

/*Table structure for table `evaluacion_meifv1` */

drop table if exists `evaluacion_meifv1`;

CREATE TABLE `evaluacion_meifv1` (
  `MatriculaAlu` varchar(9) collate latin1_spanish_ci NOT NULL default '',
  `Platica` float default '-1' COMMENT 'criterio evaluado',
  `CartadePresentacion/Aceptacion` float default '-1' COMMENT 'criterio evaluado',
  `SolicituddeRegistro` float default '-1' COMMENT 'criterio evaluado',
  `ProgramadeTrabajo` float default '-1' COMMENT 'criterio evaluado',
  `AcuerdodeColaboracion` float default '-1' COMMENT 'criterio evaluado',
  `InformeBimestral1` float default '-1' COMMENT 'criterio evaluado',
  `InformeBimestral2` float default '-1' COMMENT 'criterio evaluado',
  `InformeBimestral3` float default '-1' COMMENT 'criterio evaluado',
  `InformeFinal` float default '-1' COMMENT 'criterio evaluado',
  `EvaluaciondelJefe` float default '-1' COMMENT 'criterio evaluado',
  PRIMARY KEY  (`MatriculaAlu`),
  CONSTRAINT `evaluacion_MEIFv1_ibfk_1` FOREIGN KEY (`MatriculaAlu`) REFERENCES `alumno_ss_fca` (`MatriculaAlu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `evaluacion_meifv1` */

LOCK TABLES `evaluacion_meifv1` WRITE;

insert into `evaluacion_meifv1` values ('S05007343',2,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S05012197',0,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S05015407',0,1,1.5,1.9,5,-1,-1,-1,-1,-1),('S06000432',-1,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S06012277',2,1,1.6,4.8,5,-1,-1,-1,-1,-1),('S06012476',0,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S06012520',0,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S06016185',0,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S06016191',0,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S06016194',2,1,1.2,4.9,4.8,-1,-1,-1,-1,-1),('S06016208',2,1,1.9,0.3,5,-1,-1,-1,-1,-1),('S06018257',2,1,1.9,4.7,5,-1,-1,-1,-1,-1),('S06018261',0,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S07006965',0,1,1.8,4.1,5,-1,-1,-1,-1,-1),('S07007029',0,1,1.9,4.9,-1,-1,-1,-1,-1,-1),('S07007039',2,1,1.9,4.5,5,-1,-1,-1,-1,-1),('S07007042',2,1,1.7,4.8,5,-1,-1,-1,-1,-1),('S07007124',2,1,2,5,5,-1,-1,-1,-1,-1),('S07007128',0,1,1.2,4.3,5,-1,-1,-1,-1,-1),('S07007169',0,1,1.5,1.3,5,-1,-1,-1,-1,-1),('S07008451',-1,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S07012097',0,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S07012100',0,1,1.3,4.5,5,-1,-1,-1,-1,-1),('S07012120',2,1,2,5,5,-1,-1,-1,-1,-1),('S07012139',2,0.5,1.8,4.3,5,-1,-1,-1,-1,-1),('S07012163',2,1,1.9,4.9,5,-1,-1,-1,-1,-1),('S07012165',2,1,1.7,4.7,5,-1,-1,-1,-1,-1),('S07012178',2,1,1.7,4.9,5,-1,-1,-1,-1,-1),('S07012192',2,1,1.9,4.9,5,-1,-1,-1,-1,-1),('S07015267',0,1,1.4,3.9,5,-1,-1,-1,-1,-1),('S07015270',0,1,1.6,5,5,-1,-1,-1,-1,-1),('S07015282',2,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S07015327',-1,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S07016375',2,0.9,1.9,3,5,-1,-1,-1,-1,-1),('S07016390',2,1,2,5,5,-1,-1,-1,-1,-1),('S07016395',0,1,1.2,3.8,5,-1,-1,-1,-1,-1),('S07018677',2,1,1.6,3.3,5,-1,-1,-1,-1,-1),('S07018680',0,0.1,0.2,0.5,5,-1,-1,-1,-1,-1),('S07018682',0,1,1.5,4.1,-1,-1,-1,-1,-1,-1),('S07018683',2,1,1.5,4.7,5,-1,-1,-1,-1,-1),('S07019411',-1,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S07023268',2,1,1.8,4.5,5,-1,-1,-1,-1,-1),('S07023272',2,1,1.9,4.4,4.6,-1,-1,-1,-1,-1),('S07023273',2,1,1.8,4.4,5,-1,-1,-1,-1,-1),('S07023289',2,1,2,3,5,-1,-1,-1,-1,-1),('S07023292',2,1,2,4.5,4.7,-1,-1,-1,-1,-1),('S07023294',2,0.7,1.8,4.8,5,-1,-1,-1,-1,-1),('S07023295',2,0.5,1.9,4.9,5,-1,-1,-1,-1,-1),('S07023307',2,1,2,4.5,4.7,-1,-1,-1,-1,-1),('S07023310',2,0.9,2,4.5,5,-1,-1,-1,-1,-1),('S08010031',2,1,2,5,5,10,10,10,5,50),('S08010034',2,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S08010035',2,0.9,1.4,4.5,5,-1,-1,-1,-1,-1),('S08010038',0,1,1.9,5,5,-1,-1,-1,-1,-1),('S08010049',0,0.4,1.9,5,5,-1,-1,-1,-1,-1),('S08010063',0,0.4,1.9,5,5,-1,-1,-1,-1,-1),('S08010071',2,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S08010072',2,-1,-1,-1,-1,-1,-1,-1,-1,-1),('S08010078',0,1,1.9,4.9,5,-1,-1,-1,-1,-1),('S08024283',0,1,1.3,2.9,5,-1,-1,-1,-1,-1),('S08028858',2,1,1.8,4,5,-1,-1,-1,-1,-1),('S09013831',2,1,1.9,4.5,5,-1,-1,-1,-1,-1);

UNLOCK TABLES;

/*Table structure for table `historial_alumno_ss_fca` */

drop table if exists `historial_alumno_ss_fca`;

CREATE TABLE `historial_alumno_ss_fca` (
  `MatriculaAlu` varchar(9) collate latin1_spanish_ci NOT NULL default '',
  `IdAcu` int(10) unsigned zerofill NOT NULL default '0000000000',
  `FuncionHist` varchar(50) collate latin1_spanish_ci default NULL COMMENT 'A que se va a dedicar el estudiante',
  `TipoHist` varchar(7) collate latin1_spanish_ci default NULL COMMENT 'Si es Becado, dentro de la UV o brigada',
  `JefeDirectoHist` varchar(50) collate latin1_spanish_ci default NULL COMMENT 'quien es su jefe directo',
  `EvaluacionHist` float unsigned default NULL,
  PRIMARY KEY  (`MatriculaAlu`,`IdAcu`),
  KEY `FK_historial_alumno_ss_fca_acuerdo_ss_fca` (`IdAcu`),
  CONSTRAINT `FK_historial_alumno_ss_fca_acuerdo_ss_fca` FOREIGN KEY (`IdAcu`) REFERENCES `acuerdo_ss_fca` (`IdAcu`),
  CONSTRAINT `FK_historial_alumno_ss_fca_alumno_ss_fca` FOREIGN KEY (`MatriculaAlu`) REFERENCES `alumno_ss_fca` (`MatriculaAlu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `historial_alumno_ss_fca` */

LOCK TABLES `historial_alumno_ss_fca` WRITE;

UNLOCK TABLES;

/*Table structure for table `notas_ss_fca` */

drop table if exists `notas_ss_fca`;

CREATE TABLE `notas_ss_fca` (
  `MatriculaAlu` varchar(9) NOT NULL default '',
  `Evaluacion` varchar(50) NOT NULL default '',
  `Nota` varchar(250) default 'No hay comentarios.',
  `FechaEntrega` date default NULL,
  PRIMARY KEY  (`MatriculaAlu`,`Evaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notas_ss_fca` */

LOCK TABLES `notas_ss_fca` WRITE;

insert into `notas_ss_fca` values ('S05012197','Platica','NO ASISTIO','0000-00-00'),('S05015407','ProgramadeTrabajo','Acentos                  .5\r\nRedacción                .1\r\nRetraso                 2.5','0000-00-00'),('S05015407','SolicituddeRegistro','Actividad                            .1\r\nAcentos                              .3\r\nTiene U.V. como si y debe ser no     .1','0000-00-00'),('S06000432','SolicituddeRegistro','inconsistencia, faltas de ortografía','0000-00-00'),('S06012277','ProgramadeTrabajo','0.2 por inconsistencia en el nombre oficial. EN LA SOLICITUD, EN LA CARTA DE PRESENTACIÓN Y EN PROGRAMA','0000-00-00'),('S06012277','SolicituddeRegistro','0.1 despuento por espacio en blanco, 0.2 por que las fechas  de inicio y culminación no son las del programa, ademas 0.1 por que la sección no es la correcta.','0000-00-00'),('S06012476','Platica','NO ASISTIO','0000-00-00'),('S06012520','Platica','NO ASISTIO','0000-00-00'),('S06016185','Platica','NO ASISTIO','0000-00-00'),('S06016191','Platica','No ASISTIO','0000-00-00'),('S06016194','AcuerdodeColaboracion','0.2 POR QUE EL NOMBRE DEL DIRRECTOR ESTA MAL.','0000-00-00'),('S06016194','ProgramadeTrabajo','0.1 POR FALTAS DE ORTOGRAFIA.','0000-00-00'),('S06016194','SolicituddeRegistro','0.1 DESCONTADO POR QUE EL ESCUDO DE LA ESCUELA ESTA INCOMPLETO, 0.1 EL SECTOR ESTA MAL, 0.5 EL OBJETIVO NO ESTA EN INFINITIVO, ademas 0.1 por que la sección es incorrecta.','0000-00-00'),('S06016208','ProgramadeTrabajo','0.1 sección del servicio es incorrecto, 0.1 inconsistencia en en el nombre oficial. Y tiene nueve dias de retraso con sus documentos  4.50 en general.','0000-00-00'),('S06016208','SolicituddeRegistro','0.1 sección del servicio es incorecto','0000-00-00'),('S06018257','ProgramadeTrabajo','0.3 algunos objetivos no estan en infinitivos.','0000-00-00'),('S06018257','SolicituddeRegistro','0.1 sector no es el correcto','0000-00-00'),('S06018261','Platica','NO ASISTIO','0000-00-00'),('S07006965','ProgramadeTrabajo','Objetivos no estan en infinitivo     .5\r\nSin firma                            .1\r\nAcentos                              .3','0000-00-00'),('S07006965','SolicituddeRegistro','Actividad    .1\r\nSector       .1','0000-00-00'),('S07007029','ProgramadeTrabajo','Acento    .1','0000-00-00'),('S07007029','SolicituddeRegistro','Actividad    .1','0000-00-00'),('S07007039','ProgramadeTrabajo','Objetivos no están en infinitivo','0000-00-00'),('S07007039','SolicituddeRegistro','Mayúscula','0000-00-00'),('S07007042','ProgramadeTrabajo','Nombre oficial no coincide con S.R.    .1\r\nSin firma                              .1','0000-00-00'),('S07007042','SolicituddeRegistro','Sin firma                  .1\r\nAcento                     .1\r\nMayúscula                  .1','0000-00-00'),('S07007128','ProgramadeTrabajo','Actividades no coinciden               .5\r\nArea de trabajo no coincide con S.R.   .1\r\nAcento                                 .1','0000-00-00'),('S07007128','SolicituddeRegistro','Sin foto         .1\r\nAcitividad       .1\r\nClase            .1\r\nSector           .1\r\nAcento           .3\r\nOrtografía       .1','0000-00-00'),('S07007169','ProgramadeTrabajo','Actividades no coinciden           .5\r\nInconsistencia de nombre oficial   .1\r\nMayúsculas                         .1\r\nRetraso                           3.0','0000-00-00'),('S07007169','SolicituddeRegistro','Fechas de inicio y fin   .2\r\nSin horario              .1\r\nAcentos                  .2','0000-00-00'),('S07012100','Platica','NO ASISTIO','0000-00-00'),('S07012100','ProgramadeTrabajo','0.5 se descuenta por que los objetivos no estan en infinitivo.','0000-00-00'),('S07012100','SolicituddeRegistro','0.5 por que el objetivo no esta en infinitivo y 0.2 por que la cruz esta escrita con lapicero y una celda esta en blanco.','0000-00-00'),('S07012139','CartadePresentacion/Aceptacion','0.5 falta carta de presentación.','0000-00-00'),('S07012139','ProgramadeTrabajo','0.1 inconsistencia en el nombre oficial, 0.1 falto firmar. Ademas 0.5 por que los objetivos especificos no estan en infinitivo.','0000-00-00'),('S07012139','SolicituddeRegistro','0.1 falto firmar, 0.1 horario no especificado.','0000-00-00'),('S07012163','ProgramadeTrabajo','0.1 por inconsistencia en el nombre oficial.','0000-00-00'),('S07012163','SolicituddeRegistro','NOMBRE DEL TITULAR MAL ESCRITO 0.1','0000-00-00'),('S07012165','ProgramadeTrabajo','0.1 sección equivocada, 0.1 faltas de ortografía y 0.1 inconsistencia en el nombre oficial','0000-00-00'),('S07012165','SolicituddeRegistro','0.1 sección equivocada, 0.1 sector equivocado y fecha de culminación no es el correcto. 0.1','0000-00-00'),('S07012178','ProgramadeTrabajo','0.1 LA SECCIÓN NO ES LA CORRECTA.','0000-00-00'),('S07012178','SolicituddeRegistro','0.1 SECCIÓN DEL SERVICIO INCORRECTO 0.2 CLASIFICACIÓN Y GIRO SON INCORRECTOS.','0000-00-00'),('S07012192','ProgramadeTrabajo','0.1 por inconsistencia en el nombre oficial.','0000-00-00'),('S07012192','SolicituddeRegistro','NOMBRE DEL TITULAR MAL ESCRITO 0.1','0000-00-00'),('S07015267','ProgramadeTrabajo','Acentos                             .6\r\nObjetivos no están en infinitivo    .5','0000-00-00'),('S07015267','SolicituddeRegistro','Acentos                            .5\r\nNombre oficial no coincide         .1','0000-00-00'),('S07015270','SolicituddeRegistro','Fecha de fin está mal      .1\r\nActividad es incorrecta    .1\r\nNombre Oficial             .1\r\nHorario                    .1','0000-00-00'),('S07016375','CartadePresentacion/Aceptacion','0.1 FALTO FIRMA DE RECEPCIÓN CARTA DE PRESENTACIÓN','0000-00-00'),('S07016375','ProgramadeTrabajo','2.00 SE DESCUENTA POR 4 DIAS DE RETRASO YA QUE NO ENTREGO PRORROGA.','0000-00-00'),('S07016375','SolicituddeRegistro','0.1 HORARIO INCOMPLETO','0000-00-00'),('S07016395','Platica','NO ASISTIO','0000-00-00'),('S07016395','ProgramadeTrabajo','0.5 se descuenta por un dia de retraso en la entrega de documentos.0.2 se descuenta pues en programa académico colocó meif y no su carrera ademas la sección no corresponde a la de su servicio, 0.5 los objetivos especificos no ESTAN EN INFINITIVO','0000-00-00'),('S07016395','SolicituddeRegistro','0.1 se descuenta pues no colocó su carrera sino que escribió meif, 0.1 en la sección del servicio,0.4 espacios en blanco y 0.2 por la actividad o giro y el sector no son los correctos.','0000-00-00'),('S07018677','ProgramadeTrabajo','Objetivos no están en infinitivo     .5\r\nInconsistencia en actividades        .5\r\nAcentos                              .7\r\nc','0000-00-00'),('S07018677','SolicituddeRegistro','Actividad es incorrecta         .1\r\nAcentos                         .3','0000-00-00'),('S07018680','CartadePresentacion/Aceptacion','Calificación mínima por retraso','0000-00-00'),('S07018680','ProgramadeTrabajo','Calificación mínima por retraso','0000-00-00'),('S07018680','SolicituddeRegistro','Calificación mínima por retraso','0000-00-00'),('S07018682','AcuerdodeColaboracion','Sin acuerdo de colaboración','0000-00-00'),('S07018682','ProgramadeTrabajo','Comas                            .2       \r\nAcentos                          .2       \r\nActividades no coinciden         .5','0000-00-00'),('S07018682','SolicituddeRegistro','Actividad                              .1\r\nClase                                  .1\r\nSector                                 .1\r\nFecha de inicio y fin son incorrectas  .2','0000-00-00'),('S07018683','ProgramadeTrabajo','Redacción                              .1\r\nAcentos                                .1\r\nArea de trabajo no coincide con S.R.   .1','0000-00-00'),('S07018683','SolicituddeRegistro','Fecha de inicio y fin estan mal     .2\r\nAcentos                             .3','0000-00-00'),('S07023268','ProgramadeTrabajo','0.5 LOS OBJETIVOS ESPECIFICOS NO ESTAN EN INFINITIVOS.','0000-00-00'),('S07023268','SolicituddeRegistro','0.1 FALTO FIRMAR Y 0.1 LA FECHA DE TERMINACIÓN ESTA MAL.','0000-00-00'),('S07023272','AcuerdodeColaboracion','0.4 FALTAS DE REDACCIÓN NOMBRE DEL MAESTRO ESTA EQUIVOCADO','0000-00-00'),('S07023272','ProgramadeTrabajo','0.1 INCONSISTENCIA EN EL NOMBRE OFICIAL. Y 0.5 OBJETIVOS ESPECIFICOS NO ESTAN EN INFINITIVOS.','0000-00-00'),('S07023272','SolicituddeRegistro','0.1 EL SECTOR ESTA EQUIVOCADO','0000-00-00'),('S07023273','ProgramadeTrabajo','0.1 faltas de ortografía y 0.5 por que los objetivos específicos no estan en infinitivo.','0000-00-00'),('S07023273','SolicituddeRegistro','espacio en blanco y faltas de ortografía 0.1 y por su horario incompresible 0.1.','0000-00-00'),('S07023289','ProgramadeTrabajo','2 acumulado por los 4 dias de retraso','0000-00-00'),('S07023292','AcuerdodeColaboracion','nombre del director incorrecto 0.3','0000-00-00'),('S07023292','ProgramadeTrabajo','0.5 objetivos especificos no estan en infinitivo.','0000-00-00'),('S07023294','CartadePresentacion/Aceptacion','0.2 POR REDACCIÓN Y 0.1 POR QUE LE FALTO LA FIRMA DE RECEPCIÓN (EN LA CARTA DE PRESENTACIÓN).','0000-00-00'),('S07023294','ProgramadeTrabajo','0.1 por que copio el nombre del programa del ejemplo de la paguina, 0.1 igual en el objetivo general.','0000-00-00'),('S07023294','SolicituddeRegistro','0.1 en el nombre del programa copio el ejemplo de la paguina, 0.1 igual en el objetivo del programa','0000-00-00'),('S07023295','CartadePresentacion/Aceptacion','0.5 se descuenta,\r\npues le falto la carta de presentación.','0000-00-00'),('S07023295','ProgramadeTrabajo','0.1 se descuenta por inconsistencia en el nombre oficial.','0000-00-00'),('S07023295','SolicituddeRegistro','0.1 se descuenta por faltas de ortografía.','0000-00-00'),('S07023307','AcuerdodeColaboracion','NOMBRE DEL DIRECTOR INCORRECTO 0.3','0000-00-00'),('S07023307','ProgramadeTrabajo','los objetivos especificos no estan en infinitivo. 0.5','0000-00-00'),('S07023310','CartadePresentacion/Aceptacion','0.1 POR FALTA DE ORTOGRAFIA','0000-00-00'),('S07023310','ProgramadeTrabajo','0.5 los objetivos especificos no estan en infinitivo','0000-00-00'),('S08010035','CartadePresentacion/Aceptacion','se descuenta 0.1 pues la firma de recepción de la carta de presentación no concuerda con las otras','0000-00-00'),('S08010035','ProgramadeTrabajo','0.5 se descuenta por que el objetivo no esta en infinitivo.','0000-00-00'),('S08010035','SolicituddeRegistro','se le descuenta 0.5 por que el objetivo no esta en infinitivo y\r\n0.1 por redacción','0000-00-00'),('S08010038','Platica','no asistio','0000-00-00'),('S08010038','SolicituddeRegistro','0.1 POR QUE LA FECHA DE TERMINACIÓN ES INCORRECTA.','0000-00-00'),('S08010049','CartadePresentacion/Aceptacion','0.5 NO TRAJO CARTA DE ACEPTACIÓN Y 0.1 LE FALTO FIRMA DE RECEPCIÓN DE LA CARTA DE PRESENTACIÓN.','0000-00-00'),('S08010049','Platica','NO ASISTIO','0000-00-00'),('S08010049','SolicituddeRegistro','0.1 POR QUE EL SERTOR NO ES EL CORRECTO.','0000-00-00'),('S08010063','CartadePresentacion/Aceptacion','0.5 NO TRAJO CARTA DE ACEPTACIÓN Y 0.1 FALTO FIRMA DE RECEPCIÓN EN LA CARTA DE PRESENTACIÓN.','0000-00-00'),('S08010063','Platica','NO ASISTIO','0000-00-00'),('S08010063','SolicituddeRegistro','0.1 POR QUE EL SECTOR NO ES EL CORRECTO.','0000-00-00'),('S08010078','Platica','No asistio','0000-00-00'),('S08010078','ProgramadeTrabajo','0.1 INCONSISTENCIA EN EL NOMBRE OFICIAL.','0000-00-00'),('S08010078','SolicituddeRegistro','0.1 POR QUE EL SECTOR NO ES EL CORRECTO.','0000-00-00'),('S08024283','ProgramadeTrabajo','Objetivos no están en infinitivo       .5\r\nActividades no coinciden               .5\r\nRedacción                              .1\r\nAcentos                               1.0','0000-00-00'),('S08024283','SolicituddeRegistro','Actividad                           .1\r\nHorario                             .1\r\nAcentos                             .3\r\nEspacios vacios                     .2','0000-00-00'),('S08028858','ProgramadeTrabajo','0.5 descuento por dia de retraso (en general) ya que no entrego prorroga. Y objetivos en infinitivo 0.5','0000-00-00'),('S08028858','SolicituddeRegistro','espacios en blanco 0.1 y 0.1 por que la sección no es la correcta.','0000-00-00'),('S09013831','ProgramadeTrabajo','los objetivos especificos no estan en infinitivo. 0.5','0000-00-00'),('S09013831','SolicituddeRegistro','sección del servicio incorrecto 0.1','0000-00-00');

UNLOCK TABLES;

/*Table structure for table `usuarios_ss_fca` */

drop table if exists `usuarios_ss_fca`;

CREATE TABLE `usuarios_ss_fca` (
  `usuario` varchar(20) collate latin1_spanish_ci NOT NULL default '',
  `contrasenia` varchar(42) collate latin1_spanish_ci default NULL,
  `nombre` varchar(30) collate latin1_spanish_ci default NULL,
  `nivel` varchar(30) collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `usuarios_ss_fca` */

LOCK TABLES `usuarios_ss_fca` WRITE;

insert into `usuarios_ss_fca` values ('demo','*C142FB215B6E05B7C134B1A653AD4B455157FD79','raul glez','evaluador'),('eduardo.villa','*5A047EF0601E1A9F427983C0CA10FB519FDE33FE','eduardo villa','evaluador'),('evaluador','*1DDD828F399FB73F83909E2A8C6D9A28E4D6500A','evaluador generico','evaluador'),('isa.narciso','*83CD79715D47E2BF27C0092376F9CDC5ED358CF1','isa narciso','evaluador'),('lol','lol','test1','admin'),('rafex','*98ADC911B9E716E05F900381B9CEB869923710EE','raul glez','admin'),('test','*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29','raul glez','admin'),('victor.jimenez','*B4CE990F8C80C1BFB626538176E4C95CBADFBE65','victor jimenez','evaluador');

UNLOCK TABLES;
