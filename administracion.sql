-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 04, 2018 at 12:29 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `administracion`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombres`, `apellidos`, `dni`, `telefono`) VALUES
(1, 'Santiago Andrés', 'Gómez', 38006589, 154379870);

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
CREATE TABLE IF NOT EXISTS `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `acceso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` (`id`, `descripcion`, `acceso`) VALUES
(1, 'Auxiliar', 0),
(2, 'Preceptor', 1),
(3, 'Secretario', 2),
(4, 'Director', 3);

-- --------------------------------------------------------

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
CREATE TABLE IF NOT EXISTS `carreras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `información` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `modalidad` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `duracion` int(11) NOT NULL,
  `resolucion` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `total_horas` int(11) NOT NULL,
  `fundamentacion` text COLLATE utf8_spanish_ci NOT NULL,
  `competencia_gral` text COLLATE utf8_spanish_ci NOT NULL,
  `competencia_area` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `información`, `modalidad`, `duracion`, `resolucion`, `total_horas`, `fundamentacion`, `competencia_gral`, `competencia_area`) VALUES
(1, 'Análisis de Sistemas', 'Tecnicatura Superior en Análisis de Sistemas', 'Presencial', 3, '5817/03', 1824, 'Las  computadoras  y,  en  particular,  la  informática, como  procesamiento  automático  de  la  información,  seinstauraron  en  la  comunidad  hace  ya  largo  tiempo.  Este  fenómeno  socio-tecnológico  ha  logrado  que  las organizaciones  trabajen  en  forma  más  eficiente,  analizando  situaciones  variables,  ajustando  los  costos  para obtener mayores beneficios y así, adaptar su organización al contexto. Las funciones de los profesionales en sistemas son de importancia fundamental para el desarrollo económico del  país  dado  que  la  racionalización  y  automatización  agilizan  y  optimizan  procedimientos  y  métodos, permitiendo ahorro de tiempo y material con la consiguiente disminución de costos y el aumento de controles efectivos y aprovechamiento correcto del espacio físico.  La Tecnicatura en Análisis de Sistemas se propone aunar a la formación especifica, el conocimiento del marco empresarial  en  que  puede  desarrollarse  profesionalmente  el  egresado  y  el  conocimiento  de  base  que  le permita comprender los avances científico-tecnológicos para que logre un perfeccionamiento continuo.', 'El/la  Técnico/a  Superior  en  Análisis  de  Sistemas  estará  capacitado  para  diagnosticar  necesidades,  diseñar, desarrollar,  poner  en  servicio  y  mantener  productos,  servicios  o  soluciones  informáticas  acorde  a  las organizaciones  que  lo  requieran.  Estas  competencias  serán  desarrolladas  según  las  incumbencias  y  las normas técnicas y legales que rigen su campo profesional.', 'Estas áreas requieren del/a técnico/a superior el dominio de un saber hacer complejo en el que se movilizan conocimientos,  valores,  actitudes  y  habilidades  de carácter  tecnológico,  social  y  personal  que  definen  su identidad profesional. Diagnosticar para determinar en donde se encuentra el conflicto de una organización.  Organizar gestionando los recursos y las actividades dentro de la organización. Diseñar servicios y soluciones informáticas para organizaciones. Instalar y mantener sistemas diseñados bajo diferentes entornos. Desarrollar servicios y soluciones informáticas.'),
(2, 'Análisis, Desarrollo y Programación de Aplicaciones', 'Tecnicatura Superior en Análisis, Desarrollo y Programación de Aplicaciones', 'Presencial', 3, '6175/03', 1824, 'La actual exigencia y urgencia en la aparición de nuevos hardware y software requieren la\r\nprevisión de un Plan de Estudios mediante el cual los alumnos tengan contacto de un modo\r\nvirtual con dichos avances, que esencialmente influyen en el futuro de la profesión, debido\r\na:\r\n- La creciente utilización de paquetes aplicativos, incrementando la importancia de la\r\nparametrización, la utilización de objetos y la integración de aplicaciones a\r\nexpensas de los desarrollos particulares.\r\n- La rápida rotación de los lenguajes.\r\n- La creciente importancia de los aspectos ergonómicos. \r\n- El acortamiento de tiempo de vida de las aplicaciones, lo cual implica acortar los\r\ntiempos de desarrollo.\r\n- La vocación por la reusabilidad de componentes preexistentes.\r\nEl actual mercado laboral de nuestro país exige a la vez que representa una importante\r\noferta para profesionales capacitados en el área en tres vertientes: operador, análisis de los\r\nsistemas y programador.\r\nDe este mismo mercado laboral forman parte un gran número de potenciales ingresantes\r\nque se encuentran sujetos a un alto nivel de competencia y presión. Esta realidad requiere\r\nsin duda de una capacitación intensa y rápida, propiciando la mejora en sus ámbitos de\r\ntrabajo. ', 'El /la Técnico/a Superior en Análisis, Desarrollo y Programación de Aplicaciones, será un\r\nprofesional con amplio dominio de tecnologías de punta, capacitado para transferir\r\navances de las ciencias informáticas en el desarrollo de ámbitos virtuales de solución a\r\nproblemas reales, aplicando metodologías de administración de ciclos de vida de los\r\nsistemas de información, herramientas y procedimientos bajo la aplicación de normas\r\nlegales, técnicas y éticas.', 'Estas áreas requieren del/a técnico/a superior el dominio de un saber hacer complejo en el\r\nque se movilizan conocimientos, valores, actitudes y habilidades de carácter tecnológico,\r\nsocial y personal que definen su identidad profesional.\r\n- Organizar la dinámica adecuada dentro de un sistema de información\r\n- Diseñar la incorporación de Tecnología dentro de la Organización\r\n- Desarrollar soluciones virtuales de paradigmas reales\r\n- Instalar y mantener sistemas diseñados bajo diferentes entornos.\r\n- Administrar distintos medios de comunicación y transporte de información.');

-- --------------------------------------------------------

--
-- Table structure for table `correlatividades`
--

DROP TABLE IF EXISTS `correlatividades`;
CREATE TABLE IF NOT EXISTS `correlatividades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_materia` int(11) NOT NULL,
  `id_correlativa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directivos`
--

DROP TABLE IF EXISTS `directivos`;
CREATE TABLE IF NOT EXISTS `directivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directivos_cargos`
--

DROP TABLE IF EXISTS `directivos_cargos`;
CREATE TABLE IF NOT EXISTS `directivos_cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_directivo` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
CREATE TABLE IF NOT EXISTS `materias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `cod` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `cod`) VALUES
(1, 'Álgebra', 'ALG001'),
(2, 'Inglés Técnico I', 'ING001'),
(3, 'Análisis Matemático I', 'ANM001'),
(4, 'Introducción a los Sistemas de Información', 'ISI001'),
(5, 'Arquitectura de los Ordenadores', 'ARQ001'),
(6, 'EDI I', 'EDI001'),
(7, 'Administración de las Organizaciones', 'ADM001'),
(8, 'Metodología de la Investigación', 'MTD001'),
(9, 'Programación I', 'PRO001'),
(10, 'EDI II', 'EDI002'),
(11, 'Probabilidad y Estadística', 'PES001'),
(12, 'Programación II', 'PRO002'),
(13, 'Análisis Matemático II', 'ANM002'),
(14, 'Sistemas Operativos', 'SOP001'),
(15, 'Bases de Datos', 'BDD001'),
(16, 'Sistemas de Información I', 'SIN001'),
(17, 'Inglés Técnico II', 'ING002'),
(18, 'Investigación Operativa', 'INV001'),
(19, 'Economía Empresarial', 'ECO001'),
(20, 'Teleinformática', 'TEL001'),
(21, 'Sistemas de Información II', 'SIN002'),
(22, 'Práctica Profesional', 'PRA001'),
(23, 'EDI III', 'EDI003'),
(24, 'Práctica Profesional (Optativa)', 'PRA002'),
(25, 'Sistemas de Computación', 'SIC001'),
(26, 'Análisis de Sistemas', 'ANS001'),
(27, 'Programación Orientada a Objetos', 'OOP001'),
(28, 'Seminario de Programación', 'SPR001'),
(29, 'Diseño e Implementación de Sistemas', 'DIS001'),
(30, 'Gestión de Base de Datos', 'GBD001');

-- --------------------------------------------------------

--
-- Table structure for table `materias_alumnos`
--

DROP TABLE IF EXISTS `materias_alumnos`;
CREATE TABLE IF NOT EXISTS `materias_alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_materia` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_situacion` int(11) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materias_carrera`
--

DROP TABLE IF EXISTS `materias_carrera`;
CREATE TABLE IF NOT EXISTS `materias_carrera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_materia` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `año` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `materias_carrera`
--

INSERT INTO `materias_carrera` (`id`, `id_materia`, `id_carrera`, `año`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 1, 1),
(7, 7, 1, 1),
(8, 8, 1, 1),
(9, 9, 1, 1),
(10, 10, 1, 2),
(11, 11, 1, 2),
(12, 12, 1, 2),
(13, 13, 1, 2),
(14, 14, 1, 2),
(15, 15, 1, 2),
(16, 16, 1, 2),
(17, 17, 1, 2),
(18, 18, 1, 3),
(19, 19, 1, 3),
(20, 20, 1, 3),
(21, 21, 1, 3),
(22, 22, 1, 3),
(23, 23, 1, 3),
(24, 24, 1, 2),
(25, 1, 2, 1),
(26, 2, 2, 1),
(27, 3, 2, 1),
(28, 6, 2, 1),
(29, 7, 2, 1),
(30, 8, 2, 1),
(31, 9, 2, 1),
(32, 25, 2, 1),
(33, 10, 2, 2),
(34, 11, 2, 2),
(35, 13, 2, 2),
(36, 14, 2, 2),
(37, 15, 2, 2),
(38, 17, 2, 2),
(39, 26, 2, 2),
(40, 27, 2, 2),
(41, 28, 2, 2),
(42, 18, 2, 3),
(43, 19, 2, 3),
(44, 20, 2, 3),
(45, 22, 2, 3),
(46, 29, 2, 3),
(47, 30, 2, 3),
(48, 23, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `materias_profesores`
--

DROP TABLE IF EXISTS `materias_profesores`;
CREATE TABLE IF NOT EXISTS `materias_profesores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_materia` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
CREATE TABLE IF NOT EXISTS `profesores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `situaciones`
--

DROP TABLE IF EXISTS `situaciones`;
CREATE TABLE IF NOT EXISTS `situaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `situaciones`
--

INSERT INTO `situaciones` (`id`, `detalle`) VALUES
(1, 'Inscripto'),
(2, 'Aprobado'),
(3, 'Promoción'),
(4, 'A Final');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
