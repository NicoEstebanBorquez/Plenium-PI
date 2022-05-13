-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2022 a las 13:57:12
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
(26, 'NUEVO', '2022-05-08', 'Pedro', 'Jimena', 'Ramos', '34256752P', 'p.jimena@mail.com', '659753159', 'PISO', 120000, 150000, 1, 3, 70, 100, 'Nerja', 'Málaga', 2),
(27, 'NUEVO', '2022-05-07', 'Jorge', 'Del Pozo', 'Martín', '45825964W', 'delpozo_martin@mail.com', '693259658', 'CASA-CHALET', 180000, 220000, 2, 4, 100, 150, 'Torrox', 'Málaga', 2),
(28, 'ACTIVO', '2022-05-08', 'Marta', 'Castro', 'Piñales', '35852687T', 'm.castro.pinales@mail.com', '675159753', 'PISO', 120000, 150000, 2, 3, 50, 80, 'Torrox', 'Málaga', 2),
(29, 'ACTIVO', '2022-05-08', 'Lucía', 'Marines', 'Del Olmo', '35865425Q', 'lucia_marines@mail.com', '683159785', 'ÁTICO', 150000, 195000, 2, 4, 100, 120, 'Nerja', 'Málaga', 2),
(30, 'ACTIVO', '2022-05-08', 'Domingo', 'Bela', 'Cebrián', '25963185J', 'bela.cebrian@mail.com', '658472658', 'CASA-CHALET', 200000, 230000, 4, 5, 150, 250, 'Vélez-Málaga', 'Málaga', 2),
(31, 'NUEVO', '2022-05-13', 'Íñigo', 'López', 'Vega', '25634853E', 'lopez.vega@mail.com', '658742657', 'PISO', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 4);

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
  `imagen` longtext COLLATE utf8_bin DEFAULT 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACWBAMAAADOL2zRAAAALVBMVEVHcEyBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYEgC2SnAAAADnRSTlMA+Q0zA+SaI/C4SHbRX4wyd8QAAAVJSURBVGje7VrPa9tWHBfKA0FvPiTUmxFuZgpr6uKDCQR2ELIg4JFDCQul6cTyo2kDIwQWMlh36aGBbmBIC2kTslJaDxrIJYGSHUqgh7G2WQ0dLWMQAjo4KCPob5jekyW/pyfJ7ymPEYq/OUR+0vv4o8/3p5RIUte6xm/6P1d6/2odg+9C9r3GA6XsZxznbtn7MPBVyK7VOaDkDdVxHGs8jz49sxzSrFF2KDCkenvW4M2AXSdsn7BDLZqtPc0bLhiYo7D+ZcYqNoJNuScu1gTNi1X8M4+wXX3zkpSe1/BNYtvP8+l5yS9U0mdr+bS8fBdiYFPLKXkt3qY2Wmo6XsWXDoux8Op5yATFwkv+TXUE8ZI3GaE682qnDkqfGfMEvEYa+OVrYDM9rwoRRuOGJD9Py0sndi6VKHR2XuCLDC6WV56LZipeRLw3J/3VWgpexVdEOktacpQk8SLqTKvMo2ajX+flJX/AL8wuQJTiNagZqD7i42UQdSb3Hq5VX1pZ1NIGTC5exOX2Dgq26y782Dw8HFQ5eH1G3AZqYwYqrtYvGiVAMi+FqO9fF2AX8903BcGULVZe8iYeQ0tlCDXoB1tzB266sMzGiywOORTvA+0kP3oCF26ZTLxG8KJsT3ouDPVHSQo3lEheFbwoW/c19/sqE8TG8QIUYr8zL/05vm8PbtNfkNts5NhQA47gBTbw4tBXQkthne1JCFZtdOBFlIFcPToyLTQfGkRAH5apeMdFbqJ4v9WIyJgsDBRjqIan/wIJVQ3pHl4KTIWFA+hE/CNt2y4k5HyrUSmA2Zs8dXYvj6UOUd/HFpAL4/qjNUXFvzv/tKdbQpHHcGkovtU2/6bi377hY53HXdjchtFwPqG5Otl6TKEL5Yn3DR1GnCWYTGBfDS9JABfLgsqCys3kESLzltLf8/0AfofjED6hSfs7H2jhwfi4HJrY+2AMA4YR5yyMZkD036ua9KUZKllg8TLDpJSFxczAE88l9mO4VYywjZYwCoGO38I9aQuTD8XtQ7YhzkLZgU8xP7UfJKw36OQH1nkQxT/u8kMpyIUx1HWGVFYs53ibDMXDgFe2ZMR15jjznk+DmDqSdvHqFz+xRRqKxsCZn0rP0O/eHY2aBxnsPox/fcOTZVS6iKJhKvr5p5PZ21rQYuz3UtUM6k/xssNrx/Wg/rlhAAav9HpQPRPcUG6xR/Vh+Ns7e+4BkH94iup10gyfAIZapqQ8zRNjai0Nllc7XSZ4l1QmnHR2lKd67edqSqxmicI656TFmheIRfECp4PXgkBetPaXxN2jUF6nw48i9Sp19erq1dXrY9TLPqV62Ul6WSszLZudWVlZnXV/1v2mfnd1dqZts6u1DrzssmHo/dAK/YWC3u8eX/DnlgfeCQOa7p6d66CXRZ88UwueB0hznw6a5QReEVgVH2sydGK3k14RvMwYrK1OetFYPT6v6dCJgxPoNa1RWLy8KmY0L3CQQq+Ee+T1Y0+Ll8XGKxnL5/WNJEwvi82Pl1LxegdTThyvs3VBer2L+uoO+ZjAq/mYUy8zJS+bPb5ieJ07DbxsgXqJyscYXolYihmfj7x6DSfUidTxNX1yXkoc1i5/fClxfeiAPx+TePHGV4B1L+Iey+n0sv7oJ20uRXz5b41yf75+verb+vrv6gn86Fj0/MWrV8LbLBor2Y96wmvEZlq9eHnZfLz+N70ieMkC9ZIF+lFpiNNLNgX6sSFQL4G8DJF6NcT5EQjUCzTE6SUJ1Eta5sK62H4nT78wjfi3r6TLlVeZlo1G/MH610ysXaWv5vo3wa59zPYf1NVVMTt8etwAAAAASUVORK5CYII=',
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id_inmueble`, `fecha_publicacion`, `denominacion`, `tipo`, `precio`, `superficie_util`, `superficie_total`, `direccion`, `poblacion`, `provincia`, `dormitorios`, `banos`, `amueblado`, `cocina_equipada`, `aire_acondicionado`, `calefaccion_central`, `gas_natural`, `placas_solares`, `armarios_empotrados`, `terraza`, `aparcamiento`, `ascensor`, `piscina`, `jardin`, `propietario_nombre`, `propietario_apellidos`, `propietario_nif`, `propietario_telefono`, `propietario_email`, `imagen`, `id_usuario`) VALUES
(60, '2022-05-08', 'Ático dúplex de 4 dormitorios', 'ÁTICO', 265000, 126, 135, 'Avda. Mediterráneo nº 32 - 4ºB', 'Nerja', 'Málaga', 4, 3, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', NULL, 2),
(61, '2022-05-13', 'Chalet adosado de 3 dormitorios', 'CASA-CHALET', 175000, 123, 135, 'Calle Alejandro Bueno nº 16', 'Nerja', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'Lorenzo', 'Márquez Soliva', '35698752G', '693593156', 'l.marquez.soliva@mail.com', NULL, 1),
(62, '2022-05-13', 'Piso de 2 dormitorios con parking', 'PISO', 168000, 85, 93, 'Avda. Del Sol nº 19 - Portal 2 - 4ºF', 'Málaga', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lucía', 'Martínez Prado', '25753148E', '685256321', 'martinez.prado@mail.com', NULL, 4),
(65, '2022-05-18', 'Ático de 3 dormitorios con terraza', 'ATICO', 186000, 102, 116, 'Av. Los Castaños, nº 12 - 4ºD', 'Nerja', 'Málaga', 3, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', 'si', 'Melania', 'Díaz Gerardo', '34223358E', '695268741', 'm.diazg@mail.com', NULL, 2),
(66, '2022-05-08', 'Piso de 3 dormitorios', 'PISO', 173000, 95, 102, 'C/ Lozano Beltrán, nº 14 - Bl.2 2ºD', 'Nerja', 'Málaga', 3, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', 'si', 'Marta', 'Fernández Merlo', '26233612E', '6693458152', 'm.fernandez.merlo@mail.com', NULL, 2),
(67, '2022-05-13', 'Piso de 2 dormitorios', 'PISO', 125000, 65, 72, 'C/ Navarro Ledesma, nº 15 - Edf. El Álamo 2ºD', 'Frigiliana', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', '', 'si', 'si', 'si', 'Josefa', 'Muñoz Márquez', '52821658T', '632329612', 'munoz.marquez@mail.com', NULL, 2),
(70, '2022-05-14', 'Piso de 2 dormitorios con terraza', 'PISO', 116000, 62, 0, 'Calle Mendizábal Castro, nº 22 - 2ºA', 'Nerja', 'Málaga', 2, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', NULL, 'si', 'si', 'si', 'Lucía', 'Mendoza Cardozo', '33221358W', '654258712', 'l.mendoza.cardozo@mail.com', NULL, 1),
(71, '2022-05-08', 'Piso de 3 dormitorios con parking', 'PISO', 195000, 98, 107, 'Av. del Sol, nº 19 - 2ºJ', 'Nerja', 'Málaga', 3, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', 'si', 'María', 'Pérez Moreno', '35853658W', '6873458912', 'm.perez.moreno@mail.com', NULL, 2),
(72, '2022-05-18', 'Piso de 2 dormitorios', 'PISO', 115000, 65, 72, 'C/ Luisa Morales, nº 2 - Edf. Margosa 2ºA', 'Torrox', 'Málaga', 2, 2, 'si', 'si', 'si', NULL, NULL, NULL, 'si', 'si', '', 'si', 'si', 'si', 'José', 'Padros Hierro', '26821658E', '637329621', 'j.prados.hierro@mail.com', NULL, 2),
(73, '2022-05-08', 'Ático de 2 dormitorios', 'ÁTICO', 205000, 106, 112, 'Avda. Mediterráneo nº 32 - 4ºA', 'Nerja', 'Málaga', 2, 2, NULL, 'si', 'si', NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'Lorena', 'Montiel Pazos', '36524965H', '693258741', 'montiel.pazos@mail.com', NULL, 3),
(74, '2022-05-13', 'Chalet pareado de 3 dormitorios', 'CASA-CHALET', 160000, 119, 125, 'C/ Romero nº2 - Urb. Medinaceli II - Puerta 14', 'Torrox', 'Málaga', 3, 2, NULL, 'si', 'si', NULL, NULL, 'si', 'si', 'si', 'si', NULL, 'si', NULL, 'Jorge', 'Martín Campos', '45851483R', '695324851', 'j.martin.campos@mail.com', NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `apellido`, `email`, `telefono`) VALUES
(1, 'Nico', 'Esteban', 'n.esteban@bm.com', '670340130'),
(2, 'Marta', 'Sanchez', 'm.sanchez@mail.com', '654534189');

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
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_inmueble` int(5) DEFAULT NULL,
  `id_cliente` int(5) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(1, '2022-05-01', 'admin', '$2a$10$kx3FY8CHluEE7rjK52X9OehzM.fHjzXjFKrpEITGYQE67My03DACG', 'Nicolás', 'Esteban', 'Bórquez', '657453256', 'admin@bahia-estates.com'),
(2, '2022-05-08', 'j.martin.garcia', '$2a$10$RK82.Rix1WEGaTtDsz7DR.U9hGN6E5Nv6.iTnSk0rgRYI8b4pS2Lm', 'Javier', 'Martín', 'García', '632586145', 'j.martin.garcia@mail.com'),
(3, '2022-05-08', 'm.sanchez.palacios', '$2a$10$maPhtX0iK/c/zPG3W4vA/eaU4gV1CEWNeKrwTpEpf48Quys2heSxK', 'Marta', 'Sánchez', 'Palacios', '639852486', 'm.sanchez.palacios@mail.com'),
(4, '2022-05-08', 'c.lopez.monzo', '$2a$10$.pXcwSATsB8oAcG5Fne2Q.tlvHcC.2N9m5Owi6kPGi0iYWzUJUOji', 'Carmen', 'López', 'Monzó', '693258741', 'c.lopez.monzo@mail.com'),
(5, '2022-05-08', 'l.cabezas.gonzalez', '$2a$10$FO0rgvz1B.ZE9X8ytX4Z0./AfQi90o8q2Ce91VCmbDDEMZ0GYQxTK', 'Luis', 'Cabezas', 'González', '639523612', 'l.cabezas.gonzalez@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `contrasena` varchar(255) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(40) COLLATE utf8_bin NOT NULL,
  `primer_apellido` varchar(40) COLLATE utf8_bin NOT NULL,
  `segundo_apellido` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(40) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `contrasena`, `nombre`, `primer_apellido`, `segundo_apellido`, `email`, `telefono`) VALUES
(1, '$argon2id$v=19$m=1024,t=1,p=1$gGu8NG0huzWaNjHyDOsvrA$sjhsvAlzCIqIAn5AKogznXn4frQHxhA30iA84mhNjzU', 'admin2', 'admin2', NULL, 'admin2@admin2.com', NULL),
(2, '$argon2id$v=19$m=1024,t=1,p=1$55WBNkZ1PakVYe3bq3kVBw$7pIyEVxtXhSvMkPqrCmwMgrPy2xTxArDrgtY0NbZnZA', 'admin3', 'admin3', NULL, 'admin3@admin3.com', NULL);

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
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

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
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_inmueble` (`id_inmueble`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `id_inmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  ADD CONSTRAINT `tareas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tareas_ibfk_3` FOREIGN KEY (`id_inmueble`) REFERENCES `inmuebles` (`id_inmueble`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tareas_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
