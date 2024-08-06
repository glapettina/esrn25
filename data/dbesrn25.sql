-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2024 a las 01:46:44
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbesrn25`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL,
  `n_articulo` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `n_articulo`, `descripcion`, `estado`, `fecha`) VALUES
(1, 1, 'Enfermedad', 1, '2022-08-01 20:13:28'),
(2, 2, 'Enfermedad largo tratamiento', 1, '2022-08-01 20:13:47'),
(3, 4, 'Enfermedad profesional', 1, '2022-08-01 20:14:04'),
(4, 5, 'Accidente de trabajo', 1, '2022-08-01 20:14:17'),
(5, 6, 'Accidente de trabajo c/ readecuación de tareas', 1, '2022-08-01 20:14:59'),
(6, 9, 'Embarazo', 1, '2022-08-01 20:15:08'),
(7, 11, 'Embarazo de alto riesgo', 1, '2022-08-01 20:15:25'),
(8, 13, 'Atención familiar', 1, '2022-08-01 20:15:59'),
(9, 15, 'Cargo de mayor jerarquía o carga presupuestaria', 1, '2022-08-01 20:16:34'),
(10, 17, 'Nacimiento de hijo', 1, '2022-08-01 20:16:56'),
(11, 18, 'Fallecimiento de familiar', 1, '2022-08-01 20:17:10'),
(12, 19, 'Donación de sangre', 1, '2022-08-01 20:17:34'),
(13, 20, 'Razones particulares', 1, '2022-08-01 20:17:51'),
(14, 21, 'Licencia sin goce de haberes', 1, '2022-08-01 20:18:09'),
(15, 22, 'Examen', 1, '2022-08-01 20:18:44'),
(16, 25, 'Capacitación', 1, '2022-08-01 20:19:02'),
(17, 26, 'Competencia deportiva', 1, '2022-08-01 20:21:08'),
(18, 375, 'COVID', 1, '2022-08-01 20:28:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `kilometros` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `nombre`, `kilometros`, `estado`, `id_usuario`, `fecha`) VALUES
(1, 'Darwin', 60, 0, 0, '2024-03-21 12:19:04'),
(2, 'Luis Beltrán', 36, 1, 0, '2024-03-21 12:14:48'),
(7, 'Choele Choel', 48, 1, 0, '2024-03-21 12:14:38'),
(9, 'Chimpay', 130, 0, 0, '2024-03-21 12:17:06'),
(12, 'Lamarque', 0, 1, 0, '2024-03-20 17:49:22'),
(13, 'Pomona', 22, 1, 0, '2024-03-21 12:14:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuarto`
--

CREATE TABLE `cuarto` (
  `id` int(11) NOT NULL,
  `documento` text NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `modalidad` text NOT NULL,
  `saberes_cientifica` text NOT NULL,
  `saberes_sociales` text NOT NULL,
  `saberes_ingles` text NOT NULL,
  `saberes_matematica` text NOT NULL,
  `saberes_fisica` text NOT NULL,
  `saberes_artistica` text NOT NULL,
  `saberes_lengua` text NOT NULL,
  `saberes_eve` text NOT NULL,
  `saberes_economia` text NOT NULL,
  `saberes_principio4` text NOT NULL,
  `saberes_pymes4` text NOT NULL,
  `saberes_aplicaciones` text NOT NULL,
  `saberes_conectividad` text NOT NULL,
  `aprecia_cientifica` text NOT NULL,
  `aprecia_sociales` text NOT NULL,
  `aprecia_ingles` text NOT NULL,
  `aprecia_matematica` text NOT NULL,
  `aprecia_fisica` text NOT NULL,
  `aprecia_artistica` text NOT NULL,
  `aprecia_lengua` text NOT NULL,
  `aprecia_eve` text NOT NULL,
  `aprecia_economia` text NOT NULL,
  `aprecia_principio4` text NOT NULL,
  `aprecia_pymes4` text NOT NULL,
  `aprecia_aplicaciones` text NOT NULL,
  `aprecia_conectividad` text NOT NULL,
  `asistencia_cientifica` text NOT NULL,
  `asistencia_sociales` text NOT NULL,
  `asistencia_ingles` text NOT NULL,
  `asistencia_matematica` text NOT NULL,
  `asistencia_fisica` text NOT NULL,
  `asistencia_artistica` text NOT NULL,
  `asistencia_lengua` text NOT NULL,
  `asistencia_eve` text NOT NULL,
  `asistencia_economia` text NOT NULL,
  `asistencia_principio4` text NOT NULL,
  `asistencia_pymes4` text NOT NULL,
  `asistencia_aplicaciones` text NOT NULL,
  `asistencia_conectividad` text NOT NULL,
  `observa_cientifica` text NOT NULL,
  `observa_sociales` text NOT NULL,
  `observa_ingles` text NOT NULL,
  `observa_matematica` text NOT NULL,
  `observa_fisica` text NOT NULL,
  `observa_artistica` text NOT NULL,
  `observa_lengua` text NOT NULL,
  `observa_eve` text NOT NULL,
  `observa_economia` text NOT NULL,
  `observa_principio4` text NOT NULL,
  `observa_pymes4` text NOT NULL,
  `observa_aplicaciones` text NOT NULL,
  `observa_conectividad` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuarto`
--

INSERT INTO `cuarto` (`id`, `documento`, `nombre`, `id_curso`, `modalidad`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_eve`, `saberes_economia`, `saberes_principio4`, `saberes_pymes4`, `saberes_aplicaciones`, `saberes_conectividad`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_eve`, `aprecia_economia`, `aprecia_principio4`, `aprecia_pymes4`, `aprecia_aplicaciones`, `aprecia_conectividad`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_eve`, `asistencia_economia`, `asistencia_principio4`, `asistencia_pymes4`, `asistencia_aplicaciones`, `asistencia_conectividad`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_eve`, `observa_economia`, `observa_principio4`, `observa_pymes4`, `observa_aplicaciones`, `observa_conectividad`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '48732638', 'ACOSTA Alexis Fabian', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-26 18:51:12'),
(2, '48391317', 'AGÜERO MORALES Facundo Gabriel', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(3, '48131119', 'AGUIRRE Guillermo Sebastian', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(4, '48185181', 'ARIAS Facundo David', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(5, '48123485', 'AYALA Tiago Alan', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', 'No se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '0 %', '0', '', '', '', '', '', '', '', '', '', '', '', 'Nada de nada', '', '', 1, '02/2024', 8, '2024-07-25 20:54:10'),
(6, '48531392', 'BASTIAS Pablo Gaspar', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', 'No se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '0 %', '', '0', '', '', '', '', '', '', '', '', '', '', 'Nada', '', '', '', 1, '02/2024', 8, '2024-07-25 20:53:55'),
(7, '48319165', 'BECERRA Simón Agustín', 15, 'Informática', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-29 17:55:36'),
(8, '48256866', 'CONTRERAS VARGAS Ximena Angelina', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(9, '47375820', 'GODOY Fabian Lisandro', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(10, '48391302', 'GRANDON Thiago Ezequiel', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', 'En Proceso de Apropiación de Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '50 %', '', '', '0', '', '', '', '', '', '', '', '', '', 'Maso', '', '', '', '', 1, '02/2024', 8, '2024-07-25 20:53:55'),
(11, '48947967', 'GRAZIDE Lautaro Benjamin', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(12, '48013847', 'LOTO Rodrigo Alejandro', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(13, '48531393', 'MANQUI Ema Mariana', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(14, '48660458', 'MELIN Michel Tiziano', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(15, '48732348', 'MORA Sofia Claribel', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(16, '48319024', 'OROZCO Narela Alanis', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(17, '48013844', 'PEDRAZA Mariela Antonela', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(18, '48185122', 'RODRIGUEZ Catalina Guadalupe', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(19, '48390632', 'ROLDAN Joaquin', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(20, '48334044', 'SANCHEZ APARICIO Isaias Nahuel', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(21, '48947099', 'SANCHEZ Julieta Alejandra', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(22, '48732520', 'TRONCOSO Maia Adabel', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(23, '48319460', 'VILLASUSO Patricio Ismael Daniel', 13, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(24, '48732637', 'BASTIAS Mateo', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(25, '48531391', 'CAYUQUEO PACHECO Axel Isaias', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(26, '48185125', 'CHIRINO Nazareno Arian', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(27, '48094279', 'FERNANDEZ ACUÑA Ezequiel', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(28, '48391301', 'GARCIA Juan Emilio', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(29, '48908898', 'GENUARIO Victor Oscar', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(30, '48391306', 'GUTIERREZ Juan Ignacio', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(31, '48319161', 'GUZMAN Luis Alberto', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(32, '48319163', 'KERLLEÑEVICH Marcos Gaston', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(33, '48732635', 'LOPEZ RAILEF Ailyn  Priscila', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(34, '48185119', 'MANSILLA Gian Yerson', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(35, '48732516', 'MARI Tiago Alberto', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(36, '48732634', 'MARTINEZ AVILA Alan Andres', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(37, '48267913', 'ORMEÑO BRUNO Ambar Raihuén', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(38, '48732578', 'RAMIREZ FERNANDEZ Ximena Del Carmen', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(39, '47670920', 'RIQUELME SALAMANCA Geraldiné Tatiana', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(40, '48732347', 'ROJAS Benjamin Luciano', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(41, '48391318', 'SANCHEZ Carmen Maria', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(42, '48319159', 'SEGATORI FERRARINO Gina', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(43, '48391311', 'SHAE Ximena Gisell', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(44, '48185126', 'TORRES Naiara Muriel', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(45, '48391319', 'VUILLERMIN PAINE Mateo Augusto Romualdo', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(46, '48732350', 'ZORATTI Gianlucca', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(47, '48732349', 'ZORATTI Luisana', 14, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Economía Social Cuarto Año                  ', 'Principio de Economía 4º                  ', 'Pymes 4º Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 20:53:55'),
(48, '48391312', 'ALFARO BASTIAS Candela Yasmin', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(49, '48732639', 'ARAVENA LONCON Sofia Belen', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', 'Se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '', '0', '100 %', '', '', '', '', '', '', '', '', '', '', '', '', '5ytyrytryrtyrtyrtyryrt', 1, '02/2024', 8, '2024-07-25 23:10:31'),
(50, '48185123', 'BRAVO Lautaro Agustin', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(51, '48391020', 'CARRASCO Candela Nahir', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(52, '48185116', 'CARRIL Evelyn Solansh', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(53, '48390633', 'CHOQUE Celeste Candela', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(54, '48390636', 'CHUMBITA Horacio', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', 'No se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '0 %', '', '', '', '', '', '', '', '', '', '', '', '', 'egegegegege', '', 1, '02/2024', 8, '2024-07-25 23:10:01'),
(55, '48531400', 'CONCHA PABLO Lourdes Daiana', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(56, '48732633', 'ESPINDOLA Lucila Ailyn', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(57, '48185124', 'GIMENEZ Karen Abigail De Los Angeles', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(58, '48391309', 'GONZALEZ Marilyn Aylen', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(59, '48732631', 'GUIZZARELLI Fernanda Laura Jimena', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(60, '48391320', 'GUIZZARELLI LAGOS Violeta Abigail', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(61, '48660460', 'GUTIERREZ Cristobal Uriel', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(62, '48185128', 'HERNANDEZ Bianca Sofia', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(63, '48013845', 'HUELCHU Franco Alejo', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(64, '48947091', 'IZQUIERDO Arcadia Elizabeth', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(65, '47596729', 'NICUL TOLEDO Cruz Esteban', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(66, '48391310', 'RIQUELME Yenifer Tatiana', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(67, '48346405', 'RISSO PATRON Giuliana Elizabeth', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(68, '48391307', 'RODRIGUEZ Nazareno German', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(69, '48185120', 'SANHUEZA Nayara Nicol', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(70, '47597117', 'SUAREZ Dilan Jorge Andres', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(71, '48142882', 'VALDIVIEZO Dana Karina', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01'),
(72, '48660459', 'VILLEGAS Milagros Yuliana', 15, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Aplicaciones Informáticas', 'Tecnología de la Conectividad, Investigación y Desarrollo Tecnológico\r\n Inicio 4to. Año -                   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:10:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `turno` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `turno`, `estado`, `id_usuario`, `fecha`) VALUES
(1, '1º 1ra.', 'Mañana', 1, 0, '2024-05-16 23:08:16'),
(2, '1º 2da.', 'Mañana', 1, 0, '2024-05-16 23:08:44'),
(3, '1º 1ra.', 'Tarde', 1, 0, '2024-05-16 23:09:08'),
(4, '1º 2da.', 'Tarde', 1, 0, '2024-05-16 23:09:44'),
(5, '2º 1ra.', 'Mañana', 1, 0, '2024-05-16 23:09:58'),
(6, '2º 2da.', 'Mañana', 1, 0, '2024-05-16 23:10:14'),
(7, '2º 1ra. ', 'Tarde', 1, 0, '2024-05-16 23:10:37'),
(8, '2º 2da.', 'Tarde', 1, 0, '2024-05-16 23:10:54'),
(9, '3º 1ra.', 'Mañana', 1, 0, '2024-05-16 23:11:12'),
(10, '3º 2da.', 'Mañana', 1, 0, '2024-05-16 23:11:27'),
(11, '3º 1ra.', 'Tarde', 1, 0, '2024-05-16 23:11:43'),
(12, '3º 2da.', 'Tarde', 1, 0, '2024-05-16 23:11:49'),
(13, '4º 1ra. ', 'Mañana', 1, 0, '2024-05-16 23:12:16'),
(14, '4º 2da. ', 'Mañana', 1, 0, '2024-05-16 23:12:53'),
(15, '4º 1ra. ', 'Tarde', 1, 0, '2024-05-16 23:13:29'),
(16, '4º 2da. ', 'Tarde', 1, 0, '2024-05-16 23:13:51'),
(17, '5º 1ra.', 'Mañana', 1, 0, '2024-05-16 23:14:24'),
(18, '5º 2da. ', 'Mañana', 1, 0, '2024-05-16 23:14:48'),
(19, '5º 1ra. ', 'Tarde', 1, 0, '2024-05-16 23:15:12'),
(20, '5º 2da.', 'Tarde', 1, 0, '2024-05-16 23:15:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencias`
--

CREATE TABLE `licencias` (
  `id_licencia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  `anio` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `licencias`
--

INSERT INTO `licencias` (`id_licencia`, `id_usuario`, `id_articulo`, `desde`, `hasta`, `anio`, `fecha`) VALUES
(1, 27, 13, '2022-02-07', '2022-02-07', '2022', '2022-08-01 20:24:50'),
(2, 44, 18, '2022-02-07', '2022-02-13', '2022', '2022-08-02 11:45:22'),
(3, 66, 13, '2022-02-11', '2022-02-11', '2022', '2022-08-02 11:45:58'),
(4, 47, 13, '2022-02-08', '2022-02-08', '2022', '2022-08-02 11:47:51'),
(5, 46, 13, '2022-02-11', '2022-02-11', '2022', '2022-08-02 11:48:26'),
(6, 52, 13, '2022-02-11', '2022-02-11', '2022', '2022-08-02 11:50:20'),
(7, 30, 18, '2022-02-07', '2022-02-13', '2022', '2022-08-02 11:50:56'),
(8, 66, 13, '2022-02-18', '2022-02-18', '2022', '2022-08-02 11:51:34'),
(9, 44, 13, '2022-02-25', '2022-02-25', '2022', '2022-08-02 11:52:06'),
(10, 38, 13, '2022-03-04', '2022-03-04', '2022', '2022-08-02 11:59:30'),
(11, 26, 14, '2022-03-14', '2022-04-13', '2022', '2022-08-02 12:00:25'),
(12, 55, 16, '2022-03-03', '2022-03-04', '2022', '2022-08-02 12:01:04'),
(13, 50, 17, '2022-03-04', '2022-03-04', '2022', '2022-08-02 12:01:41'),
(14, 50, 17, '2022-03-07', '2022-03-07', '2022', '2022-08-02 12:02:09'),
(15, 47, 16, '2022-03-03', '2022-03-04', '2022', '2022-08-02 12:02:54'),
(16, 66, 16, '2022-03-03', '2022-03-04', '2022', '2022-08-02 12:03:28'),
(17, 43, 1, '2022-03-11', '2022-03-11', '2022', '2022-08-02 12:04:01'),
(18, 62, 8, '2022-03-11', '2022-03-11', '2022', '2022-08-02 12:04:36'),
(19, 23, 1, '2022-03-14', '2022-03-15', '2022', '2022-08-02 12:05:08'),
(20, 40, 8, '2022-03-17', '2022-03-18', '2022', '2022-08-02 12:05:42'),
(21, 34, 1, '2022-03-20', '2022-03-22', '2022', '2022-08-02 12:06:19'),
(22, 55, 1, '2022-03-18', '2022-03-21', '2022', '2022-08-02 12:06:52'),
(23, 23, 1, '2022-03-18', '2022-03-18', '2022', '2022-08-02 12:07:27'),
(24, 39, 17, '2022-03-25', '2022-03-25', '2022', '2022-08-02 12:08:20'),
(25, 62, 8, '2022-03-21', '2022-03-21', '2022', '2022-08-02 12:08:51'),
(26, 43, 1, '2022-03-25', '2022-03-25', '2022', '2022-08-02 12:09:17'),
(27, 48, 13, '2022-04-11', '2022-04-11', '2022', '2022-08-02 12:10:05'),
(28, 48, 13, '2022-04-13', '2022-04-13', '2022', '2022-08-02 12:10:33'),
(29, 45, 8, '2022-03-23', '2022-03-23', '2022', '2022-08-02 12:11:03'),
(30, 22, 8, '2022-03-25', '2022-03-25', '2022', '2022-08-02 12:12:00'),
(31, 30, 13, '2022-03-25', '2022-03-25', '2022', '2022-08-02 12:12:34'),
(32, 27, 1, '2022-03-25', '2022-03-25', '2022', '2022-08-02 12:14:29'),
(33, 40, 8, '2022-03-31', '2022-04-01', '2022', '2022-08-02 12:15:02'),
(34, 50, 17, '2022-04-01', '2022-04-01', '2022', '2022-08-02 12:15:33'),
(35, 23, 13, '2022-03-31', '2022-03-31', '2022', '2022-08-02 12:15:59'),
(36, 44, 1, '2022-04-01', '2022-04-01', '2022', '2022-08-02 12:16:30'),
(37, 55, 1, '2022-04-05', '2022-04-14', '2022', '2022-08-02 12:17:08'),
(38, 40, 1, '2022-04-07', '2022-04-08', '2022', '2022-08-02 12:17:37'),
(39, 33, 8, '2022-04-07', '2022-04-08', '2022', '2022-08-02 12:18:08'),
(40, 41, 13, '2022-04-18', '2022-04-19', '2022', '2022-08-02 12:36:19'),
(41, 41, 13, '2022-04-20', '2022-04-20', '2022', '2022-08-02 12:36:45'),
(42, 42, 8, '2022-04-11', '2022-04-11', '2022', '2022-08-02 12:37:16'),
(43, 62, 8, '2022-04-08', '2022-04-08', '2022', '2022-08-02 12:37:56'),
(44, 57, 8, '2022-04-08', '2022-04-08', '2022', '2022-08-02 12:38:31'),
(45, 43, 8, '2022-04-11', '2022-04-11', '2022', '2022-08-02 12:39:05'),
(46, 43, 1, '2022-04-08', '2022-04-08', '2022', '2022-08-02 12:39:39'),
(47, 29, 13, '2022-04-11', '2022-04-11', '2022', '2022-08-02 12:49:49'),
(48, 27, 8, '2022-04-11', '2022-04-11', '2022', '2022-08-02 12:51:03'),
(49, 46, 8, '2022-04-12', '2022-04-13', '2022', '2022-08-02 12:51:33'),
(50, 59, 13, '2022-04-20', '2022-04-20', '2022', '2022-08-02 12:52:01'),
(51, 40, 8, '2022-04-13', '2022-04-13', '2022', '2022-08-02 12:52:33'),
(52, 32, 1, '2022-04-13', '2022-04-13', '2022', '2022-08-02 12:53:21'),
(53, 41, 1, '2022-04-12', '2022-04-13', '2022', '2022-08-02 12:53:51'),
(54, 22, 13, '2022-04-18', '2022-04-18', '2022', '2022-08-02 12:54:37'),
(55, 22, 13, '2022-04-20', '2022-04-20', '2022', '2022-08-02 12:55:13'),
(56, 55, 1, '2022-04-15', '2022-04-30', '2022', '2022-08-02 12:56:27'),
(57, 43, 8, '2022-04-19', '2022-04-19', '2022', '2022-08-02 12:57:21'),
(58, 44, 8, '2022-04-18', '2022-04-20', '2022', '2022-08-02 12:57:55'),
(59, 62, 8, '2022-04-18', '2022-04-18', '2022', '2022-08-02 12:58:31'),
(60, 66, 13, '2022-04-18', '2022-04-18', '2022', '2022-08-02 12:59:07'),
(61, 30, 13, '2022-04-20', '2022-04-20', '2022', '2022-08-02 12:59:40'),
(62, 37, 1, '2022-04-19', '2022-04-19', '2022', '2022-08-02 13:00:11'),
(63, 50, 17, '2022-04-21', '2022-04-21', '2022', '2022-08-02 13:01:09'),
(64, 62, 8, '2022-04-13', '2022-04-13', '2022', '2022-08-02 13:01:40'),
(65, 52, 13, '2022-04-21', '2022-04-21', '2022', '2022-08-02 13:02:18'),
(66, 50, 17, '2022-04-22', '2022-04-22', '2022', '2022-08-02 13:02:58'),
(67, 39, 1, '2022-04-25', '2022-04-27', '2022', '2022-08-02 13:03:27'),
(68, 37, 1, '2022-04-25', '2022-04-25', '2022', '2022-08-02 13:04:05'),
(69, 38, 8, '2022-04-28', '2022-04-29', '2022', '2022-08-02 13:04:36'),
(70, 39, 13, '2022-05-16', '2022-05-16', '2022', '2022-08-02 13:05:18'),
(71, 39, 15, '2022-05-20', '2022-05-20', '2022', '2022-08-02 13:06:10'),
(72, 27, 8, '2022-04-29', '2022-04-29', '2022', '2022-08-02 13:07:23'),
(73, 66, 1, '2022-04-29', '2022-04-29', '2022', '2022-08-02 13:07:56'),
(74, 28, 8, '2022-04-29', '2022-04-30', '2022', '2022-08-02 13:09:05'),
(75, 67, 13, '2022-05-02', '2022-05-02', '2022', '2022-08-02 13:09:42'),
(76, 43, 8, '2022-05-02', '2022-05-04', '2022', '2022-08-02 13:10:16'),
(77, 39, 13, '2022-05-27', '2022-05-27', '2022', '2022-08-02 13:10:49'),
(78, 23, 1, '2022-05-05', '2022-05-05', '2022', '2022-08-02 13:11:15'),
(79, 66, 16, '2022-05-03', '2022-05-03', '2022', '2022-08-02 13:12:00'),
(80, 38, 8, '2022-05-06', '2022-05-06', '2022', '2022-08-02 13:12:36'),
(81, 23, 1, '2022-05-10', '2022-05-10', '2022', '2022-08-02 13:13:23'),
(82, 36, 13, '2022-05-10', '2022-05-11', '2022', '2022-08-02 13:15:48'),
(83, 47, 16, '2022-05-03', '2022-05-03', '2022', '2022-08-02 13:16:20'),
(84, 22, 8, '2022-05-04', '2022-05-04', '2022', '2022-08-02 13:16:58'),
(85, 44, 1, '2022-05-05', '2022-05-06', '2022', '2022-08-02 13:17:29'),
(86, 41, 1, '2022-05-10', '2022-05-10', '2022', '2022-08-02 13:18:04'),
(87, 30, 17, '2022-05-13', '2022-05-13', '2022', '2022-08-02 13:18:42'),
(88, 30, 13, '2022-05-16', '2022-05-16', '2022', '2022-08-02 13:19:07'),
(89, 54, 1, '2022-05-13', '2022-05-13', '2022', '2022-08-02 13:19:35'),
(90, 38, 1, '2022-05-16', '2022-05-16', '2022', '2022-08-02 13:20:19'),
(91, 38, 13, '2022-05-20', '2022-05-20', '2022', '2022-08-02 13:20:45'),
(92, 37, 8, '2022-05-16', '2022-05-16', '2022', '2022-08-02 13:23:59'),
(93, 67, 13, '2022-05-17', '2022-05-17', '2022', '2022-08-02 13:26:26'),
(94, 48, 1, '2022-05-16', '2022-05-16', '2022', '2022-08-02 13:26:55'),
(95, 44, 13, '2022-05-17', '2022-05-17', '2022', '2022-08-02 13:27:42'),
(96, 22, 8, '2022-05-19', '2022-05-20', '2022', '2022-08-02 13:28:23'),
(97, 45, 13, '2022-05-23', '2022-05-23', '2022', '2022-08-02 13:29:05'),
(98, 34, 13, '2022-05-19', '2022-05-19', '2022', '2022-08-02 13:29:46'),
(99, 43, 8, '2022-05-23', '2022-05-24', '2022', '2022-08-02 13:30:29'),
(100, 22, 8, '2022-05-23', '2022-05-23', '2022', '2022-08-02 13:31:00'),
(101, 46, 1, '2022-05-23', '2022-05-27', '2022', '2022-08-02 13:38:26'),
(102, 47, 1, '2022-05-23', '2022-05-25', '2022', '2022-08-02 13:38:57'),
(103, 52, 13, '2022-05-23', '2022-05-23', '2022', '2022-08-02 13:39:27'),
(104, 66, 16, '2022-05-19', '2022-05-19', '2022', '2022-08-02 13:40:13'),
(105, 64, 8, '2022-05-23', '2022-05-24', '2022', '2022-08-02 13:40:39'),
(106, 48, 8, '2022-05-26', '2022-05-27', '2022', '2022-08-02 13:41:06'),
(107, 28, 13, '2022-05-30', '2022-05-30', '2022', '2022-08-02 13:41:33'),
(108, 58, 13, '2022-05-23', '2022-05-23', '2022', '2022-08-02 13:42:05'),
(109, 62, 13, '2022-05-27', '2022-05-27', '2022', '2022-08-02 13:42:37'),
(110, 47, 16, '2022-05-19', '2022-05-19', '2022', '2022-08-02 13:43:02'),
(111, 51, 1, '2022-05-24', '2022-05-27', '2022', '2022-08-02 13:43:46'),
(112, 44, 13, '2022-05-26', '2022-05-26', '2022', '2022-08-02 13:44:18'),
(113, 26, 1, '2022-05-23', '2022-05-24', '2022', '2022-08-02 13:44:47'),
(114, 52, 1, '2022-05-24', '2022-05-24', '2022', '2022-08-02 13:45:16'),
(115, 57, 1, '2022-05-26', '2022-05-27', '2022', '2022-08-02 13:45:48'),
(116, 27, 1, '2022-05-23', '2022-05-27', '2022', '2022-08-02 13:46:33'),
(117, 40, 8, '2022-05-30', '2022-05-30', '2022', '2022-08-02 13:47:03'),
(118, 27, 8, '2022-05-30', '2022-06-03', '2022', '2022-08-02 13:47:39'),
(119, 46, 8, '2022-05-30', '2022-05-30', '2022', '2022-08-02 13:48:11'),
(120, 23, 8, '2022-05-30', '2022-05-30', '2022', '2022-08-02 13:48:50'),
(121, 41, 13, '2022-05-24', '2022-05-24', '2022', '2022-08-02 13:49:16'),
(122, 64, 1, '2022-05-30', '2022-06-03', '2022', '2022-08-02 13:49:45'),
(123, 39, 15, '2022-06-02', '2022-06-03', '2022', '2022-08-02 13:50:18'),
(124, 54, 13, '2022-06-06', '2022-06-06', '2022', '2022-08-02 13:50:46'),
(125, 33, 8, '2022-05-31', '2022-05-31', '2022', '2022-08-02 13:51:16'),
(126, 8, 1, '2022-05-31', '2022-06-01', '2022', '2022-08-02 13:51:54'),
(127, 38, 1, '2022-05-31', '2022-06-03', '2022', '2022-08-02 13:52:32'),
(128, 53, 13, '2022-06-22', '2022-06-22', '2022', '2022-08-02 13:53:02'),
(129, 53, 13, '2022-06-24', '2022-06-24', '2022', '2022-08-02 13:53:34'),
(130, 50, 1, '2022-06-02', '2022-06-07', '2022', '2022-08-02 13:54:00'),
(131, 43, 1, '2022-06-03', '2022-06-03', '2022', '2022-08-02 13:54:26'),
(132, 29, 13, '2022-06-03', '2022-06-03', '2022', '2022-08-02 13:55:06'),
(133, 66, 1, '2022-06-06', '2022-06-07', '2022', '2022-08-02 13:55:34'),
(134, 56, 1, '2022-05-26', '2022-05-27', '2022', '2022-08-02 13:56:03'),
(135, 48, 8, '2022-06-10', '2022-06-13', '2022', '2022-08-02 13:56:36'),
(136, 42, 1, '2022-06-08', '2022-06-08', '2022', '2022-08-02 13:57:06'),
(137, 44, 13, '2022-06-09', '2022-06-09', '2022', '2022-08-02 13:57:36'),
(138, 37, 8, '2022-06-08', '2022-06-08', '2022', '2022-08-02 13:58:11'),
(139, 50, 1, '2022-06-08', '2022-06-11', '2022', '2022-08-02 13:58:58'),
(140, 22, 1, '2022-06-10', '2022-06-10', '2022', '2022-08-02 13:59:29'),
(142, 66, 17, '2022-06-09', '2022-06-09', '2022', '2022-08-02 14:00:55'),
(143, 59, 13, '2022-06-15', '2022-06-15', '2022', '2022-08-02 14:01:26'),
(144, 27, 17, '2022-06-13', '2022-06-13', '2022', '2022-08-02 14:01:53'),
(145, 46, 13, '2022-06-14', '2022-06-14', '2022', '2022-08-02 14:02:21'),
(146, 34, 1, '2022-06-13', '2022-06-14', '2022', '2022-08-02 14:02:52'),
(147, 60, 1, '2022-06-13', '2022-06-16', '2022', '2022-08-02 14:03:22'),
(148, 23, 13, '2022-06-21', '2022-06-21', '2022', '2022-08-02 14:03:50'),
(149, 50, 13, '2022-06-13', '2022-06-13', '2022', '2022-08-02 14:04:19'),
(150, 23, 1, '2022-06-16', '2022-06-16', '2022', '2022-08-02 14:04:52'),
(151, 33, 1, '2022-06-15', '2022-06-15', '2022', '2022-08-02 14:05:23'),
(152, 52, 1, '2022-06-21', '2022-06-23', '2022', '2022-08-02 14:08:28'),
(153, 62, 8, '2022-06-13', '2022-06-13', '2022', '2022-08-02 14:11:12'),
(154, 62, 8, '2022-06-15', '2022-06-16', '2022', '2022-08-02 14:11:44'),
(155, 57, 8, '2022-06-13', '2022-06-14', '2022', '2022-08-02 14:12:10'),
(156, 28, 8, '2022-06-15', '2022-06-16', '2022', '2022-08-02 14:13:26'),
(157, 31, 8, '2022-06-15', '2022-06-16', '2022', '2022-08-02 14:13:53'),
(159, 44, 1, '2022-06-16', '2022-06-16', '2022', '2022-08-02 14:15:14'),
(160, 55, 1, '2022-06-21', '2022-06-21', '2022', '2022-08-02 14:15:43'),
(161, 44, 1, '2022-06-21', '2022-06-24', '2022', '2022-08-02 14:18:22'),
(162, 48, 13, '2022-07-08', '2022-07-08', '2022', '2022-08-02 14:18:51'),
(163, 43, 1, '2022-06-24', '2022-06-24', '2022', '2022-08-02 14:19:42'),
(164, 28, 1, '2022-06-24', '2022-06-26', '2022', '2022-08-02 14:20:10'),
(165, 27, 8, '2022-06-23', '2022-06-23', '2022', '2022-08-02 14:20:54'),
(166, 38, 1, '2022-06-28', '2022-06-29', '2022', '2022-08-02 14:21:30'),
(167, 50, 16, '2022-06-30', '2022-07-01', '2022', '2022-08-02 14:22:00'),
(168, 49, 1, '2022-06-28', '2022-06-28', '2022', '2022-08-02 14:22:31'),
(169, 51, 1, '2022-06-27', '2022-06-27', '2022', '2022-08-02 14:23:12'),
(170, 46, 13, '2022-06-29', '2022-06-29', '2022', '2022-08-02 14:23:42'),
(171, 27, 1, '2022-06-28', '2022-06-29', '2022', '2022-08-02 14:24:07'),
(172, 22, 1, '2022-06-28', '2022-07-01', '2022', '2022-08-02 14:24:48'),
(173, 43, 1, '2022-07-04', '2022-07-06', '2022', '2022-08-02 14:25:32'),
(174, 53, 1, '2022-07-04', '2022-07-06', '2022', '2022-08-02 14:26:03'),
(175, 26, 1, '2022-07-05', '2022-07-05', '2022', '2022-08-02 14:26:36'),
(176, 62, 1, '2022-07-06', '2022-07-07', '2022', '2022-08-02 14:27:06'),
(177, 51, 1, '2022-07-01', '2022-07-01', '2022', '2022-08-02 14:27:36'),
(178, 63, 13, '2022-07-04', '2022-07-04', '2022', '2022-08-02 14:28:00'),
(179, 50, 13, '2022-07-28', '2022-07-29', '2022', '2022-08-02 14:28:31'),
(180, 50, 13, '2022-08-01', '2022-08-01', '2022', '2022-08-02 14:28:57'),
(181, 52, 1, '2022-07-06', '2022-07-06', '2022', '2022-08-02 14:29:23'),
(182, 55, 8, '2022-07-06', '2022-07-08', '2022', '2022-08-02 14:29:53'),
(183, 23, 1, '2022-07-06', '2022-07-06', '2022', '2022-08-02 14:33:30'),
(184, 28, 13, '2022-07-08', '2022-07-08', '2022', '2022-08-02 14:34:05'),
(185, 44, 13, '2022-07-07', '2022-07-07', '2022', '2022-08-02 14:34:34'),
(186, 27, 13, '2022-07-08', '2022-07-08', '2022', '2022-08-02 14:35:02'),
(187, 25, 13, '2022-07-06', '2022-07-07', '2022', '2022-08-02 14:35:33'),
(188, 67, 1, '2022-07-27', '2022-07-28', '2022', '2022-08-02 14:36:03'),
(189, 64, 1, '2022-07-27', '2022-07-27', '2022', '2022-08-02 14:36:30'),
(190, 47, 13, '2022-07-28', '2022-07-28', '2022', '2022-08-02 14:37:02'),
(191, 22, 8, '2022-07-25', '2022-07-29', '2022', '2022-08-02 14:37:34'),
(192, 52, 8, '2022-07-25', '2022-07-29', '2022', '2022-08-02 14:38:08'),
(193, 64, 1, '2022-06-29', '2022-06-29', '2022', '2022-08-02 14:38:39'),
(194, 64, 1, '2022-07-29', '2022-07-29', '2022', '2022-08-02 14:39:11'),
(195, 29, 15, '2022-07-27', '2022-07-27', '2022', '2022-08-02 14:39:43'),
(196, 29, 15, '2022-08-01', '2022-08-01', '2022', '2022-08-02 14:40:13'),
(197, 22, 8, '2022-08-01', '2022-08-07', '2022', '2022-08-02 14:40:48'),
(198, 62, 8, '2022-07-29', '2022-07-29', '2022', '2022-08-02 14:41:16'),
(199, 33, 1, '2022-08-02', '2022-08-02', '2022', '2022-08-02 14:41:40'),
(200, 66, 13, '2022-08-08', '2022-08-08', '2022', '2022-08-02 14:42:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movilidad`
--

CREATE TABLE `movilidad` (
  `id_movilidad` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `turno` text COLLATE utf8_spanish_ci NOT NULL,
  `numero` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movilidad`
--

INSERT INTO `movilidad` (`id_movilidad`, `id_usuario`, `fecha`, `turno`, `numero`) VALUES
(1, 127, '2024-04-26', 'Mañana', 1),
(2, 129, '2024-04-26', 'Mañana', 1),
(3, 129, '2024-04-26', 'Tarde', 1),
(4, 162, '2024-04-26', 'Mañana', 1),
(5, 131, '2024-04-26', 'Mañana', 1),
(6, 160, '2024-04-26', 'Tarde', 1),
(7, 123, '2024-04-26', 'Mañana', 1),
(8, 121, '2024-04-26', 'Tarde', 1),
(9, 163, '2024-04-26', 'Mañana', 1),
(10, 118, '2024-04-26', 'Tarde', 1),
(11, 158, '2024-04-26', 'Mañana', 1),
(12, 133, '2024-04-26', 'Tarde', 1),
(13, 133, '2024-04-26', 'Mañana', 1),
(14, 157, '2024-04-26', 'Mañana', 1),
(15, 157, '2024-04-26', 'Tarde', 1),
(16, 167, '2024-04-26', 'Mañana', 1),
(17, 117, '2024-04-26', 'Mañana', 1),
(18, 117, '2024-04-26', 'Tarde', 1),
(19, 153, '2024-04-26', 'Tarde', 1),
(20, 137, '2024-04-26', 'Tarde', 1),
(21, 145, '2024-04-26', 'Mañana', 1),
(22, 182, '2024-04-26', 'Mañana', 1),
(23, 182, '2024-04-26', 'Tarde', 1),
(24, 128, '2024-04-26', 'Mañana', 1),
(25, 150, '2024-04-26', 'Mañana', 1),
(26, 150, '2024-04-26', 'Tarde', 1),
(28, 136, '2024-04-26', 'Tarde', 1),
(29, 136, '2024-04-26', 'Mañana', 1),
(31, 134, '2024-04-26', 'Mañana', 1),
(32, 134, '2024-04-26', 'Tarde', 1),
(33, 138, '2024-04-26', 'Tarde', 1),
(34, 164, '2024-04-26', 'Mañana', 1),
(35, 164, '2024-04-26', 'Tarde', 1),
(36, 154, '2024-04-26', 'Tarde', 1),
(37, 184, '2024-04-26', 'Mañana', 1),
(38, 184, '2024-04-26', 'Tarde', 1),
(39, 168, '2024-04-26', 'Tarde', 1),
(40, 185, '2024-04-26', 'Mañana', 1),
(41, 185, '2024-04-26', 'Tarde', 1),
(42, 137, '1969-12-31', 'Tarde', 1),
(43, 137, '2024-04-26', 'Tarde', 1),
(44, 146, '2024-04-26', 'Mañana', 1),
(45, 116, '2024-04-26', 'Mañana', 1),
(46, 116, '2024-04-26', 'Tarde', 1),
(47, 130, '2024-04-26', 'Tarde', 1),
(48, 163, '2024-04-29', 'Mañana', 1),
(49, 184, '2024-04-29', 'Mañana', 1),
(50, 184, '2024-04-29', 'Tarde', 1),
(51, 173, '2024-04-29', 'Mañana', 1),
(52, 116, '2024-04-29', 'Mañana', 1),
(53, 127, '2024-04-29', 'Mañana', 1),
(54, 168, '2024-04-29', 'Mañana', 1),
(55, 123, '2024-04-29', 'Mañana', 1),
(56, 131, '2024-04-29', 'Mañana', 1),
(57, 129, '2024-04-29', 'Mañana', 1),
(59, 185, '2024-04-29', 'Mañana', 1),
(60, 145, '2024-04-29', 'Mañana', 1),
(61, 158, '2024-04-29', 'Mañana', 1),
(62, 173, '2024-04-26', 'Mañana', 1),
(63, 140, '2024-04-29', 'Mañana', 1),
(64, 140, '2024-04-29', 'Tarde', 1),
(66, 186, '2024-04-29', 'Tarde', 1),
(67, 136, '2024-04-29', 'Mañana', 1),
(68, 136, '2024-04-29', 'Tarde', 1),
(69, 153, '2024-04-29', 'Tarde', 1),
(70, 185, '2024-04-29', '', 1),
(71, 185, '2024-04-29', 'Tarde', 1),
(72, 154, '2024-04-29', 'Tarde', 1),
(73, 157, '2024-04-29', 'Mañana', 1),
(74, 157, '2024-04-29', 'Tarde', 1),
(75, 122, '2024-04-29', 'Tarde', 1),
(76, 138, '2024-04-29', 'Tarde', 1),
(77, 121, '2024-04-29', 'Tarde', 1),
(79, 118, '2024-04-29', 'Tarde', 1),
(80, 162, '2024-04-29', 'Mañana', 1),
(81, 162, '2024-04-29', 'Tarde', 1),
(82, 125, '2024-04-29', 'Mañana', 1),
(83, 125, '2024-04-29', 'Tarde', 1),
(84, 141, '2024-04-29', 'Tarde', 1),
(85, 164, '2024-04-29', 'Mañana', 1),
(86, 164, '2024-04-29', 'Tarde', 1),
(87, 168, '1969-12-31', 'Tarde', 1),
(88, 182, '2024-04-29', 'Mañana', 1),
(89, 182, '2024-04-29', 'Tarde', 1),
(90, 146, '2024-04-30', 'Mañana', 1),
(92, 158, '2024-04-30', 'Mañana', 1),
(93, 184, '2024-04-30', 'Mañana', 1),
(94, 184, '2024-04-30', 'Tarde', 1),
(95, 116, '2024-04-30', 'Mañana', 1),
(96, 173, '2024-04-30', 'Mañana', 1),
(97, 123, '2024-04-30', 'Mañana', 1),
(98, 187, '2024-04-30', 'Mañana', 1),
(99, 162, '2024-04-30', 'Mañana', 1),
(100, 133, '2024-04-30', 'Mañana', 1),
(101, 171, '2024-04-30', 'Mañana', 1),
(102, 169, '2024-04-30', 'Mañana', 1),
(103, 188, '2024-04-30', 'Mañana', 1),
(104, 164, '2024-04-30', 'Mañana', 1),
(105, 185, '2024-04-30', 'Mañana', 1),
(106, 129, '2024-04-30', 'Mañana', 1),
(107, 129, '2024-04-30', 'Mañana', 1),
(108, 129, '2024-04-30', 'Tarde', 1),
(109, 157, '2024-04-30', 'Mañana', 1),
(110, 157, '2024-04-30', 'Tarde', 1),
(111, 127, '2024-04-30', 'Mañana', 1),
(112, 163, '2024-04-30', 'Mañana', 1),
(113, 118, '2024-04-30', 'Tarde', 1),
(114, 140, '2024-04-30', 'Tarde', 1),
(115, 119, '2024-04-30', 'Tarde', 1),
(116, 154, '2024-04-30', 'Tarde', 1),
(117, 154, '2024-04-30', 'Tarde', 1),
(118, 153, '2024-04-30', 'Tarde', 1),
(119, 185, '2024-04-30', 'Tarde', 1),
(120, 189, '2024-04-30', 'Tarde', 1),
(121, 189, '2024-04-29', 'Tarde', 1),
(122, 116, '2024-04-30', 'Tarde', 1),
(123, 149, '2024-04-30', 'Tarde', 1),
(124, 133, '2024-04-30', 'Tarde', 1),
(125, 162, '2024-04-30', 'Tarde', 1),
(126, 165, '1969-12-31', '', 1),
(127, 134, '2024-04-30', 'Mañana', 1),
(128, 134, '2024-04-30', 'Tarde', 1),
(129, 186, '2024-04-30', 'Tarde', 1),
(130, 158, '2024-04-30', 'Tarde', 1),
(131, 169, '2024-04-30', 'Tarde', 1),
(132, 137, '2024-04-30', 'Tarde', 1),
(133, 182, '2024-04-30', 'Mañana', 1),
(134, 139, '2024-04-30', 'Tarde', 1),
(135, 182, '2024-04-30', 'Tarde', 1),
(136, 138, '2024-04-30', 'Tarde', 1),
(137, 171, '2024-04-30', 'Tarde', 1),
(138, 190, '2024-04-30', 'Tarde', 1),
(139, 133, '2024-05-02', 'Mañana', 1),
(140, 169, '2024-05-02', 'Mañana', 1),
(141, 167, '2024-05-02', 'Mañana', 1),
(142, 167, '2024-05-02', 'Tarde', 1),
(143, 167, '1969-12-31', 'Mañana', 1),
(144, 167, '1969-12-31', 'Tarde', 1),
(145, 167, '1969-12-31', 'Mañana', 1),
(146, 167, '1969-12-31', 'Tarde', 1),
(147, 158, '2024-05-02', 'Mañana', 1),
(148, 116, '2024-05-02', 'Mañana', 1),
(151, 186, '2024-05-02', 'Tarde', 1),
(152, 170, '2024-04-26', 'Mañana', 1),
(153, 136, '2024-05-02', 'Mañana', 1),
(154, 136, '2024-05-02', 'Tarde', 1),
(155, 123, '2024-05-02', 'Mañana', 1),
(156, 125, '2024-04-30', 'Mañana', 1),
(157, 125, '2024-04-30', 'Tarde', 1),
(158, 130, '2024-04-30', 'Mañana', 1),
(159, 130, '2024-04-30', 'Tarde', 1),
(160, 130, '2024-05-02', 'Mañana', 1),
(161, 130, '2024-05-02', 'Tarde', 1),
(162, 131, '2024-05-02', 'Mañana', 1),
(163, 129, '2024-05-02', 'Mañana', 1),
(164, 129, '2024-05-02', 'Tarde', 1),
(165, 157, '2024-05-02', 'Mañana', 1),
(166, 157, '2024-05-02', 'Tarde', 1),
(167, 125, '2024-05-02', 'Mañana', 1),
(168, 125, '2024-05-02', 'Tarde', 1),
(169, 185, '2024-05-02', 'Mañana', 1),
(170, 121, '2024-05-02', 'Tarde', 1),
(171, 185, '2024-05-02', 'Tarde', 1),
(172, 149, '2024-05-02', 'Tarde', 1),
(173, 140, '2024-05-02', 'Tarde', 1),
(174, 118, '2024-05-02', 'Tarde', 1),
(175, 124, '2024-05-02', 'Tarde', 1),
(176, 169, '2024-05-02', 'Tarde', 1),
(177, 189, '2024-05-02', 'Tarde', 1),
(178, 128, '2024-05-02', 'Mañana', 1),
(179, 145, '2024-05-02', 'Mañana', 1),
(180, 184, '2024-05-02', 'Mañana', 1),
(181, 184, '2024-05-02', 'Tarde', 1),
(182, 153, '2024-05-02', 'Tarde', 1),
(183, 154, '2024-05-02', 'Tarde', 1),
(184, 139, '2024-05-02', 'Tarde', 1),
(186, 164, '2024-05-02', 'Mañana', 1),
(187, 164, '2024-05-02', 'Tarde', 1),
(192, 122, '2024-05-02', 'Tarde', 1),
(193, 190, '2024-05-02', 'Tarde', 1),
(194, 137, '2024-05-02', 'Tarde', 1),
(195, 127, '2024-05-02', 'Noche', 1),
(196, 141, '1969-12-31', 'Tarde', 1),
(197, 141, '2024-05-02', 'Noche', 1),
(198, 141, '2024-05-02', 'Tarde', 1),
(200, 177, '2024-05-03', 'Mañana', 1),
(201, 182, '2024-05-03', 'Mañana', 1),
(202, 182, '2024-05-03', 'Tarde', 1),
(207, 141, '1969-12-31', 'Tarde', 1),
(208, 146, '2024-05-03', 'Mañana', 1),
(210, 127, '2024-05-03', 'Mañana', 1),
(211, 173, '2024-05-03', 'Mañana', 1),
(212, 133, '2024-05-03', 'Mañana', 1),
(214, 169, '2024-05-03', 'Mañana', 1),
(215, 116, '2024-05-03', 'Mañana', 1),
(216, 116, '2024-05-03', 'Tarde', 1),
(217, 128, '2024-04-29', 'Mañana', 1),
(218, 128, '2024-04-30', 'Mañana', 1),
(219, 162, '2024-05-03', 'Mañana', 1),
(220, 123, '2024-05-03', 'Mañana', 1),
(221, 129, '2024-05-03', 'Mañana', 1),
(222, 129, '2024-05-03', 'Tarde', 1),
(223, 134, '2024-05-03', 'Mañana', 1),
(224, 134, '2024-05-03', 'Tarde', 1),
(225, 157, '1969-12-31', 'Mañana', 1),
(226, 157, '2024-05-03', 'Tarde', 1),
(227, 167, '2024-05-03', 'Mañana', 1),
(228, 167, '2024-05-03', 'Tarde', 1),
(229, 131, '2024-05-03', 'Mañana', 1),
(230, 160, '2024-05-03', 'Tarde', 1),
(231, 121, '2024-05-03', 'Tarde', 1),
(232, 118, '2024-05-03', 'Tarde', 1),
(233, 136, '2024-05-03', 'Mañana', 1),
(234, 136, '2024-05-03', 'Tarde', 1),
(235, 153, '2024-05-03', 'Tarde', 1),
(236, 185, '2024-05-03', 'Mañana', 1),
(237, 185, '2024-05-03', 'Tarde', 1),
(238, 145, '2024-05-03', 'Mañana', 1),
(239, 158, '2024-05-03', 'Mañana', 1),
(240, 184, '2024-05-03', 'Mañana', 1),
(241, 184, '2024-05-03', 'Tarde', 1),
(243, 138, '2024-05-03', 'Tarde', 1),
(245, 154, '2024-05-03', 'Tarde', 1),
(247, 155, '2024-04-30', 'Tarde', 1),
(248, 155, '2024-05-02', 'Tarde', 1),
(249, 155, '2024-05-03', 'Tarde', 1),
(250, 155, '2024-04-29', 'Tarde', 1),
(251, 150, '2024-05-03', 'Mañana', 1),
(252, 150, '2024-05-03', 'Tarde', 1),
(253, 164, '2024-05-03', 'Mañana', 1),
(254, 164, '2024-05-03', 'Tarde', 1),
(256, 164, '2024-04-30', 'Tarde', 1),
(257, 153, '2024-04-26', 'Tarde', 1),
(258, 163, '2024-05-03', 'Mañana', 1),
(259, 169, '2024-05-03', 'Tarde', 1),
(260, 133, '2024-05-03', 'Tarde', 1),
(261, 139, '2024-05-03', 'Tarde', 1),
(264, 186, '2024-05-06', 'Tarde', 1),
(265, 125, '2024-05-03', 'Mañana', 1),
(266, 125, '2024-05-03', 'Tarde', 1),
(267, 116, '2024-05-06', 'Mañana', 1),
(268, 169, '2024-05-06', 'Mañana', 1),
(269, 127, '2024-05-06', 'Mañana', 1),
(270, 129, '2024-05-06', 'Mañana', 1),
(271, 129, '2024-05-06', 'Tarde', 1),
(272, 125, '2024-05-06', 'Mañana', 1),
(273, 177, '2024-05-06', 'Mañana', 1),
(274, 131, '2024-05-06', 'Mañana', 1),
(275, 135, '2024-05-06', 'Mañana', 1),
(276, 135, '2024-04-29', 'Mañana', 1),
(277, 158, '2024-05-06', 'Mañana', 1),
(278, 128, '2024-05-06', 'Mañana', 1),
(279, 157, '2024-05-06', 'Mañana', 1),
(280, 157, '2024-05-06', 'Tarde', 1),
(281, 182, '2024-05-06', 'Mañana', 1),
(282, 182, '2024-05-06', 'Tarde', 1),
(283, 146, '2024-04-29', 'Mañana', 1),
(284, 167, '2024-05-06', 'Mañana', 1),
(285, 145, '2024-05-06', 'Mañana', 1),
(286, 146, '2024-05-06', 'Mañana', 1),
(287, 140, '2024-05-06', 'Mañana', 1),
(288, 140, '2024-05-06', 'Tarde', 1),
(289, 122, '2024-05-06', 'Tarde', 1),
(290, 189, '2024-05-06', 'Tarde', 1),
(291, 139, '2024-05-06', 'Tarde', 1),
(292, 173, '2024-05-02', 'Mañana', 1),
(293, 138, '2024-05-02', 'Tarde', 1),
(294, 182, '2024-05-02', 'Mañana', 1),
(295, 182, '2024-05-02', 'Tarde', 1),
(296, 139, '2024-04-29', 'Tarde', 1),
(297, 138, '2024-05-06', 'Tarde', 1),
(298, 155, '2024-05-06', 'Tarde', 1),
(299, 184, '2024-05-06', 'Mañana', 1),
(300, 155, '2024-04-26', 'Tarde', 1),
(301, 184, '2024-05-06', 'Tarde', 1),
(302, 169, '2024-05-06', 'Tarde', 1),
(303, 153, '2024-05-06', 'Tarde', 1),
(304, 154, '2024-05-06', 'Tarde', 1),
(305, 164, '2024-05-06', 'Mañana', 1),
(306, 164, '2024-05-06', 'Tarde', 1),
(307, 136, '2024-05-06', 'Mañana', 1),
(308, 136, '2024-05-06', 'Tarde', 1),
(309, 125, '2024-05-06', 'Tarde', 1),
(310, 141, '2024-05-06', 'Tarde', 1),
(312, 173, '2024-05-07', 'Mañana', 1),
(313, 158, '2024-05-06', 'Tarde', 1),
(314, 158, '2024-04-29', 'Tarde', 1),
(315, 116, '2024-05-07', 'Mañana', 1),
(316, 162, '2024-05-07', 'Mañana', 1),
(317, 162, '2024-05-07', 'Tarde', 1),
(318, 162, '2024-05-06', 'Mañana', 1),
(319, 162, '2024-05-06', 'Tarde', 1),
(320, 177, '2024-05-07', 'Mañana', 1),
(321, 121, '1969-12-31', 'Tarde', 1),
(322, 184, '2024-05-07', 'Mañana', 1),
(323, 184, '2024-05-07', 'Tarde', 1),
(324, 128, '2024-05-07', 'Mañana', 1),
(325, 188, '2024-05-07', 'Mañana', 1),
(326, 163, '2024-05-07', 'Mañana', 1),
(327, 130, '2024-05-03', 'Tarde', 1),
(328, 169, '2024-05-07', 'Mañana', 1),
(329, 123, '2024-05-07', 'Mañana', 1),
(330, 125, '2024-05-07', 'Mañana', 1),
(331, 125, '2024-05-07', 'Tarde', 1),
(332, 129, '2024-05-07', 'Mañana', 1),
(333, 129, '2024-05-07', 'Tarde', 1),
(334, 158, '2024-05-07', 'Mañana', 1),
(335, 127, '2024-05-07', 'Mañana', 1),
(336, 146, '2024-05-07', 'Mañana', 1),
(337, 140, '2024-05-07', 'Tarde', 1),
(338, 149, '2024-05-07', 'Tarde', 1),
(339, 189, '2024-05-07', 'Tarde', 1),
(340, 191, '2024-05-07', 'Tarde', 1),
(341, 118, '2024-05-07', 'Tarde', 1),
(342, 119, '2024-05-07', 'Tarde', 1),
(343, 138, '2024-05-07', 'Tarde', 1),
(344, 118, '2024-05-06', 'Tarde', 1),
(345, 116, '2024-05-07', 'Tarde', 1),
(346, 158, '2024-05-07', 'Tarde', 1),
(347, 164, '2024-05-07', 'Mañana', 1),
(348, 164, '2024-05-07', 'Tarde', 1),
(349, 169, '2024-05-07', 'Tarde', 1),
(350, 137, '2024-05-07', 'Tarde', 1),
(351, 133, '2024-05-07', 'Mañana', 1),
(352, 133, '2024-05-07', 'Tarde', 1),
(353, 160, '2024-05-07', 'Tarde', 1),
(354, 157, '2024-05-07', 'Mañana', 1),
(355, 157, '2024-05-07', 'Tarde', 1),
(356, 185, '2024-05-07', 'Mañana', 1),
(357, 185, '2024-05-07', 'Tarde', 1),
(358, 139, '2024-05-07', 'Tarde', 1),
(359, 155, '2024-05-07', 'Tarde', 1),
(360, 167, '2024-05-07', 'Tarde', 1),
(362, 190, '2024-05-07', 'Tarde', 1),
(363, 164, '2024-05-08', 'Mañana', 1),
(364, 173, '2024-05-08', 'Mañana', 1),
(365, 131, '2024-05-08', 'Mañana', 1),
(366, 128, '2024-05-08', 'Mañana', 1),
(367, 146, '2024-05-08', 'Mañana', 1),
(368, 126, '2024-05-08', 'Mañana', 1),
(369, 161, '2024-05-08', 'Mañana', 1),
(370, 127, '2024-05-08', 'Mañana', 1),
(371, 177, '2024-05-08', 'Mañana', 1),
(372, 135, '2024-05-08', 'Mañana', 1),
(373, 167, '2024-05-08', 'Mañana', 1),
(374, 159, '2024-04-29', 'Mañana', 1),
(375, 159, '2024-04-30', 'Mañana', 1),
(376, 159, '2024-05-06', 'Mañana', 1),
(377, 159, '2024-05-07', 'Mañana', 1),
(378, 145, '2024-05-08', 'Mañana', 1),
(379, 129, '2024-05-08', 'Mañana', 1),
(380, 183, '2024-05-08', 'Mañana', 1),
(381, 163, '2024-05-08', 'Mañana', 1),
(382, 192, '2024-04-30', 'Mañana', 1),
(383, 192, '2024-05-02', 'Mañana', 1),
(384, 192, '2024-05-07', 'Mañana', 1),
(385, 192, '2024-05-08', 'Mañana', 1),
(386, 139, '2024-05-08', 'Mañana', 1),
(387, 133, '2024-05-08', 'Mañana', 1),
(388, 116, '2024-05-08', 'Mañana', 1),
(389, 159, '2024-05-08', 'Mañana', 1),
(390, 158, '2024-05-08', 'Mañana', 1),
(391, 121, '2024-05-08', 'Tarde', 1),
(392, 155, '2024-05-08', 'Tarde', 1),
(393, 188, '2024-05-08', 'Mañana', 1),
(394, 125, '2024-05-08', 'Mañana', 1),
(395, 125, '2024-05-08', 'Tarde', 1),
(396, 136, '2024-05-08', 'Mañana', 1),
(397, 136, '2024-05-08', 'Tarde', 1),
(398, 123, '2024-05-08', 'Mañana', 1),
(399, 134, '2024-05-08', 'Mañana', 1),
(400, 134, '2024-05-08', 'Tarde', 1),
(401, 131, '2024-05-08', 'Tarde', 1),
(402, 189, '2024-05-08', 'Tarde', 1),
(403, 160, '2024-05-08', 'Tarde', 1),
(404, 137, '2024-05-08', 'Tarde', 1),
(405, 153, '2024-05-08', 'Tarde', 1),
(406, 162, '2024-05-08', 'Mañana', 1),
(407, 149, '2024-05-08', 'Tarde', 1),
(408, 165, '1969-12-31', '', 1),
(409, 165, '2024-05-08', 'Tarde', 1),
(410, 181, '2024-05-08', 'Tarde', 1),
(412, 191, '2024-05-08', 'Mañana', 1),
(413, 122, '2024-05-08', 'Tarde', 1),
(414, 185, '2024-05-08', 'Mañana', 1),
(415, 185, '2024-05-08', 'Tarde', 1),
(416, 124, '2024-05-08', 'Tarde', 1),
(417, 169, '2024-05-08', 'Tarde', 1),
(418, 186, '2024-05-08', 'Tarde', 1),
(419, 158, '2024-05-08', 'Tarde', 1),
(420, 178, '2024-04-26', 'Tarde', 1),
(421, 178, '2024-04-30', 'Tarde', 1),
(422, 133, '2024-05-08', 'Tarde', 1),
(423, 178, '2024-05-03', 'Tarde', 1),
(424, 178, '2024-05-07', 'Tarde', 1),
(425, 178, '2024-05-08', 'Tarde', 1),
(426, 157, '2024-05-08', 'Mañana', 1),
(427, 157, '2024-05-08', 'Tarde', 1),
(428, 157, '2024-05-08', 'Noche', 1),
(429, 138, '2024-05-08', 'Tarde', 1),
(430, 154, '2024-05-08', 'Tarde', 1),
(432, 118, '2024-05-08', 'Tarde', 1),
(433, 195, '1969-12-31', 'Mañana', 1),
(435, 190, '2024-05-08', 'Tarde', 1),
(436, 116, '2024-05-08', 'Tarde', 1),
(437, 139, '2024-05-08', 'Tarde', 1),
(439, 195, '2024-05-10', 'Mañana', 1),
(440, 127, '2024-05-10', 'Mañana', 1),
(441, 146, '2024-05-10', 'Mañana', 1),
(442, 194, '2024-05-10', 'Mañana', 1),
(443, 191, '2024-05-10', 'Mañana', 1),
(444, 116, '2024-05-10', 'Mañana', 1),
(445, 173, '2024-05-10', 'Mañana', 1),
(446, 162, '2024-05-10', 'Mañana', 1),
(447, 173, '2024-05-06', 'Mañana', 1),
(448, 169, '2024-05-10', 'Mañana', 1),
(449, 187, '2024-05-02', 'Mañana', 1),
(450, 187, '2024-05-02', 'Tarde', 1),
(451, 187, '2024-05-06', 'Mañana', 1),
(452, 187, '2024-05-06', 'Tarde', 1),
(453, 187, '2024-05-07', 'Mañana', 1),
(454, 161, '2024-04-26', 'Mañana', 1),
(455, 161, '2024-04-30', 'Mañana', 1),
(456, 161, '2024-05-02', 'Mañana', 1),
(457, 161, '2024-05-07', 'Mañana', 1),
(458, 161, '2024-05-10', 'Mañana', 1),
(459, 193, '2024-05-10', 'Mañana', 1),
(460, 158, '2024-05-10', 'Mañana', 1),
(461, 167, '2024-05-10', 'Mañana', 1),
(462, 140, '2024-05-10', 'Mañana', 1),
(463, 139, '2024-05-10', 'Mañana', 1),
(464, 140, '2024-05-10', 'Tarde', 1),
(465, 194, '2024-05-08', 'Mañana', 1),
(466, 123, '2024-05-10', 'Mañana', 1),
(467, 126, '1969-12-31', '', 1),
(468, 129, '2024-05-10', 'Mañana', 1),
(469, 129, '2024-05-10', 'Tarde', 1),
(470, 121, '2024-05-10', 'Tarde', 1),
(471, 118, '2024-05-10', 'Tarde', 1),
(472, 154, '2024-05-10', 'Tarde', 1),
(473, 136, '2024-05-10', 'Mañana', 1),
(474, 136, '2024-05-10', 'Tarde', 1),
(475, 121, '2024-05-06', 'Tarde', 1),
(476, 195, '2024-05-08', 'Mañana', 1),
(477, 125, '2024-05-10', 'Mañana', 1),
(478, 125, '2024-05-10', 'Tarde', 1),
(479, 137, '2024-05-10', 'Tarde', 1),
(480, 134, '2024-05-10', 'Mañana', 1),
(481, 134, '2024-05-10', 'Tarde', 1),
(482, 160, '2024-05-10', 'Tarde', 1),
(483, 145, '2024-05-10', 'Mañana', 1),
(484, 116, '2024-05-10', 'Tarde', 1),
(485, 178, '2024-05-10', 'Tarde', 1),
(486, 155, '2024-05-10', 'Tarde', 1),
(487, 133, '2024-05-10', 'Mañana', 1),
(488, 133, '2024-05-10', 'Tarde', 1),
(489, 138, '2024-05-10', 'Tarde', 1),
(490, 185, '2024-05-10', 'Mañana', 1),
(491, 185, '2024-05-10', 'Tarde', 1),
(492, 130, '2024-05-03', 'Tarde', 1),
(493, 130, '2024-05-10', 'Tarde', 1),
(494, 131, '2024-05-10', 'Tarde', 1),
(495, 153, '2024-05-10', 'Tarde', 1),
(496, 169, '2024-05-10', 'Tarde', 1),
(497, 184, '2024-05-10', 'Mañana', 1),
(498, 184, '2024-05-10', 'Tarde', 1),
(499, 182, '2024-05-10', 'Tarde', 1),
(500, 157, '2024-05-10', 'Mañana', 1),
(501, 157, '2024-05-10', 'Tarde', 1),
(502, 125, '2024-05-12', 'Tarde', 1),
(503, 194, '2024-05-13', 'Mañana', 1),
(504, 158, '2024-05-13', 'Mañana', 1),
(505, 116, '2024-05-13', 'Mañana', 1),
(506, 131, '2024-05-13', 'Mañana', 1),
(507, 129, '2024-05-13', 'Mañana', 1),
(508, 129, '2024-05-13', 'Tarde', 1),
(509, 127, '2024-05-13', 'Mañana', 1),
(510, 173, '2024-05-13', 'Mañana', 1),
(511, 163, '2024-05-13', 'Mañana', 1),
(512, 139, '2024-05-10', 'Tarde', 1),
(513, 139, '2024-05-13', 'Mañana', 1),
(515, 169, '2024-05-13', 'Mañana', 1),
(516, 169, '2024-05-13', 'Tarde', 1),
(517, 167, '2024-05-13', 'Mañana', 1),
(518, 187, '2024-05-08', 'Mañana', 1),
(519, 157, '2024-05-13', 'Mañana', 1),
(520, 157, '2024-05-13', 'Tarde', 1),
(521, 135, '2024-05-13', 'Mañana', 1),
(522, 126, '2024-05-13', 'Mañana', 1),
(523, 123, '2024-05-13', 'Mañana', 1),
(524, 185, '2024-05-13', 'Mañana', 1),
(525, 185, '2024-05-13', 'Tarde', 1),
(526, 145, '2024-05-13', 'Mañana', 1),
(527, 146, '2024-05-13', 'Mañana', 1),
(528, 131, '2024-05-13', 'Tarde', 1),
(529, 118, '2024-05-13', 'Tarde', 1),
(530, 189, '2024-05-13', 'Tarde', 1),
(531, 154, '2024-05-13', 'Tarde', 1),
(532, 153, '2024-05-13', 'Tarde', 1),
(533, 138, '2024-05-13', 'Tarde', 1),
(534, 140, '2024-05-13', 'Mañana', 1),
(535, 140, '2024-05-13', 'Tarde', 1),
(536, 122, '2024-05-13', 'Tarde', 1),
(537, 125, '2024-05-13', 'Mañana', 1),
(538, 125, '2024-05-13', 'Tarde', 1),
(539, 141, '2024-05-13', 'Tarde', 1),
(540, 158, '2024-05-13', 'Tarde', 1),
(541, 191, '1969-12-31', 'Mañana', 1),
(542, 184, '2024-05-14', 'Mañana', 1),
(543, 184, '2024-05-14', 'Tarde', 1),
(544, 116, '2024-05-14', 'Mañana', 1),
(545, 173, '2024-05-14', 'Mañana', 1),
(546, 163, '2024-05-14', 'Mañana', 1),
(547, 158, '2024-05-14', 'Mañana', 1),
(548, 123, '2024-05-14', 'Mañana', 1),
(549, 185, '2024-05-14', 'Mañana', 1),
(550, 155, '2024-05-13', 'Tarde', 1),
(551, 161, '2024-05-14', 'Mañana', 1),
(552, 161, '2024-05-03', 'Mañana', 1),
(553, 187, '2024-05-14', 'Mañana', 1),
(554, 133, '2024-05-14', 'Mañana', 1),
(555, 159, '2024-05-13', 'Mañana', 1),
(556, 159, '2024-05-14', 'Mañana', 1),
(557, 191, '2024-05-14', 'Mañana', 1),
(558, 191, '2024-05-14', 'Tarde', 1),
(559, 149, '2024-05-14', 'Tarde', 1),
(560, 127, '2024-05-14', 'Mañana', 1),
(561, 116, '2024-05-14', 'Tarde', 1),
(562, 118, '2024-05-14', 'Tarde', 1),
(563, 154, '2024-05-14', 'Tarde', 1),
(564, 160, '2024-05-14', 'Tarde', 1),
(565, 137, '2024-05-14', 'Tarde', 1),
(566, 178, '2024-05-14', 'Tarde', 1),
(567, 189, '2024-05-14', 'Tarde', 1),
(568, 169, '2024-05-14', 'Mañana', 1),
(569, 169, '2024-05-14', 'Tarde', 1),
(570, 158, '2024-05-14', 'Tarde', 1),
(571, 167, '2024-05-14', 'Mañana', 1),
(572, 167, '2024-05-14', 'Tarde', 1),
(573, 153, '2024-05-14', 'Tarde', 1),
(574, 155, '2024-05-14', 'Tarde', 1),
(575, 188, '2024-05-14', 'Mañana', 1),
(576, 186, '2024-05-14', 'Tarde', 1),
(577, 195, '2024-05-15', 'Mañana', 1),
(578, 194, '2024-05-15', 'Mañana', 1),
(579, 140, '2024-05-15', 'Mañana', 1),
(580, 128, '2024-05-15', 'Mañana', 1),
(581, 184, '2024-05-15', 'Mañana', 1),
(582, 184, '2024-05-15', 'Tarde', 1),
(583, 159, '2024-05-15', 'Mañana', 1),
(584, 158, '2024-05-15', 'Mañana', 1),
(585, 169, '2024-05-15', 'Mañana', 1),
(586, 167, '2024-05-15', 'Mañana', 1),
(587, 167, '2024-05-15', 'Tarde', 1),
(588, 163, '2024-05-15', 'Mañana', 1),
(589, 162, '2024-05-15', 'Mañana', 1),
(590, 161, '2024-05-15', 'Mañana', 1),
(591, 177, '1969-12-31', '', 1),
(592, 177, '2024-05-15', 'Mañana', 1),
(593, 188, '2024-05-15', 'Mañana', 1),
(594, 192, '2024-05-14', 'Mañana', 1),
(595, 125, '2024-05-14', 'Mañana', 1),
(596, 125, '2024-05-14', 'Tarde', 1),
(597, 139, '2024-05-15', 'Mañana', 1),
(598, 125, '2024-05-15', 'Mañana', 1),
(599, 125, '2024-05-15', 'Tarde', 1),
(600, 127, '2024-05-15', 'Mañana', 1),
(601, 131, '2024-05-15', 'Mañana', 1),
(602, 131, '2024-05-15', 'Tarde', 1),
(603, 173, '2024-05-15', 'Mañana', 1),
(604, 123, '2024-05-15', 'Mañana', 1),
(605, 193, '2024-05-15', 'Mañana', 1),
(606, 193, '2024-05-08', 'Mañana', 1),
(607, 133, '2024-05-15', 'Mañana', 1),
(608, 133, '2024-05-15', 'Tarde', 1),
(609, 149, '2024-05-15', 'Tarde', 1),
(610, 160, '2024-05-15', 'Tarde', 1),
(611, 124, '2024-05-15', 'Tarde', 1),
(612, 116, '2024-05-15', 'Mañana', 1),
(613, 116, '2024-05-15', 'Tarde', 1),
(614, 129, '2024-05-15', 'Tarde', 1),
(615, 157, '2024-05-15', 'Mañana', 1),
(616, 157, '2024-05-15', 'Tarde', 1),
(617, 157, '2024-05-15', 'Noche', 1),
(618, 129, '2024-05-14', 'Mañana', 1),
(619, 129, '2024-05-14', 'Tarde', 1),
(620, 157, '2024-05-14', 'Mañana', 1),
(621, 157, '2024-05-14', 'Tarde', 1),
(622, 185, '2024-05-15', 'Tarde', 1),
(623, 185, '2024-05-15', 'Mañana', 1),
(624, 118, '2024-05-15', 'Tarde', 1),
(625, 181, '2024-05-15', 'Tarde', 1),
(626, 136, '2024-05-15', 'Mañana', 1),
(627, 136, '2024-05-15', 'Tarde', 1),
(628, 138, '2024-05-15', 'Tarde', 1),
(629, 178, '2024-05-15', 'Tarde', 1),
(630, 192, '2024-05-15', 'Mañana', 1),
(631, 186, '2024-05-15', 'Tarde', 1),
(632, 191, '2024-05-15', 'Tarde', 1),
(633, 130, '2024-05-14', 'Mañana', 1),
(634, 128, '2024-05-09', 'Mañana', 1),
(635, 128, '2024-05-10', 'Mañana', 1),
(636, 128, '2024-05-13', 'Mañana', 1),
(637, 128, '2024-05-14', 'Mañana', 1),
(638, 158, '2024-05-15', 'Tarde', 1),
(639, 153, '2024-05-15', 'Tarde', 1),
(641, 189, '2024-05-15', 'Tarde', 1),
(642, 170, '2024-04-29', 'Mañana', 1),
(643, 170, '2024-05-03', 'Mañana', 1),
(644, 170, '2024-05-06', 'Mañana', 1),
(645, 170, '2024-05-08', 'Mañana', 1),
(646, 170, '2024-05-10', 'Mañana', 1),
(647, 0, '2024-05-13', 'Mañana', 1),
(649, 170, '2024-05-13', 'Mañana', 1),
(650, 170, '2024-05-15', 'Mañana', 1),
(651, 121, '2024-05-15', 'Tarde', 1),
(652, 195, '2024-05-16', 'Mañana', 1),
(653, 133, '2024-05-16', 'Mañana', 1),
(654, 116, '2024-05-16', 'Mañana', 1),
(655, 169, '2024-05-16', 'Mañana', 1),
(656, 169, '2024-05-16', 'Tarde', 1),
(657, 167, '2024-05-16', 'Mañana', 1),
(658, 167, '2024-05-16', 'Tarde', 1),
(659, 186, '2024-05-16', 'Tarde', 1),
(660, 161, '2024-05-16', 'Mañana', 1),
(661, 129, '2024-05-16', 'Mañana', 1),
(662, 129, '2024-05-16', 'Tarde', 1),
(663, 158, '2024-05-16', 'Mañana', 1),
(664, 145, '2024-05-15', 'Mañana', 1),
(665, 157, '2024-05-14', 'Mañana', 1),
(666, 157, '2024-05-14', 'Tarde', 1),
(667, 173, '2024-05-16', 'Mañana', 1),
(668, 123, '2024-05-16', 'Mañana', 1),
(669, 162, '2024-05-15', 'Mañana', 1),
(670, 162, '2024-05-15', 'Tarde', 1),
(671, 145, '2024-05-16', 'Mañana', 1),
(672, 191, '2024-05-16', 'Mañana', 1),
(673, 131, '2024-05-16', 'Mañana', 1),
(674, 131, '2024-05-16', 'Tarde', 1),
(675, 140, '2024-05-16', 'Tarde', 1),
(676, 149, '2024-05-16', 'Tarde', 1),
(677, 124, '2024-05-16', 'Tarde', 1),
(678, 118, '2024-05-16', 'Tarde', 1),
(679, 189, '2024-05-16', 'Tarde', 1),
(680, 136, '2024-05-16', 'Mañana', 1),
(681, 136, '2024-05-16', 'Tarde', 1),
(682, 194, '2024-05-16', 'Tarde', 1),
(683, 138, '2024-05-16', 'Tarde', 1),
(684, 154, '2024-05-15', 'Tarde', 1),
(685, 138, '2024-05-14', 'Tarde', 1),
(686, 154, '2024-05-16', 'Tarde', 1),
(687, 164, '2024-05-16', 'Mañana', 1),
(688, 164, '2024-05-16', 'Tarde', 1),
(689, 184, '2024-05-13', 'Mañana', 1),
(690, 153, '2024-05-16', 'Tarde', 1),
(691, 184, '2024-05-13', 'Tarde', 1),
(692, 184, '2024-05-16', 'Mañana', 1),
(693, 184, '2024-05-16', 'Tarde', 1),
(694, 164, '2024-05-13', 'Mañana', 1),
(695, 164, '2024-05-13', 'Tarde', 1),
(696, 164, '2024-05-14', 'Mañana', 1),
(697, 164, '2024-05-14', 'Tarde', 1),
(698, 164, '2024-05-15', 'Mañana', 1),
(699, 164, '2024-05-15', 'Tarde', 1),
(700, 181, '2024-05-16', 'Tarde', 1),
(701, 181, '2024-05-14', 'Tarde', 1),
(702, 181, '2024-05-15', 'Tarde', 1),
(703, 181, '2024-05-07', 'Tarde', 1),
(704, 181, '2024-05-08', 'Tarde', 1),
(705, 146, '2024-05-16', 'Mañana', 1),
(706, 181, '2024-04-30', 'Tarde', 1),
(707, 181, '2024-05-02', 'Tarde', 1),
(708, 139, '2024-05-16', 'Tarde', 1),
(709, 139, '2024-05-15', 'Tarde', 1),
(710, 139, '2024-05-13', 'Tarde', 1),
(711, 122, '2024-05-16', 'Tarde', 1),
(712, 182, '2024-05-16', 'Mañana', 1),
(713, 182, '2024-05-16', 'Tarde', 1),
(714, 182, '2024-05-10', 'Mañana', 1),
(715, 182, '2024-05-13', 'Mañana', 1),
(716, 182, '2024-05-13', 'Tarde', 1),
(717, 182, '2024-05-14', 'Mañana', 1),
(718, 182, '2024-05-14', 'Tarde', 1),
(719, 182, '2024-05-15', 'Mañana', 1),
(720, 182, '2024-05-15', 'Tarde', 1),
(721, 185, '2024-05-16', 'Mañana', 1),
(722, 185, '2024-05-16', 'Tarde', 1),
(723, 133, '2024-05-16', 'Tarde', 1),
(724, 157, '1969-12-31', 'Tarde', 1),
(725, 157, '1969-12-31', 'Mañana', 1),
(726, 127, '2024-05-16', 'Noche', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `netbooks`
--

CREATE TABLE `netbooks` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `nserie` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `netbooks`
--

INSERT INTO `netbooks` (`id`, `nombre`, `id_curso`, `nserie`, `estado`, `fecha`) VALUES
(1, 'Aguiar Luis Ezequiel', 4, 'AA8811045600', 0, '2022-05-12 14:28:57'),
(2, 'Alvarez Máximo Pablo', 3, 'AA7811045963', 1, '2022-04-29 18:11:55'),
(3, 'Aucachi Nicolás', 4, 'AA8811054326', 1, '2022-04-29 18:12:49'),
(4, 'Barbosa Thiago Lionel', 3, 'AA1811046572', 1, '2022-04-29 18:13:49'),
(5, 'Basualdo Miyel Carolina', 4, 'Aa1811047273', 1, '2022-04-29 18:14:45'),
(6, 'Beroísa Beltrán Juan David', 4, 'AA9811045953', 1, '2022-04-29 18:15:44'),
(7, 'Beroísa Beltrán Liliana Anabel', 4, 'AA7811050265', 1, '2022-04-29 18:16:41'),
(8, 'Cárdenas Méndez Ezequiel Angel', 3, 'AA7811056169', 1, '2022-04-29 18:17:27'),
(9, 'Carrasco Morena Costanza', 3, 'AA7811045607', 1, '2022-04-29 18:18:19'),
(10, 'Carrillo Tiziano Valentín', 3, 'AA1811042005', 1, '2022-04-29 18:18:58'),
(11, 'Catalano Ana Sol', 3, 'AA0811050246', 1, '2022-04-29 18:19:34'),
(12, 'Constante Danixa Jazmín', 3, 'AA1811042090', 1, '2022-04-29 18:20:12'),
(13, 'Constante Rodríguez Denis Ezequiel', 4, 'aa8811043683', 1, '2022-04-29 18:21:08'),
(14, 'Coronel Paola Andrea', 3, 'AA6811044974', 1, '2022-04-29 18:21:59'),
(15, 'Dithurbide Luciana Nicole', 3, 'Aa1811045865', 1, '2022-04-29 18:22:37'),
(16, 'Ferreyra Román Daiana Francisca', 4, 'AA1811042745', 1, '2022-04-29 18:23:50'),
(17, 'Franco Luciano', 3, 'AA7811043187', 1, '2022-04-29 18:24:37'),
(18, 'Gatica Candela', 4, 'AA7811044380', 1, '2022-04-29 18:25:27'),
(19, 'Génova Néstor Sebastián', 3, 'AA6811051312', 1, '2022-04-29 18:26:17'),
(20, 'Huayta Chambí Malena Rocío', 4, 'AA0811048221', 1, '2022-04-29 18:27:02'),
(21, 'Laborda Francisco Ezequiel', 3, 'AA8811042192', 1, '2022-04-29 18:27:43'),
(22, 'Larraburu Nievas Valentín', 3, 'AA7811054266', 1, '2022-04-29 18:28:43'),
(23, 'Larrosa López Tomás Geremías', 4, 'AA7811046534', 1, '2022-04-29 18:29:38'),
(24, 'Ledesma Manríquez Máximo Josemir', 4, 'AA7811044454', 1, '2022-04-29 18:30:35'),
(25, 'Lefiñir Yésica Joselín', 4, 'AA0811043967', 1, '2023-04-25 12:34:08'),
(26, 'Leiva Roldán Litsi Agustina', 3, 'AA6811055353', 1, '2022-04-29 18:32:05'),
(27, 'Lima Puma Alex Román', 3, 'AA6811055370', 1, '2022-04-29 18:33:07'),
(28, 'Loaiza González Alex Ariel', 3, 'AA68110512223', 1, '2022-04-29 18:33:44'),
(29, 'Maldonado Linares Juana Martina', 3, 'Aa1811046030', 1, '2022-04-29 18:34:45'),
(30, 'Mansilla Abril Ainnara', 4, 'AA7811051987', 1, '2022-04-29 18:35:34'),
(31, 'Marciro Merlina Selena', 4, 'AA1811043332', 1, '2022-04-29 18:36:11'),
(32, 'Martínez Giuliana Anabella', 4, 'AA1811045603', 1, '2022-04-29 18:37:02'),
(33, 'Melivilo Araya Emiliano Alfredo', 4, 'AA7811054433', 1, '2022-04-29 18:38:06'),
(34, 'Millañanco Nehuén Antú', 3, 'AA6811044734', 1, '2022-04-29 18:39:07'),
(35, 'Minetti Facundo Exequiel', 3, 'AA1811045335', 1, '2022-04-29 18:41:02'),
(36, 'Molins Iñaki Gabriel', 3, 'AA1811045839', 1, '2022-04-29 18:41:37'),
(37, 'Painel Alhué María Florencia', 4, 'AA0811053993', 1, '2022-04-29 18:42:19'),
(38, 'Palacio Juana Alejandra', 4, 'AA7811048371', 1, '2022-04-29 18:43:30'),
(39, 'Peinecura Villa Nahuel Néstor', 4, 'AA0811056247', 1, '2022-04-29 18:44:20'),
(40, 'Pueblas Pedro Francisco', 4, 'AA0811053957', 1, '2022-04-29 18:45:20'),
(41, 'Reyes Santiago', 3, 'AA7811055881', 1, '2022-04-29 18:45:54'),
(42, 'Sánchez Dailoff Juana', 3, 'AA1811046008', 1, '2022-04-29 18:47:35'),
(43, 'Sempé Daniel Exequiel', 3, 'Aa5811055692', 1, '2022-04-29 18:48:25'),
(44, 'Valdebenito Jonathan Abel', 4, 'AA0811050591', 1, '2022-04-29 18:49:11'),
(45, 'Vallejos Alvarez Valentina Milagros', 3, 'AA9811046991', 1, '2022-04-29 19:04:05'),
(46, 'Velázquez Matías Fermín', 3, 'AA3811044253', 1, '2022-04-29 19:05:05'),
(47, 'Velázquez Villasuso Laureano Benjamín', 4, 'AA0811048881', 1, '2022-04-29 19:07:41'),
(48, 'Viveros Ariela Belén', 4, 'Aa9811048852', 1, '2022-04-29 19:08:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `id_periodo` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `periodos`
--

INSERT INTO `periodos` (`id_periodo`, `nombre`, `estado`, `fecha`) VALUES
(1, '02/2024', 1, '2024-07-23 13:47:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `primero`
--

CREATE TABLE `primero` (
  `id` int(11) NOT NULL,
  `documento` text COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `id_curso` int(11) NOT NULL,
  `saberes_cientifica` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_sociales` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_ingles` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_matematica` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_fisica` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_artistica` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_lengua` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_eve` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_cientifica` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_sociales` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_ingles` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_matematica` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_fisica` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_artistica` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_lengua` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_eve` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_cientifica` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_sociales` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_ingles` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_matematica` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_fisica` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_artistica` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_lengua` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_eve` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_cientifica` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_sociales` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_ingles` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_matematica` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_fisica` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_artistica` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_lengua` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_eve` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text COLLATE utf8_spanish_ci NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `primero`
--

INSERT INTO `primero` (`id`, `documento`, `nombre`, `id_curso`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_eve`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_eve`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_eve`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_eve`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '95820596', 'AVILA CALIZAYA Kevin Edgar', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(2, '50873384', 'BARRERA Uma Franchesca', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(3, '50992559', 'BARTIVAS Alejandro David', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(4, '50992556', 'BUSTOS ROMERO Yenifer Marilyn', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(5, '50709683', 'CASTRO RIQUELME Hector Bautista', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(6, '51127690', 'CATRILAF LEDESMA Martin Andres', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(7, '50506373', 'CHIRI TORREZ Samuel', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(8, '50505246', 'DE LA CANAL TRIPAILAF Jazmin Maria Del Mar', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(9, '51127686', 'DORNEDDEN Macarena Milagros', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(10, '50505254', 'FARIÑA Dahiara Maiten', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(11, '50828683', 'FERMIN PEDRAZA Germán Newén', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(12, '50675995', 'FERNANDEZ Benjamin Gustavo', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(13, '50432014', 'GALLARDO Giuliano Rosamel', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(14, '50432455', 'GONZALEZ FERNANDEZ Leonel Maximiliano', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(15, '50709775', 'GONZALEZ Sofia Mariel', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(16, '50614823', 'GUTIERREZ Florencia Agustina', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(17, '50505253', 'INOSTROZA Jeremías Santiago', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(18, '50506369', 'INSULSA Joaquín Nicolas', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(19, '50675992', 'INSULSA Santiago Agustin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(20, '50873388', 'MOLINA LABORDA Lautaro Denilson', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(21, '50259534', 'ORTEGA Joaquin Ernesto', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(22, '50709779', 'PABLO BRAVO Fernando Abel', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(23, '50675988', 'RAFFLER LIENCURA Amara Aylen', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(24, '51127697', 'RIQUELME SALAMANCA Guadalupe Danixza', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(25, '50992558', 'SEPULVEDA Giuliana Belén', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(26, '51025253', 'SHAE JARA Guadalupe Xiomara', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(27, '50828687', 'TOLEDO Felipe Andrés', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(28, '50828690', 'ARAVIS BRAVO Ariana', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-29 17:41:07'),
(29, '51054531', 'ASENJO Damaris Aylén', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(30, '50432449', 'CARRIL Mariana Julieta', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(31, '50873138', 'CASTRO Victor Manuel', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(32, '50873348', 'CEVEY Enzo Santino', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(33, '50166364', 'CISTERNA Alma Ana Luz', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(34, '51025254', 'CONCHA Luara Abigail', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(35, '57455128', 'CORTINA Marcos', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(36, '50505247', 'CRUZ Angel Magdiel', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(37, '50505248', 'CRUZ Luciano Ivan', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(38, '50675997', 'DURAN FORTUNATI Sabryna', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(39, '50675986', 'GARCIA Damian German', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(40, '50828684', 'JUANICO Mia Eluney', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(41, '50505251', 'MEDINA Sofia Mabel', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(42, '50506367', 'NUÑEZ Daniel Nair', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(43, '50505255', 'ORELLANA Alan Ariel', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(44, '51127684', 'PINO SURA Dylan Fernan', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(45, '50828688', 'ROJAS Micaela Sofia', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(46, '50956431', 'SANCHEZ APARICIO Joakim Emiliano', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(47, '51001218', 'SIAREZ Natasha Judith', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(48, '50675996', 'VERGARA Maycol Sebastían', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(49, '51025257', 'VIVIER Thiara Valentina', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(50, '50432441', 'CABRERA CARO Joselin Ivana', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(51, '50873387', 'CABRERA Lucia Suyay', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(52, '50579814', 'CARRUEGO Julieta Paulina', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-29 17:58:03'),
(53, '50505241', 'DIAZ Ariadna Valentina', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(54, '50675994', 'DIAZ Facundo Omar', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(55, '51127696', 'FERNANDEZ Javier Luis Heraldo', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(56, '51127682', 'FERNANDEZ Renata Jazmin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(57, '51207790', 'GALVAN ROMARIZ Loreley', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(58, '51127683', 'GONZALEZ Shaira Nicol', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(59, '51127689', 'GRANDON Bautista Alexander', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(60, '50873385', 'GRANDON Danilo Tahiel', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(61, '50675982', 'GRANDON Tifany Celena', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(62, '50873390', 'INFANTES Alexis Tomas', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(63, '50506380', 'LABORDA CAZADO Yamila Araceli', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(64, '50511128', 'LAHURCADA Lucca', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(65, '50676363', 'LOPEZ Celeste Nicol', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(66, '50709777', 'MORLIO Nahiara Eluney', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(67, '50588032', 'NICUL TOLEDO Florencia Alay', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(68, '50675989', 'PEREZ Luciana Avigail', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(69, '50432451', 'SUVIA-DIAZ Sahira Mia', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(70, '50757208', 'TORREZ Yael Zahira', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(71, '50506361', 'VEGA Lucas Tahiel', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(72, '50828686', 'VELAZQUEZ TASTACA Eunice Nahiara', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26'),
(73, '50506372', 'VILLEGAS Lionel Matias', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:50:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quinto`
--

CREATE TABLE `quinto` (
  `id` int(11) NOT NULL,
  `documento` text NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `modalidad` text NOT NULL,
  `saberes_cientifica` text NOT NULL,
  `saberes_sociales` text NOT NULL,
  `saberes_ingles` text NOT NULL,
  `saberes_matematica` text NOT NULL,
  `saberes_fisica` text NOT NULL,
  `saberes_artistica` text NOT NULL,
  `saberes_lengua` text NOT NULL,
  `saberes_eve` text NOT NULL,
  `saberes_pymes5` text NOT NULL,
  `saberes_problematicas` text NOT NULL,
  `saberes_taller` text NOT NULL,
  `saberes_software` text NOT NULL,
  `saberes_seguridad` text NOT NULL,
  `saberes_tecnologico` text NOT NULL,
  `aprecia_cientifica` text NOT NULL,
  `aprecia_sociales` text NOT NULL,
  `aprecia_ingles` text NOT NULL,
  `aprecia_matematica` text NOT NULL,
  `aprecia_fisica` text NOT NULL,
  `aprecia_artistica` text NOT NULL,
  `aprecia_lengua` text NOT NULL,
  `aprecia_eve` text NOT NULL,
  `aprecia_pymes5` text NOT NULL,
  `aprecia_problematicas` text NOT NULL,
  `aprecia_taller` text NOT NULL,
  `aprecia_software` text NOT NULL,
  `aprecia_seguridad` text NOT NULL,
  `aprecia_tecnologico` text NOT NULL,
  `asistencia_cientifica` text NOT NULL,
  `asistencia_sociales` text NOT NULL,
  `asistencia_ingles` text NOT NULL,
  `asistencia_matematica` text NOT NULL,
  `asistencia_fisica` text NOT NULL,
  `asistencia_artistica` text NOT NULL,
  `asistencia_lengua` text NOT NULL,
  `asistencia_eve` text NOT NULL,
  `asistencia_pymes5` text NOT NULL,
  `asistencia_problematicas` text NOT NULL,
  `asistencia_taller` text NOT NULL,
  `asistencia_software` text NOT NULL,
  `asistencia_seguridad` text NOT NULL,
  `asistencia_tecnologico` text NOT NULL,
  `observa_cientifica` text NOT NULL,
  `observa_sociales` text NOT NULL,
  `observa_ingles` text NOT NULL,
  `observa_matematica` text NOT NULL,
  `observa_fisica` text NOT NULL,
  `observa_artistica` text NOT NULL,
  `observa_lengua` text NOT NULL,
  `observa_eve` text NOT NULL,
  `observa_pymes5` text NOT NULL,
  `observa_problematicas` text NOT NULL,
  `observa_taller` text NOT NULL,
  `observa_software` text NOT NULL,
  `observa_seguridad` text NOT NULL,
  `observa_tecnologico` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `quinto`
--

INSERT INTO `quinto` (`id`, `documento`, `nombre`, `id_curso`, `modalidad`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_eve`, `saberes_pymes5`, `saberes_problematicas`, `saberes_taller`, `saberes_software`, `saberes_seguridad`, `saberes_tecnologico`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_eve`, `aprecia_pymes5`, `aprecia_problematicas`, `aprecia_taller`, `aprecia_software`, `aprecia_seguridad`, `aprecia_tecnologico`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_eve`, `asistencia_pymes5`, `asistencia_problematicas`, `asistencia_taller`, `asistencia_software`, `asistencia_seguridad`, `asistencia_tecnologico`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_eve`, `observa_pymes5`, `observa_problematicas`, `observa_taller`, `observa_software`, `observa_seguridad`, `observa_tecnologico`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '47376285', 'ANGULO Lucas Arian', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(2, '47721314', 'AVELLO Tania Elizabeth', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(3, '47670901', 'BRAVO VILLCA Maximiliano Mateo', 19, 'Informática', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-29 17:57:31'),
(4, '47376415', 'CHIRINO Juan Cruz', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(5, '47283930', 'CISTERNA Matías Eduardo', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(6, '47375804', 'COLIMAN Agustin Alexis', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', 'Se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '', '100 %', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Excelente', '', '', '', '', '', 1, '02/2024', 8, '2024-07-25 22:56:23'),
(7, '47376288', 'FERNANDEZ Dianela Carla Edith', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(8, '48013737', 'FREYDOZ Nabila Eugenia', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '', '75 %', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Very Good', '', '', '', 1, '02/2024', 8, '2024-07-25 22:56:44'),
(9, '48013841', 'FRIGERIO Valentina', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(10, '47670912', 'FUENTES GRANDON Arlene Nicol', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(11, '47670911', 'FUENTES Martina  Pilar', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(12, '48007228', 'MELIQUEO Iris Ludmila', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(13, '46931781', 'MOLINA Gerónimo Matias', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(14, '47721315', 'NAVARRETE Carla Ariana', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(15, '47670910', 'OLAVE MARTINEZ Ian Franco', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(16, '47915334', 'ORTIGOSA Marcelo Gabriel', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(17, '47376287', 'PARRA BRAVO Valentina Anabel', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(18, '46931782', 'RAMIREZ Gabriel Alexander', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(19, '47670917', 'RELMO CABEZA Marcos Ezequiel', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(20, '48013732', 'ROMERO Alba Andrizana', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(21, '46796521', 'ALBORNOZ ALBARRAN Camila María Jose', 19, 'Informática', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-29 17:57:48'),
(22, '47670903', 'ALTAMIRANDA Sofia Mariela', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(23, '47721312', 'ALVAREZ Ariela Ayelen', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(24, '48185117', 'BARRIENTO Carlos Danilo', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(25, '47472138', 'BARRIENTO FRIFRINI Rocío Ivarú', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(26, '47671061', 'CASTRO Juan Alejandro', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(27, '47376286', 'COLETTI MOLINA Siomara Natalí', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(28, '47244422', 'CONCHA ROMANO Lohana Sofía', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(29, '48013736', 'DIONISIO Alexis Vladimir', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(30, '47721319', 'GALINDO Franco Emiliano', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(31, '47721320', 'HERNANDEZ Marisol Abril', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(32, '47670916', 'JEREZ ALVAREZ Stefani Abigail', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(33, '47376283', 'MARTINEZ Luana Milena', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(34, '47375815', 'OJEDA Anarela Marité', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(35, '47244430', 'ORTEGA Jeremias Adonis', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(36, '47721313', 'RETAMOZO Alfredo Uriel', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 22:56:23'),
(37, '47670913', 'VIDAL Maria Celene', 18, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Pymes Quinto                  ', 'Problemáticas Economía Quinto Año                  ', 'Taller Economía Quinto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', 'En Proceso de Apropiación de Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '', '50 %', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Maso Maso', '', '', '', '', 1, '02/2024', 8, '2024-07-25 22:56:23'),
(38, '47721316', 'ARROYO Lucas Taiel', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:35:34'),
(39, '47471936', 'GATICA Luz Milagro', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:35:34'),
(40, '48391042', 'GONZÁLEZ Macarena Araceli', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:35:34'),
(41, '47376300', 'KERN Ana Lourdes', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', 'En Proceso de Apropiación de Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '', '50 %', '', '', '', '', '', '', '', '', '', '', '', '', '', 'iluiuililuiluiluiluiluil', '', '', 1, '02/2024', 8, '2024-07-25 23:35:34'),
(42, '47376290', 'PEÑA Mateo Ruben', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', 'Se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '', '100 %', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dsveveevwvewvewvewvweve', '', 1, '02/2024', 8, '2024-07-25 23:35:34'),
(43, '47721708', 'PIANZOLA Francesco Luca', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'En Proceso de Apropiación de Saberes', '', '', '', '', '', '', '', '', '', '', '', '', '', '50 %', '', '', '', '', '', '', '', '', '', '', '', '', '', 'thtrntntrntnrnrnrn', 1, '02/2024', 8, '2024-07-25 23:36:00'),
(44, '47850035', 'RODRÍGUEZ Valentina Abril', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:35:34'),
(45, '47670909', 'ROLDAN Sofia Clarivel', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:35:34'),
(46, '47376292', 'SAMBUEZA Luciana Aylin', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:35:34'),
(47, '48318769', 'SOTO BURGOS Julieta Grismalda', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:35:34'),
(48, '48013740', 'VARELA CARRIL Hector Alejandro', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:35:34'),
(49, '47721311', 'VEGA BASTIAS Aylin', 19, 'Informática', '', '', '', '', '', '', '', '', '', '', '', 'Tecnología del Software Libre                  ', 'Seguridad y Legislación en Informática                  ', 'Proyecto Tecnológico en Informática                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:35:34'),
(50, '23772378', 'LAPETTINA Guillermo', 17, 'Economía y Administración', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 8, '2024-07-26 18:54:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segundo`
--

CREATE TABLE `segundo` (
  `id` int(11) NOT NULL,
  `documento` text NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `saberes_cientifica` text NOT NULL,
  `saberes_sociales` text NOT NULL,
  `saberes_ingles` text NOT NULL,
  `saberes_matematica` text NOT NULL,
  `saberes_fisica` text NOT NULL,
  `saberes_artistica` text NOT NULL,
  `saberes_lengua` text NOT NULL,
  `saberes_eve` text NOT NULL,
  `aprecia_cientifica` text NOT NULL,
  `aprecia_sociales` text NOT NULL,
  `aprecia_ingles` text NOT NULL,
  `aprecia_matematica` text NOT NULL,
  `aprecia_fisica` text NOT NULL,
  `aprecia_artistica` text NOT NULL,
  `aprecia_lengua` text NOT NULL,
  `aprecia_eve` text NOT NULL,
  `asistencia_cientifica` text NOT NULL,
  `asistencia_sociales` text NOT NULL,
  `asistencia_ingles` text NOT NULL,
  `asistencia_matematica` text NOT NULL,
  `asistencia_fisica` text NOT NULL,
  `asistencia_artistica` text NOT NULL,
  `asistencia_lengua` text NOT NULL,
  `asistencia_eve` text NOT NULL,
  `observa_cientifica` text NOT NULL,
  `observa_sociales` text NOT NULL,
  `observa_ingles` text NOT NULL,
  `observa_matematica` text NOT NULL,
  `observa_fisica` text NOT NULL,
  `observa_artistica` text NOT NULL,
  `observa_lengua` text NOT NULL,
  `observa_eve` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `segundo`
--

INSERT INTO `segundo` (`id`, `documento`, `nombre`, `id_curso`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_eve`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_eve`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_eve`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_eve`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '49574289', 'ARRUZA RAMIREZ Shayra Nicole', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(2, '50259538', 'BAEZ Nahir', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(3, '49925611', 'BECERRA Emiliano Jeremias', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(4, '49844953', 'CABRERA Miguel Angel Gabriel', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(5, '47704484', 'CRUZ CHIRI Analia', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(6, '50259544', 'DÍAZ Zahia Yarel', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(7, '50024965', 'FERNANDEZ ACUÑA Yhoel David', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(8, '50371435', 'FERNANDEZ Sofía Selene', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(9, '50259535', 'FREYDOZ Luciano Martin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(10, '49950681', 'INFANTES NAHUELCHEO Benjamín Julian', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(11, '50166367', 'JAQUE Samira Constanza', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(12, '50166362', 'KUNISCH Lautaro Benjamin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(13, '49704482', 'LAZA Mateo Antonio', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(14, '49950688', 'LAZAGA RIVERA Abigail Araceli', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(15, '50259545', 'LEVIAN Guillermo Tomas', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(16, '49925734', 'MAGRINI Francesca Dannia', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(17, '49862194', 'MARAZZA Walter Lautaro Lionel', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(18, '50166365', 'MELIQUEO Bautista', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(19, '49950689', 'MENDOZA AHUMADA Fausto', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(20, '49950682', 'ORMEÑO BRUNO Mia Lihuen', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(21, '49030406', 'ORTEGA Eluney Geraldine', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(22, '50506366', 'PEÑA Joaquin Jonathan', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(23, '49950683', 'PEREZ Abril', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(24, '50259547', 'RAFFLER MEDEL Zaira Valentina', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(25, '50259540', 'RUIZ MEDINA Alexis Benjamin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(26, '50024970', 'SANCHES Ignacio Sebastian', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(27, '50083005', 'SIAREZ Wilson Alexander', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(28, '50259550', 'SOTO Pedro Valentino', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(29, '49704481', 'SUAREZ Morena Trinidad', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(30, '50024967', 'ZAMBRANO Esteysi Carolina', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(31, '50024804', 'ALBORNOZ ALBARRAN Axel Valentín', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-29 17:44:08'),
(32, '50166291', 'ALVAREZ, Florencia Abigail', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(33, '50432447', 'ANGULO SOTO Laureano Leonel', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(34, '49925608', 'BUSTOS Tiago Joel', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(35, '50259536', 'CARRILLO PEREIRA Alejo Fabricio', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(36, '50099824', 'CHAVARRIA Walter Joaquin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-29 17:58:17'),
(37, '49925607', 'DIEZ MACEDO Fabiana Maricel', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(38, '50432453', 'GAMARRA Solange Eluney', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(39, '48947963', 'GARCIA GUANTEMIL Francisco Ezequiel', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(40, '50259549', 'GONZALEZ Estefania Yulieth', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(41, '49465220', 'GONZALEZ Leonel Marcelo', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(42, '50166374', 'KERN Joaquin Ignacio', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(43, '50024964', 'KUNISCH  GRANDON Thiago Agustin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(44, '49844237', 'LAZA Braian Nicolás', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(45, '50166047', 'MARDONE MORALES Ever Dario', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(46, '50259546', 'MARI Marcos Antonio', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(47, '49844572', 'MELIQUEO Lisandro Rodrigo', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(48, '50432448', 'MORENO Azul Antonella', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(49, '49950687', 'MUÑOZ Ariadna Ingrid', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(50, '50259532', 'PATINO Tadeo Angel', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(51, '49844952', 'PAWLY Camily Maricela', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(52, '49030403', 'PINO Iori Leonardo', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(53, '50259548', 'QUINTEROS Jazmin Guadalupe', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(54, '50024966', 'SENOSIAIN CISTERNA Celeste Valentina', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(55, '49574283', 'TRIPAILAO HENRIQUES Luna', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(56, '50166373', 'VALDEZ Naiara Belen', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(57, '49925610', 'VENTURA Simón José', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(58, '49573639', 'VILLEGAS Stefani Nicol', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22'),
(59, '49844575', 'ZAMBRANO CONTRERAS Jorge Emanuel', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-23 13:56:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `fecha_servicio` date NOT NULL,
  `id_netbook` int(11) NOT NULL,
  `reclamo` text NOT NULL,
  `problema` text NOT NULL,
  `solucion` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 0,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `fecha_servicio`, `id_netbook`, `reclamo`, `problema`, `solucion`, `estado`, `fecha`) VALUES
(1, '2022-05-27', 3, '35222', 'Problema pantalla a causa de un golpe. El equipo deberá ser enviado al servicio técnico. El equipo fue entregado sin su correspondiente cargador.', 'Reparado en el servicio técnico (Garantía).', 1, '2022-11-28 17:50:27'),
(2, '2022-07-27', 30, '47072', 'Teclado roto. Las teclas G y H no funcionan. El equipo debe ser enviado al servicio técnico. El equipo fue entregado sin su correspondiente cargador.', 'Reparada en el servicio técnico (Garantía).', 1, '2022-11-28 17:42:57'),
(3, '2022-08-05', 23, '50108', 'Problemas con el teclado. Hay teclas que no funcionan. El equipo fue entregado con su correspondiente cargador.', 'Reparado en el servicio técnico (Garantía).', 1, '2022-11-28 17:46:25'),
(4, '2022-08-23', 21, '', 'Problema con el teclado, posible derrame de líquido sobre el teclado. El equipo se recepcionó con su correspondiente cargador.', 'Se le limpió el teclado y el equipo quedó funcionando. La net fue entregada al alumno el día 23/08/2022.', 1, '2022-09-05 13:51:38'),
(5, '2022-10-03', 37, '', 'No enciende.', 'Problema solucionado. Al parecer la net se cuelga cuando pasa a un estado de hibernación o suspensión.', 1, '2022-10-03 16:54:25'),
(6, '2022-11-17', 41, '126991', 'Pantalla rota.', '', 0, '2023-05-23 12:15:07'),
(7, '2022-11-22', 12, '126998', 'Teclado no funciona', '', 0, '2023-05-23 12:15:29'),
(8, '2023-03-09', 5, '107137', 'No funcionan correctamente todas las teclas. Entrega la netbook con cargador.', '', 0, '2023-04-12 17:37:06'),
(9, '2023-04-13', 13, '107801 - 127001', 'Pantalla rota. El estudiante manifiesta que en ningún momento el equipo se golpeó. Entrega la netbook sin el cargador.', '', 0, '2023-05-23 12:16:29'),
(10, '2023-04-25', 42, '', 'Equipo Bloqueado', 'Password: 2946402094\r\nEquipo Desbloqueado', 1, '2023-04-25 11:56:57'),
(11, '2023-05-12', 35, '', 'Equipo Bloqueado. El equipo se entregó sin su cargador.', 'El equipo fue desbloqueado.', 1, '2023-05-23 13:06:01'),
(12, '2023-06-14', 44, '', 'No enciende. Golpe. El equipo se entrega sin cargador.', '', 0, '2023-06-14 16:59:00'),
(14, '2023-06-26', 6, '', 'Pantalla rota. el equipo se entrega sin cargador.', '', 0, '2023-06-26 17:36:18'),
(15, '2023-06-28', 21, '', 'Problema con el teclado. El equipo se entrega sin cargador.', '', 0, '2023-06-28 13:46:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tercero`
--

CREATE TABLE `tercero` (
  `id` int(11) NOT NULL,
  `documento` text NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `modalidad` text NOT NULL,
  `saberes_cientifica` text NOT NULL,
  `saberes_sociales` text NOT NULL,
  `saberes_ingles` text NOT NULL,
  `saberes_matematica` text NOT NULL,
  `saberes_fisica` text NOT NULL,
  `saberes_artistica` text NOT NULL,
  `saberes_lengua` text NOT NULL,
  `saberes_eve` text NOT NULL,
  `saberes_principio3` text NOT NULL,
  `saberes_sistemas` text NOT NULL,
  `aprecia_cientifica` text NOT NULL,
  `aprecia_sociales` text NOT NULL,
  `aprecia_ingles` text NOT NULL,
  `aprecia_matematica` text NOT NULL,
  `aprecia_fisica` text NOT NULL,
  `aprecia_artistica` text NOT NULL,
  `aprecia_lengua` text NOT NULL,
  `aprecia_eve` text NOT NULL,
  `aprecia_principio3` text NOT NULL,
  `aprecia_sistemas` text NOT NULL,
  `asistencia_cientifica` text NOT NULL,
  `asistencia_sociales` text NOT NULL,
  `asistencia_ingles` text NOT NULL,
  `asistencia_matematica` text NOT NULL,
  `asistencia_fisica` text NOT NULL,
  `asistencia_artistica` text NOT NULL,
  `asistencia_lengua` text NOT NULL,
  `asistencia_eve` text NOT NULL,
  `asistencia_principio3` text NOT NULL,
  `asistencia_sistemas` text NOT NULL,
  `observa_cientifica` text NOT NULL,
  `observa_sociales` text NOT NULL,
  `observa_ingles` text NOT NULL,
  `observa_matematica` text NOT NULL,
  `observa_fisica` text NOT NULL,
  `observa_artistica` text NOT NULL,
  `observa_lengua` text NOT NULL,
  `observa_eve` text NOT NULL,
  `observa_principio3` text NOT NULL,
  `observa_sistemas` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tercero`
--

INSERT INTO `tercero` (`id`, `documento`, `nombre`, `id_curso`, `modalidad`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_eve`, `saberes_principio3`, `saberes_sistemas`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_eve`, `aprecia_principio3`, `aprecia_sistemas`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_eve`, `asistencia_principio3`, `asistencia_sistemas`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_eve`, `observa_principio3`, `observa_sistemas`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '49339559', 'ARROYO  Ambar Jazmin', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', 'Se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '75 %', '', '', '', '', '', '', '', '', '', 'Muy bien', '', 1, '02/2024', 8, '2024-07-25 00:08:24'),
(2, '49343527', 'BELMONTES Mateo Geremias', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(3, '49465224', 'CABALLERO Randy Agustin', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(4, '49340399', 'CAMMERTONI DURAN Giuliano Armin', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(5, '49573637', 'CATALÁN TIZNADO Genaro Ivan', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(6, '49138062', 'CEVEY Valentino Hernán', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(7, '49030409', 'DIAZ Analis Taina', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(8, '49573638', 'DIAZ Dilan  Alexander', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(9, '49031279', 'ESPINOZA FERRADA Xiomara Anabel', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(10, '49031273', 'FLORES Ariana Ximena', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(11, '48185127', 'GARCIA ARAVIS Mariana Valentina', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(12, '48947094', 'GODOY Samir Daniel', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(13, '48947097', 'GRANDON Ignacio Emanuel', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(14, '49031277', 'INOSTROZA Luzmila Yazmin', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(15, '49444153', 'MANCHI Daiana Valentina', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(16, '49339554', 'MENDOZA Mateo', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(17, '49030405', 'MUÑIZ Camila Agustina', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(18, '48947968', 'PARRA Shiskara     Nazarena', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(19, '49291272', 'PIANZOLA Emma', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(20, '49339555', 'PINO Alesio Gael', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(21, '49030407', 'ROA SILVEIRA Ana Victoria', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(22, '48947096', 'SANTOS Juan Tomas', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(23, '49339553', 'SEPULVEDA Paula Mariel', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(24, '49573632', 'TORRES Fernando Jesús', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(25, '49573631', 'TORRES Mariano Sebastian', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', 'Principio Economía 3                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 00:05:44'),
(26, '49466847', 'AGUIAR Nahuel Agustín', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-29 17:52:40'),
(27, '48947092', 'ARAV?S Valentin Alejandro', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(28, '49465631', 'AUCA GUEVARA David Ezequiel', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(29, '48437420', 'CHAVARRIA Adriana Judith', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(30, '49465222', 'CHIRINO Jeremias Francisco', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(31, '48947095', 'CID Santino Uriel', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', 'Se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '50 %', '', '', '', '', '', '', '', '', '', 'wqddddqqdqddqd', 1, '02/2024', 8, '2024-07-25 23:07:12'),
(32, '48918145', 'CORREJIDOR Natalí Guadalupe', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(33, '49465216', 'FREYDOZ PEREZ Ivan Rodrigo', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(34, '49031276', 'GALARZA PEDRAZA Francisco Juanjo', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(35, '49030401', 'GUIZZARELLI Maria Antonella', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(36, '49573633', 'GUTIERREZ Franco Lautaro', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(37, '49844574', 'HOBSTETER Nahíara Alexía', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(38, '48732346', 'ISLA HERRERA Alexander Tomás Emilio', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(39, '49844571', 'LABORDA Fiama Abigail', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(40, '49466813', 'MAYIA Ada Mariel', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(41, '48185114', 'MONTEIRO Lourdes Alexia', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(42, '49339558', 'NAVARRETE Yuliana Yazmin', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(43, '48774813', 'OJEDA Cielo Yasmin', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(44, '49279104', 'PABLO Valentino', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(45, '48732519', 'PATINO Matias Ezequiel', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(46, '49340397', 'QUINTANA Delfina Aylem', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(47, '49465221', 'RELMO Fabricio Benjamin', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(48, '49340396', 'ROMERO Luisana Suyai', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(49, '48947969', 'SANDOVAL VAZQUEZ Juan Ignacio', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(50, '48947100', 'TOLEDO Walter Ceferino', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(51, '49340395', 'VEGA Maica Gabriela', 11, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(52, '50259533', 'ALBORNOZ TRIPAILAF Florencia Josefina', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(53, '49574285', 'BIRGE MARTINEZ  Kiara Dahilen', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(54, '49218461', 'CASTRO Thiago Roberto', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(55, '49573635', 'CUEVA Cristian Fabian', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(56, '49465218', 'DIONISIO Leandro Ignacio Joaquin', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(57, '49339551', 'GALLARDO Brenda Ludmila', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(58, '49138083', 'GALLEGOS BURGOS Jimena Evangelina', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(59, '48947962', 'GODOY Tatiana  Ayelen', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(60, '49573634', 'GUTIERREZ Juan Carlos', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(61, '49465223', 'MAMANI YUCRA Cristian Andres', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(62, '49030404', 'MARILEO NEIRA Nathaya Trinidad', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(63, '48731783', 'MELLA Ruth Abigail', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(64, '49279108', 'MOLINA Juliana Ailin', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(65, '49138885', 'MOLINA Tamara Daniela', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(66, '49031024', 'NICUL TOLEDO Martín Ceferino', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(67, '49465217', 'NUÑEZ Jimena Lujan', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(68, '48947970', 'OCAMPO Adriana Elizabeth', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(69, '49031272', 'PABLO Sol Tahina', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(70, '49573636', 'RISSO PATRON Paula Valentina', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(71, '49484376', 'RIVERA Bautista Andres', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(72, '49502943', 'RODRIGUEZ Evelin Morena', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(73, '49335052', 'SANCHEZ APARICIO Yair Adriel', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(74, '49925603', 'SANHUEZA Santino Yeremix', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(75, '49031271', 'VERGARA Delfina Luana', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(76, '49574284', 'VILLALBA Emmanuel Natanael', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(77, '49466819', 'VIVEROS Sol Abril', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(78, '49466814', 'WERTMULLER Pablo', 12, 'Informática', '', '', '', '', '', '', '', '', '', 'Tecnología de los Sistemas Informáticos                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 0, '2024-07-25 23:06:54'),
(79, '23772378', 'LAPETTINA Guillermo', 9, 'Economía y Administración', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '02/2024', 8, '2024-07-26 18:48:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `telefono`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(8, 'Lapettina Guillermo', '2984417763', 'lape', '$2a$07$usesomesillystringforeKFErhzzmd6AoycQvV4lokWBof7hIUcW', 'Administrador', '', 1, '2024-07-29 14:34:57', '2024-07-29 17:34:57'),
(199, 'JIMENEZ Milton', '2984417763', 'cabo', '$2a$07$usesomesillystringforeVfn1A0NSqKoxRJNQiIIgMaU2OjviG.y', 'Docente Modalidad Informática', '', 1, '2024-07-25 21:30:23', '2024-07-26 00:30:23'),
(200, 'DIAZ Josefina Luján', '2984733799', 'josefina', '$2a$07$usesomesillystringfore2m72Ztr5ZatWfy7sqgq1pG9UzvqaGxW', 'Docente Modalidad Sociales', '', 1, '2024-07-25 21:17:36', '2024-07-26 00:17:36');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_articulo`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `cuarto`
--
ALTER TABLE `cuarto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licencias`
--
ALTER TABLE `licencias`
  ADD PRIMARY KEY (`id_licencia`);

--
-- Indices de la tabla `movilidad`
--
ALTER TABLE `movilidad`
  ADD PRIMARY KEY (`id_movilidad`);

--
-- Indices de la tabla `netbooks`
--
ALTER TABLE `netbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id_periodo`);

--
-- Indices de la tabla `primero`
--
ALTER TABLE `primero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quinto`
--
ALTER TABLE `quinto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `segundo`
--
ALTER TABLE `segundo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `tercero`
--
ALTER TABLE `tercero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cuarto`
--
ALTER TABLE `cuarto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `licencias`
--
ALTER TABLE `licencias`
  MODIFY `id_licencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `movilidad`
--
ALTER TABLE `movilidad`
  MODIFY `id_movilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=729;

--
-- AUTO_INCREMENT de la tabla `netbooks`
--
ALTER TABLE `netbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id_periodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `primero`
--
ALTER TABLE `primero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `quinto`
--
ALTER TABLE `quinto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `segundo`
--
ALTER TABLE `segundo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tercero`
--
ALTER TABLE `tercero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
