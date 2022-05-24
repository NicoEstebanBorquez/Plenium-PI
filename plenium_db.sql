-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2022 a las 23:52:04
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plenium_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `estado` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `primer_apellido` varchar(50) COLLATE utf8_bin NOT NULL,
  `segundo_apellido` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `documento_identidad` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(15) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `precio_min` int(11) DEFAULT NULL,
  `precio_max` int(11) DEFAULT NULL,
  `dormitorios_min` int(11) DEFAULT NULL,
  `dormitorios_max` int(11) DEFAULT NULL,
  `superficie_min` int(11) DEFAULT NULL,
  `superficie_max` int(11) DEFAULT NULL,
  `localidad` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `provincia` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `estado`, `fecha_alta`, `nombre`, `primer_apellido`, `segundo_apellido`, `documento_identidad`, `email`, `telefono`, `tipo`, `precio_min`, `precio_max`, `dormitorios_min`, `dormitorios_max`, `superficie_min`, `superficie_max`, `localidad`, `provincia`, `id_usuario`) VALUES
(26, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(27, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(28, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(29, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(30, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(32, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(33, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(45, 'NUEVO', '2022-05-22', 'Luis', 'Almena', 'Ramos', '34256752P', 'l.almena.ramos@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(46, 'NUEVO', '2022-05-07', 'Jorge', 'Prado', 'López', '45825964W', 'j.prado.lopez@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torre del Mar', 'Málaga', 2),
(47, 'ACTIVO', '2022-05-08', 'Marta', 'Mena', 'Pineda', '35852687T', 'm.mena.pineda@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torre del Mar', 'Málaga', 2),
(48, 'ACTIVO', '2022-05-08', 'Lucas', 'Perea', 'Del Olmo', '35865425Q', 'lucas.perea@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(49, 'ACTIVO', '2022-05-08', 'Dolores', 'Belazo', 'Cebrián', '25963185J', 'd.belazo@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Torre del Mar', 'Málaga', 2),
(50, 'ACTIVO', '2022-05-21', 'Miriam', 'Jurado', 'Velazquez', '34758648R', 'm.jurado.v@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 5),
(51, 'NUEVO', '2022-05-22', 'Jorge', 'Alcántara', 'Mirayo', '24519634E', 'j.alcantara@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(52, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 3),
(53, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(54, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(55, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(56, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(57, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(58, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(59, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(60, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(61, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(62, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(63, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(64, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(65, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(66, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(67, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(68, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(69, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(70, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(71, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(72, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(73, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(74, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(75, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(76, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(77, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(78, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(79, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(80, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(81, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(82, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(83, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(84, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(85, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(86, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(87, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(88, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(89, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(90, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(91, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(92, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(93, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(94, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(95, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(96, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(97, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(98, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(99, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(100, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(101, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(102, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(103, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(104, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(105, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(106, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(107, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(108, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(109, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(110, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(111, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(112, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(113, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(114, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(115, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(116, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(117, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(118, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(119, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(120, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(121, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(122, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(123, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(124, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(125, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(126, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(127, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(128, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(129, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(130, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(131, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(132, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(133, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(134, 'NUEVO', '2022-05-22', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 4),
(135, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(136, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(137, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(138, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(139, 'ACTIVO', '2022-05-21', 'Maximiliano', 'Jurado', 'Bellido', '34758648R', 'm.jurado.bellido@mail.com', '693258456', 'ÁTICO', 200000, 2650000, 3, 4, 100, 140, 'Nerja', 'Málaga', 4),
(140, 'NUEVO', '2022-05-22', 'Jorge', 'Albuñol', 'Miranda', '24519634E', 'j.a.miranda@mail.com', '694582159', 'TERRENO', 30000, 80000, 0, 0, 50, 100, 'Torrox', 'Málaga', 3),
(141, 'NUEVO', '2022-05-24', 'Juan', 'Dominguez', 'Beltrán', '358521458E', 'juan.d.b@mail.com', '693258741', 'CASA-CHALET', 150000, 180000, 2, 4, 100, 150, 'Nerja', 'Seleccione una provincia', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `id_inmueble` int(11) NOT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `denominacion` varchar(255) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `precio` int(1) DEFAULT 0,
  `superficie_util` int(11) DEFAULT 0,
  `superficie_total` int(11) DEFAULT 0,
  `direccion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `poblacion` varchar(50) COLLATE utf8_bin NOT NULL,
  `provincia` varchar(50) COLLATE utf8_bin NOT NULL,
  `dormitorios` int(11) NOT NULL,
  `banos` int(11) NOT NULL,
  `amueblado` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `cocina_equipada` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `aire_acondicionado` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `calefaccion_central` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `gas_natural` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `placas_solares` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `armarios_empotrados` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `terraza` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `aparcamiento` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `ascensor` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `piscina` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `jardin` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `propietario_nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `propietario_apellidos` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `propietario_nif` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `propietario_telefono` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `propietario_email` varchar(95) COLLATE utf8_bin DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id_inmueble`, `fecha_publicacion`, `denominacion`, `tipo`, `precio`, `superficie_util`, `superficie_total`, `direccion`, `poblacion`, `provincia`, `dormitorios`, `banos`, `amueblado`, `cocina_equipada`, `aire_acondicionado`, `calefaccion_central`, `gas_natural`, `placas_solares`, `armarios_empotrados`, `terraza`, `aparcamiento`, `ascensor`, `piscina`, `jardin`, `propietario_nombre`, `propietario_apellidos`, `propietario_nif`, `propietario_telefono`, `propietario_email`, `id_usuario`) VALUES
(60, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(61, '2022-05-13', 'Chalet adosado de 3 dormitorios', 'CASA-CHALET', 175000, 123, 135, 'Calle Alejandro Bueno nº 16', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'Lorenzo', 'Márquez Soliva', '35698752G', '693593156', 'l.marquez.soliva@mail.com', 3),
(62, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(65, '2022-05-18', 'Ático de 3 dormitorios con terraza', 'ATICO', 225000, 102, 116, 'Av. Los Castaños, nº 12 - 4ºD', 'Nerja', 'Málaga', 3, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', 'si', 'Melania', 'Díaz Gerardo', '34223358E', '695268741', 'm.diazg@mail.com', 2),
(66, '2022-05-08', 'Piso de 3 dormitorios', 'PISO', 173000, 95, 102, 'C/ Lozano Beltrán, nº 14 - Bl.2 2ºD', 'Nerja', 'Málaga', 3, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', 'si', 'Marta', 'Fernández Merlo', '26233612E', '6693458152', 'm.fernandez.merlo@mail.com', 2),
(67, '2022-05-13', 'Piso de 2 dormitorios', 'PISO', 125000, 65, 72, 'C/ Navarro Ledesma, nº 15 - Edf. El Álamo 2ºD', 'Frigiliana', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', '', 'si', 'si', 'si', 'Josefa', 'Muñoz Márquez', '52821658T', '632329612', 'munoz.marquez@mail.com', 2),
(70, '2022-05-14', 'Piso de 2 dormitorios con terraza', 'PISO', 125000, 72, 76, 'Calle Mendizábal Castro, nº 22 - 2ºA', 'Nerja', 'Málaga', 2, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', NULL, 'si', 'si', 'si', 'Lucía', 'Mendoza Cardozo', '33221358W', '654258712', 'l.mendoza.cardozo@mail.com', 2),
(71, '2022-05-08', 'Piso de 3 dormitorios con parking', 'PISO', 145000, 95, 99, 'Av. del Sol, nº 19 - 2ºJ', 'Nerja', 'Málaga', 3, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', 'si', 'María', 'Pérez Moreno', '35853658W', '6873458912', 'm.perez.moreno@mail.com', 2),
(72, '2022-05-24', 'Piso de 2 dormitorios', 'PISO', 126000, 65, 72, 'C/ Luisa Morales, nº 2 - Edf. Margosa 2ºA', 'Torrox', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', NULL, 'si', 'si', 'si', 'José', 'Padros Hierro', '26821658E', '637329621', 'j.prados.hierro@mail.com', 2),
(73, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(74, '2022-05-13', 'Chalet pareado de 3 dormitorios', 'CASA-CHALET', 160000, 119, 125, 'C/ Romero nº2 - Urb. Medinaceli II - Puerta 14', 'Torrox', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, 'si', 'si', 'si', 'si', NULL, 'si', NULL, 'Jorge', 'Martín Campos', '45851483R', '695324851', 'j.martin.campos@mail.com', 3),
(75, '2022-05-15', 'Chalet adosado de 4 dormitorios y piscina comunitaria', 'CASA-CHALET', 176000, 146, 152, 'C\\ Los Álamos nº 21 - Urb. Pinomar II - Casa nº 3', 'Nerja', 'Málaga', 4, 3, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', NULL, 'si', 'si', 'María Dolores', 'Gómez', 'Herrero', '657123482', 'm.gomez.herrero@mail.com', 2),
(76, '2022-05-21', 'Piso de 1 dormitorio con terraza', 'PISO', 115000, 62, 66, 'C\\ Nápoles nº 2 - 1ºD', 'Torrox', 'Málaga', 1, 1, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', NULL, 'si', NULL, NULL, 'Marisa', 'Roldán Muñoz', '42582156L', '693256743', 'm.roldan.muñoz@mail.com', 4),
(77, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(78, '2022-05-18', 'Ático dúplex de 3 dormitorios con terraza', 'ATICO', 235000, 125, 136, 'Av. Doctor Lozano, nº 12 - 4ºD', 'Nerja', 'Málaga', 3, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', 'si', 'Melania', 'Díaz Gerardo', '34223358E', '695268741', 'm.diazg@mail.com', 2),
(81, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(82, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(83, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(84, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(85, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(86, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(87, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(88, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(89, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(90, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(91, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(92, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(93, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(94, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(95, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(96, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(97, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(98, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(99, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(100, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(101, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(102, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(103, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(104, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(105, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(106, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(107, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(108, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(109, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(110, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(111, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(112, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(113, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(114, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(115, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(116, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(117, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(118, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(119, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(120, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(121, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(122, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(123, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(124, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(125, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(126, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(127, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(128, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(129, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(130, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(131, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(132, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(133, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(134, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(135, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(136, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(137, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(138, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(139, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(140, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(141, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(142, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(143, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Nerja', 'Málaga', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(144, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(145, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Almuñecar', 'Granada', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(146, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Almuñecar', 'Granada', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(147, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'Almuñecar', 'Granada', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(148, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Granada', 'Granada', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(149, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'La Herradura', 'Granada', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(150, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'La Herradura', 'Granada', 3, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 3),
(151, '2022-05-08', 'Ático de 3 dormitorios', 'ÁTICO', 225000, 115, 121, 'Avda. Marisol nº 12 - 4ºB', 'La Herradura', 'Granada', 3, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', 2),
(152, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'La Herradura', 'Granada', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', 4),
(153, '2022-05-24', 'Piso de 2 dormitorios con terraza', 'PISO', 125000, 65, 68, 'Av. del Sol nº 14 - Edf. Albaida 2ºF', 'Almuñecar', 'Seleccione una provincia', 2, 1, 'si', 'si', NULL, NULL, NULL, NULL, 'si', NULL, NULL, 'si', NULL, NULL, 'Luis', 'Jimena Beltrán', '34582159R', '6753258741', 'luis.jiimena@mail.com', 2),
(154, '2022-05-24', 'Piso de 2 dormitorios con terraza', 'PISO', 125000, 65, 68, 'Calle del Mar, nº 14 2ºC', 'Torrox', 'Seleccione una provincia', 2, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', NULL, NULL, NULL, NULL, NULL, 'Juan', 'Pérez', '35824585R', '693258741', 'j.perez@mail.com', 2),
(155, '2022-05-24', 'Piso de 2 dormitorios con terraza', 'PISO', 120000, 65, 68, 'Avda. Carlos Cano 94', 'Frigiliana', 'Seleccione una provincia', 2, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', NULL, NULL, NULL, NULL, NULL, 'Pedro', 'Ramirez Lopez', '524852159E', '695324852', 'pedro.r.lopez@mail.com', 2),
(156, '2022-05-24', 'Piso de 2 dormitorios con terraza', 'PISO', 120000, 60, 65, 'Avda. Carlos Cano 94', 'Frigiliana', 'Seleccione una provincia', 2, 2, 'si', 'si', NULL, NULL, NULL, NULL, NULL, 'si', NULL, 'si', NULL, NULL, 'María', 'Prado Gomez', '58485349R', '693258741', 'm.prado.gomez@mail.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`, `id_usuario`) VALUES
(1, 'ROLE_ADMIN', 1),
(2, 'ROLE_USER', 1),
(3, 'ROLE_USER', 2),
(4, 'ROLE_USER', 3),
(5, 'ROLE_USER', 4),
(6, 'ROLE_USER', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id_tarea` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `hora` varchar(45) COLLATE utf8_bin NOT NULL,
  `titulo` varchar(255) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id_tarea`, `tipo`, `fecha_publicacion`, `fecha_vencimiento`, `hora`, `titulo`, `descripcion`, `id_usuario`) VALUES
(1, 'CAPTACIÓN NUEVO INMUEBLE', '2022-05-24', '2022-05-24', '12:30', 'Captación inmueble en Nerja.', 'Visita para captación de nuevo inmueble situado en C\\ Alejandro Bueno nº 15 de Nerja. ', 4),
(2, 'REUNIÓN CON CLIENTE', '2022-05-13', '2022-05-24', '12:20', 'Reunión con Juan Marino.', 'Reunión con cliente Juan Marino. Está interesado en adquirir una vivienda en Nerja en la zona de Av. del Mediterráneo.', 2),
(10, 'REUNIÓN CON PROPIETARIO', '2022-05-13', '2022-05-30', '10:00', 'Reunión con Sergio Prado.', 'Reunión con cliente Sergio Prado. Quiere vender su piso en C\\ Los Álamos y quiere asesoramiento. ', 2),
(11, 'VISITA A INMUEBLE', '2022-05-13', '2022-05-24', '09:45', 'Visita a inmueble ref. 235', 'Visita a chalet ubicado en Camino del faro nº 3 con cliente Mario López Beltrán.', 2),
(14, 'VISITA A INMUEBLE', '2022-05-13', '2022-05-30', '16:30', 'Visita a inmueble ref. 124', 'Visita a apartamento ubicado en Av. del Mediterráneo nº 12 con clienta María Beltrán Montes.', 2),
(15, 'REUNIÓN CON CLIENTE', '2022-05-13', '2022-05-29', '17:30', 'Reunión con Luisa Lozano.', 'Reunión con clienta Luisa Lozano Está interesada en adquirir una vivienda en Torre del Mar en la zona de El Arenal.', 2),
(16, 'REUNIÓN CON PROPIETARIO', '2022-05-13', '2022-05-26', '11:30', 'Reunión con Sofía Miralles.', 'Reunión con clienta Sofía Miralles. Quiere vender su piso en C\\ Pinar y quiere asesoramiento. ', 2),
(21, 'LLAMADA TELEFÓNICA', '2022-05-24', '2022-05-25', '10:30', 'Llamar a cliente Fernando Molina', 'descri....', 2),
(23, 'CAPTACIÓN NUEVO INMUEBLE', '2022-05-24', '2022-05-27', '11:30', 'Captación inmueble en Nerja.', 'Reunión con clienta María Lozano. Quiere vender su piso en C\\ Pinar y quiere asesoramiento.', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `fecha_alta` date DEFAULT NULL,
  `username` varchar(45) COLLATE utf8_bin NOT NULL,
  `password` varchar(245) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `primer_apellido` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `segundo_apellido` varchar(45) COLLATE utf8_bin DEFAULT '',
  `telefono` varchar(15) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `fecha_alta`, `username`, `password`, `nombre`, `primer_apellido`, `segundo_apellido`, `telefono`, `email`) VALUES
(1, '2022-05-01', 'admin', '$2a$10$kx3FY8CHluEE7rjK52X9OehzM.fHjzXjFKrpEITGYQE67My03DACG', 'Admin', 'Plenium', 'Plenium', '657453256', 'admin-plenium@mail.com'),
(2, '2022-05-08', 'n.esteban.borquez', '$2a$10$3ismS8B4jUhppLILsu0Xfugbc6CObvh8QjDLf4V72toDUBC/RO0pW', 'Nicolás', 'Esteban', 'Bórquez', '670340130', 'n.esteban.borquez@mail.com'),
(3, '2022-05-08', 'm.sanchez.palacios', '$2a$10$maPhtX0iK/c/zPG3W4vA/eaU4gV1CEWNeKrwTpEpf48Quys2heSxK', 'Marta', 'Sánchez', 'Palacios', '639852486', 'm.sanchez.palacios@mail.com'),
(4, '2022-05-08', 'c.lopez.monzo', '$2a$10$ex/YwyVdYBPzFLE.xV0N9..JcbTgsn4pkg2hGE7LOZdcmAiY6PC6y', 'Carmen', 'López', 'Monzó', '693258741', 'c.lopez.monzo@mail.com'),
(5, '2022-05-08', 'l.cabezas.gonzalez', '$2a$10$FO0rgvz1B.ZE9X8ytX4Z0./AfQi90o8q2Ce91VCmbDDEMZ0GYQxTK', 'Luis', 'Cabezas', 'González', '639523612', 'l.cabezas.gonzalez@mail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`id_inmueble`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id_tarea`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `id_inmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id_tarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD CONSTRAINT `inmuebles_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rol`
  ADD CONSTRAINT `rol_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
