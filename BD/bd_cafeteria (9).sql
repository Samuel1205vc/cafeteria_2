-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-09-2023 a las 23:28:51
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

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
  `id_acceso` int NOT NULL AUTO_INCREMENT,
  `id_rol` int NOT NULL,
  `id_opcion` int NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_acceso`),
  KEY `id_rol` (`id_rol`),
  KEY `id_opcion` (`id_opcion`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`id_acceso`, `id_rol`, `id_opcion`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 1, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(2, 1, 2, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(3, 1, 3, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(4, 1, 4, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(5, 1, 5, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(6, 1, 6, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(7, 1, 7, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(8, 1, 8, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(9, 1, 9, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(10, 1, 10, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(11, 1, 11, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(12, 1, 12, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(13, 1, 13, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(14, 1, 14, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(15, 1, 15, '2023-04-28 06:49:54', '2023-04-28 06:49:54', 1, 'A'),
(16, 1, 16, '2023-04-28 06:49:55', '2023-04-28 06:49:55', 1, 'A'),
(17, 1, 17, '2023-04-28 06:49:55', '2023-04-28 06:49:55', 1, 'A'),
(18, 1, 18, '2023-04-28 06:49:55', '2023-04-28 06:49:55', 1, 'A'),
(19, 2, 14, '2023-04-28 06:49:55', '2023-04-28 06:49:55', 1, 'A'),
(20, 2, 15, '2023-04-28 06:49:55', '2023-04-28 06:49:55', 1, 'A'),
(21, 3, 12, '2023-04-28 06:49:55', '2023-04-28 06:49:55', 1, 'A'),
(22, 1, 19, '2023-04-04 20:54:02', '2023-04-28 07:02:59', 1, 'A'),
(23, 1, 20, '2023-04-04 20:54:02', '2023-04-28 08:09:15', 1, 'A'),
(24, 1, 21, '2023-04-28 12:08:14', '2023-04-28 12:08:30', 1, 'A'),
(25, 1, 22, '2023-04-28 12:12:23', '2023-04-28 12:12:41', 1, 'A'),
(26, 1, 23, '2023-05-08 08:42:36', '2023-05-08 08:42:53', 1, 'A'),
(27, 1, 24, '2023-05-08 05:51:18', '2023-05-08 05:51:35', 1, 'A'),
(28, 1, 25, '2023-06-14 00:19:20', '2023-06-14 00:19:20', 1, 'A'),
(29, 1, 26, '2023-06-15 18:51:31', '2023-06-15 18:51:31', 1, 'A'),
(30, 1, 27, '2023-06-20 22:45:38', '2023-06-20 22:45:38', 1, 'A'),
(31, 1, 28, '2023-06-20 22:46:01', '2023-06-20 22:46:01', 1, 'A'),
(32, 1, 29, '2023-06-27 23:27:31', '2023-06-27 23:27:31', 1, 'A'),
(33, 1, 30, '2023-06-27 23:29:55', '2023-06-27 23:29:55', 1, 'A'),
(34, 1, 31, '2023-06-29 22:47:21', '2023-06-29 22:47:21', 1, 'A'),
(35, 1, 32, '2023-08-01 23:27:16', '2023-08-01 23:27:16', 1, 'A'),
(36, 1, 33, '2023-08-08 22:49:05', '2023-08-08 22:49:05', 1, 'A'),
(37, 1, 34, '2023-08-08 22:49:32', '2023-08-08 22:49:32', 1, 'A'),
(38, 1, 35, '2023-08-10 22:53:49', '2023-08-10 22:53:49', 1, 'A'),
(39, 1, 36, '2023-09-05 22:36:27', '2023-09-05 22:36:27', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animaciones`
--

DROP TABLE IF EXISTS `animaciones`;
CREATE TABLE IF NOT EXISTS `animaciones` (
  `id_animacion` int NOT NULL AUTO_INCREMENT,
  `id_sindicato` int NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `representante` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_animacion`),
  KEY `id_sindicato` (`id_sindicato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `animaciones`
--

INSERT INTO `animaciones` (`id_animacion`, `id_sindicato`, `nombre`, `representante`, `telefono`, `direccion`) VALUES
(1, 1, 'KANELU', 'GERMAZ OCHOA', '66-48787', 'C/DOMIGO PAZ Y GENERAL TRIGO'),
(2, 2, 'TUERKITAS', 'JOEL MELGAREJO', '66-63175', 'C/DOMIGO PAZ Y SUCRE #789'),
(3, 3, 'DISNEY', 'ALAN BRITO DELGADO', '66-90344', 'C/DOMIGO PAZ Y SUCRE #544'),
(4, 1, 'RESORTITO SHOW', 'ROSMERI OTONDO', '66-23457', 'C/MENDEZ PAZ COLON #678'),
(5, 2, 'ANTOJITOS', 'JHONNY MENDIETA', '75436788', 'C/15 DE ABRIL #321'),
(6, 3, 'MOJAME', 'MARTHA VAZQUES', '64352134', 'C/BOLIVAR #890 AL FRENTE LA EL PARQUE BOLIVAR'),
(7, 1, 'CORBATITA', 'GUILLERMO CONTANTINO VACA', '66-43243', 'C/GUADALQUIVIR Y SAMORA #759'),
(8, 2, 'CHIKILANDIA', 'LORENA SARABIA', '66-65656', 'B/LOS CHAPACOS C/TARIJA #356'),
(9, 3, 'DIBUJITO SHOW', 'BENJAMIN MAMANI', '62342344', 'B/EL PORTILLO C/JULIANA VACA #456'),
(10, 1, 'ROSY PRODUCCIONES', 'CARLA GIRON', '66-44344', 'B/EL TEJAR C/LIRIOS #722');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafeteria`
--

DROP TABLE IF EXISTS `cafeteria`;
CREATE TABLE IF NOT EXISTS `cafeteria` (
  `id_cafeteria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  `dir` varchar(40) DEFAULT NULL,
  `logo` varchar(10) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cafeteria`
--

INSERT INTO `cafeteria` (`id_cafeteria`, `nombre`, `dir`, `logo`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 'VALE´S', 'CALLE SILVETTI #95', 'CAFE.jpg', '2023-04-28 06:47:04', '2023-04-28 06:47:04', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

DROP TABLE IF EXISTS `carreras`;
CREATE TABLE IF NOT EXISTS `carreras` (
  `id_carrera` int NOT NULL AUTO_INCREMENT,
  `id_instituto` int NOT NULL,
  `carrera` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `grado_academico` varchar(20) DEFAULT NULL,
  `descripcion` text,
  `duracion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_carrera`),
  KEY `id_instituto` (`id_instituto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(9, 1, 'SECRETARIADO EJECUTIVOO', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras_dw`
--

DROP TABLE IF EXISTS `carreras_dw`;
CREATE TABLE IF NOT EXISTS `carreras_dw` (
  `id_carrera` int NOT NULL AUTO_INCREMENT,
  `id_instituto` int NOT NULL,
  `carrera` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `grado_academico` varchar(20) DEFAULT NULL,
  `descripcion` text,
  `duracion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_carrera`),
  KEY `id_instituto` (`id_instituto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `carreras_dw`
--

INSERT INTO `carreras_dw` (`id_carrera`, `id_instituto`, `carrera`, `direccion`, `telefono`, `grado_academico`, `descripcion`, `duracion`) VALUES
(1, 1, 'CONTADURIA PUBLICA', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS'),
(2, 1, 'SISTEMAS INFORMATICOS', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS'),
(3, 2, 'AUXILIAR CONTABLE', 'Calle Daniel Campos', '6642345', 'TECNICO MEDIO', '', '2 AÑOS'),
(4, 2, 'SECRETARIADO EJECUTIVO', 'Calle Daniel Campos', '6642345', 'TECNICO MEDIO', '', '2 AÑOS'),
(5, 2, 'TECNICO BANCARIO', 'Calle Daniel Campos', '6642345', 'TECNICO MEDIO', '', '2 AÑOS'),
(6, 3, 'AUXILIAR CONTABLE', 'Calle Campero', '6661598', 'TECNICO MEDIO', '', '2 AÑOS'),
(7, 1, 'GASTRONOMIA', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS'),
(8, 1, 'SECRETARIADO EJECUTIVO', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id_Categoria` int NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_Categoria`, `Categoria`) VALUES
(1, 'SUPERACION PERSONAL '),
(2, 'NACIONALES '),
(3, 'CLASICOS '),
(4, 'INTERNACIONALES '),
(5, 'ESTUDIO '),
(6, 'cuentosa'),
(7, 'librosa'),
(8, 'CUENTOS'),
(9, 'POLICIALES '),
(10, 'folletos'),
(11, 'revistas'),
(12, 'NOBELAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `ap` varchar(20) DEFAULT NULL,
  `am` varchar(20) DEFAULT NULL,
  `ci` varchar(11) DEFAULT NULL,
  `genero` char(1) NOT NULL DEFAULT 'F',
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `id_cafeteria`, `nombre`, `ap`, `am`, `ci`, `genero`, `direccion`, `telefono`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'PAOLA', 'VASCO', '', '958435', 'F', '', '70012345', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(2, 1, 'ANDRES', 'VILLENA', '', '2615243', 'M', '', '70123456', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(3, 1, 'MARCO', 'SANZ', '', '3351872', 'M', '', '79865000', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(4, 1, 'ESTEBAN', 'COLODRO', '', '9569635', 'M', '', '60234587', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(5, 1, 'MIGUEL', 'ORTIZ', '', '2642243', 'M', '', '68041588', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(6, 1, 'ANA', 'VILLAROEL', '', '7895442', 'F', '', '60272135', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(7, 1, 'VALERIA', 'MOSCOSO', '', '912345', 'F', '', '68721458', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(8, 1, 'EMILIANO', 'CALVO', '', '145873', 'M', '', '60175910', '2023-04-28 06:47:08', '2023-04-28 06:47:08', 1, 'A'),
(9, 1, 'MARIA', 'MEDRANO', '', '356957', 'F', '', '68157903', '2023-04-28 06:47:08', '2023-04-28 06:47:08', 1, 'A'),
(10, 1, 'CLAUDIA', 'PEÑA', '', '3563554', 'F', '', '72946800', '2023-04-28 06:47:08', '2023-04-28 06:47:08', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_examen`
--

DROP TABLE IF EXISTS `clientes_examen`;
CREATE TABLE IF NOT EXISTS `clientes_examen` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `id_ferreteria` int NOT NULL,
  `nit_ci` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap` varchar(20) DEFAULT NULL,
  `am` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_ferreteria` (`id_ferreteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumos_clientes`
--

DROP TABLE IF EXISTS `consumos_clientes`;
CREATE TABLE IF NOT EXISTS `consumos_clientes` (
  `id_consumo_cliente` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_empleado` int NOT NULL,
  `fec_consumo_cliente` date NOT NULL,
  `monto` float NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_consumo_cliente`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consumos_clientes`
--

INSERT INTO `consumos_clientes` (`id_consumo_cliente`, `id_cliente`, `id_empleado`, `fec_consumo_cliente`, `monto`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 2, 1, '2022-07-16', 28, '2023-04-28 06:47:08', '2023-04-28 06:47:08', 1, 'A'),
(2, 2, 3, '2022-07-25', 157, '2023-04-28 06:47:08', '2023-04-28 06:47:08', 1, 'A'),
(3, 1, 2, '2022-06-14', 14, '2023-04-28 06:47:08', '2023-04-28 06:47:08', 1, 'A'),
(4, 2, 1, '2022-07-11', 15, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(5, 2, 3, '2022-02-24', 10, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(6, 1, 2, '2022-04-18', 18, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(7, 2, 1, '2022-05-15', 28, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(8, 2, 3, '2022-06-29', 114, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(9, 1, 2, '2022-07-13', 20, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(10, 1, 2, '2022-08-01', 20, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(11, 5, 3, '2023-04-11', 25, '2023-04-04 20:54:02', '2023-04-28 08:46:20', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_consumos`
--

DROP TABLE IF EXISTS `detalles_consumos`;
CREATE TABLE IF NOT EXISTS `detalles_consumos` (
  `id_detalle_consumo` int NOT NULL AUTO_INCREMENT,
  `id_consumo_cliente` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_detalle_consumo`),
  KEY `id_consumo_cliente` (`id_consumo_cliente`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalles_consumos`
--

INSERT INTO `detalles_consumos` (`id_detalle_consumo`, `id_consumo_cliente`, `id_producto`, `cantidad`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 2, 1, 2, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(2, 2, 3, 1, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(3, 1, 2, 3, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(4, 2, 1, 2, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(5, 2, 3, 1, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(6, 1, 2, 3, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(7, 2, 1, 2, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(8, 2, 3, 1, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(9, 1, 2, 3, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(10, 1, 2, 3, '2023-04-28 06:47:09', '2023-04-28 06:47:09', 1, 'A'),
(11, 11, 6, 2, '2023-04-04 20:54:02', '2023-04-28 08:47:16', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int NOT NULL,
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
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `id_cafeteria`, `nombre`, `apellidos`, `ci`, `fec_ini`, `fec_fin`, `genero`, `fec_nac`, `sueldo`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'FERNANDA', 'FIGUEROA', '1548752', '2022-07-10', '2022-12-23', 'F', '1995-07-10', 3500, '2023-04-28 06:47:08', '2023-04-28 06:47:08', 1, 'A'),
(2, 1, 'CECILIA', 'LOPEZ', '3625415', '2022-07-02', '2022-12-20', 'F', '1995-01-11', 3500, '2023-04-28 06:47:08', '2023-04-28 06:47:08', 1, 'A'),
(3, 1, 'CAMILA', 'TAVERA', '5679854', '2022-07-03', '2022-12-20', 'F', '1994-10-10', 3500, '2023-04-28 06:47:08', '2023-04-28 06:47:08', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ferreteria`
--

DROP TABLE IF EXISTS `ferreteria`;
CREATE TABLE IF NOT EXISTS `ferreteria` (
  `id_ferreteria` int NOT NULL AUTO_INCREMENT,
  `cel` varchar(25) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `nom` varchar(25) NOT NULL,
  PRIMARY KEY (`id_ferreteria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ferreteria`
--

INSERT INTO `ferreteria` (`id_ferreteria`, `cel`, `tel`, `direccion`, `nom`) VALUES
(1, '78690876', '68694864', 'Av/La Paz', 'PERNOS FAR-BOL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerente`
--

DROP TABLE IF EXISTS `gerente`;
CREATE TABLE IF NOT EXISTS `gerente` (
  `id_gerente` int NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellidos` varchar(15) NOT NULL,
  `ci` varchar(11) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_gerente`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gerente`
--

INSERT INTO `gerente` (`id_gerente`, `id_cafeteria`, `nombre`, `apellidos`, `ci`, `telefono`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'SAMUEL', 'VALE', '5814375', '68720346', '2023-04-28 06:47:04', '2023-04-28 06:47:04', 1, 'A'),
(2, 1, 'LORENA', 'PENARRIETA', '1023544', '60215478', '2023-04-28 06:47:04', '2023-04-28 06:47:04', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

DROP TABLE IF EXISTS `grupos`;
CREATE TABLE IF NOT EXISTS `grupos` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `grupo` varchar(100) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id_grupo`, `grupo`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 'HERRAMIENTAS', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(2, 'PARAMETROS', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(3, 'CAFETERIA', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(4, 'REPORTES', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(5, 'TERCER-BIMES-DWII', '2023-04-28 12:05:20', '2023-08-10 22:44:47', 1, 'A'),
(6, 'TERCER-BIMES-BDII', '2023-08-08 22:41:13', '2023-08-08 22:41:13', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institutos`
--

DROP TABLE IF EXISTS `institutos`;
CREATE TABLE IF NOT EXISTS `institutos` (
  `id_instituto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `pag_web` varchar(20) NOT NULL,
  `resol_min` text,
  `mision` text,
  `vision` text,
  PRIMARY KEY (`id_instituto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `institutos`
--

INSERT INTO `institutos` (`id_instituto`, `nombre`, `direccion`, `telefono`, `pag_web`, `resol_min`, `mision`, `vision`) VALUES
(1, 'INCOS-TARIJA', 'CALLE LA PAZ Y MEMBRILLOS', '6649594', 'www.incos.com', '555/545', 'Formar profesionales con solida preparacion en las areas de la contabilidad e informatica mediante curriculos que se \r\najusten a las necesidade y realidad del departamento y del pais', 'Alcanzar la excelencia academica bajo parametros de calidad, eficiencia, eficacia e innovacion tecnico-tecnologica\r\npara dar respuesta oportuna a los requerimientos del sector productivo'),
(2, 'DOMINGO SAVIO', 'CALLE DANIEL CAMPOS', '', 'www.idms.com', '752/2009', 'Formar integramente tecnicos altmanente capacitados, através de aplicaciones tecnologicas educativas actualizadas, excelencia\r\nacademica y vocacion de servicio, para satisfacer las demandas laborales de la region en cursos y carreras tecnicas', 'Consolidarnos en el mercado regional como lider entre los institutos de capacitacion y/o formacion tecnica a traves de procesos\r\nde calidad y mejora continua'),
(3, 'CATEC', 'CALLE INGAVI ESQ. JUNIN', '', 'www.catec.com', '', '', ''),
(4, 'IPC PASCAL', 'CALLE SANTA CRUZ', '', 'www.ipc.com', '', '', ''),
(5, 'CCA', 'CALLE CAMPERO', '', 'www.cca.com', '', '', ''),
(7, 'AAAA', 'BBB', '76543210', 'WWW.AAA.COM', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institutos_dw`
--

DROP TABLE IF EXISTS `institutos_dw`;
CREATE TABLE IF NOT EXISTS `institutos_dw` (
  `id_instituto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `pag_web` varchar(20) NOT NULL,
  `resol_min` text,
  `mision` text,
  `vision` text,
  PRIMARY KEY (`id_instituto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `institutos_dw`
--

INSERT INTO `institutos_dw` (`id_instituto`, `nombre`, `direccion`, `telefono`, `pag_web`, `resol_min`, `mision`, `vision`) VALUES
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
  `id_insumo` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_insumo`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`id_insumo`, `id_proveedor`, `nombre`, `descripcion`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'LECHE', 'LIQUIDA', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(2, 2, 'CAFE', 'CARANAVI DE ALTURA', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(3, 3, 'CARNE', 'LOMO', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(4, 4, 'NARANJAS', 'FRUTAS', '2023-04-28 10:56:17', '2023-04-28 06:56:17', 1, 'A'),
(5, 5, 'CREMA', 'CREMA DE LECHE', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(6, 6, 'HARINA', 'ESTRELLA', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(7, 1, 'AAA', 'aaa', '2023-08-11 05:11:54', '2023-08-11 01:11:57', 1, 'X'),
(8, 1, 'AAA', 'aaa', '2023-08-11 05:12:47', '2023-08-11 01:12:49', 1, 'X');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

DROP TABLE IF EXISTS `libros`;
CREATE TABLE IF NOT EXISTS `libros` (
  `id_Libro` int NOT NULL AUTO_INCREMENT,
  `id_Categoria` int NOT NULL,
  `codigo` varchar(5) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `nro_paginas` varchar(5) DEFAULT NULL,
  `editorial` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_Libro`),
  KEY `id_Categoria` (`id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_Libro`, `id_Categoria`, `codigo`, `titulo`, `nro_paginas`, `editorial`) VALUES
(1, 1, '001', 'SANGRE DE CAMPEON ', '190', 'DIAMANTE '),
(2, 2, '002', 'LA FUERZA DE SHECCID ', '180', 'DIAMANTE '),
(3, 3, '003', 'VOLAR SOBRE EL PANTANO ', '190', 'DIAMANTE '),
(4, 4, '004', 'UN GRITO DESESPERADO ', '198', 'DIAMANTE '),
(5, 5, '005', 'SANGRE DE CAMPEON SIN CADENAS ', '209', 'DIAMANTE '),
(6, 6, '056', 'EL ALQUIMISTA ', '300', 'GALAXIA '),
(7, 1, '056', 'EL ALQUIMISTA 1', '301', 'GALAXIA1'),
(8, 2, '098', 'SOCABONES DE ANGUSTIA', '567', 'JUVENTUD'),
(9, 7, '456', 'EREREREW', '67', 'FGGD'),
(10, 8, '098', 'ALGEBRA BALDOR', '581', ''),
(11, 9, '098', 'ARITMETICA BALDOR', '581', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

DROP TABLE IF EXISTS `marcas`;
CREATE TABLE IF NOT EXISTS `marcas` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `marca`) VALUES
(1, 'GAV'),
(2, 'POP'),
(3, 'RENAULT'),
(4, 'RED HEAD'),
(5, 'VAICO'),
(6, 'FEBEST'),
(7, 'FEBI'),
(8, 'JP GREUP'),
(9, 'TOPRAN'),
(10, 'MEYLE PRODUCTO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

DROP TABLE IF EXISTS `opciones`;
CREATE TABLE IF NOT EXISTS `opciones` (
  `id_opcion` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `opcion` varchar(70) NOT NULL,
  `contenido` varchar(100) NOT NULL,
  `orden` int NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_opcion`),
  KEY `id_grupo` (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id_opcion`, `id_grupo`, `opcion`, `contenido`, `orden`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'PERSONAS', '../privada/personas/personas.php', 10, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(2, 1, 'USUARIOS ', '../privada/usuarios/usuarios.php', 20, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(3, 1, 'GRUPOS', '../privada/grupos/grupos.php', 30, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(4, 1, 'ROLES', '../privada/roles/roles.php', 40, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(5, 1, 'USUARIOS ROLES', '../privada/usuarios_roles/usuarios_roles.php', 50, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(6, 1, 'OPCIONES', '../privada/opciones/opciones.php', 60, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(7, 1, 'ACCESOS', '../privada/accesos/accesos.php', 70, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(8, 2, 'TIPOS PRODUCTOS', '../privada/tipos_productos/tipos_productos.php', 10, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(9, 3, 'DATOS CAFETERIA', '../privada/cafeteria/cafeteria.php', 10, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(10, 3, 'GERENTE', '../privada/cafeteria/cafeteria.php', 20, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(11, 3, 'PROVEEDORES', '../privada/proveedores/proveedores.php', 30, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(12, 3, 'INSUMOS', '../privada/insumos/insumos.php', 40, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(13, 3, 'PRODUCTOS', '../privada/productos/productos.php', 50, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(14, 3, 'CLIENTES', '../privada/clientes/clientes.php', 60, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(15, 3, 'EMPLEADOS', '../privada/cafeteria/cafeteria.php', 70, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(16, 3, 'CONSUMOS CLIENTES', '../privada/consumos_clientes/consumos_clientes.php', 80, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(17, 4, 'Rpt Personas con usuarios', '../privada/reportes/personas_usuarios.php', 10, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(18, 4, 'Rpt Personas con fechas', '../privada/reportes/personas_fechas.php', 20, '2023-04-28 06:47:13', '2023-04-28 06:47:13', 1, 'A'),
(19, 4, 'Rpt Proveedores Insumos', '../privada/reportes/proveedores_insumos.php', 30, '2023-04-04 20:54:02', '2023-04-28 07:01:46', 1, 'A'),
(20, 4, 'Rpt Consumo de Clientes', '../privada/reportes/consumos_clientes_fechas.php', 40, '2023-04-04 20:54:02', '2023-04-28 08:08:40', 1, 'A'),
(21, 5, 'carreras', '../privada/carreras/carreras.php', 10, '2023-04-28 12:07:15', '2023-04-28 12:11:21', 1, 'A'),
(22, 5, 'Rpt Institutos con Carreras', '../privada/reportes/carreras_institutos.php', 20, '2023-04-28 12:09:37', '2023-04-28 12:57:41', 1, 'A'),
(23, 5, 'institutos', '../privada/institutos/institutos.php', 30, '2023-05-08 08:40:44', '2023-05-08 08:42:28', 1, 'A'),
(24, 5, 'Rpt Institutos con carreras inf_carrera', '../privada/reportes/carreras_institutos_infcarrera.php', 60, '2023-05-08 05:48:57', '2023-05-08 05:51:09', 1, 'A'),
(25, 4, 'Rpt_personas_genero', '../privada/reportes/personas_genero.php', 0, '2023-06-14 00:18:39', '2023-06-14 00:18:39', 1, 'A'),
(26, 4, 'Ficha Técnica de personas', '../privada/reportes/ficha_tec_personas.php', 0, '2023-06-15 18:50:47', '2023-06-15 18:50:47', 1, 'A'),
(27, 6, 'RPT Animaciones x SindicatoPayasos', '../privada/reportes/animaciones_x_sindicatos_payasos.php', 10, '2023-06-20 22:41:53', '2023-06-20 22:41:53', 1, 'A'),
(28, 6, 'Ficha Técnica de Animaciones', '../privada/reportes/ficha_tecnica_animaciones.php', 20, '2023-06-20 22:43:29', '2023-06-20 22:43:29', 1, 'A'),
(29, 6, 'RPT Productos x Marcas', '../privada/reportes/rpt_productos_marcas.php', 30, '2023-06-27 23:27:04', '2023-06-27 23:27:04', 1, 'A'),
(30, 6, 'Ficha Técnica de Productos', '../privada/reportes/ficha_tecnica_productos.php', 40, '2023-06-27 23:29:30', '2023-06-27 23:29:30', 1, 'A'),
(31, 5, 'LIBROS', '../privada/libros/libros.php', 50, '2023-06-29 22:46:57', '2023-06-29 23:05:32', 1, 'A'),
(32, 4, 'Reportes Estadísticos', '../privada/reportes/reportes_estadisticos.php', 60, '2023-08-01 23:26:11', '2023-08-01 23:26:11', 1, 'A'),
(33, 6, 'Reporte en pdf', '../privada/reportes/tipos_productos_productos.php', 50, '2023-08-08 22:46:43', '2023-08-08 23:18:01', 1, 'A'),
(34, 6, 'Reportes gráficos', '../privada/reportes/reportes_graficos.php', 60, '2023-08-08 22:48:09', '2023-08-08 23:41:23', 1, 'A'),
(35, 5, 'LISTADO CON PAGINACIÓN', '../privada/carreras_dw/carreras_dw.php', 10, '2023-08-10 22:50:48', '2023-08-10 23:20:54', 1, 'A'),
(36, 6, 'Evaluación Bimestral', '../privada/reportes/evaluacion_bimestral.php', 70, '2023-09-05 22:35:36', '2023-09-05 22:35:36', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `ap` varchar(20) DEFAULT NULL,
  `am` varchar(20) DEFAULT NULL,
  `ci` varchar(11) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(40) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  `genero` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `id_cafeteria`, `nombres`, `ap`, `am`, `ci`, `telefono`, `direccion`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`, `genero`) VALUES
(1, 1, 'SAMUEL', 'VALE', 'CALLE ', '5814375', '68720346', 'Barrio 4to Centenario', '2023-04-28 06:47:11', '2023-06-14 00:29:38', 1, 'A', 'M'),
(2, 1, 'FRANCISCO', 'RODRIGUEZ', 'PEÑA ', '5463455', '72960346', 'Barrio La Loma', '2023-04-28 06:47:11', '2023-04-28 06:47:11', 1, 'A', NULL),
(3, 1, 'JAVIER', 'DELGADO', 'SOLIZ ', '5354275', '68729685', 'Barrio Catedral', '2023-04-28 06:47:11', '2023-06-14 00:29:46', 1, 'A', 'F'),
(4, 1, 'FERNANDA', 'GONZALES', 'CASTRO ', '1234375', '60270346', 'Barrio Aranjuez', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A', NULL),
(5, 1, 'YOSELIN', 'CARREÑO', 'MENDEZ ', '3543375', '75110346', 'Barrio Constructor', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A', NULL),
(6, 1, 'CARLOS', 'VALDERRAMA', 'FERNANDEZ', '1355375', '7324346', 'Barrio El Molino', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A', NULL),
(7, 1, 'LORENA', 'TARRAGA', 'VILLA', '1358463', '72935446', 'Barrio La Loma', '2023-04-28 06:47:12', '2023-08-04 01:55:03', 1, 'X', NULL),
(8, 1, 'DANIEL', 'TORO', 'MENDIETA', '1234375', '61245446', 'Barrio Tabladita', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A', NULL),
(9, 1, 'FIDEL', 'VACA', 'LIZARASO ', '9786375', '6000436', 'Barrio San Jose', '2023-04-28 06:47:12', '2023-08-10 23:14:42', 1, 'X', NULL),
(10, 1, 'LAURA', 'LOROÑO', 'GUTIERREZ ', '5852175', '66900046', 'Barrio Villa Avaroa', '2023-04-28 06:47:12', '2023-08-04 01:41:29', 1, 'X', NULL),
(20, 1, 'PATRICIO', 'GUZMAN', 'TRIGO ', '0000375', '7000437', 'Barrio San Antonio', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A', NULL),
(21, 1, 'BENITO', 'CASTRO', 'JEREZ ', '5852000', '76900047', 'Barrio Tabladita', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios_productos`
--

DROP TABLE IF EXISTS `precios_productos`;
CREATE TABLE IF NOT EXISTS `precios_productos` (
  `id_precio_producto` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `fecha_prec_comp` date NOT NULL,
  `fecha_prec_vent` date NOT NULL,
  PRIMARY KEY (`id_precio_producto`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int NOT NULL,
  `id_tipo_producto` int NOT NULL,
  `nombre_producto` varchar(55) NOT NULL,
  `descripcion` varchar(99) DEFAULT NULL,
  `precio` float NOT NULL,
  `foto` varchar(50) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_cafeteria` (`id_cafeteria`),
  KEY `id_tipo_producto` (`id_tipo_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_cafeteria`, `id_tipo_producto`, `nombre_producto`, `descripcion`, `precio`, `foto`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 2, 'LATTE', 'ESCENCIA DE CAFE + LECHE CREMADA', 15, 'LATE.jpg', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(2, 1, 3, 'TORTA DE CHOCOLATE', 'BIZCOCHO RELLENO Y CUBIERTA DE CHOCOLATE', 22, 'TORTA.jpg', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(3, 1, 3, 'TORTA DE ZANAHORIA', 'BIZCOCHO DE ZANAHORIA CON QUESO CREMA', 20, 'TORTA.jpg', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(4, 1, 4, 'LIMONADA', 'ESCENCIA DE LIMON + MENTA', 10, 'LIMONADA.jpg', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(5, 1, 2, 'AMERICANO', 'ESCENCIA DOBLE DE CAFE + AGUA', 10, 'AMERICANO.jpg', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A'),
(6, 1, 2, 'CAPUCCINO', 'ESCENCIA DOBLE DE CAFE + LECHE CREMADA', 20, 'CAPUCCINO.jpg', '2023-04-28 06:47:07', '2023-04-28 06:47:07', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_examen`
--

DROP TABLE IF EXISTS `productos_examen`;
CREATE TABLE IF NOT EXISTS `productos_examen` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `id_marca` int NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_marca` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos_examen`
--

INSERT INTO `productos_examen` (`id_producto`, `id_marca`, `nombre_producto`, `imagen`) VALUES
(1, 1, 'ANILLAS SEGURIDAD DIN 471-472', 'anilla.jpg'),
(2, 2, 'ARA PLA ANCHA 1/2', 'ara1.jpg'),
(3, 3, 'ARA PLA ANCHA 1/4', 'ara2.jpg'),
(4, 4, 'BISAGRAS P/PORTON 5/8X70', 'bisagra.jpg'),
(5, 5, 'BROCAS MM HSS 4', 'broca.jpg'),
(6, 6, 'ARANDELA PLANA METRICA ANGOSTA ZA M30', 'arandela.jpg'),
(7, 1, 'PERNO HEX. C/ARAN  Cl 8.8  CTE. M6-1.00 x 40', 'perno1.jpg'),
(8, 1, 'PERNO HEX. C/ARAN  Cl 8.8  CTE. M8-1.25 x 50', 'perno2.jpg'),
(9, 1, 'PERNO P/CUCHILLA COSECHA C/CUADR M6-1.00 X 28', 'perno2.jpg'),
(10, 1, 'Perno rda c/tue Cl 10.9 Nissan condor Delantero M20-1.50x20-1.50 X 80L', 'perno3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `id_cafeteria` int NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `dir` varchar(40) DEFAULT NULL,
  `apellidos` varchar(15) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_proveedor`),
  KEY `id_cafeteria` (`id_cafeteria`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `id_cafeteria`, `nombre`, `telefono`, `dir`, `apellidos`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'PEDRO', '78945612', 'MERCADO CAMPESINO', 'MARTINEZ', '2023-04-28 06:47:04', '2023-04-28 06:47:04', 1, 'A'),
(2, 1, 'CARMEN', '68123457', 'MERCADO CAMPESINO', 'FLORES', '2023-04-28 06:47:04', '2023-04-28 06:47:04', 1, 'A'),
(3, 1, 'MIGUEL', '72984563', 'MERCADO CENTRAL', 'VILLENA', '2023-04-28 06:47:04', '2023-04-28 06:47:04', 1, 'A'),
(4, 1, 'JOSE', '72946851', 'MERCADO CAMPESINO', 'BARRIOS', '2023-04-28 06:47:05', '2023-04-28 06:47:05', 1, 'A'),
(5, 1, 'VICTOR', '68456357', 'MERCADO CAMPESINO', 'LEDEZMA', '2023-04-28 06:47:05', '2023-04-28 06:47:05', 1, 'A'),
(6, 1, 'CARLOS', '70104563', 'MERCADO CENTRAL', 'VILTE', '2023-04-28 06:47:05', '2023-04-28 06:47:05', 1, 'A'),
(7, 1, 'MAURICIO', '78945010', 'MERCADO CAMPESINO', 'CLAURE', '2023-04-28 06:47:05', '2023-04-28 06:47:05', 1, 'A'),
(8, 1, 'FIDEL', '68110457', 'MERCADO CAMPESINO', 'CAMACHO', '2023-04-28 06:47:05', '2023-04-28 06:47:05', 1, 'A'),
(9, 1, 'ALEX', '72940011', 'MERCADO CENTRAL', 'TORREZ', '2023-04-28 06:47:05', '2023-04-28 06:47:05', 1, 'A'),
(10, 1, 'RODRIGO', '72983697', 'MERCADO CENTRAL', 'TARRAGA', '2023-04-28 06:47:05', '2023-04-28 06:47:05', 1, 'A'),
(11, 1, 'AAA', '123', NULL, 'AAA', '2023-08-11 05:11:12', '2023-08-11 01:11:15', 1, 'X');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(20) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 'ADMINISTRADOR', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(2, 'USUARIO PRUEBA 1', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(3, 'USUARIO PRUEBA 2', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sindicato_paya_tarija`
--

DROP TABLE IF EXISTS `sindicato_paya_tarija`;
CREATE TABLE IF NOT EXISTS `sindicato_paya_tarija` (
  `id_sindicato` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `direcion` varchar(70) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fec_fundacion` date NOT NULL,
  PRIMARY KEY (`id_sindicato`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sindicato_paya_tarija`
--

INSERT INTO `sindicato_paya_tarija` (`id_sindicato`, `nombre`, `direcion`, `telefono`, `fec_fundacion`) VALUES
(1, 'ATAI', 'B/SENAC', '66-65656', '2018-12-10'),
(2, 'ASOIC', 'B/FATIMA', '66-53663', '2021-10-01'),
(3, 'ASOPAY', 'C/DOMINGO PAZ', '66-49988', '2022-01-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_productos`
--

DROP TABLE IF EXISTS `tipos_productos`;
CREATE TABLE IF NOT EXISTS `tipos_productos` (
  `id_tipo_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_tipo_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos_productos`
--

INSERT INTO `tipos_productos` (`id_tipo_producto`, `nombre`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 'LACTEOS', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(2, 'CAFES', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(3, 'TORTAS', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(4, 'JUGOS', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(5, 'POSTRES', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(6, 'SODAS', '2023-04-28 06:47:06', '2023-04-28 06:47:06', 1, 'A'),
(7, 'AAA', '2023-07-29 05:55:46', '2023-08-10 23:57:03', 1, 'X'),
(8, 'AAA', '2023-08-11 03:57:58', '2023-08-10 23:58:02', 1, 'X'),
(9, 'AAA', '2023-08-11 03:59:42', '2023-08-10 23:59:45', 1, 'X'),
(10, 'AAA', '2023-08-11 05:04:10', '2023-08-11 01:04:14', 1, 'X'),
(11, 'AAA', '2023-08-11 05:10:05', '2023-08-11 01:10:08', 1, 'X');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NOT NULL,
  `nom_usuario` varchar(15) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_persona` (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_persona`, `nom_usuario`, `clave`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 'admin', '$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(2, 20, 'cajero', '$2y$10$aF9llyF1Y5L0lh4dat8oyu8KlG/MykpZ8KMDYMOU3TaK8c2FFLsje', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(3, 21, 'barista', '$2y$10$jU/zFlGcZDo834g3I3AJzefkqYy7lHLvEDHZqVRIJhWjnd1n3oLla', '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_roles`
--

DROP TABLE IF EXISTS `usuarios_roles`;
CREATE TABLE IF NOT EXISTS `usuarios_roles` (
  `id_usuario_rol` int NOT NULL AUTO_INCREMENT,
  `id_rol` int NOT NULL,
  `id_usuario` int NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_usuario` int NOT NULL,
  `_estado` char(1) NOT NULL,
  PRIMARY KEY (`id_usuario_rol`),
  KEY `id_rol` (`id_rol`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_roles`
--

INSERT INTO `usuarios_roles` (`id_usuario_rol`, `id_rol`, `id_usuario`, `_fec_insercion`, `_fec_modificacion`, `_usuario`, `_estado`) VALUES
(1, 1, 1, '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(2, 1, 2, '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A'),
(3, 1, 3, '2023-04-28 06:47:12', '2023-04-28 06:47:12', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas_sitio`
--

DROP TABLE IF EXISTS `visitas_sitio`;
CREATE TABLE IF NOT EXISTS `visitas_sitio` (
  `id_visita` int NOT NULL AUTO_INCREMENT,
  `pagina_visitada` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_visita`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `visitas_sitio`
--

INSERT INTO `visitas_sitio` (`id_visita`, `pagina_visitada`, `cantidad`) VALUES
(1, 'CURSO DE PHP', 24),
(2, 'CURSO DE HTML', 41),
(3, 'CURSO DE CSS', 28),
(4, 'CURSO DE MODELO E-R', 21),
(5, 'CURSO DE MODELO RELACIONAL', 23),
(6, 'CURSO DE MYSQL BASICO', 23),
(7, 'CURSO DE MYSQL AVANZADO', 26),
(8, 'CURSO DE GIT', 28),
(9, 'CURSO DE NO SQL', 30);

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
-- Filtros para la tabla `animaciones`
--
ALTER TABLE `animaciones`
  ADD CONSTRAINT `animaciones_ibfk_1` FOREIGN KEY (`id_sindicato`) REFERENCES `sindicato_paya_tarija` (`id_sindicato`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`id_instituto`) REFERENCES `institutos` (`id_instituto`);

--
-- Filtros para la tabla `carreras_dw`
--
ALTER TABLE `carreras_dw`
  ADD CONSTRAINT `carreras_dw_ibfk_1` FOREIGN KEY (`id_instituto`) REFERENCES `institutos_dw` (`id_instituto`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_cafeteria`) REFERENCES `cafeteria` (`id_cafeteria`);

--
-- Filtros para la tabla `clientes_examen`
--
ALTER TABLE `clientes_examen`
  ADD CONSTRAINT `clientes_examen_ibfk_1` FOREIGN KEY (`id_ferreteria`) REFERENCES `ferreteria` (`id_ferreteria`);

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
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_Categoria`) REFERENCES `categorias` (`id_Categoria`);

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
-- Filtros para la tabla `precios_productos`
--
ALTER TABLE `precios_productos`
  ADD CONSTRAINT `precios_productos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `productos_examen`
--
ALTER TABLE `productos_examen`
  ADD CONSTRAINT `productos_examen_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
