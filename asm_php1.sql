-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 22, 2024 lúc 02:17 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `n1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Toàn thân', '2024-02-22 19:30:53', '2024-02-22 19:30:53'),
(2, 'Răng miệng', '2024-02-22 11:50:15', '2024-02-22 19:31:06'),
(3, 'Tóc', '2024-02-22 19:31:19', '2024-02-22 19:31:19'),
(38, 'Mặt', '2024-02-22 19:31:30', '2024-02-22 19:31:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

 ---Đổ dữ liệu cho bảng orders-
 (1, 'Nguyễn Văn An', '0912345678', 'nguyenvanan@gmail.com', '123 Đường Lê Lợi, Quận 1, TP.HCM', 'Giao hàng giờ hành chính', '2025-05-01 09:15:22', 0),
(2, 'Trần Thị Bình', '0912345679', 'tranthibinh@gmail.com', '456 Đường Nguyễn Huệ, Quận 1, TP.HCM', 'Gọi trước khi giao', '2025-05-01 10:30:45', 0),
(3, 'Lê Văn Cường', '0912345680', 'levancuong@gmail.com', '789 Đường Hai Bà Trưng, Quận 3, TP.HCM', NULL, '2025-05-01 11:45:10', 0),
(4, 'Phạm Thị Dung', '0912345681', 'phamthidung@gmail.com', '321 Đường Cách Mạng Tháng 8, Quận 10, TP.HCM', 'Để ở cổng', '2025-05-01 14:20:33', 0),
(5, 'Hoàng Văn Em', '0912345682', 'hoangvanem@gmail.com', '654 Đường Lý Thường Kiệt, Quận Tân Bình, TP.HCM', 'Giao buổi chiều', '2025-05-02 08:10:15', 0),
(6, 'Vũ Thị Phương', '0912345683', 'vuthiphuong@gmail.com', '987 Đường 3/2, Quận 10, TP.HCM', NULL, '2025-05-02 09:25:40', 0),
(7, 'Đặng Văn Giang', '0912345684', 'dangvangiang@gmail.com', '159 Đường Lê Văn Sỹ, Quận Phú Nhuận, TP.HCM', 'Đóng gói cẩn thận', '2025-05-02 10:40:05', 0),
(8, 'Bùi Thị Hương', '0912345685', 'buithihuong@gmail.com', '753 Đường Nguyễn Đình Chiểu, Quận 3, TP.HCM', 'Giao cuối tuần', '2025-05-02 13:55:30', 0),
(9, 'Đỗ Văn Ích', '0912345686', 'dovanich@gmail.com', '852 Đường Võ Văn Tần, Quận 3, TP.HCM', NULL, '2025-05-03 07:30:45', 0),
(10, 'Ngô Thị Kim', '0912345687', 'ngothikim@gmail.com', '456 Đường Trần Hưng Đạo, Quận 5, TP.HCM', 'Giao trước 17h', '2025-05-03 08:45:10', 0),
(11, 'Hồ Văn Long', '0912345688', 'hovanlong@gmail.com', '258 Đường Nguyễn Trãi, Quận 5, TP.HCM', NULL, '2025-05-03 10:00:35', 0),
(12, 'Lý Thị Mai', '0912345689', 'lythimai@gmail.com', '369 Đường Hùng Vương, Quận 5, TP.HCM', 'Để lại nhà bảo vệ', '2025-05-03 11:15:50', 0),
(13, 'Trương Văn Nam', '0912345690', 'truongvannam@gmail.com', '147 Đường Ngô Quyền, Quận 10, TP.HCM', NULL, '2025-05-03 14:30:15', 0),
(14, 'Đinh Thị Oanh', '0912345691', 'dinhthioanh@gmail.com', '258 Đường Lý Chính Thắng, Quận 3, TP.HCM', 'Gọi điện xác nhận', '2025-05-04 09:45:40', 0),
(15, 'Mai Văn Phúc', '0912345692', 'maivanphuc@gmail.com', '369 Đường Bà Hạt, Quận 10, TP.HCM', NULL, '2025-05-04 11:00:05', 0),
(16, 'Võ Thị Quỳnh', '0912345693', 'vothiquynh@gmail.com', '159 Đường Lê Hồng Phong, Quận 10, TP.HCM', 'Giao hàng nhanh', '2025-05-04 12:15:30', 0),
(17, 'Chu Văn Rạng', '0912345694', 'chuvanrang@gmail.com', '753 Đường Nguyễn Tri Phương, Quận 10, TP.HCM', NULL, '2025-05-04 13:30:55', 0),
(18, 'Phan Thị Sương', '0912345695', 'phanthisuong@gmail.com', '852 Đường Thành Thái, Quận 10, TP.HCM', 'Kiểm tra hàng trước khi nhận', '2025-05-04 14:45:20', 0),
(19, 'Trịnh Văn Tú', '0912345696', 'trinhvantu@gmail.com', '456 Đường Bắc Hải, Quận Tân Bình, TP.HCM', NULL, '2025-05-05 08:00:45', 0),
(20, 'Đoàn Thị Uyên', '0912345697', 'doanthiuyen@gmail.com', '789 Đường Hoàng Văn Thụ, Quận Tân Bình, TP.HCM', 'Giao trước 12h trưa', '2025-05-05 09:15:10', 0),
(21, 'Lương Văn Vinh', '0912345698', 'luongvanvinh@gmail.com', '123 Đường Phạm Văn Hai, Quận Tân Bình, TP.HCM', NULL, '2025-05-05 10:30:35', 0),
(22, 'Kiều Thị Xuân', '0912345699', 'kieuthixuan@gmail.com', '456 Đường Cộng Hòa, Quận Tân Bình, TP.HCM', 'Để ở thang máy', '2025-05-05 11:45:00', 0),
(23, 'Tạ Văn Yên', '0912345700', 'tavanyen@gmail.com', '789 Đường Trường Chinh, Quận Tân Bình, TP.HCM', NULL, '2025-05-05 13:00:25', 0),
(24, 'Hà Thị Ánh', '0912345701', 'hathianh@gmail.com', '321 Đường Lê Văn Duyệt, Quận Bình Thạnh, TP.HCM', 'Giao buổi tối', '2025-05-06 08:15:50', 0),
(25, 'Lâm Văn Bảo', '0912345702', 'lamvanbao@gmail.com', '654 Đường Xô Viết Nghệ Tĩnh, Quận Bình Thạnh, TP.HCM', NULL, '2025-05-06 09:30:15', 0),
(26, 'Thái Thị Chi', '0912345703', 'thaithichi@gmail.com', '987 Đường Điện Biên Phủ, Quận Bình Thạnh, TP.HCM', 'Giao cuối tuần', '2025-05-06 10:45:40', 0),
(27, 'Sơn Văn Đạt', '0912345704', 'sonvandat@gmail.com', '159 Đường Nơ Trang Long, Quận Bình Thạnh, TP.HCM', NULL, '2025-05-06 12:00:05', 0),
(28, 'Lưu Thị Hạnh', '0912345705', 'luuthihanh@gmail.com', '753 Đường Bạch Đằng, Quận Bình Thạnh, TP.HCM', 'Gọi trước 30 phút', '2025-05-06 13:15:30', 0),
(29, 'Dương Văn Khoa', '0912345706', 'duongvankhoa@gmail.com', '852 Đường Ung Văn Khiêm, Quận Bình Thạnh, TP.HCM', NULL, '2025-05-06 14:30:55', 0),
(30, 'Quách Thị Lan', '0912345707', 'quachthilan@gmail.com', '456 Đường Phan Đăng Lưu, Quận Phú Nhuận, TP.HCM', 'Giao hàng tiết kiệm', '2025-05-07 08:45:20', 0),
(31, 'Bạch Văn Minh', '0912345708', 'bachvanminh@gmail.com', '789 Đường Hoàng Minh Giám, Quận Phú Nhuận, TP.HCM', NULL, '2025-05-07 10:00:45', 0),
(32, 'Vương Thị Nga', '0912345709', 'vuongthinga@gmail.com', '123 Đường Phan Xích Long, Quận Phú Nhuận, TP.HCM', 'Để ở cửa hàng tiện lợi', '2025-05-07 11:15:10', 0),
(33, 'Tô Văn Phong', '0912345710', 'tovanphong@gmail.com', '456 Đường Trần Kế Xương, Quận Phú Nhuận, TP.HCM', NULL, '2025-05-07 12:30:35', 0),
(34, 'Lã Thị Quyên', '0912345711', 'lathiquyen@gmail.com', '789 Đường Nguyễn Văn Trỗi, Quận Phú Nhuận, TP.HCM', 'Giao hàng nhanh', '2025-05-07 13:45:00', 0),
(35, 'Triệu Văn Sang', '0912345712', 'trieuvansang@gmail.com', '321 Đường Lê Quang Định, Quận Gò Vấp, TP.HCM', NULL, '2025-05-08 09:00:25', 0),
(36, 'Hứa Thị Thanh', '0912345713', 'huathithanh@gmail.com', '654 Đường Quang Trung, Quận Gò Vấp, TP.HCM', 'Giao trước 18h', '2025-05-08 10:15:50', 0),
(37, 'Phùng Văn Tuấn', '0912345714', 'phungvantuan@gmail.com', '987 Đường Lê Đức Thọ, Quận Gò Vấp, TP.HCM', NULL, '2025-05-08 11:30:15', 0),
(38, 'Hồng Thị Uyển', '0912345715', 'hongthiuyen@gmail.com', '159 Đường Nguyễn Oanh, Quận Gò Vấp, TP.HCM', 'Kiểm tra hàng trước khi nhận', '2025-05-08 12:45:40', 0),
(39, 'Đỗ Văn Vũ', '0912345716', 'dovanvu@gmail.com', '753 Đường Phạm Văn Đồng, Quận Thủ Đức, TP.HCM', NULL, '2025-05-08 14:00:05', 0),
(40, 'Lê Thị Xuân', '0912345717', 'lethixuan@gmail.com', '852 Đường Kha Vạn Cân, Quận Thủ Đức, TP.HCM', 'Giao hàng tiết kiệm', '2025-05-09 08:15:30', 0),
(41, 'Nguyễn Văn Anh', '0912345718', 'nguyenvananh@gmail.com', '456 Đường Võ Văn Ngân, Quận Thủ Đức, TP.HCM', NULL, '2025-05-09 09:30:55', 0),
(42, 'Trần Thị Bích', '0912345719', 'tranthibich@gmail.com', '789 Đường Linh Đông, Quận Thủ Đức, TP.HCM', 'Giao buổi sáng', '2025-05-09 10:45:20', 0),
(43, 'Phạm Văn Cảnh', '0912345720', 'phamvancanh@gmail.com', '123 Đường Lê Văn Việt, Quận 9, TP.HCM', NULL, '2025-05-09 12:00:45', 0),
(44, 'Hoàng Thị Duyên', '0912345721', 'hoangthiduyen@gmail.com', '456 Đường Đỗ Xuân Hợp, Quận 9, TP.HCM', 'Giao cuối tuần', '2025-05-09 13:15:10', 0),
(45, 'Vũ Văn Đức', '0912345722', 'vuvanduc@gmail.com', '789 Đường Nguyễn Xiển, Quận 9, TP.HCM', NULL, '2025-05-10 08:30:35', 0),
(46, 'Đặng Thị Hà', '0912345723', 'dangthiha@gmail.com', '321 Đường Lã Xuân Oai, Quận 9, TP.HCM', 'Gọi trước khi giao', '2025-05-10 09:45:00', 0),
(47, 'Bùi Văn Hiếu', '0912345724', 'buivanhieu@gmail.com', '654 Đường Tân Lập, Quận 9, TP.HCM', NULL, '2025-05-10 11:00:25', 0),
(48, 'Đinh Thị Khánh', '0912345725', 'dinhthikhanh@gmail.com', '987 Đường Tạ Quang Bửu, Quận 8, TP.HCM', 'Để ở cổng chính', '2025-05-10 12:15:50', 0),
(49, 'Lý Văn Linh', '0912345726', 'lyvanlinh@gmail.com', '159 Đường Dương Bá Trạc, Quận 8, TP.HCM', NULL, '2025-05-10 13:30:15', 0),
(50, 'Hồ Thị Mỹ', '0912345727', 'hothimy@gmail.com', '753 Đường Bùi Minh Trực, Quận 8, TP.HCM', 'Giao hàng nhanh', '2025-05-10 14:45:40', 0),
(151, 'abc', 'ada', 'vun334708@gmail.com', 'adsad', 'a', '2025-05-06 06:52:25', 0);
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `id_user`, `num`, `price`, `status`) VALUES
(1, 1, 5, 1, 2, 75000, 'Đang chuẩn bị'),
(2, 1, 17, 1, 1, 145000, 'Đang chuẩn bị'),
(3, 1, 26, 1, 1, 235000, 'Đang chuẩn bị'),
(4, 2, 2, 2, 1, 95000, 'Đã nhận hàng'),
(5, 2, 18, 2, 2, 250000, 'Đã nhận hàng'),
(6, 3, 10, 3, 1, 210000, 'Đã nhận hàng'),
(7, 3, 21, 3, 1, 164000, 'Đã nhận hàng'),
(8, 4, 4, 4, 1, 85000, 'Đã nhận hàng'),
(9, 4, 16, 4, 1, 160000, 'Đã nhận hàng'),
(10, 4, 28, 4, 1, 120000, 'Đã nhận hàng'),
(11, 5, 8, 5, 1, 116000, 'Đang giao'),
(12, 5, 19, 5, 2, 150000, 'Đang giao'),
(13, 6, 12, 6, 1, 300000, 'Đã nhận hàng'),
(14, 6, 30, 6, 1, 199000, 'Đã nhận hàng'),
(15, 7, 1, 7, 3, 65000, 'Đã nhận hàng'),
(16, 7, 13, 7, 2, 114000, 'Đã nhận hàng'),
(17, 8, 9, 8, 1, 99000, 'Đã nhận hàng'),
(18, 8, 20, 8, 1, 150000, 'Đã nhận hàng'),
(19, 8, 31, 8, 1, 176000, 'Đã nhận hàng'),
(21, 9, 14, 9, 2, 95000, 'Đang giao'),
(31, 14, 29, 14, 1, 199000, 'Đã nhận hàng'),
(43, 20, 43, 20, 1, 225000, 'Đã hủy'),
(44, 21, 44, 21, 1, 850000, 'Đang giao'),
(45, 21, 45, 21, 1, 55000, 'Đang giao'),
(46, 22, 46, 22, 1, 120000, 'Đã hủy'),
(47, 22, 47, 22, 1, 80000, 'Đã nhận hàng'),
(48, 23, 48, 23, 2, 45000, 'Đã nhận hàng'),
(49, 23, 49, 23, 1, 90000, 'Đã hủy'),
(50, 24, 50, 24, 1, 250000, 'Đã hủy'),
(51, 24, 51, 24, 1, 95000, 'Đã nhận hàng'),
(52, 25, 52, 25, 1, 110000, 'Đang giao'),
(53, 25, 53, 25, 1, 35000, 'Đang giao'),
(54, 26, 54, 26, 1, 125000, 'Đã nhận hàng'),
(55, 26, 55, 26, 1, 85000, 'Đã nhận hàng'),
(56, 27, 56, 27, 1, 150000, 'Đã nhận hàng'),
(57, 27, 57, 27, 1, 45000, 'Đã nhận hàng'),
(58, 28, 58, 28, 2, 50000, 'Đã nhận hàng'),
(59, 28, 59, 28, 1, 110000, 'Đã nhận hàng'),
(60, 29, 60, 29, 1, 90000, 'Đang giao'),
(61, 29, 61, 29, 1, 135000, 'Đang giao'),
(62, 30, 62, 30, 1, 95000, 'Đã nhận hàng'),
(63, 30, 63, 30, 1, 60000, 'Đã hủy'),
(64, 31, 64, 31, 1, 75000, 'Đã hủy'),
(65, 31, 65, 31, 1, 85000, 'Đã nhận hàng'),
(66, 32, 66, 32, 2, 55000, 'Đã nhận hàng'),
(67, 32, 67, 32, 1, 180000, 'Đã nhận hàng'),
(68, 33, 68, 33, 1, 95000, 'Đang giao'),
(69, 33, 69, 33, 1, 120000, 'Đang giao'),
(70, 34, 70, 34, 1, 95000, 'Đã nhận hàng'),
(71, 34, 71, 34, 1, 125000, 'Đã hủy'),
(72, 35, 72, 35, 1, 105000, 'Đã nhận hàng'),
(73, 35, 73, 35, 1, 110000, 'Đã nhận hàng'),
(74, 36, 74, 36, 1, 145000, 'Đã nhận hàng'),
(75, 36, 75, 36, 1, 155000, 'Đã nhận hàng'),
(76, 37, 76, 37, 2, 75000, 'Đang giao'),
(77, 37, 77, 37, 1, 120000, 'Đang giao'),
(78, 38, 78, 38, 1, 85000, 'Đã nhận hàng'),
(79, 38, 79, 38, 1, 115000, 'Đã nhận hàng'),
(80, 39, 80, 39, 1, 95000, 'Đã nhận hàng'),
(81, 39, 81, 39, 1, 135000, 'Đã nhận hàng'),
(82, 40, 82, 40, 1, 165000, 'Đã nhận hàng'),
(83, 40, 83, 40, 1, 80000, 'Đã nhận hàng'),
(84, 41, 84, 41, 1, 130000, 'Đang giao'),
(85, 41, 85, 41, 1, 95000, 'Đang giao'),
(86, 42, 86, 42, 1, 125000, 'Đã nhận hàng'),
(87, 42, 87, 42, 1, 110000, 'Đã nhận hàng'),
(88, 43, 88, 43, 2, 105000, 'Đã nhận hàng'),
(89, 43, 89, 43, 1, 145000, 'Đã nhận hàng'),
(90, 44, 90, 44, 1, 90000, 'Đã nhận hàng'),
(91, 44, 1, 44, 1, 65000, 'Đã nhận hàng'),
(92, 45, 2, 45, 1, 95000, 'Đang giao'),
(94, 46, 4, 46, 1, 85000, 'Đã nhận hàng'),
(95, 46, 5, 46, 1, 75000, 'Đã nhận hàng'),
(98, 48, 8, 48, 1, 116000, 'Đã nhận hàng'),
(99, 48, 9, 48, 1, 99000, 'Đã nhận hàng'),
(100, 49, 10, 49, 1, 210000, 'Đang giao'),
(102, 50, 12, 50, 1, 300000, 'Đã nhận hàng'),
(103, 50, 13, 50, 1, 114000, 'Đã nhận hàng');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `number` float NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `number`, `thumbnail`, `content`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 'Nước súc miệng Listerine Cool Mint hơi thở thơm mát chai 250ml', 65000, 20, 'uploads/rm1.jpg', 'Nước súc miệng Listerine giúp diệt sạch 99.9% vi khuẩn gây hôi miệng, đem lại hơi thở thơm mát.', 2, '2024-02-22 19:32:20', '2024-02-22 19:32:20'),
(2, 'Sữa tắm Romano Classic giúp sạch khuẩn chai 650g', 95000, 50, 'uploads/tt1.jpg', 'Đột phá mới! Sữa tắm làm sạch khuẩn Romano Classic được đặc chế dành riêng cho da nam giới với hệ công thức kép Duo plus kết hợp Piroctone Olamine - Sodium PCA.', 1, '2024-02-22 19:32:38', '2024-02-22 19:32:38'),
(4, 'Dầu gội Romano Attitude tóc khỏe, sạch gàu chai 650g', 85000, 30, 'uploads/dg1.jpg', 'Dầu gội Romano Attitude dưỡng da đầu và dưỡng tóc từ gốc giúp tóc khoẻ, mềm mại, suôn mượt, giảm tóc gãy rụng, hỗ trợ mọc tóc thay thế. Từ đó, giúp ngăn ngừa và giải quyết các vấn đề về tóc: rụng tóc, tóc khô và xơ, da đầu ngứa và gàu.', 3, '2024-02-22 19:32:54', '2024-02-22 19:32:54'),
(5, 'Xịt thơm miệng thảo dược Greelux khử mùi hôi miệng chai 12ml', 75000, 10, 'uploads/rm2.jpg', 'Xịt thơm miệng thảo dược Greelux là sản phẩm chăm sóc cá nhân được nghiên cứu bào chế từ các tinh chất thảo dược như Bạc hà, Trà xanh, Tràm, Bách lí hương, Hoa cúc, Lô hội, Cam thảo có tác dụng kháng khuẩn, khử mùi hôi. Tạo hơi thở thơm mát tức thì và duy trì tác dụng trong nhiều giờ, cho cảm giác sạch miệng, sảng khoái dài lâu. Đồng thời ngăn ngừa hiệu quả các bệnh răng miệng và chứng khô miệng (nguyên nhân gây hôi miệng)', 2, '2024-02-22 19:38:25', '2024-02-22 19:38:25'),
(8, 'Gel tắm, gội, rửa mặt Nerman Gentleman 3in1 hương nước hoa chai 350ml', 116000, 10, 'uploads/tt2.jpg', 'Gel tắm, gội, rửa mặt Nerman Gentleman 3 in 1 hương nước hoa có 3 chức năng bao gồm: dầu gội đầu, sữa tắm, rửa mặt của thương hiệu Nerman được thiết kế dành riêng cho nam giới, với phong cách lịch lãm, nam tính và mùi hương nước hoa cao cấp lưu hương 4 giờ.', 1, '2024-02-22 19:38:42', '2024-02-22 19:38:42'),
(9, 'Tắm gội Clear men 3 in 1 dưỡng toàn thân mát lạnh 618ml', 99000, 46, 'uploads/tt3.jpg', 'Là dòng sản phẩm cung cấp giải pháp tắm gội và dưỡng ẩm toàn diện cho nam giới, đến từ thương hiệu xà bông tắm gội 2 trong 1 Clear Men. Tắm gội Clear men 3 in 1 mát lạnh 618ml với công thức gel đột phá, dưỡng ẩm da đầu và mang đến hương thơm nam tính từ tinh thể bạc hà.', 1, '2024-02-22 19:39:16', '2024-02-22 19:39:16'),
(10, 'Sữa rửa mặt Men Bioré sạch nhờn, ngăn dầu tuýp 100g ', 210000, 40, 'uploads/srm1.jpg', 'Sữa rửa mặt nam trắng da cao cấp Men Bioré len lỏi vào sâu bên trong lỗ chân lông hấp thụ và loại bỏ bã nhờn dư thừa một cách hiệu quả, bảo vệ cho làn da của bạn một cách tối ưu trước các loại mụn trứng cá, mụn.', 38, '2024-02-22 19:46:00', '2024-02-22 19:46:00'),
(12, 'Sửa rửa mặt nam Cetaphil', 300000, 15, 'uploads/srm2.jpg', 'Sữa rửa mặt nam Cetaphil rất tốt trong việc ngừa và trị mụn trứng cá, mụn đầu đen, da dầu. Đặc biệt nó còn giúp da bạn sáng lên, thu nhỏ lỗ chân lông, dưỡng ẩm, làm da mịn màng và mềm mại theo thời gian.', 38, '2024-02-22 19:58:49', '2024-02-22 19:58:49'),
(13, 'Bàn chải đánh răng Oral B siêu mềm (vỉ 1 cây)', 114000, 20, 'uploads/rm5.jpg', 'Bàn chải đánh răng Oral B là giải pháp chăm sóc răng miệng toàn diện giúp vệ sinh răng, nướu và lưỡi. Lông bàn chải được làm từ sợi chỉ tơ nha khoa siêu mảnh có khả năng len lỏi vào từng kẽ răng, loại bỏ thức ăn thừa và mảng bám.', 2, '2024-02-22 19:59:03', '2024-02-22 19:59:03'),
(14, 'Tăm chỉ nha khoa Beauty Formulas Active Oral Care hộp 50 cây', 95000, 5, 'uploads/rm6.jpg', 'Chỉ nha khoa Beauty Formulas với thiết kế 2 trong 1 giúp làm sạch kẽ răng và lấy đi thức ăn thừa bám trên răng.', 2, '2024-02-22 20:15:33', '2024-02-22 20:15:33'),
(16, 'Dầu gội Romano classic giúp sạch gàu chai 650g', 160000, 30, 'uploads/dg2.jpg', 'Với sự kết hợp hoàn hảo giữa thành phần dưỡng tóc Dimethicone và Tab 2, Dầu gội Romano classic là một sản phẩm chăm sóc các nhân hoàn hảo trong việc giúp duy trì mái tóc khỏe đẹp, mềm mại và dễ chải. ', 3, '2024-02-22 20:05:39', '2024-02-22 20:05:39'),
(17, 'Kem đánh răng Sensodyne Fresh Mint giảm ê buốt tuýp 100g', 145000, 10, 'uploads/rm4.jpg', 'Kem đánh răng Sensodyne Fresh Mint được chứng minh lâm sàng giúp bảo vệ hằng ngày và giảm ê buốt răng hiệu quả. Dùng như kem đánh răng thông thường.', 2, '2024-02-22 20:10:04', '2024-02-22 20:10:04'),
(18, 'Lăn khử mùi Nivea Men Silver Protect ngăn vi khuẩn gây mùi chai 50ml', 250000, 10, 'uploads/tt4.jpg', 'Lăn khử mùi Nivea Men Silver Protect có công thức chứa phân tử bạc giúp giảm 96% vi khuẩn gây mùi giúp giảm hình thành vi khuẩn gây mùi, đồng thời giúp giảm tiết mồ hôi và ngăn mùi hiệu quả suốt 48h.', 1, '2024-02-22 20:09:39', '2024-02-22 20:09:39'),
(19, 'Lăn khử mùi Nivea Invisible giảm vệt ố vàng trên áo chai 50ml', 150000, 46, 'uploads/tt5.jpg', 'Lăn khử mùi NIVEA Invisible For Black And White dễ dàng khử đi mùi hôi khó chịu dưới cánh tay, ngăn tiết mồ hôi hiệu quả và mang đến hương thơm dễ chịu, cho bạn cảm giác khô thoáng suốt 48 giờ. Sử dụng sản phẩm thường xuyên sẽ giúp vùng da dưới cánh tay trắng sáng mịn màng và không còn sần sùi nữa.', 1, '2024-02-22 20:09:21', '2024-02-22 20:09:21'),
(20, 'Xịt Zuchi Family khử mùi hôi chân và giày chai 50ml', 150000, 44, 'uploads/tt6.jpg', 'Thành phần chủ yếu trong sản phẩm xịt khử mùi Zuchi Family đều là những hoạt chất tự nhiên an toàn, không hại da có thể dùng thường xuyên.', 1, '2024-02-22 20:08:10', '2024-02-22 20:08:10'),
(21, 'Sữa rửa mặt Nivea Men Detox Mud giúp sáng da, mờ thâm mụn tuýp 100g', 164000, 15, 'uploads/srm3.jpg', 'Sữa rửa mặt Nivea Men Detox Mud không chỉ đơn giản là một sản phẩm tẩy trang và làm sạch da thông thường mà còn có tác dụng dưỡng da rất tốt.', 38, '2024-02-22 20:04:34', '2024-02-22 20:04:34'),
(26, 'Kem đánh răng Sensodyne Gentle Whitening trắng răng tuýp 100g', 235000, 100, 'uploads/rm3.jpg', 'Kem đánh răng Sensodyne Gentle Whitening được chứng minh lâm sàng giảm ê buốt răng và bảo vệ hằng ngày cho răng nhạy cảm. Thiết kế với công thức giúp bảo vệ răng nhạy cảm suốt 24/7, loại bỏ hiệu quả những vết ố do mảng bám thức ăn trên răng và phục hồi độ trắng tự nhiên cho răng. Vị bạc hà mang lại cảm giác thơm tho, sạch sẽ.', 2, '2024-02-22 20:04:20', '2024-02-22 20:04:20'),
(28, 'Dầu gội dược liệu Thái Dương', 120000, 90, 'uploads/dg3.jpg', 'Dầu gội dược liệu Thái Dương 3 hương hoa 200ml chăm sóc toàn diện mái tóc bằng các tinh chất thảo dược: Cỏ mần trầu, Hương nhu, Cỏ ngũ sắc, Dâu tằm, Núc nác, Bồ kết,... đã được ca tụng hàng ngàn đời nay, nuôi dưỡng tóc từ gốc đến ngọn-bảo vệ tóc khỏi tác nhân có hại bên ngoài.', 3, '2024-02-22 20:03:01', '2024-02-22 20:03:01'),
(29, 'Dầu gội bưởi Milaganics', 190000, 20, 'uploads/dg4.jpg', 'Dầu gội Milaganics được bổ sung thêm các thành phần khác từ thiên nhiên như củ Cải Đường, dầu Mù U, chiết xuất cây Phỉ… giúp tóc óng mượt bền lâu và dịu nhẹ phù hợp với mọi loại da đầu.', 3, '2024-02-22 20:02:02', '2024-02-22 20:02:02'),
(30, 'Gel rửa mặt Nerman 60s Fresh Curcumin ngừa mụn, làm sạch da mặt cho nam tuýp 100ml', 199000, 100, 'uploads/srm4.jpg', 'Gel rửa mặt Nerman 60s Fresh Curcumin rất tốt cho các chàng trai đã và đang bị mụn, nó sẽ giúp những mụn thâm, mụn đầu trắng, đầu đen trên mặt bạn mau chín hơn hoặc biến mất', 38, '2024-02-22 20:01:49', '2024-02-22 20:01:49'),
(31, 'Sữa rửa mặt Nivea Men Facial Foam giúp ngăn ngừa mụn tối ưu tuýp 100g', 176000, 90, 'uploads/srm5.jpg', 'Nhanh chóng diệt mụn đầu đen & se khít lỗ chân lông với sản phẩm Sữa rửa mặt Nivea Men Facial Foam.', 38, '2024-02-22 20:01:36', '2024-02-22 20:01:36'),
(43, 'Tắm gội Clear men 3 in 1 dưỡng toàn thân mát lạnh 618ml', 225000, 46, 'uploads/tt3.jpg', 'Là dòng sản phẩm cung cấp giải pháp tắm gội và dưỡng ẩm toàn diện cho nam giới, đến từ thương hiệu xà bông tắm gội 2 trong 1 Clear Men. Tắm gội Clear men 3 in 1 mát lạnh 618ml với công thức gel đột phá, dưỡng ẩm da đầu và mang đến hương thơm nam tính từ tinh thể bạc hà', 1, '2024-02-22 19:38:59', '2024-02-22 19:38:59'),
(44, 'Bàn chải điện Oral-B Pro 1000', 850000, 25, 'uploads/rm7.jpg', 'Bàn chải điện Oral-B Pro 1000 với công nghệ làm sạch 3D, loại bỏ mảng bám hiệu quả hơn 100% so với bàn chải thường.', 2, '2024-02-23 09:00:00', '2024-02-23 09:00:00'),
(45, 'Nước súc miệng Colgate Plax', 55000, 40, 'uploads/rm8.jpg', 'Nước súc miệng Colgate Plax giúp loại bỏ vi khuẩn, mang lại hơi thở thơm mát suốt 12 giờ.', 2, '2024-02-23 09:05:00', '2024-02-23 09:05:00'),
(46, 'Sữa tắm Dove Men+Care', 120000, 35, 'uploads/tt7.jpg', 'Sữa tắm Dove Men+Care với công thức MicroMoisture giúp dưỡng ẩm sâu cho da nam giới.', 1, '2024-02-23 09:10:00', '2024-02-23 09:10:00'),
(47, 'Dầu gội Head & Shoulders bạc hà', 80000, 50, 'uploads/dg5.jpg', 'Dầu gội Head & Shoulders bạc hà giúp loại bỏ gàu hiệu quả, mang lại cảm giác the mát.', 3, '2024-02-23 09:15:00', '2024-02-23 09:15:00'),
(48, 'Kem đánh răng P/S than hoạt tính', 45000, 60, 'uploads/rm9.jpg', 'Kem đánh răng P/S than hoạt tính giúp làm trắng răng hiệu quả, loại bỏ mảng bám.', 2, '2024-02-23 09:20:00', '2024-02-23 09:20:00'),
(49, 'Lăn khử mùi Rexona Men Ice Cool', 90000, 30, 'uploads/tt8.jpg', 'Lăn khử mùi Rexona Men Ice Cool giúp kiểm soát mồ hôi 72h, hương thơm nam tính.', 1, '2024-02-23 09:25:00', '2024-02-23 09:25:00'),
(50, 'Sữa rửa mặt La Roche-Posay', 250000, 20, 'uploads/srm6.jpg', 'Sữa rửa mặt La Roche-Posay dành cho da nhạy cảm, làm sạch dịu nhẹ không gây kích ứng.', 38, '2024-02-23 09:30:00', '2024-02-23 09:30:00'),
(51, 'Dầu gội Pantene Pro-V', 95000, 45, 'uploads/dg6.jpg', 'Dầu gội Pantene Pro-V giúp phục hồi tóc hư tổn, mang lại mái tóc óng mượt.', 3, '2024-02-23 09:35:00', '2024-02-23 09:35:00'),
(52, 'Nước hoa hồng Simple', 110000, 25, 'uploads/srm7.jpg', 'Nước hoa hồng Simple không cồn, giúp làm sạch sâu và cân bằng độ ẩm cho da.', 38, '2024-02-23 09:40:00', '2024-02-23 09:40:00'),
(53, 'Xà bông Lifebuoy', 35000, 70, 'uploads/tt9.jpg', 'Xà bông Lifebuoy diệt khuẩn hiệu quả, bảo vệ da khỏi vi khuẩn gây hại.', 1, '2024-02-23 09:45:00', '2024-02-23 09:45:00'),
(54, 'Kem cạo râu Gillette Series', 125000, 30, 'uploads/rm10.jpg', 'Kem cạo râu Gillette Series giúp cạo râu êm ái, giảm kích ứng da.', 2, '2024-02-23 09:50:00', '2024-02-23 09:50:00'),
(55, 'Dầu xả Romano Classic', 85000, 40, 'uploads/dg7.jpg', 'Dầu xả Romano Classic giúp tóc mềm mượt, dễ chải và bóng khỏe.', 3, '2024-02-23 09:55:00', '2024-02-23 09:55:00'),
(56, 'Tẩy tế bào chết St. Ives', 150000, 25, 'uploads/srm8.jpg', 'Tẩy tế bào chết St. Ives với chiết xuất từ bưởi, giúp da sáng mịn.', 38, '2024-02-23 10:00:00', '2024-02-23 10:00:00'),
(57, 'Nước rửa tay Lifebuoy', 45000, 60, 'uploads/tt10.jpg', 'Nước rửa tay Lifebuoy diệt 99.9% vi khuẩn, bảo vệ đôi tay sạch khuẩn.', 1, '2024-02-23 10:05:00', '2024-02-23 10:05:00'),
(58, 'Kem đánh răng CloseUp', 50000, 55, 'uploads/rm11.jpg', 'Kem đánh răng CloseUp giúp răng trắng sáng và hơi thở thơm mát.', 2, '2024-02-23 10:10:00', '2024-02-23 10:10:00'),
(59, 'Sữa tắm Romano Active', 110000, 35, 'uploads/tt11.jpg', 'Sữa tắm Romano Active với hương thơm nam tính, giúp cơ thể sảng khoái.', 1, '2024-02-23 10:15:00', '2024-02-23 10:15:00'),
(60, 'Dầu gội Clear Men', 90000, 40, 'uploads/dg8.jpg', 'Dầu gội Clear Men giúp loại bỏ gàu hiệu quả, phục hồi tóc hư tổn.', 3, '2024-02-23 10:20:00', '2024-02-23 10:20:00'),
(61, 'Sữa rửa mặt Garnier Men', 135000, 30, 'uploads/srm9.jpg', 'Sữa rửa mặt Garnier Men giúp làm sạch sâu, kiểm soát dầu nhờn.', 38, '2024-02-23 10:25:00', '2024-02-23 10:25:00'),
(62, 'Lăn khử mùi Axe Dark Temptation', 95000, 25, 'uploads/tt12.jpg', 'Lăn khử mùi Axe Dark Temptation với hương chocolate quyến rũ.', 1, '2024-02-23 10:30:00', '2024-02-23 10:30:00'),
(63, 'Nước súc miệng Thái Dương', 60000, 40, 'uploads/rm12.jpg', 'Nước súc miệng Thái Dương với chiết xuất thảo dược, tốt cho nướu.', 2, '2024-02-23 10:35:00', '2024-02-23 10:35:00'),
(64, 'Dầu gội Sunsilk mềm mượt', 75000, 45, 'uploads/dg9.jpg', 'Dầu gội Sunsilk giúp tóc mềm mượt, óng ả suốt cả ngày.', 3, '2024-02-23 10:40:00', '2024-02-23 10:40:00'),
(65, 'Sữa tắm Lux hương nước hoa', 85000, 50, 'uploads/tt13.jpg', 'Sữa tắm Lux với hương nước hoa cao cấp, giữ hương thơm lâu.', 1, '2024-02-23 10:45:00', '2024-02-23 10:45:00'),
(66, 'Kem đánh răng Aquafresh', 55000, 60, 'uploads/rm13.jpg', 'Kem đánh răng Aquafresh 3 tác dụng: trắng răng, thơm miệng, kháng khuẩn.', 2, '2024-02-23 10:50:00', '2024-02-23 10:50:00'),
(67, 'Sữa rửa mặt Neutrogena', 180000, 25, 'uploads/srm10.jpg', 'Sữa rửa mặt Neutrogena dành cho da dầu, giúp se khít lỗ chân lông.', 38, '2024-02-23 10:55:00', '2024-02-23 10:55:00'),
(68, 'Dầu xả Romano Attitude', 95000, 35, 'uploads/dg10.jpg', 'Dầu xả Romano Attitude giúp tóc chắc khỏe, giảm gãy rụng.', 3, '2024-02-23 11:00:00', '2024-02-23 11:00:00'),
(69, 'Lăn khử mùi Romano Sport', 120000, 30, 'uploads/tt14.jpg', 'Lăn khử mùi Romano Sport kiểm soát mồ hôi 48h, hương thơm nam tính.', 1, '2024-02-23 11:05:00', '2024-02-23 11:05:00'),
(70, 'Nước hoa hồng Garnier', 95000, 25, 'uploads/srm11.jpg', 'Nước hoa hồng Garnier giúp làm sạch sâu và thu nhỏ lỗ chân lông.', 38, '2024-02-23 11:10:00', '2024-02-23 11:10:00'),
(71, 'Kem đánh răng Sensodyne Repair', 125000, 40, 'uploads/rm14.jpg', 'Kem đánh răng Sensodyne Repair giúp phục hồi men răng, giảm ê buốt.', 2, '2024-02-23 11:15:00', '2024-02-23 11:15:00'),
(72, 'Sữa tắm Romano Fresh', 105000, 35, 'uploads/tt15.jpg', 'Sữa tắm Romano Fresh với hương chanh tươi mát, giúp tỉnh táo.', 1, '2024-02-23 11:20:00', '2024-02-23 11:20:00'),
(73, 'Dầu gội Romano Deep Clean', 110000, 30, 'uploads/dg11.jpg', 'Dầu gội Romano Deep Clean làm sạch sâu da đầu, giảm ngứa.', 3, '2024-02-23 11:25:00', '2024-02-23 11:25:00'),
(74, 'Xịt khử mùi Romano Body Spray', 145000, 25, 'uploads/tt16.jpg', 'Xịt khử mùi Romano Body Spray hương gỗ ấm áp, lưu hương lâu.', 1, '2024-02-23 11:30:00', '2024-02-23 11:30:00'),
(75, 'Sữa rửa mặt Romano Acne Control', 155000, 30, 'uploads/srm12.jpg', 'Sữa rửa mặt Romano Acne Control giúp kiểm soát mụn, giảm dầu nhờn.', 38, '2024-02-23 11:35:00', '2024-02-23 11:35:00'),
(76, 'Nước súc miệng Romano Fresh', 75000, 40, 'uploads/rm15.jpg', 'Nước súc miệng Romano Fresh giúp hơi thở thơm mát, diệt khuẩn.', 2, '2024-02-23 11:40:00', '2024-02-23 11:40:00'),
(77, 'Dầu gội Romano Anti-Dandruff', 120000, 35, 'uploads/dg12.jpg', 'Dầu gội Romano Anti-Dandruff chống gàu hiệu quả, giảm ngứa da đầu.', 3, '2024-02-23 11:45:00', '2024-02-23 11:45:00'),
(78, 'Kem đánh răng Romano White', 85000, 50, 'uploads/rm16.jpg', 'Kem đánh răng Romano White giúp làm trắng răng, bảo vệ nướu.', 2, '2024-02-23 11:50:00', '2024-02-23 11:50:00'),
(79, 'Sữa tắm Romano Energy', 115000, 30, 'uploads/tt17.jpg', 'Sữa tắm Romano Energy với hương bạc hà tươi mát, tăng cường năng lượng.', 1, '2024-02-23 11:55:00', '2024-02-23 11:55:00'),
(80, 'Dầu xả Romano Smooth', 95000, 40, 'uploads/dg13.jpg', 'Dầu xả Romano Smooth giúp tóc mềm mượt, dễ chải, không bết dính.', 3, '2024-02-23 12:00:00', '2024-02-23 12:00:00'),
(81, 'Lăn khử mùi Romano Extreme', 135000, 25, 'uploads/tt18.jpg', 'Lăn khử mùi Romano Extreme kiểm soát mồ hôi 72h, hương thơm mạnh mẽ.', 1, '2024-02-23 12:05:00', '2024-02-23 12:05:00'),
(82, 'Sữa rửa mặt Romano Brightening', 165000, 30, 'uploads/srm13.jpg', 'Sữa rửa mặt Romano Brightening giúp da sáng mịn, giảm thâm nám.', 38, '2024-02-23 12:10:00', '2024-02-23 12:10:00'),
(83, 'Nước súc miệng Romano Herbal', 80000, 45, 'uploads/rm17.jpg', 'Nước súc miệng Romano Herbal với chiết xuất thảo dược, tốt cho nướu.', 2, '2024-02-23 12:15:00', '2024-02-23 12:15:00'),
(84, 'Dầu gội Romano Volume Boost', 130000, 35, 'uploads/dg14.jpg', 'Dầu gội Romano Volume Boost giúp tóc bồng bềnh, tăng độ phồng.', 3, '2024-02-23 12:20:00', '2024-02-23 12:20:00'),
(85, 'Kem đánh răng Romano Sensitive', 95000, 50, 'uploads/rm18.jpg', 'Kem đánh răng Romano Sensitive dành cho răng nhạy cảm, giảm ê buốt.', 2, '2024-02-23 12:25:00', '2024-02-23 12:25:00'),
(86, 'Sữa tắm Romano Relax', 125000, 30, 'uploads/tt19.jpg', 'Sữa tắm Romano Relax với hương oải hương giúp thư giãn tinh thần.', 1, '2024-02-23 12:30:00', '2024-02-23 12:30:00'),
(87, 'Dầu xả Romano Repair', 110000, 40, 'uploads/dg15.jpg', 'Dầu xả Romano Repair phục hồi tóc hư tổn, giảm chẻ ngọn.', 3, '2024-02-23 12:35:00', '2024-02-23 12:35:00'),
(88, 'Lăn khử mùi Romano Fresh', 105000, 35, 'uploads/tt20.jpg', 'Lăn khử mùi Romano Fresh hương chanh tươi mát, kiểm soát mồ hôi.', 1, '2024-02-23 12:40:00', '2024-02-23 12:40:00'),
(89, 'Sữa rửa mặt Romano Deep Clean', 145000, 30, 'uploads/srm14.jpg', 'Sữa rửa mặt Romano Deep Clean làm sạch sâu lỗ chân lông, giảm mụn.', 38, '2024-02-23 12:45:00', '2024-02-23 12:45:00'),
(90, 'Nước súc miệng Romano Whitening', 90000, 40, 'uploads/rm19.jpg', 'Nước súc miệng Romano Whitening giúp răng trắng sáng, hơi thở thơm.', 2, '2024-02-23 12:50:00', '2024-02-23 12:50:00');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `hoten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `hoten`, `username`, `password`, `phone`, `email`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvana', 'e10adc3949ba59abbe56e057f20f883e', '0912345678', 'nguyenvana@gmail.com'),
(2, 'Trần Thị B', 'tranthib', 'e10adc3949ba59abbe56e057f20f883e', '0912345679', 'tranthib@gmail.com'),
(3, 'Lê Văn C', 'levanc', 'e10adc3949ba59abbe56e057f20f883e', '0912345680', 'levanc@gmail.com'),
(4, 'Phạm Thị D', 'phamthid', 'e10adc3949ba59abbe56e057f20f883e', '0912345681', 'phamthid@gmail.com'),
(5, 'Hoàng Văn E', 'hoangvane', 'e10adc3949ba59abbe56e057f20f883e', '0912345682', 'hoangvane@gmail.com'),
(6, 'Vũ Thị F', 'vuthif', 'e10adc3949ba59abbe56e057f20f883e', '0912345683', 'vuthif@gmail.com'),
(7, 'Đặng Văn G', 'dangvang', 'e10adc3949ba59abbe56e057f20f883e', '0912345684', 'dangvang@gmail.com'),
(8, 'Bùi Thị H', 'buithih', 'e10adc3949ba59abbe56e057f20f883e', '0912345685', 'buithih@gmail.com'),
(9, 'Đỗ Văn I', 'dovani', 'e10adc3949ba59abbe56e057f20f883e', '0912345686', 'dovani@gmail.com'),
(10, 'Ngô Thị K', 'ngothik', 'e10adc3949ba59abbe56e057f20f883e', '0912345687', 'ngothik@gmail.com'),
(11, 'Hồ Văn L', 'hovanl', 'e10adc3949ba59abbe56e057f20f883e', '0912345688', 'hovanl@gmail.com'),
(12, 'Lý Thị M', 'lythim', 'e10adc3949ba59abbe56e057f20f883e', '0912345689', 'lythim@gmail.com'),
(13, 'Trương Văn N', 'truongvann', 'e10adc3949ba59abbe56e057f20f883e', '0912345690', 'truongvann@gmail.com'),
(14, 'Đinh Thị O', 'dinhthio', 'e10adc3949ba59abbe56e057f20f883e', '0912345691', 'dinhthio@gmail.com'),
(15, 'Mai Văn P', 'maivanp', 'e10adc3949ba59abbe56e057f20f883e', '0912345692', 'maivanp@gmail.com'),
(16, 'Võ Thị Q', 'vothiq', 'e10adc3949ba59abbe56e057f20f883e', '0912345693', 'vothiq@gmail.com'),
(17, 'Chu Văn R', 'chuvanr', 'e10adc3949ba59abbe56e057f20f883e', '0912345694', 'chuvanr@gmail.com'),
(18, 'Phan Thị S', 'phanthis', 'e10adc3949ba59abbe56e057f20f883e', '0912345695', 'phanthis@gmail.com'),
(19, 'Trịnh Văn T', 'trinhvant', 'e10adc3949ba59abbe56e057f20f883e', '0912345696', 'trinhvant@gmail.com'),
(20, 'Đoàn Thị U', 'doanthiu', 'e10adc3949ba59abbe56e057f20f883e', '0912345697', 'doanthiu@gmail.com'),
(21, 'Lương Văn V', 'luongvanv', 'e10adc3949ba59abbe56e057f20f883e', '0912345698', 'luongvanv@gmail.com'),
(22, 'Kiều Thị X', 'kieuthix', 'e10adc3949ba59abbe56e057f20f883e', '0912345699', 'kieuthix@gmail.com'),
(23, 'Tạ Văn Y', 'tavany', 'e10adc3949ba59abbe56e057f20f883e', '0912345700', 'tavany@gmail.com'),
(24, 'Hà Thị Z', 'hathiz', 'e10adc3949ba59abbe56e057f20f883e', '0912345701', 'hathiz@gmail.com'),
(25, 'Lâm Văn AA', 'lamvanaa', 'e10adc3949ba59abbe56e057f20f883e', '0912345702', 'lamvanaa@gmail.com'),
(26, 'Thái Thị BB', 'thaithibb', 'e10adc3949ba59abbe56e057f20f883e', '0912345703', 'thaithibb@gmail.com'),
(27, 'Sơn Văn CC', 'sonvancc', 'e10adc3949ba59abbe56e057f20f883e', '0912345704', 'sonvancc@gmail.com'),
(28, 'Lưu Thị DD', 'luuthidd', 'e10adc3949ba59abbe56e057f20f883e', '0912345705', 'luuthidd@gmail.com'),
(29, 'Dương Văn EE', 'duongvanee', 'e10adc3949ba59abbe56e057f20f883e', '0912345706', 'duongvanee@gmail.com'),
(30, 'Quách Thị FF', 'quachthiff', 'e10adc3949ba59abbe56e057f20f883e', '0912345707', 'quachthiff@gmail.com'),
(31, 'Bạch Văn GG', 'bachvangg', 'e10adc3949ba59abbe56e057f20f883e', '0912345708', 'bachvangg@gmail.com'),
(32, 'Vương Thị HH', 'vuongthihh', 'e10adc3949ba59abbe56e057f20f883e', '0912345709', 'vuongthihh@gmail.com'),
(33, 'Tô Văn II', 'tovanii', 'e10adc3949ba59abbe56e057f20f883e', '0912345710', 'tovanii@gmail.com'),
(34, 'Lã Thị JJ', 'lathijj', 'e10adc3949ba59abbe56e057f20f883e', '0912345711', 'lathijj@gmail.com'),
(35, 'Triệu Văn KK', 'trieuvankk', 'e10adc3949ba59abbe56e057f20f883e', '0912345712', 'trieuvankk@gmail.com'),
(36, 'Hứa Thị LL', 'huathill', 'e10adc3949ba59abbe56e057f20f883e', '0912345713', 'huathill@gmail.com'),
(37, 'Phùng Văn MM', 'phungvanmm', 'e10adc3949ba59abbe56e057f20f883e', '0912345714', 'phungvanmm@gmail.com'),
(38, 'Hồng Thị NN', 'hongthinn', 'e10adc3949ba59abbe56e057f20f883e', '0912345715', 'hongthinn@gmail.com'),
(39, 'Đỗ Văn OO', 'dovanoo', 'e10adc3949ba59abbe56e057f20f883e', '0912345716', 'dovanoo@gmail.com'),
(40, 'Lê Thị PP', 'lethipp', 'e10adc3949ba59abbe56e057f20f883e', '0912345717', 'lethipp@gmail.com'),
(41, 'Nguyễn Văn QQ', 'nguyenvanqq', 'e10adc3949ba59abbe56e057f20f883e', '0912345718', 'nguyenvanqq@gmail.com'),
(42, 'Trần Thị RR', 'tranthirr', 'e10adc3949ba59abbe56e057f20f883e', '0912345719', 'tranthirr@gmail.com'),
(43, 'Phạm Văn SS', 'phamvanss', 'e10adc3949ba59abbe56e057f20f883e', '0912345720', 'phamvanss@gmail.com'),
(44, 'Hoàng Thị TT', 'hoangthitt', 'e10adc3949ba59abbe56e057f20f883e', '0912345721', 'hoangthitt@gmail.com'),
(45, 'Vũ Văn UU', 'vuvanuu', 'e10adc3949ba59abbe56e057f20f883e', '0912345722', 'vuvanuu@gmail.com'),
(46, 'Đặng Thị VV', 'dangthivv', 'e10adc3949ba59abbe56e057f20f883e', '0912345723', 'dangthivv@gmail.com'),
(47, 'Bùi Văn WW', 'buivanww', 'e10adc3949ba59abbe56e057f20f883e', '0912345724', 'buivanww@gmail.com'),
(48, 'Đinh Thị XX', 'dinhthixx', 'e10adc3949ba59abbe56e057f20f883e', '0912345725', 'dinhthixx@gmail.com'),
(49, 'Lý Văn YY', 'lyvanyy', 'e10adc3949ba59abbe56e057f20f883e', '0912345726', 'lyvanyy@gmail.com'),
(50, 'Hồ Thị ZZ', 'hothizz', 'e10adc3949ba59abbe56e057f20f883e', '0912345727', 'hothizz@gmail.com'),
(51, 'Mai Văn AAA', 'maivanaaa', 'e10adc3949ba59abbe56e057f20f883e', '0912345728', 'maivanaaa@gmail.com'),
(52, 'Chu Thị BBB', 'chuthibb', 'e10adc3949ba59abbe56e057f20f883e', '0912345729', 'chuthibb@gmail.com'),
(53, 'Trần Văn CCC', 'tranvanccc', 'e10adc3949ba59abbe56e057f20f883e', '0912345730', 'tranvanccc@gmail.com'),
(54, 'Phan Thị DDD', 'phanthiddd', 'e10adc3949ba59abbe56e057f20f883e', '0912345731', 'phanthiddd@gmail.com'),
(55, 'Võ Văn EEE', 'vovaneee', 'e10adc3949ba59abbe56e057f20f883e', '0912345732', 'vovaneee@gmail.com'),
(56, 'Đoàn Thị FFF', 'doanthifff', 'e10adc3949ba59abbe56e057f20f883e', '0912345733', 'doanthifff@gmail.com'),
(57, 'Lê Văn GGG', 'levanggg', 'e10adc3949ba59abbe56e057f20f883e', '0912345734', 'levanggg@gmail.com'),
(58, 'Nguyễn Thị HHH', 'nguyenthihhh', 'e10adc3949ba59abbe56e057f20f883e', '0912345735', 'nguyenthihhh@gmail.com'),
(59, 'Trịnh Văn III', 'trinhvaniii', 'e10adc3949ba59abbe56e057f20f883e', '0912345736', 'trinhvaniii@gmail.com'),
(60, 'Kiều Thị JJJ', 'kieuthijjj', 'e10adc3949ba59abbe56e057f20f883e', '0912345737', 'kieuthijjj@gmail.com'),
(61, 'Tạ Văn KKK', 'tavankkk', 'e10adc3949ba59abbe56e057f20f883e', '0912345738', 'tavankkk@gmail.com'),
(62, 'Hà Thị LLL', 'hathilll', 'e10adc3949ba59abbe56e057f20f883e', '0912345739', 'hathilll@gmail.com'),
(63, 'Lâm Văn MMM', 'lamvanmmm', 'e10adc3949ba59abbe56e057f20f883e', '0912345740', 'lamvanmmm@gmail.com'),
(64, 'Thái Thị NNN', 'thaithinnn', 'e10adc3949ba59abbe56e057f20f883e', '0912345741', 'thaithinnn@gmail.com'),
(65, 'Sơn Văn OOO', 'sonvanooo', 'e10adc3949ba59abbe56e057f20f883e', '0912345742', 'sonvanooo@gmail.com'),
(66, 'Lưu Thị PPP', 'luuthippp', 'e10adc3949ba59abbe56e057f20f883e', '0912345743', 'luuthippp@gmail.com'),
(67, 'Dương Văn QQQ', 'duongvanqqq', 'e10adc3949ba59abbe56e057f20f883e', '0912345744', 'duongvanqqq@gmail.com'),
(68, 'Quách Thị RRR', 'quachthirrr', 'e10adc3949ba59abbe56e057f20f883e', '0912345745', 'quachthirrr@gmail.com'),
(69, 'Bạch Văn SSS', 'bachvansss', 'e10adc3949ba59abbe56e057f20f883e', '0912345746', 'bachvansss@gmail.com'),
(70, 'Vương Thị TTT', 'vuongthittt', 'e10adc3949ba59abbe56e057f20f883e', '0912345747', 'vuongthittt@gmail.com'),
(71, 'Tô Văn UUU', 'tovanuuu', 'e10adc3949ba59abbe56e057f20f883e', '0912345748', 'tovanuuu@gmail.com'),
(72, 'Lã Thị VVV', 'lathivvv', 'e10adc3949ba59abbe56e057f20f883e', '0912345749', 'lathivvv@gmail.com'),
(73, 'Triệu Văn WWW', 'trievanwww', 'e10adc3949ba59abbe56e057f20f883e', '0912345750', 'trievanwww@gmail.com'),
(74, 'Hứa Thị XXX', 'huathixxx', 'e10adc3949ba59abbe56e057f20f883e', '0912345751', 'huathixxx@gmail.com'),
(75, 'Phùng Văn YYY', 'phungvanyyy', 'e10adc3949ba59abbe56e057f20f883e', '0912345752', 'phungvanyyy@gmail.com'),
(76, 'Hồng Thị ZZZ', 'hongthizzz', 'e10adc3949ba59abbe56e057f20f883e', '0912345753', 'hongthizzz@gmail.com'),
(77, 'Đỗ Văn AAAA', 'dovanaaaa', 'e10adc3949ba59abbe56e057f20f883e', '0912345754', 'dovanaaaa@gmail.com'),
(78, 'Lê Thị BBBB', 'lethibbbb', 'e10adc3949ba59abbe56e057f20f883e', '0912345755', 'lethibbbb@gmail.com'),
(79, 'Nguyễn Văn CCCC', 'nguyenvanc', 'e10adc3949ba59abbe56e057f20f883e', '0912345756', 'nguyenvanc@gmail.com'),
(80, 'Trần Thị DDDD', 'tranthid', 'e10adc3949ba59abbe56e057f20f883e', '0912345757', 'tranthid@gmail.com'),
(81, 'Phạm Văn EEEE', 'phamvane', 'e10adc3949ba59abbe56e057f20f883e', '0912345758', 'phamvane@gmail.com'),
(82, 'Hoàng Thị FFFF', 'hoangthif', 'e10adc3949ba59abbe56e057f20f883e', '0912345759', 'hoangthif@gmail.com'),
(83, 'Vũ Văn GGGG', 'vuvang', 'e10adc3949ba59abbe56e057f20f883e', '0912345760', 'vuvang@gmail.com'),
(84, 'Đặng Thị HHHH', 'dangthih', 'e10adc3949ba59abbe56e057f20f883e', '0912345761', 'dangthih@gmail.com'),
(85, 'Bùi Văn IIII', 'buivani', 'e10adc3949ba59abbe56e057f20f883e', '0912345762', 'buivani@gmail.com'),
(86, 'Đinh Thị JJJJ', 'dinhthij', 'e10adc3949ba59abbe56e057f20f883e', '0912345763', 'dinhthij@gmail.com'),
(87, 'Lý Văn KKKK', 'lyvank', 'e10adc3949ba59abbe56e057f20f883e', '0912345764', 'lyvank@gmail.com'),
(88, 'Hồ Thị LLLL', 'hothil', 'e10adc3949ba59abbe56e057f20f883e', '0912345765', 'hothil@gmail.com'),
(89, 'Mai Văn MMMM', 'maivanm', 'e10adc3949ba59abbe56e057f20f883e', '0912345766', 'maivanm@gmail.com'),
(90, 'Chu Thị NNNN', 'chuthin', 'e10adc3949ba59abbe56e057f20f883e', '0912345767', 'chuthin@gmail.com'),
(91, 'Trần Văn OOOO', 'tranvano', 'e10adc3949ba59abbe56e057f20f883e', '0912345768', 'tranvano@gmail.com'),
(92, 'Phan Thị PPPP', 'phanthip', 'e10adc3949ba59abbe56e057f20f883e', '0912345769', 'phanthip@gmail.com'),
(93, 'Võ Văn QQQQ', 'vovanq', 'e10adc3949ba59abbe56e057f20f883e', '0912345770', 'vovanq@gmail.com'),
(94, 'Đoàn Thị RRRR', 'doanthir', 'e10adc3949ba59abbe56e057f20f883e', '0912345771', 'doanthir@gmail.com'),
(95, 'Lê Văn SSSS', 'levans', 'e10adc3949ba59abbe56e057f20f883e', '0912345772', 'levans@gmail.com'),
(96, 'Nguyễn Thị TTTT', 'nguyenthit', 'e10adc3949ba59abbe56e057f20f883e', '0912345773', 'nguyenthit@gmail.com'),
(97, 'Trịnh Văn UUUU', 'trinhvanu', 'e10adc3949ba59abbe56e057f20f883e', '0912345774', 'trinhvanu@gmail.com'),
(98, 'Kiều Thị VVVV', 'kieuthiv', 'e10adc3949ba59abbe56e057f20f883e', '0912345775', 'kieuthiv@gmail.com'),
(99, 'Tạ Văn WWWW', 'tavanw', 'e10adc3949ba59abbe56e057f20f883e', '0912345776', 'tavanw@gmail.com'),
(100, 'Hà Thị XXXX', 'hathix', 'e10adc3949ba59abbe56e057f20f883e', '0912345777', 'hathix@gmail.com');
--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
