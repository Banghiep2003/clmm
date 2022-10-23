-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 26, 2022 lúc 02:21 AM
-- Phiên bản máy phục vụ: 10.3.36-MariaDB-cll-lve
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tclmm5swin_ss1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance`
--

CREATE TABLE `attendance` (
  `id` int(100) NOT NULL,
  `momo_reward` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `time_turn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `min` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `max` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sum_fake` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `attendance`
--

INSERT INTO `attendance` (`id`, `momo_reward`, `time_turn`, `min`, `max`, `sum_fake`) VALUES
(1, 'NULL', '60', '100', '10000', '15550000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance_his`
--

CREATE TABLE `attendance_his` (
  `id` int(100) NOT NULL,
  `momo_reward` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `money` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance_list`
--

CREATE TABLE `attendance_list` (
  `id` int(100) NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phien` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyen_tien`
--

CREATE TABLE `chuyen_tien` (
  `id` int(11) NOT NULL,
  `type_gd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `momo_id` varchar(255) DEFAULT NULL,
  `tranId` varchar(11) NOT NULL,
  `partnerId` varchar(11) NOT NULL,
  `partnerName` text NOT NULL,
  `amount` varchar(10) NOT NULL,
  `comment` text NOT NULL,
  `time` mediumtext NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT 0,
  `ownerNumber` varchar(255) DEFAULT NULL,
  `ownerName` varchar(255) DEFAULT NULL,
  `data` mediumtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chuyen_tien`
--

INSERT INTO `chuyen_tien` (`id`, `type_gd`, `momo_id`, `tranId`, `partnerId`, `partnerName`, `amount`, `comment`, `time`, `date_time`, `status`, `message`, `balance`, `ownerNumber`, `ownerName`, `data`, `type`) VALUES
(25, 'sendmoney', '020d923a-bddd-481a-b1d6-ea95623357a2', '29028818513', '0962066367', 'NGUYỄN TIẾN DŨNG', '400000', 'Bonus 100 triệu CLMM.ZONE', '1663659636', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 260935, '01865136329', 'DAO THI DUY', '{\"balance\":\"260935\",\"ID\":\"020d923a-bddd-481a-b1d6-ea95623357a2\",\"tranId\":29028818513,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":400000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663659635988}', 0),
(26, 'sendmoney', 'a670ab34-d014-4379-b048-9c478b345257', '29061084972', '0962066367', 'NGUYỄN TIẾN DŨNG', '200000', 'R', '1663738913', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 238309, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"238309\",\"ID\":\"a670ab34-d014-4379-b048-9c478b345257\",\"tranId\":29061084972,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":200000,\"comment\":\"R\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1663738913849}', 0),
(27, 'sendmoney', '1c819442-b1cf-4bac-8352-8b4f7cd8c156', '29061781663', '01683103925', 'NGUYỄN TRƯỜNG SƠN', '6000', 'Clmm.zone', '1663739578', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 327125, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"327125\",\"ID\":\"1c819442-b1cf-4bac-8352-8b4f7cd8c156\",\"tranId\":29061781663,\"partnerId\":\"01683103925\",\"partnerName\":\"NGUY\\u1ec4N TR\\u01af\\u1edcNG S\\u01a0N\",\"amount\":6000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663739578841}', 0),
(28, 'sendmoney', '968642be-a4a6-4633-92da-1ca726b0ae39', '29061773371', '0987162008', 'ĐỖ THỊ PHƯỢNG', '5000', 'Clmm.zone', '1663739729', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 182909, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"182909\",\"ID\":\"968642be-a4a6-4633-92da-1ca726b0ae39\",\"tranId\":29061773371,\"partnerId\":\"0987162008\",\"partnerName\":\"\\u0110\\u1ed6 TH\\u1eca PH\\u01af\\u1ee2NG\",\"amount\":5000,\"comment\":\"\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1663739729029}', 0),
(29, 'sendmoney', '24e49a4f-494b-4f2b-98b6-6d5f1b433811', '29061697061', '0985882667', 'Nguyễn Quang Huy', '20000', 'Clmm.zone', '1663739990', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 282727, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"282727\",\"ID\":\"24e49a4f-494b-4f2b-98b6-6d5f1b433811\",\"tranId\":29061697061,\"partnerId\":\"0985882667\",\"partnerName\":\"Nguy\\u1ec5n Quang Huy\",\"amount\":20000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663739990387}', 0),
(30, 'sendmoney', '61e0d912-c7d1-4f5c-b3df-a39107193821', '29064842276', '01208653781', 'Châu Thế Bảo', '20000', 'Clmm.zone', '1663745263', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 313427, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"313427\",\"ID\":\"61e0d912-c7d1-4f5c-b3df-a39107193821\",\"tranId\":29064842276,\"partnerId\":\"01208653781\",\"partnerName\":\"Ch\\u00e2u Th\\u1ebf B\\u1ea3o\",\"amount\":20000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663745263605}', 0),
(31, 'sendmoney', '8e83f008-6b07-4413-8adb-29b1f39a4425', '29065806307', '0962066367', 'NGUYỄN TIẾN DŨNG', '300000', 'Bonus 100 triệu CLMM.ZONE', '1663748097', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 240445, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"240445\",\"ID\":\"8e83f008-6b07-4413-8adb-29b1f39a4425\",\"tranId\":29065806307,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":300000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1663748097245}', 0),
(32, 'sendmoney', '5d5056f2-066d-46e3-9b96-7ac71a2f2b24', '29065895107', '0962066367', 'NGUYỄN TIẾN DŨNG', '155000', 'Đạt villa tặng quà', '1663748119', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 300427, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"300427\",\"ID\":\"5d5056f2-066d-46e3-9b96-7ac71a2f2b24\",\"tranId\":29065895107,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":155000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663748119825}', 0),
(33, 'sendmoney', 'a4ee6029-f50e-4f42-b6bd-dd9e82826523', '29066370147', '0962066367', 'NGUYỄN TIẾN DŨNG', '500000', 'Hi', '1663748460', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 261427, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"261427\",\"ID\":\"a4ee6029-f50e-4f42-b6bd-dd9e82826523\",\"tranId\":29066370147,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":500000,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663748460349}', 0),
(34, 'sendmoney', 'c285c7ac-d017-4a3c-9bc9-2fd7e622d382', '29067629516', '01683103925', 'NGUYỄN TRƯỜNG SƠN', '12500', 'WIN CLMM.ZONE', '1663751248', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 233949, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"233949\",\"ID\":\"c285c7ac-d017-4a3c-9bc9-2fd7e622d382\",\"tranId\":29067629516,\"partnerId\":\"01683103925\",\"partnerName\":\"NGUY\\u1ec4N TR\\u01af\\u1edcNG S\\u01a0N\",\"amount\":12500,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1663751248319}', 0),
(35, 'sendmoney', '2ba66525-cc4f-4c04-9208-e0a6deafd91c', '29068381175', '0962066367', 'NGUYỄN TIẾN DŨNG', '10000', 'Hi', '1663752871', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 591667, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"591667\",\"ID\":\"2ba66525-cc4f-4c04-9208-e0a6deafd91c\",\"tranId\":29068381175,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":10000,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663752871476}', 0),
(36, 'sendmoney', '2f9d260c-13dc-4b1d-b0f5-114b91fa7e63', '29069372281', '01625515578', 'NGUYỄN HỒ ĐĂNG KHOA', '62500', 'WIN CLMM.ZONE', '1663755289', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 515183, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"515183\",\"ID\":\"2f9d260c-13dc-4b1d-b0f5-114b91fa7e63\",\"tranId\":29069372281,\"partnerId\":\"01625515578\",\"partnerName\":\"NGUY\\u1ec4N H\\u1ed2 \\u0110\\u0102NG KHOA\",\"amount\":62500,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663755289310}', 0),
(37, 'sendmoney', '9f362ba6-0373-48d6-ae3c-f8a2f3d570c6', '29069323482', '01239195846', 'TRAN UOC HUY', '15000', 'WIN CLMM.ZONE', '1663755327', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 500183, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"500183\",\"ID\":\"9f362ba6-0373-48d6-ae3c-f8a2f3d570c6\",\"tranId\":29069323482,\"partnerId\":\"01239195846\",\"partnerName\":\"TRAN UOC HUY\",\"amount\":15000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663755327115}', 0),
(38, 'sendmoney', 'cf6dd6e2-73fc-4969-af81-551acb475d0a', '29069343687', '0943375009', 'TRẦN THỊ HẰNG', '50000', 'WIN CLMM.ZONE', '1663755413', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 56958, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"56958\",\"ID\":\"cf6dd6e2-73fc-4969-af81-551acb475d0a\",\"tranId\":29069343687,\"partnerId\":\"0943375009\",\"partnerName\":\"TR\\u1ea6N TH\\u1eca H\\u1eb0NG\",\"amount\":50000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1663755413301}', 0),
(39, 'sendmoney', '119aed3d-8e41-4149-9aac-80a27716f7d9', '29069377409', '0943782568', 'LÊ THUẦN ANH QUÂN', '15000', 'Clmm.zone', '1663755927', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 485183, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"485183\",\"ID\":\"119aed3d-8e41-4149-9aac-80a27716f7d9\",\"tranId\":29069377409,\"partnerId\":\"0943782568\",\"partnerName\":\"L\\u00ca THU\\u1ea6N ANH QU\\u00c2N\",\"amount\":15000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663755927311}', 0),
(40, 'sendmoney', '754f33ad-1b5d-4d2b-a58d-5e500a365eb4', '29069942332', '0962066367', 'NGUYỄN TIẾN DŨNG', '20000', '5', '1663756402', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 100533, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"100533\",\"ID\":\"754f33ad-1b5d-4d2b-a58d-5e500a365eb4\",\"tranId\":29069942332,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":20000,\"comment\":\"5\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1663756402383}', 0),
(41, 'sendmoney', '79fedfe8-0c46-49dd-b7ce-66f3078ca8e6', '29074494695', '0879148399', 'NGUYỄN THỊ HƯƠNG', '12750', 'Hi CLMM.ZONE', '1663765494', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 247893, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"247893\",\"ID\":\"79fedfe8-0c46-49dd-b7ce-66f3078ca8e6\",\"tranId\":29074494695,\"partnerId\":\"0879148399\",\"partnerName\":\"NGUY\\u1ec4N TH\\u1eca H\\u01af\\u01a0NG\",\"amount\":12750,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663765494856}', 0),
(42, 'sendmoney', '37fb3c85-64ba-4eb4-ae97-9955176097f5', '29074564153', '01667065248', 'TRƯƠNG MINH NHẬT', '15000', 'Bonus 100 triệu CLMM.ZONE', '1663765549', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 135577, '01883059101', 'Đạt Villa', '{\"balance\":\"135577\",\"ID\":\"37fb3c85-64ba-4eb4-ae97-9955176097f5\",\"tranId\":29074564153,\"partnerId\":\"01667065248\",\"partnerName\":\"TR\\u01af\\u01a0NG MINH NH\\u1eacT\",\"amount\":15000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1663765549576}', 0),
(43, 'sendmoney', '04886ad3-092c-4ac6-805c-5648c62500f7', '29074456436', '01679265720', 'Đặng Xuân Nguyên', '15203', 'Bonus 100 triệu CLMM.ZONE', '1663765601', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 242792, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"242792\",\"ID\":\"04886ad3-092c-4ac6-805c-5648c62500f7\",\"tranId\":29074456436,\"partnerId\":\"01679265720\",\"partnerName\":\"\\u0110\\u1eb7ng Xu\\u00e2n Nguy\\u00ean\",\"amount\":15203,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663765601569}', 0),
(44, 'sendmoney', '80798c44-7537-4615-b0de-3c55c0e331ff', '29074457119', '01667065248', 'TRƯƠNG MINH NHẬT', '11400', 'Đạt villa tặng quà', '1663765693', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 112035, '01865136329', 'DAO THI DUY', '{\"balance\":\"112035\",\"ID\":\"80798c44-7537-4615-b0de-3c55c0e331ff\",\"tranId\":29074457119,\"partnerId\":\"01667065248\",\"partnerName\":\"TR\\u01af\\u01a0NG MINH NH\\u1eacT\",\"amount\":11400,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663765693272}', 0),
(45, 'sendmoney', '57ee83d0-6fd7-489c-98c3-34fae7e690bf', '29075089000', '01683103925', 'NGUYỄN TRƯỜNG SƠN', '36000', 'Hi CLMM.ZONE', '1663765946', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 252798, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"252798\",\"ID\":\"57ee83d0-6fd7-489c-98c3-34fae7e690bf\",\"tranId\":29075089000,\"partnerId\":\"01683103925\",\"partnerName\":\"NGUY\\u1ec4N TR\\u01af\\u1edcNG S\\u01a0N\",\"amount\":36000,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663765946426}', 0),
(46, 'sendmoney', '3facc16f-9ab7-4b26-887c-98c63d3b4096', '29075253186', '01288453065', 'Nguyễn Hoàng Chương', '15000', 'WIN CLMM.ZONE', '1663766888', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 243301, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"243301\",\"ID\":\"3facc16f-9ab7-4b26-887c-98c63d3b4096\",\"tranId\":29075253186,\"partnerId\":\"01288453065\",\"partnerName\":\"Nguy\\u1ec5n Ho\\u00e0ng Ch\\u01b0\\u01a1ng\",\"amount\":15000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663766888434}', 0),
(47, 'sendmoney', '5bbad844-cfca-4515-a6e2-1391e357355c', '29075255645', '0918222215', 'LAI HOANG THANH', '43000', 'WIN CLMM.ZONE', '1663767198', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 239301, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"239301\",\"ID\":\"5bbad844-cfca-4515-a6e2-1391e357355c\",\"tranId\":29075255645,\"partnerId\":\"0918222215\",\"partnerName\":\"LAI HOANG THANH\",\"amount\":43000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663767198891}', 0),
(48, 'sendmoney', 'd1e01a37-eea8-4559-865a-fbba9670aec7', '29075177523', '01288453065', 'Nguyễn Hoàng Chương', '20000', 'WIN CLMM.ZONE', '1663767250', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 219301, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"219301\",\"ID\":\"d1e01a37-eea8-4559-865a-fbba9670aec7\",\"tranId\":29075177523,\"partnerId\":\"01288453065\",\"partnerName\":\"Nguy\\u1ec5n Ho\\u00e0ng Ch\\u01b0\\u01a1ng\",\"amount\":20000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663767250235}', 0),
(49, 'sendmoney', '70ccd8a4-bf61-47e8-ace7-f1b5e909eb7f', '29076381158', '01639787519', 'Lê Gia Bảo', '12500', 'WIN CLMM.ZONE', '1663769003', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 226704, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"226704\",\"ID\":\"70ccd8a4-bf61-47e8-ace7-f1b5e909eb7f\",\"tranId\":29076381158,\"partnerId\":\"01639787519\",\"partnerName\":\"L\\u00ea Gia B\\u1ea3o\",\"amount\":12500,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663769003725}', 0),
(50, 'sendmoney', '7f152df7-57f5-4d27-a88d-50bec902fcba', '29077098446', '01636525693', 'NGUYỄN THỊ HOAN', '3000', 'Clmm.zone', '1663769957', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 318407, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"318407\",\"ID\":\"7f152df7-57f5-4d27-a88d-50bec902fcba\",\"tranId\":29077098446,\"partnerId\":\"01636525693\",\"partnerName\":\"NGUY\\u1ec4N TH\\u1eca HOAN\",\"amount\":3000,\"comment\":\"\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663769957898}', 0),
(51, 'sendmoney', 'f1fd5788-b1f7-417f-8a24-a05b4db6f16b', '29076970829', '0962066367', 'NGUYỄN TIẾN DŨNG', '150000', 'Clmm.zone', '1663770070', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 182407, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"182407\",\"ID\":\"f1fd5788-b1f7-417f-8a24-a05b4db6f16b\",\"tranId\":29076970829,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":150000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663770070625}', 0),
(52, 'sendmoney', '8edd4454-b5bf-4221-a4f5-ba0d64a14f1e', '29076976010', '01652604968', 'TRẦN THỊ HƯƠNG', '10000', 'Đạt villa tặng quà', '1663770736', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 193408, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"193408\",\"ID\":\"8edd4454-b5bf-4221-a4f5-ba0d64a14f1e\",\"tranId\":29076976010,\"partnerId\":\"01652604968\",\"partnerName\":\"TR\\u1ea6N TH\\u1eca H\\u01af\\u01a0NG\",\"amount\":10000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663770736832}', 0),
(53, 'sendmoney', 'e84b4306-e1c0-45df-a38a-0ad196c6335e', '29076976258', '0985882667', 'Nguyễn Quang Huy', '10000', 'Bonus 100 triệu CLMM.ZONE', '1663770769', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 118986, '01883059101', 'Đạt Villa', '{\"balance\":\"118986\",\"ID\":\"e84b4306-e1c0-45df-a38a-0ad196c6335e\",\"tranId\":29076976258,\"partnerId\":\"0985882667\",\"partnerName\":\"Nguy\\u1ec5n Quang Huy\",\"amount\":10000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1663770769444}', 0),
(54, 'sendmoney', 'aef8e011-5e3e-46a9-a5ac-913470077c69', '29077085135', '0972969521', 'VŨ DUY TÀI', '10000', 'Bonus 100 triệu CLMM.ZONE', '1663770782', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 179408, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"179408\",\"ID\":\"aef8e011-5e3e-46a9-a5ac-913470077c69\",\"tranId\":29077085135,\"partnerId\":\"0972969521\",\"partnerName\":\"V\\u0168 DUY T\\u00c0I\",\"amount\":10000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663770782936}', 0),
(55, 'sendmoney', '3db72fea-cf9a-41ce-ac58-ff8f5ab4a270', '29077075339', '0972969521', 'VŨ DUY TÀI', '10000', 'Bonus 100 triệu CLMM.ZONE', '1663770816', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 92533, '01865136329', 'DAO THI DUY', '{\"balance\":\"92533\",\"ID\":\"3db72fea-cf9a-41ce-ac58-ff8f5ab4a270\",\"tranId\":29077075339,\"partnerId\":\"0972969521\",\"partnerName\":\"V\\u0168 DUY T\\u00c0I\",\"amount\":10000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663770816750}', 0),
(56, 'sendmoney', '42273d26-4664-48b5-9b6b-e674ebfc1e1e', '29077085658', '01636525693', 'NGUYỄN THỊ HOAN', '10000', 'Bonus 100 triệu CLMM.ZONE', '1663770849', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 91408, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"91408\",\"ID\":\"42273d26-4664-48b5-9b6b-e674ebfc1e1e\",\"tranId\":29077085658,\"partnerId\":\"01636525693\",\"partnerName\":\"NGUY\\u1ec4N TH\\u1eca HOAN\",\"amount\":10000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663770849560}', 0),
(57, 'sendmoney', '8baa9482-0e78-4940-92aa-53414926b962', '29076976930', '01214109697', 'PHẠM VĂN HÙNG', '10000', 'Đạt villa tặng quà', '1663770862', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 113177, '01883059101', 'Đạt Villa', '{\"balance\":\"113177\",\"ID\":\"8baa9482-0e78-4940-92aa-53414926b962\",\"tranId\":29076976930,\"partnerId\":\"01214109697\",\"partnerName\":\"PH\\u1ea0M V\\u0102N H\\u00d9NG\",\"amount\":10000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1663770862211}', 0),
(58, 'sendmoney', '46573b6f-c2f4-499e-ba5a-cc9fab9b37ca', '29077701996', '01664754701', 'ĐẶNG THỊ HIỆP', '1000', 'WIN CLMM.ZONE', '1663771712', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 174930, '01883059101', 'Đạt Villa', '{\"balance\":\"174930\",\"ID\":\"46573b6f-c2f4-499e-ba5a-cc9fab9b37ca\",\"tranId\":29077701996,\"partnerId\":\"01664754701\",\"partnerName\":\"\\u0110\\u1eb6NG TH\\u1eca HI\\u1ec6P\",\"amount\":1000,\"comment\":\"\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1663771712118}', 0),
(59, 'sendmoney', '31bfc1a9-32c6-4c83-859d-d7bb53651dbd', '29077633286', '0889573687', 'QUÀNG THẾ QUYỀN', '6000', 'Clmm.zone', '1663771811', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 107508, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"107508\",\"ID\":\"31bfc1a9-32c6-4c83-859d-d7bb53651dbd\",\"tranId\":29077633286,\"partnerId\":\"0889573687\",\"partnerName\":\"QU\\u00c0NG TH\\u1ebe QUY\\u1ec0N\",\"amount\":6000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663771811179}', 0),
(60, 'sendmoney', '97e55bac-08e6-460d-889a-86f14576be0e', '29077683751', '01699989837', 'TRẦN DUY LINH', '12500', 'WIN CLMM.ZONE', '1663771961', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 156030, '01883059101', 'Đạt Villa', '{\"balance\":\"156030\",\"ID\":\"97e55bac-08e6-460d-889a-86f14576be0e\",\"tranId\":29077683751,\"partnerId\":\"01699989837\",\"partnerName\":\"TR\\u1ea6N DUY LINH\",\"amount\":12500,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1663771961490}', 0),
(61, 'sendmoney', 'bca828fc-d6f6-4d03-b306-cd49d0580d70', '29077675960', '0914818958', 'NGUYỄN THỊ XUÂN', '17000', 'WIN CLMM.ZONE', '1663772206', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 186508, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"186508\",\"ID\":\"bca828fc-d6f6-4d03-b306-cd49d0580d70\",\"tranId\":29077675960,\"partnerId\":\"0914818958\",\"partnerName\":\"NGUY\\u1ec4N TH\\u1eca XU\\u00c2N\",\"amount\":17000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663772206367}', 0),
(62, 'sendmoney', '9931f4ac-5509-4463-a37d-f28793c3d438', '29077676743', '01676686904', 'NGUYỄN THANH DANH', '175000', 'WIN CLMM.ZONE', '1663772303', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 23508, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"23508\",\"ID\":\"9931f4ac-5509-4463-a37d-f28793c3d438\",\"tranId\":29077676743,\"partnerId\":\"01676686904\",\"partnerName\":\"NGUY\\u1ec4N THANH DANH\",\"amount\":175000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663772303705}', 0),
(63, 'sendmoney', '189b4199-7ef6-444d-9b2c-021e10248312', '29083151787', '01639195846', 'MAI THI LAN', '14400', 'Hi CLMM.ZONE', '1663799849', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 198434, '01883059101', 'Đạt Villa', '{\"balance\":\"198434\",\"ID\":\"189b4199-7ef6-444d-9b2c-021e10248312\",\"tranId\":29083151787,\"partnerId\":\"01639195846\",\"partnerName\":\"MAI THI LAN\",\"amount\":14400,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1663799849575}', 0),
(64, 'sendmoney', '449e385c-6fd0-4523-951d-1fc96ec9d571', '29092929785', '01253103836', 'ĐÀO KHÁNH LINH', '50000', 'Đạt villa tặng quà', '1663822556', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 215169, '01883059101', 'Đạt Villa', '{\"balance\":\"215169\",\"ID\":\"449e385c-6fd0-4523-951d-1fc96ec9d571\",\"tranId\":29092929785,\"partnerId\":\"01253103836\",\"partnerName\":\"\\u0110\\u00c0O KH\\u00c1NH LINH\",\"amount\":50000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1663822556270}', 0),
(65, 'sendmoney', '289708c0-243c-407c-a052-85b43e311270', '29093849645', '01652938724', 'TRẦN VĂN CƯƠNG', '24000', 'Win CLMM.ZONE', '1663823009', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 254832, '01865136329', 'DAO THI DUY', '{\"balance\":\"254832\",\"ID\":\"289708c0-243c-407c-a052-85b43e311270\",\"tranId\":29093849645,\"partnerId\":\"01652938724\",\"partnerName\":\"TR\\u1ea6N V\\u0102N C\\u01af\\u01a0NG\",\"amount\":24000,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663823009833}', 0),
(66, 'sendmoney', 'eb5b9b1d-82c7-4185-b3d4-3a3951f407a3', '29093849864', '0919108398', 'NGUYỄN VĂN DŨNG', '28500', 'Win CLMM.ZONE', '1663823048', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 226332, '01865136329', 'DAO THI DUY', '{\"balance\":\"226332\",\"ID\":\"eb5b9b1d-82c7-4185-b3d4-3a3951f407a3\",\"tranId\":29093849864,\"partnerId\":\"0919108398\",\"partnerName\":\"NGUY\\u1ec4N V\\u0102N D\\u0168NG\",\"amount\":28500,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663823048101}', 0),
(67, 'sendmoney', 'a12e8ba8-fb55-4999-bb83-dd2ed6407a2f', '29092972452', '01655851644', 'NGUYỄN THANH TÙNG', '24000', 'Win CLMM.ZONE', '1663823087', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 206169, '01883059101', 'Đạt Villa', '{\"balance\":\"206169\",\"ID\":\"a12e8ba8-fb55-4999-bb83-dd2ed6407a2f\",\"tranId\":29092972452,\"partnerId\":\"01655851644\",\"partnerName\":\"NGUY\\u1ec4N THANH T\\u00d9NG\",\"amount\":24000,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1663823087806}', 0),
(68, 'sendmoney', '61f4168a-140b-412f-9702-066481a03627', '29093522081', '01693006772', 'HUỲNH THỊ NGA', '15000', 'Đạt villa tặng quà', '1663823129', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 226832, '01865136329', 'DAO THI DUY', '{\"balance\":\"226832\",\"ID\":\"61f4168a-140b-412f-9702-066481a03627\",\"tranId\":29093522081,\"partnerId\":\"01693006772\",\"partnerName\":\"HU\\u1ef2NH TH\\u1eca NGA\",\"amount\":15000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663823128861}', 0),
(69, 'sendmoney', 'a704dac9-2b46-4286-90e3-4a505943f9c6', '29092926897', '01228541472', 'TRAN THI THUY TRANG', '85000', 'Đạt villa tặng quà', '1663823615', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 145834, '01865136329', 'DAO THI DUY', '{\"balance\":\"145834\",\"ID\":\"a704dac9-2b46-4286-90e3-4a505943f9c6\",\"tranId\":29092926897,\"partnerId\":\"01228541472\",\"partnerName\":\"TRAN THI THUY TRANG\",\"amount\":85000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663823615774}', 0),
(70, 'sendmoney', '05d813bb-2b02-4b60-92b5-e8a30045511f', '29095692219', '01655851644', 'NGUYỄN THANH TÙNG', '15000', 'Win CLMM.ZONE', '1663827783', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 100718, '01865136329', 'DAO THI DUY', '{\"balance\":\"100718\",\"ID\":\"05d813bb-2b02-4b60-92b5-e8a30045511f\",\"tranId\":29095692219,\"partnerId\":\"01655851644\",\"partnerName\":\"NGUY\\u1ec4N THANH T\\u00d9NG\",\"amount\":15000,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663827783313}', 0),
(71, 'sendmoney', '87e3a92f-a2bc-4a0b-a8a4-c0aeea119e85', '29095692544', '01652413915', 'LÊ NGUYỄN ANH TUẤN', '25335', 'Win CLMM.ZONE', '1663827821', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 75383, '01865136329', 'DAO THI DUY', '{\"balance\":\"75383\",\"ID\":\"87e3a92f-a2bc-4a0b-a8a4-c0aeea119e85\",\"tranId\":29095692544,\"partnerId\":\"01652413915\",\"partnerName\":\"L\\u00ca NGUY\\u1ec4N ANH TU\\u1ea4N\",\"amount\":25335,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663827821882}', 0),
(72, 'sendmoney', 'ea49d1e6-1370-4a44-91d4-4dfb7867ade4', '29095901084', '01655851644', 'NGUYỄN THANH TÙNG', '15000', 'Win CLMM.ZONE', '1663827873', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 60383, '01865136329', 'DAO THI DUY', '{\"balance\":\"60383\",\"ID\":\"ea49d1e6-1370-4a44-91d4-4dfb7867ade4\",\"tranId\":29095901084,\"partnerId\":\"01655851644\",\"partnerName\":\"NGUY\\u1ec4N THANH T\\u00d9NG\",\"amount\":15000,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663827873087}', 0),
(73, 'sendmoney', '4635d541-06b5-4ea1-9b79-3c7d1a5826d3', '29095693474', '01669743881', 'Đào Duy Châu', '38000', 'Win CLMM.ZONE', '1663827920', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 22383, '01865136329', 'DAO THI DUY', '{\"balance\":\"22383\",\"ID\":\"4635d541-06b5-4ea1-9b79-3c7d1a5826d3\",\"tranId\":29095693474,\"partnerId\":\"01669743881\",\"partnerName\":\"\\u0110\\u00e0o Duy Ch\\u00e2u\",\"amount\":38000,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663827920769}', 0),
(74, 'sendmoney', 'b025460c-fa87-4f8c-93fb-a6e200202d5d', '29099622811', '01237241820', 'HOÀNG VĂN HOÀN', '15000', 'Bonus 100 triệu CLMM.ZONE', '1663836018', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 198212, '01868023971', 'Tài Văn Xỉu', '{\"balance\":\"198212\",\"ID\":\"b025460c-fa87-4f8c-93fb-a6e200202d5d\",\"tranId\":29099622811,\"partnerId\":\"01237241820\",\"partnerName\":\"HO\\u00c0NG V\\u0102N HO\\u00c0N\",\"amount\":15000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01868023971\",\"ownerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"millisecond\":1663836018629}', 0),
(75, 'sendmoney', '44317773-8e4d-4015-bb30-90d24975fe2b', '29099761417', '0919108398', 'NGUYỄN VĂN DŨNG', '17100', 'Win CLMM.ZONE', '1663836049', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 192900, '01882853913', 'Lê Thùy Trang', '{\"balance\":\"192900\",\"ID\":\"44317773-8e4d-4015-bb30-90d24975fe2b\",\"tranId\":29099761417,\"partnerId\":\"0919108398\",\"partnerName\":\"NGUY\\u1ec4N V\\u0102N D\\u0168NG\",\"amount\":17100,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882853913\",\"ownerName\":\"L\\u00ea Th\\u00f9y Trang\",\"millisecond\":1663836049058}', 0),
(76, 'sendmoney', 'a0154f99-77fa-4249-bb23-10d111e9876c', '29099761646', '0962483528', 'Nguyễn Ngọc Thư', '50000', 'Đạt villa tặng quà', '1663836089', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 148212, '01868023971', 'Tài Văn Xỉu', '{\"balance\":\"148212\",\"ID\":\"a0154f99-77fa-4249-bb23-10d111e9876c\",\"tranId\":29099761646,\"partnerId\":\"0962483528\",\"partnerName\":\"Nguy\\u1ec5n Ng\\u1ecdc Th\\u01b0\",\"amount\":50000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01868023971\",\"ownerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"millisecond\":1663836089866}', 0),
(77, 'sendmoney', 'd1d036e3-dc88-464a-b57d-71017a5485a7', '29099484969', '01655851644', 'NGUYỄN THANH TÙNG', '45000', 'Hi CLMM.ZONE', '1663836155', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 147900, '01882853913', 'Lê Thùy Trang', '{\"balance\":\"147900\",\"ID\":\"d1d036e3-dc88-464a-b57d-71017a5485a7\",\"tranId\":29099484969,\"partnerId\":\"01655851644\",\"partnerName\":\"NGUY\\u1ec4N THANH T\\u00d9NG\",\"amount\":45000,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882853913\",\"ownerName\":\"L\\u00ea Th\\u00f9y Trang\",\"millisecond\":1663836154921}', 0),
(78, 'sendmoney', 'eb629afa-1678-46ff-8327-da67206dc572', '29100304128', '01675245702', 'Trần Văn Nguyên Huy', '26600', 'Hi CLMM.ZONE', '1663836634', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 171612, '01868023971', 'Tài Văn Xỉu', '{\"balance\":\"171612\",\"ID\":\"eb629afa-1678-46ff-8327-da67206dc572\",\"tranId\":29100304128,\"partnerId\":\"01675245702\",\"partnerName\":\"Tr\\u1ea7n V\\u0103n Nguy\\u00ean Huy\",\"amount\":26600,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01868023971\",\"ownerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"millisecond\":1663836634571}', 0),
(79, 'sendmoney', 'ef4ce928-5cd2-4a4f-94b1-c261f3473615', '29099468035', '01883159288', 'HUỲNH THỊ XEM', '31280', 'Hi CLMM.ZONE', '1663836730', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 140332, '01868023971', 'Tài Văn Xỉu', '{\"balance\":\"140332\",\"ID\":\"ef4ce928-5cd2-4a4f-94b1-c261f3473615\",\"tranId\":29099468035,\"partnerId\":\"01883159288\",\"partnerName\":\"HU\\u1ef2NH TH\\u1eca XEM\",\"amount\":31280,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01868023971\",\"ownerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"millisecond\":1663836730651}', 0),
(80, 'sendmoney', '3221d0e1-ead8-4563-a825-af85350d486a', '29100060118', '01239195846', 'TRAN UOC HUY', '15000', 'Clmm.zone', '1663837101', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 125332, '01868023971', 'Tài Văn Xỉu', '{\"balance\":\"125332\",\"ID\":\"3221d0e1-ead8-4563-a825-af85350d486a\",\"tranId\":29100060118,\"partnerId\":\"01239195846\",\"partnerName\":\"TRAN UOC HUY\",\"amount\":15000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01868023971\",\"ownerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"millisecond\":1663837101166}', 0),
(81, 'sendmoney', 'e64b7bd5-7ebc-40f5-a372-0a617cf8173a', '29100308124', '01655851644', 'NGUYỄN THANH TÙNG', '4500', 'CLMM.ZONE', '1663837183', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 134400, '01882853913', 'Lê Thùy Trang', '{\"balance\":\"134400\",\"ID\":\"e64b7bd5-7ebc-40f5-a372-0a617cf8173a\",\"tranId\":29100308124,\"partnerId\":\"01655851644\",\"partnerName\":\"NGUY\\u1ec4N THANH T\\u00d9NG\",\"amount\":4500,\"comment\":\"\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882853913\",\"ownerName\":\"L\\u00ea Th\\u00f9y Trang\",\"millisecond\":1663837183273}', 0),
(82, 'sendmoney', '93a97f9d-41ef-43b8-a31c-759cd6b21b3a', '29100992011', '01699565721', 'DO THI BICH PHUONG', '15000', 'Hi CLMM.ZONE', '1663838561', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 138900, '01882853913', 'Lê Thùy Trang', '{\"balance\":\"138900\",\"ID\":\"93a97f9d-41ef-43b8-a31c-759cd6b21b3a\",\"tranId\":29100992011,\"partnerId\":\"01699565721\",\"partnerName\":\"DO THI BICH PHUONG\",\"amount\":15000,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882853913\",\"ownerName\":\"L\\u00ea Th\\u00f9y Trang\",\"millisecond\":1663838561807}', 0),
(83, 'sendmoney', 'fb2b09e1-c733-4b9f-b3f5-555e52c3a17b', '29150900848', '0976107019', 'PHAN THANH TÙNG', '5000', 'Đạt villa tặng quà', '1663974454', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 235816, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"235816\",\"ID\":\"fb2b09e1-c733-4b9f-b3f5-555e52c3a17b\",\"tranId\":29150900848,\"partnerId\":\"0976107019\",\"partnerName\":\"PHAN THANH T\\u00d9NG\",\"amount\":5000,\"comment\":\"\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1663974454226}', 0),
(84, 'sendmoney', 'ec0af1b0-2d5c-46e7-9cd8-85ff24afb8ef', '29150952648', '01625515578', 'NGUYỄN HỒ ĐĂNG KHOA', '30000', 'Hi CLMM.ZONE HOÀN 50% BILL ĐẦU NGÀY', '1663975217', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 265816, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"265816\",\"ID\":\"ec0af1b0-2d5c-46e7-9cd8-85ff24afb8ef\",\"tranId\":29150952648,\"partnerId\":\"01625515578\",\"partnerName\":\"NGUY\\u1ec4N H\\u1ed2 \\u0110\\u0102NG KHOA\",\"amount\":30000,\"comment\":\"Hi CLMM.ZONE HO\\u00c0N 50% BILL \\u0110\\u1ea6U NG\\u00c0Y\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1663975217193}', 0),
(85, 'sendmoney', 'ad969168-6276-4d96-907f-1a6dbb768f0e', '29151809329', '0986720463', 'NGUYEN THE DAI', '50000', 'Bonus 100 triệu CLMM.ZONE', '1663977869', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 314216, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"314216\",\"ID\":\"ad969168-6276-4d96-907f-1a6dbb768f0e\",\"tranId\":29151809329,\"partnerId\":\"0986720463\",\"partnerName\":\"NGUYEN THE DAI\",\"amount\":50000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1663977869870}', 0),
(86, 'sendmoney', 'a87a2ee0-6f00-450d-8be6-c13346e00383', '29151627960', '01627907115', 'LÝ KIẾN HÀO', '430000', 'WIN CLMM.ZONE', '1663979369', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 276308, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"276308\",\"ID\":\"a87a2ee0-6f00-450d-8be6-c13346e00383\",\"tranId\":29151627960,\"partnerId\":\"01627907115\",\"partnerName\":\"L\\u00dd KI\\u1ebeN H\\u00c0O\",\"amount\":430000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663979369639}', 0),
(87, 'sendmoney', '558288de-bf4c-495c-87de-a5b272f64ba2', '29153170662', '0962066367', 'NGUYỄN TIẾN DŨNG', '400000', 'Clmm.zone', '1663981817', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 432790, '01883059101', 'Đạt Villa', '{\"balance\":\"432790\",\"ID\":\"558288de-bf4c-495c-87de-a5b272f64ba2\",\"tranId\":29153170662,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":400000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1663981817442}', 0),
(88, 'sendmoney', 'f4aef9db-fa98-426a-9593-8b497227fcba', '29153190557', '0962066367', 'NGUYỄN TIẾN DŨNG', '400000', 'Clmm.zone', '1663981834', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 328450, '0528417145', 'Lão Hạc', '{\"balance\":\"328450\",\"ID\":\"f4aef9db-fa98-426a-9593-8b497227fcba\",\"tranId\":29153190557,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":400000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528417145\",\"ownerName\":\"L\\u00e3o H\\u1ea1c\",\"millisecond\":1663981834341}', 0),
(89, 'sendmoney', '249a6396-a1d2-4287-9d27-d38ded935b47', '29155679330', '0878661031', 'Nguyễn Minh Hiếu', '6000', 'Bonus 100 triệu CLMM.ZONE', '1663987099', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 180381, '0528417145', 'Lão Hạc', '{\"balance\":\"180381\",\"ID\":\"249a6396-a1d2-4287-9d27-d38ded935b47\",\"tranId\":29155679330,\"partnerId\":\"0878661031\",\"partnerName\":\"Nguy\\u1ec5n Minh Hi\\u1ebfu\",\"amount\":6000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528417145\",\"ownerName\":\"L\\u00e3o H\\u1ea1c\",\"millisecond\":1663987099736}', 0),
(90, 'sendmoney', '878e3b5c-89f7-482c-b79a-82b45cf6c452', '29155651200', '01868023971', 'Tài Văn Xỉu', '100000', 'Win CLMM.ZONE', '1663987255', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 466072, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"466072\",\"ID\":\"878e3b5c-89f7-482c-b79a-82b45cf6c452\",\"tranId\":29155651200,\"partnerId\":\"01868023971\",\"partnerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"amount\":100000,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663987254968}', 0),
(91, 'sendmoney', 'd8be33f7-035b-4af9-8a52-3a98be8dde74', '29156412392', '0934939030', 'TRẦN BÙI TẤN ĐẠT', '260000', 'WIN CLMM.ZONE', '1663988527', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 165072, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"165072\",\"ID\":\"d8be33f7-035b-4af9-8a52-3a98be8dde74\",\"tranId\":29156412392,\"partnerId\":\"0934939030\",\"partnerName\":\"TR\\u1ea6N B\\u00d9I T\\u1ea4N \\u0110\\u1ea0T\",\"amount\":260000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663988527285}', 0),
(92, 'sendmoney', '1cf3ba87-b8c8-4ade-9339-3de03ef2c208', '29156909750', '01627907115', 'LÝ KIẾN HÀO', '130000', 'WIN CLMM.ZONE', '1663989381', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 190311, '01865136329', 'DAO THI DUY', '{\"balance\":\"190311\",\"ID\":\"1cf3ba87-b8c8-4ade-9339-3de03ef2c208\",\"tranId\":29156909750,\"partnerId\":\"01627907115\",\"partnerName\":\"L\\u00dd KI\\u1ebeN H\\u00c0O\",\"amount\":130000,\"comment\":\"WIN CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1663989381357}', 0),
(93, 'sendmoney', '78f6791d-18e9-4c65-8c42-8368ae47b93d', '29157450468', '0934939030', 'TRẦN BÙI TẤN ĐẠT', '60000', 'Đạt villa tặng quà', '1663990630', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 183802, '01882853913', 'Lê Thùy Trang', '{\"balance\":\"183802\",\"ID\":\"78f6791d-18e9-4c65-8c42-8368ae47b93d\",\"tranId\":29157450468,\"partnerId\":\"0934939030\",\"partnerName\":\"TR\\u1ea6N B\\u00d9I T\\u1ea4N \\u0110\\u1ea0T\",\"amount\":60000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882853913\",\"ownerName\":\"L\\u00ea Th\\u00f9y Trang\",\"millisecond\":1663990630464}', 0),
(94, 'sendmoney', '9de4b332-2c0a-46b2-a8b5-575adc78ceea', '29158010429', '01868023971', 'Tài Văn Xỉu', '100000', 'Hi', '1663991697', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 143802, '01882853913', 'Lê Thùy Trang', '{\"balance\":\"143802\",\"ID\":\"9de4b332-2c0a-46b2-a8b5-575adc78ceea\",\"tranId\":29158010429,\"partnerId\":\"01868023971\",\"partnerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"amount\":100000,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882853913\",\"ownerName\":\"L\\u00ea Th\\u00f9y Trang\",\"millisecond\":1663991697739}', 0),
(95, 'sendmoney', 'a66eb8d7-a0a6-494a-9e44-4e69c26228b7', '29157981207', '01865136329', 'DAO THI DUY', '150000', 'Hi', '1663991729', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 98308, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"98308\",\"ID\":\"a66eb8d7-a0a6-494a-9e44-4e69c26228b7\",\"tranId\":29157981207,\"partnerId\":\"01865136329\",\"partnerName\":\"DAO THI DUY\",\"amount\":150000,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1663991729324}', 0),
(96, 'sendmoney', '9b83b2d8-d262-4862-90e2-933dcf6a8dc4', '29159966938', '0985882667', 'Nguyễn Quang Huy', '10000', 'Đạt villa tặng quà', '1663996315', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 115772, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"115772\",\"ID\":\"9b83b2d8-d262-4862-90e2-933dcf6a8dc4\",\"tranId\":29159966938,\"partnerId\":\"0985882667\",\"partnerName\":\"Nguy\\u1ec5n Quang Huy\",\"amount\":10000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1663996315849}', 0),
(97, 'sendmoney', '87b1817e-9376-466c-8f2e-77245be7e2a2', '29160519368', '0528498672', 'Hằng Nga', '100000', 'Hi CLMM.ZONE', '1663996390', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 225229, '01866823540', 'Ngọc Phương', '{\"balance\":\"225229\",\"ID\":\"87b1817e-9376-466c-8f2e-77245be7e2a2\",\"tranId\":29160519368,\"partnerId\":\"0528498672\",\"partnerName\":\"H\\u1eb1ng Nga\",\"amount\":100000,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01866823540\",\"ownerName\":\"Ng\\u1ecdc Ph\\u01b0\\u01a1ng\",\"millisecond\":1663996390127}', 0),
(98, 'sendmoney', '0ad299d4-fed4-420d-bb37-d8955c8c6216', '29160533140', '01664754701', 'ĐẶNG THỊ HIỆP', '10000', 'Hi', '1663996831', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 227511, '01868023971', 'Tài Văn Xỉu', '{\"balance\":\"227511\",\"ID\":\"0ad299d4-fed4-420d-bb37-d8955c8c6216\",\"tranId\":29160533140,\"partnerId\":\"01664754701\",\"partnerName\":\"\\u0110\\u1eb6NG TH\\u1eca HI\\u1ec6P\",\"amount\":10000,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01868023971\",\"ownerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"millisecond\":1663996831246}', 0),
(99, 'sendmoney', 'bb486f46-1784-40ee-a7fd-e22338d7cd27', '29160386335', '0896231458', 'NGUYỄN DUY MẠNH', '40000', 'Bonus 100 triệu CLMM.ZONE', '1663997131', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 207017, '0528498672', 'Hằng Nga', '{\"balance\":\"207017\",\"ID\":\"bb486f46-1784-40ee-a7fd-e22338d7cd27\",\"tranId\":29160386335,\"partnerId\":\"0896231458\",\"partnerName\":\"NGUY\\u1ec4N DUY M\\u1ea0NH\",\"amount\":40000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528498672\",\"ownerName\":\"H\\u1eb1ng Nga\",\"millisecond\":1663997131098}', 0),
(100, 'sendmoney', 'f987e6f0-d7e2-4925-a844-a5e81b03b9a0', '29160994519', '01674603195', 'NGUYỄN THỊ CANG', '20000', 'Clmm.Zone Hoàn Tiền Pem Vào Số Bảo Trì', '1663998172', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 205229, '01866823540', 'Ngọc Phương', '{\"balance\":\"205229\",\"ID\":\"f987e6f0-d7e2-4925-a844-a5e81b03b9a0\",\"tranId\":29160994519,\"partnerId\":\"01674603195\",\"partnerName\":\"NGUY\\u1ec4N TH\\u1eca CANG\",\"amount\":20000,\"comment\":\"Clmm.Zone Ho\\u00e0n Ti\\u1ec1n Pem V\\u00e0o S\\u1ed1 B\\u1ea3o Tr\\u00ec\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01866823540\",\"ownerName\":\"Ng\\u1ecdc Ph\\u01b0\\u01a1ng\",\"millisecond\":1663998172313}', 0),
(101, 'sendmoney', '20a9ebeb-523d-40ac-a197-818d448a1f75', '29161034297', '0975759283', 'NGUYỄN TIẾN ĐẠT', '20000', 'Clmm.Zone Hoàn Tiền Pem Vào Số Bảo Trì', '1663998202', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 185229, '01866823540', 'Ngọc Phương', '{\"balance\":\"185229\",\"ID\":\"20a9ebeb-523d-40ac-a197-818d448a1f75\",\"tranId\":29161034297,\"partnerId\":\"0975759283\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN \\u0110\\u1ea0T\",\"amount\":20000,\"comment\":\"Clmm.Zone Ho\\u00e0n Ti\\u1ec1n Pem V\\u00e0o S\\u1ed1 B\\u1ea3o Tr\\u00ec\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01866823540\",\"ownerName\":\"Ng\\u1ecdc Ph\\u01b0\\u01a1ng\",\"millisecond\":1663998202096}', 0);
INSERT INTO `chuyen_tien` (`id`, `type_gd`, `momo_id`, `tranId`, `partnerId`, `partnerName`, `amount`, `comment`, `time`, `date_time`, `status`, `message`, `balance`, `ownerNumber`, `ownerName`, `data`, `type`) VALUES
(102, 'sendmoney', '0b768c27-d3ea-4fe1-a5aa-84dfab2cd06d', '29161669103', '0975141722', 'Mạnh Quân', '25000', 'Bonus 100 triệu CLMM.ZONE', '1663998691', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 160229, '01866823540', 'Ngọc Phương', '{\"balance\":\"160229\",\"ID\":\"0b768c27-d3ea-4fe1-a5aa-84dfab2cd06d\",\"tranId\":29161669103,\"partnerId\":\"0975141722\",\"partnerName\":\"M\\u1ea1nh Qu\\u00e2n\",\"amount\":25000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01866823540\",\"ownerName\":\"Ng\\u1ecdc Ph\\u01b0\\u01a1ng\",\"millisecond\":1663998691059}', 0),
(103, 'sendmoney', '967b05ce-1070-409e-b6c5-9211d5849687', '29161590877', '01214109697', 'PHẠM VĂN HÙNG', '8500', 'Hi', '1663998744', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 203417, '0528498672', 'Hằng Nga', '{\"balance\":\"203417\",\"ID\":\"967b05ce-1070-409e-b6c5-9211d5849687\",\"tranId\":29161590877,\"partnerId\":\"01214109697\",\"partnerName\":\"PH\\u1ea0M V\\u0102N H\\u00d9NG\",\"amount\":8500,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528498672\",\"ownerName\":\"H\\u1eb1ng Nga\",\"millisecond\":1663998744904}', 0),
(104, 'sendmoney', '2704232e-2882-47de-93bb-58da6ce5e58d', '29161720178', '01639168455', 'Lê Đức Anh', '15360', 'Bonus 100 triệu CLMM.ZONE', '1663998884', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 206057, '0528498672', 'Hằng Nga', '{\"balance\":\"206057\",\"ID\":\"2704232e-2882-47de-93bb-58da6ce5e58d\",\"tranId\":29161720178,\"partnerId\":\"01639168455\",\"partnerName\":\"L\\u00ea \\u0110\\u1ee9c Anh\",\"amount\":15360,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528498672\",\"ownerName\":\"H\\u1eb1ng Nga\",\"millisecond\":1663998884323}', 0),
(105, 'sendmoney', '3159fed9-6064-4ec8-ac7a-182ad2378485', '29161720536', '01639168455', 'Lê Đức Anh', '240', 'Hi', '1663998930', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 205817, '0528498672', 'Hằng Nga', '{\"balance\":\"205817\",\"ID\":\"3159fed9-6064-4ec8-ac7a-182ad2378485\",\"tranId\":29161720536,\"partnerId\":\"01639168455\",\"partnerName\":\"L\\u00ea \\u0110\\u1ee9c Anh\",\"amount\":240,\"comment\":\"\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528498672\",\"ownerName\":\"H\\u1eb1ng Nga\",\"millisecond\":1663998930383}', 0),
(106, 'sendmoney', 'b8f94e03-872d-4a82-a02c-cdd1bdab4557', '29161721163', '0528498672', 'Hằng Nga', '100000', 'Hi', '1663999002', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 80381, '0528417145', 'Lão Hạc', '{\"balance\":\"80381\",\"ID\":\"b8f94e03-872d-4a82-a02c-cdd1bdab4557\",\"tranId\":29161721163,\"partnerId\":\"0528498672\",\"partnerName\":\"H\\u1eb1ng Nga\",\"amount\":100000,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528417145\",\"ownerName\":\"L\\u00e3o H\\u1ea1c\",\"millisecond\":1663999002292}', 0),
(107, 'sendmoney', 'ecda615f-2f5e-40f8-a815-22d7ff09872d', '29161790260', '0878661031', 'Nguyễn Minh Hiếu', '28880', 'Bonus 100 triệu CLMM.ZONE', '1663999131', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 153029, '01882853913', 'Lê Thùy Trang', '{\"balance\":\"153029\",\"ID\":\"ecda615f-2f5e-40f8-a815-22d7ff09872d\",\"tranId\":29161790260,\"partnerId\":\"0878661031\",\"partnerName\":\"Nguy\\u1ec5n Minh Hi\\u1ebfu\",\"amount\":28880,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882853913\",\"ownerName\":\"L\\u00ea Th\\u00f9y Trang\",\"millisecond\":1663999131849}', 0),
(108, 'sendmoney', '807c9820-6caf-4ec3-833a-9fa47dc77bd0', '29164670088', '01882850959', 'LÒN VĂN HỘI', '150000', 'R', '1664005935', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 45474, '01868023971', 'Tài Văn Xỉu', '{\"balance\":\"45474\",\"ID\":\"807c9820-6caf-4ec3-833a-9fa47dc77bd0\",\"tranId\":29164670088,\"partnerId\":\"01882850959\",\"partnerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"amount\":150000,\"comment\":\"R\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01868023971\",\"ownerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"millisecond\":1664005935400}', 0),
(109, 'sendmoney', '57892fe7-5d01-4af6-a384-91c6dd8e4a7e', '29164503524', '01882853913', 'Lê Thùy Trang', '150000', '5', '1664006095', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 78908, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"78908\",\"ID\":\"57892fe7-5d01-4af6-a384-91c6dd8e4a7e\",\"tranId\":29164503524,\"partnerId\":\"01882853913\",\"partnerName\":\"L\\u00ea Th\\u00f9y Trang\",\"amount\":150000,\"comment\":\"5\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664006095035}', 0),
(110, 'sendmoney', 'e2999921-b423-4c6c-9347-38e9c215bde7', '29164632375', '01882853913', 'Lê Thùy Trang', '100000', 'R', '1664006156', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 38511, '01866823540', 'Ngọc Phương', '{\"balance\":\"38511\",\"ID\":\"e2999921-b423-4c6c-9347-38e9c215bde7\",\"tranId\":29164632375,\"partnerId\":\"01882853913\",\"partnerName\":\"L\\u00ea Th\\u00f9y Trang\",\"amount\":100000,\"comment\":\"R\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01866823540\",\"ownerName\":\"Ng\\u1ecdc Ph\\u01b0\\u01a1ng\",\"millisecond\":1664006156509}', 0),
(111, 'sendmoney', '45ef3ca8-9447-4164-a4bb-b3dcbfd1f2fb', '29164750490', '01882853913', 'Lê Thùy Trang', '100000', 'R', '1664006173', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 23637, '0528498672', 'Hằng Nga', '{\"balance\":\"23637\",\"ID\":\"45ef3ca8-9447-4164-a4bb-b3dcbfd1f2fb\",\"tranId\":29164750490,\"partnerId\":\"01882853913\",\"partnerName\":\"L\\u00ea Th\\u00f9y Trang\",\"amount\":100000,\"comment\":\"R\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528498672\",\"ownerName\":\"H\\u1eb1ng Nga\",\"millisecond\":1664006172974}', 0),
(112, 'sendmoney', 'd7dfa4ff-785b-4748-9b12-1d25096bbad6', '29164584004', '01675245702', 'Trần Văn Nguyên Huy', '5000', 'Clmm.zone', '1664006338', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 73908, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"73908\",\"ID\":\"d7dfa4ff-785b-4748-9b12-1d25096bbad6\",\"tranId\":29164584004,\"partnerId\":\"01675245702\",\"partnerName\":\"Tr\\u1ea7n V\\u0103n Nguy\\u00ean Huy\",\"amount\":5000,\"comment\":\"\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664006338604}', 0),
(113, 'sendmoney', '58910b30-f6ef-468b-9f52-acf3e1fdd669', '29164754248', '0528498672', 'Hằng Nga', '50000', 'Clmm.zone', '1664006668', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 30381, '0528417145', 'Lão Hạc', '{\"balance\":\"30381\",\"ID\":\"58910b30-f6ef-468b-9f52-acf3e1fdd669\",\"tranId\":29164754248,\"partnerId\":\"0528498672\",\"partnerName\":\"H\\u1eb1ng Nga\",\"amount\":50000,\"comment\":\"Clmm.zone\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528417145\",\"ownerName\":\"L\\u00e3o H\\u1ea1c\",\"millisecond\":1664006668918}', 0),
(114, 'sendmoney', '6fe05841-0a84-4590-af45-6ba545d54ff4', '29165803828', '01882850959', 'LÒN VĂN HỘI', '50000', 'R', '1664008572', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 87241, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"87241\",\"ID\":\"6fe05841-0a84-4590-af45-6ba545d54ff4\",\"tranId\":29165803828,\"partnerId\":\"01882850959\",\"partnerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"amount\":50000,\"comment\":\"R\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664008572422}', 0),
(115, 'sendmoney', 'e46ba6d6-4b5f-40c5-8ee8-4f153abead6f', '29165786122', '01866823540', 'Ngọc Phương', '40000', '5', '1664008690', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 47241, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"47241\",\"ID\":\"e46ba6d6-4b5f-40c5-8ee8-4f153abead6f\",\"tranId\":29165786122,\"partnerId\":\"01866823540\",\"partnerName\":\"Ng\\u1ecdc Ph\\u01b0\\u01a1ng\",\"amount\":40000,\"comment\":\"5\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664008690874}', 0),
(116, 'sendmoney', '8216c570-6342-416d-86ff-ae945f61d0df', '29165824822', '01882850959', 'LÒN VĂN HỘI', '40000', '5', '1664008727', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 15512, '01866823540', 'Ngọc Phương', '{\"balance\":\"15512\",\"ID\":\"8216c570-6342-416d-86ff-ae945f61d0df\",\"tranId\":29165824822,\"partnerId\":\"01882850959\",\"partnerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"amount\":40000,\"comment\":\"5\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01866823540\",\"ownerName\":\"Ng\\u1ecdc Ph\\u01b0\\u01a1ng\",\"millisecond\":1664008727010}', 0),
(117, 'sendmoney', '64ac3f85-0b9e-486f-85d7-31b9df58727e', '29165815657', '0528498672', 'Hằng Nga', '15000', 'R', '1664008780', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 41232, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"41232\",\"ID\":\"64ac3f85-0b9e-486f-85d7-31b9df58727e\",\"tranId\":29165815657,\"partnerId\":\"0528498672\",\"partnerName\":\"H\\u1eb1ng Nga\",\"amount\":15000,\"comment\":\"R\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664008780867}', 0),
(118, 'sendmoney', 'e3346cc1-fc62-442d-a0ee-3368673b8ce6', '29166779849', '01866823540', 'Ngọc Phương', '10000', 'R', '1664010356', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 20381, '0528417145', 'Lão Hạc', '{\"balance\":\"20381\",\"ID\":\"e3346cc1-fc62-442d-a0ee-3368673b8ce6\",\"tranId\":29166779849,\"partnerId\":\"01866823540\",\"partnerName\":\"Ng\\u1ecdc Ph\\u01b0\\u01a1ng\",\"amount\":10000,\"comment\":\"R\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528417145\",\"ownerName\":\"L\\u00e3o H\\u1ea1c\",\"millisecond\":1664010355992}', 0),
(119, 'sendmoney', '99db99bd-4545-464b-a0f6-a27e9928350a', '29168190122', '0865763254', 'HỒ HOÀI ANH', '30000', 'Hi CLMM.ZONE', '1664013728', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 201456, '0528498672', 'Hằng Nga', '{\"balance\":\"201456\",\"ID\":\"99db99bd-4545-464b-a0f6-a27e9928350a\",\"tranId\":29168190122,\"partnerId\":\"0865763254\",\"partnerName\":\"H\\u1ed2 HO\\u00c0I ANH\",\"amount\":30000,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528498672\",\"ownerName\":\"H\\u1eb1ng Nga\",\"millisecond\":1664013728591}', 0),
(120, 'sendmoney', 'b1b5e48b-d88f-4c71-9215-fdcd990991b8', '29168103087', '01683103925', 'NGUYỄN TRƯỜNG SƠN', '22400', 'Bonus 100 triệu CLMM.ZONE', '1664013981', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 97612, '01866823540', 'Ngọc Phương', '{\"balance\":\"97612\",\"ID\":\"b1b5e48b-d88f-4c71-9215-fdcd990991b8\",\"tranId\":29168103087,\"partnerId\":\"01683103925\",\"partnerName\":\"NGUY\\u1ec4N TR\\u01af\\u1edcNG S\\u01a0N\",\"amount\":22400,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01866823540\",\"ownerName\":\"Ng\\u1ecdc Ph\\u01b0\\u01a1ng\",\"millisecond\":1664013981040}', 0),
(121, 'sendmoney', 'd26cd05c-a684-41db-b7c6-9c7e1293e733', '29178362388', '01699565721', 'DO THI BICH PHUONG', '80000', 'Hi', '1664035282', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 116154, '0528498672', 'Hằng Nga', '{\"balance\":\"116154\",\"ID\":\"d26cd05c-a684-41db-b7c6-9c7e1293e733\",\"tranId\":29178362388,\"partnerId\":\"01699565721\",\"partnerName\":\"DO THI BICH PHUONG\",\"amount\":80000,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528498672\",\"ownerName\":\"H\\u1eb1ng Nga\",\"millisecond\":1664035282790}', 0),
(122, 'sendmoney', 'c6b3967a-6200-4fc6-b323-80fe4d00c73d', '29184406110', '01648719083', 'TRẦN ANH TUẤN', '144000', 'Bonus 100 triệu CLMM.ZONE', '1664067386', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 595250, '01883059101', 'Đạt Villa', '{\"balance\":\"595250\",\"ID\":\"c6b3967a-6200-4fc6-b323-80fe4d00c73d\",\"tranId\":29184406110,\"partnerId\":\"01648719083\",\"partnerName\":\"TR\\u1ea6N ANH TU\\u1ea4N\",\"amount\":144000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664067386814}', 0),
(123, 'sendmoney', '480c1300-010e-4bde-b85d-73f693b289ba', '29184576727', '0975141722', 'Mạnh Quân', '25000', 'Đạt villa tặng quà', '1664067732', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 200732, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"200732\",\"ID\":\"480c1300-010e-4bde-b85d-73f693b289ba\",\"tranId\":29184576727,\"partnerId\":\"0975141722\",\"partnerName\":\"M\\u1ea1nh Qu\\u00e2n\",\"amount\":25000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664067732481}', 0),
(124, 'sendmoney', '91ecee7e-385c-4623-abe6-9078daf73e53', '29185258660', '0918222215', 'LAI HOANG THANH', '400000', 'Bonus 100 triệu CLMM.ZONE', '1664067948', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 195250, '01883059101', 'Đạt Villa', '{\"balance\":\"195250\",\"ID\":\"91ecee7e-385c-4623-abe6-9078daf73e53\",\"tranId\":29185258660,\"partnerId\":\"0918222215\",\"partnerName\":\"LAI HOANG THANH\",\"amount\":400000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664067948623}', 0),
(125, 'sendmoney', 'ca19fcc2-badd-4b2f-800b-c37fe13499b7', '29184607507', '0918222215', 'LAI HOANG THANH', '100000', 'Hi CLMM.ZONE', '1664067987', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 123829, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"123829\",\"ID\":\"ca19fcc2-badd-4b2f-800b-c37fe13499b7\",\"tranId\":29184607507,\"partnerId\":\"0918222215\",\"partnerName\":\"LAI HOANG THANH\",\"amount\":100000,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1664067987739}', 0),
(126, 'sendmoney', 'd86c7246-3db6-4f5a-8fd0-36ac3f0f6729', '29185266138', '01868023971', 'Tài Văn Xỉu', '25000', 'Hi CLMM.ZONE', '1664069399', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 208007, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"208007\",\"ID\":\"d86c7246-3db6-4f5a-8fd0-36ac3f0f6729\",\"tranId\":29185266138,\"partnerId\":\"01868023971\",\"partnerName\":\"T\\u00e0i V\\u0103n X\\u1ec9u\",\"amount\":25000,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664069399909}', 0),
(127, 'sendmoney', '85026591-7b66-4e60-b4c4-9a76062c56cc', '29185267469', '01646900250', 'Lê Việt Thắng', '10000', 'Bonus 100 triệu CLMM.ZONE', '1664069638', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 209250, '01883059101', 'Đạt Villa', '{\"balance\":\"209250\",\"ID\":\"85026591-7b66-4e60-b4c4-9a76062c56cc\",\"tranId\":29185267469,\"partnerId\":\"01646900250\",\"partnerName\":\"L\\u00ea Vi\\u1ec7t Th\\u1eafng\",\"amount\":10000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664069638505}', 0),
(128, 'sendmoney', '12acb8d5-fce0-4861-b6c3-72fd7d97a356', '29186019947', '0936075176', 'TRẦN THANH TAM', '10554', 'Hi', '1664070117', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 198696, '01883059101', 'Đạt Villa', '{\"balance\":\"198696\",\"ID\":\"12acb8d5-fce0-4861-b6c3-72fd7d97a356\",\"tranId\":29186019947,\"partnerId\":\"0936075176\",\"partnerName\":\"TR\\u1ea6N THANH TAM\",\"amount\":10554,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664070117744}', 0),
(129, 'sendmoney', '74c3e95b-985f-401d-b229-ddc63299785d', '29185961328', '0865763254', 'HỒ HOÀI ANH', '10000', 'Đạt villa tặng quà', '1664070232', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 198007, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"198007\",\"ID\":\"74c3e95b-985f-401d-b229-ddc63299785d\",\"tranId\":29185961328,\"partnerId\":\"0865763254\",\"partnerName\":\"H\\u1ed2 HO\\u00c0I ANH\",\"amount\":10000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664070232619}', 0),
(130, 'sendmoney', 'a000208c-2a77-49b2-96f5-f8476e1fc6d7', '29185942743', '0936075176', 'TRẦN THANH TAM', '10554', 'Bonus 100 triệu CLMM.ZONE', '1664070417', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 247453, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"247453\",\"ID\":\"a000208c-2a77-49b2-96f5-f8476e1fc6d7\",\"tranId\":29185942743,\"partnerId\":\"0936075176\",\"partnerName\":\"TR\\u1ea6N THANH TAM\",\"amount\":10554,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664070417514}', 0),
(131, 'sendmoney', 'b21260fe-2261-4b6d-a5a4-e3f2d2530f38', '29185943288', '01646900250', 'Lê Việt Thắng', '48000', 'Bonus 100 triệu CLMM.ZONE', '1664070496', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 199453, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"199453\",\"ID\":\"b21260fe-2261-4b6d-a5a4-e3f2d2530f38\",\"tranId\":29185943288,\"partnerId\":\"01646900250\",\"partnerName\":\"L\\u00ea Vi\\u1ec7t Th\\u1eafng\",\"amount\":48000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664070496755}', 0),
(132, 'sendmoney', '57266170-6465-4dbe-b06a-2d99a31fac37', '29185944547', '0984364550', 'HA THI DUYEN', '20000', 'Hi', '1664070691', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 178696, '01883059101', 'Đạt Villa', '{\"balance\":\"178696\",\"ID\":\"57266170-6465-4dbe-b06a-2d99a31fac37\",\"tranId\":29185944547,\"partnerId\":\"0984364550\",\"partnerName\":\"HA THI DUYEN\",\"amount\":20000,\"comment\":\"Hi\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664070691900}', 0),
(133, 'sendmoney', '987ee1a9-a28c-4ce3-9a6f-1bcf7b1d364d', '29185944779', '0918222215', 'LAI HOANG THANH', '120000', 'Bonus 100 triệu CLMM.ZONE', '1664070726', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 79453, '01882452313', 'Bú Ít Thôi', '{\"balance\":\"79453\",\"ID\":\"987ee1a9-a28c-4ce3-9a6f-1bcf7b1d364d\",\"tranId\":29185944779,\"partnerId\":\"0918222215\",\"partnerName\":\"LAI HOANG THANH\",\"amount\":120000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882452313\",\"ownerName\":\"B\\u00fa \\u00cdt Th\\u00f4i\",\"millisecond\":1664070726407}', 0),
(134, 'sendmoney', 'b602bfe5-ab5e-4906-8cfe-195c07ba105f', '29186126812', '0982836406', 'Lê Thế Đông', '20000', 'Bonus 100 triệu CLMM.ZONE', '1664071205', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 185696, '01883059101', 'Đạt Villa', '{\"balance\":\"185696\",\"ID\":\"b602bfe5-ab5e-4906-8cfe-195c07ba105f\",\"tranId\":29186126812,\"partnerId\":\"0982836406\",\"partnerName\":\"L\\u00ea Th\\u1ebf \\u0110\\u00f4ng\",\"amount\":20000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664071205848}', 0),
(135, 'sendmoney', '84fe8218-bbed-43b8-b409-c1402a0e3193', '29186739857', '0918222215', 'LAI HOANG THANH', '117500', 'Win CLMM.ZONE', '1664071685', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 60196, '01883059101', 'Đạt Villa', '{\"balance\":\"60196\",\"ID\":\"84fe8218-bbed-43b8-b409-c1402a0e3193\",\"tranId\":29186739857,\"partnerId\":\"0918222215\",\"partnerName\":\"LAI HOANG THANH\",\"amount\":117500,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664071685613}', 0),
(136, 'sendmoney', '2f9f994a-799e-4747-81e3-a9b9c5f40244', '29189319738', '0889573687', 'QUÀNG THẾ QUYỀN', '7500', 'Hi CLMM.ZONE', '1664077439', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 247601, '01882853913', 'Lê Thùy Trang', '{\"balance\":\"247601\",\"ID\":\"2f9f994a-799e-4747-81e3-a9b9c5f40244\",\"tranId\":29189319738,\"partnerId\":\"0889573687\",\"partnerName\":\"QU\\u00c0NG TH\\u1ebe QUY\\u1ec0N\",\"amount\":7500,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882853913\",\"ownerName\":\"L\\u00ea Th\\u00f9y Trang\",\"millisecond\":1664077439876}', 0),
(137, 'sendmoney', 'dba2e5c6-f316-4b17-851a-de85a5b694b5', '29189309773', '0989780735', 'Anh Tuấn', '120000', 'Bonus 100 triệu CLMM.ZONE', '1664077469', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 127601, '01882853913', 'Lê Thùy Trang', '{\"balance\":\"127601\",\"ID\":\"dba2e5c6-f316-4b17-851a-de85a5b694b5\",\"tranId\":29189309773,\"partnerId\":\"0989780735\",\"partnerName\":\"Anh Tu\\u1ea5n\",\"amount\":120000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882853913\",\"ownerName\":\"L\\u00ea Th\\u00f9y Trang\",\"millisecond\":1664077469770}', 0),
(138, 'sendmoney', '41bab13b-43c7-470d-a1e9-195822902a80', '29189525514', '0989780735', 'Anh Tuấn', '48000', 'Win CLMM.ZONE', '1664078353', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 611026, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"611026\",\"ID\":\"41bab13b-43c7-470d-a1e9-195822902a80\",\"tranId\":29189525514,\"partnerId\":\"0989780735\",\"partnerName\":\"Anh Tu\\u1ea5n\",\"amount\":48000,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1664078352940}', 0),
(139, 'sendmoney', 'f5e8a275-e0e5-4f5f-ad49-6557c9e86f18', '29189545100', '0962066367', 'NGUYỄN TIẾN DŨNG', '300000', 'Đạt villa tặng quà', '1664078369', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 311026, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"311026\",\"ID\":\"f5e8a275-e0e5-4f5f-ad49-6557c9e86f18\",\"tranId\":29189545100,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":300000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1664078368995}', 0),
(140, 'sendmoney', '4d03b5db-1245-4e26-882e-b885bf6fd50c', '29189338374', '0987530985', 'LƯƠNG GIA HUY', '25000', 'Bonus 100 triệu CLMM.ZONE', '1664078539', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 168296, '0528417145', 'Lão Hạc', '{\"balance\":\"168296\",\"ID\":\"4d03b5db-1245-4e26-882e-b885bf6fd50c\",\"tranId\":29189338374,\"partnerId\":\"0987530985\",\"partnerName\":\"L\\u01af\\u01a0NG GIA HUY\",\"amount\":25000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"0528417145\",\"ownerName\":\"L\\u00e3o H\\u1ea1c\",\"millisecond\":1664078539724}', 0),
(141, 'sendmoney', '9007e1c1-16f4-4cad-bb0d-76067df2b731', '29190244354', '0962066367', 'NGUYỄN TIẾN DŨNG', '200000', 'Win CLMM.ZONE', '1664079314', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 361226, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"361226\",\"ID\":\"9007e1c1-16f4-4cad-bb0d-76067df2b731\",\"tranId\":29190244354,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":200000,\"comment\":\"Win CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1664079314777}', 0),
(142, 'sendmoney', '8d911567-375c-4659-8359-de2c6a1cc39d', '29191501698', '0962066367', 'NGUYỄN TIẾN DŨNG', '300000', 'Đạt villa tặng quà', '1664081494', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 304196, '01883059101', 'Đạt Villa', '{\"balance\":\"304196\",\"ID\":\"8d911567-375c-4659-8359-de2c6a1cc39d\",\"tranId\":29191501698,\"partnerId\":\"0962066367\",\"partnerName\":\"NGUY\\u1ec4N TI\\u1ebeN D\\u0168NG\",\"amount\":300000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664081494478}', 0),
(143, 'sendmoney', '04d7efee-f657-4738-a6fb-9f2118ac3e63', '29191502128', '0528417145', 'Lão Hạc', '150000', 'Bonus 100 triệu CLMM.ZONE', '1664081548', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 217337, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"217337\",\"ID\":\"04d7efee-f657-4738-a6fb-9f2118ac3e63\",\"tranId\":29191502128,\"partnerId\":\"0528417145\",\"partnerName\":\"L\\u00e3o H\\u1ea1c\",\"amount\":150000,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1664081548032}', 0),
(144, 'sendmoney', '02f1dc8e-8617-475e-be4d-285b71ee5e09', '29192105816', '01865136329', 'DAO THI DUY', '100000', '5', '1664083209', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 237196, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"237196\",\"ID\":\"02f1dc8e-8617-475e-be4d-285b71ee5e09\",\"tranId\":29192105816,\"partnerId\":\"01865136329\",\"partnerName\":\"DAO THI DUY\",\"amount\":100000,\"comment\":\"5\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1664083208990}', 0),
(145, 'sendmoney', '6560e989-7ce1-4b3d-b387-472894bb61d2', '29193010431', '0972969521', 'VŨ DUY TÀI', '10000', 'Hi CLMM.ZONE', '1664083386', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 294196, '01883059101', 'Đạt Villa', '{\"balance\":\"294196\",\"ID\":\"6560e989-7ce1-4b3d-b387-472894bb61d2\",\"tranId\":29193010431,\"partnerId\":\"0972969521\",\"partnerName\":\"V\\u0168 DUY T\\u00c0I\",\"amount\":10000,\"comment\":\"Hi CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664083386395}', 0),
(146, 'sendmoney', 'd0f64ee5-9e48-4b7f-a9bc-93d1428392e3', '29194589745', '0528417145', 'Lão Hạc', '100000', '5', '1664086757', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 237877, '01865136329', 'DAO THI DUY', '{\"balance\":\"237877\",\"ID\":\"d0f64ee5-9e48-4b7f-a9bc-93d1428392e3\",\"tranId\":29194589745,\"partnerId\":\"0528417145\",\"partnerName\":\"L\\u00e3o H\\u1ea1c\",\"amount\":100000,\"comment\":\"5\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01865136329\",\"ownerName\":\"DAO THI DUY\",\"millisecond\":1664086757783}', 0),
(147, 'sendmoney', '9205b446-5f40-4eb3-a915-78536e9d8106', '29194002814', '01626249929', 'LÊ VĂN SĨ TÚ', '10000', 'Đạt villa tặng quà', '1664087108', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 256196, '01883059101', 'Đạt Villa', '{\"balance\":\"256196\",\"ID\":\"9205b446-5f40-4eb3-a915-78536e9d8106\",\"tranId\":29194002814,\"partnerId\":\"01626249929\",\"partnerName\":\"L\\u00ca V\\u0102N S\\u0128 T\\u00da\",\"amount\":10000,\"comment\":\"\\u0110\\u1ea1t villa t\\u1eb7ng qu\\u00e0\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01883059101\",\"ownerName\":\"\\u0110\\u1ea1t Villa\",\"millisecond\":1664087108690}', 0),
(148, 'sendmoney', 'f62a9c02-e510-4f7a-9cad-709f24e6eeb1', '29193924574', '0989780735', 'Anh Tuấn', '21600', 'Bonus 100 triệu CLMM.ZONE', '1664087150', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 215596, '01882850959', 'LÒN VĂN HỘI', '{\"balance\":\"215596\",\"ID\":\"f62a9c02-e510-4f7a-9cad-709f24e6eeb1\",\"tranId\":29193924574,\"partnerId\":\"0989780735\",\"partnerName\":\"Anh Tu\\u1ea5n\",\"amount\":21600,\"comment\":\"Bonus 100 tri\\u1ec7u CLMM.ZONE\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882850959\",\"ownerName\":\"L\\u00d2N V\\u0102N H\\u1ed8I\",\"millisecond\":1664087150381}', 0),
(149, 'sendmoney', 'bc10fa53-fdbd-4b87-9dd7-44e82f7cc525', '29194340154', '0528417145', 'Lão Hạc', '50000', 'R', '1664087846', '0000-00-00 00:00:00', 'success', 'Chuyển Tiền Thành Công', 167337, '01882123739', 'Nguyễn Phương Hằng', '{\"balance\":\"167337\",\"ID\":\"bc10fa53-fdbd-4b87-9dd7-44e82f7cc525\",\"tranId\":29194340154,\"partnerId\":\"0528417145\",\"partnerName\":\"L\\u00e3o H\\u1ea1c\",\"amount\":50000,\"comment\":\"R\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01882123739\",\"ownerName\":\"Nguy\\u1ec5n Ph\\u01b0\\u01a1ng H\\u1eb1ng\",\"millisecond\":1664087846344}', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `code`
--

CREATE TABLE `code` (
  `id` int(100) NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `momo_reward` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `money` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `limit_import` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `entered` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `code_his`
--

CREATE TABLE `code_his` (
  `id` int(100) NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `momo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `momo_reward` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `money` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `code_his`
--

INSERT INTO `code_his` (`id`, `code`, `momo`, `momo_reward`, `day`, `money`, `time`) VALUES
(29, 'HINHOAE', '0877719466', '0565136329', '22/09/2022', '5000', '1663825270'),
(30, 'HINHOAE', '01652413915', '0565136329', '22/09/2022', '5000', '1663825571'),
(31, 'HIHICODETANTHU', '0986720463', '0582850959', '24/09/2022', '1000', '1663979625'),
(32, 'HIHICODETANTHU', '01699565721', '0582850959', '24/09/2022', '1000', '1663980116'),
(33, 'HIHICODETANTHU', '01683103925', '0582850959', '24/09/2022', '1000', '1663980389'),
(34, 'HIHICODETANTHU', '01629335092', '0582850959', '24/09/2022', '1000', '1663980545'),
(35, 'HIHICODETANTHU', '0889573687', '0582850959', '24/09/2022', '1000', '1663982354'),
(36, 'HIHICODETANTHU', '01656552407', '0582850959', '24/09/2022', '1000', '1663982906'),
(37, 'HIHICODETANTHU', '0975759283', '0582850959', '24/09/2022', '1000', '1663985658'),
(38, 'hogoda1827', '0976611602', '0582850959', '24/09/2022', '10000', '1663987289'),
(39, 'hogoda1827', '0976107019', '0582850959', '24/09/2022', '10000', '1663987328'),
(40, 'hogoda1827', '0878661031', '0582850959', '24/09/2022', '10000', '1663987359'),
(41, 'hogoda1827', '01676686904', '0582850959', '24/09/2022', '10000', '1663987541'),
(42, 'hogoda1827', '01683983289', '0582850959', '24/09/2022', '10000', '1663987770'),
(43, 'HIHICODETANTHU', '0934939030', '0582850959', '24/09/2022', '1000', '1663988186'),
(44, 'HIHICODETANTHU', '0985882667', '0582850959', '24/09/2022', '1000', '1663994864'),
(45, 'Hihicodetanthu', '01669743881', '0582850959', '24/09/2022', '1000', '1663995179'),
(46, 'HIHICODETANTHU', '01214109697', '0582850959', '24/09/2022', '1000', '1663995552'),
(47, 'HIHICODETANTHU', '0962903304', '0582850959', '24/09/2022', '1000', '1663996784'),
(48, 'HIHICODETANTHU', '0943375009', '0582850959', '24/09/2022', '1000', '1664008254'),
(49, 'HIHICODETANTHU', '01674603195', '0582850959', '24/09/2022', '1000', '1664008697'),
(50, 'HIHICODETANTHU', '0966287407', '0582850959', '24/09/2022', '1000', '1664012295'),
(51, 'HIHICODETANTHU', '0976611602', '0582850959', '24/09/2022', '1000', '1664015379'),
(52, 'HIHICODETANTHU', '0979920742', '0582850959', '24/09/2022', '1000', '1664016390'),
(53, 'HIHICODETANTHU', '0868324312', '0582850959', '24/09/2022', '1000', '1664018462'),
(54, 'HIHICODETANTHU', '01227406541', '0582850959', '24/09/2022', '1000', '1664022143'),
(55, 'HIHICODETANTHU', '01648719083', '0582850959', '24/09/2022', '1000', '1664027868'),
(56, 'Hihicodetanthu', '01639168455', '0582850959', '25/09/2022', '1000', '1664068169'),
(57, 'HIHICODETANTHU', '01646259826', '0582850959', '25/09/2022', '1000', '1664068240'),
(58, 'Hihicodetanthu', '01698870356', '0582850959', '25/09/2022', '1000', '1664069683'),
(59, 'Hihicodetanthu', '01638483376', '0582850959', '25/09/2022', '1000', '1664069736'),
(60, 'HIHICODETANTHU', '0918222215', '0582850959', '25/09/2022', '1000', '1664072392'),
(61, 'HIHICODETANTHU', '0899858646', '0582850959', '25/09/2022', '1000', '1664072414'),
(62, 'HIHICODETANTHU', '01675245702', '0582850959', '25/09/2022', '1000', '1664072433'),
(63, 'HIHICODETANTHU', '0987530985', '0582850959', '25/09/2022', '1000', '1664079024'),
(64, 'papa477', '0899858646', '0565136329', '25/09/2022', '5000', '1664088197'),
(65, 'Papa477', '01675245702', '0565136329', '25/09/2022', '5000', '1664088207'),
(66, 'Papa477', '0889573687', '0565136329', '25/09/2022', '5000', '1664088211'),
(67, 'Papa477', '0986720463', '0565136329', '25/09/2022', '5000', '1664088232'),
(68, 'Papa477', '0964736906', '0565136329', '25/09/2022', '5000', '1664088282'),
(69, 'HIHICODETANTHU', '01644289109', '0582850959', '25/09/2022', '1000', '1664089339'),
(70, 'HIHICODETANTHU', '0969577007', '0582850959', '25/09/2022', '1000', '1664090480'),
(71, 'HIHICODETANTHU', '0964736906', '0582850959', '25/09/2022', '1000', '1664090504'),
(72, 'HIHICODETANTHU', '0989780735', '0582850959', '25/09/2022', '1000', '1664090515'),
(73, 'HIHICODETANTHU', '0972969521', '0582850959', '25/09/2022', '1000', '1664090653'),
(74, 'HIHICODETANTHU', '01625438100', '0582850959', '25/09/2022', '1000', '1664093432'),
(75, 'HIHICODETANTHU', '01288453065', '0582850959', '25/09/2022', '1000', '1664098140'),
(76, 'HIHICODETANTHU', '01216669700', '0582850959', '25/09/2022', '1000', '1664098740'),
(77, 'HIHICODETANTHU', '01672513800', '0582850959', '25/09/2022', '1000', '1664101842'),
(78, 'HIHICODETANTHU', '0969995614', '0582850959', '25/09/2022', '1000', '1664104044');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cron_momo`
--

CREATE TABLE `cron_momo` (
  `id` int(11) NOT NULL,
  `key_login` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Name` mediumtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `partnerCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT 'momo',
  `imei` varchar(100) DEFAULT NULL,
  `AAID` varchar(100) DEFAULT NULL,
  `TOKEN` varchar(300) DEFAULT NULL,
  `ohash` varchar(100) DEFAULT NULL,
  `SECUREID` varchar(100) DEFAULT NULL,
  `rkey` varchar(100) DEFAULT NULL,
  `rowCardId` varchar(100) DEFAULT NULL,
  `authorization` varchar(2000) NOT NULL DEFAULT 'undefined',
  `refreshToken` text DEFAULT NULL,
  `agent_id` varchar(100) NOT NULL DEFAULT 'undefined',
  `setupKeyDecrypt` varchar(150) DEFAULT NULL,
  `setupKey` varchar(200) DEFAULT NULL,
  `sessionkey` varchar(150) DEFAULT ' ',
  `RSA_PUBLIC_KEY` mediumtext DEFAULT NULL,
  `BALANCE` int(11) DEFAULT NULL,
  `BankVerify` int(11) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `hardware` varchar(50) DEFAULT NULL,
  `facture` varchar(50) DEFAULT NULL,
  `MODELID` varchar(100) DEFAULT NULL,
  `TimeLogin` int(30) DEFAULT 0,
  `errorDesc` mediumtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `withdraw_status` int(11) NOT NULL DEFAULT 1,
  `share_fund` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `today` int(11) DEFAULT 0,
  `month` int(11) DEFAULT 0,
  `today_gd` int(11) DEFAULT 0,
  `ex_day` varchar(100) NOT NULL DEFAULT '0',
  `receive_day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT '0',
  `ex_mon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT '0',
  `receive_mon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT '0',
  `noidungtra` varchar(255) DEFAULT NULL,
  `limit_day` int(11) DEFAULT 30000000,
  `limit_month` int(11) DEFAULT 100000000,
  `try` int(11) NOT NULL DEFAULT 0,
  `DataJson` longtext DEFAULT NULL,
  `pay` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `day_miss_his`
--

CREATE TABLE `day_miss_his` (
  `id` int(100) NOT NULL,
  `day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sum_play` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `bonus` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `day_miss_up`
--

CREATE TABLE `day_miss_up` (
  `id` int(100) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sum_bonus` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `day_miss_up`
--

INSERT INTO `day_miss_up` (`id`, `type`, `top1`, `top2`, `top3`, `top4`, `top5`, `sum_bonus`) VALUES
(1, 'Ngưỡng Mốc', '500000', '5000000', '10000000', '50000000', '100000000', '5235000'),
(2, 'Thưởng Mốc', '5000', '1000', '10000', '30000', '500000', '24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `default`
--

CREATE TABLE `default` (
  `id` int(100) NOT NULL,
  `data` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `default`
--

INSERT INTO `default` (`id`, `data`) VALUES
(1, '{\"CL\":{\"cmt_C\":\"C\",\"cmt_L\":\"L\",\"min\":\"1000\",\"max\":\"1000000\",\"ratio\":\"2.3\",\"status\":\"off\",\"md_thua\":\"0,9\",\"md_ht\":\"0\"},\"CL2\":{\"cmt_C\":\"C2\",\"cmt_L\":\"L2\",\"min\":\"1000\",\"max\":\"1000000\",\"ratio\":\"1.9\",\"status\":\"off\",\"md_thua\":\"\",\"md_ht\":\"0\"},\"TX\":{\"cmt_T\":\"T\",\"cmt_X\":\"X\",\"min\":\"1000\",\"max\":\"1000000\",\"ratio\":\"2.3\",\"status\":\"off\",\"md_thua\":\"0,9\",\"md_ht\":\"0\"},\"TX2\":{\"cmt_T\":\"T2\",\"cmt_X\":\"X2\",\"min\":\"1000\",\"max\":\"1000000\",\"ratio\":\"1.9\",\"status\":\"off\",\"md_thua\":\"\",\"md_ht\":\"0\"},\"1P3\":{\"cmt_N0\":\"N0\",\"cmt_N1\":\"N1\",\"cmt_N2\":\"N2\",\"cmt_N3\":\"N3\",\"min\":\"1000\",\"max\":\"1000000\",\"ratio_N0\":\"6\",\"ratio_N1\":\"3\",\"ratio_N2\":\"3\",\"ratio_N3\":\"3\",\"status\":\"off\"},\"G3\":{\"cmt\":\"G3\",\"min\":\"1000\",\"max\":\"1000000\",\"rules_2\":\"69,66,99\",\"rules_3\":\"123,234,456,678,789\",\"ratio_2\":\"4\",\"ratio_3\":\"6\",\"status\":\"off\"},\"T3S\":{\"cmt\":\"S\",\"min\":\"1000\",\"max\":\"1000000\",\"rules_1\":\"7,17,27\",\"rules_2\":\"8,18\",\"rules_3\":\"9,19\",\"ratio_1\":\"3\",\"ratio_2\":\"4\",\"ratio_3\":\"5\",\"status\":\"off\"},\"H2S\":{\"cmt\":\"H3\",\"min\":\"1000\",\"max\":\"1000000\",\"rules_1\":\"3\",\"rules_2\":\"5\",\"rules_3\":\"7\",\"rules_4\":\"9\",\"ratio_1\":\"3\",\"ratio_2\":\"5\",\"ratio_3\":\"7\",\"ratio_4\":\"9\",\"status\":\"off\"},\"LO\":{\"cmt\":\"LO\",\"min\":\"1000\",\"max\":\"1000000\",\"rules\":\"08,18,34,49\",\"ratio\":\"4\",\"status\":\"off\"}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `device` varchar(50) DEFAULT NULL,
  `hardware` varchar(50) DEFAULT NULL,
  `facture` varchar(50) DEFAULT NULL,
  `MODELID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `device`
--

INSERT INTO `device` (`id`, `device`, `hardware`, `facture`, `MODELID`) VALUES
(3, 'SM-A102U', 'a10e', 'Samsung', 'Samsung SM-A102U'),
(4, 'SM-A305FN', 'a30', 'Samsung', 'Samsung SM-A305FN'),
(5, 'HTC One X9 dual sim', 'htc_e56ml_dtul', 'HTC', 'HTC One X9 dual sim'),
(6, 'HTC 7060', 'cp5dug', 'HTC', 'HTC HTC_7060'),
(7, 'HTC D10w', 'htc_a56dj_pro_dtwl', 'HTC', 'HTC htc_a56dj_pro_dtwl'),
(8, 'Oppo realme X Lite', 'RMX1851CN', 'Oppo', 'Oppo RMX1851'),
(9, 'MI 8', 'equuleus', 'Xiaomi', 'Xiaomi equuleus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_choi`
--

CREATE TABLE `lich_su_choi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_nhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tranId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partnerName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_momo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `amount_play` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_game` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `game` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ma_game` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `result_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `msg_send` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `type_gd` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `result_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time_tran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(20) UNSIGNED NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `theme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `favion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `limit_trans` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `video` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `tele` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `box_tele` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `box_zalo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `momo_reward_daymiss` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sum_reward_daymiss` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `topfake` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `status`, `theme`, `url`, `favion`, `logo`, `description`, `keyword`, `limit_trans`, `content`, `video`, `tele`, `box_tele`, `box_zalo`, `momo_reward_daymiss`, `sum_reward_daymiss`, `topfake`) VALUES
(1, 'on', '2', '', 'https://clmm.me/assets/fhf.png', '', 'Chẵn Lẻ MoMo Online - Hệ thống trò chơi Chẵn lẻ MoMo giao dịch hoàn toàn tự động 24/7', 'chanlemomo,topmomo,minigame', '5', 'Win ', '', '', '', '', '0582452313', '5235000', 'on');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `top_his`
--

CREATE TABLE `top_his` (
  `id` int(100) NOT NULL,
  `week` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sum_play` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `bonus` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `top_up`
--

CREATE TABLE `top_up` (
  `id` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `top5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `top_up`
--

INSERT INTO `top_up` (`id`, `type`, `top1`, `top2`, `top3`, `top4`, `top5`) VALUES
(1, 'THƯỞNG TOP', '100000', '50000', '30000', '20000', '1000'),
(2, 'SĐT FAKE', '09742796', '07337974', '0558883', '09690094', '08858986'),
(3, 'TIỀN CHƠI FAKE', '13,450,187', '12,997,130', '11,979,085', '11,607,691', '11,568,120');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `token`, `time`) VALUES
(4, 'admin', 'admin@gmail.com', 'T2xKOGF5KzhNdUp5WFl4YllYR2gvdz09', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJyb2xlIjoiYWRtaW4iLCJleHAiOjE2NjQxMzAwNjB9.CU3w1y3aDMir0OvBf17fTj6rd56fg3UCYEJKVejaAuw', '01:21:00 26/09/2022');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attendance_his`
--
ALTER TABLE `attendance_his`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attendance_list`
--
ALTER TABLE `attendance_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chuyen_tien`
--
ALTER TABLE `chuyen_tien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `code_his`
--
ALTER TABLE `code_his`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cron_momo`
--
ALTER TABLE `cron_momo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `day_miss_his`
--
ALTER TABLE `day_miss_his`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `day_miss_up`
--
ALTER TABLE `day_miss_up`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `default`
--
ALTER TABLE `default`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lich_su_choi`
--
ALTER TABLE `lich_su_choi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `top_his`
--
ALTER TABLE `top_his`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `top_up`
--
ALTER TABLE `top_up`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `attendance_his`
--
ALTER TABLE `attendance_his`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `attendance_list`
--
ALTER TABLE `attendance_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chuyen_tien`
--
ALTER TABLE `chuyen_tien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT cho bảng `code`
--
ALTER TABLE `code`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `code_his`
--
ALTER TABLE `code_his`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `cron_momo`
--
ALTER TABLE `cron_momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT cho bảng `day_miss_his`
--
ALTER TABLE `day_miss_his`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `day_miss_up`
--
ALTER TABLE `day_miss_up`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `default`
--
ALTER TABLE `default`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `lich_su_choi`
--
ALTER TABLE `lich_su_choi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `top_his`
--
ALTER TABLE `top_his`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `top_up`
--
ALTER TABLE `top_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
