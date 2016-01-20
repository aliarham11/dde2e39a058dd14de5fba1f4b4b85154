-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2016 at 11:41 PM
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
  `part_id` int(11) NOT NULL,
  `actual` double DEFAULT NULL,
  `estimate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=572 ;

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
(44, 5, 31, 17344417.164669, 0),
(45, 6, 1, 3628521.2831752, 0),
(46, 6, 2, 1814260.6415876, 0),
(47, 6, 3, 1269982.4491113, 0),
(48, 6, 4, 362852.12831752, 0),
(49, 6, 5, 362852.12831752, 0),
(50, 6, 6, 90713.03207938, 0),
(51, 6, 7, 7529181.6625885, 0),
(52, 6, 8, 3028253.164557, 0),
(53, 6, 9, 999323.54430381, 0),
(54, 6, 10, 1135594.9367089, 0),
(55, 6, 11, 505718.27848102, 0),
(56, 6, 12, 127186.63291139, 0),
(57, 6, 13, 5796076.5569621, 0),
(58, 6, 14, NULL, 0),
(59, 6, 15, NULL, 0),
(60, 6, 16, NULL, 0),
(61, 6, 17, NULL, 0),
(62, 6, 18, NULL, 0),
(63, 6, 19, 1272431.7009775, 0),
(64, 6, 20, 2265403.9454147, 0),
(65, 6, 21, 2265403.9454147, 0),
(66, 6, 22, 291953.79841056, 0),
(67, 6, 23, 194635.86560704, 0),
(68, 6, 24, 17349683.52996, 0),
(69, 6, 25, 346993.6705992, 0),
(70, 6, 26, 312294.30353928, 0),
(71, 6, 27, 1387974.6823968, 0),
(72, 6, 28, 2047262.6565353, 0),
(73, 6, 29, 969847.30932477, 0),
(74, 6, 30, 19396946.186495, 0),
(75, 6, 31, 20366793.49582, 0),
(76, 7, 1, 3143049.2521139, 0),
(77, 7, 2, 1571524.626057, 0),
(78, 7, 3, 1100067.2382399, 0),
(79, 7, 4, 314304.92521139, 0),
(80, 7, 5, 314304.92521139, 0),
(81, 7, 6, 78576.231302848, 0),
(82, 7, 7, 6521827.1981364, 0),
(83, 7, 8, 1587670.8860759, 0),
(84, 7, 9, 523931.39240505, 0),
(85, 7, 10, 595376.58227846, 0),
(86, 7, 11, 265141.03797468, 0),
(87, 7, 12, 66682.177215188, 0),
(88, 7, 13, 3038802.0759493, 0),
(89, 7, 14, NULL, 0),
(90, 7, 15, NULL, 0),
(91, 7, 16, NULL, 0),
(92, 7, 17, NULL, 0),
(93, 7, 18, NULL, 0),
(94, 7, 19, 1102188.7964851, 0),
(95, 7, 20, 2170772.0203789, 0),
(96, 7, 21, 2170772.0203789, 0),
(97, 7, 22, 213256.36141142, 0),
(98, 7, 23, 142170.90760761, 0),
(99, 7, 24, 13189017.359969, 0),
(100, 7, 25, 263780.34719938, 0),
(101, 7, 26, 237402.31247944, 0),
(102, 7, 27, 1055121.3887975, 0),
(103, 7, 28, 1556304.0484763, 0),
(104, 7, 29, 737266.07042226, 0),
(105, 7, 30, 14745321.408445, 0),
(106, 7, 31, 15482587.478867, 0),
(107, 8, 1, 3251774.9508197, 123),
(108, 8, 2, 1625887.4754099, 12313),
(109, 8, 3, 1138121.2327869, 123),
(110, 8, 4, 325177.49508197, 112),
(111, 8, 5, 325177.49508197, 122),
(112, 8, 6, 81294.373770493, 233),
(113, 8, 7, 6747433.0229509, 2),
(114, 8, 8, 2977215.1898734, 123),
(115, 8, 9, 982481.01265822, 66),
(116, 8, 10, 1116455.6962025, 0),
(117, 8, 11, 497194.93670886, 0),
(118, 8, 12, 125043.03797468, 0),
(119, 8, 13, 5698389.8734177, 0),
(120, 8, 14, NULL, 0),
(121, 8, 15, NULL, 0),
(122, 8, 16, NULL, 0),
(123, 8, 17, NULL, 0),
(124, 8, 18, NULL, 0),
(125, 8, 19, 1140316.1808787, 0),
(126, 8, 20, 2292000.6913684, 0),
(127, 8, 21, 2292000.6913684, 0),
(128, 8, 22, 271722.78154495, 0),
(129, 8, 23, 181148.52102997, 0),
(130, 8, 24, 16331011.071191, 0),
(131, 8, 25, 326620.22142382, 0),
(132, 8, 26, 293958.19928144, 0),
(133, 8, 27, 1306480.8856953, 0),
(134, 8, 28, 1927059.3064006, 0),
(135, 8, 29, 912903.51887958, 0),
(136, 8, 30, 18258070.377592, 0),
(137, 8, 31, 19170973.896472, 0),
(138, 9, 1, 3070102.0327869, 0),
(139, 9, 2, 1535051.0163935, 0),
(140, 9, 3, 1074535.7114754, 0),
(141, 9, 4, 307010.20327869, 0),
(142, 9, 5, 307010.20327869, 0),
(143, 9, 6, 76752.550819673, 0),
(144, 9, 7, 6370461.7180329, 0),
(145, 9, 8, 1644911.3924051, 0),
(146, 9, 9, 542820.75949368, 0),
(147, 9, 10, 616841.77215191, 0),
(148, 9, 11, 274700.20253165, 0),
(149, 9, 12, 69086.278481014, 0),
(150, 9, 13, 3148360.4050634, 0),
(151, 9, 14, NULL, 0),
(152, 9, 15, NULL, 0),
(153, 9, 16, NULL, 0),
(154, 9, 17, NULL, 0),
(155, 9, 18, NULL, 0),
(156, 9, 19, 1076608.0303476, 0),
(157, 9, 20, 2116336.8593684, 0),
(158, 9, 21, 2116336.8593684, 0),
(159, 9, 22, 211908.60306888, 0),
(160, 9, 23, 141272.40204592, 0),
(161, 9, 24, 13064948.017927, 0),
(162, 9, 25, 261298.96035854, 0),
(163, 9, 26, 235169.06432269, 0),
(164, 9, 27, 1045195.8414342, 0),
(165, 9, 28, 1541663.8661154, 0),
(166, 9, 29, 730330.59420212, 0),
(167, 9, 30, 14606611.884042, 0),
(168, 9, 31, 15336942.478244, 0),
(169, 10, 1, 3810456.9473684, 0),
(170, 10, 2, 1905228.4736842, 0),
(171, 10, 3, 1333659.9315789, 0),
(172, 10, 4, 381045.69473684, 0),
(173, 10, 5, 381045.69473684, 0),
(174, 10, 6, 95261.42368421, 0),
(175, 10, 7, 7906698.1657894, 0),
(176, 10, 8, 2886481.0126582, 0),
(177, 10, 9, 952538.73417721, 0),
(178, 10, 10, 1082430.3797468, 0),
(179, 10, 11, 482042.32911392, 0),
(180, 10, 12, 121232.20253164, 0),
(181, 10, 13, 5524724.6582278, 0),
(182, 10, 14, NULL, 0),
(183, 10, 15, NULL, 0),
(184, 10, 16, NULL, 0),
(185, 10, 17, NULL, 0),
(186, 10, 18, NULL, 0),
(187, 10, 19, 1336231.9900184, 0),
(188, 10, 20, 2040650.2911053, 0),
(189, 10, 21, 2040650.2911053, 0),
(190, 10, 22, 295353.09628071, 0),
(191, 10, 23, 196902.06418714, 0),
(192, 10, 24, 17300560.265609, 0),
(193, 10, 25, 346011.20531218, 0),
(194, 10, 26, 311410.08478096, 0),
(195, 10, 27, 1384044.8212487, 0),
(196, 10, 28, 2041466.1113418, 0),
(197, 10, 29, 967101.31884754, 0),
(198, 10, 30, 19342026.376951, 0),
(199, 10, 31, 20309127.695799, 0),
(200, 11, 1, 3004975.0125971, 0),
(201, 11, 2, 1502487.5062985, 0),
(202, 11, 3, 1051741.254409, 0),
(203, 11, 4, 300497.50125971, 0),
(204, 11, 5, 300497.50125971, 0),
(205, 11, 6, 75124.375314927, 0),
(206, 11, 7, 6235323.1511389, 0),
(207, 11, 8, 1814481.0126582, 0),
(208, 11, 9, 598778.73417721, 0),
(209, 11, 10, 680430.37974682, 0),
(210, 11, 11, 303018.32911392, 0),
(211, 11, 12, 76208.202531644, 0),
(212, 11, 13, 3472916.6582278, 0),
(213, 11, 14, NULL, 0),
(214, 11, 15, NULL, 0),
(215, 11, 16, NULL, 0),
(216, 11, 17, NULL, 0),
(217, 11, 18, NULL, 0),
(218, 11, 19, 1053769.6125425, 0),
(219, 11, 20, 2619599.2972084, 0),
(220, 11, 21, 2619599.2972084, 0),
(221, 11, 22, 215240.18843818, 0),
(222, 11, 23, 143493.45895879, 0),
(223, 11, 24, 13740342.366515, 0),
(224, 11, 25, 274806.8473303, 0),
(225, 11, 26, 247326.16259727, 0),
(226, 11, 27, 1099227.3893212, 0),
(227, 11, 28, 1621360.3992488, 0),
(228, 11, 29, 768085.13828819, 0),
(229, 11, 30, 15361702.765764, 0),
(230, 11, 31, 16129787.904052, 0),
(231, 12, 1, 3820220.3223469, 0),
(232, 12, 2, 1910110.1611735, 0),
(233, 12, 3, 1337077.1128214, 0),
(234, 12, 4, 382022.03223469, 0),
(235, 12, 5, 382022.03223469, 0),
(236, 12, 6, 95505.508058673, 0),
(237, 12, 7, 7926957.1688699, 0),
(238, 12, 8, 2779746.835443, 0),
(239, 12, 9, 917316.45569619, 0),
(240, 12, 10, 1042405.0632911, 0),
(241, 12, 11, 464217.72151898, 0),
(242, 12, 12, 116749.36708861, 0),
(243, 12, 13, 5320435.4430379, 0),
(244, 12, 14, NULL, 0),
(245, 12, 15, NULL, 0),
(246, 12, 16, NULL, 0),
(247, 12, 17, NULL, 0),
(248, 12, 18, NULL, 0),
(249, 12, 19, 1339655.761539, 0),
(250, 12, 20, 2228167.4733979, 0),
(251, 12, 21, 2228167.4733979, 0),
(252, 12, 22, 291740.96746894, 0),
(253, 12, 23, 194493.97831263, 0),
(254, 12, 24, 17301450.792626, 0),
(255, 12, 25, 346029.01585252, 0),
(256, 12, 26, 311426.11426727, 0),
(257, 12, 27, 1384116.0634101, 0),
(258, 12, 28, 2041571.1935299, 0),
(259, 12, 29, 967151.0993078, 0),
(260, 12, 30, 19343021.986156, 0),
(261, 12, 31, 20310173.085464, 0),
(262, 13, 1, 3028855.7135462, 0),
(263, 13, 2, 1514427.8567731, 0),
(264, 13, 3, 1060099.4997412, 0),
(265, 13, 4, 302885.57135462, 0),
(266, 13, 5, 302885.57135462, 0),
(267, 13, 6, 75721.392838655, 0),
(268, 13, 7, 6284875.6056084, 0),
(269, 13, 8, 2565367.0886076, 0),
(270, 13, 9, 846571.13924051, 0),
(271, 13, 10, 962012.65822785, 0),
(272, 13, 11, 428416.30379747, 0),
(273, 13, 12, 107745.41772152, 0),
(274, 13, 13, 4910112.607595, 0),
(275, 13, 14, NULL, 0),
(276, 13, 15, NULL, 0),
(277, 13, 16, NULL, 0),
(278, 13, 17, NULL, 0),
(279, 13, 18, NULL, 0),
(280, 13, 19, 1062143.9773478, 0),
(281, 13, 20, 2232264.939, 0),
(282, 13, 21, 2232264.939, 0),
(283, 13, 22, 245142.64381102, 0),
(284, 13, 23, 163428.42920735, 0),
(285, 13, 24, 14897968.20257, 0),
(286, 13, 25, 297959.3640514, 0),
(287, 13, 26, 268163.42764626, 0),
(288, 13, 27, 1191837.4562056, 0),
(289, 13, 28, 1757960.2479033, 0),
(290, 13, 29, 832796.42252367, 0),
(291, 13, 30, 16655928.450473, 0),
(292, 13, 31, 17488724.872997, 0),
(293, 14, 1, 3597046.25, 0),
(294, 14, 2, 1798523.13, 0),
(295, 14, 3, 1258966.19, 0),
(296, 14, 4, 359704.63, 0),
(297, 14, 5, 359704.63, 0),
(298, 14, 6, 89926.16, 0),
(299, 14, 7, 7463870.99, 0),
(300, 14, 8, 2405696.2, 0),
(301, 14, 9, 793879.75, 0),
(302, 14, 10, 902136.08, 0),
(303, 14, 11, 401751.27, 0),
(304, 14, 12, 101039.24, 0),
(305, 14, 13, 4604502.54, 0),
(306, 14, 14, NULL, 0),
(307, 14, 15, NULL, 0),
(308, 14, 16, NULL, 0),
(309, 14, 17, NULL, 0),
(310, 14, 18, NULL, 0),
(311, 14, 19, 1261394.2, 0),
(312, 14, 20, 2611704.2, 0),
(313, 14, 21, 2611704.2, 0),
(314, 14, 22, 266595.35, 0),
(315, 14, 23, 177730.23333333, 0),
(316, 14, 24, 16385797.513333, 0),
(317, 14, 25, 327715.95026666, 0),
(318, 14, 26, 294944.35523999, 0),
(319, 14, 27, 1310863.8010666, 0),
(320, 14, 28, 1933524.1065733, 0),
(321, 14, 29, 915966.08099531, 0),
(322, 14, 30, 18319321.619906, 0),
(323, 14, 31, 19235287.700901, 0),
(324, 16, 1, 3744079.99, 0),
(325, 16, 2, 1872040, 0),
(326, 16, 3, 1310428, 0),
(327, 16, 4, 374408, 0),
(328, 16, 5, 374408, 0),
(329, 16, 6, 93602, 0),
(330, 16, 7, 7768965.99, 0),
(331, 16, 8, 1755949.37, 0),
(332, 16, 9, 579463.29, 0),
(333, 16, 10, 658481.01, 0),
(334, 16, 11, 293243.54, 0),
(335, 16, 12, 73749.87, 0),
(336, 16, 13, 3360887.08, 0),
(337, 16, 14, NULL, 0),
(338, 16, 15, NULL, 0),
(339, 16, 16, NULL, 0),
(340, 16, 17, NULL, 0),
(341, 16, 18, NULL, 0),
(342, 16, 19, 1312955.25, 0),
(343, 16, 20, 2402173.52, 0),
(344, 16, 21, 2402173.52, 0),
(345, 16, 22, 248856.17, 0),
(346, 16, 23, 165904.11333333, 0),
(347, 16, 24, 15259742.123333, 0),
(348, 16, 25, 305194.84246666, 0),
(349, 16, 26, 274675.35821999, 0),
(350, 16, 27, 1220779.3698666, 0),
(351, 16, 28, 1800649.5705533, 0),
(352, 16, 29, 853019.58469431, 0),
(353, 16, 30, 17060391.693886, 0),
(354, 16, 31, 17913411.27858, 0),
(355, 17, 1, 2892393.33, 0),
(356, 17, 2, 1446196.67, 0),
(357, 17, 3, 1012337.67, 0),
(358, 17, 4, 289239.33, 0),
(359, 17, 5, 289239.33, 0),
(360, 17, 6, 72309.83, 0),
(361, 17, 7, 6001716.16, 0),
(362, 17, 8, 1656962.03, 0),
(363, 17, 9, 546797.47, 0),
(364, 17, 10, 621360.76, 0),
(365, 17, 11, 276712.66, 0),
(366, 17, 12, 69592.41, 0),
(367, 17, 13, 3171425.33, 0),
(368, 17, 14, NULL, 0),
(369, 17, 15, NULL, 0),
(370, 17, 16, NULL, 0),
(371, 17, 17, NULL, 0),
(372, 17, 18, NULL, 0),
(373, 17, 19, 1014290.03, 0),
(374, 17, 20, 2242797.41, 0),
(375, 17, 21, 2242797.41, 0),
(376, 17, 22, 203748.63, 0),
(377, 17, 23, 135832.42, 0),
(378, 17, 24, 12769809.98, 0),
(379, 17, 25, 255396.1996, 0),
(380, 17, 26, 229856.57964, 0),
(381, 17, 27, 1021584.7984, 0),
(382, 17, 28, 1506837.57764, 0),
(383, 17, 29, 713832.377882, 0),
(384, 17, 30, 14276647.55764, 0),
(385, 17, 31, 14990479.935522, 0),
(386, 18, 1, 3197739.86, 0),
(387, 18, 2, 1598869.93, 0),
(388, 18, 3, 1119208.95, 0),
(389, 18, 4, 319773.99, 0),
(390, 18, 5, 319773.99, 0),
(391, 18, 6, 79943.5, 0),
(392, 18, 7, 6635310.22, 0),
(393, 18, 8, 2050632.91, 0),
(394, 18, 9, 676708.86, 0),
(395, 18, 10, 768987.34, 0),
(396, 18, 11, 342455.7, 0),
(397, 18, 12, 86126.58, 0),
(398, 18, 13, 3924911.39, 0),
(399, 18, 14, NULL, 0),
(400, 18, 15, NULL, 0),
(401, 18, 16, NULL, 0),
(402, 18, 17, NULL, 0),
(403, 18, 18, NULL, 0),
(404, 18, 19, 1121367.43, 0),
(405, 18, 20, 2465540.01, 0),
(406, 18, 21, 2465540.01, 0),
(407, 18, 22, 233631.78, 0),
(408, 18, 23, 155754.52, 0),
(409, 18, 24, 14536515.35, 0),
(410, 18, 25, 290730.307, 0),
(411, 18, 26, 261657.2763, 0),
(412, 18, 27, 1162921.228, 0),
(413, 18, 28, 1715308.8113, 0),
(414, 18, 29, 812591.208065, 0),
(415, 18, 30, 16251824.1613, 0),
(416, 18, 31, 17064415.369365, 0),
(417, 19, 1, 2654895.25, 0),
(418, 19, 2, 1327447.63, 0),
(419, 19, 3, 929213.34, 0),
(420, 19, 4, 265489.53, 0),
(421, 19, 5, 265489.53, 0),
(422, 19, 6, 66372.38, 0),
(423, 19, 7, 5508907.66, 0),
(424, 19, 8, 1557544.3, 0),
(425, 19, 9, 513989.62, 0),
(426, 19, 10, 584079.11, 0),
(427, 19, 11, 260109.9, 0),
(428, 19, 12, 65416.86, 0),
(429, 19, 13, 2981139.79, 0),
(430, 19, 14, NULL, 0),
(431, 19, 15, NULL, 0),
(432, 19, 16, NULL, 0),
(433, 19, 17, NULL, 0),
(434, 19, 18, NULL, 0),
(435, 19, 19, 931005.39, 0),
(436, 19, 20, 2496509.72, 0),
(437, 19, 21, 2496509.72, 0),
(438, 19, 22, 188421.06, 0),
(439, 19, 23, 125614.04, 0),
(440, 19, 24, 12231597.66, 0),
(441, 19, 25, 244631.9532, 0),
(442, 19, 26, 220168.75788, 0),
(443, 19, 27, 978527.8128, 0),
(444, 19, 28, 1443328.52388, 0),
(445, 19, 29, 683746.309194, 0),
(446, 19, 30, 13674926.18388, 0),
(447, 19, 31, 14358672.493074, 0),
(448, 20, 1, 3322861.65, 0),
(449, 20, 2, 1661430.83, 0),
(450, 20, 3, 1163001.58, 0),
(451, 20, 4, 332286.17, 0),
(452, 20, 5, 332286.17, 0),
(453, 20, 6, 83071.54, 0),
(454, 20, 7, 6894937.94, 0),
(455, 20, 8, 2886481.01, 0),
(456, 20, 9, 952538.73, 0),
(457, 20, 10, 1082430.38, 0),
(458, 20, 11, 482042.33, 0),
(459, 20, 12, 121232.2, 0),
(460, 20, 13, 5524724.65, 0),
(461, 20, 14, NULL, 0),
(462, 20, 15, NULL, 0),
(463, 20, 16, NULL, 0),
(464, 20, 17, NULL, 0),
(465, 20, 18, NULL, 0),
(466, 20, 19, 1165244.51, 0),
(467, 20, 20, 1983175.74, 0),
(468, 20, 21, 1983175.74, 0),
(469, 20, 22, 271698.14, 0),
(470, 20, 23, 181132.09333333, 0),
(471, 20, 24, 16020913.073333, 0),
(472, 20, 25, 320418.26146666, 0),
(473, 20, 26, 288376.43531999, 0),
(474, 20, 27, 1281673.0458666, 0),
(475, 20, 28, 1890467.7426532, 0),
(476, 20, 29, 895569.04079931, 0),
(477, 20, 30, 17911380.815986, 0),
(478, 20, 31, 18806949.856785, 0),
(479, 21, 1, 3172984.23, 0),
(480, 21, 2, 1586492.12, 0),
(481, 21, 3, 1110544.48, 0),
(482, 21, 4, 317298.42, 0),
(483, 21, 5, 317298.42, 0),
(484, 21, 6, 79324.61, 0),
(485, 21, 7, 6583942.28, 0),
(486, 21, 8, 3005569.62, 0),
(487, 21, 9, 991837.97, 0),
(488, 21, 10, 1127088.61, 0),
(489, 21, 11, 501930.13, 0),
(490, 21, 12, 126233.92, 0),
(491, 21, 13, 5752660.25, 0),
(492, 21, 14, NULL, 0),
(493, 21, 15, NULL, 0),
(494, 21, 16, NULL, 0),
(495, 21, 17, NULL, 0),
(496, 21, 18, NULL, 0),
(497, 21, 19, 1112686.25, 0),
(498, 21, 20, 1924343.49, 0),
(499, 21, 21, 1924343.49, 0),
(500, 21, 22, 268985.78, 0),
(501, 21, 23, 179323.85333333, 0),
(502, 21, 24, 15821941.903333, 0),
(503, 21, 25, 316438.83806666, 0),
(504, 21, 26, 284794.95425999, 0),
(505, 21, 27, 1265755.3522666, 0),
(506, 21, 28, 1866989.1445933, 0),
(507, 21, 29, 884446.55239632, 0),
(508, 21, 30, 17688931.047926, 0),
(509, 21, 31, 18573377.600322, 0),
(510, 22, 1, 3061842.83, 0),
(511, 22, 2, 1530921.42, 0),
(512, 22, 3, 1071644.99, 0),
(513, 22, 4, 306184.28, 0),
(514, 22, 5, 306184.28, 0),
(515, 22, 6, 76546.07, 0),
(516, 22, 7, 6353323.87, 0),
(517, 22, 8, 3202632.91, 0),
(518, 22, 9, 1056868.86, 0),
(519, 22, 10, 1200987.34, 0),
(520, 22, 11, 534839.7, 0),
(521, 22, 12, 134510.58, 0),
(522, 22, 13, 6129839.39, 0),
(523, 22, 14, NULL, 0),
(524, 22, 15, NULL, 0),
(525, 22, 16, NULL, 0),
(526, 22, 17, NULL, 0),
(527, 22, 18, NULL, 0),
(528, 22, 19, 1073711.73, 0),
(529, 22, 20, 2096183.12, 0),
(530, 22, 21, 2096183.12, 0),
(531, 22, 22, 271137.5, 0),
(532, 22, 23, 180758.33333333, 0),
(533, 22, 24, 16104953.943333, 0),
(534, 22, 25, 322099.07886666, 0),
(535, 22, 26, 289889.17097999, 0),
(536, 22, 27, 1288396.3154666, 0),
(537, 22, 28, 1900384.5653133, 0),
(538, 22, 29, 900266.92543231, 0),
(539, 22, 30, 18005338.508646, 0),
(540, 22, 31, 18905605.434078, 0),
(541, 23, 1, 3261728.48, 0),
(542, 23, 2, 1630864.24, 0),
(543, 23, 3, 1141604.97, 0),
(544, 23, 4, 326172.85, 0),
(545, 23, 5, 326172.85, 0),
(546, 23, 6, 81543.21, 0),
(547, 23, 7, 6768086.6, 0),
(548, 23, 8, 2139341.77, 0),
(549, 23, 9, 705982.78, 0),
(550, 23, 10, 802253.16, 0),
(551, 23, 11, 357270.08, 0),
(552, 23, 12, 89852.35, 0),
(553, 23, 13, 4094700.14, 0),
(554, 23, 14, NULL, 0),
(555, 23, 15, NULL, 0),
(556, 23, 16, NULL, 0),
(557, 23, 17, NULL, 0),
(558, 23, 18, NULL, 0),
(559, 23, 19, 1143806.64, 0),
(560, 23, 20, 2530457.12, 0),
(561, 23, 21, 2530457.12, 0),
(562, 23, 22, 240131.87, 0),
(563, 23, 23, 160087.91333333, 0),
(564, 23, 24, 14937270.283333, 0),
(565, 23, 25, 298745.40566666, 0),
(566, 23, 26, 268870.86509999, 0),
(567, 23, 27, 1194981.6226666, 0),
(568, 23, 28, 1762597.8934333, 0),
(569, 23, 29, 834993.40883832, 0),
(570, 23, 30, 16699868.176766, 0),
(571, 23, 31, 17534861.585604, 0);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score_parts` double DEFAULT NULL,
  `finish` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `user_id`, `level_id`, `created_at`, `score_parts`, `finish`, `total_score`) VALUES
(20, 2, 2, '2015-12-31 01:20:35', NULL, 0, NULL),
(22, 2, 2, '2015-12-31 01:38:03', NULL, 0, NULL),
(28, 4, 3, '2016-01-01 09:38:18', NULL, 0, NULL),
(29, 4, 3, '2016-01-01 09:40:53', NULL, 0, NULL),
(30, 4, 3, '2016-01-01 09:46:00', NULL, 0, NULL),
(31, 5, 3, '2016-01-01 09:54:57', NULL, 0, NULL),
(32, 4, 2, '2016-01-01 10:03:00', NULL, 0, NULL),
(33, 4, 3, '2016-01-01 10:24:46', NULL, 0, NULL),
(34, 4, 3, '2016-01-01 20:39:44', NULL, 0, NULL),
(35, 4, 2, '2016-01-01 21:27:43', NULL, 0, NULL),
(36, 6, 3, '2016-01-01 21:40:44', NULL, 0, NULL),
(37, 6, 3, '2016-01-01 22:00:01', 0, 0, NULL),
(38, 4, 3, '2016-01-01 23:37:56', NULL, 0, NULL),
(39, 4, 3, '2016-01-01 23:45:29', NULL, 0, NULL),
(40, 6, 2, '2016-01-01 23:49:01', NULL, 0, NULL),
(41, 6, 3, '2016-01-01 23:50:15', NULL, 0, NULL),
(42, 6, 3, '2016-01-01 23:50:45', NULL, 0, NULL),
(43, 6, 3, '2016-01-01 23:54:25', NULL, 0, NULL),
(44, 6, 3, '2016-01-01 23:54:41', NULL, 0, NULL),
(45, 6, 3, '2016-01-01 23:55:12', NULL, 0, NULL),
(46, 6, 3, '2016-01-01 23:57:46', NULL, 0, NULL),
(47, 6, 3, '2016-01-01 23:59:50', NULL, 0, NULL),
(48, 6, 3, '2016-01-02 00:02:50', NULL, 0, NULL),
(49, 6, 3, '2016-01-02 00:05:42', 0, 0, NULL),
(50, 2, 3, '2016-01-20 16:18:59', NULL, 0, NULL),
(51, 2, 3, '2016-01-20 16:29:15', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interface_5`
--

CREATE TABLE IF NOT EXISTS `interface_5` (
  `id` int(11) DEFAULT NULL,
  `label_name` varchar(50) DEFAULT NULL,
  `label_text` varchar(50) DEFAULT NULL,
  `label_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interface_5`
--

INSERT INTO `interface_5` (`id`, `label_name`, `label_text`, `label_number`) VALUES
(1, 'Loa (Length over all)', '108,20 m', 1),
(2, 'Lpp (Length between perpendicular)', '102 m', 1),
(3, 'B (Breadth)', '19,2 m', 1),
(4, 'H (Depth)', '9,3 m', 1),
(5, 'T (Draught)', '6 m', 1),
(6, 'Vs (Speed)', '12 knot', 1),
(7, 'Cb (Coefficient block)', '0,76', 1),
(0, 'Necessary power at actual draught', '2570 KW', 1),
(9, 'Main engine power used', '2760 KW, Wartsilla 6L32', 1),
(10, 'Wst (Weight of steel and profile)', '1.968.166 kg (1.968,2 ton)', 1),
(0, 'Displacement of weight', '9.153,6 ton ', 1),
(12, 'LWT (Lightweight)', '1.968.166 kg', 1),
(13, 'Loa (Length over all)', '108,20 m', 2),
(14, 'Lpp (Length between perpendicular)', '102 m', 2),
(15, 'B (Breadth)', '19,2 m', 2),
(16, 'H (Depth)', '9,3 m', 2),
(17, 'T (Draught)', '6 m', 2),
(18, 'Vs (Speed)', '12 knot', 2),
(19, 'Cb (Coefficient block)', '0,76', 2),
(0, 'Necessary power at actual draught', '2542 KW', 2),
(21, 'Main engine power', '2760 KW, Wartsilla 6L32', 2),
(22, 'Wst (Weight of steel and profile)', '1.968.043 kg (1.968,1 ton)', 2),
(23, 'Displacement of weight', '9.153,6 ton ', 2),
(24, 'LWT', '1.968.043 kg', 2),
(25, 'Harga pelat per kg', '9500 IDR', 3),
(26, 'Asumsi harga main engine per KW', '4.280.000 IDR', 3),
(27, 'Biaya pengerjaan konstruksi per kg', '7120 IDR', 3),
(28, 'Nilai tukar 1 US Dollar terhadap Rupiah', '9400 IDR', 3);

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
  `speed` int(11) DEFAULT NULL,
  `harga_pelat` int(11) NOT NULL,
  `machinery_cost` int(11) NOT NULL,
  `construction_cost` int(11) NOT NULL,
  `tukar_dolar` int(11) NOT NULL,
  `wst` double NOT NULL,
  `engine_power` double NOT NULL,
  `type_of_engine` double NOT NULL,
  `lwt` double NOT NULL,
  `score_cost` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `game_id`, `dwt`, `speed`, `harga_pelat`, `machinery_cost`, `construction_cost`, `tukar_dolar`, `wst`, `engine_power`, `type_of_engine`, `lwt`, `score_cost`) VALUES
(5, 22, 7358, NULL, 10183, 506, 7246, 9500, 2031.924, 2909.29148, 3000, 2655.01072, NULL),
(6, 23, 9622, NULL, 9521, 534, 8517, 9500, 2208.516, 4377.72188, 4480, 2526.86832, NULL),
(7, 25, 5216, NULL, 9767, 527, 7970, 9500, 1864.848, 2180.62592, 2380, 2587.49488, NULL),
(8, 34, 9690, NULL, 8512, 525, 8641, 9500, 2213.82, 4432.927, 4480, 2519.848, 38.709677419355),
(9, 35, 5635, NULL, 9376, 546, 7688, 9500, 1897.53, 2272.62575, 2380, 2615.1405, NULL),
(10, 36, 9485, NULL, 10047, 509, 7631, 9500, 2197.83, 4268.46575, 4480, 2540.4505, 38.709677419355),
(11, 38, 6339, NULL, 8919, 527, 9406, 9500, 1952.442, 2482.54447, 2720, 2645.77858, NULL),
(12, 39, 9128, NULL, 10202, 549, 8229, 9500, 2169.984, 3996.10688, 4000, 2572.31632, NULL),
(13, 49, 8905, NULL, 8154, 517, 8189, 9500, 2152.59, 3835.03175, 3920, 2589.6345, 38.709677419355),
(14, 50, 8223, NULL, 9929, 543, 9433, 9500, 2099.394, 3385.62103, 3500, 2630.25442, 0),
(15, 50, 8009, NULL, 9438, 510, 8221, 9500, 2082.702, 3258.02567, 3360, 2639.16538, NULL),
(16, 50, 6905, NULL, 10867, 510, 8592, 9500, 1996.59, 2701.63175, 2720, 2656.0345, 0),
(17, 50, 5791, NULL, 8777, 550, 8121, 9500, 1909.698, 2313.15767, 2380, 2623.63938, 0),
(18, 50, 7011, NULL, 9243, 540, 8817, 9500, 2004.858, 2747.64847, 3000, 2656.53058, 0),
(19, 51, 5409, NULL, 8184, 517, 9118, 9500, 1879.902, 2219.94967, 2380, 2601.10138, 0),
(20, 51, 9438, 13, 8776, 509, 7403, 9500, 2194.164, 4147.4108, 4480, 2544.93712, 0),
(21, 51, 9189, 13, 8455, 530, 7121, 9500, 2174.742, 4086.0074, 4480, 2567.23258, 0),
(22, 51, 7344, 14, 8737, 502, 7500, 9500, 2030.832, 4920.8896, 5040, 2655.16528, 0),
(23, 51, 5152, 13, 10163, 503, 9308, 9500, 1859.856, 3090.4832, 3360, 2582.65392, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ship_parts`
--

CREATE TABLE IF NOT EXISTS `ship_parts` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
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
(31, NULL, 'PRICE OF NEW VESSEL');

-- --------------------------------------------------------

--
-- Table structure for table `tebak_parts`
--

CREATE TABLE IF NOT EXISTS `tebak_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=218 ;

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
(62, 22, 31, NULL),
(63, 36, 1, NULL),
(64, 36, 2, NULL),
(65, 36, 3, NULL),
(66, 36, 4, NULL),
(67, 36, 5, NULL),
(68, 36, 6, NULL),
(69, 36, 7, NULL),
(70, 36, 8, NULL),
(71, 36, 9, NULL),
(72, 36, 10, NULL),
(73, 36, 11, NULL),
(74, 36, 12, NULL),
(75, 36, 13, NULL),
(76, 36, 14, NULL),
(77, 36, 15, NULL),
(78, 36, 16, NULL),
(79, 36, 17, NULL),
(80, 36, 18, NULL),
(81, 36, 19, NULL),
(82, 36, 20, NULL),
(83, 36, 21, NULL),
(84, 36, 22, NULL),
(85, 36, 23, NULL),
(86, 36, 24, NULL),
(87, 36, 25, NULL),
(88, 36, 26, NULL),
(89, 36, 27, NULL),
(90, 36, 28, NULL),
(91, 36, 29, NULL),
(92, 36, 30, NULL),
(93, 36, 31, NULL),
(94, 37, 1, ''),
(95, 37, 2, ''),
(96, 37, 3, ''),
(97, 37, 4, ''),
(98, 37, 5, ''),
(99, 37, 6, ''),
(100, 37, 7, ''),
(101, 37, 8, ''),
(102, 37, 9, ''),
(103, 37, 10, ''),
(104, 37, 11, ''),
(105, 37, 12, ''),
(106, 37, 13, ''),
(107, 37, 14, ''),
(108, 37, 15, ''),
(109, 37, 16, ''),
(110, 37, 17, ''),
(111, 37, 18, ''),
(112, 37, 19, ''),
(113, 37, 20, ''),
(114, 37, 21, ''),
(115, 37, 22, ''),
(116, 37, 23, ''),
(117, 37, 24, ''),
(118, 37, 25, ''),
(119, 37, 26, ''),
(120, 37, 27, ''),
(121, 37, 28, ''),
(122, 37, 29, 'dawdasdwd'),
(123, 37, 30, 'asdawdasdad'),
(124, 37, 31, 'adwasdawd'),
(125, 49, 1, ''),
(126, 49, 2, ''),
(127, 49, 3, ''),
(128, 49, 4, ''),
(129, 49, 5, ''),
(130, 49, 6, ''),
(131, 49, 7, ''),
(132, 49, 8, ''),
(133, 49, 9, ''),
(134, 49, 10, ''),
(135, 49, 11, ''),
(136, 49, 12, ''),
(137, 49, 13, ''),
(138, 49, 14, ''),
(139, 49, 15, ''),
(140, 49, 16, ''),
(141, 49, 17, ''),
(142, 49, 18, ''),
(143, 49, 19, ''),
(144, 49, 20, ''),
(145, 49, 21, 'adwasda'),
(146, 49, 22, ''),
(147, 49, 23, ''),
(148, 49, 24, ''),
(149, 49, 25, ''),
(150, 49, 26, ''),
(151, 49, 27, ''),
(152, 49, 28, ''),
(153, 49, 29, 'wdasdas'),
(154, 49, 30, ''),
(155, 49, 31, 'asdawdas'),
(156, 50, 1, ''),
(157, 50, 2, ''),
(158, 50, 3, ''),
(159, 50, 4, ''),
(160, 50, 5, ''),
(161, 50, 6, ''),
(162, 50, 7, ''),
(163, 50, 8, ''),
(164, 50, 9, ''),
(165, 50, 10, ''),
(166, 50, 11, ''),
(167, 50, 12, ''),
(168, 50, 13, ''),
(169, 50, 14, ''),
(170, 50, 15, ''),
(171, 50, 16, ''),
(172, 50, 17, ''),
(173, 50, 18, ''),
(174, 50, 19, ''),
(175, 50, 20, ''),
(176, 50, 21, ''),
(177, 50, 22, ''),
(178, 50, 23, ''),
(179, 50, 24, ''),
(180, 50, 25, ''),
(181, 50, 26, ''),
(182, 50, 27, ''),
(183, 50, 28, ''),
(184, 50, 29, ''),
(185, 50, 30, ''),
(186, 50, 31, ''),
(187, 51, 1, ''),
(188, 51, 2, ''),
(189, 51, 3, ''),
(190, 51, 4, ''),
(191, 51, 5, ''),
(192, 51, 6, ''),
(193, 51, 7, ''),
(194, 51, 8, ''),
(195, 51, 9, ''),
(196, 51, 10, ''),
(197, 51, 11, ''),
(198, 51, 12, ''),
(199, 51, 13, ''),
(200, 51, 14, ''),
(201, 51, 15, ''),
(202, 51, 16, ''),
(203, 51, 17, ''),
(204, 51, 18, ''),
(205, 51, 19, ''),
(206, 51, 20, ''),
(207, 51, 21, ''),
(208, 51, 22, ''),
(209, 51, 23, ''),
(210, 51, 24, ''),
(211, 51, 25, ''),
(212, 51, 26, ''),
(213, 51, 27, ''),
(214, 51, 28, ''),
(215, 51, 29, ''),
(216, 51, 30, ''),
(217, 51, 31, '');

-- --------------------------------------------------------

--
-- Table structure for table `tebak_regresis`
--

CREATE TABLE IF NOT EXISTS `tebak_regresis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `dwt` double NOT NULL,
  `speed` int(11) DEFAULT NULL,
  `wst` double DEFAULT NULL,
  `act_wst` double NOT NULL,
  `engine_power` double DEFAULT NULL,
  `act_engine_power` double NOT NULL,
  `type_of_engine` double DEFAULT NULL,
  `act_type_of_engine` double NOT NULL,
  `lwt` double DEFAULT NULL,
  `act_lwt` double NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1117 ;

--
-- Dumping data for table `tebak_regresis`
--

INSERT INTO `tebak_regresis` (`id`, `game_id`, `dwt`, `speed`, `wst`, `act_wst`, `engine_power`, `act_engine_power`, `type_of_engine`, `act_type_of_engine`, `lwt`, `act_lwt`, `score`) VALUES
(1098, 20, 7863, NULL, 7863, 7863, 7863, 7863, 6720, 0, 7863, 7863, 75),
(1100, 22, 5253, NULL, 5253, 5253, 5253, 5253, 5600, 5600, 5253, 5253, 100),
(1101, 23, 5460, NULL, NULL, 1883.88, NULL, 2231.212, NULL, 2380, NULL, 2604.448, NULL),
(1102, 29, 9424, NULL, NULL, 2193.072, NULL, 4220.66432, NULL, 4480, NULL, 2546.25648, NULL),
(1103, 32, 9398, NULL, NULL, 2191.044, NULL, 4200.44828, NULL, 4480, NULL, 2548.68592, NULL),
(1104, 33, 6505, NULL, NULL, 1965.39, NULL, 2542.15175, NULL, 2720, NULL, 2650.1145, NULL),
(1105, 34, 5628, NULL, 123, 1896.984, 332, 2270.88688, 1935, 2380, 332, 2614.73632, 0),
(1106, 35, 5538, NULL, NULL, 1889.964, NULL, 2249.14108, NULL, 2380, NULL, 2609.36512, NULL),
(1107, 36, 5095, NULL, 21312, 1855.41, 12312, 2158.63175, 1935, 2380, 123, 2578.2045, 0),
(1108, 37, 5277, NULL, NULL, 1869.606, NULL, 2192.49103, NULL, 2380, NULL, 2591.95642, NULL),
(1109, 41, 9318, NULL, 12, 2184.804, 3123, 4138.83868, 1935, 4480, 123, 2555.99152, 0),
(1110, 44, 9342, NULL, 123, 2186.676, 123123, 4157.22748, 1935, 4480, 123123, 2553.82672, 0),
(1111, 46, 5261, NULL, 12312, 1868.358, 123123, 2189.32847, 1935, 2380, 23123, 2590.80058, 0),
(1112, 47, 5943, NULL, NULL, 1921.554, NULL, 2355.92743, NULL, 2380, NULL, 2630.98402, NULL),
(1113, 49, 8547, NULL, 123123, 2124.666, 12313, 3591.00463, 1935, 3920, 12312, 2613.27682, 0),
(1114, 39, 9550, NULL, NULL, 2202.9, NULL, 4319.975, NULL, 4480, NULL, 2534.1, NULL),
(1115, 50, 5416, 12, 0, 1880.448, 0, 2321.8512, 1935, 2380, 0, 2601.56688, 0),
(1116, 51, 8328, 11, 0, 2107.584, 0, 2189.8936, 1935, 2380, 0, 2625.21232, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`) VALUES
(1, 'galih', '6b99d492429bd81db816ca47a8224455', 'Galih Putera NS'),
(2, 'yoga', '807659cd883fc0a63f6ce615893b3558', 'Yoga Aliarham'),
(3, 'baskara', '4729d324bfdc580fd929db152d911dc5', 'Baskara'),
(4, 'yogandull', '0192023a7bbd73250516f069df18b500', 'yoga'),
(5, 'user_ganas', '0192023a7bbd73250516f069df18b500', 'user ganas'),
(6, 'test_game1', '0192023a7bbd73250516f069df18b500', 'test_game1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
