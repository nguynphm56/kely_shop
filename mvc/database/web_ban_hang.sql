-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 4, 2023 lúc 17:45 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_ban_hang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_account`
--

CREATE TABLE `admin_account` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `number_phone` varchar(11) NOT NULL,
  `level_admin` int(1) NOT NULL,
  `banned` int(1) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `cookie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin_account`
--
-- Tk và mật khẩu
-- VÕ THANH TÚ ( admin - admin)
-- Phạm Ngọc Nguyên (admin1 -admin1)
INSERT INTO `admin_account` (`id`, `user_name`, `pass_word`, `full_name`, `email`, `address`, `number_phone`, `level_admin`, `banned`, `create_date`, `cookie`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Võ Thanh Tú', '20520839@gm.uit.edu.vn', 'Vĩnh Long', '0332467642', 1, 0, '2023-10-04 19:59:47', 'mD%OoST#roH%RZg5JYdahmJZSzY5mtEGbht@OAVPknBqWJn4N^gXkcElDn2e%Axz57yWe25ub#kW^Q3N1j9AsdRXXOTmdJ$iJ%MGnt^XlPatgF@ZG1Cy#xl7vTYeT$pcGn2%qv9adCwATpB8uMYThE;1;1'),
(2, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'Phạm Ngọc Nguyên', 'nguyen29@gmail.com', 'Bình Dương', '0569108852', 1, 0, '2023-05-16 01:41:17', 'uoaw9g17LJMeqHog#PefsnXBt1aKI589Ix9VHDATIVC59JH$r2cfYzAVCo##CUlLXA72LHn8rttT8cxI5nWxT$JBwSRQszNd@TWSScRQajDV8YOkgjLwcjix&HKTsJmI58E6M19itg%&q1v^TGECVu;2;1'),
(3, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'Đặng Ánh Phước', 'anhphuoc@gmail.com', 'TP Hồ Chí Minh', '2', 0, 0, '2022-05-17 11:09:26', '0'),
(4, 'admin3', '32cacb2f994f6b42183a1300d9a3e8d6', 'Nguyễn Ngọc Thiên Kim', 'thienkim@gmail.com', 'TP Hồ Chí Minh', '3', 0, 0, '2022-05-17 11:09:43', '0');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `status`, `create_at`, `update_at`, `status_delete`) VALUES
(112, 'Quần Jean Nam', 'Quan-Jean-Nam', 'Hiển Thị', '2021-12-31 10:26:44', '0000-00-00 00:00:00', 1),
(113, 'Áo Thun Nam', 'Ao-Thun-Nam', 'Hiển Thị', '2021-12-31 10:27:00', '0000-00-00 00:00:00', 0),
(114, 'Áo Sơ Mi Nam', 'Ao-So-Mi-Nam', 'Hiển Thị', '2021-12-31 10:27:19', '0000-00-00 00:00:00', 0),
(115, 'Quần KaKi Nam', 'Quan-KaKi-Nam', 'Hiển Thị', '2021-12-31 10:27:37', '0000-00-00 00:00:00', 0),
(116, 'Quần Short', 'Quan-Short', 'Hiển Thị', '2021-12-31 10:28:08', '0000-00-00 00:00:00', 0),
(117, 'Đồ Gia Đình', 'Do-Gia-Dinh', 'Hiển Thị', '2021-12-31 10:28:50', '0000-00-00 00:00:00', 0),
(118, 'Áo Thun Nữ', 'Ao-Thun-Nu', 'Hiển Thị', '2021-12-31 10:30:17', '0000-00-00 00:00:00', 1),
(119, 'Áo Sơ Mi Nữ', 'Ao-So-Mi-Nu', 'Hiển Thị', '2021-12-31 10:30:25', '0000-00-00 00:00:00', 0),
(120, 'Đầm, Váy', 'Dam,-Vay', 'Hiển Thị', '2021-12-31 10:30:57', '0000-00-00 00:00:00', 0),
(122, 'Đồ Thể Thao', 'Do-The-Thao', 'Hiển Thị', '2021-12-31 10:32:07', '0000-00-00 00:00:00', 0),
(123, 'Áo Ấm', 'Ao-Am', 'Hiển Thị', '2021-12-31 10:34:27', '0000-00-00 00:00:00', 0),
(124, 'Áo Khoác', 'Ao-Khoac', 'Hiển Thị', '2021-12-31 10:51:24', '0000-00-00 00:00:00', 0),
(125, 'Áo Phông', 'Ao-Phong', 'Hiển Thị', '2021-12-31 11:06:57', '0000-00-00 00:00:00', 0),
(126, 'Phước', 'Phuoc', 'Hiển Thị', '2022-01-20 09:35:49', '0000-00-00 00:00:00', 1),
(127, 'TEST', 'TEST', 'Hiển Thị', '2022-01-20 09:37:08', '0000-00-00 00:00:00', 1),
(128, 'áo đá banh', 'ao-da-banh', 'Hiển Thị', '2022-01-21 08:43:44', '0000-00-00 00:00:00', 1),
(129, 'áo đá banh', 'ao-da-banh', 'Hiển Thị', '2022-01-21 08:43:46', '0000-00-00 00:00:00', 1),
(130, 'áo đá banh', 'ao-da-banh', 'Hiển Thị', '2022-01-21 08:43:48', '0000-00-00 00:00:00', 1),
(131, 'áo đá banh', 'ao-da-banh', 'Hiển Thị', '2022-01-21 08:43:51', '0000-00-00 00:00:00', 1),
(132, 'Sharecode.vn', 'Sharecode-vn', 'Hiển Thị', '2022-01-22 14:43:50', '0000-00-00 00:00:00', 1),
(138, 'Áo Thun Nam', 'ao-thun-nam', 'Hiển Thị', '2021-12-31 10:27:00', '0000-00-00 00:00:00', 0),
(139, 'test', 'test', 'Hiển Thị', '2022-05-11 12:42:15', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_product`
--

CREATE TABLE `comment_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name_user` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment_product`
--

INSERT INTO `comment_product` (`id`, `id_product`, `id_user`, `name_user`, `content`) VALUES
(14, 50, 34, 'Lê Hữu Phước', 'Chất lượng tốt, ship hàng về nhanh'),
(15, 50, 39, 'Ngu Thư Hân', 'Mãi iu'),
(16, 51, 40, 'Nguyễn Thị Bền', 'Rất xinh đẹp, rất tuyệt vời');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `name_product`, `product_id`, `quantity`, `unit_price`) VALUES
(119, 'Áo, váy gia đình', 51, 1, 53999.1),
(119, 'Combo đầm, váy mẹ và bé', 52, 1, 89999.1),
(120, 'Áo, váy gia đình', 51, 1, 53999.1),
(121, 'Áo, váy gia đình', 51, 1, 53999.1),
(122, 'Áo gia đình', 50, 5, 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_mony` double DEFAULT NULL,
  `status_recieve` varchar(20) NOT NULL,
  `cancel_order` int(11) NOT NULL,
  `delete_order` int(11) NOT NULL,
  `id_personnel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`id`, `user_id`, `create_at`, `name`, `address`, `phone_number`, `status`, `total_mony`, `status_recieve`, `cancel_order`, `delete_order`, `id_personnel`) VALUES
(119, 34, '2023-05-20 11:18:45', 'Nguyễn Thị Bền', 'Vũng Tàu', '0332469991', 'Đã Nhận Hàng', 178998.2, 'true', 0, 0, 2),
(120, 34, '2023-06-20 11:24:16', 'Ngu Thư Hân', 'TP Hồ Chí Minh', '0845151156', 'Đã Nhận Hàng', 88999.1, 'true', 0, 0, 1),
(121, 34, '2023-05-21 09:17:45', 'Ngu Thư Hân', 'TP Hồ Chí Minh', '0845151156', 'Đã Nhận Hàng', 88999.1, 'true', 0, 0, 2),
(122, 40, '2023-05-21 09:40:47', 'Triệu Lộ Tư', 'TP Hồ Chí Minh', '0845151117', 'Đã Nhận Hàng', 235000, 'true', 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img_product` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `descrip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `production_company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name_category` varchar(255) NOT NULL,
  `pay` int(11) NOT NULL,
  `sale_product` int(10) NOT NULL,
  `status_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `img_product`, `quantity`, `descrip`, `production_company`, `create_at`, `update_at`, `category_id`, `name_category`, `pay`, `sale_product`, `status_delete`) VALUES
(50, 'Áo gia đình', 50000, 'ao-gia-dinh-AG0554-2.jpg', 5, 'Đồ mặc gia đình thoáng mát', 'Công Ty TNHH PHUOCMG', '2021-12-31 10:38:00', '2022-01-01 00:31:55', 117, 'Đồ Gia Đình', 38, 20, 0),
(51, 'Áo, váy gia đình', 59999, 'ao-vay-gia-dinh-ag0515-1m4G3-4UKwpv_simg_d0daf0_800x1200_max.jpg', 52, 'Đồ mặc gia đình thoáng mát', 'Công Ty TNHH PHUOCMG', '2021-12-31 10:40:01', '2022-01-01 00:32:09', 117, 'Đồ Gia Đình', 17, 10, 0),
(52, 'Combo đầm, váy mẹ và bé', 99999, 'combo-dam-cap-me-va-be-1m4G3-hKwaQm_simg_d0daf0_800x1200_max.jpg', 19, 'Đồ mặc gia đình đẹp, thoáng mát', 'Công Ty TNHH PHUOCMG', '2021-12-31 10:43:36', '0000-00-00 00:00:00', 117, 'Đồ Gia Đình', 30, 10, 0),
(53, 'Quần Jean Nam', 199999, '4.jpg', 49, 'Chất liệu vải tốt, đẹp thể hiện đẳng cấp đàn ông', 'Công Ty TNHH PHUOCMG', '2021-12-31 10:48:46', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 37, 15, 1),
(55, 'Áo ấm nam lông cừu', 400000, 'ao-am-nam-long-cuu.jpg', 60, 'Áo khoác nam quân sự hàng xịn chuẩn quân đội', 'Công Ty TNHH PHUOCMG', '2021-12-31 11:01:07', '0000-00-00 00:00:00', 123, 'Áo Ấm', 10, 5, 0),
(56, 'Áo Khoác nữ hoodie', 155000, 'ao-khoac-ni-hoodie.jpg', 60, 'Chất liệu vải mềm, rất ấm', 'Công Ty TNHH PHUOCMG', '2021-12-31 11:05:37', '0000-00-00 00:00:00', 124, 'Áo Khoác', 8, 20, 0),
(57, 'Áo thun nữ', 35000, '1.jpg', 60, 'Chất liệu vải tốt, rộng thoáng mát', 'Công Ty TNHH PHUOCMG', '2021-12-31 22:09:34', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 2, 25, 1),
(58, 'Áo thun nữ', 39000, 'ao-thun-ao-phong-nu-eiffel-ca-tinh-msat28-1m4G3-LpJZdC_simg_d0daf0_800x1200_max.jpg', 60, 'Mặc rộng thoáng mát', 'Công Ty TNHH PHUOCMG', '2022-01-01 08:51:37', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 15, 50, 1),
(59, 'Áo thun nữ', 50000, 'ao-thu-ngua-mini-1m4G3-57c588_simg_d0daf0_800x1200_max.jpg', 50, 'Chống nắng', 'Công Ty TNHH PHUOCMG', '2022-01-02 09:15:42', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 3, 10, 1),
(61, 'Quần KaKi Nam', 50000, 'cu-cai-quan-kaki-thun-jogger-thoi-trang-mau-kem-qg06-1m4G3-7ec3c2_simg_d0daf0_800x1200_max.jpg', 50, 'đẹp', 'Công Ty TNHH PHUOCMG', '2022-01-02 10:52:52', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 2, 50, 0),
(63, 'Quần Jean Nam', 200000, 'quan-jean-nam1.png', 49, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG ', '2022-01-15 10:36:28', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 10, 10, 1),
(64, 'Quần Jean Nam', 210000, 'quan-jean-nam2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG ', '2022-01-15 10:37:07', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 0, 10, 1),
(65, 'Quần Jean Nam', 250000, 'quan-jean-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG ', '2022-01-15 10:37:39', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 0, 10, 1),
(66, 'Quần Jean Nam', 500000, 'quan-jean-nam5.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 19:51:44', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 1, 25, 1),
(67, 'Áo Thun Nam', 60000, 'ao-thun-nam1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 19:59:21', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(68, 'Áo Thun Nam', 70000, 'ao-thun-nam2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 19:59:51', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(69, 'Áo Thun Nam', 80000, 'ao-thun-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:04:48', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(70, 'Áo Thun Nam', 90000, 'ao-thun-nam4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:04:58', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(71, 'Áo Thun Nam', 50000, 'ao-thun-nam5.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:05:12', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(72, 'Áo Thun Nam', 55000, 'ao-thun-nam6.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:05:37', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(73, 'Áo Sơ Mi Nam', 55000, 'ao-so-mi-nam1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:10:54', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(74, 'Áo Sơ Mi Nam', 65000, 'ao-so-mi-nam2.jpeg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:11:08', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 1, 10, 0),
(75, 'Áo Sơ Mi Nam', 75000, 'ao-so-mi-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:11:33', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(76, 'Áo Sơ Mi Nam', 85000, 'ao-so-mi-nam4.jpeg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:11:51', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(77, 'Áo Sơ Mi Nam', 95000, 'ao-so-mi-nam5.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:12:08', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(78, 'Áo Sơ Mi Nam', 45000, 'ao-so-mi-nam-phong-cach-phoi-mau-1m4G3-BSZiod.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:12:30', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(79, 'Quần KaKi Nam', 450000, 'quan-kaki-nam-lich-lam-1m4G3-NvjQo7_simg_d0daf0_800x1200_max.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:15:21', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 0, 10, 0),
(80, 'Quần KaKi Nam', 460000, 'quan-kaki-nam2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:17:24', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 1, 10, 0),
(81, 'Quần KaKi Nam', 470000, 'quan-kaki-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:17:49', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 0, 10, 0),
(82, 'Quần KaKi Nam', 480000, 'quan-kaki-nam4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:18:15', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 0, 10, 0),
(83, 'Quần Short', 52000, 'quan-short-nam1.jpeg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:19:42', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(84, 'Quần Short', 62000, 'quan-short-nam2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:20:11', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(85, 'Quần Short', 72000, 'quan-short-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:20:32', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(86, 'Quần Short', 82000, 'quan-short-nam4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:20:47', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(87, 'Quần Short', 92000, 'quan-short-nam5.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:21:00', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(95, 'Áo Sơ Mi Nữ', 205000, 'ao-so-mi-nu-vien-co-hoa-31.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:32:49', '2022-01-16 20:34:41', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(96, 'Áo Sơ Mi Nữ', 215000, 'ao-so-mi-nu1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:33:03', '2022-01-16 20:34:11', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(97, 'Áo Sơ Mi Nữ', 255000, 'ao-so-mi-nu4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:33:39', '0000-00-00 00:00:00', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(98, 'Đồ Gia Đình', 59000, 'do-gia-dinh1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:37:57', '0000-00-00 00:00:00', 117, 'Đồ Gia Đình', 0, 10, 0),
(99, 'Đồ Gia Đình', 69000, 'do-gia-dinh1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:38:06', '0000-00-00 00:00:00', 117, 'Đồ Gia Đình', 0, 10, 0),
(100, 'Đồ Gia Đình', 79000, 'do-gia-dinh2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:38:36', '0000-00-00 00:00:00', 117, 'Đồ Gia Đình', 0, 10, 0),
(101, 'Áo Thun Nữ', 79000, 'ao-thun-nu1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:39:06', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 0, 10, 1),
(102, 'Áo Thun Nữ', 89000, 'do-gia-dinh2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:39:23', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 0, 10, 1),
(103, 'Áo Sơ Mi Nữ', 89000, 'ao-so-mi-nu1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:40:11', '0000-00-00 00:00:00', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(104, 'Áo Sơ Mi Nữ', 99000, 'ao-so-mi-nu2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 20:40:30', '0000-00-00 00:00:00', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(106, 'Váy', 199000, 'dam-vay-nu1.jpg', 60, 'Chất liệu vải đẹp', 'Công Ty TNHH PHUOCMG', '2022-01-16 21:02:44', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(107, 'Váy', 299999, 'dam-vay-nu2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 21:04:20', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(108, 'Váy', 255000, 'dam-vay-nu1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 21:06:48', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(109, 'Váy', 265000, 'dam-vay-nu3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 21:07:02', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(110, 'Váy', 275000, 'dam-vay-nu4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2022-01-16 21:09:24', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(111, 'Áo Len Nữ', 200000, 'ao-len-nu.jpg', 60, '11', 'Công Ty TNHH PHUOCMG', '2022-01-20 00:45:41', '0000-00-00 00:00:00', 125, 'Áo Phông', 1, 10, 0),
(112, 'áo dài', 200000, 'conong.png', 60, '.ccc', 'Công Ty TNHH PHUOCMG', '2022-01-20 00:54:10', '2022-01-20 22:32:31', 113, 'Áo Thun Nam', 0, 10, 1),
(113, 'TEST1', 200000, 'tien1.jpg', 60, 'kjkmmk', 'Công Ty TNHH PHUOCMG', '2022-01-20 09:38:38', '0000-00-00 00:00:00', 127, 'TEST', 0, 10, 1),
(114, 'TEST2', 500000, 'tien2.jpg', 60, 'huhuhuhu', 'Công Ty TNHH PHUOCMG', '2022-01-20 10:32:12', '0000-00-00 00:00:00', 127, 'TEST', 0, 10, 1),
(115, 'quần thun', 200000, '6.jpg', 60, 'èooe', 'phước', '2022-01-21 08:13:30', '0000-00-00 00:00:00', 125, 'Áo Phông', 0, 10, 1),
(116, 'quần thun', 200000, 'h1.png', 60, 'ìeiejeije', 'Công Ty TNHH PHUOCMG', '2022-01-21 08:23:04', '0000-00-00 00:00:00', 125, 'Áo Phông', 0, 10, 1),
(117, 'Quần Short', 500000, '5.jpg', 60, 'kk', 'Công Ty TNHH PHUOCMG', '2022-01-21 10:41:15', '0000-00-00 00:00:00', 1, '', 0, 10, 0),
(118, 'Quần Short', 500000, '246824978_3013829235559521_1342044413971316351_n.jpg', 60, 'knknnk', 'Công Ty TNHH PHUOCMG', '2022-01-21 10:48:20', '0000-00-00 00:00:00', 1, '', 0, 1000, 1),
(119, 'Sharecode.vn', 10000, 'login.png', 60, 'sharecode.vn', 'Công Ty TNHH PHUOCMG', '2022-01-22 14:44:45', '0000-00-00 00:00:00', 132, 'Sharecode.vn', 0, 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name_slider` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `slider_img` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name_slider`, `slider_img`, `create_at`, `update_at`, `status`) VALUES
(12, '1', '1.svg', '2023-11-29 15:33:22', '0000-00-00 00:00:00', 'Hiển Thị'),
(13, '2', '2.svg', '2023-11-29 15:33:33', '0000-00-00 00:00:00', 'Hiển Thị'),
(14, '3', '3.svg', '2023-11-29 15:33:33', '0000-00-00 00:00:00', 'Hiển Thị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email_account` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address_user` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `active_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_account`
--
-- User test ( test@gmail.com - test)
INSERT INTO `user_account` (`id`, `name`, `email_account`, `pass_word`, `phone_number`, `address_user`, `create_at`, `update_at`, `active_status`) VALUES
(28, 'Lê Hữu Phước', 'lehuuphuoc@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0332467645', 'Vĩnh Long', '2023-10-22 14:40:08', '0000-00-00 00:00:00', 'Hoạt Động'),
(29, 'Nguyễn Thùy Linh', 'nguyenthuylinh@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0332467644', 'Đà Nẵng', '2023-10-22 14:41:00', '0000-00-00 00:00:00', 'Hoạt Động'),
(30, 'Trần Văn Dân', 'tranvandan@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0332467647', 'Quãng Ngãi', '2023-10-05 11:47:04', '0000-00-00 00:00:00', 'Hoạt Động'),
(31, 'Nguyễn Hà Linh', 'nguyenhalinh@gmail.comr', 'c4ca4238a0b923820dcc509a6f75849b', '0332467644', 'Quảng Nam', '2023-10-11 12:40:12', '0000-00-00 00:00:00', 'Hoạt Động'),
(32, 'Lê Văn Nam', 'levannam@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0332467649', 'Hà Nội', '2023-10-11 12:41:09', '0000-00-00 00:00:00', 'Hoạt Động'),
(33, 'Quách Phú Thành', 'test@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0845151117', 'Vĩnh Long', '2023-10-15 16:11:08', '0000-00-00 00:00:00', 'Hoạt Động'),
(34, 'Trương Vệ Kiện', 'truongvekien@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '9249495200', 'TP Hồ Chí Minh', '2023-10-16 19:55:43', '0000-00-00 00:00:00', 'Hoạt Động'),
(35, 'test', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '0332467641', 'TP Hồ Chí Minh', '2023-10-16 21:09:38', '0000-00-00 00:00:00', 'Hoạt Động'),
(36, 'Chu Chỉ Nhược', 'chuchinhuoc@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '033246712', 'Hà Tĩnh', '2023-10-17 10:57:59', '0000-00-00 00:00:00', 'Hoạt Động'),
(37, 'Nguyễn Thị Bền', 'nguyenthiben@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0332469991', 'Vũng Tàu', '2023-10-17 10:58:14', '0000-00-00 00:00:00', 'Hoạt Động'),
(38, 'Võ Thanh Liêm', 'vothanhliem@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '03324656996', 'Huế', '2023-10-17 10:58:29', '0000-00-00 00:00:00', 'Hoạt Động'),
(39, 'Ngu Thư Hân', 'nguthuhan@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0845151156', 'TP Hồ Chí Minh', '2023-10-21 09:34:58', '0000-00-00 00:00:00', 'Hoạt Động'),
(40, 'Triệu Lộ Tư', 'trieulotu@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0845151117', 'TP Hồ Chí Minh', '2023-10-21 09:39:58', '0000-00-00 00:00:00', 'Block');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_personnel` (`id_personnel`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  ADD CONSTRAINT `comment_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_product_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_account` (`id`);

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`id_personnel`) REFERENCES `admin_account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
