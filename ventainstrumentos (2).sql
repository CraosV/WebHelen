-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2024 a las 04:29:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventainstrumentos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nombreCategoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nombreCategoria`) VALUES
(1, 'Viento'),
(2, 'Cuerda'),
(3, 'Percucion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombreCliente` varchar(45) NOT NULL,
  `paternoCliente` varchar(45) NOT NULL,
  `maternoCliente` varchar(45) NOT NULL,
  `telefonoCliente` int(11) NOT NULL,
  `emailCliente` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCliente`, `paternoCliente`, `maternoCliente`, `telefonoCliente`, `emailCliente`) VALUES
(1, 'Jose', 'Quispe', 'Quispe', 78569825, 'joseQQ@gmail.com'),
(2, 'Maria ', 'Mamani', 'Flores', 67851252, 'Mariamf@gmail.com'),
(3, 'Ruben', 'Bautista', 'Choque', 76585325, 'rubenbauc@gmail.com'),
(4, 'Ronald', 'Quispe', 'Mamani', 78565475, 'RonalsQM@gmail.com'),
(5, 'Joel Isai', 'Choque', 'Luque', 77558626, 'chupapiJoel@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL,
  `nombreEmpleado` varchar(45) NOT NULL,
  `paternoEmpleado` varchar(45) NOT NULL,
  `maternoEmpleado` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `emailEmpleado` varchar(45) NOT NULL,
  `passwordEmpleado` varchar(45) NOT NULL,
  `estadoEmpleado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreEmpleado`, `paternoEmpleado`, `maternoEmpleado`, `cargo`, `emailEmpleado`, `passwordEmpleado`, `estadoEmpleado`) VALUES
(1, 'Helen', 'Perez', 'Condori', 'administrativo', 'helenpc@gmail.com', '123456', 'activo'),
(2, 'Miguel Angel', 'Chacon', 'Abalos', 'administrativo', 'miguelaca@gmail.com', '456789', 'activo'),
(3, 'Cristhian', 'Coarite', 'Mamani', 'administrativo', 'cristhiancm@gmail.com', '789123', 'activo'),
(4, 'Jael Rodrigo', 'Yujra ', 'Mamani', 'administrativo', 'jaelrym@gmail.com', '987654', 'activo'),
(5, 'Maria', 'Soliz', 'Torrez', 'empleado', 'maria@gmail.com', '$2y$10$XP8xCLz4CKhVsLog1pB3suCJXPH9CzrXoUd7VW', 'activo'),
(6, 'Luiz', 'Poria', 'Brito', 'Empleado', 'luizbrito@gmail.com', '$2y$10$KULE4qazjKGIhb/uGfAVueweF71gQJZpvp1tee', 'inactivo'),
(7, 'Juan', 'Torrez', 'Marquez', 'Empleado', 'juantorrez@gmail.com', '$2y$10$7oI3ruelNs8dDto1TFkOL.3nxuLKxVvVcBM2bf', 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumentos`
--

CREATE TABLE `instrumentos` (
  `idInstrumentos` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `nombreInstrumento` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `proveedor_idProveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instrumentos`
--

INSERT INTO `instrumentos` (`idInstrumentos`, `imagen`, `nombreInstrumento`, `marca`, `precio`, `stock`, `idCategoria`, `proveedor_idProveedor`) VALUES
(1, 'tbach.jpg', 'saxofon alto', 'Yamaha', 5200, 20, 1, 2),
(2, 'pkorg.jpg', 'teclado', 'casio', 700, 15, 2, 1),
(3, 'fender.jpg', 'guitarra', 'artesanal', 500, 40, 2, 2),
(5, '', 'clarinete', 'scorpion', 1500, 5, 2, 2),
(6, '', 'bateria', 'Tama', 17000, 2, 3, 3),
(7, '', 'clarinete bajo', 'Yamaha', 12000, 5, 2, 3),
(8, '', 'violin', 'OrquestQueen', 4000, 30, 1, 3),
(9, '', 'saxofon tenor', 'Jupiter', 4500, 20, 2, 4),
(10, 'instrumento1.PNG', 'Tarka', 'Solcito', 20, 10, 1, 4),
(11, 'instrumen.PNG', 'Tambor', 'Soles', 25, 0, 1, 4),
(25, 'fender.jpg', 'Guitarra', 'Solcito', 100, 0, 1, 1),
(26, 'hartwood.jpg', 'Guitarra', 'Marias', 200, 0, 1, 1),
(27, 'hartwood.jpg', 'Guitarra', 'Marias', 200, 0, 1, 1),
(28, 'yamaha.jpg', 'Guitarra Acústica', 'Yamaha', 150, 0, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveerdores`
--

CREATE TABLE `proveerdores` (
  `idProveedor` int(11) NOT NULL,
  `nombreProveedor` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `calidad` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveerdores`
--

INSERT INTO `proveerdores` (`idProveedor`, `nombreProveedor`, `direccion`, `calidad`, `telefono`) VALUES
(1, 'jeanCarloStore', 'viacha', 'buena', 77561225),
(2, 'ViaStoremusic', 'tambo quemado', 'buena', 69652887),
(3, 'tobiMusic', 'rio seco', 'medio', 67788552),
(4, 'fearStore', 'villa Dolores calle 3', 'mala', 75542962);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioTotal` double NOT NULL,
  `fecha` date NOT NULL,
  `empleado_idEmpleado` int(11) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  `instrumento_idInstrumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `cantidad`, `precioTotal`, `fecha`, `empleado_idEmpleado`, `cliente_idCliente`, `instrumento_idInstrumento`) VALUES
(1, 5, 3500, '2024-10-09', 3, 1, 2),
(2, 10, 5000, '2024-09-28', 1, 5, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`idInstrumentos`),
  ADD KEY `proveedor_idProveedor` (`proveedor_idProveedor`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `proveerdores`
--
ALTER TABLE `proveerdores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `cliente_idCliente` (`cliente_idCliente`),
  ADD KEY `empleado_idEmpleado` (`empleado_idEmpleado`),
  ADD KEY `instrumento_idInstrumento` (`instrumento_idInstrumento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  MODIFY `idInstrumentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `proveerdores`
--
ALTER TABLE `proveerdores`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD CONSTRAINT `instrumentos_ibfk_1` FOREIGN KEY (`proveedor_idProveedor`) REFERENCES `proveerdores` (`idProveedor`),
  ADD CONSTRAINT `instrumentos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_idCliente`) REFERENCES `clientes` (`idCliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`empleado_idEmpleado`) REFERENCES `empleados` (`idEmpleado`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`instrumento_idInstrumento`) REFERENCES `instrumentos` (`idInstrumentos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
