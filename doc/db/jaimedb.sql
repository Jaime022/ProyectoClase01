-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaimedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `abogado`
--

CREATE TABLE `abogado` (
  `id_abogado` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `apellidos` varchar(10) NOT NULL,
  `id_especialidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acceso_usuario`
--

CREATE TABLE `acceso_usuario` (
  `id_clinte` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `casos`
--

CREATE TABLE `casos` (
  `id_caso` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_visita` int(11) NOT NULL,
  `id_tipo_caso` int(11) NOT NULL,
  `descripcion_caso` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `casos`
--

INSERT INTO `casos` (`id_caso`, `id_cliente`, `id_visita`, `id_tipo_caso`, `descripcion_caso`) VALUES
(1, 1, 1, 1, '         Discucion de posibles recompensas por daños.'),
(2, 2, 2, 2, 'Discución sobre estrategia de demanda a la tienda.'),
(3, 3, 3, 1, 'La Sra. Ortega llega a la oficina para consultar sobre la distribución de herencia por su padre.'),
(4, 4, 4, 2, 'Llega la Sra. Mandola para discutir un choque ocurrido el 7 de junio del 2021.'),
(5, 5, 5, 1, 'El Sr. Rivera viene a la oficina a consultar estrategias para llevar a cabo su divorcio.'),
(6, 6, 6, 1, 'El Sr. Sotomayor viene a la oficina para discutir una extensión de los dias en que puede ver sus hijos.'),
(7, 7, 7, 2, 'El Sr. Vufobunxo visita para discutir una posible demanda contra un compañero de trabajo por agresión física.'),
(8, 8, 8, 1, 'La Sra. Figueroa llega a la oficina para examinar documentos para un posible divorcio.'),
(9, 9, 9, 1, 'El Sr. Molina llega a la oficina para discutir una disputa sobre una división de herencia y posibles soluciones.'),
(10, 10, 10, 2, 'La Sra. del Valle se reune para solicitar una contrademanda con uno de sus clientes.'),
(11, 11, 11, 1, 'El Sr. Marmol visita para discutir la repartición de bienes como parte de su divorcio.'),
(12, 12, 12, 2, 'El Sr. Ruiz desea contrademandar al individuo quien lo ha demandado injustamente.'),
(13, 13, 13, 2, 'El Sr. Augusto visita buscando defensa contra demanda radicada por cliente.'),
(14, 14, 14, 1, 'El Sr. Gomez llega hoy para discutir posibles soluciones para la distribución de herencia.'),
(15, 15, 15, 2, 'La Srta. Guzman busca defensa contra demanda hecha por cliente en la clinica donde trabaja.'),
(16, 16, 16, 1, 'El Sr. Serrano busca representación legal para divorcio.'),
(17, 17, 17, 1, 'El Sr. Rivera busca asesoria hacerca la distribucion de bienes luego de divorcio.'),
(18, 18, 18, 2, 'La Sra. Padilla busca defensa legal contra demanda de cliente.'),
(19, 19, 19, 1, 'El Sr. Robles busca representacion legal para divorcio.'),
(20, 20, 20, 2, 'El Dr. Goriño busca defensa legal para demanda por cliente.'),
(21, 21, 21, 2, 'El Sr. Torres busca defensa legal contra demanda radicada por cliente.'),
(22, 22, 22, 1, 'El Sr. Tolini busca asesoria sobre testamentos.'),
(23, 23, 23, 1, 'La Sra. Rivera busca representacion legal para resolver disputa sobre herencia.'),
(24, 24, 24, 1, 'El Sr. Perruso busca defensa legal contra demanda radicada por cliente.'),
(25, 25, 25, 1, 'La Sra. Acevedo asesoria legal para posible divorcio.'),
(26, 26, 26, 2, 'La Sra. Morera busca representacion legal para radicar demanda por acoso.'),
(27, 27, 27, 2, 'El Sr. Pedrosa busca asesoria legal sobre altercado en tienda.'),
(28, 28, 28, 1, 'El Sr. Lopez busca representacion y asesoria legal sobre posible divorcio.'),
(29, 29, 29, 2, 'El Sr. Perez busca asesoria y defensa legal contra demanda radicada por civil.'),
(30, 30, 30, 1, 'La Sra. Garcia busca asesoria legal para posible divorcio.'),
(31, 31, 31, 2, 'La Srta. Dominguez busca asesoria para posible demanda a compañia.'),
(32, 32, 32, 1, 'El Sr. Molina busca representacion legal para divorcio.'),
(33, 33, 33, 1, 'La Sra. Sanchez busca asesoria para divorcio.'),
(34, 34, 34, 2, 'El Sr. Fernandez viene a discutir una multa.'),
(35, 35, 35, 2, 'El Sr. Ortiz viene a discutir defensa legal para posible radicacion de cargos.'),
(36, 36, 36, 2, 'El Sr. Diaz busca asesoria para defensa legal contra radicacion de cargos.'),
(37, 37, 37, 1, 'La Sra. Cruz busca asesoria legal para divorcio.'),
(38, 38, 38, 1, 'El Sr. Burgos busca asesoria legal para divorcio.'),
(39, 39, 39, 2, 'La Sra. Colon busca defensa legal contra demanda de cliente.'),
(40, 40, 40, 1, 'El Sr. Castillo busca asesoria legal sobre distribucion de herencia.');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `inicial` char(1) DEFAULT NULL,
  `apodo` varchar(20) DEFAULT NULL,
  `direccion_postal` varchar(255) NOT NULL,
  `codigo_area` varchar(10) NOT NULL,
  `direccion_fisica` varchar(255) NOT NULL,
  `pueblo` varchar(20) NOT NULL,
  `fecha_de_naciminto` date NOT NULL,
  `genero` varchar(10) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(10) NOT NULL,
  `ocupacion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellidos`, `inicial`, `apodo`, `direccion_postal`, `codigo_area`, `direccion_fisica`, `pueblo`, `fecha_de_naciminto`, `genero`, `email`, `telefono`, `ocupacion`) VALUES
(1, 'Pepe', 'Peposo', 'P', 'Pepito', '            uiebnafluhaefihoiaerfn', '00754', '            wiuabfiuhadsiufhiruhihiasudhf', 'San Juan', '2021-08-23', 'Masculino', 'jfepe@mail.com', '7877871234', 'Constructor'),
(2, 'Javier', 'Augusto', 'P', 'Junito', 'Urb. Cascadas del Sol', '00754', 'Urb. Cascadas del Sol', 'Caguas', '2021-08-12', 'Masculino', 'junijuni@mail.com', '7879394321', 'Abogado'),
(3, 'Diana', 'Ortega', 'E', '', 'Calle Palonso 20', '00925', 'Calle Palonso 20', 'Utuado', '1970-02-13', 'Femenino', 'didi45@mail.com', '7879651248', 'Estilista'),
(4, 'Yarelis', 'Mandola', 'M', '', 'Urb. Casas del Paraiso', '00335', 'Urb. Casas del Paraiso', 'Humacao', '1991-11-17', 'Femenino', 'sparky000@mail.com', '9398588585', 'n/a'),
(5, 'Juan', 'Rivera', 'L', '', 'Urb. Playa Esmeralda', '00822', 'Urb. Playa Esmeralda', 'Guaynabo', '1987-03-02', 'Masculino', 'edgeone8@mail.com', '7879638520', 'Empresario'),
(6, 'Ricardo', 'Sotomayor', 'R', 'Pollito', 'Calle Lorenzo R5', '00994', 'Calle Lorenzo R5', 'San Juan', '1983-09-29', 'Masculino', 'electric0do@mail.com', '7878888888', 'Electricista'),
(7, 'Rodriguez', 'Vufobunxo', 'O', 'Chiquito', 'Urb. Brisafria', '00898', 'Urb. Brisafria', 'Bayamon', '1990-04-08', 'Masculino', 'el_grande@mail.com', '9396666666', 'Chef'),
(8, 'Emily', 'Figueroa', 'M', '', 'Calle Jardines 9', '00943', 'Calle Jardines 9', 'Naguabo', '1986-12-12', 'Femenino', 'emilyfig55@mail.com', '9396588110', 'Secretaria'),
(9, 'Jose', 'Molina', 'A', '', 'Urb. Cielolindo', '00575', 'Urb. Cielolindo', 'Fajardo', '1985-03-21', 'Masculino', 'joselito32@mail.com', '9396547899', 'Servicio al cliente'),
(10, 'Maria', 'del Valle', 'A', '', 'Urb. Paloseco', '00999', 'Urb. Paloseco', 'Dorado', '1977-02-25', 'Femenino', 'amarilloama885@mail.com', '7870016336', 'Veterinaria'),
(11, 'Pablo', 'Marmol', 'J', '', 'Calle Loiza 11', '00942', 'Calle Loiza 11', 'San Juan', '1993-10-13', 'Masculino', 'pablito87@mail.com', '7871212321', 'Entrenador Personal'),
(12, 'Pedro', 'Ruiz', 'Q', '', 'Urb. Miel de Abeja', '00902', 'Urb. Miel de Abeja', 'Bayamon', '1988-05-19', 'Masculino', 'hierromol_12@mail.com', '7877894561', 'Constructor'),
(13, 'Carlos', 'Augusto', 'T', '', 'Urb. Bellas Fuentes', '00782', 'Urb. Bellas Fuentes', 'Ponce', '1989-12-02', 'Masculino', 'carlitoscaribbean21@mail.com', '7874056878', 'Gerente'),
(14, 'Jose', 'Gomez', 'W', '', 'Urb. Jacinto Rivera', '00835', 'Urb. Jacinto Rivera', 'Aguada', '1974-08-02', 'Masculino', 'jgomez74@mail.com', '7876810020', 'Contable'),
(15, 'Alondra', 'Guzman', 'K', '', 'Urb. Robles de Azucar', '00654', 'Urb. Robles de Azucar', 'San German', '1992-10-04', 'Femenino', 'rte23@mail.com', '7878782147', 'Secretaria'),
(16, 'Luis', 'Serrano', 'N', '', 'Urb. Lago Azul', '00745', 'Urb. Lago Azul', 'Maricao', '1982-01-18', 'Masculino', 'cafeserr2@mail.com', '7874122140', 'Empresario'),
(17, 'Michael', 'Rivera', 'P', '', 'Calle Jorge Lopez', '00694', 'Calle Jorge Lopez', 'Caguas', '1980-02-14', 'Masculino', 'jorgito53@mail.com', '7870122148', 'Periodista'),
(18, 'Lucy', 'Padilla', 'W', '', 'Urb. Piedra Blanca', '00522', 'Urb. Piedra Blanca', 'Mayaguez', '1971-05-11', 'Femenino', 'padicakes71@mail.com', '7871593573', 'Repostera'),
(19, 'Roger', 'Robles', 'R', '', 'Urb. Palmas Verdes', '00967', 'Urb. Palmas Verdes', 'Bayamon', '1986-07-10', 'Masculino', 'rogrob86@mail.com', '7874563214', 'Ingeniero'),
(20, 'Julian', 'Goriño', 'L', '', 'Urb. Ruta de Oro', '00903', 'Urb. Ruta de Oro', 'San Juan', '1981-05-27', 'Masculino', 'dr81gori@mail.com', '7876213077', 'Doctor'),
(21, 'Alberto', 'Torres', 'O', '', 'Urb. Puertas Al Cielo', '00727', 'Urb. Puertas Al Cielo', 'Toa Alta', '1988-06-09', 'Masculino', 'towers88@mail.com', '7870136547', 'Plomero'),
(22, 'Romulo', 'Tolini', '', '', 'Calle Polo', '00923', 'Calle Polo', 'Toa Baja', '1935-12-13', 'Masculino', '', '7872225555', 'Retirado'),
(23, 'Paola', 'Rivera', 'L', '', 'Urb. Viento Cristal', '00964', 'Urb. Viento Cristal', 'Bayamon', '1988-07-29', 'Femenino', '', '9395481165', 'n/a'),
(24, 'Sebastian', 'Perruso', 'E', '', 'Urb. Hormiga Brava', '00741', 'Urb. Hormiga Brava', 'Cabo Rojo', '1990-11-23', 'Masculino', 'perrusodesign7@mail.com', '7876406468', 'Arquitecto'),
(25, 'Karina', 'Acevedo', '', '', 'Urb. Rayo Rubio', '00882', 'Urb. Rayo Rubio', 'Vega Alta', '1984-10-10', 'Femenino', 'ajsdfioue@mail.com', '7870601121', 'Mesera'),
(26, 'Cristal', 'Morera', 'M', '', 'Urb. Perla del Norte', '00945', 'Urb. Perla del Norte', 'San Juan', '1987-07-10', 'Femenino', '', '7870465683', 'Estilista'),
(27, 'Peter', 'Pedrosa', '', '', 'Urb. Viñar Radiante', '00719', 'Urb. Viñar Radiante', 'Fajardo', '1990-03-01', 'Masculino', 'carpinteriamobil00@mail.com', '7870960456', 'carpintero'),
(28, 'Jose', 'Lopez', 'I', '', 'Urb. Sol Saliente', '00698', 'Urb. Sol Saliente', 'San Juan', '1985-06-12', 'Masculino', 'nfeiwu@mail.com', '9391989841', 'Meteorologo'),
(29, 'Leonardo', 'Perez', 'R', '', 'Calle Indigena 44', '00265', 'Calle Indigena 44', 'Hormiguero', '1943-03-04', 'Masculino', '', '7870664999', 'Retirado'),
(30, 'Antonia', 'Garcia', '', '', 'Calle San Bernardo', '00256', 'Calle San Bernardo', 'Hormiguero', '1967-10-11', 'Femenino', '', '7871869105', 'Conserje'),
(31, 'Laura', 'Dominguez', 'I', '', 'Urb. Rio Veloz', '00125', 'Urb. Rio Veloz', 'Ponce', '1991-02-28', 'Femenino', 'lifestyle48@mail.com', '7870849655', 'Influencer'),
(32, 'Alejandro', 'Molina', 'B', '', 'Urb. Lomas Claras', '00889', 'Urb. Lomas Claras', 'Caguas', '1986-06-04', 'Masculino', 'amolina86@mail.com', '7870980565', 'Cirujano'),
(33, 'Gabriela', 'Sanchez', 'P', '', 'Calle Berrocal', '00798', 'Calle Berrocal', 'Arecibo', '1979-11-16', 'Femenino', 'aresanc97@mail.com', '9396111122', 'Servicio al cliente'),
(34, 'Humberto', 'Fernandez', 'P', '', 'Urb. Playa Limpia', '00836', 'Urb. Playa Limpia', 'Loiza', '1982-12-27', 'Masculino', 'comnwoin44@mail.com', '7872146842', 'Musico'),
(35, 'Juan', 'Ortiz', '', '', 'Urb. Guaguita', '00963', 'Urb. Guaguita', 'San Juan', '1993-03-04', 'Masculino', 'coffeejuan93@mail.com', '7878529874', 'Barista'),
(36, 'Calvin', 'Diaz', '', '', 'Urb. Vientos Marea', '00985', 'Urb. Vientos Marea', 'Bayamon', '1984-02-02', 'Masculino', 'maoiefj@mail.com', '7871231598', 'Programador'),
(37, 'Lisa', 'Cruz', '', '', 'Calle Chorlito', '00782', 'Calle Chorlito', 'Vega Baja', '1987-02-27', 'Femenino', 'lisspark@mail.com', '787', ''),
(38, 'Gomez', 'Burgos', 'G', '', 'Urb. Cristal Burrado', '00644', 'Urb. Cristal Burrado', 'San German', '1992-03-06', 'Masculino', 'neoiwj@mail.com', '7871651981', 'Contratista'),
(39, 'Mengana', 'Colon', 'M', '', 'Urb. Arbol de Ceda', '00519', 'Urb. Arbol de Ceda', 'Moca', '1988-07-07', 'Femenino', 'dniewendoi@mail.com', '7871659844', 'Secretaria'),
(40, 'Enrique', 'Castillo', '', 'E', 'Urb. Alto Polinosio', '00549', 'Urb. Alto Polinosio', 'Mayaguez', '1980-04-05', 'Masculino', 'bcedb454@mail.com', '7872163475', 'Panadero');

-- --------------------------------------------------------

--
-- Table structure for table `documento`
--

CREATE TABLE `documento` (
  `id_documento` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `directorio` varchar(20) NOT NULL,
  `id_caso` int(11) NOT NULL,
  `id_tipo_caso` int(11) NOT NULL,
  `subdirectorio_caso` varchar(255) DEFAULT NULL,
  `subdirectorio_tipocaso` varchar(255) DEFAULT NULL,
  `url_fichero` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documento`
--

INSERT INTO `documento` (`id_documento`, `id_cliente`, `directorio`, `id_caso`, `id_tipo_caso`, `subdirectorio_caso`, `subdirectorio_tipocaso`, `url_fichero`) VALUES
(1, 1, 'doc_cliente/1', 1, 1, 'doc_cliente/1/1', 'doc_cliente/1/1/Familia', 'doc_cliente/1/1/Familia/Essential Calculus Early Transcendental Functions by Ron Larson, Robert Hostetler, Bruce H. Edwards (z-lib.org).pdf'),
(2, 2, 'doc_cliente/2', 2, 2, 'doc_cliente/2/2', 'doc_cliente/2/2/Civil', 'doc_cliente/2/2/Civil/Essential Calculus Early Transcendental Functions by Ron Larson, Robert Hostetler, Bruce H. Edwards (z-lib.org).pdf'),
(3, 3, 'doc_cliente/3', 3, 1, 'doc_cliente/3/3', 'doc_cliente/3/3/Familia', 'doc_cliente/3/3/Familia/'),
(4, 4, 'doc_cliente/4', 4, 2, 'doc_cliente/4/4', 'doc_cliente/4/4/Civil', 'doc_cliente/4/4/Civil/'),
(5, 5, 'doc_cliente/5', 5, 1, 'doc_cliente/5/5', 'doc_cliente/5/5/Familia', 'doc_cliente/5/5/Familia/'),
(6, 6, 'doc_cliente/6', 6, 1, 'doc_cliente/6/6', 'doc_cliente/6/6/Familia', 'doc_cliente/6/6/Familia/'),
(7, 7, 'doc_cliente/7', 7, 2, 'doc_cliente/7/7', 'doc_cliente/7/7/Civil', 'doc_cliente/7/7/Civil/'),
(8, 8, 'doc_cliente/8', 8, 1, 'doc_cliente/8/8', 'doc_cliente/8/8/Familia', 'doc_cliente/8/8/Familia/'),
(9, 9, 'doc_cliente/9', 9, 1, 'doc_cliente/9/9', 'doc_cliente/9/9/Familia', 'doc_cliente/9/9/Familia/'),
(10, 10, 'doc_cliente/10', 10, 2, 'doc_cliente/10/10', 'doc_cliente/10/10/Civil', 'doc_cliente/10/10/Civil/'),
(11, 11, 'doc_cliente/11', 11, 1, 'doc_cliente/11/11', 'doc_cliente/11/11/Familia', 'doc_cliente/11/11/Familia/'),
(12, 12, 'doc_cliente/12', 12, 2, 'doc_cliente/12/12', 'doc_cliente/12/12/Civil', 'doc_cliente/12/12/Civil/'),
(13, 13, 'doc_cliente/13', 13, 2, 'doc_cliente/13/13', 'doc_cliente/13/13/Civil', 'doc_cliente/13/13/Civil/'),
(14, 14, 'doc_cliente/14', 14, 1, 'doc_cliente/14/14', 'doc_cliente/14/14/Familia', 'doc_cliente/14/14/Familia/'),
(15, 15, 'doc_cliente/15', 15, 2, 'doc_cliente/15/15', 'doc_cliente/15/15/Civil', 'doc_cliente/15/15/Civil/'),
(16, 16, 'doc_cliente/16', 16, 1, 'doc_cliente/16/16', 'doc_cliente/16/16/Familia', 'doc_cliente/16/16/Familia/'),
(17, 17, 'doc_cliente/17', 17, 1, 'doc_cliente/17/17', 'doc_cliente/17/17/Familia', 'doc_cliente/17/17/Familia/'),
(18, 18, 'doc_cliente/18', 18, 2, 'doc_cliente/18/18', 'doc_cliente/18/18/Civil', 'doc_cliente/18/18/Civil/'),
(19, 19, 'doc_cliente/19', 19, 1, 'doc_cliente/19/19', 'doc_cliente/19/19/Familia', 'doc_cliente/19/19/Familia/'),
(20, 20, 'doc_cliente/20', 20, 2, 'doc_cliente/20/20', 'doc_cliente/20/20/Civil', 'doc_cliente/20/20/Civil/'),
(21, 21, 'doc_cliente/21', 21, 2, 'doc_cliente/21/21', 'doc_cliente/21/21/Civil', 'doc_cliente/21/21/Civil/'),
(22, 22, 'doc_cliente/22', 22, 1, 'doc_cliente/22/22', 'doc_cliente/22/22/Familia', 'doc_cliente/22/22/Familia/'),
(23, 23, 'doc_cliente/23', 23, 1, 'doc_cliente/23/23', 'doc_cliente/23/23/Familia', 'doc_cliente/23/23/Familia/'),
(24, 24, 'doc_cliente/24', 24, 1, 'doc_cliente/24/24', 'doc_cliente/24/24/Familia', 'doc_cliente/24/24/Familia/'),
(25, 25, 'doc_cliente/25', 25, 1, 'doc_cliente/25/25', 'doc_cliente/25/25/Familia', 'doc_cliente/25/25/Familia/'),
(26, 26, 'doc_cliente/26', 26, 2, 'doc_cliente/26/26', 'doc_cliente/26/26/Civil', 'doc_cliente/26/26/Civil/'),
(27, 28, 'doc_cliente/28', 28, 1, 'doc_cliente/28/28', 'doc_cliente/28/28/Familia', 'doc_cliente/28/28/Familia/'),
(28, 29, 'doc_cliente/29', 29, 2, 'doc_cliente/29/29', 'doc_cliente/29/29/Civil', 'doc_cliente/29/29/Civil/'),
(29, 30, 'doc_cliente/30', 30, 1, 'doc_cliente/30/30', 'doc_cliente/30/30/Familia', 'doc_cliente/30/30/Familia/'),
(30, 31, 'doc_cliente/31', 31, 2, 'doc_cliente/31/31', 'doc_cliente/31/31/Civil', 'doc_cliente/31/31/Civil/'),
(31, 32, 'doc_cliente/32', 32, 1, 'doc_cliente/32/32', 'doc_cliente/32/32/Familia', 'doc_cliente/32/32/Familia/'),
(32, 33, 'doc_cliente/33', 33, 1, 'doc_cliente/33/33', 'doc_cliente/33/33/Familia', 'doc_cliente/33/33/Familia/'),
(33, 34, 'doc_cliente/34', 34, 2, 'doc_cliente/34/34', 'doc_cliente/34/34/Civil', 'doc_cliente/34/34/Civil/'),
(34, 36, 'doc_cliente/36', 36, 2, 'doc_cliente/36/36', 'doc_cliente/36/36/Civil', 'doc_cliente/36/36/Civil/'),
(35, 37, 'doc_cliente/37', 37, 1, 'doc_cliente/37/37', 'doc_cliente/37/37/Familia', 'doc_cliente/37/37/Familia/'),
(36, 38, 'doc_cliente/38', 38, 1, 'doc_cliente/38/38', 'doc_cliente/38/38/Familia', 'doc_cliente/38/38/Familia/'),
(37, 39, 'doc_cliente/39', 39, 2, 'doc_cliente/39/39', 'doc_cliente/39/39/Civil', 'doc_cliente/39/39/Civil/'),
(38, 40, 'doc_cliente/40', 40, 1, 'doc_cliente/40/40', 'doc_cliente/40/40/Familia', 'doc_cliente/40/40/Familia/');

-- --------------------------------------------------------

--
-- Table structure for table `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(11) NOT NULL,
  `especialidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipocaso`
--

CREATE TABLE `tipocaso` (
  `id_tipo_caso` int(11) NOT NULL,
  `tipo_caso` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipocaso`
--

INSERT INTO `tipocaso` (`id_tipo_caso`, `tipo_caso`) VALUES
(1, 'Familia'),
(2, 'Civil');

-- --------------------------------------------------------

--
-- Table structure for table `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `tipo_usuario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipousuario`
--

INSERT INTO `tipousuario` (`id_tipo_usuario`, `tipo_usuario`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(11) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `id_persona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `pass`, `id_tipo_usuario`, `id_persona`) VALUES
(3, 'admin', 'admin', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visita`
--

CREATE TABLE `visita` (
  `id_visita` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `razon_visita` longtext NOT NULL,
  `estado_visita` varchar(20) NOT NULL,
  `fecha_visita` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visita`
--

INSERT INTO `visita` (`id_visita`, `id_cliente`, `razon_visita`, `estado_visita`, `fecha_visita`) VALUES
(1, 1, '         Mordida de perro.', 'Activa', '2021-08-23 00:00:00'),
(2, 2, 'Discución de demanda.', 'Activa', '2021-08-26 00:00:00'),
(3, 3, 'Distribución de herencia.', 'Cerrado', '2019-06-02 00:00:00'),
(4, 4, 'Discucion sobre choque automovilistico.', 'Activa', '2021-07-14 00:00:00'),
(5, 5, 'Consulta sobre divorcio.', 'Activa', '2015-11-13 00:00:00'),
(6, 6, 'Derecho a visita a hijos. ', 'Cerrado', '2011-07-09 00:00:00'),
(7, 7, 'Agresiónfisica  en el trabajo.', 'Cerrado', '2021-04-10 00:00:00'),
(8, 8, 'Divorcio', 'Cerrado', '2021-01-09 00:00:00'),
(9, 9, 'División de herencia.', 'Activa', '2020-08-28 00:00:00'),
(10, 10, 'Contrademanda.', 'Cerrado', '2013-05-31 00:00:00'),
(11, 11, 'Repartición de bienes.', 'Cerrado', '2016-11-18 00:00:00'),
(12, 12, 'Contrademanda.', 'Cerrado', '2018-07-07 00:00:00'),
(13, 13, 'Altercado con cliente', 'Activa', '2017-09-12 00:00:00'),
(14, 14, 'Herencia', 'Cerrado', '2013-03-27 00:00:00'),
(15, 15, 'Defensa legal.', 'Activa', '2021-06-26 00:00:00'),
(16, 16, 'Divorcio', 'Activa', '2021-08-01 00:00:00'),
(17, 17, 'Distribucion de bienes', 'Activa', '2020-05-09 00:00:00'),
(18, 18, 'Defensa legal', 'Activa', '2021-01-31 00:00:00'),
(19, 19, 'Divorcio', 'Cerrado', '2011-05-18 00:00:00'),
(20, 20, 'Defensa legal', 'Cerrado', '2013-10-10 00:00:00'),
(21, 21, 'Defensa legal', 'Activa', '2021-02-11 00:00:00'),
(22, 22, 'Herencia', 'Activa', '2021-03-07 00:00:00'),
(23, 23, 'Herencia', 'Cerrado', '2017-10-11 00:00:00'),
(24, 24, 'Defensa legal', 'Activa', '2019-11-07 00:00:00'),
(25, 25, 'Divorcio', 'Activa', '2020-02-21 00:00:00'),
(26, 26, 'Acoso', 'Cerrado', '2016-10-05 00:00:00'),
(27, 27, 'Altercado', 'Cerrado', '2020-02-05 00:00:00'),
(28, 28, 'Divorcio', 'Activa', '2021-08-05 00:00:00'),
(29, 29, 'Defensa Legal', 'Activa', '2021-06-18 00:00:00'),
(30, 30, 'Divorcio', 'Activa', '2021-08-01 00:00:00'),
(31, 31, 'Demanda', 'Activa', '2020-11-12 00:00:00'),
(32, 32, 'Divorcio', 'Cerrado', '2020-01-30 00:00:00'),
(33, 33, 'Divorcio', 'Cerrado', '2011-07-07 00:00:00'),
(34, 34, 'Multa', 'Cerrado', '2021-01-12 00:00:00'),
(35, 35, 'Defensa legal', 'Cerrado', '2020-04-03 00:00:00'),
(36, 36, 'Defensa Legal', 'Cerrado', '2021-05-13 00:00:00'),
(37, 37, 'Divorcio', 'Cerrado', '2020-02-28 00:00:00'),
(38, 38, 'Divorcio', 'Activa', '2020-09-29 00:00:00'),
(39, 39, 'Defensa Legal', 'Cerrado', '2018-06-06 00:00:00'),
(40, 40, 'Herencia', 'Cerrado', '2016-12-24 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abogado`
--
ALTER TABLE `abogado`
  ADD PRIMARY KEY (`id_abogado`),
  ADD KEY `id_especialidad` (`id_especialidad`);

--
-- Indexes for table `acceso_usuario`
--
ALTER TABLE `acceso_usuario`
  ADD UNIQUE KEY `accseso_usuarios` (`id_clinte`,`id_usuario`);

--
-- Indexes for table `casos`
--
ALTER TABLE `casos`
  ADD PRIMARY KEY (`id_caso`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_visita` (`id_visita`),
  ADD KEY `id_tipo_caso` (`id_tipo_caso`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_documento`),
  ADD KEY `Documento_ibfk_1` (`id_tipo_caso`),
  ADD KEY `Documento_ibfk_2` (`id_caso`),
  ADD KEY `Documento_ibfk_3` (`id_cliente`);

--
-- Indexes for table `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indexes for table `tipocaso`
--
ALTER TABLE `tipocaso`
  ADD PRIMARY KEY (`id_tipo_caso`);

--
-- Indexes for table `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- Indexes for table `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`id_visita`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abogado`
--
ALTER TABLE `abogado`
  MODIFY `id_abogado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casos`
--
ALTER TABLE `casos`
  MODIFY `id_caso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `documento`
--
ALTER TABLE `documento`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tipocaso`
--
ALTER TABLE `tipocaso`
  MODIFY `id_tipo_caso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visita`
--
ALTER TABLE `visita`
  MODIFY `id_visita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abogado`
--
ALTER TABLE `abogado`
  ADD CONSTRAINT `Abogado_ibfk_1` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidad` (`id_especialidad`);

--
-- Constraints for table `casos`
--
ALTER TABLE `casos`
  ADD CONSTRAINT `Casos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `Casos_ibfk_2` FOREIGN KEY (`id_visita`) REFERENCES `visita` (`id_visita`),
  ADD CONSTRAINT `Casos_ibfk_3` FOREIGN KEY (`id_tipo_caso`) REFERENCES `tipocaso` (`id_tipo_caso`);

--
-- Constraints for table `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `Documento_ibfk_1` FOREIGN KEY (`id_tipo_caso`) REFERENCES `tipocaso` (`id_tipo_caso`),
  ADD CONSTRAINT `Documento_ibfk_2` FOREIGN KEY (`id_caso`) REFERENCES `casos` (`id_caso`),
  ADD CONSTRAINT `Documento_ibfk_3` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipousuario` (`id_tipo_usuario`);

--
-- Constraints for table `visita`
--
ALTER TABLE `visita`
  ADD CONSTRAINT `Visita_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
