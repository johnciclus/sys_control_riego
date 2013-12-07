/*
SQLyog Enterprise - MySQL GUI v6.03
Host - 5.0.67-community-nt : Database - basesystemteleco
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `basesystemteleco`;
use `basesystemteleco`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `aplicacion_riego` */

CREATE TABLE `aplicacion_riego` (
  `id` int(11) NOT NULL auto_increment,
  `maczigbee` varchar(50) NOT NULL,
  `estado` int(1) default NULL,
  `fecha` date default NULL,
  `hora` time default NULL,
  PRIMARY KEY  (`id`),
  KEY `maczigbee` (`maczigbee`),
  CONSTRAINT `aplicacion_riego_ibfk_1` FOREIGN KEY (`maczigbee`) REFERENCES `registro_zigbee` (`maczigbee`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

/*Table structure for table `cultivo` */

CREATE TABLE `cultivo` (
  `codcult` int(11) NOT NULL auto_increment,
  `nomcult` varchar(25) default NULL,
  `denspoblacion` int(25) default NULL,
  `fechacult` date default NULL,
  `areacult` int(25) default NULL,
  `docus` int(11) NOT NULL,
  `idtiposiembra` int(11) NOT NULL,
  PRIMARY KEY  (`codcult`),
  KEY `docus` (`docus`),
  KEY `idtiposiembra` (`idtiposiembra`),
  CONSTRAINT `cultivo_ibfk_1` FOREIGN KEY (`docus`) REFERENCES `usuario` (`docus`),
  CONSTRAINT `cultivo_ibfk_2` FOREIGN KEY (`idtiposiembra`) REFERENCES `tipo_siembra` (`idtiposiembra`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `etapa_crecimiento` */

CREATE TABLE `etapa_crecimiento` (
  `idetapa` int(11) NOT NULL auto_increment,
  `codcult` int(11) NOT NULL default '0',
  `nometapa` varchar(25) default NULL,
  `limhum` int(50) default NULL,
  `duracion` int(11) default NULL,
  `fechaIni` date default NULL,
  `fechaFin` date default NULL,
  PRIMARY KEY  (`idetapa`,`codcult`),
  KEY `codcult` (`codcult`),
  CONSTRAINT `etapa_crecimiento_ibfk_1` FOREIGN KEY (`codcult`) REFERENCES `cultivo` (`codcult`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `medicion_variables` */

CREATE TABLE `medicion_variables` (
  `idregvar` int(11) NOT NULL auto_increment,
  `idtipovar` int(11) NOT NULL,
  `maczigbee` varchar(50) NOT NULL,
  `varhum` int(50) default NULL,
  `fechamedicion` date default NULL,
  `HoraRegistro` time default NULL,
  PRIMARY KEY  (`idregvar`),
  KEY `idtipovar` (`idtipovar`),
  KEY `maczigbee` (`maczigbee`),
  CONSTRAINT `medicion_variables_ibfk_1` FOREIGN KEY (`idtipovar`) REFERENCES `tipo_variables` (`idtipovar`),
  CONSTRAINT `medicion_variables_ibfk_2` FOREIGN KEY (`maczigbee`) REFERENCES `registro_zigbee` (`maczigbee`)
) ENGINE=InnoDB AUTO_INCREMENT=880 DEFAULT CHARSET=latin1;

/*Table structure for table `registro_zigbee` */

CREATE TABLE `registro_zigbee` (
  `maczigbee` varchar(50) NOT NULL,
  `nomzigbee` varchar(25) default NULL,
  `fechavar` date default NULL,
  `hora` time default NULL,
  `codcult` int(11) NOT NULL,
  `tipo` varchar(25) default NULL,
  PRIMARY KEY  (`maczigbee`),
  KEY `codcult` (`codcult`),
  CONSTRAINT `registro_zigbee_ibfk_1` FOREIGN KEY (`codcult`) REFERENCES `cultivo` (`codcult`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tipo_documento` */

CREATE TABLE `tipo_documento` (
  `idtipodoc` int(11) NOT NULL auto_increment,
  `nomdoc` varchar(25) default NULL,
  PRIMARY KEY  (`idtipodoc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `tipo_fertilizante` */

CREATE TABLE `tipo_fertilizante` (
  `idfertil` int(11) NOT NULL auto_increment,
  `nomfertil` varchar(25) default NULL,
  `elementosmayores` varchar(25) default NULL,
  `elementosmenores` varchar(25) default NULL,
  PRIMARY KEY  (`idfertil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tipo_siembra` */

CREATE TABLE `tipo_siembra` (
  `idtiposiembra` int(11) NOT NULL auto_increment,
  `nomsiembra` varchar(25) default NULL,
  PRIMARY KEY  (`idtiposiembra`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `tipo_variables` */

CREATE TABLE `tipo_variables` (
  `idtipovar` int(11) NOT NULL auto_increment,
  `nomvar` varchar(25) default NULL,
  `unidadmed` varchar(25) default NULL,
  PRIMARY KEY  (`idtipovar`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `usuario` */

CREATE TABLE `usuario` (
  `docus` int(11) NOT NULL,
  `idtipodoc` int(11) NOT NULL,
  `password` varchar(25) default NULL,
  `login` varchar(25) default NULL,
  `nomus` varchar(25) default NULL,
  `apeus` varchar(25) default NULL,
  `direus` varchar(25) default NULL,
  `teleus` int(20) default NULL,
  `emailus` varchar(30) default NULL,
  PRIMARY KEY  (`docus`),
  KEY `idtipodoc` (`idtipodoc`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idtipodoc`) REFERENCES `tipo_documento` (`idtipodoc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
