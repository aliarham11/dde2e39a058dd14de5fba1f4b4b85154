-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 31, 2015 at 12:03 
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estimasi_kapal`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `actual` double NOT NULL,
  `estimate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finish` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `user_id`, `level_id`, `created_at`, `finish`) VALUES
(20, 2, 2, '2015-12-31 08:20:35', 0),
(22, 2, 2, '2015-12-31 08:38:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `margin` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `dwt` int(11) NOT NULL,
  `harga_pelat` int(11) NOT NULL,
  `machinery_cost` int(11) NOT NULL,
  `construction_cost` int(11) NOT NULL,
  `tukar_dolar` int(11) NOT NULL,
  `score_part` double DEFAULT NULL,
  `score_cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ship_parts`
--

CREATE TABLE `ship_parts` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ship_parts`
--

INSERT INTO `ship_parts` (`id`, `parent_id`, `name`) VALUES
(1, 7, 'Steel plate and profile'),
(2, 7, 'Hull outfit, deck machiney and accommodation'),
(3, 7, 'Piping, valves and fittings'),
(4, 7, 'Cago tank coating, painting & cathodic rotection'),
(5, 7, 'Fire fighting, life saving and safety equipment'),
(6, 7, 'Hull spare part, tool, and inventory'),
(7, 24, 'Hull Part'),
(8, 13, 'Propulsion system and accessories'),
(9, 13, 'Auxiliary diesel engine and accessories'),
(10, 13, 'Other machinery & outfit in E/R'),
(11, 13, 'Pipe, valves, and fitting'),
(12, 13, 'Machinery spare part and tool'),
(13, 24, 'Machinery Part'),
(14, 19, 'Electric power source and accessories'),
(15, 19, 'Lighting equipment & outfitting'),
(16, 19, 'Radio and navigation equipment'),
(17, 19, 'Cable and electric equipment'),
(18, 19, 'Electric spare part and tool'),
(19, 24, 'Electric Part'),
(20, 21, 'Consumable material, rental equipment and labor'),
(21, 24, 'Construction cost'),
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
-- Table structure for table `tebak_parts`
--

CREATE TABLE `tebak_parts` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `answers` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tebak_regresis`
--

CREATE TABLE `tebak_regresis` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `dwt` double NOT NULL,
  `wst` double DEFAULT NULL,
  `act_wst` double NOT NULL,
  `engine_power` double DEFAULT NULL,
  `act_engine_power` double NOT NULL,
  `type_of_engine` double DEFAULT NULL,
  `act_type_of_engine` double NOT NULL,
  `lwt` double DEFAULT NULL,
  `act_lwt` double NOT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tebak_regresis`
--

INSERT INTO `tebak_regresis` (`id`, `game_id`, `dwt`, `wst`, `act_wst`, `engine_power`, `act_engine_power`, `type_of_engine`, `act_type_of_engine`, `lwt`, `act_lwt`, `score`) VALUES
(1098, 20, 7863, 7863, 7863, 7863, 7863, 6720, 0, 7863, 7863, 75),
(1100, 22, 5253, 5253, 5253, 5253, 5253, 5600, 5600, 5253, 5253, 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`) VALUES
(1, 'galih', '6b99d492429bd81db816ca47a8224455', 'Galih Putera NS'),
(2, 'yoga', '807659cd883fc0a63f6ce615893b3558', 'Yoga Aliarham'),
(3, 'baskara', '4729d324bfdc580fd929db152d911dc5', 'Baskara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `difficulty` (`difficulty`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_parts`
--
ALTER TABLE `ship_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tebak_parts`
--
ALTER TABLE `tebak_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tebak_regresis`
--
ALTER TABLE `tebak_regresis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tebak_parts`
--
ALTER TABLE `tebak_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tebak_regresis`
--
ALTER TABLE `tebak_regresis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
