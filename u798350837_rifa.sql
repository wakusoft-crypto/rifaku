-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-10-2026 a las 19:50:40
-- Versión del servidor: 11.8.9-MariaDB-log
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u798350837_rifa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `App_Cliente`
--

CREATE TABLE `App_Cliente` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(500) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `App_Cliente`
--

INSERT INTO `App_Cliente` (`Id`, `Nombre`, `Correo`, `Telefono`) VALUES
(1, 'prueba', 'prueba', 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `App_Orden`
--

CREATE TABLE `App_Orden` (
  `Id` int(11) NOT NULL,
  `Id_app_cliente` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Number` int(11) NOT NULL,
  `Tamanio` varchar(100) NOT NULL,
  `Cantidad` double NOT NULL,
  `Valor_unidad` double NOT NULL,
  `Valor_total` double NOT NULL,
  `Id_app_usuario` int(11) NOT NULL,
  `Observaciones` varchar(500) NOT NULL,
  `Fecha_vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `App_Orden`
--

INSERT INTO `App_Orden` (`Id`, `Id_app_cliente`, `Fecha`, `Number`, `Tamanio`, `Cantidad`, `Valor_unidad`, `Valor_total`, `Id_app_usuario`, `Observaciones`, `Fecha_vencimiento`) VALUES
(1, 1, '2024-02-14', 1, '1', 1, 1, 1, 1, '1', '2024-02-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `App_Pagos`
--

CREATE TABLE `App_Pagos` (
  `Id` int(11) NOT NULL,
  `Id_app_orden` int(11) NOT NULL,
  `Fecha_abono` date NOT NULL,
  `Valor_abono` double NOT NULL,
  `Medio_pago` varchar(200) NOT NULL,
  `Factura` varchar(200) NOT NULL,
  `Id_usuario_recibe` int(11) NOT NULL,
  `Observacion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `App_Pagos`
--

INSERT INTO `App_Pagos` (`Id`, `Id_app_orden`, `Fecha_abono`, `Valor_abono`, `Medio_pago`, `Factura`, `Id_usuario_recibe`, `Observacion`) VALUES
(1, 1, '2024-02-14', 1, '1', '1', 1, 'dsadsa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `App_Usuario`
--

CREATE TABLE `App_Usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `App_Usuario`
--

INSERT INTO `App_Usuario` (`id`, `email`, `password`) VALUES
(1, 'prueba@prueba.com', 'prueba123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletas`
--

CREATE TABLE `boletas` (
  `id` int(11) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_comprador` int(11) DEFAULT NULL,
  `valor` double NOT NULL,
  `abono` double NOT NULL,
  `fecha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `boletas`
--

INSERT INTO `boletas` (`id`, `numero`, `id_vendedor`, `id_comprador`, `valor`, `abono`, `fecha`) VALUES
(204, '00', 25, 222, 8000, 0, '2021-07-02 15:08:15'),
(205, '01', 26, 199, 8000, 0, '2021-06-25 17:13:53'),
(206, '02', 26, 223, 8000, 0, '2021-07-02 15:10:12'),
(207, '03', 25, 147, 8000, 0, '2021-06-22 17:05:30'),
(208, '04', 26, 211, 8000, 8000, '2021-06-30 10:14:22'),
(209, '05', 25, 149, 8000, 8000, '2021-06-22 17:09:38'),
(210, '06', 26, 124, 8000, 8000, '2021-06-19 00:46:31'),
(211, '07', 25, 150, 8000, 0, '2021-06-22 17:11:56'),
(212, '08', 25, 151, 8000, 0, '2021-06-22 17:12:57'),
(213, '09', 26, 212, 8000, 0, '2021-06-30 10:33:49'),
(214, '10', 25, 152, 8000, 8000, '2021-06-22 17:13:54'),
(215, '11', 25, 215, 8000, 0, '2021-06-30 14:55:05'),
(216, '12', 25, 129, 8000, 0, '2021-06-21 10:22:12'),
(217, '13', 25, 153, 8000, 0, '2021-06-22 17:16:30'),
(218, '14', 25, 154, 8000, 8000, '2021-06-22 17:18:34'),
(219, '15', 25, 128, 8000, 0, '2021-06-20 18:31:08'),
(220, '16', 25, 155, 8000, 8000, '2021-06-22 17:19:43'),
(221, '17', 25, 132, 8000, 0, '2021-06-21 10:49:56'),
(222, '18', 25, 142, 8000, 8000, '2021-06-22 14:51:21'),
(223, '19', 25, 142, 8000, 8000, '2021-06-22 17:04:19'),
(224, '20', 25, 147, 8000, 0, '2021-06-22 17:05:50'),
(225, '21', 25, 156, 8000, 0, '2021-06-22 17:20:58'),
(226, '22', 25, 157, 8000, 0, '2021-06-22 17:21:23'),
(227, '23', 25, 158, 8000, 0, '2021-06-22 17:22:07'),
(228, '24', 25, 159, 8000, 0, '2021-06-22 17:24:15'),
(229, '25', 25, 160, 8000, 8000, '2021-06-22 17:25:05'),
(230, '26', 25, 161, 8000, 8000, '2021-06-22 17:25:46'),
(231, '27', 25, 162, 8000, 0, '2021-06-22 17:26:34'),
(232, '28', 25, 163, 8000, 8000, '2021-06-22 17:29:22'),
(233, '29', 25, 164, 8000, 0, '2021-06-22 17:30:41'),
(234, '30', 26, 221, 8000, 8000, '2021-07-01 19:17:02'),
(235, '31', 25, 131, 8000, 8000, '2021-06-21 10:27:36'),
(236, '32', 25, 165, 8000, 0, '2021-06-22 17:33:42'),
(237, '33', 26, 219, 8000, 0, '2021-06-30 16:14:05'),
(238, '34', 25, 166, 8000, 0, '2021-06-22 17:38:57'),
(239, '35', 25, 166, 8000, 8000, '2021-06-22 17:41:09'),
(240, '36', 26, 168, 8000, 0, '2021-06-22 17:42:36'),
(241, '37', 26, 169, 8000, 0, '2021-06-22 17:43:00'),
(242, '38', 26, 201, 8000, 8000, '2021-06-25 17:23:40'),
(243, '39', 25, 170, 8000, 8000, '2021-06-22 17:43:48'),
(244, '40', 26, 213, 8000, 0, '2021-06-30 13:06:20'),
(245, '41', 26, 201, 8000, 8000, '2021-06-25 17:23:57'),
(246, '42', 25, 155, 8000, 8000, '2021-06-22 17:44:10'),
(247, '43', 25, 172, 8000, 0, '2021-06-22 17:45:11'),
(248, '44', 26, 210, 8000, 0, '2021-06-30 09:31:25'),
(249, '45', 25, 134, 8000, 0, '2021-06-21 14:08:13'),
(250, '46', 25, 173, 8000, 0, '2021-06-22 17:46:02'),
(251, '47', 25, 126, 8000, 0, '2021-06-19 17:28:43'),
(252, '48', 25, 160, 8000, 8000, '2021-06-22 17:47:18'),
(253, '49', 26, 203, 8000, 0, '2021-06-25 20:46:12'),
(254, '50', 26, 209, 8000, 8000, '2021-06-29 11:26:31'),
(255, '51', 25, 195, 8000, 0, '2021-06-22 19:56:54'),
(256, '52', 25, 138, 8000, 0, '2021-06-22 14:04:04'),
(257, '53', 25, 138, 8000, 0, '2021-06-22 14:04:31'),
(258, '54', 25, 175, 8000, 8000, '2021-06-22 17:48:10'),
(259, '55', 25, 218, 8000, 0, '2021-06-30 14:58:12'),
(260, '56', 25, 134, 8000, 0, '2021-06-21 14:08:48'),
(261, '57', 25, 160, 8000, 8000, '2021-06-22 17:49:00'),
(262, '58', 25, 144, 8000, 8000, '2021-06-22 16:48:27'),
(263, '59', 25, 152, 8000, 8000, '2021-06-22 17:49:51'),
(264, '60', 26, 214, 8000, 0, '2021-06-30 13:06:49'),
(265, '61', 25, 178, 8000, 8000, '2021-06-22 17:50:21'),
(266, '62', 26, 127, 8000, 0, '2021-06-19 17:29:49'),
(267, '63', 25, 136, 8000, 0, '2021-06-22 08:24:37'),
(268, '64', 26, 179, 8000, 8000, '2021-06-22 17:52:23'),
(269, '65', 25, 180, 8000, 0, '2021-06-22 17:53:57'),
(270, '66', 26, 181, 8000, 8000, '2021-06-22 17:54:56'),
(271, '67', 26, 123, 8000, 8000, '2021-06-19 00:42:45'),
(272, '68', 26, 207, 8000, 0, '2021-06-26 12:20:16'),
(273, '69', 26, 182, 8000, 0, '2021-06-22 17:55:56'),
(274, '70', 26, 220, 8000, 8000, '2021-07-01 19:16:17'),
(275, '71', 25, 138, 8000, 0, '2021-06-22 14:04:51'),
(276, '72', 25, 130, 8000, 0, '2021-06-21 10:23:51'),
(277, '73', 25, 183, 8000, 8000, '2021-06-22 17:57:05'),
(278, '74', 25, 144, 8000, 0, '2021-06-22 16:41:27'),
(279, '75', 25, 184, 8000, 0, '2021-06-22 17:57:53'),
(280, '76', 26, 185, 8000, 8000, '2021-06-22 17:58:19'),
(281, '77', 26, 186, 8000, 8000, '2021-06-22 17:59:06'),
(282, '78', 26, 199, 8000, 0, '2021-06-25 17:14:18'),
(283, '79', 25, 195, 8000, 0, '2021-06-22 19:57:23'),
(284, '80', 25, 217, 8000, 0, '2021-06-30 14:57:13'),
(285, '81', 25, 216, 8000, 0, '2021-06-30 14:56:29'),
(286, '82', 26, 207, 8000, 0, '2021-06-26 12:20:38'),
(287, '83', 26, 187, 8000, 0, '2021-06-22 18:00:20'),
(288, '84', 26, 205, 8000, 8000, '2021-06-25 20:53:50'),
(289, '85', 25, 188, 8000, 8000, '2021-06-22 18:00:58'),
(290, '86', 25, 138, 8000, 0, '2021-06-22 14:52:29'),
(291, '87', 26, 203, 8000, 0, '2021-06-25 20:45:37'),
(292, '88', 26, 189, 8000, 8000, '2021-06-22 18:01:54'),
(293, '89', 25, 198, 8000, 0, '2021-06-25 16:30:32'),
(294, '90', 26, 190, 8000, 0, '2021-06-22 18:02:31'),
(295, '91', 25, 206, 8000, 8000, '2021-06-26 11:56:08'),
(296, '92', 25, 137, 8000, 8000, '2021-06-22 11:11:07'),
(297, '93', 25, 197, 8000, 8000, '2021-06-23 14:15:50'),
(298, '94', 26, 124, 8000, 8000, '2021-06-19 00:53:43'),
(299, '95', 25, 191, 8000, 0, '2021-06-22 18:05:18'),
(300, '96', 26, 192, 8000, 0, '2021-06-22 18:05:49'),
(301, '97', 26, 193, 8000, 8000, '2021-06-22 18:06:17'),
(302, '98', 25, 194, 8000, 8000, '2021-06-22 18:06:59'),
(303, '99', 25, 130, 8000, 0, '2021-06-21 11:23:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Buyers`
--

CREATE TABLE `Buyers` (
  `Id` int(11) NOT NULL,
  `FirstName` longtext DEFAULT NULL,
  `LastName` longtext DEFAULT NULL,
  `Email` longtext DEFAULT NULL,
  `Phone` longtext DEFAULT NULL,
  `Address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Buyers`
--

INSERT INTO `Buyers` (`Id`, `FirstName`, `LastName`, `Email`, `Phone`, `Address`) VALUES
(1, 'comprador', 'comprador', 'comprador@comprador.com', '321578745', 'comprador casa'),
(2, 'comprador 2', 'comprador 2', 'comprador2@comprador.com', '32157874512', 'comprador 2 casa'),
(3, 'Fredy', 'Moreno Castro', 'cliente@cliente.com', '3219045297', 'calle 38 a sur 50 a 71');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradores`
--

CREATE TABLE `compradores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compradores`
--

INSERT INTO `compradores` (`id`, `nombre`, `telefono`, `direccion`) VALUES
(123, 'Johana Pachón ', '3502242136 ', 'Bogotá '),
(124, 'Tifa Avila', '3202045288', 'Bogotá'),
(125, 'Tifa Ávila', '3202045288', 'Bogotá'),
(126, 'Fredy Moreno', '3219045297', 'Bogotá'),
(127, 'Felipe Moreno', '3219045297', 'Bogotá'),
(128, 'Alex Mocho UPJ97', '3232049401', 'Bogotá '),
(129, 'Carolina Vargas', '3016200816', 'Bogotá '),
(130, 'José Quintero', '3103317787', 'Bogotá '),
(131, 'Diana Tequia ', '3016840649', 'Cajicá'),
(132, 'Cathe Rincón', '3144033243', 'Bogotá '),
(133, 'José Quintero', '3103317787', 'Bogotá '),
(134, 'Edisson Cifuentes', '3044619515', 'Cajicá'),
(135, 'Edisson Cifuentes', '3044619515', 'Cajicá'),
(136, 'Dora Rueda', '3227231131', 'Soacha'),
(137, 'Carito Tequia', '3004714679', 'Cocuy'),
(138, 'Jackeline Quintero', '3118116911', 'Bogotá'),
(139, 'Jackeline Quintero', '3118116911', 'Bogotá'),
(140, 'Jackeline Quintero', '3118116911', 'Bogotá'),
(141, 'Jackeline Quintero', '3118116911', 'Bogotá'),
(142, 'Julian Molano Quintero', '3196514030', 'Bogotá'),
(143, 'Jackeline Quintero', '3118116911', 'Bogotá'),
(144, 'Cesar Tellez', '3204684454', 'Bogotá'),
(145, 'Cesar Tellez', '3204684454', 'Bogotá'),
(146, 'Julian Molano Quintero', '3196514030', 'Bogotá'),
(147, 'John Gomez UPJ97', '3143857297', 'Bogotá'),
(148, 'John Gomez UPJ97', '3143857297', 'Bogotá'),
(149, 'Amalia Carreño', '00', 'Bogotá'),
(150, 'Liz García', '3006894070', 'Bogotá'),
(151, 'Camilo Ruíz', '3115132601', 'Bogotá'),
(152, 'Marisol Rodríguez', '3124589085', 'Bogotá'),
(153, 'Diana Calderón', '3144332946', 'Bogotá'),
(154, 'Alejandra Peña', '3102970706', 'Bogotá'),
(155, 'Leidy Ochoa', '00', 'Bogotá'),
(156, 'Fabian Velandia', '3178309808', 'Bogotá'),
(157, 'Cam', '3115132601', 'Bogotá'),
(158, 'Darwing Solaque', '3123917312', 'Bogotá'),
(159, 'Alexandra Mesa', '3013185181', 'Bogotá'),
(160, 'Natalia Devia', '3133750214', 'Bogotá'),
(161, 'Ama', '00', 'Bogotá'),
(162, 'Geraldine Sanchez', '3132702720', 'Bogotá'),
(163, 'Carolina Moyano', '3124589085', 'Bogotá'),
(164, 'Magdalena Quintero', '3124603518', 'Bogotá'),
(165, 'Jhon Pinzón', '3212252455', 'Bogotá'),
(166, 'Jose Manuel Mesa', '3013185181', 'Bogotá'),
(167, 'Jose Manuel Mesa', '3013185181', 'Bogotá'),
(168, 'Lety futsal ', '3013185181', 'Bogotá'),
(169, 'Diego Mesa', '3013185181', 'Bogotá'),
(170, 'Celina Rivera', '3124589085', 'Bogotá'),
(171, 'Leidy Ochoa', '00', 'Bogotá'),
(172, 'Jaime Tello', '3133477914', 'Bogotá'),
(173, 'Giovanni Vargas', '3133412658', 'Bogotá'),
(174, 'Natalia Devia', '3133750214', 'Bogotá'),
(175, 'Alejandro Alarcón', '3197611467', 'Bogotá'),
(176, 'Natalia Devia', '3133750214', 'Bogotá'),
(177, 'Marisol Rodríguez', '3124589085', 'Bogotá'),
(178, 'Daniela Rodriguez', '3124589085', 'Bogotá'),
(179, 'Miguel Mesa', '3013185181', 'Bogotá'),
(180, 'Maria Paula Charry', '3194537047', 'Bogotá'),
(181, 'Daniela Enciso Futsal', '3013185181', 'Bogotá'),
(182, 'Dayanna futsal', '3013185181', 'Bogotá'),
(183, 'Johan Granados', '3057860513', 'Bogotá'),
(184, 'Erika Alvarez', '3124589085', 'Bogotá'),
(185, 'Claudia Fuquen ', '3013185181', 'Bogotá'),
(186, 'Brayan Fofi', '3013185181', 'Bogotá'),
(187, 'Marcela Bolivar Alexa', '3013185181', 'Bogotá'),
(188, 'Maira Pulecio', '3208382536', 'Bogotá'),
(189, 'Linda futsal Alexa', '3013185181', 'Bogotá'),
(190, 'Martin Coronel Nobsa', '3013185181', 'Bogotá'),
(191, 'Cristian Salchicha', '3212216550', 'Bogotá'),
(192, 'María José futsal', '3013185181', 'Bogotá'),
(193, 'Yaja futsal', '3013185181', 'Bogotá'),
(194, 'Arnulfo SISO', '3103144621', 'Funza'),
(195, 'Magdalena', '3124603518', 'Bogotá '),
(196, 'Magdalena', '3124603518', 'Bogotá '),
(197, 'Alejandro Rico', '3118034259', 'Bogotá '),
(198, 'Alexandra Martínez ', '3102063444', 'Bogotá '),
(199, 'Julián Estefy', '3202045288', 'Bogotá '),
(200, 'Julián Estefy', '3202045288', 'Bogotá '),
(201, 'Katty Estefy', '3202045288', 'Bogotá '),
(202, 'Katty Estefy', '3202045288', 'Bogotá '),
(203, 'Diana Montoya', '3144869572', 'Soacha'),
(204, 'Diana Montoya', '3144869572', 'Soacha'),
(205, 'Andrea Paola Moreno', '310 5518675', 'Coscuez Boyacá'),
(206, 'Jackeline Quintero', '3118116911', 'Bogotá '),
(207, 'Enrique Estefy', '3202045288', 'Bogotá '),
(208, 'Enrique Estefy', '3202045288', 'Bogotá '),
(209, 'Armando Casas ', '3227162631', 'Soacha'),
(210, 'Daniel Espinoza', '3013185181', 'Bogotá '),
(211, 'Janeth Orjuela ', '3013185181', 'Bogotá '),
(212, 'Camila Moreno ', '3013185181', 'Bogotá '),
(213, 'Miguel Espinoza', '3013185181', 'Bogotá '),
(214, 'Alejandro Sierra', '3013185181', 'Bogotá '),
(215, 'Diana Vargas ', '3202504903', 'Bogotá '),
(216, 'María Paula Charry', '3194537047', 'Bogotá '),
(217, 'Inés Villarreal', '3114790921', 'Bogotá '),
(218, 'Daniel Quintero', '3103276932', 'Bogotá '),
(219, 'Holman Barajas', '3013185181', 'Bogotá '),
(220, 'Elkin Rivera', '3013185181', 'Bogotá '),
(221, 'Laura Castaño', '3013185181', 'Bogotá '),
(222, 'Valentina Nope', '325290529', 'Bogotá '),
(223, 'Alejandro Sánchez Alexandra', '3013185181', 'Bogotá '),
(224, '1', '3219045297', '100255');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Lotterys`
--

CREATE TABLE `Lotterys` (
  `Id` int(11) NOT NULL,
  `NameLottery` longtext DEFAULT NULL,
  `ResponsibleId` int(11) DEFAULT NULL,
  `DayLottery` datetime(6) NOT NULL,
  `ValidationLottery` longtext DEFAULT NULL,
  `NameJackpot` longtext DEFAULT NULL,
  `PriceLottery` double NOT NULL,
  `Address` longtext DEFAULT NULL,
  `Numbers` int(11) NOT NULL,
  `Note` longtext DEFAULT NULL,
  `WinNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Lotterys`
--

INSERT INTO `Lotterys` (`Id`, `NameLottery`, `ResponsibleId`, `DayLottery`, `ValidationLottery`, `NameJackpot`, `PriceLottery`, `Address`, `Numbers`, `Note`, `WinNumber`) VALUES
(2, 'gana 100 mil pesos (loteria mayorca)', 3, '2024-01-23 22:39:17.912000', 'con las dos ultimas cifras del premio mayor', 'Loteria mayor de Boyaca', 5000, 'casa 1', 100, 'gana tu premio', 0),
(3, 'string', 1, '2024-01-23 23:54:06.203000', 'string', 'string', 0, 'string', 0, 'string', 0),
(4, 'strindsadsag', 1, '2024-01-23 23:54:06.203000', 'string', 'string', 0, 'string', 0, 'string', 0),
(5, 'Fredy Alejandro Moreno Castro', 17, '2024-02-06 00:00:00.000000', 'dos ultimas cifras', 'Mayor de Boyaca', 5000, 'calle 38 a sur 50 a', 100, 'se rifa 1 millon de pesos', 0),
(6, 'Fredy Alejandro Moreno Castro', 17, '2024-02-06 00:00:00.000000', 'dos ultimas cifras', 'Mayor de Boyaca', 5000, 'calle 38 a sur 50 a', 100, 'se rifa 1 millon de pesos', 0),
(7, 'prueba', 24, '2024-02-05 00:00:00.000000', 'dos ultimas cifras', 'Mayor de Boyaca', 5000, 'calle 38 a sur 50 a', 10, 'premio prueba', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LotteryTransaction`
--

CREATE TABLE `LotteryTransaction` (
  `Id` int(11) NOT NULL,
  `LoteryId` int(11) DEFAULT NULL,
  `BuyerId` int(11) DEFAULT NULL,
  `NumberLottery` int(11) NOT NULL,
  `StateNumber` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `LotteryTransaction`
--

INSERT INTO `LotteryTransaction` (`Id`, `LoteryId`, `BuyerId`, `NumberLottery`, `StateNumber`) VALUES
(1, 2, 1, 10, 'PaidNumber'),
(2, 7, 3, 9, 'Apartado'),
(3, 7, 3, 9, 'Apartado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sellers`
--

CREATE TABLE `Sellers` (
  `Id` int(11) NOT NULL,
  `FirstName` longtext DEFAULT NULL,
  `LastName` longtext DEFAULT NULL,
  `Email` longtext DEFAULT NULL,
  `Phone` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Sellers`
--

INSERT INTO `Sellers` (`Id`, `FirstName`, `LastName`, `Email`, `Phone`) VALUES
(1, 'Prueba', 'Prueba', 'prueba@prueba.com', '3219045297'),
(2, 'comprador 2', 'comprador 2', '777888', 'dsadsa'),
(3, 'Prueba2', 'Prueba2', 'prueba2@prueba.com', '3219045297'),
(4, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(5, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(6, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(7, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(8, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(9, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(10, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(11, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(12, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(13, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(14, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(15, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(16, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(17, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(18, 'Fredy', 'Moreno Castro', 'Leypachon@uan.edu.co', '3219045297'),
(19, 'Fredy', 'Moreno Castro', 'Leypachon@uan.edu.co', '3219045297'),
(20, 'Fredy', 'Moreno Castro', 'Leypachon@uan.edu.co', '3219045297'),
(21, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(22, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(23, 'Fredy', 'Moreno Castro', 'fredymc-9@hotmail.com', '3219045297'),
(24, 'prueba', 'prueba', 'prueba@prueba.com', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id`, `nombre`, `telefono`) VALUES
(25, 'Felipe Parra', NULL),
(26, 'Julie Gómez', NULL),
(29, 'Gloria Alarcón ', NULL),
(30, 'miriam', NULL),
(31, 'MIRIAM ALARCON', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20240123185403_initial1', '5.0.17'),
('20240123223051_initial2', '5.0.17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `App_Cliente`
--
ALTER TABLE `App_Cliente`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `App_Orden`
--
ALTER TABLE `App_Orden`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `App_Pagos`
--
ALTER TABLE `App_Pagos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `App_Usuario`
--
ALTER TABLE `App_Usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `boletas`
--
ALTER TABLE `boletas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boletas_ibfk_1` (`id_vendedor`),
  ADD KEY `boletas_ibfk_2` (`id_comprador`);

--
-- Indices de la tabla `Buyers`
--
ALTER TABLE `Buyers`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `compradores`
--
ALTER TABLE `compradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Lotterys`
--
ALTER TABLE `Lotterys`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Lotterys_ResponsibleId` (`ResponsibleId`);

--
-- Indices de la tabla `LotteryTransaction`
--
ALTER TABLE `LotteryTransaction`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_LotteryTransaction_BuyerId` (`BuyerId`),
  ADD KEY `IX_LotteryTransaction_LoteryId` (`LoteryId`);

--
-- Indices de la tabla `Sellers`
--
ALTER TABLE `Sellers`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `App_Cliente`
--
ALTER TABLE `App_Cliente`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `App_Orden`
--
ALTER TABLE `App_Orden`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `App_Pagos`
--
ALTER TABLE `App_Pagos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `App_Usuario`
--
ALTER TABLE `App_Usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `boletas`
--
ALTER TABLE `boletas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT de la tabla `Buyers`
--
ALTER TABLE `Buyers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `compradores`
--
ALTER TABLE `compradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT de la tabla `Lotterys`
--
ALTER TABLE `Lotterys`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `LotteryTransaction`
--
ALTER TABLE `LotteryTransaction`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Sellers`
--
ALTER TABLE `Sellers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `boletas`
--
ALTER TABLE `boletas`
  ADD CONSTRAINT `boletas_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `boletas_ibfk_2` FOREIGN KEY (`id_comprador`) REFERENCES `compradores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Lotterys`
--
ALTER TABLE `Lotterys`
  ADD CONSTRAINT `FK_Lotterys_Sellers_ResponsibleId` FOREIGN KEY (`ResponsibleId`) REFERENCES `Sellers` (`Id`);

--
-- Filtros para la tabla `LotteryTransaction`
--
ALTER TABLE `LotteryTransaction`
  ADD CONSTRAINT `FK_LotteryTransaction_Buyers_BuyerId` FOREIGN KEY (`BuyerId`) REFERENCES `Buyers` (`Id`),
  ADD CONSTRAINT `FK_LotteryTransaction_Lotterys_LoteryId` FOREIGN KEY (`LoteryId`) REFERENCES `Lotterys` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
