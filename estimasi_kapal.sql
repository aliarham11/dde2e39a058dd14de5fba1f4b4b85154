-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2015 at 09:33 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `estimasi_kapal`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `parts_id` int(11) NOT NULL,
  `actual` double NOT NULL,
  `estimate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `finish` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `difficulty` varchar(255) NOT NULL,
  `margin` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `difficulty`, `margin`) VALUES
(2, 'Easy', 10),
(3, 'Normal', 5),
(4, 'Hard', 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `dwt` int(11) NOT NULL,
  `harga_pelat` int(11) NOT NULL,
  `machinery_cost` int(11) NOT NULL,
  `construction_cost` int(11) NOT NULL,
  `tukar_dolar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ship_parts`
--

CREATE TABLE IF NOT EXISTS `ship_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `ship_parts`
--

INSERT INTO `ship_parts` (`id`, `parent_id`, `name`) VALUES
(1, 24, 'Hull Part'),
(2, 1, 'Steel plate and profile'),
(3, 1, 'Hull outfit, deck machiney and accommodation'),
(4, 1, 'Piping, valves and fittings'),
(5, 1, 'Cago tank coating, painting & cathodic rotection'),
(6, 1, 'Fire fighting, life saving and safety equipment'),
(7, 1, 'Hull spare part, tool, and inventory'),
(8, 24, ' Machinery Part'),
(9, 8, 'Propulsion system and accessories'),
(10, 8, ' Auxiliary diesel engine and accessories'),
(11, 8, 'Other machinery & outfit in E/R'),
(12, 8, 'Pipe, valves, and fitting'),
(13, 8, 'Machinery spare part and tool'),
(14, 24, 'Electric Part'),
(15, 14, 'Electric power source and accessories'),
(16, 14, ' Lighting equipment & outfitting'),
(17, 14, 'Radio and navigation equipment'),
(18, 14, 'Cable and electric equipment'),
(19, 14, 'Electric spare part and tool'),
(20, 24, 'Construction cost'),
(21, 20, 'Consumable material, rental equipment and labor'),
(22, 24, 'Launching and testing'),
(23, 24, 'Inspection & survey'),
(24, 30, 'DIRECT COST'),
(25, 28, 'Design cost'),
(26, 28, 'Insurance cost'),
(27, 28, 'Miscellaneous cost'),
(28, 30, 'INDIRECT COST'),
(29, 31, 'MARGIN'),
(30, 31, 'GRAND TOTAL'),
(31, NULL, 'GRAND TOTAL+MARGIN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`) VALUES
(1, 'galih', '6b99d492429bd81db816ca47a8224455', 'Galih Putera NS'),
(2, 'yoga', '807659cd883fc0a63f6ce615893b3558', 'Yoga Aliarham'),
(3, 'baskara', '4729d324bfdc580fd929db152d911dc5', 'Baskara');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
