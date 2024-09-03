-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2024 a las 18:05:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario_de_carretes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `No_parte` varchar(255) DEFAULT NULL,
  `No_parte_2` varchar(255) DEFAULT NULL,
  `valor_nominal` varchar(255) DEFAULT NULL,
  `v_n_1` varchar(255) DEFAULT NULL,
  `v_n_2` varchar(255) DEFAULT NULL,
  `encapsulado` varchar(255) DEFAULT NULL,
  `regimen_v_cc` varchar(255) DEFAULT NULL,
  `tolerancia` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `ubicacion`, `No_parte`, `No_parte_2`, `valor_nominal`, `v_n_1`, `v_n_2`, `encapsulado`, `regimen_v_cc`, `tolerancia`, `cantidad`) VALUES
(1, 'A01', 'GRM1515C1E200JA01D', '12', '20pF', '0.02nF', '0.00002µF', '0402', '121', '1', 12),
(2, 'A02', 'CL05B103KB5NNNC', '', '20pF', '0.02nF', '0.00002µF', '0402', '', '', 0),
(3, 'A03', 'CL05B103KO5NNNC', '', '10nF', '0.01µF', '10000pF', '0402', '', '', 0),
(4, 'A04', 'CL05A473KP5NNNC', '', '47nF', '0.047µF', '47000pF\r\n', '0402', '', '', 0),
(5, 'A05', 'CL05A473KP5NNNC', '', '47nF', '0.047µF', '47000pF', '0402', '', '', 0),
(6, 'A06', 'TCC0402X7R104K160AT', '', '100nF', '0.1µF', '100000pF', '0402', '', '', 0),
(7, 'A07', 'TCC0402X7R104K160AT', '', '100nF', '0.1µF', '100000pF', '0402', '', '', 0),
(8, 'A08', 'CL05A474KP5NNNC', '', '0.47µF', '470nF', '470000pF\r\n', '0402', '', '', 0),
(9, 'A09', 'CL05A105P5NNNC', '', '1µf', '1000nF', '1000000pF', '0402', '', '', 0),
(10, 'A10', 'GRM155R60J475ME47D', '', '4.7µf', '4700nF', '4700000pF', '0402', '', '', 0),
(11, 'A11', 'GRM155R60J475ME47D', '', '4.7µf', '4700nF', '4700000pF', '0402', '', '', 0),
(12, 'A12', 'CL05A106MP5NUNC', '', '10µF', '10µF', '10000000pF', '0402', '', '', 0),
(13, 'A13', '0402WGF0000TCE', '', '0Ω', '', '', '0402', '', '', 0),
(14, 'A14', '0402WGF330KTCE', '', '3.3Ω', '', '', '0402', '', '', 0),
(15, 'A15', '0402WGF100JTCE', '', '10Ω', '', '', '0402', '', '', 0),
(16, 'A16', '0402WGF100JTCE', '', '10Ω', '', '', '0402', '', '', 0),
(17, 'A17', '0402WGF140JTCE', '', '14Ω', '', '', '0402', '', '', 0),
(18, 'A18', '0402WGF220JTCE', '', '22Ω', '', '', '0402', '', '', 0),
(19, 'A19', '0402WGF499JTCE', '', '49.9Ω', '', '', '0402', '', '', 0),
(20, 'A20', '0402WGF806JTCE', '', '80.6Ω', '', '', '0402', '', '', 0),
(21, 'A21', 'RC-02W1000FT', '0402WGF1000TCE', '100Ω', '', '', '0402', '', '', 0),
(22, 'B01', '0402WGF1000TCE', '', '100Ω', '', '', '0402', '', '', 0),
(23, 'B02', '0402WGF1000TCE', '', '100Ω', '', '', '0402', '', '', 0),
(24, 'B03', '0402WGF1650TCE', '', '165Ω', '', '', '0402', '', '', 0),
(25, 'B04', 'RC-02W2000FT', '0402WGF2000TCE', '200Ω', '', '', '0402', '', '', 0),
(26, 'B05', 'RC-02W2400FT', '0402WGF2400TCE', '240Ω', '', '', '0402', '', '', 0),
(27, 'B06', 'CBM100505U301T', '', '300Ω', '', '', '0402', '', '', 0),
(28, 'B07', 'WR04X3300FTL', '0402WGF3300TCE', '330Ω', '', '', '0402', '', '', 0),
(29, 'B08', '0402WGF4700TCE', '', '470Ω', '', '', '0402', '', '', 0),
(30, 'B09', '0402WGF1001TCE', '', '1kΩ', '', '', '0402', '', '', 0),
(31, 'B10', 'RC-02W1001FT', '0402WGF1001TCE', '1kΩ', '', '', '0402', '', '', 0),
(32, 'B11', 'RC-02W1501FT', '0402WGF1501TCE', '1.5kΩ', '', '', '0402', '', '', 0),
(33, 'B12', '0402WGF1691TCE', '', '1.69kΩ', '', '', '0402', '', '', 0),
(34, 'B13', 'RI0402L2001FT', '0402WGF2001TCE', '2kΩ', '', '', '0402', '', '', 0),
(35, 'B14', '0402WGF2401TCE', '', '2.4kΩ', '', '', '0402', '', '', 0),
(36, 'B15', '0402WGF3001TCE', '', '3kΩ', '', '', '0402', '', '', 0),
(37, 'B16', '0402WGF4641TCE', '', '4.64kΩ', '', '', '0402', '', '', 0),
(38, 'B17', '0402WGF4701TCE', '', '4.7kΩ', '', '', '0402', '', '', 0),
(39, 'B18', '0402WGF8201TCE', '', '8.2kΩ', '', '', '0402', '', '', 0),
(40, 'B19', '0402GF1002TCE', '', '10kΩ', '', '', '0402', '', '', 0),
(41, 'B20', '0402WGF1002TCE', '', '10kΩ', '', '', '0402', '', '', 0),
(42, 'B21', 'RC-02W1202FT', '0402WGF1202TCE', '12kΩ', '', '', '0402', '', '', 0),
(43, 'C01', '0402WGF1622TCE', '', '16.2kΩ', '', '', '0402', '', '', 0),
(44, 'C02', '0402WGF2002TCE', '', '20kΩ', '', '', '0402', '', '', 0),
(45, 'C03', '0402WGF2202TCE', '', '22kΩ', '', '', '0402', '', '', 0),
(46, 'C04', 'RC-02W2702FT', '0402WGF2702TCE', '27kΩ', '', '', '0402', '', '', 0),
(47, 'C05', 'RC-02W3002FT', '0402WGF3002TCE', '30KΩ\r\n', '', '', '0402', '', '', 0),
(48, 'C06', 'RC0402FR-0743K2L', '0402WGF4322TCE', '43.2 kΩ', '', '', '0402', '', '', 0),
(49, 'C07', '0402WGF4702TCE', '', '47kΩ', '', '', '0402', '', '', 0),
(50, 'C08', '0402WGF4992TCE', '', '49.9kΩ', '', '', '0402', '', '', 0),
(51, 'C09', '0402WGF8872TCE', '', '88.7kΩ', '', '', '0402', '', '', 0),
(52, 'C10', '0402WGF1003TCE', '', '100kΩ', '', '', '0402', '', '', 0),
(53, 'C11', '0402WGF1203TCE', '', '120kΩ', '', '', '0402', '', '', 0),
(54, 'C12', '0402WGF1503TCE', '', '150kΩ', '', '', '0402', '', '', 0),
(55, 'C13', 'RC0402FR-07200KL', '0402WGF2003TCE', '200kΩ', '', '', '0402', '', '', 0),
(56, 'C14', 'RC-02K8063FT', '0402WGF8063TCE', '806kΩ', '', '', '0402', '', '', 0),
(57, 'C15', '0402WGF1004TCE', '', '1MΩ', '', '', '0402', '', '', 0),
(58, 'C16', '0402WGF2004TCE', '', '2MΩ', '', '', '0402', '', '', 0),
(59, 'C17', 'CC0603JRNPO9BN100', '', '10pF', '0.01nF', '0.00001µf', '0603', '', '', 0),
(60, 'C18', 'CL10C100CB8NNNC', '', '10Pf', '0.01nF', '0.00001µF', '0603', '', '', 0),
(61, 'C19', 'CL10C120JB8NNNC', '', '12Pf', '0.012nF', '0.000012µF', '0603', '', '', 0),
(62, 'C20', 'CL10C120JB8NNNC', '', '12Pf', '0.012nF', '0.000012µF', '0603', '', '', 0),
(63, 'C21', 'CL10C120JB8NNNC', '', '12Pf', '0.012nF', '0.000012µF', '0603', '', '', 0),
(64, 'D01', 'CL10C200JB8NNNC', '', '20pF', '0.02nF', '0.00002µF', '0603', '', '', 0),
(65, 'D02', 'CC0603GRNPO9BN220', '', '22Pf', '0.022nF', '0.000022µF', '0603', '', '', 0),
(66, 'D03', 'CL10C270JB8NNNC', '', '27Pf', '0.027nF', '0.000027µF', '0603', '', '', 0),
(67, 'D04', 'CL10C270JB8NNNC', '', '27Pf', '0.027nF', '0.000027µF', '0603', '', '', 0),
(68, 'D05', 'CC0603JRNPO9BN330', '', '33Pf', '0.033nF', '0.000033µF', '0603', '', '', 0),
(69, 'D06', 'CL10C470JB8NNNC', '', '47Pf', '0.047nF', '0.000047µF', '0603', '', '', 0),
(70, 'D07', 'CL10C221JB8NNNC', '', '220Pf', '0.22nF', '0.00022µF\r\n', '0603', '', '', 0),
(71, 'D08', 'CL10C102JB8NNNC', '', '1nF', '0.001µF', '1000Pf', '0603', '', '', 0),
(72, 'D09', 'C1608X7R2A222K080AA', '', '2.2nF', '0.0022µF', '2200Pf\r\n', '0603', '', '', 0),
(73, 'D10', 'C1608X7R2A222K080AA', '', '2.2nF', '0.0022µF', '2200Pf', '0603', '', '', 0),
(74, 'D11', 'N/A', '', '47nF', '0.047µF', '47000pF', '0603', '', '', 0),
(75, 'D12', 'GRM188R71E103KA01D', '', '0.01µF', '10nF', '10000pF', '0603', '', '', 0),
(76, 'D13', 'CL10B103KB8WPNC', '', '0.01µF', '10nF', '10000pF', '0603', '', '', 0),
(77, 'D14', 'GRM188R71H473KA01D', '', '0.047µF', '47nF', '47000pF\r\n', '0603', '', '', 0),
(78, 'D15', 'CL10B104KB8NNNC', '', '0.1µF', '100nF', '100000pF', '0603', '', '', 0),
(79, 'D16', 'CL10B224KB8NNNC', '', '0.22µF', '220nF', '220000pF', '0603', '', '', 0),
(80, 'D17', 'GRM188R61H474KA12D', '', '0.47µF', '470nF', '470000pF', '0603', '', '', 0),
(81, 'D18', '0603B105K100NT', '', '1000nF', '1µF', '1000000pF', '0603', '', '', 0),
(82, 'D19', 'CL10A105KB8NNNC', '', '1µF', '1000nF', '1000000pF', '0603', '', '', 0),
(83, 'D20', '0603B475K100NT', '', '4.7µF', '4700nF', '4700000pF\r\n', '0603', '', '', 0),
(84, 'D21', '0603B475K100NT', '', '4.7µF', '4700nF', '4700000pF\r\n', '0603', '', '', 0),
(85, 'E01', 'CL10A106MQ8NNNC', '', '10µF', '10000nF', '10000000pF', '0603', '', '', 0),
(86, 'E02', 'CL10A106KP8NNNC', '', '10µF', '10000nF', '10000000pF', '0603', '', '', 0),
(87, 'E03', 'N/A', '', '22 µf', '22000nF', '22000000 pF', '0603', '', '', 0),
(88, 'E04', '0603WAF500LT5E', '', '500mΩ', '0.5Ω', '', '0603', '', '', 0),
(89, 'E05', '0603WAF0000T5E', '', '0Ω', '', '', '0603', '', '', 0),
(90, 'E06', '0603WAF200KT5E', '', '2Ω', '', '', '0603', '', '', 0),
(91, 'E07', 'WR06X10R0FTL', '', '10Ω', '', '', '0603', '', '', 0),
(92, 'E08', '0603WAF100JT5E', '', '10Ω', '', '', '0603', '', '', 0),
(93, 'E09', '0603WAF140JT5E', '', '14Ω', '', '', '0603', '', '', 0),
(94, 'E10', '0603WAF200JT5E', '', '20Ω', '', '', '0603', '', '', 0),
(95, 'E11', '0603WAF220JT5E', '', '22Ω', '', '', '0603', '', '', 0),
(96, 'E12', '0603WAF270JT5E', '', '27Ω', '', '', '0603', '', '', 0),
(97, 'E13', 'WR06X1000FTL', '', '100Ω', '', '', '0603', '', '', 0),
(98, 'E14', 'RI0603L1000FT', '', '100Ω', '', '', '0603', '', '', 0),
(99, 'E15', '0603WAJ0121T5E', '', '120Ω', '', '', '0603', '', '', 0),
(100, 'E16', '0603WAF1500T5E', '', '150Ω', '', '', '0603', '', '', 0),
(101, 'E17', 'FALTA', '', '180Ω', '', '', '0603', '', '', 0),
(102, 'E18', 'RI0603L1800FT', '', '180Ω', '', '', '0603', '', '', 0),
(103, 'E19', 'RS-03K2200FT', '', '220Ω', '', '', '0603', '', '', 0),
(104, 'E20', 'RC0603FR-07240RL', '', '240Ω\r\n', '', '', '0603', '', '', 0),
(105, 'E21', 'N/A', '', '330Ω', '', '', '0603', '', '', 0),
(106, 'F01', '0603WAF3300T5E', '', '390Ω', '', '', '0603', '', '', 0),
(107, 'F02', 'RC0603FR-07390RL', '', '390Ω', '', '', '0603', '', '', 0),
(108, 'F03', 'N/A', '', '470Ω', '', '', '0603', '', '', 0),
(109, 'F04', '0603WAF4700T5E', '', '470Ω', '', '', '0603', '', '', 0),
(110, 'F05', '0603WAF8200T5E', '', '820Ω', '', '', '0603', '', '', 0),
(111, 'F06', 'RI0603L1001FT', '', '1kΩ', '', '', '0603', '', '', 0),
(112, 'F07', '0603WAF1001T5E', '', '1kΩ', '', '', '0603', '', '', 0),
(113, 'F08', '0603WAF1211T5E', '', '1.21kΩ', '', '', '0603', '', '', 0),
(114, 'F09', 'WR06X2001FTL', '', '2kΩ', '', '', '0603', '', '', 0),
(115, 'F10', '0603WAF2701T5E', '', '2.7kΩ', '', '', '0603', '', '', 0),
(116, 'F11', '0603WAF3161T5E', '', '3.16kΩ', '', '', '0603', '', '', 0),
(117, 'F12', '0603WAF3241T5E', '', '3.24kΩ', '', '', '0603', '', '', 0),
(118, 'F13', '0603WAF3571T5E', '', '3.57kΩ', '', '', '0603', '', '', 0),
(119, 'F14', '0603WAF4701T5E', '', '4.7kΩ', '', '', '0603', '', '', 0),
(120, 'F15', 'CR0603FA5101G', '', '5.1kΩ', '', '', '0603', '', '', 0),
(121, 'F16', '0603WAF6041T5E', '', '6.04kΩ', '', '', '0603', '', '', 0),
(122, 'F17', '0603WAF1002T5E', '', '10kΩ', '', '', '0603', '', '', 0),
(123, 'F18', '0603WAF1002T5E', '', '10kΩ', '', '', '0603', '', '', 0),
(124, 'F19', 'RI0603L1202FT', '', '12kΩ', '', '', '0603', '', '', 0),
(125, 'F20', '0603WAF1332T5E', '', '13.3kΩ', '', '', '0603', '', '', 0),
(126, 'F21', '0603WAF1502T5E', '', '15kΩ', '', '', '0603', '', '', 0),
(127, 'G01', '0603WAF2492T5E', '', '24.9kΩ', '', '', '0603', '', '', 0),
(128, 'G02', 'N/A', '', '27kΩ', '', '', '0603', '', '', 0),
(129, 'G03', '0603WAF2802T5E', '', '28kΩ', '', '', '0603', '', '', 0),
(130, 'G04', '0603WAF2942T5E', '', '29.4kΩ', '', '', '0603', '', '', 0),
(131, 'G05', '0603WAF2942T5E', '', '29.4kΩ', '', '', '0603', '', '', 0),
(132, 'G06', 'CR0603FA3002G', '', '30kΩ', '', '', '0603', '', '', 0),
(133, 'G07', 'CR0603FA33R0G', '', '33Ω', '', '', '0603', '', '', 0),
(134, 'G08', '0603WAF3322T5E', '', '33.2kΩ', '', '', '0603', '', '', 0),
(135, 'G09', '0603WAF3902T5E', '', '39kΩ', '', '', '0603', '', '', 0),
(136, 'G10', '0603WAF4322T5E', '', '43.2kΩ', '', '', '0603', '', '', 0),
(137, 'G11', '0603WAF4422T5E', '', '44.2kΩ', '', '', '0603', '', '', 0),
(138, 'G12', '0603WAF4702T5E', '', '47kΩ', '', '', '0603', '', '', 0),
(139, 'G13', 'RS-03K5102FT', '', '51kΩ', '', '', '0603', '', '', 0),
(140, 'G14', '0603WAF6652T5E', '', '66.5kΩ', '', '', '0603', '', '', 0),
(141, 'G15', '0603WAF6802T5E', '', '68kΩ', '', '', '0603', '', '', 0),
(142, 'G16', '0603WAF8062T5E', '', '80.6kΩ', '', '', '0603', '', '', 0),
(143, 'G17', 'RI0603L9762FT', '', '97.6kΩ', '', '', '0603', '', '', 0),
(144, 'G18', '0603WAF1003T5E', '', '100kΩ', '', '', '0603', '', '', 0),
(145, 'G19', '0603WAF1053T5E', '', '105kΩ', '', '', '0603', '', '', 0),
(146, 'G20', 'N/A', '', '115kΩ', '', '', '0603', '', '', 0),
(147, 'G21', 'RI0603L1183FT', '', '118kΩ', '', '', '0603', '', '', 0),
(148, 'H01', 'RS-03K1203FT', '', '120kΩ', '', '', '0603', '', '', 0),
(149, 'H02', 'N/A', '', '133kΩ', '', '', '0603', '', '', 0),
(150, 'H03', 'N/A', '', '150kΩ', '', '', '0603', '', '', 0),
(151, 'H04', 'N/A', '', '300kΩ', '', '', '0603', '', '', 0),
(152, 'H05', 'N/A', '', '470kΩ', '', '', '0603', '', '', 0),
(153, 'H06', '0603WAF8063T5E', '', '806kΩ', '', '', '0603', '', '', 0),
(154, 'H07', 'WR06X1004FTL', '', '1MΩ', '', '', '0603', '', '', 0),
(155, 'H08', 'RC0603FR-071M37L', '', '1.37MΩ', '', '', '0603', '', '', 0),
(156, 'H09', '0603WAF2004T5E', '', '2MΩ', '', '', '0603', '', '', 0),
(157, 'H10', 'C0805C681J2RACTU', '', '680pF', '0.68nF', '0.00068µF', '0805', '', '', 0),
(158, 'H11', 'CC0805KKX7R9BB682', '', '6.8nF', '0.0068µF', '6800pF\r\n', '0805', '', '', 0),
(159, 'H12', 'CL21B104KBCNFNC', '', '100nF', '0.1µF', '100000pF', '0805', '', '', 0),
(160, 'H13', 'C0805C103K1RACAUTO', '', '0.01µF', '10nF', '10000pF\r\n', '0805', '', '', 0),
(161, 'H14', 'CGA4J2X7R1H104K125AE', '', '0.1µF', '100nF', '100000pF\r\n', '0805', '', '', 0),
(162, 'H15', 'C0805C105Z4VAC7800', '', '1µf', '1000nF', '1000000pF', '0805', '', '', 0),
(163, 'H16', 'CL21B105KAFNNNE', '', '1µF', '1000nF', '1000000pF', '0805', '', '', 0),
(164, 'H17', 'N/A', '', '4.7µf', '4700nF', '4700000pF', '0805', '', '', 0),
(165, 'H18', 'N/A', '', '10µf', '10000nF', '10000000pF', '0805', '', '', 0),
(166, 'H19', '0805W8F4700T5E', '', '470Ω', '', '', '0805', '', '', 0),
(167, 'H20', '0805W8F5600T5E', '', '560Ω', '', '', '0805', '', '', 0),
(168, 'H21', '0805W8F5600T5E', '', '560Ω', '', '', '0805', '', '', 0),
(169, 'I01', '0805W8F1001T5E', '', '1kΩ', '', '', '0805', '', '', 0),
(170, 'I02', '0805W8F2001T5E', '', '2kΩ', '', '', '0805', '', '', 0),
(171, 'I03', '0805W8F3001T5E', '', '3kΩ', '', '', '0805', '', '', 0),
(172, 'I04', '0805W8F1002T5E', '', '10kΩ', '', '', '0805', '', '', 0),
(173, 'I05', '0805W8F1912T5E', '', '19.1kΩ', '', '', '0805', '', '', 0),
(174, 'I06', '0805W8F5362T5E', '', '53.6kΩ', '', '', '0805', '', '', 0),
(175, 'I07', '0805W8F8062T5E', '', '80.6kΩ', '', '', '0805', '', '', 0),
(176, 'I08', 'CRCW0805100KFKEA', '', '100kΩ', '', '', '0805', '', '', 0),
(177, 'I09', 'CRCW0805280KFKEA', '', '280kΩ', '', '', '0805', '', '', 0),
(178, 'I10', '0805W8F5363T5E', '', '536kΩ', '', '', '0805', '', '', 0),
(179, 'I11', 'C1206C103K1RACTU', '', '0.01µF', '10nF', '10000pF', '1206', '', '', 0),
(180, 'I12', 'CL31A106KOHNNNE', '', '10µf', '10000nF', '10000000pF', '1206', '', '', 0),
(181, 'I13', '1206W4F5600T5E', '', '560Ω', '', '', '1206', '', '', 0),
(182, 'I14', 'RCS12060000Z0EA', '', '0Ω', '', '', '1206', '', '', 0),
(183, 'I15', '1206W4F150JT5E', '', '15Ω', '', '', '1206', '', '', 0),
(184, 'I16', 'CRCW120633R0FKEA', '', '33Ω', '', '', '1206', '', '', 0),
(185, 'I17', '1206W4F1500T5E', '', '150Ω', '', '', '1206', '', '', 0),
(186, 'I18', 'CRCW1206200RJNEA', '', '200Ω', '', '', '1206', '', '', 0),
(187, 'I19', '1206W4F1001T5E', '', '1kΩ', '', '', '1206', '', '', 0),
(188, 'I20', 'RK73H2BTTD1101F', '', '1.1kΩ', '', '', '1206', '', '', 0),
(189, 'I21', '1206W4F2001T5E', '', '2kΩ', '', '', '1206', '', '', 0),
(190, 'CAJ1/01', '1206W4F2401T5E', '', '2.4kΩ', '', '', '1206', '', '', 0),
(191, 'CAJ1/02', 'CRCW12062K55FKEA', '', '2.55kΩ', '', '', '1206', '', '', 0),
(192, 'CAJ1/03', 'RS-06K2701FT', '', '2.7kΩ', '', '', '1206', '', '', 0),
(193, 'CAJ1/04', '1206W4F5601T5E', '', '5.6kΩ', '', '', '1206', '', '', 0),
(194, 'CAJ1/05', 'RS-06K6801FT', '', '6.8kΩ', '', '', '1206', '', '', 0),
(195, 'CAJ1/06', '1206W4F1002T5E', '', '10kΩ', '', '', '1206', '', '', 0),
(196, 'CAJ1/07', '1206W4F1002T5E', '', '10kΩ', '', '', '1206', '', '', 0),
(197, 'CAJ1/08', '1206W4F1002T5E', '', '10kΩ', '', '', '1206', '', '', 0),
(198, 'CAJ1/09', '1206W4F1002T5E', '', '10kΩ', '', '', '1206', '', '', 0),
(199, 'CAJ1/10', 'CRCW120610K0FKEA', '', '10kΩ', '', '', '1206', '', '', 0),
(200, 'CAJ1/11', 'CRCW120610K0FKEA', '', '10kΩ', '', '', '1206', '', '', 0),
(201, 'CAJ1/12', 'CRCW120627K0FKEA', '', '27kΩ', '', '', '1206', '', '', 0),
(202, 'CAJ1/13', 'CRCW120627K0FKEA', '', '27kΩ', '', '', '1206', '', '', 0),
(203, 'CAJ1/14', '1206W4F1003T5E', '', '100kΩ', '', '', '1206', '', '', 0),
(204, 'CAJ1/15', '1206W4F1003T5E', '', '10kΩ', '', '', '1206', '', '', 0),
(205, 'CAJ1/16', 'RS-06K2003FT', '', '200kΩ', '', '', '1206', '', '', 0),
(206, 'CAJ1/17', 'CRCW1206220KJNEA', '', '220kΩ', '', '', '1206', '', '', 0),
(207, 'CAJ1/18', '1206W4F2323T5E', '', '232kΩ', '', '', '1206', '', '', 0),
(208, 'CAJ1/19', '1206W4F1004T5E', '', '1MΩ', '', '', '1206', '', '', 0),
(209, 'CAJ1/20', '1206W4F1004T5E', '', '1MΩ', '', '', '1206', '', '', 0),
(210, 'CAJ1/21', '1206W4F1004T5E', '', '1MΩ', '', '', '1206', '', '', 0),
(211, 'CAJ1/22', 'CRCW12061M00JNEA', '', '1MΩ', '', '', '1206', '', '', 0),
(212, 'CAJ1/23', 'RTA03-4D102JTP', '', '1kΩ', '', '', 'Arrays', '', '', 0),
(213, 'CAJ1/24', '4D03WGJ0102T5E', '', '1kΩ', '', '', 'Arrays', '', '', 0),
(214, 'CAJ1/25', '4D03WGJ0103T5E', '', '10kΩ', '', '', 'Arrays', '', '', 0),
(215, 'CAJ1/26', '4D03WGJ0103T5E', '', '10kΩ', '', '', 'Arrays', '', '', 0),
(216, 'CAJ1/27', 'RTA03-4D331JTP', '', '330kΩ', '', '', 'Arrays', '', '', 0),
(217, 'CAJ2/led01', '1N4448WS', '', '', '', '', '', '', '', 0),
(218, 'CAJ2/led02', '1N5819W-7-F (SL)', '', '', '', '', '0603', '', '', 0),
(219, 'CAJ2/led03', 'BAT54C (L43)', '', '', '', '', '', '', '', 0),
(220, 'CAJ2/led04', 'BAT54S (KL4)', '', '', '', '', '0603', '', '', 0),
(221, 'CAJ2/led05', 'CAPACITOR DE TANTALIO', '', '', '', '', '0603', '', '', 0),
(222, 'CAJ2/led06', 'CC453232-681KL', '', 'INDUCTOR 680uH', '', '', '', '', '', 0),
(223, 'CAJ2/led07', 'CGL-3528RGB', '', 'LED AMIBA RGB', '', '', '', '', '', 0),
(224, 'CAJ2/led08', 'GBG-C191TFKT-5A', '', 'LED ROSA', '', '', '', '', '', 0),
(225, 'CAJ2/led09', 'GBG-C192KSKT', '', 'LED AMARILLO', '', '', '', '', '', 0),
(226, 'CAJ2/led10', 'GBG-C192KSKT', '', 'LED AMARILLO', '', '', '', '', '', 0),
(227, 'CAJ2/led11', 'GBG-C192KSKT', '', 'LED AMARILLO', '', '', '', '', '', 0),
(228, 'CAJ2/led12', '', '', 'LED NARANJA', '', '', '', '', '', 0),
(229, 'CAJ2/led13', 'GBGM-C191TGKT-5A', '', 'LED VERDE', '', '', '', '', '', 0),
(230, 'CAJ2/led14', 'GBG-T3528RGB', '', 'LED MIUVA RGB', '', '', '', '', '', 0),
(231, 'CAJ2/led15', 'GBG-T3528TS-6L', '', 'LED BLANCO ARRA', '', '', '', '', '', 0),
(232, 'CAJ2/led16', 'GBG-T3528TS-6L', '', '', '', '', '', '', '', 0),
(233, 'CAJ3/led01', 'GBG-T5050TS-18L', '', '', '', '', '0603', '', '', 0),
(234, 'CAJ3/led02', 'GBG-T5050TS-18L', '', '', '', '', '0603', '', '', 0),
(235, 'CAJ3/led03', 'GBG-T5050TS-18L', '', '', '', '', '0603', '', '', 0),
(236, 'CAJ3/led04', 'GBG-T5050TS-18L', '', '', '', '', '', '', '', 0),
(237, 'CAJ3/led05', 'GBG-T670KRL', '', '', '', '', '', '', '', 0),
(238, 'CAJ3/led06', 'GBWB-C191TBKT-5A', '', 'LED AZUL', '', '', '0603', '', '', 0),
(239, 'CAJ3/led07', 'GTG1608SURC-W', '', 'LED ROJO', '', '', '', '', '', 0),
(240, 'CAJ3/led08', 'GTG1608UBGC-W', '', 'LED VERDE DIFUSO', '', '', '0603', '', '', 0),
(241, 'CAJ3/led09', 'GTG1608UBGC-W', '', 'LED VERDE DIFUSO', '', '', '0603', '', '', 0),
(242, 'CAJ3/led10', 'JY3528RGB SMD-LED', '', '', '', '', '', '', '', 0),
(243, 'CAJ3/led11', 'MMBD4148 (KA2)', '', '', '', '', '0603', '', '', 0),
(244, 'CAJ3/led12', 'MMBT3904 (1AM)', '', '', '', '', '0603', '', '', 0),
(245, 'CAJ3/led13', 'MMBT3906 (2A)', '', '', '', '', '', '', '', 0),
(246, 'CAJ4/led01', 'ZYW-15UGC-T8', '', 'LED VERDE', '', '', '', '', '', 0),
(247, 'CAJ4/led02', 'ZYW-15UGC-T8', '', 'LED VERDE', '', '', '', '', '', 0),
(248, 'CAJ4/led03', 'ZYW-15URC-T8', '', 'LED ROJO', '', '', '', '', '', 0),
(249, 'CAJ4/led04', 'C0805C681J2RACTU', '', 'LED ROJO', '', '', '', '', '', 0),
(250, 'CAJ4/led05', '', '', '', '', '', '', '', '', 0),
(251, 'CAJ5/01', 'CGA4J2X7R1H104K125AE', '', '0.1µF', '100nF', '100000pF', '0805', '', '', 0),
(252, 'CAJ5/02', 'RS-05K1053FT', '', '100kΩ', '', '', '0805', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;