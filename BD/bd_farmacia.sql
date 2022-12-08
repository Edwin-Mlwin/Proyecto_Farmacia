-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2022 a las 22:18:42
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id_caracteristica` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id_caracteristica`, `tipo`) VALUES
(1, 'tabletas'),
(2, 'jarabes'),
(3, 'sobres'),
(4, 'jernigas'),
(5, 'dulces');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compras` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id_compras`, `descripcion`, `fecha`, `cantidad`, `precio`, `total`, `id_usuario`) VALUES
(1, 'Tapsin', '2022-12-01', 25, 7, 175, 1),
(2, 'Paracetamol', '2022-12-01', 10, 4, 40, 1),
(3, 'Refrianex', '2022-12-01', 20, 5, 100, 2),
(4, ' FLUIMUCIL COMPLEX ', '2022-12-04', 20, 3, 60, 2),
(5, 'PECTORAL COMPUESTO JARABE 120 ML', '2022-12-04', 50, 39, 1900, 4),
(6, 'SANATUSIN ANTITUSIVO ADULTO D/N X 100 ML', '2022-12-04', 30, 51, 1537, 4),
(7, 'TRAMACETAMOL X 30 COMPR.', '2022-12-04', 15, 4, 55.5, 2),
(8, 'ACTIFEM 750 MG X 100 CAPSULAS', '2022-12-04', 30, 3, 78, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleados` int(11) NOT NULL,
  `ci` varchar(9) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `numero` varchar(8) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleados`, `ci`, `nombre`, `apellidos`, `direccion`, `numero`, `telefono`, `id_usuario`) VALUES
(1, '5987964', 'Maria Elena', 'Castro Barrientos', 'Av. Sajama El alto', '1425', 78454942, 1),
(2, '123456789', 'Edwin', 'Poma Quispe', 'Av. Pedro D. Murrillo', '1045', 69917963, 2),
(3, '6887487', 'Melania', 'Huanca', 'Av. litoral calle 4 y 5', '1024', 6874578, 3),
(4, '2004785', 'Andres', 'Huanca', 'zona el Carmen calle murillo', '2451', 69874788, 5),
(5, '1987454', 'Karen', 'Ezpinal', 'ex tranca calle 4 av. siles', '1145', 74877457, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marcas` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marcas`, `nombre`) VALUES
(1, 'tapsin a 7 bs unidad'),
(2, 'Paracetamol a 4 bs unidadad'),
(3, 'Refrianex 5 bs la unidad'),
(4, 'Complex 3 bs unidad'),
(5, 'FLUIMUCIL COMPLEX 3 bs la unidad'),
(6, 'TRAMACETAMOL X 30 COMPR. 4 bs unidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_marcas` int(11) NOT NULL,
  `id_caracteristica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `stock`, `id_tipo`, `id_marcas`, `id_caracteristica`) VALUES
(1, 'Paracetamol', 12, 1, 2, 1),
(2, 'refrianex', 15, 6, 3, 1),
(3, 'antigripal', 1, 6, 3, 1),
(4, 'Tapsin', 20, 5, 1, 3),
(5, 'Refrianex', 10, 6, 3, 1),
(6, 'Aspirinetas Acido Acetilsalicilico 100Mg X Ta', 10, 6, 5, 1),
(7, 'Dolorsan Unguento X 15Gr', 5, 8, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_tallas`
--

CREATE TABLE `producto_tallas` (
  `id_producto_talla` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_talla` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto_tallas`
--

INSERT INTO `producto_tallas` (`id_producto_talla`, `id_producto`, `id_talla`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 4, 2),
(4, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedores` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `observaciones` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedores`, `nombre`, `direccion`, `ciudad`, `telefono`, `correo`, `observaciones`) VALUES
(1, 'ESKE S.R.L.', ' c. Sucre Nro.1465 (Central) - La Paz, LA PAZ', 'La Paz', '2458715', 'eskebol@gmail.com', 'Las entregas son directamente con el encargado'),
(2, 'LABORATORIO REX', ' Av. 14 de Septiembre Nro. 5652 (Obrajes) - La Paz, LA PAZ', 'La paz', '2487587', 'rexlabBo@gmail.com', ''),
(3, 'DROGUERIA INTI S.A.', 'c.Lucas Jaimes Nro. 1959 - La Paz, LA PAZ', 'La Paz', '2465968', 'intidroguesabol@gmail.com', ''),
(4, 'BOLIVIANA MERCANTIL S.R.L', 'c. GozÃ¡lvez Nro. 240 Piso1, esq. 6 de Agosto (San Jorge) - La Paz', 'La Paz', '2487587', 'mercantilbolivia@gmail.com', 'distribuidora de analgesicos'),
(5, 'ENGELS MERKEL & CIA. (BOLIVIA) S.A.', ' c. Rosendo Gutiérrez Nro. 659 - La Paz, LA PAZ', 'La paz', '2245784', 'engelsciabol@hotmail.com', 'ninguna'),
(6, 'QUIMIZA LTDA.', ' c. Capitán Ravelo Nro. 2111 (Sopocachi) - La Paz, LA PAZ', 'La paz', '2457841', 'quimizaboliviapluri@hotmail.com', 'NINGUNA'),
(7, 'SCHERING BOLIVIANA LTDA.', 'c. 6 Nro.125, esq. Av. Hector Ormachea (Obrajes) - La Paz, LA PAZ', 'La paz', '2784982', 'scheringltda@gmail.com', 'NINGUNA'),
(8, 'A3TEK S.R.L.', 'FIDEL OLIVA NO. 117', 'Santa Cruz', '2452254', 'srla3tek@hotmail.com', 'IMPORTADORA DE MEDICAMENTOS'),
(9, 'ABOL LTDA', 'CALLE MADRID ENTRE COLON Y AMERICA Nº 391', 'Oruro', '2459878', 'abolboliviaLTDA@gmail.com', 'IMPORTADORA DE MEDICAMENTOS REC. POR LEY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tallas`
--

CREATE TABLE `tallas` (
  `id_talla` int(11) NOT NULL,
  `medida` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tallas`
--

INSERT INTO `tallas` (`id_talla`, `medida`) VALUES
(1, 'precio alto'),
(2, 'precio bajo'),
(3, 'precio medio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL COMMENT 'tipo de alimentos como frutas, viveres, etc',
  `detalle` varchar(100) DEFAULT NULL,
  `id_proveedores` int(11) NOT NULL,
  `id_compras` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id_tipo`, `nombre`, `detalle`, `id_proveedores`, `id_compras`) VALUES
(1, 'Paracetamol', 'el producto vino con fecha caduca', 1, 4),
(2, 'Paracetamol', 'el precio esta muy alto', 2, 2),
(5, 'Tapsin', 'exagerada cantidad de producto', 1, 1),
(6, 'Refrianex', 'esta cerca la fecha de vencimiento y se tiene  se sobra ', 2, 3),
(7, 'SCHERING BOLIVIANA LTDA.', 'cierre de farmacia', 3, 2),
(8, 'ACTIFEM 750 MG X 100 CAPSULAS', 'caducidad de fecha de vencimiento', 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `password`) VALUES
(1, 'Maria', '8cb2237d0679ca88db6464eac60da96345513964'),
(2, 'Edwin', '8cb2237d0679ca88db6464eac60da96345513964'),
(3, 'Roger', '8cb2237d0679ca88db6464eac60da96345513964'),
(4, 'Melania', '8cb2237d0679ca88db6464eac60da96345513964'),
(5, 'Erick', '8cb2237d0679ca88db6464eac60da96345513964'),
(6, 'Elena', '8cb2237d0679ca88db6464eac60da96345513964');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `cliente`, `descripcion`, `fecha`, `id_usuario`) VALUES
(1, 'Laura', 'pastillas para el resfrio de 500 mg', '2022-11-15', 1),
(2, 'Pedro', 'Refrianex 250 mg', '2022-11-20', 1),
(5, 'Rene', '1 tapsin', '2022-11-20', 2),
(6, 'gonzales', 'antigripal LCH', '2022-11-20', 2),
(7, 'Yessica', 'ACTIFEM 750 MG X 100 CAPSULAS', '2022-12-05', 4),
(8, 'Marien', 'TONICO INTI JARABE 500 ML.', '2022-12-05', 2),
(9, 'Karen Fabiola Cruz', 'ASPIRINAS', '2022-12-05', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_productos`
--

CREATE TABLE `venta_productos` (
  `id_venta_producto` int(11) NOT NULL,
  `id_ventas` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta_productos`
--

INSERT INTO `venta_productos` (`id_venta_producto`, `id_ventas`, `id_producto`, `cantidad`, `descuento`, `precio`, `total`) VALUES
(1, 1, 1, 12, 0.3, 26.3, 201.6),
(2, 1, 2, 2, 0.1, 24.6, 125.3),
(5, 1, 1, 20, 0, 10, 200),
(6, 2, 2, 5, 0, 19.5, 97.5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`id_caracteristica`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compras`,`id_usuario`),
  ADD KEY `fk_compras_Usuario1_idx` (`id_usuario`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleados`,`id_usuario`),
  ADD KEY `fk_Empleados_usuario1_idx` (`id_usuario`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marcas`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`,`id_tipo`,`id_marcas`,`id_caracteristica`),
  ADD KEY `fk_productos_tipo1_idx` (`id_tipo`),
  ADD KEY `fk_productos_marcas1_idx` (`id_marcas`),
  ADD KEY `fk_productos_caracteristica1_idx` (`id_caracteristica`);

--
-- Indices de la tabla `producto_tallas`
--
ALTER TABLE `producto_tallas`
  ADD PRIMARY KEY (`id_producto_talla`,`id_producto`,`id_talla`),
  ADD KEY `fk_producto_talla_productos1_idx` (`id_producto`),
  ADD KEY `fk_producto_talla_talla1_idx` (`id_talla`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedores`);

--
-- Indices de la tabla `tallas`
--
ALTER TABLE `tallas`
  ADD PRIMARY KEY (`id_talla`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id_tipo`,`id_proveedores`,`id_compras`),
  ADD KEY `fk_tipo_proveedores1_idx` (`id_proveedores`),
  ADD KEY `fk_tipo_compras1_idx` (`id_compras`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`,`id_usuario`),
  ADD KEY `fk_ventas_Usuario1_idx` (`id_usuario`);

--
-- Indices de la tabla `venta_productos`
--
ALTER TABLE `venta_productos`
  ADD PRIMARY KEY (`id_venta_producto`,`id_ventas`,`id_producto`),
  ADD KEY `fk_venta_producto_ventas1_idx` (`id_ventas`),
  ADD KEY `fk_venta_producto_productos1_idx` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tallas`
--
ALTER TABLE `tallas`
  MODIFY `id_talla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `venta_productos`
--
ALTER TABLE `venta_productos`
  MODIFY `id_venta_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compras_Usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fk_Empleados_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_producto_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipos` (`id_tipo`),
  ADD CONSTRAINT `fk_productos_marcas1` FOREIGN KEY (`id_marcas`) REFERENCES `marcas` (`id_marcas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_productos_tipo1` FOREIGN KEY (`id_tipo`) REFERENCES `tipos` (`id_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_tallas`
--
ALTER TABLE `producto_tallas`
  ADD CONSTRAINT `fk_producto_talla_productos1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_talla_talla1` FOREIGN KEY (`id_talla`) REFERENCES `tallas` (`id_talla`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD CONSTRAINT `fk_tipo_compras1` FOREIGN KEY (`id_compras`) REFERENCES `compras` (`id_compras`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_proveedores1` FOREIGN KEY (`id_proveedores`) REFERENCES `proveedores` (`id_proveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_Usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta_productos`
--
ALTER TABLE `venta_productos`
  ADD CONSTRAINT `fk_venta_producto_productos1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_producto_ventas1` FOREIGN KEY (`id_ventas`) REFERENCES `ventas` (`id_ventas`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
