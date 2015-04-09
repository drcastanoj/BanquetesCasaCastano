-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2015 a las 01:19:46
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `work`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `imgPrincipal` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `nombre`, `descripcion`, `imgPrincipal`, `fecha`) VALUES
(1, '15s Valentina', 'Una Gran Fiesta', 'valentina/valen01.jpg', '2014-05-10'),
(2, 'Mi Primera Comunion Nicolas', 'Revivimos un fiesta muy divertida. ', 'mpc_nicolas/mpc_nicolas05.jpg', '2014-12-14'),
(3, 'Mis 15s Vanessa', 'Alegria y elegancia, en los quinces años de Vaness', 'mqa_vanessa/mqa_vanessa01.JPG', '2014-11-22'),
(4, 'Nuestra Boda Daniela y Cristian', 'Un evento inolvidable', 'nb_daniela/nb_daniela05.jpg', '2014-06-07'),
(5, 'Valentina Mi Primera Comunion', 'Revivimos una fiesta llena de dulzura, diversion y', 'mpc_valentina/mpc_valentina05.jpg', '2014-11-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE IF NOT EXISTS `evento` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `tipoFiesta` varchar(30) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `imgPrincipal` varchar(50) NOT NULL,
  `imgIcono` varchar(50) NOT NULL,
  `miniDescripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipoFiesta` (`tipoFiesta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id`, `tipoFiesta`, `descripcion`, `imgPrincipal`, `imgIcono`, `miniDescripcion`) VALUES
(1, 'Quinces', 'Hacemos de tus Quince Años una Fiesta Inolvidable', 'quinces/quinces01.jpg', 'quinces01.jpg', 'Disfruta de una fiesta inolvidable. '),
(2, 'Boda', 'Un dia especial, y sabemos lo importante que es para ti', 'boda/boda01.jpg', 'boda/boda01.jpg', 'Haz de este día, un día Magnifico'),
(3, 'Primera Comunion', 'Uno de los dias mas importantes de nuestras vidas, es el dia que recibimos al señor por primera vez, vuelve este dia inolvidable. ', 'mpc/mpc01.jpg', 'mpc/mpc01.jpg', 'Convierte esta alegría en inolvidable'),
(4, 'Fiesta Infantil', 'Recreamos una fiesta divertida alegre y llena de color.', 'infantil/01.JPG', 'infantil/01.JPG', 'Disfruta de una fiesta muy colorida'),
(5, 'Cumpleaños', 'Cada año de vida es importante. Que mejor manera que celebrarlo a lo grande', 'cumpleanos/01.JPG', 'cumpleanos/01.JPG', 'Celebra tu cumpleaños con nosotros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE IF NOT EXISTS `imagen` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `evento` int(3) DEFAULT NULL,
  `servicio` int(5) DEFAULT NULL,
  `blog` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_s` (`servicio`),
  KEY `i_e` (`evento`),
  KEY `i_b` (`blog`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `nombre`, `evento`, `servicio`, `blog`) VALUES
(1, 'quinces/quinces02.jpg', 1, NULL, NULL),
(2, 'quinces/quinces03.jpg', 1, NULL, NULL),
(3, 'quinces/quinces04.jpg', 1, NULL, NULL),
(4, 'quinces/quinces05.jpg', 1, NULL, NULL),
(5, 'quinces/quinces06.jpg', 1, NULL, NULL),
(6, 'quinces/quinces07.jpg', 1, NULL, NULL),
(7, 'quinces/quinces08.jpg', 1, NULL, NULL),
(8, 'boda/boda01.jpg', 2, NULL, NULL),
(9, 'boda/boda02.jpg', 2, NULL, NULL),
(10, 'boda/boda03.jpg', 2, NULL, NULL),
(11, 'boda/boda04.jpg', 2, NULL, NULL),
(12, 'boda/boda05.jpg', 2, NULL, NULL),
(13, 'boda/boda06.jpg', 2, NULL, NULL),
(14, 'boda/boda07.jpg', 2, NULL, NULL),
(15, 'mpc/mpc02.jpg', 3, NULL, NULL),
(16, 'mpc/mpc03.jpg', 3, NULL, NULL),
(17, 'mpc/mpc04.jpg', 3, NULL, NULL),
(18, 'mpc/mpc05.jpg', 3, NULL, NULL),
(19, 'mpc/mpc06.jpg', 3, NULL, NULL),
(20, 'mpc/mpc07.jpg', 3, NULL, NULL),
(21, 'mpc/mpc08.jpg', 3, NULL, NULL),
(22, 'mpc_valentina/mpc_valentina01.jpg', NULL, NULL, 5),
(23, 'mpc_valentina/mpc_valentina02.jpg', NULL, NULL, 5),
(24, 'mpc_valentina/mpc_valentina03.jpg', NULL, NULL, 5),
(25, 'mpc_valentina/mpc_valentina04.jpg', NULL, NULL, 5),
(26, 'mpc_valentina/mpc_valentina06.jpg', NULL, NULL, 5),
(27, 'nb_daniela/nb_daniela01.jpg', NULL, NULL, 4),
(28, 'nb_daniela/nb_daniela02.jpg', NULL, NULL, 4),
(29, 'nb_daniela/nb_daniela03.jpg', NULL, NULL, 4),
(30, 'nb_daniela/nb_daniela04.jpg', NULL, NULL, 4),
(31, 'nb_daniela/nb_daniela06.jpg', NULL, NULL, 4),
(32, 'mqa_vanessa/mqa_vanessa02.jpg', NULL, NULL, 3),
(33, 'mqa_vanessa/mqa_vanessa03.jpg', NULL, NULL, 3),
(34, 'mqa_vanessa/mqa_vanessa04.jpg', NULL, NULL, 3),
(35, 'mqa_vanessa/mqa_vanessa05.jpg', NULL, NULL, 3),
(36, 'mqa_vanessa/mqa_vanessa06.jpg', NULL, NULL, 3),
(42, 'mpc_nicolas/mpc_nicolas02.jpg', NULL, NULL, 2),
(43, 'mpc_nicolas/mpc_nicolas03.jpg', NULL, NULL, 2),
(44, 'mpc_nicolas/mpc_nicolas01.jpg', NULL, NULL, 2),
(45, 'mpc_nicolas/mpc_nicolas04.jpg', NULL, NULL, 2),
(46, 'mpc_nicolas/mpc_nicolas06.jpg', NULL, NULL, 2),
(47, 'valentina/valen06.jpg', NULL, NULL, 1),
(48, 'valentina/valen02.jpg', NULL, NULL, 1),
(49, 'valentina/valen03.jpg', NULL, NULL, 1),
(50, 'valentina/valen04.jpg', NULL, NULL, 1),
(51, 'valentina/valen05.jpg', NULL, NULL, 1),
(52, 'infantil/02.jpg', 4, NULL, NULL),
(53, 'infantil/03.jpg', 4, NULL, NULL),
(54, 'infantil/04.jpg', 4, NULL, NULL),
(55, 'infantil/05.jpg', 4, NULL, NULL),
(56, 'infantil/06.jpg', 4, NULL, NULL),
(57, 'infantil/07.jpg', 4, NULL, NULL),
(58, 'infantil/08.jpg', 4, NULL, NULL),
(59, 'cumpleanos/02.JPG', 5, NULL, NULL),
(60, 'cumpleanos/03.JPG', 5, NULL, NULL),
(63, 'cumpleanos/04.JPG', 5, NULL, NULL),
(64, 'cumpleanos/05.JPG', 5, NULL, NULL),
(65, 'cumpleanos/06.JPG', 5, NULL, NULL),
(66, 'cumpleanos/07.JPG', 5, NULL, NULL),
(67, 'cumpleanos/08.JPG', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `evento` int(5) NOT NULL,
  `servicio` int(5) NOT NULL,
  PRIMARY KEY (`evento`,`servicio`),
  KEY `it_s` (`servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`evento`, `servicio`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(2, 4),
(3, 5),
(4, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(5, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(5, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(5, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(5, 13),
(1, 15),
(2, 15),
(5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE IF NOT EXISTS `mensaje` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` int(12) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `asunto` varchar(60) DEFAULT NULL,
  `mensaje` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE IF NOT EXISTS `servicio` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `imgPrincipal` varchar(50) NOT NULL,
  `imgIcono` varchar(30) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `nombre`, `imgPrincipal`, `imgIcono`, `descripcion`) VALUES
(1, 'Pasabocas', 'servicios/pasaboca01.jpg', 'servicios/pasaboca01.jpg', 'Difruta de los mas ricos pasabocas'),
(2, 'Decoracion', 'quinces/quinces02.jpg', 'quinces/quinces02.jpg', 'TOdo tipo de decoracion'),
(3, 'Fuente Chocolate', 'servicios/fuenteChocolate.jpg', 'servicios/fuenteChocolate.jpg', 'Disfruta de una deliciosa Fuente de Chocolate, llena de dulces'),
(4, 'Carro Antiguo', 'servicios/limosica.jpg', 'servicios/limosina.jpg', 'Elige una de nuestros Carros Antiguos'),
(5, 'Recreacion', 'servicios/recreacion.jpg', 'servicios/recreacion.jpg', 'Diviertete con la mejor recreacion y animacion para tu fiesta'),
(6, 'Hora Loca', 'servicios/horaloca.jpg', 'servicios/horaloca.jpg', 'Disfruta de una rumba muy colorida'),
(7, 'Cupcakes', 'servicios/cupcakes.jpg', 'servicios/cupcakes.jpg', 'Perzonaliza tu evento con un delicioso Cupcakes'),
(8, 'Grupos Musicales', 'servicios/musical.jpg', 'servicios/musical.jpg', 'Vive tus eventos con música en vivo'),
(9, 'Fotografia', 'servicios/fotografia.jpg', 'servicios/fotografia.jpg', 'La mejores fotos en tus fiestas'),
(10, 'Cocktail', 'servicios/cocktail.jpg', 'servicios/cocktail.jpg', 'Los mas ricos cocteles, con diferentes sabores y colores'),
(11, 'Video Album', 'servicios/video_album.jpg', 'servicios/video_album.jpg', 'Revive esos hermosos recuerdos en un Videl album'),
(12, 'Gastronomia', 'servicios/gastronomia.jpg', 'servicios/gastronomia.jpg', 'La mas rica y deliciosa comida Gourmet'),
(13, 'Personal de Servicio', 'servicios/mesero.jpg', 'servicios/mesero.jpg', 'El mejor personal a su Servicio'),
(14, 'Proyeccion Video Beam', 'servicios/proyeccion.jpg', 'servicios/proyeccion.jpg', 'Proyecta tus videos e imagenes'),
(15, 'Barra de Shots', 'servicios/shots.jpg', 'servicios/shots.jpg', 'Disfruta de licores de colores, flameados, con sabores variados'),
(16, 'Stand Tinto y Aromatica', 'servicios/stand.jpg', 'servicios/stand.jpg', 'Un stand permanente de tinto y aromatica');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `i_b` FOREIGN KEY (`blog`) REFERENCES `blog` (`id`),
  ADD CONSTRAINT `i_e` FOREIGN KEY (`evento`) REFERENCES `evento` (`id`),
  ADD CONSTRAINT `i_s` FOREIGN KEY (`servicio`) REFERENCES `servicio` (`id`);

--
-- Filtros para la tabla `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `it_e` FOREIGN KEY (`evento`) REFERENCES `evento` (`id`),
  ADD CONSTRAINT `it_s` FOREIGN KEY (`servicio`) REFERENCES `servicio` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
