-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2018 a las 10:07:08
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viernes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enviar`
--

CREATE TABLE `enviar` (
  `origen` varchar(50) DEFAULT NULL,
  `destino` varchar(50) DEFAULT NULL,
  `paquete` varchar(20) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `enviar`
--

INSERT INTO `enviar` (`origen`, `destino`, `paquete`, `fecha`) VALUES
('madrid', 'zafra', 's', '2018-02-22'),
('bejar', 'barcelona', 'm', '2018-02-16'),
('santander', 'bilbao', 's', '2018-02-06'),
('Cuenca, España', 'Lugo, España', 's', '2018-02-16'),
('Carabanchel Alto, Madrid, España', 'Carabanchel, Madrid, España', 's', '2015-05-15'),
('Cuenca, España', 'Lugo, España', 'l', '2015-05-15'),
('Zafra, España', 'Getafe Central, Getafe, España', 's', '2015-05-15'),
('Huelva, España', 'Sevilla, España', 's', '2015-05-15'),
('Madrid, España', 'Lisboa, Portugal', 's', '2015-05-15'),
('Madrid, España', 'Barcelona, España', 's', '2015-05-15'),
('Pamplona, España', 'Huelva, España', 's', '2015-05-15'),
('Zafra, España', 'Bilbao, España', 's', '2015-05-15'),
('Zafra, España', 'Bilbao, España', 's', '2015-05-15'),
('París, Francia', 'Madrid, España', 'm', '2018-02-22'),
('Zafra, España', 'París, Francia', 's', '2018-02-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transportistas`
--

CREATE TABLE `transportistas` (
  `nombre` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `puja` int(11) DEFAULT NULL,
  `origen` varchar(50) DEFAULT NULL,
  `destino` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `transportistas`
--

INSERT INTO `transportistas` (`nombre`, `password`, `puja`, `origen`, `destino`) VALUES
('man', 'man', 2, NULL, NULL),
('lolo', 'null', NULL, NULL, NULL),
('loli', 'null', NULL, NULL, NULL),
('lolo', 'lola', 20, NULL, NULL),
('eva', 'popo', 50, NULL, NULL),
('ana', 'joaquin', 35, NULL, NULL),
('man', 'man', 20, NULL, NULL),
('man', 'man', 20, NULL, NULL),
('man', 'man', 22, NULL, NULL),
('man', 'man', 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `nombre` varchar(20) NOT NULL,
  `origen` varchar(50) NOT NULL,
  `destino` varchar(50) NOT NULL,
  `puja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`nombre`, `origen`, `destino`, `puja`) VALUES
('man', 'Cuenca, España', 'Lugo, España', 22),
('man', 'Cuenca, España', 'Lugo, España', 22);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
