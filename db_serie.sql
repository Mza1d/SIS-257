-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2022 a las 03:15:23
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `parcial2_anarata_diaz_mario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interpretes`
--

CREATE TABLE IF NOT EXISTS `interpretes` (
`id` int(11) NOT NULL,
  `nombre` varchar(125) DEFAULT NULL,
  `nacionalidad` varchar(120) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `interpretes`
--

INSERT INTO `interpretes` (`id`, `nombre`, `nacionalidad`) VALUES
(1, 'Mario', 'Bolivia'),
(2, 'Gabi', 'chil'),
(5, 'Mae', 'Bra'),
(6, 'asdasd', 'AF'),
(8, 'asdas', 'sdas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE IF NOT EXISTS `series` (
`id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `sinopsis` varchar(500) NOT NULL,
  `director` varchar(100) NOT NULL,
  `duracion` int(11) NOT NULL,
  `anio_estreno` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`id`, `titulo`, `sinopsis`, `director`, `duracion`, `anio_estreno`) VALUES
(1, 'Bajo Cero', 'Sis257.01', 'max', 8, 2021),
(4, 'spider man', 'strsdasing as', 'sda', 20, 2010),
(5, 'Bajo cero', 'assss', 'juan', 21, 2005),
(6, 'prueba', 'fdfff', 'sadfgvbn', 2, 2010),
(9, 'Bajo cero', 'sin', 'juan', 3, 2001);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
  `usuario` varchar(10) NOT NULL,
  `clave` varchar(120) NOT NULL,
  `email` varchar(60) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `premium` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `email`, `rol`, `premium`) VALUES
(1, 'Diaz', '$2b$10$xD3cVWghIRTlO0U5kbY.FOYMEqlqXsDcSuJDPhCGXOELYEEd7p5PC', 'mad@gmail.com', 'Admin', 1),
(2, 'mario', '$2b$10$SUM9qwt3Fp3DTETh8NQy1uqLdZ4tVrKDvH3jmcW9aA1momVpPaGEa', 'mad@gmail.com', 'Admin', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `interpretes`
--
ALTER TABLE `interpretes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
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
-- AUTO_INCREMENT de la tabla `interpretes`
--
ALTER TABLE `interpretes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
