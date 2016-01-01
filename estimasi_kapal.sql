-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 01, 2016 at 05:45 
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
  `actual` double DEFAULT NULL,
  `estimate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `part_id`, `actual`, `estimate`) VALUES
(14, 5, 1, 3570505.9692839, 3570505.9692839),
(15, 5, 2, 1785252.984642, 0),
(16, 5, 3, 1249677.0892494, 0),
(17, 5, 4, 357050.59692839, 0),
(18, 5, 5, 357050.59692839, 0),
(19, 5, 6, 89262.649232098, 0),
(20, 5, 7, 7408799.8862642, 0),
(21, 5, 8, 1921518.9873418, 0),
(22, 5, 9, 634101.26582279, 0),
(23, 5, 10, 720569.62025318, 0),
(24, 5, 11, 320893.67088608, 0),
(25, 5, 12, 80703.797468356, 0),
(26, 5, 13, 3677787.3417722, 0),
(27, 5, 14, NULL, 0),
(28, 5, 15, NULL, 0),
(29, 5, 16, NULL, 0),
(30, 5, 17, NULL, 0),
(31, 5, 18, NULL, 0),
(32, 5, 19, 1252087.1807786, 0),
(33, 5, 20, 2025074.4923284, 0),
(34, 5, 21, 2025074.4923284, 0),
(35, 5, 22, 246773.4881763, 0),
(36, 5, 23, 164515.6587842, 0),
(37, 5, 24, 14775038.048104, 0),
(38, 5, 25, 295500.76096208, 0),
(39, 5, 26, 265950.68486587, 0),
(40, 5, 27, 1182003.0438483, 0),
(41, 5, 28, 1743454.4896762, 0),
(42, 5, 29, 825924.62688901, 0),
(43, 5, 30, 16518492.53778, 0),
(44, 5, 31, 17344417.164669, 0);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score_parts` double DEFAULT NULL,
  `finish` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `user_id`, `level_id`, `created_at`, `score_parts`, `finish`, `total_score`) VALUES
(20, 2, 2, '2015-12-31 08:20:35', NULL, 0, NULL),
(22, 2, 2, '2015-12-31 08:38:03', NULL, 0, NULL);

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
  `wst` double NOT NULL,
  `engine_power` double NOT NULL,
  `type_of_engine` double NOT NULL,
  `lwt` double NOT NULL,
  `score_cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `game_id`, `dwt`, `harga_pelat`, `machinery_cost`, `construction_cost`, `tukar_dolar`, `wst`, `engine_power`, `type_of_engine`, `lwt`, `score_cost`) VALUES
(5, 22, 7358, 10183, 506, 7246, 9500, 2031.924, 2909.29148, 3000, 2655.01072, NULL);

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
(22, 24, 'Inspection & survey'),
(23, 24, 'Launching and testing'),
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
  `game_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tebak_parts`
--

INSERT INTO `tebak_parts` (`id`, `game_id`, `part_id`, `answer`) VALUES
(32, 22, 1, NULL),
(33, 22, 2, NULL),
(34, 22, 3, NULL),
(35, 22, 4, NULL),
(36, 22, 5, NULL),
(37, 22, 6, NULL),
(38, 22, 7, NULL),
(39, 22, 8, NULL),
(40, 22, 9, NULL),
(41, 22, 10, NULL),
(42, 22, 11, NULL),
(43, 22, 12, NULL),
(44, 22, 13, NULL),
(45, 22, 14, NULL),
(46, 22, 15, NULL),
(47, 22, 16, NULL),
(48, 22, 17, NULL),
(49, 22, 18, NULL),
(50, 22, 19, NULL),
(51, 22, 20, NULL),
(52, 22, 21, NULL),
(53, 22, 22, NULL),
(54, 22, 23, NULL),
(55, 22, 24, NULL),
(56, 22, 25, NULL),
(57, 22, 26, NULL),
(58, 22, 27, NULL),
(59, 22, 28, NULL),
(60, 22, 29, NULL),
(61, 22, 30, NULL),
(62, 22, 31, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tebak_parts`
--
ALTER TABLE `tebak_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
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
