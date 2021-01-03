-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.17-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_ventas
CREATE DATABASE IF NOT EXISTS `bd_ventas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bd_ventas`;

-- Volcando estructura para tabla bd_ventas.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `IdCliente` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Dni` varchar(8) DEFAULT NULL,
  `Nombres` varchar(244) DEFAULT NULL,
  `Direccion` varchar(244) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`IdCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_ventas.cliente: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT IGNORE INTO `cliente` (`IdCliente`, `Dni`, `Nombres`, `Direccion`, `Estado`) VALUES
	(17, '46464747', 'Juan Guerrero Solis', 'Los Alamos 123', '1'),
	(18, '45494949', 'Maria Rosas Villanueva', 'Los Laureles 234', '1'),
	(19, '07854322', 'Andres de Santa Cruz', 'Av. La Frontera 347', '1'),
	(22, '97643322', 'Arturo Bayona', 'Los Alisos 243', '1'),
	(23, '08712322', 'Lidia Vega', 'Los laureles 3567', '1'),
	(24, '44444444', 'Manuel Novoa', 'Los Cespedes 567', '1');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla bd_ventas.detalle_ventas
CREATE TABLE IF NOT EXISTS `detalle_ventas` (
  `IdDetalleVentas` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `IdVentas` int(11) unsigned NOT NULL,
  `IdProducto` int(11) unsigned NOT NULL,
  `Cantidad` int(11) unsigned DEFAULT NULL,
  `PrecioVenta` double DEFAULT NULL,
  PRIMARY KEY (`IdDetalleVentas`,`IdVentas`,`IdProducto`),
  KEY `Ventas_has_Producto_FKIndex1` (`IdVentas`),
  KEY `Ventas_has_Producto_FKIndex2` (`IdProducto`),
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`IdVentas`) REFERENCES `ventas` (`IdVentas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `producto` (`IdProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_ventas.detalle_ventas: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_ventas` DISABLE KEYS */;
INSERT IGNORE INTO `detalle_ventas` (`IdDetalleVentas`, `IdVentas`, `IdProducto`, `Cantidad`, `PrecioVenta`) VALUES
	(155, 105, 9, 1, 245),
	(156, 105, 9, 2, 245),
	(157, 105, 10, 3, 456),
	(158, 108, 10, 2, 456),
	(159, 109, 10, 2, 456),
	(160, 109, 9, 2, 245),
	(161, 110, 1, 1, 300),
	(162, 111, 9, 2, 245),
	(163, 112, 3, 2, 1550),
	(164, 113, 9, 2, 245),
	(165, 113, 10, 1, 456),
	(166, 114, 9, 1, 245),
	(167, 115, 3, 1, 1550),
	(168, 116, 1, 2, 300),
	(169, 116, 10, 2, 456),
	(170, 117, 10, 4, 456),
	(171, 117, 3, 3, 1550),
	(172, 118, 9, 1, 245),
	(173, 119, 9, 1, 245),
	(174, 120, 3, 4, 1550),
	(175, 120, 9, 4, 245),
	(176, 121, 9, 4, 245),
	(177, 122, 9, 1, 245),
	(178, 122, 3, 3, 1550),
	(179, 123, 9, 1, 245),
	(180, 124, 9, 1, 245),
	(181, 125, 9, 1, 245),
	(182, 125, 3, 1, 1550),
	(183, 126, 9, 1, 245),
	(184, 126, 3, 1, 1550),
	(185, 126, 9, 1, 245),
	(186, 127, 9, 1, 245),
	(187, 127, 3, 1, 1550),
	(188, 127, 9, 1, 245),
	(189, 127, 3, 1, 1550),
	(190, 128, 9, 1, 245),
	(191, 128, 3, 1, 1550),
	(192, 128, 9, 1, 245),
	(193, 128, 3, 1, 1550),
	(194, 128, 10, 1, 456),
	(195, 129, 9, 1, 245),
	(196, 129, 3, 1, 1550),
	(197, 129, 9, 1, 245),
	(198, 129, 3, 1, 1550),
	(199, 129, 10, 1, 456),
	(200, 129, 9, 1, 245),
	(201, 130, 9, 1, 245),
	(202, 130, 3, 1, 1550),
	(203, 130, 9, 1, 245),
	(204, 130, 3, 1, 1550),
	(205, 130, 10, 1, 456),
	(206, 130, 9, 1, 245),
	(207, 130, 9, 1, 245),
	(208, 131, 9, 1, 245),
	(209, 131, 10, 1, 456),
	(210, 131, 3, 1, 1550),
	(211, 132, 9, 1, 245),
	(212, 133, 9, 1, 245),
	(213, 133, 10, 1, 456),
	(214, 133, 3, 1, 1550),
	(215, 134, 9, 1, 245),
	(216, 135, 9, 1, 245),
	(217, 136, 9, 1, 245),
	(218, 137, 9, 4, 245),
	(219, 137, 10, 4, 456),
	(220, 137, 3, 2, 1550),
	(221, 138, 9, 1, 245),
	(222, 138, 3, 2, 1550),
	(223, 138, 3, 1, 1550),
	(224, 139, 9, 1, 245),
	(225, 139, 3, 1, 1550),
	(226, 140, 9, 1, 245),
	(227, 140, 3, 1, 1550),
	(228, 140, 10, 1, 456);
/*!40000 ALTER TABLE `detalle_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla bd_ventas.empleado
CREATE TABLE IF NOT EXISTS `empleado` (
  `IdEmpleado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Dni` varchar(8) NOT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `User` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_ventas.empleado: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT IGNORE INTO `empleado` (`IdEmpleado`, `Dni`, `Nombres`, `Telefono`, `Estado`, `User`) VALUES
	(8, '44444444', 'Jonatan Alvarez', '988252459', '1', 'jaf01'),
	(9, '45767878', 'Juan Fuentes', '999999965', '1', 'jfe01'),
	(10, '45432222', 'Lizbeth Hilario', '976897452', '1', 'liz01'),
	(11, '42145633', 'Maria Alvarez', '900999099', '1', 'mal01');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;

-- Volcando estructura para tabla bd_ventas.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `IdProducto` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(244) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) unsigned DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_ventas.producto: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT IGNORE INTO `producto` (`IdProducto`, `Nombres`, `Precio`, `Stock`, `Estado`) VALUES
	(1, 'Teclado Logitech', 300, 68, '1'),
	(3, 'Laptop Lenovo Ideapad 520', 1550, 24, '1'),
	(9, 'Mouse Razer', 245, 61, '1'),
	(10, 'Teclado Razer Chroma V2', 456, 15, '1');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla bd_ventas.ventas
CREATE TABLE IF NOT EXISTS `ventas` (
  `IdVentas` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `IdCliente` int(11) unsigned NOT NULL,
  `IdEmpleado` int(10) unsigned NOT NULL,
  `NumeroSerie` varchar(244) DEFAULT NULL,
  `FechaVentas` date DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`IdVentas`),
  KEY `Ventas_FKIndex1` (`IdEmpleado`),
  KEY `Ventas_FKIndex2` (`IdCliente`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleado` (`IdEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_ventas.ventas: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT IGNORE INTO `ventas` (`IdVentas`, `IdCliente`, `IdEmpleado`, `NumeroSerie`, `FechaVentas`, `Monto`, `Estado`) VALUES
	(105, 17, 8, '000000002', '0000-00-00', 245, '1'),
	(108, 17, 8, '000000002', '2021-01-02', 456, '1'),
	(109, 17, 8, '000000002', '2021-01-02', 245, '1'),
	(110, 17, 8, '000000002', '2021-01-02', 300, '1'),
	(111, 17, 8, '000000002', '2021-01-02', 245, '1'),
	(112, 17, 8, '000000002', '2021-01-02', 1550, '1'),
	(113, 17, 8, '000000002', '2021-01-02', 456, '1'),
	(114, 17, 8, '000000002', '2021-01-02', 245, '1'),
	(115, 17, 8, '000000002', '2021-01-02', 1550, '1'),
	(116, 17, 8, NULL, '2021-01-02', 1512, '1'),
	(117, 17, 8, '000000003', '2021-01-02', 6474, '1'),
	(118, 17, 8, '000000004', '2021-01-02', 245, '1'),
	(119, 17, 8, '000000005', '2021-01-02', 245, '1'),
	(120, 17, 8, '000000006', '2021-01-02', 7180, '1'),
	(121, 17, 8, '000000007', '2021-01-02', 980, '1'),
	(122, 24, 8, '000000008', '2021-01-02', 4895, '1'),
	(123, 24, 8, '000000009', '2021-01-02', 245, '1'),
	(124, 24, 8, '0000000010', '2021-01-02', 245, '1'),
	(125, 24, 8, '0000000010', '2021-01-02', 1795, '1'),
	(126, 24, 8, '0000000010', '2021-01-02', 2040, '1'),
	(127, 24, 8, '0000000010', '2021-01-02', 3590, '1'),
	(128, 24, 8, '0000000010', '2021-01-02', 4046, '1'),
	(129, 24, 8, '0000000010', '2021-01-02', 4291, '1'),
	(130, 24, 8, '0000000010', '2021-01-02', 4536, '1'),
	(131, 24, 8, '0000000010', '2021-01-02', 2251, '1'),
	(132, 24, 8, '0000000010', '2021-01-02', 245, '1'),
	(133, 24, 8, '0000000010', '2021-01-02', 2251, '1'),
	(134, 24, 8, '0000000010', '2021-01-02', 245, '1'),
	(135, 24, 8, '0000000010', '2021-01-02', 245, '1'),
	(136, 24, 8, '0000000010', '2021-01-02', 245, '1'),
	(137, 24, 8, '0000000010', '2021-01-02', 5904, '1'),
	(138, 24, 8, '0000000010', '2021-01-02', 4895, '1'),
	(139, 24, 8, '0000000010', '2021-01-02', 1795, '1'),
	(140, 24, 8, '0000000010', '2021-01-02', 2251, '1');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
