-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2023 at 04:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `MaterialID` int(11) NOT NULL,
  `MaterialName` varchar(255) NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`MaterialID`, `MaterialName`, `Price`) VALUES
(1, 'material_000001', 1),
(2, 'material_000002', 1),
(3, 'material_000003', 1),
(4, 'material_000004', 1),
(5, 'material_000005', 1),
(6, 'material_000006', 1),
(7, 'material_000007', 1),
(8, 'material_000008', 1),
(9, 'material_000009', 1),
(10, 'material_000010', 1),
(11, 'material_000011', 1),
(12, 'material_000012', 1),
(13, 'material_000013', 1),
(14, 'material_000014', 1),
(15, 'material_000015', 1),
(16, 'material_000016', 1),
(17, 'material_000017', 1),
(18, 'material_000018', 1),
(19, 'material_000019', 1),
(20, 'material_000020', 1),
(21, 'material_000021', 1),
(22, 'material_000022', 1),
(23, 'material_000023', 1),
(24, 'material_000024', 1),
(25, 'material_000025', 1),
(26, 'material_000026', 1),
(27, 'material_000027', 1),
(28, 'material_000028', 1),
(29, 'material_000029', 1),
(30, 'material_000030', 1),
(31, 'material_000031', 1),
(32, 'material_000032', 1),
(33, 'material_000033', 1),
(34, 'material_000034', 1),
(35, 'material_000035', 1),
(36, 'material_000036', 1),
(37, 'material_000037', 1),
(38, 'material_000038', 1),
(39, 'material_000039', 1),
(40, 'material_000040', 1),
(41, 'material_000041', 1),
(42, 'material_000042', 1),
(43, 'material_000043', 1),
(44, 'material_000044', 1),
(45, 'material_000045', 1),
(46, 'material_000046', 1),
(47, 'material_000047', 1),
(48, 'material_000048', 1),
(49, 'material_000049', 1),
(50, 'material_000050', 1),
(51, 'material_000051', 1),
(52, 'material_000052', 1),
(53, 'material_000053', 1),
(54, 'material_000054', 1),
(55, 'material_000055', 1),
(56, 'material_000056', 1),
(57, 'material_000057', 1),
(58, 'material_000058', 1),
(59, 'material_000059', 1),
(60, 'material_000060', 1),
(61, 'material_000061', 1),
(62, 'material_000062', 1),
(63, 'material_000063', 1),
(64, 'material_000064', 1),
(65, 'material_000065', 1),
(66, 'material_000066', 1),
(67, 'material_000067', 1),
(68, 'material_000068', 1),
(69, 'material_000069', 1),
(70, 'material_000070', 1),
(71, 'material_000071', 1),
(72, 'material_000072', 1),
(73, 'material_000073', 1),
(74, 'material_000074', 1),
(75, 'material_000075', 1),
(76, 'material_000076', 1),
(77, 'material_000077', 1),
(78, 'material_000078', 1),
(79, 'material_000079', 1),
(80, 'material_000080', 1),
(81, 'material_000081', 1),
(82, 'material_000082', 1),
(83, 'material_000083', 1),
(84, 'material_000084', 1),
(85, 'material_000085', 1),
(86, 'material_000086', 1),
(87, 'material_000087', 1),
(88, 'material_000088', 1),
(89, 'material_000089', 1),
(90, 'material_000090', 1),
(91, 'material_000091', 1),
(92, 'material_000092', 1),
(93, 'material_000093', 1),
(94, 'material_000094', 1),
(95, 'material_000095', 1),
(96, 'material_000096', 1),
(97, 'material_000097', 1),
(98, 'material_000098', 1),
(99, 'material_000099', 1),
(100, 'material_000100', 1),
(101, 'material_000101', 1),
(102, 'material_000102', 1),
(103, 'material_000103', 1),
(104, 'material_000104', 1),
(105, 'material_000105', 1),
(106, 'material_000106', 1),
(107, 'material_000107', 1),
(108, 'material_000108', 1),
(109, 'material_000109', 1),
(110, 'material_000110', 1),
(111, 'material_000111', 1),
(112, 'material_000112', 1),
(113, 'material_000113', 1),
(114, 'material_000114', 1),
(115, 'material_000115', 1),
(116, 'material_000116', 1),
(117, 'material_000117', 1),
(118, 'material_000118', 1),
(119, 'material_000119', 1),
(120, 'material_000120', 1),
(121, 'material_000121', 1),
(122, 'material_000122', 1),
(123, 'material_000123', 1),
(124, 'material_000124', 1),
(125, 'material_000125', 1),
(126, 'material_000126', 1),
(127, 'material_000127', 1),
(128, 'material_000128', 1),
(129, 'material_000129', 1),
(130, 'material_000130', 1),
(131, 'material_000131', 1),
(132, 'material_000132', 1),
(133, 'material_000133', 1),
(134, 'material_000134', 1),
(135, 'material_000135', 1),
(136, 'material_000136', 1),
(137, 'material_000137', 1),
(138, 'material_000138', 1),
(139, 'material_000139', 1),
(140, 'material_000140', 1),
(141, 'material_000141', 1),
(142, 'material_000142', 1),
(143, 'material_000143', 1),
(144, 'material_000144', 1),
(145, 'material_000145', 1),
(146, 'material_000146', 1),
(147, 'material_000147', 1),
(148, 'material_000148', 1),
(149, 'material_000149', 1),
(150, 'material_000150', 1),
(151, 'material_000151', 1),
(152, 'material_000152', 1),
(153, 'material_000153', 1),
(154, 'material_000154', 1),
(155, 'material_000155', 1),
(156, 'material_000156', 1),
(157, 'material_000157', 1),
(158, 'material_000158', 1),
(159, 'material_000159', 1),
(160, 'material_000160', 1),
(161, 'material_000161', 1),
(162, 'material_000162', 1),
(163, 'material_000163', 1),
(164, 'material_000164', 1),
(165, 'material_000165', 1),
(166, 'material_000166', 1),
(167, 'material_000167', 1),
(168, 'material_000168', 1),
(169, 'material_000169', 1),
(170, 'material_000170', 1),
(171, 'material_000171', 1),
(172, 'material_000172', 1),
(173, 'material_000173', 1),
(174, 'material_000174', 1),
(175, 'material_000175', 1),
(176, 'material_000176', 1),
(177, 'material_000177', 1),
(178, 'material_000178', 1),
(179, 'material_000179', 1),
(180, 'material_000180', 1),
(181, 'material_000181', 1),
(182, 'material_000182', 1),
(183, 'material_000183', 1),
(184, 'material_000184', 1),
(185, 'material_000185', 1),
(186, 'material_000186', 1),
(187, 'material_000187', 1),
(188, 'material_000188', 1),
(189, 'material_000189', 1),
(190, 'material_000190', 1),
(191, 'material_000191', 1),
(192, 'material_000192', 1),
(193, 'material_000193', 1),
(194, 'material_000194', 1),
(195, 'material_000195', 1),
(196, 'material_000196', 1),
(197, 'material_000197', 1),
(198, 'material_000198', 1),
(199, 'material_000199', 1),
(200, 'material_000200', 1),
(201, 'material_000201', 1),
(202, 'material_000202', 1),
(203, 'material_000203', 1),
(204, 'material_000204', 1),
(205, 'material_000205', 1),
(206, 'material_000206', 1),
(207, 'material_000207', 1),
(208, 'material_000208', 1),
(209, 'material_000209', 1),
(210, 'material_000210', 1),
(211, 'material_000211', 1),
(212, 'material_000212', 1),
(213, 'material_000213', 1),
(214, 'material_000214', 1),
(215, 'material_000215', 1),
(216, 'material_000216', 1),
(217, 'material_000217', 1),
(218, 'material_000218', 1),
(219, 'material_000219', 1),
(220, 'material_000220', 1),
(221, 'material_000221', 1),
(222, 'material_000222', 1),
(223, 'material_000223', 1),
(224, 'material_000224', 1),
(225, 'material_000225', 1),
(226, 'material_000226', 1),
(227, 'material_000227', 1),
(228, 'material_000228', 1),
(229, 'material_000229', 1),
(230, 'material_000230', 1),
(231, 'material_000231', 1),
(232, 'material_000232', 1),
(233, 'material_000233', 1),
(234, 'material_000234', 1),
(235, 'material_000235', 1),
(236, 'material_000236', 1),
(237, 'material_000237', 1),
(238, 'material_000238', 1),
(239, 'material_000239', 1),
(240, 'material_000240', 1),
(241, 'material_000241', 1),
(242, 'material_000242', 1),
(243, 'material_000243', 1),
(244, 'material_000244', 1),
(245, 'material_000246', 1),
(246, 'material_000247', 1),
(247, 'material_000248', 1),
(248, 'material_000249', 1),
(249, 'material_000250', 1),
(250, 'material_000251', 1),
(251, 'material_000252', 1),
(252, 'material_000253', 1),
(253, 'material_000254', 1),
(254, 'material_000255', 1),
(255, 'material_000256', 1),
(256, 'material_000257', 1),
(257, 'material_000258', 1),
(258, 'material_000259', 1),
(259, 'material_000260', 1),
(260, 'material_000261', 1),
(261, 'material_000262', 1),
(262, 'material_000263', 1),
(263, 'material_000264', 1),
(264, 'material_000265', 1),
(265, 'material_000266', 1),
(266, 'material_000267', 1),
(267, 'material_000268', 1),
(268, 'material_000269', 1),
(269, 'material_000270', 1),
(270, 'material_000271', 1),
(271, 'material_000272', 1),
(272, 'material_000273', 1),
(273, 'material_000274', 1),
(274, 'material_000275', 1),
(275, 'material_000276', 1),
(276, 'material_000277', 1),
(277, 'material_000278', 1),
(278, 'material_000279', 1),
(279, 'material_000280', 1),
(280, 'material_000281', 1),
(281, 'material_000282', 1),
(282, 'material_000283', 1),
(283, 'material_000285', 1),
(284, 'material_000287', 1),
(285, 'material_000288', 1),
(286, 'material_000289', 1),
(287, 'material_000290', 1),
(288, 'material_000291', 1),
(289, 'material_000292', 1),
(290, 'material_000294', 1),
(291, 'material_000295', 1),
(292, 'material_000296', 1),
(293, 'material_000297', 1),
(294, 'material_000298', 1),
(295, 'material_000299', 1),
(296, 'material_000300', 1),
(297, 'material_000302', 1),
(298, 'material_000303', 1),
(299, 'material_000304', 1),
(300, 'material_000305', 1),
(301, 'material_000306', 1),
(302, 'material_000307', 1),
(303, 'material_000308', 1),
(304, 'material_000309', 1),
(305, 'material_000310', 1),
(306, 'material_000311', 1),
(307, 'material_000312', 1),
(308, 'material_000313', 1),
(309, 'material_000314', 1),
(310, 'material_000315', 1),
(311, 'material_000316', 1),
(312, 'material_000317', 1),
(313, 'material_000318', 1),
(314, 'material_000319', 1),
(315, 'material_000320', 1),
(316, 'material_000321', 1),
(317, 'material_000322', 1),
(318, 'material_000323', 1),
(319, 'material_000324', 1),
(320, 'material_000325', 1),
(321, 'material_000326', 1),
(322, 'material_000327', 1),
(323, 'material_000328', 1),
(324, 'material_000329', 1),
(325, 'material_000331', 1),
(326, 'material_000332', 1),
(327, 'material_000334', 1),
(328, 'material_000335', 1),
(329, 'material_000336', 1),
(330, 'material_000337', 1),
(331, 'material_000338', 1),
(332, 'material_000339', 1),
(333, 'material_000340', 1),
(334, 'material_000341', 1),
(335, 'material_000342', 1),
(336, 'material_000343', 1),
(337, 'material_000344', 1),
(338, 'material_000345', 1),
(339, 'material_000346', 1),
(340, 'material_000347', 1),
(341, 'material_000348', 1),
(342, 'material_000349', 1),
(343, 'material_000350', 1),
(344, 'material_000351', 1),
(345, 'material_000352', 1),
(346, 'material_000353', 1),
(347, 'material_000354', 1),
(348, 'material_000355', 1),
(349, 'material_000356', 1),
(350, 'material_000357', 1),
(351, 'material_000358', 1),
(352, 'material_000360', 1),
(353, 'material_000361', 1),
(354, 'material_000362', 1),
(355, 'material_000363', 1),
(356, 'material_000364', 1),
(357, 'material_000365', 1),
(358, 'material_000366', 1),
(359, 'material_000367', 1),
(360, 'material_000368', 1),
(361, 'material_000369', 1),
(362, 'material_000370', 1),
(363, 'material_000371', 1),
(364, 'material_000372', 1),
(365, 'material_000373', 1),
(366, 'material_000374', 1),
(367, 'material_000375', 1),
(368, 'material_000376', 1),
(369, 'material_000377', 1),
(370, 'material_000378', 1),
(371, 'material_000379', 1),
(372, 'material_000380', 1),
(373, 'material_000381', 1),
(374, 'material_000382', 1),
(375, 'material_000383', 1),
(376, 'material_000384', 1),
(377, 'material_000385', 1),
(378, 'material_000386', 1),
(379, 'material_000387', 1),
(380, 'material_000388', 1),
(381, 'material_000389', 1),
(382, 'material_000390', 1),
(383, 'material_000391', 1),
(384, 'material_000392', 1),
(385, 'material_000393', 1),
(386, 'material_000394', 1),
(387, 'material_000395', 1),
(388, 'material_000396', 1),
(389, 'material_000397', 1),
(390, 'material_000399', 1),
(391, 'material_000400', 1),
(392, 'material_000401', 1),
(393, 'material_000402', 1),
(394, 'material_000403', 1),
(395, 'material_000404', 1),
(396, 'material_000405', 1),
(397, 'material_000406', 1),
(398, 'material_000407', 1),
(399, 'material_000408', 1),
(400, 'material_000409', 1),
(401, 'material_000410', 1),
(402, 'material_000411', 1),
(403, 'material_000412', 1),
(404, 'material_000413', 1),
(405, 'material_000414', 1),
(406, 'material_000415', 1),
(407, 'material_000416', 1),
(408, 'material_000417', 1),
(409, 'material_000419', 1),
(410, 'material_000420', 1),
(411, 'material_000421', 1),
(412, 'material_000422', 1),
(413, 'material_000423', 1),
(414, 'material_000424', 1),
(415, 'material_000425', 1),
(416, 'material_000426', 1),
(417, 'material_000427', 1),
(418, 'material_000428', 1),
(419, 'material_000429', 1),
(420, 'material_000430', 1),
(421, 'material_000431', 1),
(422, 'material_000432', 1),
(423, 'material_000433', 1),
(424, 'material_000434', 1),
(425, 'material_000435', 1),
(426, 'material_000436', 1),
(427, 'material_000437', 1),
(428, 'material_000438', 1),
(429, 'material_000439', 1),
(430, 'material_000440', 1),
(431, 'material_000441', 1),
(432, 'material_000442', 1),
(433, 'material_000443', 1),
(434, 'material_000444', 1),
(435, 'material_000445', 1),
(436, 'material_000446', 1),
(437, 'material_000447', 1),
(438, 'material_000448', 1),
(439, 'material_000449', 1),
(440, 'material_000450', 1),
(441, 'material_000451', 1),
(442, 'material_000452', 1),
(443, 'material_000453', 1),
(444, 'material_000454', 1),
(445, 'material_000455', 1),
(446, 'material_000456', 1),
(447, 'material_000457', 1),
(448, 'material_000458', 1),
(449, 'material_000459', 1),
(450, 'material_000460', 1),
(451, 'material_000461', 1),
(452, 'material_000462', 1),
(453, 'material_000463', 1),
(454, 'material_000464', 1),
(455, 'material_000465', 1),
(456, 'material_000466', 1),
(457, 'material_000467', 1),
(458, 'material_000468', 1),
(459, 'material_000469', 1),
(460, 'material_000470', 1),
(461, 'material_000471', 1),
(462, 'material_000472', 1),
(463, 'material_000473', 1),
(464, 'material_000474', 1),
(465, 'material_000475', 1),
(466, 'material_000476', 1),
(467, 'material_000477', 1),
(468, 'material_000478', 1),
(469, 'material_000479', 1),
(470, 'material_000480', 1),
(471, 'material_000481', 1),
(472, 'material_000482', 1),
(473, 'material_000483', 1),
(474, 'material_000484', 1),
(475, 'material_000485', 1),
(476, 'material_000486', 1),
(477, 'material_000487', 1),
(478, 'material_000488', 1),
(479, 'material_000489', 1),
(480, 'material_000490', 1),
(481, 'material_000491', 1),
(482, 'material_000492', 1),
(483, 'material_000493', 1),
(484, 'material_000494', 1),
(485, 'material_000495', 1),
(486, 'material_000496', 1),
(487, 'material_000497', 1),
(488, 'material_000498', 1),
(489, 'material_000499', 1),
(490, 'material_000500', 1),
(491, 'material_000501', 1),
(492, 'material_000502', 1),
(493, 'material_000503', 1),
(494, 'material_000504', 1),
(495, 'material_000505', 1),
(496, 'material_000506', 1),
(497, 'material_000507', 1),
(498, 'material_000508', 1),
(499, 'material_000509', 1),
(500, 'material_000510', 1),
(501, 'material_000511', 1),
(502, 'material_000512', 1),
(503, 'material_000513', 1),
(504, 'material_000514', 1),
(505, 'material_000515', 1),
(506, 'material_000516', 1),
(507, 'material_000517', 1),
(508, 'material_000518', 1),
(509, 'material_000519', 1),
(510, 'material_000520', 1),
(511, 'material_000521', 1),
(512, 'material_000522', 1),
(513, 'material_000523', 1),
(514, 'material_000524', 1),
(515, 'material_000525', 1),
(516, 'material_000526', 1),
(517, 'material_000527', 1),
(518, 'material_000528', 1),
(519, 'material_000529', 1),
(520, 'material_000530', 1),
(521, 'material_000531', 1),
(522, 'material_000532', 1),
(523, 'material_000533', 1),
(524, 'material_000534', 1),
(525, 'material_000535', 1),
(526, 'material_000536', 1),
(527, 'material_000537', 1),
(528, 'material_000538', 1),
(529, 'material_000539', 1),
(530, 'material_000540', 1),
(531, 'material_000541', 1),
(532, 'material_000542', 1),
(533, 'material_000543', 1),
(534, 'material_000544', 1),
(535, 'material_000545', 1),
(536, 'material_000546', 1),
(537, 'material_000547', 1),
(538, 'material_000548', 1),
(539, 'material_000549', 1),
(540, 'material_000550', 1),
(541, 'material_000551', 1),
(542, 'material_000552', 1),
(543, 'material_000553', 1),
(544, 'material_000554', 1),
(545, 'material_000555', 1),
(546, 'material_000556', 1),
(547, 'material_000557', 1),
(548, 'material_000558', 1),
(549, 'material_000559', 1),
(550, 'material_000560', 1),
(551, 'material_000561', 1),
(552, 'material_000562', 1),
(553, 'material_000563', 1),
(554, 'material_000564', 1),
(555, 'material_000565', 1),
(556, 'material_000566', 1),
(557, 'material_000567', 1),
(558, 'material_000568', 1),
(559, 'material_000569', 1),
(560, 'material_000570', 1),
(561, 'material_000571', 1),
(562, 'material_000572', 1),
(563, 'material_000573', 1),
(564, 'material_000574', 1),
(565, 'material_000575', 1),
(566, 'material_000580', 1),
(567, 'material_000581', 1),
(568, 'material_000582', 1),
(569, 'material_000583', 1),
(570, 'material_000584', 1),
(571, 'material_000585', 1),
(572, 'material_000586', 1),
(573, 'material_000587', 1),
(574, 'material_000588', 1),
(575, 'material_000589', 1),
(576, 'material_000590', 1),
(577, 'material_000591', 1),
(578, 'material_000592', 1),
(579, 'material_000593', 1),
(580, 'material_000594', 1),
(581, 'material_000595', 1),
(582, 'material_000596', 1),
(583, 'material_000597', 1),
(584, 'material_000598', 1),
(585, 'material_000599', 1),
(586, 'material_000600', 1),
(587, 'material_000601', 1),
(588, 'material_000602', 1),
(589, 'material_000603', 1),
(590, 'material_000604', 1),
(591, 'material_000605', 1),
(592, 'material_000606', 1),
(593, 'material_000607', 1),
(594, 'material_000608', 1),
(595, 'material_000609', 1),
(596, 'material_000610', 1),
(597, 'material_000611', 1),
(598, 'material_000612', 1),
(599, 'material_000613', 1),
(600, 'material_000614', 1),
(601, 'material_000615', 1),
(602, 'material_000616', 1),
(603, 'material_000617', 1),
(604, 'material_000618', 1),
(605, 'material_000619', 1),
(606, 'material_000620', 1),
(607, 'material_000621', 1),
(608, 'material_000622', 1),
(609, 'material_000623', 1),
(610, 'material_000624', 1),
(611, 'material_000625', 1),
(612, 'material_000626', 1),
(613, 'material_000627', 1),
(614, 'material_000628', 1),
(615, 'material_000629', 1),
(616, 'material_000630', 1),
(617, 'material_000631', 1),
(618, 'material_000632', 1),
(619, 'material_000633', 1),
(620, 'material_000634', 1),
(621, 'material_000635', 1),
(622, 'material_000636', 1),
(623, 'material_000637', 1),
(624, 'material_000638', 1),
(625, 'material_000639', 1),
(626, 'material_000640', 1),
(627, 'material_000641', 1),
(628, 'material_000642', 1),
(629, 'material_000643', 1),
(630, 'material_000644', 1),
(631, 'material_000645', 1),
(632, 'material_000646', 1),
(633, 'material_000647', 1),
(634, 'material_000648', 1),
(635, 'material_000649', 1),
(636, 'material_000650', 1),
(637, 'material_000651', 1),
(638, 'material_000652', 1),
(639, 'material_000653', 1),
(640, 'material_000654', 1),
(641, 'material_000655', 1),
(642, 'material_000656', 1),
(643, 'material_000657', 1),
(644, 'material_000658', 1),
(645, 'material_000659', 1),
(646, 'material_000660', 1),
(647, 'material_000661', 1),
(648, 'material_000662', 1),
(649, 'material_000663', 1),
(650, 'material_000664', 1),
(651, 'material_000665', 1),
(652, 'material_000666', 1),
(653, 'material_000667', 1),
(654, 'material_000668', 1),
(655, 'material_000669', 1),
(656, 'material_000670', 1),
(657, 'material_000671', 1),
(658, 'material_000672', 1),
(659, 'material_000673', 1),
(660, 'material_000674', 1),
(661, 'material_000675', 1),
(662, 'material_000676', 1),
(663, 'material_000677', 1),
(664, 'material_000678', 1),
(665, 'material_000679', 1),
(666, 'material_000680', 1),
(667, 'material_000681', 1),
(668, 'material_000682', 1),
(669, 'material_000683', 1),
(670, 'material_000684', 1),
(671, 'material_000685', 1),
(672, 'material_000686', 1),
(673, 'material_000687', 1),
(674, 'material_000688', 1),
(675, 'material_000689', 1),
(676, 'material_000690', 1),
(677, 'material_000691', 1),
(678, 'material_000692', 1),
(679, 'material_000693', 1),
(680, 'material_000694', 1),
(681, 'material_000695', 1),
(682, 'material_000696', 1),
(683, 'material_000697', 1),
(684, 'material_000698', 1),
(685, 'material_000699', 1),
(686, 'material_000700', 1),
(687, 'material_000701', 1),
(688, 'material_000702', 1),
(689, 'material_000703', 1),
(690, 'material_000704', 1),
(691, 'material_000705', 1),
(692, 'material_000706', 1),
(693, 'material_000707', 1),
(694, 'material_000708', 1),
(695, 'material_000709', 1),
(696, 'material_000710', 1),
(697, 'material_000711', 1),
(698, 'material_000712', 1),
(699, 'material_000713', 1),
(700, 'material_000714', 1),
(701, 'material_000715', 1),
(702, 'material_000716', 1),
(703, 'material_000717', 1),
(704, 'material_000718', 1),
(705, 'material_000719', 1),
(706, 'material_000720', 1),
(707, 'material_000721', 1),
(708, 'material_000722', 1),
(709, 'material_000723', 1),
(710, 'material_000724', 1),
(711, 'material_000725', 1),
(712, 'material_000726', 1),
(713, 'material_000727', 1),
(714, 'material_000728', 1),
(715, 'material_000729', 1),
(716, 'material_000730', 1),
(717, 'material_000731', 1),
(718, 'material_000732', 1),
(719, 'material_000733', 1),
(720, 'material_000734', 1),
(721, 'material_000735', 1),
(722, 'material_000736', 1),
(723, 'material_000737', 1),
(724, 'material_000738', 1),
(725, 'material_000739', 1),
(726, 'material_000740', 1),
(727, 'material_000741', 1),
(728, 'material_000742', 1),
(729, 'material_000743', 1),
(730, 'material_000744', 1),
(731, 'material_000745', 1),
(732, 'material_000746', 1),
(733, 'material_000747', 1),
(734, 'material_000748', 1),
(735, 'material_000749', 1),
(736, 'material_000750', 1),
(737, 'material_000751', 1),
(738, 'material_000752', 1),
(739, 'material_000753', 1),
(740, 'material_000754', 1),
(741, 'material_000755', 1),
(742, 'material_000756', 1),
(743, 'material_000757', 1),
(744, 'material_000758', 1),
(745, 'material_000759', 1),
(746, 'material_000760', 1),
(747, 'material_000761', 1),
(748, 'material_000762', 1),
(749, 'material_000763', 1),
(750, 'material_000764', 1),
(751, 'material_000765', 1),
(752, 'material_000766', 1),
(753, 'material_000767', 1),
(754, 'material_000768', 1),
(755, 'material_000769', 1),
(756, 'material_000770', 1),
(757, 'material_000771', 1),
(758, 'material_000772', 1),
(759, 'material_000773', 1),
(760, 'material_000774', 1),
(761, 'material_000775', 1),
(762, 'material_000776', 1),
(763, 'material_000777', 1),
(764, 'material_000778', 1),
(765, 'material_000779', 1),
(766, 'material_000780', 1),
(767, 'material_000781', 1),
(768, 'material_000782', 1),
(769, 'material_000783', 1),
(770, 'material_000784', 1),
(771, 'material_000785', 1),
(772, 'material_000786', 1),
(773, 'material_000787', 1),
(774, 'material_000788', 1),
(775, 'material_000789', 1),
(776, 'material_000790', 1),
(777, 'material_000791', 1),
(778, 'material_000792', 1),
(779, 'material_000793', 1),
(780, 'material_000794', 1),
(781, 'material_000795', 1),
(782, 'material_000796', 1),
(783, 'material_000797', 1),
(784, 'material_000798', 1),
(785, 'material_000799', 1),
(786, 'material_000800', 1),
(787, 'material_000801', 1),
(788, 'material_000802', 1),
(789, 'material_000803', 1),
(790, 'material_000804', 1),
(791, 'material_000805', 1),
(792, 'material_000806', 1),
(793, 'material_000807', 1),
(794, 'material_000808', 1),
(795, 'material_000809', 1),
(796, 'material_000810', 1),
(797, 'material_000811', 1),
(798, 'material_000812', 1),
(799, 'material_000813', 1),
(800, 'material_000814', 1),
(801, 'material_000815', 1),
(802, 'material_000816', 1),
(803, 'material_000817', 1),
(804, 'material_000818', 1),
(805, 'material_000819', 1),
(806, 'material_000820', 1),
(807, 'material_000821', 1),
(808, 'material_000822', 1),
(809, 'material_000823', 1),
(810, 'material_000824', 1),
(811, 'material_000825', 1),
(812, 'material_000826', 1),
(813, 'material_000827', 1),
(814, 'material_000828', 1),
(815, 'material_000829', 1),
(816, 'material_000830', 1),
(817, 'material_000831', 1),
(818, 'material_000832', 1),
(819, 'material_000833', 1),
(820, 'material_000834', 1),
(821, 'material_000835', 1),
(822, 'material_000836', 1),
(823, 'material_000837', 1),
(824, 'material_000838', 1),
(825, 'material_000839', 1),
(826, 'material_000840', 1),
(827, 'material_000841', 1),
(828, 'material_000842', 1),
(829, 'material_000843', 1),
(830, 'material_000844', 1),
(831, 'material_000845', 1),
(832, 'material_000846', 1),
(833, 'material_000847', 1),
(834, 'material_000848', 1),
(835, 'material_000849', 1),
(836, 'material_000850', 1),
(837, 'material_000851', 1),
(838, 'material_000852', 1),
(839, 'material_000853', 1),
(840, 'material_000854', 1),
(841, 'material_000855', 1),
(842, 'material_000856', 1),
(843, 'material_000857', 1),
(844, 'material_000858', 1),
(845, 'material_000859', 1),
(846, 'material_000860', 1),
(847, 'material_000861', 1),
(848, 'material_000862', 1),
(849, 'material_000863', 1),
(850, 'material_000864', 1),
(851, 'material_000865', 1),
(852, 'material_000866', 1),
(853, 'material_000867', 1),
(854, 'material_000868', 1),
(855, 'material_000869', 1),
(856, 'material_000870', 1),
(857, 'material_000871', 1),
(858, 'material_000872', 1),
(859, 'material_000873', 1),
(860, 'material_000874', 1),
(861, 'material_000875', 1),
(862, 'material_000876', 1),
(863, 'material_000877', 1),
(864, 'material_000878', 1),
(865, 'material_000879', 1),
(866, 'material_000880', 1),
(867, 'material_000881', 1),
(868, 'material_000882', 1),
(869, 'material_000883', 1),
(870, 'material_000884', 1),
(871, 'material_000885', 1),
(872, 'material_000886', 1),
(873, 'material_000887', 1),
(874, 'material_000888', 1),
(875, 'material_000889', 1),
(876, 'material_000890', 1),
(877, 'material_000891', 1),
(878, 'material_000892', 1),
(879, 'material_000893', 1),
(880, 'material_000894', 1),
(881, 'material_000895', 1),
(882, 'material_000896', 1),
(883, 'material_000897', 1),
(884, 'material_000898', 1),
(885, 'material_000899', 1),
(886, 'material_000900', 1),
(887, 'material_000901', 1),
(888, 'material_000902', 1),
(889, 'material_000903', 1),
(890, 'material_000904', 1),
(891, 'material_000905', 1),
(892, 'material_000906', 1),
(893, 'material_000907', 1),
(894, 'material_000908', 1),
(895, 'material_000909', 1),
(896, 'material_000910', 1),
(897, 'material_000911', 1),
(898, 'material_000912', 1),
(899, 'material_000913', 1),
(900, 'material_000914', 1),
(901, 'material_000915', 1),
(902, 'material_000916', 1),
(903, 'material_000917', 1),
(904, 'material_000918', 1),
(905, 'material_000919', 1),
(906, 'material_000920', 1),
(907, 'material_000921', 1),
(908, 'material_000922', 1),
(909, 'material_000923', 1),
(910, 'material_000924', 1),
(911, 'material_000925', 1),
(912, 'material_000926', 1),
(913, 'material_000927', 1),
(914, 'material_000928', 1),
(915, 'material_000929', 1),
(916, 'material_000930', 1),
(917, 'material_000931', 1),
(918, 'material_000932', 1),
(919, 'material_000933', 1),
(920, 'material_000934', 1),
(921, 'material_000935', 1),
(922, 'material_000936', 1),
(923, 'material_000937', 1),
(924, 'material_000938', 1),
(925, 'material_000939', 1),
(926, 'material_000940', 1),
(927, 'material_000941', 1),
(928, 'material_000942', 1),
(929, 'material_000943', 1),
(930, 'material_000944', 1),
(931, 'material_000945', 1),
(932, 'material_000946', 1),
(933, 'material_000947', 1),
(934, 'material_000948', 1),
(935, 'material_000949', 1),
(936, 'material_000950', 1),
(937, 'material_000951', 1),
(938, 'material_000952', 1),
(939, 'material_000953', 1),
(940, 'material_000954', 1),
(941, 'material_000955', 1),
(942, 'material_000956', 1),
(943, 'material_000957', 1),
(944, 'material_000958', 1),
(945, 'material_000959', 1),
(946, 'material_000960', 1),
(947, 'material_000961', 1),
(948, 'material_000962', 1),
(949, 'material_000963', 1),
(950, 'material_000964', 1),
(951, 'material_000965', 1),
(952, 'material_000966', 1),
(953, 'material_000967', 1),
(954, 'material_000968', 1),
(955, 'material_000969', 1),
(956, 'material_000970', 1),
(957, 'material_000971', 1),
(958, 'material_000972', 1),
(959, 'material_000973', 1),
(960, 'material_000974', 1),
(961, 'material_000975', 1),
(962, 'material_000976', 1),
(963, 'material_000977', 1),
(964, 'material_000978', 1),
(965, 'material_000979', 1),
(966, 'material_000980', 1),
(967, 'material_000981', 1),
(968, 'material_000982', 1),
(969, 'material_000983', 1),
(970, 'material_000984', 1),
(971, 'material_000985', 1),
(972, 'material_000986', 1),
(973, 'material_000987', 1),
(974, 'material_000988', 1),
(975, 'material_000989', 1),
(976, 'material_000990', 1),
(977, 'material_000991', 1),
(978, 'material_000992', 1),
(979, 'material_000993', 1),
(980, 'material_000994', 1),
(981, 'material_000995', 1),
(982, 'material_000996', 1),
(983, 'material_000997', 1),
(984, 'material_000998', 1),
(985, 'material_000999', 1),
(986, 'material_001000', 1),
(987, 'material_001001', 1),
(988, 'material_001002', 1),
(989, 'material_001003', 1),
(990, 'material_001004', 1),
(991, 'material_001005', 1),
(992, 'material_001006', 1),
(993, 'material_001007', 1),
(994, 'material_001008', 1),
(995, 'material_001009', 1),
(996, 'material_001010', 1),
(997, 'material_001011', 1),
(998, 'material_001012', 1),
(999, 'material_001013', 1),
(1000, 'material_001014', 1),
(1001, 'material_001015', 1),
(1002, 'material_001016', 1),
(1003, 'material_001017', 1),
(1004, 'material_001018', 1),
(1005, 'material_001019', 1),
(1006, 'material_001020', 1),
(1007, 'material_001021', 1),
(1008, 'material_001022', 1),
(1009, 'material_001023', 1),
(1010, 'material_001024', 1),
(1011, 'material_001025', 1),
(1012, 'material_001026', 1),
(1013, 'material_001027', 1),
(1014, 'material_001028', 1),
(1015, 'material_001029', 1),
(1016, 'material_001030', 1),
(1017, 'material_001031', 1),
(1018, 'material_001032', 1),
(1019, 'material_001033', 1),
(1020, 'material_001034', 1),
(1021, 'material_001035', 1),
(1022, 'material_001036', 1),
(1023, 'material_001037', 1),
(1024, 'material_001038', 1),
(1025, 'material_001039', 1),
(1026, 'material_001040', 1),
(1027, 'material_001041', 1),
(1028, 'material_001042', 1),
(1029, 'material_001043', 1),
(1030, 'material_001044', 1),
(1031, 'material_001045', 1),
(1032, 'material_001046', 1),
(1033, 'material_001047', 1),
(1034, 'material_001048', 1),
(1035, 'material_001049', 1),
(1036, 'material_001050', 1),
(1037, 'material_001051', 1),
(1038, 'material_001052', 1),
(1039, 'material_001053', 1),
(1040, 'material_001054', 1),
(1041, 'material_001055', 1),
(1042, 'material_001056', 1),
(1043, 'material_001057', 1),
(1044, 'material_001058', 1),
(1045, 'material_001059', 1),
(1046, 'material_001060', 1),
(1047, 'material_001061', 1),
(1048, 'material_001062', 1),
(1049, 'material_001063', 1),
(1050, 'material_001064', 1),
(1051, 'material_001065', 1),
(1052, 'material_001066', 1),
(1053, 'material_001067', 1),
(1054, 'material_001068', 1),
(1055, 'material_001069', 1),
(1056, 'material_001070', 1),
(1057, 'material_001071', 1),
(1058, 'material_001072', 1),
(1059, 'material_001073', 1),
(1060, 'material_001074', 1),
(1061, 'material_001075', 1),
(1062, 'material_001076', 1),
(1063, 'material_001077', 1),
(1064, 'material_001078', 1),
(1065, 'material_001079', 1),
(1066, 'material_001080', 1),
(1067, 'material_001081', 1),
(1068, 'material_001082', 1),
(1069, 'material_001083', 1),
(1070, 'material_001084', 1),
(1071, 'material_001085', 1),
(1072, 'material_001086', 1),
(1073, 'material_001087', 1),
(1074, 'material_001088', 1),
(1075, 'material_001089', 1),
(1076, 'material_001090', 1),
(1077, 'material_001091', 1),
(1078, 'material_001092', 1),
(1079, 'material_001093', 1),
(1080, 'material_001094', 1),
(1081, 'material_001095', 1),
(1082, 'material_001096', 1),
(1083, 'material_001097', 1),
(1084, 'material_001098', 1),
(1085, 'material_001099', 1),
(1086, 'material_001100', 1),
(1087, 'material_001101', 1),
(1088, 'material_001102', 1),
(1089, 'material_001103', 1),
(1090, 'material_001104', 1),
(1091, 'material_001105', 1),
(1092, 'material_001106', 1),
(1093, 'material_001107', 1),
(1094, 'material_001108', 1),
(1095, 'material_001109', 1),
(1096, 'material_001110', 1),
(1097, 'material_001111', 1),
(1098, 'material_001112', 1),
(1099, 'material_001113', 1),
(1100, 'material_001114', 1),
(1101, 'material_001115', 1),
(1102, 'material_001116', 1),
(1103, 'material_001117', 1),
(1104, 'material_001118', 1),
(1105, 'material_001119', 1),
(1106, 'material_001120', 1),
(1107, 'material_001121', 1),
(1108, 'material_001122', 1),
(1109, 'material_001123', 1),
(1110, 'material_001124', 1),
(1111, 'material_001125', 1),
(1112, 'material_001126', 1),
(1113, 'material_001127', 1),
(1114, 'material_001128', 1),
(1115, 'material_001129', 1),
(1116, 'material_001130', 1),
(1117, 'material_001131', 1),
(1118, 'material_001132', 1),
(1119, 'material_001133', 1),
(1120, 'material_001134', 1),
(1121, 'material_001135', 1),
(1122, 'material_001136', 1),
(1123, 'material_001137', 1),
(1124, 'material_001138', 1),
(1125, 'material_001139', 1),
(1126, 'material_001140', 1),
(1127, 'material_001141', 1),
(1128, 'material_001142', 1),
(1129, 'material_001143', 1),
(1130, 'material_001144', 1),
(1131, 'material_001145', 1),
(1132, 'material_001146', 1),
(1133, 'material_001147', 1),
(1134, 'material_001148', 1),
(1135, 'material_001149', 1),
(1136, 'material_001150', 1),
(1137, 'material_001151', 1),
(1138, 'material_001152', 1),
(1139, 'material_001153', 1),
(1140, 'material_001154', 1),
(1141, 'material_001155', 1),
(1142, 'material_001156', 1),
(1143, 'material_001157', 1),
(1144, 'material_001158', 1),
(1145, 'material_001159', 1),
(1146, 'material_001160', 1),
(1147, 'material_001161', 1),
(1148, 'material_001162', 1),
(1149, 'material_001163', 1),
(1150, 'material_001164', 1),
(1151, 'material_001165', 1),
(1152, 'material_001166', 1),
(1153, 'material_001167', 1),
(1154, 'material_001168', 1),
(1155, 'material_001169', 1),
(1156, 'material_001170', 1),
(1157, 'material_001171', 1),
(1158, 'material_001172', 1),
(1159, 'material_001173', 1),
(1160, 'material_001174', 1),
(1161, 'material_001175', 1),
(1162, 'material_001176', 1),
(1163, 'material_001177', 1),
(1164, 'material_001178', 1),
(1165, 'material_001179', 1),
(1166, 'material_001180', 1),
(1167, 'material_001181', 1),
(1168, 'material_001182', 1),
(1169, 'material_001183', 1),
(1170, 'material_001184', 1),
(1171, 'material_001185', 1),
(1172, 'material_001186', 1),
(1173, 'material_001187', 1),
(1174, 'material_001188', 1),
(1175, 'material_001189', 1),
(1176, 'material_001190', 1),
(1177, 'material_001191', 1),
(1178, 'material_001192', 1),
(1179, 'material_001193', 1),
(1180, 'material_001194', 1),
(1181, 'material_001195', 1),
(1182, 'material_001196', 1),
(1183, 'material_001197', 1),
(1184, 'material_001198', 1),
(1185, 'material_001199', 1),
(1186, 'material_001200', 1),
(1187, 'material_001201', 1),
(1188, 'material_001202', 1),
(1189, 'material_001203', 1),
(1190, 'material_001204', 1),
(1191, 'material_001205', 1),
(1192, 'material_001206', 1),
(1193, 'material_001207', 1),
(1194, 'material_001208', 1),
(1195, 'material_001209', 1),
(1196, 'material_001210', 1),
(1197, 'material_001211', 1),
(1198, 'material_001212', 1),
(1199, 'material_001213', 1),
(1200, 'material_001214', 1),
(1201, 'material_001215', 1),
(1202, 'material_001216', 1),
(1203, 'material_001217', 1),
(1204, 'material_001218', 1),
(1205, 'material_001219', 1),
(1206, 'material_001220', 1),
(1207, 'material_001221', 1),
(1208, 'material_001222', 1),
(1209, 'material_001223', 1),
(1210, 'material_001224', 1),
(1211, 'material_001225', 1),
(1212, 'material_001226', 1),
(1213, 'material_001227', 1),
(1214, 'material_001228', 1),
(1215, 'material_001229', 1),
(1216, 'material_001230', 1),
(1217, 'material_001231', 1),
(1218, 'material_001232', 1),
(1219, 'material_001233', 1),
(1220, 'material_001234', 1),
(1221, 'material_001235', 1),
(1222, 'material_001236', 1),
(1223, 'material_001237', 1),
(1224, 'material_001238', 1),
(1225, 'material_001239', 1),
(1226, 'material_001240', 1),
(1227, 'material_001241', 1),
(1228, 'material_001242', 1),
(1229, 'material_001243', 1),
(1230, 'material_001244', 1),
(1231, 'material_001245', 1),
(1232, 'material_001246', 1),
(1233, 'material_001247', 1),
(1234, 'material_001248', 1),
(1235, 'material_001249', 1),
(1236, 'material_001250', 1),
(1237, 'material_001251', 1),
(1238, 'material_001252', 1),
(1239, 'material_001253', 1),
(1240, 'material_001254', 1),
(1241, 'material_001255', 1),
(1242, 'material_001256', 1),
(1243, 'material_001257', 1),
(1244, 'material_001258', 1),
(1245, 'material_001259', 1),
(1246, 'material_001260', 1),
(1247, 'material_001261', 1),
(1248, 'material_001262', 1),
(1249, 'material_001263', 1),
(1250, 'material_001264', 1),
(1251, 'material_001265', 1),
(1252, 'material_001266', 1),
(1253, 'material_001267', 1),
(1254, 'material_001268', 1),
(1255, 'material_001269', 1),
(1256, 'material_001270', 1),
(1257, 'material_001271', 1),
(1258, 'material_001272', 1),
(1259, 'material_001273', 1),
(1260, 'material_001274', 1),
(1261, 'material_001275', 1),
(1262, 'material_001276', 1),
(1263, 'material_001277', 1),
(1264, 'material_001278', 1),
(1265, 'material_001279', 1),
(1266, 'material_001280', 1),
(1267, 'material_001281', 1),
(1268, 'material_001282', 1),
(1269, 'material_001283', 1),
(1270, 'material_001284', 1),
(1271, 'material_001285', 1),
(1272, 'material_001286', 1),
(1273, 'material_001287', 1),
(1274, 'material_001288', 1),
(1275, 'material_001289', 1),
(1276, 'material_001290', 1),
(1277, 'material_001291', 1),
(1278, 'material_001292', 1),
(1279, 'material_001293', 1),
(1280, 'material_001294', 1),
(1281, 'material_001295', 1),
(1282, 'material_001296', 1),
(1283, 'material_001297', 1),
(1284, 'material_001298', 1),
(1285, 'material_001299', 1),
(1286, 'material_001300', 1),
(1287, 'material_001301', 1),
(1288, 'material_001302', 1),
(1289, 'material_001303', 1),
(1290, 'material_001304', 1),
(1291, 'material_001305', 1),
(1292, 'material_001306', 1),
(1293, 'material_001307', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`MaterialID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `MaterialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1294;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
