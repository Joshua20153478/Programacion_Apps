-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-12-2020 a las 05:44:38
-- Versión del servidor: 8.0.22
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

/*
Si no tienes una base de datos, copia las siguientes dos líneas que no están comentadas
La base de datos se llama tienda y se crean las tablas de color, estado, producto, fabricante


CREATE DATABASE IF NOT EXISTS tienda
use tienda
*/
CREATE DATABASE IF NOT EXISTS tienda;
use tienda;

CREATE TABLE `color` (
  `idcolor` int UNSIGNED NOT NULL,
  `color` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`idcolor`, `color`) VALUES
(1, 'ROJO'),
(2, 'AZUL'),
(3, 'VERDE'),
(4, 'AMARILLO'),
(5, 'BLANCO'),
(6, 'MORADO'),
(7, 'GRIS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `idestado` int UNSIGNED NOT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idestado`, `estado`) VALUES
(1, 'GUADALAJARA'),
(2, 'COLIMA'),
(3, 'MONTERREY'),
(4, 'CDMX'),
(5, 'MAZATLAN'),
(6, 'TOLUCA'),
(7, 'PUEBLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricante`
--

CREATE TABLE `fabricante` (
  `codigo` int UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `fabricante`
--

INSERT INTO `fabricante` (`codigo`, `nombre`) VALUES
(1, 'Asus'),
(2, 'Lenovo'),
(3, 'Hewlett-Packard'),
(4, 'Samsung'),
(5, 'Seagate'),
(6, 'Crucial'),
(7, 'Gigabyte'),
(8, 'Huawei'),
(9, 'Xiaomi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo` int UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL,
  `codigo_fabricante` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombre`, `precio`, `codigo_fabricante`) VALUES
(1, 'Disco duro SATA3 1TB', 86.99, 5),
(2, 'Memoria RAM DDR4 8GB', 120, 6),
(3, 'Disco SSD 1 TB', 150.99, 4),
(4, 'GeForce GTX 1050Ti', 185, 7),
(5, 'GeForce GTX 1080 Xtreme', 755, 6),
(6, 'Monitor 24 LED Full HD', 202, 1),
(7, 'Monitor 27 LED Full HD', 245.99, 1),
(8, 'Portátil Yoga 520', 559, 2),
(9, 'Portátil Ideapd 320', 444, 2),
(10, 'Impresora HP Deskjet 3720', 59.99, 3),
(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idx` int NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `nivel` tinyint DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `compañia` varchar(20) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `activo` tinyint DEFAULT NULL, /*Ancho de visualizacion obsoleto*/
  `color` int UNSIGNED DEFAULT NULL,
  `estado` int UNSIGNED DEFAULT NULL,
  `idproducto` int UNSIGNED DEFAULT NULL,
  `edad` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idx`, `usuario`, `nombre`, `sexo`, `nivel`, `email`, `telefono`, `marca`, `compañia`, `saldo`, `activo`, `color`, `estado`, `idproducto`, `edad`) VALUES
(1, 'BRE2271', 'BRENDA', 'M', 2, 'brenda@live.com', '655-330-5736', 'SAMSUNG', 'IUSACELL', 100, 1, '1', '1', 1, '1971-12-11'),
(2, 'OSC4677', 'OSCAR', 'H', 3, 'oscar@gmail.com', '655-143-4181', 'LG', 'TELCEL', 0, 1, '2', '2', 2, '1972-12-12'),
(3, 'JOS7086', 'JOSE RAÚL', 'H', 3, 'francisco@gmail.com', '655-143-3922', 'NOKIA', 'MOVISTAR', 150, 1, '3', '3', 3, '1973-12-13'),
(4, 'LUI6115', 'LUIS FRANCISCO', 'H', 0, 'enrique@outlook.com', '655-137-1279', 'SAMSUNG', 'TELCEL', 50, 1, '4', '4', 4, '1974-12-14'),
(5, 'LUI7072', 'LUIS', 'H', 1, 'luis@hotmail.com', '655-100-8260', 'NOKIA', 'IUSACELL', 50, 0, '5', '5', 5, '1975-12-15'),
(6, 'DAN2832', 'DANIEL ALDAIR', 'H', 0, 'daniel@outlook.com', '655-145-2586', 'SONY', 'UNEFON', 100, 1, '6', '6', 6, '1976-12-16'),
(7, 'JAQ5351', 'JAQUELINE', 'M', 0, 'jaqueline@outlook.com', '655-330-5514', 'BLACKBERRY', 'AXEL', 0, 1, '7', '7', 7, '1977-12-17'),
(8, 'ROM6520', 'ROMAN', 'H', 2, 'roman@gmail.com', '655-330-3263', 'LG', 'IUSACELL', 50, 1, '1', '1', 8, '1978-12-18'),
(9, 'BLA9739', 'BLAS', 'H', 0, 'blas@hotmail.com', '655-330-3871', 'LG', 'UNEFON', 100, 1, '2', '2', 9, '1979-12-19'),
(10, 'JES4752', 'JESSICA', 'M', 1, 'jessica@hotmail.com', '655-143-6861', 'SAMSUNG', 'TELCEL', 500, 1, '3', '3', 10, '1980-12-20'),
(11, 'DIA6570', 'DIANA LAURA', 'M', 1, 'diana@live.com', '655-143-3952', 'SONY', 'UNEFON', 100, 0, '4', '4', 11, '1985-12-25'),
(12, 'RIC8283', 'RICARDO', 'H', 2, 'ricardo@hotmail.com', '655-145-6049', 'MOTOROLA', 'IUSACELL', 150, 1, '5', '5', 1, '1990-12-30'),
(13, 'VAL6882', 'VALENTINA', 'M', 0, 'valentina@live.com', '655-137-4253', 'BLACKBERRY', 'AT&T', 50, 0, '6', '6', 2, '2000-12-20'),
(14, 'BRE8106', 'BRENDA', 'M', 3, 'brenda2@gmail.com', '655-100-1351', 'MOTOROLA', 'NEXTEL', 150, 1, '7', '7', 3, '1960-12-06'),
(15, 'LUC4982', 'LUCIA', 'M', 3, 'lucia@gmail.com', '655-145-4992', 'BLACKBERRY', 'IUSACELL', 0, 1, '1', '1', 4, '1950-12-06'),
(16, 'JUA2337', 'JUAN JOSÉ', 'H', 0, 'juan@outlook.com', '655-100-6517', 'SAMSUNG', 'AXEL', 0, 0, '2', '2', 5, '1945-12-22'),
(17, 'ELP2984', 'ELPIDIO', 'H', 1, 'elpidio@outlook.com', '655-145-9938', 'MOTOROLA', 'MOVISTAR', 500, 1, '3', '3', 6, '1930-12-03'),
(18, 'JES9640', 'JESSICA', 'M', 3, 'jessica2@live.com', '655-330-5143', 'SONY', 'IUSACELL', 200, 1, '4', '4', 7, '1945-12-05'),
(19, 'LET4015', 'LETICIA', 'M', 2, 'leticia@yahoo.com', '655-143-4019', 'BLACKBERRY', 'UNEFON', 100, 1, '5', '5', 8, '1968-12-25'),
(20, 'LUI1076', 'LUIS', 'H', 3, 'luis2@live.com', '655-100-5085', 'SONY', 'UNEFON', 150, 1, '6', '6', 9, '1971-03-17'),
(21, 'HUG5441', 'HUGO', 'H', 2, 'hugo@live.com', '655-137-3935', 'MOTOROLA', 'AT&T', 500, 1, '7', '7', 10, '1971-06-24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`idcolor`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`);
 -- ADD KEY `codigo_fabricante` (`codigo_fabricante`); /*Considero una linea innecesaria*/

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `codigo` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `codigo` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idx` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`codigo_fabricante`) REFERENCES `fabricante` (`codigo`);
-- COMMIT; Se omite porque ya se habilito autocommit

--
-- Filtros para tabla usuarios
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`color`) REFERENCES color (`idcolor`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`estado`) REFERENCES estado (`idestado`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`idproducto`) REFERENCES producto (`codigo`); 
  
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
