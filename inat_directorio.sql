-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2022 a las 20:58:41
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
-- Base de datos: `inat_directorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `pais` text COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` text COLLATE utf8_unicode_ci NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` text COLLATE utf8_unicode_ci NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `pais`, `ciudad`, `nombre`, `whatsapp`, `facebook`, `foto`) VALUES
(1, 'Colombia', 'Valle del Cauca,  Cali', 'TATIANA MATEUS', '(317) 430 1530', '', ''),
(2, 'Colombia', 'Valle del Cauca, Cali', 'LUIS G. CAMPO', '(317) 430 1530', '', ''),
(3, 'México', 'Cuauhtémoc, Chihuahua', 'MA. DE LOS ÁNGELES CASTILLO DELGADO', '(625) 582 1076', '', ''),
(4, 'México', 'Tampico, Tamaulipas ', 'DRA. SARA SOFIA PÉREZ GUZMÁN', '', '', ''),
(5, 'México', 'Tampico, Tamaulipas ', 'ANA MERINOS', '(833) 266 0872', '', ''),
(6, 'México', 'Saltillo, Coahuila', 'ALEJANDRA TOVÍAZ', '(844) 608 4775', '', ''),
(7, 'México', 'Atizapán, Estado de México', 'JACQUELINNE BARRIOS BONIFAZ', '(55) 1488 6659', '', ''),
(8, 'México', 'Juriquilla, Querétaro', 'KARLA MERAZ', '(442) 351 0696', '', ''),
(9, 'México', 'Cardel, Veracruz', 'JACQUELINE MORENO GARZA', '(296) 113 5576', '', ''),
(10, 'México', 'Del. Gustavo A. Madero, Distrito Federal', 'ROSALÍA SOTELO CÓRDOBA', '(55) 4085 5018', '', ''),
(11, 'México', 'C. del Valle, Distrito Federal', 'NORMA PONCE DE LEÓN', '(55) 9147 0800', '', ''),
(12, 'México', 'Reynosa, Tamaulipas', 'NORMA LETICIA FRANCO GUTIÉRREZ', '(899) 218 1208', '', ''),
(13, 'México', 'Jardines del Moral, León, Guanajuato', 'LILIA CUEVAS', '(477) 717 1368', '', ''),
(14, 'México', 'Tijuana, Baja California', 'PATRICIA ALCÁNTARA AGUILAR', '(55) 2909 2302', '', ''),
(15, 'México', 'Del. Cuauhtémoc, Distrito Federal', 'LINDA SMITH', '(55) 2852 5715', '', ''),
(16, 'México', 'Querétaro, Querétaro', 'SABRINA VERGARA OLIVO', '(442) 270 7027', '', ''),
(17, 'México', 'Puebla, Puebla', 'DANIELA CARBALLIDO –', '(222) 134 5518', '', ''),
(18, 'México', 'Puerto Peñasco, Sonora', 'JUAN ALBERTO GAMA CABRERA', '(638) 383 2938', '', ''),
(19, 'México', 'Del. Cuauhtémoc, Distrito Federal', 'RUBÉN SALAZAR LEDEZMA', '(55) 4355 1703', '', ''),
(20, 'México', 'Puerto Vallarta, Jalisco', 'JESUS ANGULO CABRERA', '(322) 192 3364', '', ''),
(21, 'México', 'Del. Miguel Hidalgo, Distrito Federal', 'MARICARMEN PIMENTEL', '(55) 2681 5939', '', ''),
(22, 'México', 'el. Gustavo A. Madero, Distrito Federal', 'ELSA YOLANDA MELCHOR LÓPEZ', '(55) 7042 2788', '', ''),
(23, 'México', 'Tampico, Tamaulipas', 'MARYANA CHICO ARMENDÁRIZ', '(833) 120 0487', '', ''),
(24, 'México', 'Querétaro, Querétaro', 'SUSANA SHEPARD LAZARINI', '(442) 322 8479', '', ''),
(25, 'México', 'Monterrey, Nuevo León', 'MA. ANTONIETA VIÑALS GARMEDIA', '(81) 1800 2915', '', ''),
(26, 'México', 'Naucalpán, Estado de México', 'ALEX PALOMBO BALAS', '(55) 5415 2414', '', ''),
(27, 'México', 'Distrito Federal', 'GABRIELA A. ALEMÁN', '(55) 5437 8684', '', ''),
(28, 'México', 'Ixtapaluca, Estado de México', 'LORENA MARÍA TERESA TORRES MUÑOZ', '(55) 4564 9193', '', ''),
(29, 'México', 'Cancún, Quintana Roo', 'SILVIA ESTHELA ROCHA VALDÉS', '(998) 103 6331', '', ''),
(30, 'México', 'Naucalpán, Estado de México', 'MAGDALENA GUERRERO ESPINOSA', '(55) 2744 8004', '', ''),
(31, 'México', 'San Luis Potosí, San Luis Potosí ', 'ANDREA ALONSO DELGADILLO', '(444) 582 3426', '', ''),
(32, 'México', 'Guadalupe, Nuevo León', 'DIANA GABRIELA TALLABS LÓPEZ', '(81) 2035 2754', '', ''),
(33, 'México', 'Ameca, Jalisco', 'RAMÓN MONTES DE OCA GARCÍA', '(333) 441 8240', '', ''),
(34, 'México', 'Monterrey, Nuevo León', 'PATRICIA VELA AGUILERA', '(81) 1176 9070', '', ''),
(35, 'México', 'Juriquilla, Querétaro', 'ANA MEZA', '(442) 408 3600', '', ''),
(36, 'México', 'San Pedro Garza García, Nuevo León', 'MALENA VALDÉS', '(81) 1252 3579', '', ''),
(37, 'México', 'Cancún, Quintana Roo', 'KARLA RIVADENEYRA', '(998) 262 7947', '', ''),
(38, 'México', 'Callejón del Parque, Zapopan', 'CAROLINA SÁNCHEZ MELO', '(271) 152 4879', '', ''),
(39, 'México', 'Naucalpán, Estado de México', 'BELÉM VÁZQUEZ AVILÉS', '(55) 4189 1881', '', ''),
(40, 'México', 'Apaseo el Grande, Guanajuato', 'KRISNA EURÍDICE GONZÁLEZ VEGA', '(413) 114 9767', '', ''),
(41, 'México', 'San Juan Totolac, Tlaxcala', 'CHRISTIAN ENRIQUEZ', '(246) 117 5132', '', ''),
(42, 'México', 'Tuxtepec, Oaxaca', 'PATRICIA VERDEJA GARCÍA', '(287) 110 0681', '', ''),
(43, 'México', 'San Cristobal, Chiapas', 'DANIEL CABRERA MONTES', '(967) 138 6274', '', ''),
(44, 'México', 'Irapuato, Guanajuato', 'ALFREDO AGUILERA SALDAÑA', '(462) 125 1357', '', ''),
(45, 'México', 'Querétaro, Querétaro', 'JESSICA MALDONADO FICACHI', '(442) 382 9679', '', ''),
(46, 'México', 'Chihuahua, Chihuahua', 'TERESITA MEOUCHI GONZÁLEZ (LN/T)', '(614) 427 9475', '', ''),
(47, 'México', 'Guadalajara, Jalisco', 'WENDY RANGEL HORN', '(33) 1249 7030', '', ''),
(48, 'México', 'Monterrey, Nuevo León', 'MIRALDA GUAJARDO LEAL (LN/T)', '(81) 1079 4525', '', ''),
(49, 'México', 'Zapopan, Jalisco', 'CYNTHIA TRINIDAD LÓPEZ BARRERA', '(33) 1043 2546', '', ''),
(50, 'México', 'Tampico, Tamaulipas ', 'CARMEN ALICIA DELGADO TREVIÑO', '(833) 442 0753', '', ''),
(51, 'México', 'Ciudad Madero, Tamaulipas', 'NANCY OLVERA', '(833) 134 0260', '', ''),
(52, 'México', 'Monterrey, Nuevo León', 'DIANA PATRICIA VILLARREAL MARTÍNEZ', '(81) 8088 6691', '', ''),
(53, 'México', 'Guanajuato, Guanajuato', 'ARTEMISA ANAHÍ PRECIADO ROCHA', '(473) 137 6789', '', ''),
(54, 'México', 'Naucalpán, Estado de México', 'HELDANEL URIBE BALDERAS', '(55) 4090 3130', '', ''),
(55, 'México', 'León, Guanajuato', 'ANA LAURA VALLE ALVAREZ', '(477) 391 0695', '', ''),
(56, 'México', 'Naucalpán, Estado de México', 'VERÓNICA SALVADOR AGUIRRE', '(55) 5431 3823', '', ''),
(57, 'México', 'Saltillo, Coahuila', 'MARÍA CRISTINA RIOJAS ARIZPE', '(844) 122 4696', '', ''),
(58, 'México', 'Del. Tlalpan, Distrito Federal', 'GABRIELA MARTÍNEZ LUMBRERAS', '(55) 1646 9701', '', ''),
(59, 'México', 'C. del Valle, Distrito Federal', 'ADRIANA MARTÍNEZ', '(55) 2095 2408', '', ''),
(60, 'México', 'Monterrey, Nuevo León', 'PRISCILA AYALA RODRIGUEZ', '(81) 1212 7403', '', ''),
(61, 'México', 'El Olmo, Saltillo, Coahuila', 'MARÍA ANGELICA JAIME DURAN', '(844) 869 0970', '', ''),
(62, 'México', 'Apatzingan, Michoacán ', 'DR. MARCO TULIO SANTOS PÉREZ', '(453) 534 4602', '', ''),
(63, 'Estados unidos', 'Michigan', 'DRA. CLAUDIA ALEJANDRA RAMOS NÚÑEZ', '(248) 971 4410', '', ''),
(64, 'México', 'Monterrey, Nuevo León', 'PAOLA VITA', '(81) 8349 3508', '', ''),
(65, 'México', 'Tijuana, Baja California', 'VICTORIA CATALINA SALAZAR ENRÍQUEZ', '(664) 495 1469', '', ''),
(66, 'México', 'Querétaro, Querétaro', 'ROWINNA PÉREZ CRUZ', '(442) 608 3492', '', ''),
(67, 'México', 'Puerto Vallarta, Jalisco', 'PRISCILA RODRIGUEZ GUTIERREZ', '(322) 182 2477', '', ''),
(68, 'México', 'Distrito federal', 'LORENA LECHUGA', '', '', ''),
(69, 'México', 'Apatzingan, Michoacán ', 'LIC. JOSÉ DAVID SANTOS ROJAS', '(453) 534 4602', '', ''),
(70, 'México', 'Chihuahua, Chihuahua', 'CECILIA SILVA', '(614) 142 4822', '', ''),
(71, 'México', 'Cancún, Quintana Roo, ', 'KEILA MERARI DORIA', '(33) 1819 6126', '', ''),
(72, 'México', 'Apodaca, Nuevo León', 'JOSÉ GONZALEZ GARZA', '(81) 2082 6695', '', ''),
(73, 'México', 'Pachuca, Hidalgo', 'MAYELA PARGA VILLEGAS', '(771) 205 1570', '', ''),
(74, 'México', 'Salamanca, Guanajuato', 'FELICITAS GÓMEZ MARTÍNEZ', '(464) 104 0293', '', ''),
(75, 'México', 'Puebla, Puebla', 'GABRIELA EILEN MONTERO GARCÍA', '(222) 103 3930', '', ''),
(76, 'México', 'Del. Coyoacán, CDMX ', 'ITZEL GARCÍA LN/T', '(55) 2904 3498', '', ''),
(77, 'México', 'Monterrey, Nuevo León', 'AYDEE SARAI SÁNCHEZ TORRES', '(81) 1171 9547', '', ''),
(78, 'México', 'Celaya, Guanajuato', 'MARÍA DEL CARMEN ZAMUDIO GARCÍA', '(461) 206 5737', '', ''),
(79, 'México', 'Cuajimalpa, Distrito Federal', 'DRA. CLAUDIA ISABEL VALDEZ GUERRERO', '(871) 845 9920', '', ''),
(80, 'México', 'Tijuana, Baja California', 'RICARDO REYES AGUILAR', '(664) 1763998', '', ''),
(81, 'México', 'Guerrero', 'MARCELA E. ARMENTA RODRÍGUEZ', '(755) 557 4006', '', ''),
(82, 'México', 'Guanajuato, Guanajuato', 'MARÍA CONCEPCIÓN SÁMANO PATIÑO', '(411) 117 6408', '', ''),
(83, 'México', 'Queretaro, Querétaro', 'KAREN IVETTE HERRERA LÓPEZ', '(442) 250 3180', '', ''),
(84, 'México', 'Queretaro, Queretaro', 'PALOMA OLVERA', '(442) 160 3529', '', ''),
(85, 'Argentina', 'Chacabuco, Buenos Aires', 'ADRIANA DEL CARMEN VOLPE', '(549) 2352 46 3256', '', ''),
(86, 'México', 'Villahermosa, Tabasco', 'ALICE PÉREZ', '(993) 222 7652', '', ''),
(87, 'México', 'Tlapacoyan, Veracruz', 'MERCEDES GONZÁLEZ Y VEGA', '(232) 112 4595', '', ''),
(88, 'México', 'Ciudad Juárez, Chihuahua ', 'LAURA RAMÍREZ RUIZ', '(656) 607 7109', '', ''),
(89, 'México', 'Del. Álvaro Obregón, Distrito Federal', 'INMACULADA MARTA MIRANDA COMPANY', '(55) 3134 9779', '', ''),
(90, 'México', 'Distrito Federal', 'MARIANA VILLAFUERTE VENCES', '(55) 3299 1294', '', ''),
(91, 'México', 'Nuevo León', 'NOHEMÍ HINOJOSA RIVERA', '(81) 1215 7429', '', ''),
(92, 'México', 'Puebla, Puebla', 'MONICA ORDUÑO SOSA', '(222) 615 0067', '', ''),
(93, 'México', 'Ciudad Victoria, Tamaulipas ', 'CLAUDIA ELIZABETH DE LA FUENTE BADILLO', '(834) 270 0884', '', ''),
(94, 'México', 'Distrito Federal', 'ERIKA MORALES VARGAS', '(55) 6787 0743', '', ''),
(95, 'México', 'Toluca, Estado de México', 'MARISOL MAYA GORDILLO', '(722) 576 6155', '', ''),
(96, 'México', 'Tijuana, Baja California', 'ALMA ROSA GONZÁLEZ QUINTERO', '(66) 4161 4982', '', ''),
(97, 'México', 'Puebla, Puebla', 'DANIELA GUTIÉRREZ KOSEGARTEN', '(222) 662 1214', '', ''),
(98, 'México', 'San Miguel de Allende, Guanajuato', 'CLAUDIA LIZÁRRAGA SARO (DALIP KAUR)', '(415) 114 9732', '', ''),
(99, 'México', 'Ixtepec, Oaxaca', 'L.E.F. TANIA CUETO ENRÍQUEZ', '(971) 100 8809', '', ''),
(100, 'México', 'Hermosillo, Sonora', 'PRISCILLA DENISSE DE LA CRUZ LANDEROS', '(662) 120 7119', '', ''),
(101, 'México', 'Puebla, Puebla', 'MARÍA ALEJANDRA JIMÉNEZ ALVARADO', '(222) 293 4554', '', ''),
(102, 'México', 'Coacalco, Estado de México', 'NATALIA X. DOMINGUEZ DIEZ', '(55) 2779 8358', '', ''),
(103, 'México', 'Salina Cruz, Oaxaca', 'LETICIA PINEDA PEÑA', '(971) 104 54 44', '', ''),
(104, 'México', 'Cuautitlán, Estado de México', 'DRA. CINTHIA SEMIRAMIS ORTIZ GARCÍA', '(55) 4342 4726', '', ''),
(105, 'México', 'Cuautitlán Izcalli, Estado de México', 'MARÍA GUADALUPE RODRÍGUEZ ÁLVAREZ', '(55) 3233 5398', '', ''),
(106, 'México', 'San Andrés Cholula, Puebla', 'INGRID VICTORIA GAMEZ GUADARRAMA', '(222) 172 6225', '', ''),
(107, 'México', 'Saltillo, Coahuila', 'IVY YADIRA RODRÍGUEZ MARTINEZ', '(844) 160 7075', '', ''),
(108, 'México', 'Del. Coyoacán, Distrito Federal', 'SOFÍA NAYELI GARCÍA MONROY', '(55) 3973 9197', '', ''),
(109, 'Estados unidos', 'San Antonio, Texas', 'CLAUDIA FERNANDA WESCH', '(210) 712 3927', '', ''),
(110, 'México', 'Jalpan de Serra, Querétaro', 'MARÍA GUADALUPE PEDRAZA SERRATO', '(441) 1074519', '', ''),
(111, 'México', 'San Miguel de Allende, Guanajuato', 'GRACE RODRÍGUEZ GONZÁLEZ', '(55) 138 65828', '', ''),
(112, 'Estados unidos', 'McAllen, Texas', 'DAMARYTZ SANDOVAL', '(956) 997 4799', '', ''),
(113, 'México', 'Durango, Durango', 'DALIA MONTELONGO', '6182676211', '', ''),
(114, 'México', 'Jesus Maria, Aguascalientes', 'ELVIA ALEJALDRE', '(722) 309 6374', '', ''),
(115, 'México', 'Xalapa, Veracruz', 'LIC. AURORA TURCOTT PÉREZ', '(228) 812 5631', '', ''),
(116, 'México', 'Juriquilla, Querétaro', 'DANIELA DOMÍNGUEZ MOKSHA', '(55) 1288 2796', '', ''),
(117, 'México', 'Oaxaca, Oaxaca', 'SANTOS CORTES CASTRO', '(951) 117 0660', '', ''),
(118, 'México', 'Cuernavaca, Morelos', 'SIONELA VIVIAN PARRILLA DÍAZ', '(777) 133 1636', '', ''),
(119, 'México', 'Tlajomulco de Zúñiga, Jalisco', 'HILDEGARD IVONNE ÁLVAREZ HORN', '(228) 277 8294', '', ''),
(120, 'México', 'Distrito Federal', 'LIC. NATUROPATA JUDITH ESCOBAR GARCÍA', '2291 15 91 57', '', ''),
(121, 'México', 'Ciudad de Mexico ', 'LIC. NATUROPATÍA JUDITH ESCOBAR GARCIA ', '2291159157', '', ''),
(122, 'Estados unidos', 'Dallas, Texas', 'EDNA DINORAH SIERRA RODRÍGUEZ', '(469) 497 9669', '', ''),
(123, 'México', 'Guanajuato, Guanajuato', 'LN. MARCELA RANGEL SALAZAR', '(473) 101 7580', '', ''),
(124, 'México', 'Guadalajara, Jalisco', 'DRA. CINTHYA AVALOS DE LA CABADA', '(33) 3640 0547', '', ''),
(125, 'México', 'Ciudad Madero, Tamaulipas', 'CATALINA GURROLA MAYA', '(833) 532 0395', '', ''),
(126, 'México', 'Puebla, Puebla', 'JESSICA NAVARRO BEJARANO', '(222) 132 7776', '', ''),
(127, 'México', 'León, Guanajuato', 'FLOR DEL ROCIO LOYOLA SUAREZ', '(477) 670-09-06', '', ''),
(128, 'México', 'San Luis Potosí, San Luis Potosí ', 'LINDA JENNIFER LOPEZ CHAVEZ', '(444) 452 5641', '', ''),
(129, 'México', 'Puebla, Puebla', 'Q.F.B.ENRIQUETA BALDERAS PALACIOS', '(222) 854 8451', '', ''),
(130, 'México', 'Monterrey, Nuevo León', 'ROMAR CANTÚ LOZANO', '(811) 277 0643', '', ''),
(131, 'México', 'Morelia, Michoacán', 'MERIT ARACELI PÁRAMO AGUADO', '44 3474 6235', '', ''),
(132, 'México', 'Apodaca, Nuevo León', 'ELVIRA BAUTISTA MARTÍNEZ', '(811) 0788 530', '', ''),
(133, 'México', 'Toluca, Estado de México', 'ALFONSO PEREZ ALVAREZ', '(55) 7892 5145', '', ''),
(134, 'Estados unidos', 'Nueva York', 'LAILA ARACELY BACRE GUZMÁN', '(914) 468 5164', '', ''),
(135, 'Estados unidos', 'San Antonio, Texas', 'ELIA LINA ORTEGA SILVA', '(210) 971 7363', '', ''),
(136, 'México', 'Guadalajara, Jalisco', 'EDITH ARCOS MENA', '(33) 1546 0696', '', ''),
(137, 'México', 'Ciudad del Carmen, Campeche', 'KAREN SOSA LÓPEZ', '(921) 270 9811', '', ''),
(138, 'México', 'Reynosa, Tamaulipas', 'DRA. JOHANA LIZETH CANTU PÉREZ', '(899) 454 9250', '', ''),
(139, 'México', 'C. del Valle, Distrito Federal', 'PAOLA CLAUDIA GONZÁLEZ ALARCÓN', '(55) 3451 4819', '', ''),
(140, 'México', 'Chetumal, Quintana Roo', 'DRA. ANA LUISA VILLANUEVA LLANES', '(983) 2110 675', '', ''),
(141, 'México', 'Juriquilla, Querétaro', 'KARLA SÁENZ FERNÁNDEZ', '(442) 239 3442', '', ''),
(142, 'México', 'Celaya, Guanajuato', 'SANDRA ELIZABETH JASSO JUÁREZ', '(461) 199 8595', '', ''),
(143, 'Estados unidos', 'Armonk, Nueva York', 'MARÍA CRISTINA TORRES GONZÁLEZ', '(917) 471 3437', '', ''),
(144, 'México', 'San José del Cabo, Baja California Sur', 'SARA CHUNG', '(624) 688 9701', '', ''),
(145, 'México', 'Del. Álvaro Obregón, Distrito Federal', 'PALOMA ZEPEDA ROCHA', '(55) 4343 2823', '', ''),
(146, 'México', 'Veracruz, Veracruz', 'LIC. NATUROPATA ARELY A. LOAIZA MARTINEZ', '(229) 133 3567', '', ''),
(147, 'México', 'Querétaro, Querétaro', 'MARICHUY OROS LUENGO', '(442) 139 0462', '', ''),
(148, 'México', 'Irapuato, Guanajuato', 'CARLA GABRIELA DE NICOLAS RANGEL', '(462) 100 2729', '', ''),
(149, 'México', 'Juriquilla, Querétaro', 'PAULINA CLODET UVENCE ALCARAZ', '(442) 561 2081', '', ''),
(150, 'México', 'Monterrey, Nuevo León', 'NARCIZO ALBERTO GÓMEZ REYES', '(81) 1010 0990', '', ''),
(151, 'México', 'C. del Valle, Distrito Federal', 'ISRAEL CHIRINO CEDILLO', '(55) 6192 1232', '', ''),
(152, 'República dominicana', 'Santo Domingo', 'ESPERANZA BENÍTEZ', '(809) 710 7915', '', ''),
(153, 'México', 'Toluca, Estado de México', 'DINA GARDENIA SOLIS DE PAZ', '(722) 350 0620', '', ''),
(154, 'México', 'Villahermosa, Tabasco', 'MARÍA FERNANDA FONTANA', '(993) 117 6659', '', ''),
(155, 'México', 'Cuernavaca, Morelos', 'ROSA MARTHA GALAS VALDÉS', '(55) 1358 9912', '', ''),
(156, 'México', 'Ciudad Madero, Tamaulipas', 'GENARO CAMPILLO DURAN', '(833) 309 6443', '', ''),
(157, 'México', 'Puebla, Puebla', 'ALEJANDRA RODRÍGUEZ ÁLVAREZ', '(222) 505 3901', '', ''),
(158, 'México', 'CDMX', 'LORENA MALDONADO CÁMARA', '(55) 4992 7269', '', ''),
(159, 'México', 'Atizapán, Estado de México', 'L. ERENDIDA PAREDES VEGA', '(55) 4906 3508', '', ''),
(160, 'México', 'Cancún, Quintana Roo', 'DIANA ORTIZ MARTÍNEZ', '(998) 147 0845', '', ''),
(161, 'México', 'Xalapa, Veracruz', 'ZEIDY ORELLÀN VERA', '(228) 114 2721', '', ''),
(162, 'México', 'Guadalajara, Jalisco', 'KAREN GUTIÉRREZ GALLARDO', '(333) 676 3480', '', ''),
(163, 'México', 'Zacatecas, Zacatecas', 'CLAUDIA A. CASTRO BORREGO', '(492) 117 5176', '', ''),
(164, 'México', 'San Andrés Cholula, Puebla', 'MARTHA ELENA NÚÑEZ LÓPEZ', '(222) 140 3881', '', ''),
(165, 'México', 'San José del Cabo, Baja California Sur', 'ADRIANA JALIFE CASTAÑOS', '(984) 804 9883', '', ''),
(166, 'México', 'Morelia, Michoacán', 'LILIANA MUÑIZ SÁNCHEZ', '(331) 173 6414', '', ''),
(167, 'México', 'Tlalnepantla, Estado de México', 'MARÍA GUADALUPE RIVERA MENDOZA', '', '', ''),
(168, 'México', 'Córdoba, Veracruz', 'SUSANA CASTILLO LUNA', '(271) 140 1841', '', ''),
(169, 'México', 'Tampico, Tamaulipas ', 'IDALIA RUIZ DOMÍNGUEZ', '(833) 302 6867', '', ''),
(170, 'Costa rica', 'Heredia', 'PAOLA CASTRO ALVARADO', '506 7293 8994', '', ''),
(171, 'México', 'Zapopan, Jalisco ', 'MARIA DEL ROSARIO SAINZ JIMENEZ', '(33) 1282 4495', '', ''),
(172, 'México', 'Guadalajara, Jalisco', 'SILVIA TRIGUEROS VELÁZQUEZ', '(33) 1569 4868', '', ''),
(173, 'México', 'Matamoros, Tamaulipas', 'MA. GUADALUPE DÍAZ VARGAS', '(956) 208 2036', '', ''),
(174, 'México', 'Valle Hermoso, Tamaulipas', 'ANA KAREN RANGEL VELASCO', '(868) 126 8301', '', ''),
(175, 'Argentina', 'Buenos Aires', 'SILVIA ZUPPELLI', '9115490 5460', '', ''),
(176, 'México', 'Guadalajara, Jalisco', 'GEISHI ESTHER GARCÍA SÁNCHEZ', '(33) 1455 2587', '', ''),
(177, 'México', 'CDMX ', 'ALEJANDRINA BUSTAMANTE MADRID', '(55) 3966 1438', '', ''),
(178, 'México', 'Puerto Morelos, Quintana Roo', 'DANIA CECILIA HERNÁNDEZ RAMÍREZ', '(998) 202 7649', '', ''),
(179, 'México', 'Fresnillo, Zacatecas', 'CARLA YURIDIA SERNA SANDOVAL', '(449) 274 9788', '', ''),
(180, 'México', 'Yucatán, Mérida ', 'FABIOLA GONZÁLEZ PALACIOS', '(999) 107 9002', '', ''),
(181, 'México', 'Reynosa, Tamaulipas', 'BRICIA VICTORIA GALVEZ MIRANDA', '(899) 229 3378', '', ''),
(182, 'México', 'Montemorelos, Nuevo León', 'JUDITH CASTILLO ESTRELLA', '(826) 126 7549', '', ''),
(183, 'México', 'Pachuca, Hidalgo', 'DANIELLA ROSALES LUJAN', '(477) 144 6179', '', ''),
(184, 'México', 'Monterrey, Nuevo León', 'AIDA YOLANDA CHAVIRA JAVALERA', '(614) 137 9140', '', ''),
(185, 'México', 'Puebla, Puebla', 'SOLEDAD BEATRIZ BALTAZAR CRUZ', '(222) 112 7309', '', ''),
(186, 'México', 'Yucatan, Merida', 'FABIOLA GONZALEZ PALACIOS', '9991079002', '', ''),
(187, 'Panamá', 'Panamá, Panamá', 'GLENDY MILAGRO OLIVEROS ROMERO', '507 60871440', '', ''),
(188, 'Chile', 'San Pedro de Atacama', 'MARIANA ELIZABETH LARA VENEGAS ', '56946915171', '', ''),
(189, 'México', 'Queretaro, Queretaro', 'QUITZIA QUINTO SOL', '4421915045', '', ''),
(190, 'México', 'Queretaro, Queretaro', 'ROSA MARIA ALEJANDRA ANGELES HERRERA', '442 8241307', '', ''),
(191, 'México', 'Ags, Aguascalientes', 'ALMA AZUCENA GUTIERREZ MONTANTES ', '449 123 3826', '', ''),
(192, 'México', 'Ciudad de Mexico ', 'SARAHI KATTY VAZQUEZ HERNANDEZ ', '5535835524', '', ''),
(193, 'México', 'Estado de Mexico', 'GABRIELA GILIBERTI', '5.25583E+11', '', ''),
(194, 'México', 'Estado de Mexico', 'LAMYRI. ISKRA MARÍA GONZÁLEZ ARREDONDO', '5519599661', '', ''),
(195, 'México', 'Cuernavaca, Morelos', 'YAZMINA FUENTES HERRERA', '777 3406008', '', ''),
(196, 'México', 'Guadalajara, Jalisco', 'REBECA VALDEZ PLASCENCIA', '3311480390', '', ''),
(197, 'México', 'Ciudad de Mexico ', 'BEATRIZ ADRIANA MENDEZ VELAZQUEZ', '5576651086', '', ''),
(198, 'México', 'Estado de Mexico', 'ANA CECICLIA SANCHEZ OLIVERA ', '5525016212', '', ''),
(199, 'México', 'Guadalajara, Jalisco', 'VERONICA MANCILLA VERA', '3311858824', '', ''),
(200, 'México', 'Puebla, Puebla', 'LAURA RAMIREZ RAMIREZ ', '2223005052', '', ''),
(201, 'Estados unidos', 'San Antonio, Texas', 'ABIGAIL L. ANGULO ', '12108529892', '', ''),
(202, 'Colombia', 'Buga ', 'ANDREA DEL PILAR CHACON SOTO', '57 3163141839', '', ''),
(203, 'Estados unidos', 'San Diego, California', 'ERIKA AGUILAR ASTENGO ', '760 960 1156', '', ''),
(204, 'México', 'Miguel Aleman, Tamaulipas', 'YOLANDA VAZQUEZ RODRIGUEZ ', '(897) 100 9172', '', ''),
(205, 'México', 'Chihuahua, Chihuahua', 'DORA GUADALUPE CAMACHO VILLEGAS', '614 494 2728', '', ''),
(206, 'México', 'Matamoros, Tamaulipas', 'CLAUDIA ANGELICA GARCIA VIVEROS', '8681252141', '', ''),
(207, 'México', 'Teapa, Tabasco', 'CAROLINA DE LA CRUZ REYES', '9321001458', '', ''),
(208, 'México', 'Puebla, Puebla', 'LETICIA SANDOVAL CASTRO', '2223447669', '', ''),
(209, 'México', 'Ensenada, Baja California ', 'CLAUDIA SAMANIEGO ORTEGA ', '646 160 5087', '', ''),
(210, 'Colombia', 'Cali, Colombia', 'CHRISTIAN FERNADO VÉLEZ GONZALEZ', '316 692 8696', '', ''),
(211, 'Holanda', 'Paises Bajos, Amsterdam', 'LAURA MONDRAGON', '316 3155 5059', '', ''),
(212, 'México', 'Ciudad de Mexico ', 'FABIOLA DOMINGUEZ MEDRANO', '5560358065', '', ''),
(213, 'Colombia', 'Cali, Colombia', 'LINA MARCELA BORNACHERA POSADA', '3166993872', '', ''),
(214, 'México', 'Ciudad Juárez, Chihuahua ', 'GABRIELA DELGADO LOPEZ', '656 29893-09', '', ''),
(215, 'México', 'Celaya, Guanajuato', 'NANCY MORALES GUTIERREZ', '4611175411', '', ''),
(216, 'México', 'Villahermosa, Tabasco', 'FRANCISCA LOPEZ MENDEZ ', '9934254984', '', ''),
(217, 'México', 'Cholula, Puebla', 'VERÓNICA NAYELLI ONGAY SANCHEZ DE TAGLE', '2224909210', '', ''),
(218, 'México', 'Queretaro, Queretaro', 'NAHIELY ASERET HERNANDEZ DE LA CRUZ', '4422556160', '', ''),
(219, 'Estados unidos', 'Atlanta ', 'KAREN AGUIRRE ZARATE ', '470 3434691', '', ''),
(220, 'México', 'Ciudad de Mexico ', 'FABIOLA DE FERRER', '5521134921', '', ''),
(221, 'México', 'Aguascalientes, Aguascalientes', 'CLAUDIA TERESA MACIAS GUTIERREZ', '449 323 6561', '', ''),
(222, 'México', 'Queretaro, Queretaro', 'L.N. KAREN IVETTE HERRERA LOPEZ ', '4422503180', '', ''),
(223, 'México', 'Tuxpan, Veracruz', 'LOURDES RAMIREZ HERNANDEZ ', '7835804789', '', ''),
(224, 'México', 'Tapachula, Chiapas ', 'SONIA ERICKA LOPEZ NUÑEZ', '9621424950', '', ''),
(225, 'México', 'Ciudad de Mexico ', 'HÉCTOR GÓNZALEZ LECHUGA', '52 5527506419', '', ''),
(226, 'México', 'Cholula, Puebla', 'PATRICIA MARIA PINEDA MARTINEZ', '2223223834', '', ''),
(227, 'México', 'Estado de Mexico', 'ANA KAREN MENDEZ PACHECO', '55649821843', '', ''),
(228, 'México', 'Cuernavaca, Morelos', 'MONICA LIZZARRAGA RENDON', '5541906960', '', ''),
(229, 'México', 'Ciudad de Mexico ', 'ROXANA NALLELI BARRAGAN FLORES ', '5534880676', '', ''),
(230, 'México', 'Atlixco, Puebla', 'DANIELA ROTONDA AYALA', '2225982727', '', ''),
(231, 'Colombia', 'Bucaramanga, Santander ', 'TATIANA LATORRE ORDUZ', '57 313 431 0156 ', '', ''),
(232, 'México', 'Ciudad de Mexico ', 'VERONICA ARALI GOMEZ GOMEZ', '5579183229', '', ''),
(233, 'México', 'Estado de Mexico', 'NORA ARAUZ HERNANDEZ', '5587336202', '', ''),
(234, 'México', 'Irapuato, Guanajuato', 'GABRIELA GOMEZ PATIÑO', '4626015462', '', ''),
(235, 'México', 'Leon, Guanajuato', 'MÓNICA HERCE PÉREZ', '4771286150', '', ''),
(236, 'México', 'Jalisco ', 'NASHIRA JARUMY MATA ROLDAN', '3323103752', '', ''),
(237, 'México', 'Playa del Carmen, Quintana Roo', 'MARIA GUADALUPE PATIÑO', '9841875880', '', ''),
(238, 'México', 'Tampico, Tamaulipas', 'LILIANA CHON MILLAN', '833 324 0325', '', ''),
(239, 'México', 'Irapuato, Guanajuato', 'MARIA ALEJANDRA GOMEZ LEAL', '4621275840', '', ''),
(240, 'México', 'Villa de Alvarez, Colima ', 'ARNOLDO VIRGEN CARDENAS ', '3121327693', '', ''),
(241, 'México', 'Queretaro, Queretaro', 'LORENA PEREZ PRIETO SALDIVAR ', '4421098381', '', ''),
(242, 'México', 'Polanco, Ciudad de Mexico', 'STEPHANIE BELLO LUNA', '5512960133', '', ''),
(243, 'México', 'Zapopan, Jalisco', 'ALEXIA THALIA LOPEZ GONZALEZ', '5525631277', '', ''),
(244, 'México', 'Queretaro, Queretaro', 'LIZBETTE SANCHEZ ESPARZA', '44281855964', '', ''),
(245, 'México', 'Tlaxcala, Tlaxcala', 'ALEJANDRA JIMENEZ MONTIEL', '2464694896', '', ''),
(246, 'México', 'Tlaquepaque, Jalisco ', 'MARIANA AGUIRRE BRICEÑO', '3310810945', '', ''),
(247, 'México', 'Yucatan, Merida', 'JESSICA CASTRO HERNANDEZ ', '4151155740', '', ''),
(248, 'México', 'Chulavista, Puebla', 'LAURA XIMENA ALAMEDA SANCHEZ', '2227148191', '', ''),
(249, 'México', 'Monterrey, Nuevo Leon ', 'DRA. SOFIA SARAI ALARCON RAMOS', '811 5139767', '', ''),
(250, 'Chile', 'Santiago', 'MACARENA FLORENCIA CARRASCO SANCHEZ', '56994383530', '', ''),
(251, 'México', 'Zapopan, Jalisco', 'SUSANA LORENA MUÑOZ NAVARRO', '3338084004', '', ''),
(252, 'México', 'Ciudad del Carmen, Campeche', 'FRANCISCA PEREZ CRUZ ', '9381073231', '', ''),
(253, 'México', 'Ciudad de Mexico ', 'GISELA YASMIN PEREZ VEGA', '5513721189', '', ''),
(254, 'México', 'Salvatierra, Guanajuato', 'PAULO CESAR MEDINA GARCIA ', '4661002614', '', ''),
(255, 'México', 'Culiacan, Sinaloa', 'LIDIA LIZBETH CERON TALAMANTE', '6671039213', '', ''),
(256, 'México', 'Cholula, Puebla', 'MARÍA FERNANDA GOMEZ SOSA', '2221396411', '', ''),
(257, 'México', 'Ciudad de Mexico ', 'DAVINIA PAZ PEREZ ', '5529008275', '', ''),
(258, 'México', 'Estado de Mexico', 'MIRNA JAZMIN NUÑEZ RAMIREZ', '5532027364', '', ''),
(259, 'México', 'Matamoros, Tamaulipas', 'SOFIA GONZALEZ LERMA', '8681371085', '', ''),
(260, 'Ecuador', 'Pichincha, Quito, Ecuador.', 'CLAUDIA TARAZONA SORIA ', '59 396 715 4030', '', ''),
(261, 'México', 'Monterrey, Nuevo Leon', 'SINDY JANETTE RAMIREZ MORENO', '8118213449', '', ''),
(262, 'México', 'Rio Verde, SLP', 'ALMA ROSA RIVERA CASTILLO', '4871018648', '', ''),
(263, 'México', 'Tequisquiapan, SLP', 'MARIA FERNANDA HIGUERA GARCIA', '4443171645', '', ''),
(264, 'México', 'Panuco, Veracruz', 'FLOR CELESTE MORENO REYES', '833 444 73 94', '', ''),
(265, 'México', 'Queretaro, Queretaro', 'CYNTHIA TAMARA CORDERO FLORES', '4427214242', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dir_ciudades`
--

CREATE TABLE `dir_ciudades` (
  `ciudad_id` int(11) NOT NULL,
  `pais_id` int(11) NOT NULL,
  `ciudad` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dir_ciudades`
--

INSERT INTO `dir_ciudades` (`ciudad_id`, `pais_id`, `ciudad`) VALUES
(1, 1, 'Aguascalientes, Aguascalientes'),
(2, 2, 'Houston, Texas'),
(3, 1, 'Monterrey, Nuevo León');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dir_contactos`
--

CREATE TABLE `dir_contactos` (
  `contacto_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` text COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dir_contactos`
--

INSERT INTO `dir_contactos` (`contacto_id`, `ciudad_id`, `nombre`, `whatsapp`, `foto`) VALUES
(1, 3, 'Alex Mass', '8117026196', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dir_contacto_insignias`
--

CREATE TABLE `dir_contacto_insignias` (
  `id` int(11) NOT NULL,
  `contacto_id` int(11) NOT NULL,
  `insignia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dir_contacto_insignias`
--

INSERT INTO `dir_contacto_insignias` (`id`, `contacto_id`, `insignia_id`) VALUES
(1, 1, 1),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dir_insignias`
--

CREATE TABLE `dir_insignias` (
  `id` int(11) NOT NULL,
  `insignia` text COLLATE utf8_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dir_insignias`
--

INSERT INTO `dir_insignias` (`id`, `insignia`, `valor`, `imagen`) VALUES
(1, 'Profesional de la salud', 1, 'insignia-profesional.png'),
(2, 'Mención honorifica', 2, 'insignia-mencion.png'),
(3, 'Trofólogo Actualizado 2022', 3, 'insignia-diplomado.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dir_paises`
--

CREATE TABLE `dir_paises` (
  `pais_id` int(11) NOT NULL,
  `pais` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dir_paises`
--

INSERT INTO `dir_paises` (`pais_id`, `pais`) VALUES
(1, 'México'),
(2, 'Estados unidos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dir_ciudades`
--
ALTER TABLE `dir_ciudades`
  ADD PRIMARY KEY (`ciudad_id`),
  ADD KEY `pais_id` (`pais_id`);

--
-- Indices de la tabla `dir_contactos`
--
ALTER TABLE `dir_contactos`
  ADD PRIMARY KEY (`contacto_id`),
  ADD KEY `ciudad_id` (`ciudad_id`);

--
-- Indices de la tabla `dir_contacto_insignias`
--
ALTER TABLE `dir_contacto_insignias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacto_id` (`contacto_id`),
  ADD KEY `insignia_id` (`insignia_id`);

--
-- Indices de la tabla `dir_insignias`
--
ALTER TABLE `dir_insignias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dir_paises`
--
ALTER TABLE `dir_paises`
  ADD PRIMARY KEY (`pais_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT de la tabla `dir_ciudades`
--
ALTER TABLE `dir_ciudades`
  MODIFY `ciudad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dir_contactos`
--
ALTER TABLE `dir_contactos`
  MODIFY `contacto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dir_contacto_insignias`
--
ALTER TABLE `dir_contacto_insignias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `dir_insignias`
--
ALTER TABLE `dir_insignias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dir_paises`
--
ALTER TABLE `dir_paises`
  MODIFY `pais_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dir_ciudades`
--
ALTER TABLE `dir_ciudades`
  ADD CONSTRAINT `pais_id` FOREIGN KEY (`pais_id`) REFERENCES `dir_paises` (`pais_id`);

--
-- Filtros para la tabla `dir_contactos`
--
ALTER TABLE `dir_contactos`
  ADD CONSTRAINT `ciudad_id` FOREIGN KEY (`ciudad_id`) REFERENCES `dir_ciudades` (`ciudad_id`);

--
-- Filtros para la tabla `dir_contacto_insignias`
--
ALTER TABLE `dir_contacto_insignias`
  ADD CONSTRAINT `contacto_id` FOREIGN KEY (`contacto_id`) REFERENCES `dir_contactos` (`contacto_id`),
  ADD CONSTRAINT `insignia_id` FOREIGN KEY (`insignia_id`) REFERENCES `dir_insignias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
