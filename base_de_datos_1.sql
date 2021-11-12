-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2021 a las 05:16:07
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_de_datos_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discos`
--

CREATE TABLE `discos` (
  `iddisco` int(11) NOT NULL,
  `marcadisco` varchar(100) DEFAULT NULL,
  `capaciaddisco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `discos`
--

INSERT INTO `discos` (`iddisco`, `marcadisco`, `capaciaddisco`) VALUES
(1, 'Kingston', '500GB'),
(2, 'Segate', '1TB'),
(3, 'Toshiba', '2TB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `idequipo` int(11) NOT NULL,
  `idestadoequipo` int(11) DEFAULT NULL,
  `idtorreequipo` int(11) DEFAULT NULL,
  `idmonitorequipo` int(11) DEFAULT NULL,
  `idtecladoequipo` int(11) DEFAULT NULL,
  `idratonequipo` int(11) DEFAULT NULL,
  `idotroequipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`idequipo`, `idestadoequipo`, `idtorreequipo`, `idmonitorequipo`, `idtecladoequipo`, `idratonequipo`, `idotroequipo`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2, 2),
(3, 3, 3, 3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `idestado` int(11) NOT NULL,
  `tipodeestado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`idestado`, `tipodeestado`) VALUES
(1, 'funcional'),
(2, 'con errores'),
(3, 'no funcional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `idfeedback` int(11) NOT NULL,
  `idusuariofeedback` int(11) DEFAULT NULL,
  `comentario` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`idfeedback`, `idusuariofeedback`, `comentario`) VALUES
(1, 1, 'mi equipo me encanto, fue mejor de lo que esperaba'),
(2, 2, 'el el equipo no esta mal pero puede ser mejor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `idgenero` int(11) NOT NULL,
  `genero` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`idgenero`, `genero`) VALUES
(1, 'masculino'),
(2, 'femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memorias`
--

CREATE TABLE `memorias` (
  `idmemoria` int(11) NOT NULL,
  `marcamemoria` varchar(100) DEFAULT NULL,
  `capacidadmemoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `memorias`
--

INSERT INTO `memorias` (`idmemoria`, `marcamemoria`, `capacidadmemoria`) VALUES
(1, 'Kingston', '4GB'),
(2, 'HyperX', '8GB'),
(3, 'G.Skill', '16GB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitores`
--

CREATE TABLE `monitores` (
  `idmonitor` int(11) NOT NULL,
  `nbienmonitor` varchar(100) DEFAULT NULL,
  `nseriemonitor` varchar(100) DEFAULT NULL,
  `tipomonitor` varchar(100) DEFAULT NULL,
  `marcamonitor` varchar(100) DEFAULT NULL,
  `modelomonitor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `monitores`
--

INSERT INTO `monitores` (`idmonitor`, `nbienmonitor`, `nseriemonitor`, `tipomonitor`, `marcamonitor`, `modelomonitor`) VALUES
(1, '1', '1', 'pantallaLED', 'Samsung', '1'),
(2, '2', '2', 'TFT LCD', 'LG', '2'),
(3, '3', '3', 'LCD', 'Msi', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros`
--

CREATE TABLE `otros` (
  `idotro` int(11) NOT NULL,
  `dispositivo` varchar(100) DEFAULT NULL,
  `nbienotro` varchar(100) DEFAULT NULL,
  `nserieotro` varchar(100) DEFAULT NULL,
  `marcaotro` varchar(100) DEFAULT NULL,
  `modelootro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `otros`
--

INSERT INTO `otros` (`idotro`, `dispositivo`, `nbienotro`, `nserieotro`, `marcaotro`, `modelootro`) VALUES
(1, 'webcam', '1', '1', 'Logitech', '1'),
(2, 'microfono', '2', '2', 'blue', '2'),
(3, 'audifonos', '3', '3', 'Beats', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratones`
--

CREATE TABLE `ratones` (
  `idraton` int(11) NOT NULL,
  `nbienraton` varchar(100) DEFAULT NULL,
  `nserieraton` varchar(100) DEFAULT NULL,
  `marcaraton` varchar(100) DEFAULT NULL,
  `modeloraton` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ratones`
--

INSERT INTO `ratones` (`idraton`, `nbienraton`, `nserieraton`, `marcaraton`, `modeloraton`) VALUES
(1, '1', '1', 'logitech', '1'),
(2, '2', '2', 'razer', '2'),
(3, '3', '3', 'HP', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idrol` int(11) NOT NULL,
  `rol` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idrol`, `rol`) VALUES
(1, 'cliente'),
(2, 'admin'),
(3, 'proveedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teclados`
--

CREATE TABLE `teclados` (
  `idteclado` int(11) NOT NULL,
  `nbienteclado` varchar(100) DEFAULT NULL,
  `nserieteclado` varchar(100) DEFAULT NULL,
  `marcateclado` varchar(100) DEFAULT NULL,
  `modeloteclado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `teclados`
--

INSERT INTO `teclados` (`idteclado`, `nbienteclado`, `nserieteclado`, `marcateclado`, `modeloteclado`) VALUES
(1, '1', '1', 'Redragon', '1'),
(2, '2', '2', 'Hyperx Alloy', '2'),
(3, '3', '3', 'Logitech', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `idtipo` int(11) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`idtipo`, `tipo`) VALUES
(1, 'soporte tecnico'),
(2, 'actualizacion'),
(3, 'matenimineto software'),
(4, 'mantenimineto hardware');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torres`
--

CREATE TABLE `torres` (
  `idtorre` int(11) NOT NULL,
  `nbientorre` varchar(100) DEFAULT NULL,
  `nserietorre` varchar(100) DEFAULT NULL,
  `marcatorre` varchar(100) DEFAULT NULL,
  `modelotorre` varchar(100) DEFAULT NULL,
  `procesadortorre` varchar(100) DEFAULT NULL,
  `iddiscotorre` int(11) DEFAULT NULL,
  `idmemoriatorre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `torres`
--

INSERT INTO `torres` (`idtorre`, `nbientorre`, `nserietorre`, `marcatorre`, `modelotorre`, `procesadortorre`, `iddiscotorre`, `idmemoriatorre`) VALUES
(1, '1', '1', 'Asus', '1', 'Ryzen 7', 1, 1),
(2, '2', '2', 'Iceberg', '2', 'Intel Core i7', 2, 2),
(3, '3', '3', 'Masterbox', '3', 'Ryzen 5', 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `cedula` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `idgenerousuario` int(11) DEFAULT NULL,
  `clave` varchar(100) DEFAULT NULL,
  `idrolusuario` int(11) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `cedula`, `nombre`, `apellido`, `idgenerousuario`, `clave`, `idrolusuario`, `correo`) VALUES
(1, '1', 'rafa', 'palacios', 1, '1', 1, 'rafa@gmail.com'),
(2, '2', 'andres', 'pulido', 2, '2', 2, 'andres@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `discos`
--
ALTER TABLE `discos`
  ADD PRIMARY KEY (`iddisco`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`idequipo`),
  ADD KEY `idestadoequipo` (`idestadoequipo`),
  ADD KEY `idtorreequipo` (`idtorreequipo`),
  ADD KEY `idmonitorequipo` (`idmonitorequipo`),
  ADD KEY `idtecladoequipo` (`idtecladoequipo`),
  ADD KEY `idratonequipo` (`idratonequipo`),
  ADD KEY `idotroequipo` (`idotroequipo`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`idfeedback`),
  ADD KEY `idusuariofeedback` (`idusuariofeedback`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`idgenero`);

--
-- Indices de la tabla `memorias`
--
ALTER TABLE `memorias`
  ADD PRIMARY KEY (`idmemoria`);

--
-- Indices de la tabla `monitores`
--
ALTER TABLE `monitores`
  ADD PRIMARY KEY (`idmonitor`);

--
-- Indices de la tabla `otros`
--
ALTER TABLE `otros`
  ADD PRIMARY KEY (`idotro`);

--
-- Indices de la tabla `ratones`
--
ALTER TABLE `ratones`
  ADD PRIMARY KEY (`idraton`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `teclados`
--
ALTER TABLE `teclados`
  ADD PRIMARY KEY (`idteclado`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `torres`
--
ALTER TABLE `torres`
  ADD PRIMARY KEY (`idtorre`),
  ADD KEY `iddiscotorre` (`iddiscotorre`),
  ADD KEY `idmemoriatorre` (`idmemoriatorre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `idgenerousuario` (`idgenerousuario`),
  ADD KEY `idrolusuario` (`idrolusuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`idestadoequipo`) REFERENCES `estados` (`idestado`),
  ADD CONSTRAINT `equipos_ibfk_2` FOREIGN KEY (`idtorreequipo`) REFERENCES `torres` (`idtorre`),
  ADD CONSTRAINT `equipos_ibfk_3` FOREIGN KEY (`idmonitorequipo`) REFERENCES `monitores` (`idmonitor`),
  ADD CONSTRAINT `equipos_ibfk_4` FOREIGN KEY (`idtecladoequipo`) REFERENCES `teclados` (`idteclado`),
  ADD CONSTRAINT `equipos_ibfk_5` FOREIGN KEY (`idratonequipo`) REFERENCES `ratones` (`idraton`),
  ADD CONSTRAINT `equipos_ibfk_6` FOREIGN KEY (`idotroequipo`) REFERENCES `otros` (`idotro`);

--
-- Filtros para la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`idusuariofeedback`) REFERENCES `usuarios` (`idusuario`);

--
-- Filtros para la tabla `torres`
--
ALTER TABLE `torres`
  ADD CONSTRAINT `torres_ibfk_1` FOREIGN KEY (`iddiscotorre`) REFERENCES `discos` (`iddisco`),
  ADD CONSTRAINT `torres_ibfk_2` FOREIGN KEY (`idmemoriatorre`) REFERENCES `memorias` (`idmemoria`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idgenerousuario`) REFERENCES `generos` (`idgenero`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`idrolusuario`) REFERENCES `roles` (`idrol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
