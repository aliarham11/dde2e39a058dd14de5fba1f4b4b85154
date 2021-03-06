-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.17 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4719
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for estimasi_kapal
CREATE DATABASE IF NOT EXISTS `estimasi_kapal` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `estimasi_kapal`;


-- Dumping structure for table estimasi_kapal.answers
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `actual` double DEFAULT NULL,
  `estimate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=utf8;

-- Dumping data for table estimasi_kapal.answers: ~434 rows (approximately)
DELETE FROM `answers`;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
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
	(293, 14, 1, 3121372.8962899, 0),
	(294, 14, 2, 1560686.4481449, 0),
	(295, 14, 3, 1092480.5137015, 0),
	(296, 14, 4, 312137.28962899, 0),
	(297, 14, 5, 312137.28962899, 0),
	(298, 14, 6, 78034.322407247, 0),
	(299, 14, 7, 6476848.7598015, 0),
	(300, 14, 8, 2634835.443038, 0),
	(301, 14, 9, 869495.69620254, 0),
	(302, 14, 10, 988063.29113925, 0),
	(303, 14, 11, 440017.51898735, 0),
	(304, 14, 12, 110663.0886076, 0),
	(305, 14, 13, 5043075.0379747, 0),
	(306, 14, 14, NULL, 0),
	(307, 14, 15, NULL, 0),
	(308, 14, 16, NULL, 0),
	(309, 14, 17, NULL, 0),
	(310, 14, 18, NULL, 0),
	(311, 14, 19, 1094587.4404065, 0),
	(312, 14, 20, 2415930.9311347, 0),
	(313, 14, 21, 2415930.9311347, 0),
	(314, 14, 22, 252290.22476365, 0),
	(315, 14, 23, 168193.48317577, 0),
	(316, 14, 24, 15450925.877257, 0),
	(317, 14, 25, 309018.51754514, 0),
	(318, 14, 26, 278116.66579063, 0),
	(319, 14, 27, 1236074.0701806, 0),
	(320, 14, 28, 1823209.2535164, 0),
	(321, 14, 29, 863706.75653867, 0),
	(322, 14, 30, 17274135.130773, 0),
	(323, 14, 31, 18137841.887312, 0),
	(324, 15, 1, 3129976.3278689, 0),
	(325, 15, 2, 1564988.1639344, 0),
	(326, 15, 3, 1095491.7147541, 0),
	(327, 15, 4, 312997.63278689, 0),
	(328, 15, 5, 312997.63278689, 0),
	(329, 15, 6, 78249.408196722, 0),
	(330, 15, 7, 6494700.8803279, 0),
	(331, 15, 8, 3107645.5696203, 0),
	(332, 15, 9, 1025523.0379747, 0),
	(333, 15, 10, 1165367.0886076, 0),
	(334, 15, 11, 518976.81012659, 0),
	(335, 15, 12, 130521.11392405, 0),
	(336, 15, 13, 5948033.6202532, 0),
	(337, 15, 14, NULL, 0),
	(338, 15, 15, NULL, 0),
	(339, 15, 16, NULL, 0),
	(340, 15, 17, NULL, 0),
	(341, 15, 18, NULL, 0),
	(342, 15, 19, 1097604.4487754, 0),
	(343, 15, 20, 2416621.5518632, 0),
	(344, 15, 21, 2416621.5518632, 0),
	(345, 15, 22, 270806.77898713, 0),
	(346, 15, 23, 180537.85265809, 0),
	(347, 15, 24, 16408305.132865, 0),
	(348, 15, 25, 328166.1026573, 0),
	(349, 15, 26, 295349.49239157, 0),
	(350, 15, 27, 1312664.4106292, 0),
	(351, 15, 28, 1936180.0056781, 0),
	(352, 15, 29, 917224.25692715, 0),
	(353, 15, 30, 18344485.138543, 0),
	(354, 15, 31, 19261709.39547, 0),
	(355, 16, 1, 3675517.553063, 0),
	(356, 16, 2, 1837758.7765315, 0),
	(357, 16, 3, 1286431.143572, 0),
	(358, 16, 4, 367551.7553063, 0),
	(359, 16, 5, 367551.7553063, 0),
	(360, 16, 6, 91887.938826575, 0),
	(361, 16, 7, 7626698.9226057, 0),
	(362, 16, 8, 2249924.0506329, 0),
	(363, 16, 9, 742474.93670886, 0),
	(364, 16, 10, 843721.51898734, 0),
	(365, 16, 11, 375737.31645569, 0),
	(366, 16, 12, 94496.810126582, 0),
	(367, 16, 13, 4306354.6329114, 0),
	(368, 16, 14, NULL, 0),
	(369, 16, 15, NULL, 0),
	(370, 16, 16, NULL, 0),
	(371, 16, 17, NULL, 0),
	(372, 16, 18, NULL, 0),
	(373, 16, 19, 1288912.1179204, 0),
	(374, 16, 20, 2540650.2171053, 0),
	(375, 16, 21, 2540650.2171053, 0),
	(376, 16, 22, 264439.31346875, 0),
	(377, 16, 23, 176292.87564583, 0),
	(378, 16, 24, 16203348.079657, 0),
	(379, 16, 25, 324066.96159314, 0),
	(380, 16, 26, 291660.26543383, 0),
	(381, 16, 27, 1296267.8463726, 0),
	(382, 16, 28, 1911995.0733996, 0),
	(383, 16, 29, 905767.15765283, 0),
	(384, 16, 30, 18115343.153057, 0),
	(385, 16, 31, 19021110.31071, 0),
	(386, 17, 1, 3317560.3009491, 0),
	(387, 17, 2, 1658780.1504745, 0),
	(388, 17, 3, 1161146.1053322, 0),
	(389, 17, 4, 331756.03009491, 0),
	(390, 17, 5, 331756.03009491, 0),
	(391, 17, 6, 82939.007523728, 0),
	(392, 17, 7, 6883937.6244693, 0),
	(393, 17, 8, 1563569.6202532, 0),
	(394, 17, 9, 515977.97468356, 0),
	(395, 17, 10, 586338.60759495, 0),
	(396, 17, 11, 261116.12658228, 0),
	(397, 17, 12, 65669.924050634, 0),
	(398, 17, 13, 2992672.2531646, 0),
	(399, 17, 14, NULL, 0),
	(400, 17, 15, NULL, 0),
	(401, 17, 16, NULL, 0),
	(402, 17, 17, NULL, 0),
	(403, 17, 18, NULL, 0),
	(404, 17, 19, 1163385.4585353, 0),
	(405, 17, 20, 2201240.6342063, 0),
	(406, 17, 21, 2201240.6342063, 0),
	(407, 17, 22, 220799.90672338, 0),
	(408, 17, 23, 147199.93781559, 0),
	(409, 17, 24, 13609235.814914, 0),
	(410, 17, 25, 272184.71629828, 0),
	(411, 17, 26, 244966.24466845, 0),
	(412, 17, 27, 1088738.8651931, 0),
	(413, 17, 28, 1605889.8261598, 0),
	(414, 17, 29, 760756.28205369, 0),
	(415, 17, 30, 15215125.641074, 0),
	(416, 17, 31, 15975881.923128, 0),
	(417, 18, 1, 3740676.96, 0),
	(418, 18, 2, 1870338.48, 0),
	(419, 18, 3, 1309236.94, 0),
	(420, 18, 4, 374067.7, 0),
	(421, 18, 5, 374067.7, 0),
	(422, 18, 6, 93516.92, 0),
	(423, 18, 7, 7761904.7, 0),
	(424, 18, 8, 2088607.59, 0),
	(425, 18, 9, 689240.5, 0),
	(426, 18, 10, 783227.85, 0),
	(427, 18, 11, 348797.47, 0),
	(428, 18, 12, 87721.52, 0),
	(429, 18, 13, 3997594.93, 0),
	(430, 18, 14, NULL, 0),
	(431, 18, 15, NULL, 0),
	(432, 18, 16, NULL, 0),
	(433, 18, 17, NULL, 0),
	(434, 18, 18, NULL, 0),
	(435, 18, 19, 1311761.89, 0),
	(436, 18, 20, 2270206.68, 0),
	(437, 18, 21, 2270206.68, 0),
	(438, 18, 22, 261425.23, 0),
	(439, 18, 23, 174283.48666667, 0),
	(440, 18, 24, 15777176.916667, 0),
	(441, 18, 25, 315543.53833334, 0),
	(442, 18, 26, 283989.18450001, 0),
	(443, 18, 27, 1262174.1533334, 0),
	(444, 18, 28, 1861706.8761667, 0),
	(445, 18, 29, 881944.18964169, 0),
	(446, 18, 30, 17638883.792834, 0),
	(447, 18, 31, 18520827.982476, 0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;


-- Dumping structure for table estimasi_kapal.games
CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score_parts` double DEFAULT NULL,
  `finish` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- Dumping data for table estimasi_kapal.games: ~85 rows (approximately)
DELETE FROM `games`;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` (`id`, `user_id`, `level_id`, `created_at`, `score_parts`, `finish`, `total_score`) VALUES
	(20, 2, 2, '2015-12-31 15:20:35', NULL, 0, NULL),
	(22, 2, 2, '2015-12-31 15:38:03', NULL, 0, NULL),
	(28, 4, 3, '2016-01-01 23:38:18', NULL, 0, NULL),
	(29, 4, 3, '2016-01-01 23:40:53', NULL, 0, NULL),
	(30, 4, 3, '2016-01-01 23:46:00', NULL, 0, NULL),
	(31, 5, 3, '2016-01-01 23:54:57', NULL, 0, NULL),
	(32, 4, 2, '2016-01-02 00:03:00', NULL, 0, NULL),
	(33, 4, 3, '2016-01-02 00:24:46', NULL, 0, NULL),
	(34, 4, 3, '2016-01-02 10:39:44', NULL, 0, NULL),
	(35, 4, 2, '2016-01-02 11:27:43', NULL, 0, NULL),
	(36, 6, 3, '2016-01-02 11:40:44', NULL, 0, NULL),
	(37, 6, 3, '2016-01-02 12:00:01', 0, 0, NULL),
	(38, 4, 3, '2016-01-02 13:37:56', NULL, 0, NULL),
	(39, 4, 3, '2016-01-02 13:45:29', NULL, 0, NULL),
	(40, 6, 2, '2016-01-02 13:49:01', NULL, 0, NULL),
	(41, 6, 3, '2016-01-02 13:50:15', NULL, 0, NULL),
	(42, 6, 3, '2016-01-02 13:50:45', NULL, 0, NULL),
	(43, 6, 3, '2016-01-02 13:54:25', NULL, 0, NULL),
	(44, 6, 3, '2016-01-02 13:54:41', NULL, 0, NULL),
	(45, 6, 3, '2016-01-02 13:55:12', NULL, 0, NULL),
	(46, 6, 3, '2016-01-02 13:57:46', NULL, 0, NULL),
	(47, 6, 3, '2016-01-02 13:59:50', NULL, 0, NULL),
	(48, 6, 3, '2016-01-02 14:02:50', NULL, 0, NULL),
	(49, 6, 3, '2016-01-02 14:05:42', 0, 0, NULL),
	(50, 6, 2, '2016-01-07 20:49:42', NULL, 0, NULL),
	(51, 6, 2, '2016-01-07 20:49:42', NULL, 0, NULL),
	(52, 6, 2, '2016-01-07 20:49:42', NULL, 0, NULL),
	(53, 6, 2, '2016-01-07 20:49:43', NULL, 0, NULL),
	(54, 6, 2, '2016-01-07 20:49:43', NULL, 0, NULL),
	(55, 6, 2, '2016-01-07 20:49:43', NULL, 0, NULL),
	(56, 6, 2, '2016-01-07 20:49:43', NULL, 0, NULL),
	(57, 6, 2, '2016-01-07 20:49:44', NULL, 0, NULL),
	(58, 6, 2, '2016-01-07 20:49:44', NULL, 0, NULL),
	(59, 6, 2, '2016-01-07 20:49:44', NULL, 0, NULL),
	(60, 6, 2, '2016-01-07 20:55:28', NULL, 0, NULL),
	(61, 6, 2, '2016-01-07 20:55:29', NULL, 0, NULL),
	(62, 6, 2, '2016-01-07 20:55:29', NULL, 0, NULL),
	(63, 6, 2, '2016-01-07 20:55:29', NULL, 0, NULL),
	(64, 6, 2, '2016-01-07 20:55:29', NULL, 0, NULL),
	(65, 6, 2, '2016-01-07 20:55:29', NULL, 0, NULL),
	(66, 6, 2, '2016-01-07 20:55:30', NULL, 0, NULL),
	(67, 6, 2, '2016-01-07 20:55:30', NULL, 0, NULL),
	(68, 6, 2, '2016-01-07 20:55:30', NULL, 0, NULL),
	(69, 6, 2, '2016-01-07 20:55:30', NULL, 0, NULL),
	(70, 6, 2, '2016-01-07 20:55:30', NULL, 0, NULL),
	(71, 6, 2, '2016-01-07 20:55:31', NULL, 0, NULL),
	(72, 6, 2, '2016-01-07 20:55:31', NULL, 0, NULL),
	(73, 6, 2, '2016-01-07 20:55:31', NULL, 0, NULL),
	(74, 6, 2, '2016-01-07 20:55:31', NULL, 0, NULL),
	(75, 6, 2, '2016-01-07 20:55:31', NULL, 0, NULL),
	(76, 6, 2, '2016-01-07 20:55:32', NULL, 0, NULL),
	(77, 6, 2, '2016-01-07 20:55:32', NULL, 0, NULL),
	(78, 6, 2, '2016-01-07 20:55:32', NULL, 0, NULL),
	(79, 6, 2, '2016-01-07 20:55:32', NULL, 0, NULL),
	(80, 6, 2, '2016-01-07 20:55:32', NULL, 0, NULL),
	(81, 6, 2, '2016-01-07 20:55:37', NULL, 0, NULL),
	(82, 6, 2, '2016-01-07 20:55:38', NULL, 0, NULL),
	(83, 6, 2, '2016-01-07 20:55:38', NULL, 0, NULL),
	(84, 6, 2, '2016-01-07 20:55:38', NULL, 0, NULL),
	(85, 6, 2, '2016-01-07 20:55:38', NULL, 0, NULL),
	(86, 6, 2, '2016-01-07 20:55:39', NULL, 0, NULL),
	(87, 6, 2, '2016-01-07 20:55:39', NULL, 0, NULL),
	(88, 6, 2, '2016-01-07 20:55:39', NULL, 0, NULL),
	(89, 6, 2, '2016-01-07 20:55:39', NULL, 0, NULL),
	(90, 6, 2, '2016-01-07 20:55:39', NULL, 0, NULL),
	(91, 6, 2, '2016-01-07 20:56:09', NULL, 0, NULL),
	(92, 6, 2, '2016-01-07 20:56:10', NULL, 0, NULL),
	(93, 6, 2, '2016-01-07 20:56:10', NULL, 0, NULL),
	(94, 6, 2, '2016-01-07 20:56:10', NULL, 0, NULL),
	(95, 6, 2, '2016-01-07 20:56:10', NULL, 0, NULL),
	(96, 6, 2, '2016-01-07 20:56:11', NULL, 0, NULL),
	(97, 6, 2, '2016-01-07 20:56:11', NULL, 0, NULL),
	(98, 6, 2, '2016-01-07 20:56:11', NULL, 0, NULL),
	(99, 6, 2, '2016-01-07 20:56:11', NULL, 0, NULL),
	(100, 6, 2, '2016-01-07 20:56:11', NULL, 0, NULL),
	(101, 6, 2, '2016-01-07 20:56:56', NULL, 0, NULL),
	(102, 6, 3, '2016-01-07 21:03:01', NULL, 0, NULL),
	(103, 6, 3, '2016-01-07 21:04:06', 0, 0, NULL),
	(104, 6, 3, '2016-01-07 21:18:22', 0, 0, NULL),
	(105, 4, 3, '2016-01-08 23:42:57', 0, 0, NULL),
	(106, 6, 3, '2016-01-09 11:30:07', 0, 0, NULL),
	(107, 6, 3, '2016-01-09 12:53:54', 0, 0, NULL),
	(108, 6, 4, '2016-01-10 17:21:54', NULL, 0, NULL),
	(109, 6, 3, '2016-01-10 17:46:36', NULL, 0, NULL),
	(110, 6, 3, '2016-01-20 20:28:49', NULL, 0, NULL);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;


-- Dumping structure for table estimasi_kapal.interface_5
CREATE TABLE IF NOT EXISTS `interface_5` (
  `id` int(11) DEFAULT NULL,
  `label_name` varchar(50) DEFAULT NULL,
  `label_text` varchar(50) DEFAULT NULL,
  `label_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table estimasi_kapal.interface_5: ~27 rows (approximately)
DELETE FROM `interface_5`;
/*!40000 ALTER TABLE `interface_5` DISABLE KEYS */;
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
	(12, 'LWT (Lightweight)', '2400 ton', 1),
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
/*!40000 ALTER TABLE `interface_5` ENABLE KEYS */;


-- Dumping structure for table estimasi_kapal.levels
CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `difficulty` varchar(255) NOT NULL,
  `margin` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table estimasi_kapal.levels: ~3 rows (approximately)
DELETE FROM `levels`;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` (`id`, `difficulty`, `margin`) VALUES
	(2, 'Easy', 10),
	(3, 'Normal', 5),
	(4, 'Hard', 3);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;


-- Dumping structure for table estimasi_kapal.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `score_cost` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Dumping data for table estimasi_kapal.questions: ~15 rows (approximately)
DELETE FROM `questions`;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`, `game_id`, `dwt`, `harga_pelat`, `machinery_cost`, `construction_cost`, `tukar_dolar`, `wst`, `engine_power`, `type_of_engine`, `lwt`, `score_cost`) VALUES
	(5, 22, 7358, 10183, 506, 7246, 9500, 2031.924, 2909.29148, 3000, 2655.01072, NULL),
	(6, 23, 9622, 9521, 534, 8517, 9500, 2208.516, 4377.72188, 4480, 2526.86832, NULL),
	(7, 25, 5216, 9767, 527, 7970, 9500, 1864.848, 2180.62592, 2380, 2587.49488, NULL),
	(8, 34, 9690, 8512, 525, 8641, 9500, 2213.82, 4432.927, 4480, 2519.848, 38.709677419355),
	(9, 35, 5635, 9376, 546, 7688, 9500, 1897.53, 2272.62575, 2380, 2615.1405, NULL),
	(10, 36, 9485, 10047, 509, 7631, 9500, 2197.83, 4268.46575, 4480, 2540.4505, 38.709677419355),
	(11, 38, 6339, 8919, 527, 9406, 9500, 1952.442, 2482.54447, 2720, 2645.77858, NULL),
	(12, 39, 9128, 10202, 549, 8229, 9500, 2169.984, 3996.10688, 4000, 2572.31632, NULL),
	(13, 49, 8905, 8154, 517, 8189, 9500, 2152.59, 3835.03175, 3920, 2589.6345, 38.709677419355),
	(14, 104, 8729, 8457, 531, 8821, 9500, 2138.862, 3712.82087, 3920, 2601.89818, 16.129032258065),
	(15, 105, 9701, 8190, 548, 9115, 9500, 2214.678, 4441.91807, 4480, 2518.69498, 16.129032258065),
	(16, 106, 7835, 10294, 529, 9125, 9500, 2069.13, 3159.00575, 3360, 2645.0605, 16.129032258065),
	(17, 107, 5028, 10391, 519, 8128, 9500, 1850.184, 2147.33488, 2380, 2572.80832, 16.129032258065),
	(18, 108, 6962, 10833, 550, 8119, 9500, 2001.036, 2726.18108, 3000, 2656.35712, NULL),
	(19, 110, 7265, 9018, 547, 8143, 9500, 2024.67, 2864.31575, 3000, 2655.8905, NULL);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


-- Dumping structure for table estimasi_kapal.ship_parts
CREATE TABLE IF NOT EXISTS `ship_parts` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table estimasi_kapal.ship_parts: ~31 rows (approximately)
DELETE FROM `ship_parts`;
/*!40000 ALTER TABLE `ship_parts` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `ship_parts` ENABLE KEYS */;


-- Dumping structure for table estimasi_kapal.tebak_parts
CREATE TABLE IF NOT EXISTS `tebak_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=latin1;

-- Dumping data for table estimasi_kapal.tebak_parts: ~372 rows (approximately)
DELETE FROM `tebak_parts`;
/*!40000 ALTER TABLE `tebak_parts` DISABLE KEYS */;
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
	(156, 103, 1, ''),
	(157, 103, 2, ''),
	(158, 103, 3, ''),
	(159, 103, 4, ''),
	(160, 103, 5, ''),
	(161, 103, 6, ''),
	(162, 103, 7, ''),
	(163, 103, 8, ''),
	(164, 103, 9, ''),
	(165, 103, 10, ''),
	(166, 103, 11, ''),
	(167, 103, 12, ''),
	(168, 103, 13, ''),
	(169, 103, 14, ''),
	(170, 103, 15, ''),
	(171, 103, 16, ''),
	(172, 103, 17, ''),
	(173, 103, 18, ''),
	(174, 103, 19, ''),
	(175, 103, 20, ''),
	(176, 103, 21, ''),
	(177, 103, 22, ''),
	(178, 103, 23, ''),
	(179, 103, 24, ''),
	(180, 103, 25, ''),
	(181, 103, 26, ''),
	(182, 103, 27, ''),
	(183, 103, 28, ''),
	(184, 103, 29, ''),
	(185, 103, 30, ''),
	(186, 103, 31, 'QWEQWE'),
	(187, 104, 1, ''),
	(188, 104, 2, ''),
	(189, 104, 3, ''),
	(190, 104, 4, ''),
	(191, 104, 5, ''),
	(192, 104, 6, ''),
	(193, 104, 7, ''),
	(194, 104, 8, ''),
	(195, 104, 9, ''),
	(196, 104, 10, ''),
	(197, 104, 11, ''),
	(198, 104, 12, ''),
	(199, 104, 13, ''),
	(200, 104, 14, ''),
	(201, 104, 15, ''),
	(202, 104, 16, ''),
	(203, 104, 17, ''),
	(204, 104, 18, ''),
	(205, 104, 19, ''),
	(206, 104, 20, ''),
	(207, 104, 21, ''),
	(208, 104, 22, ''),
	(209, 104, 23, ''),
	(210, 104, 24, ''),
	(211, 104, 25, ''),
	(212, 104, 26, ''),
	(213, 104, 27, ''),
	(214, 104, 28, ''),
	(215, 104, 29, 'adwads'),
	(216, 104, 30, 'awdasdad'),
	(217, 104, 31, 'awdasdad'),
	(218, 105, 1, ''),
	(219, 105, 2, ''),
	(220, 105, 3, ''),
	(221, 105, 4, ''),
	(222, 105, 5, ''),
	(223, 105, 6, ''),
	(224, 105, 7, ''),
	(225, 105, 8, ''),
	(226, 105, 9, ''),
	(227, 105, 10, ''),
	(228, 105, 11, ''),
	(229, 105, 12, ''),
	(230, 105, 13, ''),
	(231, 105, 14, ''),
	(232, 105, 15, ''),
	(233, 105, 16, ''),
	(234, 105, 17, ''),
	(235, 105, 18, ''),
	(236, 105, 19, ''),
	(237, 105, 20, ''),
	(238, 105, 21, ''),
	(239, 105, 22, ''),
	(240, 105, 23, ''),
	(241, 105, 24, ''),
	(242, 105, 25, ''),
	(243, 105, 26, ''),
	(244, 105, 27, ''),
	(245, 105, 28, ''),
	(246, 105, 29, 'LALI CUK'),
	(247, 105, 30, ''),
	(248, 105, 31, 'GRAND MARGIN '),
	(249, 106, 1, ''),
	(250, 106, 2, ''),
	(251, 106, 3, ''),
	(252, 106, 4, ''),
	(253, 106, 5, ''),
	(254, 106, 6, ''),
	(255, 106, 7, ''),
	(256, 106, 8, ''),
	(257, 106, 9, ''),
	(258, 106, 10, ''),
	(259, 106, 11, ''),
	(260, 106, 12, ''),
	(261, 106, 13, ''),
	(262, 106, 14, ''),
	(263, 106, 15, ''),
	(264, 106, 16, ''),
	(265, 106, 17, ''),
	(266, 106, 18, ''),
	(267, 106, 19, ''),
	(268, 106, 20, ''),
	(269, 106, 21, ''),
	(270, 106, 22, ''),
	(271, 106, 23, ''),
	(272, 106, 24, ''),
	(273, 106, 25, ''),
	(274, 106, 26, ''),
	(275, 106, 27, ''),
	(276, 106, 28, ''),
	(277, 106, 29, ''),
	(278, 106, 30, ''),
	(279, 106, 31, 'GRAND MARGIN'),
	(280, 107, 1, ''),
	(281, 107, 2, ''),
	(282, 107, 3, ''),
	(283, 107, 4, ''),
	(284, 107, 5, ''),
	(285, 107, 6, ''),
	(286, 107, 7, ''),
	(287, 107, 8, ''),
	(288, 107, 9, ''),
	(289, 107, 10, ''),
	(290, 107, 11, ''),
	(291, 107, 12, ''),
	(292, 107, 13, ''),
	(293, 107, 14, ''),
	(294, 107, 15, ''),
	(295, 107, 16, ''),
	(296, 107, 17, ''),
	(297, 107, 18, ''),
	(298, 107, 19, ''),
	(299, 107, 20, ''),
	(300, 107, 21, ''),
	(301, 107, 22, ''),
	(302, 107, 23, ''),
	(303, 107, 24, ''),
	(304, 107, 25, ''),
	(305, 107, 26, ''),
	(306, 107, 27, ''),
	(307, 107, 28, ''),
	(308, 107, 29, ''),
	(309, 107, 30, ''),
	(310, 107, 31, ''),
	(311, 108, 1, ''),
	(312, 108, 2, ''),
	(313, 108, 3, ''),
	(314, 108, 4, ''),
	(315, 108, 5, ''),
	(316, 108, 6, ''),
	(317, 108, 7, ''),
	(318, 108, 8, ''),
	(319, 108, 9, ''),
	(320, 108, 10, ''),
	(321, 108, 11, ''),
	(322, 108, 12, ''),
	(323, 108, 13, ''),
	(324, 108, 14, ''),
	(325, 108, 15, ''),
	(326, 108, 16, ''),
	(327, 108, 17, ''),
	(328, 108, 18, ''),
	(329, 108, 19, ''),
	(330, 108, 20, ''),
	(331, 108, 21, ''),
	(332, 108, 22, ''),
	(333, 108, 23, ''),
	(334, 108, 24, ''),
	(335, 108, 25, ''),
	(336, 108, 26, ''),
	(337, 108, 27, ''),
	(338, 108, 28, ''),
	(339, 108, 29, ''),
	(340, 108, 30, ''),
	(341, 108, 31, ''),
	(342, 109, 1, NULL),
	(343, 109, 2, NULL),
	(344, 109, 3, NULL),
	(345, 109, 4, NULL),
	(346, 109, 5, NULL),
	(347, 109, 6, NULL),
	(348, 109, 7, NULL),
	(349, 109, 8, NULL),
	(350, 109, 9, NULL),
	(351, 109, 10, NULL),
	(352, 109, 11, NULL),
	(353, 109, 12, NULL),
	(354, 109, 13, NULL),
	(355, 109, 14, NULL),
	(356, 109, 15, NULL),
	(357, 109, 16, NULL),
	(358, 109, 17, NULL),
	(359, 109, 18, NULL),
	(360, 109, 19, NULL),
	(361, 109, 20, NULL),
	(362, 109, 21, NULL),
	(363, 109, 22, NULL),
	(364, 109, 23, NULL),
	(365, 109, 24, NULL),
	(366, 109, 25, NULL),
	(367, 109, 26, NULL),
	(368, 109, 27, NULL),
	(369, 109, 28, NULL),
	(370, 109, 29, NULL),
	(371, 109, 30, NULL),
	(372, 109, 31, NULL),
	(373, 110, 1, ''),
	(374, 110, 2, ''),
	(375, 110, 3, ''),
	(376, 110, 4, ''),
	(377, 110, 5, ''),
	(378, 110, 6, ''),
	(379, 110, 7, ''),
	(380, 110, 8, ''),
	(381, 110, 9, ''),
	(382, 110, 10, ''),
	(383, 110, 11, ''),
	(384, 110, 12, ''),
	(385, 110, 13, ''),
	(386, 110, 14, ''),
	(387, 110, 15, ''),
	(388, 110, 16, ''),
	(389, 110, 17, ''),
	(390, 110, 18, ''),
	(391, 110, 19, ''),
	(392, 110, 20, ''),
	(393, 110, 21, ''),
	(394, 110, 22, ''),
	(395, 110, 23, ''),
	(396, 110, 24, ''),
	(397, 110, 25, ''),
	(398, 110, 26, ''),
	(399, 110, 27, ''),
	(400, 110, 28, ''),
	(401, 110, 29, ''),
	(402, 110, 30, ''),
	(403, 110, 31, '');
/*!40000 ALTER TABLE `tebak_parts` ENABLE KEYS */;


-- Dumping structure for table estimasi_kapal.tebak_regresis
CREATE TABLE IF NOT EXISTS `tebak_regresis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1122 DEFAULT CHARSET=latin1;

-- Dumping data for table estimasi_kapal.tebak_regresis: ~22 rows (approximately)
DELETE FROM `tebak_regresis`;
/*!40000 ALTER TABLE `tebak_regresis` DISABLE KEYS */;
INSERT INTO `tebak_regresis` (`id`, `game_id`, `dwt`, `wst`, `act_wst`, `engine_power`, `act_engine_power`, `type_of_engine`, `act_type_of_engine`, `lwt`, `act_lwt`, `score`) VALUES
	(1098, 20, 7863, 7863, 7863, 7863, 7863, 6720, 0, 7863, 7863, 75),
	(1100, 22, 5253, 5253, 5253, 5253, 5253, 5600, 5600, 5253, 5253, 100),
	(1101, 23, 5460, NULL, 1883.88, NULL, 2231.212, NULL, 2380, NULL, 2604.448, NULL),
	(1102, 29, 9424, NULL, 2193.072, NULL, 4220.66432, NULL, 4480, NULL, 2546.25648, NULL),
	(1103, 32, 9398, NULL, 2191.044, NULL, 4200.44828, NULL, 4480, NULL, 2548.68592, NULL),
	(1104, 33, 6505, NULL, 1965.39, NULL, 2542.15175, NULL, 2720, NULL, 2650.1145, NULL),
	(1105, 34, 5628, 123, 1896.984, 332, 2270.88688, 1935, 2380, 332, 2614.73632, 0),
	(1106, 35, 5538, NULL, 1889.964, NULL, 2249.14108, NULL, 2380, NULL, 2609.36512, NULL),
	(1107, 36, 5095, 21312, 1855.41, 12312, 2158.63175, 1935, 2380, 123, 2578.2045, 0),
	(1108, 37, 5277, NULL, 1869.606, NULL, 2192.49103, NULL, 2380, NULL, 2591.95642, NULL),
	(1109, 41, 9318, 12, 2184.804, 3123, 4138.83868, 1935, 4480, 123, 2555.99152, 0),
	(1110, 44, 9342, 123, 2186.676, 123123, 4157.22748, 1935, 4480, 123123, 2553.82672, 0),
	(1111, 46, 5261, 12312, 1868.358, 123123, 2189.32847, 1935, 2380, 23123, 2590.80058, 0),
	(1112, 47, 5943, NULL, 1921.554, NULL, 2355.92743, NULL, 2380, NULL, 2630.98402, NULL),
	(1113, 49, 8547, 123123, 2124.666, 12313, 3591.00463, 1935, 3920, 12312, 2613.27682, 0),
	(1114, 39, 9550, NULL, 2202.9, NULL, 4319.975, NULL, 4480, NULL, 2534.1, NULL),
	(1115, 103, 8512, NULL, 2121.936, NULL, 3568.11008, NULL, 3920, NULL, 2615.31312, NULL),
	(1116, 104, 9291, 0, 2182.698, 0, 4118.24767, 1935, 4480, 0, 2558.39938, 0),
	(1117, 105, 7724, 0, 2060.472, 0, 3098.05232, 1935, 3360, 0, 2648.18848, 0),
	(1118, 106, 8552, 0, 2125.056, 0, 3594.28928, 1935, 3920, 0, 2612.98192, 0),
	(1119, 107, 8866, 0, 2149.548, 0, 3807.57692, 1935, 3920, 0, 2592.45888, 0),
	(1120, 108, 7042, 0, 2007.276, 0, 2761.40348, 1935, 3000, 0, 2656.59072, NULL),
	(1121, 110, 9989, NULL, 2237.142, NULL, 4683.34847, NULL, 5040, NULL, 2486.78458, NULL);
/*!40000 ALTER TABLE `tebak_regresis` ENABLE KEYS */;


-- Dumping structure for table estimasi_kapal.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table estimasi_kapal.users: ~6 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `name`) VALUES
	(1, 'galih', '6b99d492429bd81db816ca47a8224455', 'Galih Putera NS'),
	(2, 'yoga', '807659cd883fc0a63f6ce615893b3558', 'Yoga Aliarham'),
	(3, 'baskara', '4729d324bfdc580fd929db152d911dc5', 'Baskara'),
	(4, 'yogandull', '0192023a7bbd73250516f069df18b500', 'yoga'),
	(5, 'user_ganas', '0192023a7bbd73250516f069df18b500', 'user ganas'),
	(6, 'test_game1', '0192023a7bbd73250516f069df18b500', 'test_game1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
