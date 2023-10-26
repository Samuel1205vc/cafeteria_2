-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-04-2023 a las 02:37:48
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cafeteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos`
--

DROP TABLE IF EXISTS `accesos`;
CREATE TABLE IF NOT EXISTS `accesos` (
  `id_acceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_acceso`),
  KEY `id_rol` (`id_rol`),
  KEY `id_opcion` (`id_opcion`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`id_acceso`, `id_rol`, `id_opcion`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 1, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(2, 1, 2, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(3, 1, 3, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(4, 1, 4, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(5, 1, 5, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(6, 1, 6, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(7, 1, 7, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(8, 1, 8, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(9, 1, 9, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(10, 1, 10, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(11, 1, 11, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(12, 1, 12, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(13, 1, 13, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(14, 1, 14, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(15, 1, 15, '2023-04-27 18:49:54', '2023-04-27 18:49:54', 1, 'A'),
(16, 1, 16, '2023-04-27 18:49:55', '2023-04-27 18:49:55', 1, 'A'),
(17, 1, 17, '2023-04-27 18:49:55', '2023-04-27 18:49:55', 1, 'A'),
(18, 1, 18, '2023-04-27 18:49:55', '2023-04-27 18:49:55', 1, 'A'),
(19, 2, 14, '2023-04-27 18:49:55', '2023-04-27 18:49:55', 1, 'A'),
(20, 2, 15, '2023-04-27 18:49:55', '2023-04-27 18:49:55', 1, 'A'),
(21, 3, 12, '2023-04-27 18:49:55', '2023-04-27 18:49:55', 1, 'A'),
(22, 1, 19, '2023-04-04 08:54:02', '2023-04-27 19:02:59', 1, 'A'),
(23, 1, 20, '2023-04-04 08:54:02', '2023-04-27 20:09:15', 1, 'A'),
(24, 1, 21, '2023-04-28 00:08:14', '2023-04-28 00:08:30', 1, 'A'),
(25, 1, 22, '2023-04-28 00:12:23', '2023-04-28 00:12:41', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafeteria`
--

DROP TABLE IF EXISTS `cafeteria`;
CREATE TABLE IF NOT EXISTS `cafeteria` (
  `id_cafeteria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  `dir` varchar(40) DEFAULT NULL,
  `logo` varchar(10) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cafeteria`
--

INSERT INTO `cafeteria` (`id_cafeteria`, `nombre`, `dir`, `logo`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 'VALE´S', 'CALLE SILVETTI #95', 'CAFE.jpg', '2023-04-27 18:47:04', '2023-04-27 18:47:04', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

DROP TABLE IF EXISTS `carreras`;
CREATE TABLE IF NOT EXISTS `carreras` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `id_instituto` int(11) NOT NULL,
  `carrera` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `grado_academico` varchar(20) DEFAULT NULL,
  `descripcion` text,
  `duracion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_carrera`),
  KEY `id_instituto` (`id_instituto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id_carrera`, `id_instituto`, `carrera`, `direccion`, `telefono`, `grado_academico`, `descripcion`, `duracion`) VALUES
(2, 1, 'SISTEMAS INFORMATICOS', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS'),
(3, 2, 'AUXILIAR CONTABLE', 'Calle Daniel Campos', '6642345', 'TECNICO MEDIO', '', '2 AÑOS'),
(4, 2, 'SECRETARIADO EJECUTIVO', 'Calle Daniel Campos', '6642345', 'TECNICO MEDIO', '', '2 AÑOS'),
(5, 2, 'TECNICO BANCARIO', 'Calle Daniel Campos', '6642345', 'TECNICO MEDIO', '', '2 AÑOS'),
(6, 3, 'AUXILIAR CONTABLE', 'Calle Campero', '6661598', 'TECNICO MEDIO', '', '2 AÑOS'),
(7, 1, 'GASTRONOMIA', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS'),
(8, 1, 'SECRETARIADO EJECUTIVO', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS'),
(9, 1, 'SECRETARIADO EJECUTIVOO', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS'),
(11, 1, 'SECRETARIADO EJECUTIVOO', 'AAA', '1234567', 'TECNICO SUPERIOR', 'ASD', '3 AÑOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `ap` varchar(20) DEFAULT NULL,
  `am` varchar(20) DEFAULT NULL,
  `ci` varchar(11) DEFAULT NULL,
  `genero` char(1) NOT NULL DEFAULT 'F',
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `id_cafeteria`, `nombre`, `ap`, `am`, `ci`, `genero`, `direccion`, `telefono`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'PAOLA', 'VASCO', '', '958435', 'F', '', '70012345', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(2, 1, 'ANDRES', 'VILLENA', '', '2615243', 'M', '', '70123456', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(3, 1, 'MARCO', 'SANZ', '', '3351872', 'M', '', '79865000', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(4, 1, 'ESTEBAN', 'COLODRO', '', '9569635', 'M', '', '60234587', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(5, 1, 'MIGUEL', 'ORTIZ', '', '2642243', 'M', '', '68041588', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(6, 1, 'ANA', 'VILLAROEL', '', '7895442', 'F', '', '60272135', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(7, 1, 'VALERIA', 'MOSCOSO', '', '912345', 'F', '', '68721458', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(8, 1, 'EMILIANO', 'CALVO', '', '145873', 'M', '', '60175910', '2023-04-27 18:47:08', '2023-04-27 18:47:08', 1, 'A'),
(9, 1, 'MARIA', 'MEDRANO', '', '356957', 'F', '', '68157903', '2023-04-27 18:47:08', '2023-04-27 18:47:08', 1, 'A'),
(10, 1, 'CLAUDIA', 'PEÑA', '', '3563554', 'F', '', '72946800', '2023-04-27 18:47:08', '2023-04-27 18:47:08', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumos_clientes`
--

DROP TABLE IF EXISTS `consumos_clientes`;
CREATE TABLE IF NOT EXISTS `consumos_clientes` (
  `id_consumo_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fec_consumo_cliente` date NOT NULL,
  `monto` float NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_consumo_cliente`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consumos_clientes`
--

INSERT INTO `consumos_clientes` (`id_consumo_cliente`, `id_cliente`, `id_empleado`, `fec_consumo_cliente`, `monto`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 2, 1, '2022-07-16', 28, '2023-04-27 18:47:08', '2023-04-27 18:47:08', 1, 'A'),
(2, 2, 3, '2022-07-25', 157, '2023-04-27 18:47:08', '2023-04-27 18:47:08', 1, 'A'),
(3, 1, 2, '2022-06-14', 14, '2023-04-27 18:47:08', '2023-04-27 18:47:08', 1, 'A'),
(4, 2, 1, '2022-07-11', 15, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(5, 2, 3, '2022-02-24', 10, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(6, 1, 2, '2022-04-18', 18, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(7, 2, 1, '2022-05-15', 28, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(8, 2, 3, '2022-06-29', 114, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(9, 1, 2, '2022-07-13', 20, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(10, 1, 2, '2022-08-01', 20, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(11, 5, 3, '2023-04-11', 25, '2023-04-04 08:54:02', '2023-04-27 20:46:20', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_consumos`
--

DROP TABLE IF EXISTS `detalles_consumos`;
CREATE TABLE IF NOT EXISTS `detalles_consumos` (
  `id_detalle_consumo` int(11) NOT NULL AUTO_INCREMENT,
  `id_consumo_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_detalle_consumo`),
  KEY `id_consumo_cliente` (`id_consumo_cliente`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalles_consumos`
--

INSERT INTO `detalles_consumos` (`id_detalle_consumo`, `id_consumo_cliente`, `id_producto`, `cantidad`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 2, 1, 2, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(2, 2, 3, 1, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(3, 1, 2, 3, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(4, 2, 1, 2, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(5, 2, 3, 1, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(6, 1, 2, 3, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(7, 2, 1, 2, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(8, 2, 3, 1, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(9, 1, 2, 3, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(10, 1, 2, 3, '2023-04-27 18:47:09', '2023-04-27 18:47:09', 1, 'A'),
(11, 11, 6, 2, '2023-04-04 08:54:02', '2023-04-27 20:47:16', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `ci` varchar(11) NOT NULL,
  `fec_ini` date NOT NULL,
  `fec_fin` date DEFAULT NULL,
  `genero` char(1) NOT NULL,
  `fec_nac` date NOT NULL,
  `sueldo` float NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `id_cafeteria`, `nombre`, `apellidos`, `ci`, `fec_ini`, `fec_fin`, `genero`, `fec_nac`, `sueldo`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'FERNANDA', 'FIGUEROA', '1548752', '2022-07-10', '2022-12-23', 'F', '1995-07-10', 3500, '2023-04-27 18:47:08', '2023-04-27 18:47:08', 1, 'A'),
(2, 1, 'CECILIA', 'LOPEZ', '3625415', '2022-07-02', '2022-12-20', 'F', '1995-01-11', 3500, '2023-04-27 18:47:08', '2023-04-27 18:47:08', 1, 'A'),
(3, 1, 'CAMILA', 'TAVERA', '5679854', '2022-07-03', '2022-12-20', 'F', '1994-10-10', 3500, '2023-04-27 18:47:08', '2023-04-27 18:47:08', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerente`
--

DROP TABLE IF EXISTS `gerente`;
CREATE TABLE IF NOT EXISTS `gerente` (
  `id_gerente` int(11) NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellidos` varchar(15) NOT NULL,
  `ci` varchar(11) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_gerente`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gerente`
--

INSERT INTO `gerente` (`id_gerente`, `id_cafeteria`, `nombre`, `apellidos`, `ci`, `telefono`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'SAMUEL', 'VALE', '5814375', '68720346', '2023-04-27 18:47:04', '2023-04-27 18:47:04', 1, 'A'),
(2, 1, 'LORENA', 'PENARRIETA', '1023544', '60215478', '2023-04-27 18:47:04', '2023-04-27 18:47:04', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

DROP TABLE IF EXISTS `grupos`;
CREATE TABLE IF NOT EXISTS `grupos` (
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(100) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id_grupo`, `grupo`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 'HERRAMIENTAS', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(2, 'PARAMETROS', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(3, 'CAFETERIA', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(4, 'REPORTES', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(5, 'EVA PRIMER BIMESTRE-DWII', '2023-04-28 00:05:20', '2023-04-28 00:05:47', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institutos`
--

DROP TABLE IF EXISTS `institutos`;
CREATE TABLE IF NOT EXISTS `institutos` (
  `id_instituto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `pag_web` varchar(20) NOT NULL,
  `resol_min` text,
  `mision` text,
  `vision` text,
  PRIMARY KEY (`id_instituto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `institutos`
--

INSERT INTO `institutos` (`id_instituto`, `nombre`, `direccion`, `telefono`, `pag_web`, `resol_min`, `mision`, `vision`) VALUES
(1, 'INCOS-TARIJA', 'CALLE LA PAZ Y MEMBRILLOS', '6649594', 'www.incos.com', '555/545', 'Formar profesionales con solida preparacion en las areas de la contabilidad e informatica mediante curriculos que se \r\najusten a las necesidade y realidad del departamento y del pais', 'Alcanzar la excelencia academica bajo parametros de calidad, eficiencia, eficacia e innovacion tecnico-tecnologica\r\npara dar respuesta oportuna a los requerimientos del sector productivo'),
(2, 'DOMINGO SAVIO', 'CALLE DANIEL CAMPOS', '', 'www.idms.com', '752/2009', 'Formar integramente tecnicos altmanente capacitados, através de aplicaciones tecnologicas educativas actualizadas, excelencia\r\nacademica y vocacion de servicio, para satisfacer las demandas laborales de la region en cursos y carreras tecnicas', 'Consolidarnos en el mercado regional como lider entre los institutos de capacitacion y/o formacion tecnica a traves de procesos\r\nde calidad y mejora continua'),
(3, 'CATEC', 'CALLE INGAVI ESQ. JUNIN', '', 'www.catec.com', '', '', ''),
(4, 'IPC PASCAL', 'CALLE SANTA CRUZ', '', 'www.ipc.com', '', '', ''),
(5, 'CCA', 'CALLE CAMPERO', '', 'www.cca.com', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

DROP TABLE IF EXISTS `insumos`;
CREATE TABLE IF NOT EXISTS `insumos` (
  `id_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_insumo`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`id_insumo`, `id_proveedor`, `nombre`, `descripcion`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'LECHE', 'LIQUIDA', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A'),
(2, 2, 'CAFE', 'CARANAVI DE ALTURA', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A'),
(3, 3, 'CARNE', 'LOMO', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A'),
(4, 4, 'NARANJAS', 'FRUTAS', '2023-04-27 22:56:17', '2023-04-27 18:56:17', 1, 'A'),
(5, 5, 'CREMA', 'CREMA DE LECHE', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A'),
(6, 6, 'HARINA', 'ESTRELLA', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

DROP TABLE IF EXISTS `opciones`;
CREATE TABLE IF NOT EXISTS `opciones` (
  `id_opcion` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) NOT NULL,
  `opcion` varchar(30) NOT NULL,
  `contenido` varchar(100) NOT NULL,
  `orden` int(11) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_opcion`),
  KEY `id_grupo` (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id_opcion`, `id_grupo`, `opcion`, `contenido`, `orden`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'PERSONAS', '../privada/personas/personas.php', 10, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(2, 1, 'USUARIOS ', '../privada/usuarios/usuarios.php', 20, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(3, 1, 'GRUPOS', '../privada/grupos/grupos.php', 30, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(4, 1, 'ROLES', '../privada/roles/roles.php', 40, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(5, 1, 'USUARIOS ROLES', '../privada/usuarios_roles/usuarios_roles.php', 50, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(6, 1, 'OPCIONES', '../privada/opciones/opciones.php', 60, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(7, 1, 'ACCESOS', '../privada/accesos/accesos.php', 70, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(8, 2, 'TIPOS PRODUCTOS', '../privada/tipos_productos/tipos_productos.php', 10, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(9, 3, 'DATOS CAFETERIA', '../privada/cafeteria/cafeteria.php', 10, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(10, 3, 'GERENTE', '../privada/cafeteria/cafeteria.php', 20, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(11, 3, 'PROVEEDORES', '../privada/proveedores/proveedores.php', 30, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(12, 3, 'INSUMOS', '../privada/insumos/insumos.php', 40, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(13, 3, 'PRODUCTOS', '../privada/productos/productos.php', 50, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(14, 3, 'CLIENTES', '../privada/clientes/clientes.php', 60, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(15, 3, 'EMPLEADOS', '../privada/cafeteria/cafeteria.php', 70, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(16, 3, 'CONSUMOS CLIENTES', '../privada/consumos_clientes/consumos_clientes.php', 80, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(17, 4, 'Rpt Personas con usuarios', '../privada/reportes/personas_usuarios.php', 10, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(18, 4, 'Rpt Personas con fechas', '../privada/reportes/personas_fechas.php', 20, '2023-04-27 18:47:13', '2023-04-27 18:47:13', 1, 'A'),
(19, 4, 'Rpt Proveedores Insumos', '../privada/reportes/proveedores_insumos.php', 30, '2023-04-04 08:54:02', '2023-04-27 19:01:46', 1, 'A'),
(20, 4, 'Rpt Consumo de Clientes', '../privada/reportes/consumos_clientes_fechas.php', 40, '2023-04-04 08:54:02', '2023-04-27 20:08:40', 1, 'A'),
(21, 5, 'carreras', '../privada/carreras/carreras.php', 10, '2023-04-28 00:07:15', '2023-04-28 00:11:21', 1, 'A'),
(22, 5, 'Rpt Institutos con Carreras', '../privada/reportes/carreras_institutos.php', 20, '2023-04-28 00:09:37', '2023-04-28 00:57:41', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `ap` varchar(20) DEFAULT NULL,
  `am` varchar(20) DEFAULT NULL,
  `ci` varchar(11) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(40) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `id_cafeteria`, `nombres`, `ap`, `am`, `ci`, `telefono`, `direccion`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'SAMUEL', 'VALE', 'CALLE ', '5814375', '68720346', 'Barrio 4to Centenario', '2023-04-27 18:47:11', '2023-04-27 18:47:11', 1, 'A'),
(2, 1, 'FRANCISCO', 'RODRIGUEZ', 'PEÑA ', '5463455', '72960346', 'Barrio La Loma', '2023-04-27 18:47:11', '2023-04-27 18:47:11', 1, 'A'),
(3, 1, 'JAVIER', 'DELGADO', 'SOLIZ ', '5354275', '68729685', 'Barrio Catedral', '2023-04-27 18:47:11', '2023-04-27 18:47:11', 1, 'A'),
(4, 1, 'FERNANDA', 'GONZALES', 'CASTRO ', '1234375', '60270346', 'Barrio Aranjuez', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(5, 1, 'YOSELIN', 'CARREÑO', 'MENDEZ ', '3543375', '75110346', 'Barrio Constructor', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(6, 1, 'CARLOS', 'VALDERRAMA', 'FERNANDEZ', '1355375', '7324346', 'Barrio El Molino', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(7, 1, 'LORENA', 'TARRAGA', 'VILLA', '1358463', '72935446', 'Barrio La Loma', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(8, 1, 'DANIEL', 'TORO', 'MENDIETA', '1234375', '61245446', 'Barrio Tabladita', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(9, 1, 'FIDEL', 'VACA', 'LIZARASO ', '9786375', '6000436', 'Barrio San Jose', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(10, 1, 'LAURA', 'LOROÑO', 'GUTIERREZ ', '5852175', '66900046', 'Barrio Villa Avaroa', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(20, 1, 'PATRICIO', 'GUZMAN', 'TRIGO ', '0000375', '7000437', 'Barrio San Antonio', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(21, 1, 'BENITO', 'CASTRO', 'JEREZ ', '5852000', '76900047', 'Barrio Tabladita', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int(11) NOT NULL,
  `id_tipo_producto` int(11) NOT NULL,
  `nombre_producto` varchar(55) NOT NULL,
  `descripcion` varchar(99) DEFAULT NULL,
  `precio` float NOT NULL,
  `foto` varchar(50) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_cafeteria` (`id_cafeteria`),
  KEY `id_tipo_producto` (`id_tipo_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_cafeteria`, `id_tipo_producto`, `nombre_producto`, `descripcion`, `precio`, `foto`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 2, 'LATTE', 'ESCENCIA DE CAFE + LECHE CREMADA', 15, 'LATE.jpg', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(2, 1, 3, 'TORTA DE CHOCOLATE', 'BIZCOCHO RELLENO Y CUBIERTA DE CHOCOLATE', 22, 'TORTA.jpg', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(3, 1, 3, 'TORTA DE ZANAHORIA', 'BIZCOCHO DE ZANAHORIA CON QUESO CREMA', 20, 'TORTA.jpg', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(4, 1, 4, 'LIMONADA', 'ESCENCIA DE LIMON + MENTA', 10, 'LIMONADA.jpg', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(5, 1, 2, 'AMERICANO', 'ESCENCIA DOBLE DE CAFE + AGUA', 10, 'AMERICANO.jpg', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A'),
(6, 1, 2, 'CAPUCCINO', 'ESCENCIA DOBLE DE CAFE + LECHE CREMADA', 20, 'CAPUCCINO.jpg', '2023-04-27 18:47:07', '2023-04-27 18:47:07', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `dir` varchar(40) DEFAULT NULL,
  `apellidos` varchar(15) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_proveedor`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `id_cafeteria`, `nombre`, `telefono`, `dir`, `apellidos`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'PEDRO', '78945612', 'MERCADO CAMPESINO', 'MARTINEZ', '2023-04-27 18:47:04', '2023-04-27 18:47:04', 1, 'A'),
(2, 1, 'CARMEN', '68123457', 'MERCADO CAMPESINO', 'FLORES', '2023-04-27 18:47:04', '2023-04-27 18:47:04', 1, 'A'),
(3, 1, 'MIGUEL', '72984563', 'MERCADO CENTRAL', 'VILLENA', '2023-04-27 18:47:04', '2023-04-27 18:47:04', 1, 'A'),
(4, 1, 'JOSE', '72946851', 'MERCADO CAMPESINO', 'BARRIOS', '2023-04-27 18:47:05', '2023-04-27 18:47:05', 1, 'A'),
(5, 1, 'VICTOR', '68456357', 'MERCADO CAMPESINO', 'LEDEZMA', '2023-04-27 18:47:05', '2023-04-27 18:47:05', 1, 'A'),
(6, 1, 'CARLOS', '70104563', 'MERCADO CENTRAL', 'VILTE', '2023-04-27 18:47:05', '2023-04-27 18:47:05', 1, 'A'),
(7, 1, 'MAURICIO', '78945010', 'MERCADO CAMPESINO', 'CLAURE', '2023-04-27 18:47:05', '2023-04-27 18:47:05', 1, 'A'),
(8, 1, 'FIDEL', '68110457', 'MERCADO CAMPESINO', 'CAMACHO', '2023-04-27 18:47:05', '2023-04-27 18:47:05', 1, 'A'),
(9, 1, 'ALEX', '72940011', 'MERCADO CENTRAL', 'TORREZ', '2023-04-27 18:47:05', '2023-04-27 18:47:05', 1, 'A'),
(10, 1, 'RODRIGO', '72983697', 'MERCADO CENTRAL', 'TARRAGA', '2023-04-27 18:47:05', '2023-04-27 18:47:05', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(20) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 'ADMINISTRADOR', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(2, 'USUARIO PRUEBA 1', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(3, 'USUARIO PRUEBA 2', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_productos`
--

DROP TABLE IF EXISTS `tipos_productos`;
CREATE TABLE IF NOT EXISTS `tipos_productos` (
  `id_tipo_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_tipo_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos_productos`
--

INSERT INTO `tipos_productos` (`id_tipo_producto`, `nombre`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 'LACTEOS', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A'),
(2, 'CAFES', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A'),
(3, 'TORTAS', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A'),
(4, 'JUGOS', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A'),
(5, 'POSTRES', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A'),
(6, 'SODAS', '2023-04-27 18:47:06', '2023-04-27 18:47:06', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `nom_usuario` varchar(15) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_persona` (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_persona`, `nom_usuario`, `clave`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'admin', '$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(2, 20, 'cajero', '$2y$10$aF9llyF1Y5L0lh4dat8oyu8KlG/MykpZ8KMDYMOU3TaK8c2FFLsje', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(3, 21, 'barista', '$2y$10$jU/zFlGcZDo834g3I3AJzefkqYy7lHLvEDHZqVRIJhWjnd1n3oLla', '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_roles`
--

DROP TABLE IF EXISTS `usuarios_roles`;
CREATE TABLE IF NOT EXISTS `usuarios_roles` (
  `id_usuario_rol` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int(11) NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_usuario_rol`),
  KEY `id_rol` (`id_rol`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_roles`
--

INSERT INTO `usuarios_roles` (`id_usuario_rol`, `id_rol`, `id_usuario`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 1, '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(2, 1, 2, '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A'),
(3, 1, 3, '2023-04-27 18:47:12', '2023-04-27 18:47:12', 1, 'A');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesos`
--
ALTER TABLE `accesos`
  ADD CONSTRAINT `accesos_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `accesos_ibfk_2` FOREIGN KEY (`id_opcion`) REFERENCES `opciones` (`id_opcion`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`id_instituto`) REFERENCES `institutos` (`id_instituto`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_cafeteria`) REFERENCES `cafeteria` (`id_cafeteria`);

--
-- Filtros para la tabla `consumos_clientes`
--
ALTER TABLE `consumos_clientes`
  ADD CONSTRAINT `consumos_clientes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `consumos_clientes_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_cafeteria`) REFERENCES `cafeteria` (`id_cafeteria`);

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `opciones_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`id_cafeteria`) REFERENCES `cafeteria` (`id_cafeteria`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
