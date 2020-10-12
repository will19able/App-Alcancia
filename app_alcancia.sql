-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2020 a las 12:46:00
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app_alcancia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldo`
--

CREATE TABLE `saldo` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `denominacion` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `saldo`
--

INSERT INTO `saldo` (`id`, `cantidad`, `denominacion`) VALUES
(1, 5, '50'),
(2, 20, '100'),
(3, 50, '1000'),
(4, 50, '50'),
(5, 79, '100'),
(6, 7, '200'),
(7, 3, '500'),
(8, 1, '500'),
(9, 1, '500'),
(10, 1, '1000'),
(11, 1, '200'),
(12, 1, '200'),
(13, 1, '200'),
(14, 1, '500'),
(15, 1, '100'),
(16, 1, '100'),
(17, 7, '200'),
(18, 1, '100'),
(19, 1, '50'),
(20, 1, '500'),
(21, 1, '200'),
(22, 1, '50'),
(23, 1, '500'),
(24, 3, '200'),
(25, 1, '200');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
