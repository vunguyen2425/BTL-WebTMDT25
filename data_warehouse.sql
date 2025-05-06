-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2025 lúc 08:03 PM
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
-- Cơ sở dữ liệu: `data_warehouse`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dim_category`
--

CREATE TABLE `dim_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dim_category`
--

INSERT INTO `dim_category` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Toàn thân', '2024-02-22 19:30:53', '2024-02-22 19:30:53'),
(2, 'Răng miệng', '2024-02-22 11:50:15', '2024-02-22 19:31:06'),
(3, 'Tóc', '2024-02-22 19:31:19', '2024-02-22 19:31:19'),
(38, 'Mặt', '2024-02-22 19:31:30', '2024-02-22 19:31:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dim_customer`
--

CREATE TABLE `dim_customer` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(28) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dim_customer`
--

INSERT INTO `dim_customer` (`user_id`, `full_name`, `username`, `phone`, `email`, `address`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvana', '0912345678', 'nguyenvana@gmail.com', '123 Đường Lê Lợi, Quận 1, TP.HCM'),
(2, 'Trần Thị B', 'tranthib', '0912345679', 'tranthib@gmail.com', '456 Đường Nguyễn Huệ, Quận 1, TP.HCM'),
(3, 'Lê Văn C', 'levanc', '0912345680', 'levanc@gmail.com', '789 Đường Hai Bà Trưng, Quận 3, TP.HCM'),
(4, 'Phạm Thị D', 'phamthid', '0912345681', 'phamthid@gmail.com', '321 Đường Cách Mạng Tháng 8, Quận 10, TP.HCM'),
(5, 'Hoàng Văn E', 'hoangvane', '0912345682', 'hoangvane@gmail.com', '654 Đường Lý Thường Kiệt, Quận Tân Bình, TP.HCM'),
(6, 'Vũ Thị F', 'vuthif', '0912345683', 'vuthif@gmail.com', '987 Đường 3/2, Quận 10, TP.HCM'),
(7, 'Đặng Văn G', 'dangvang', '0912345684', 'dangvang@gmail.com', '159 Đường Lê Văn Sỹ, Quận Phú Nhuận, TP.HCM'),
(8, 'Bùi Thị H', 'buithih', '0912345685', 'buithih@gmail.com', '753 Đường Nguyễn Đình Chiểu, Quận 3, TP.HCM'),
(9, 'Đỗ Văn I', 'dovani', '0912345686', 'dovani@gmail.com', '852 Đường Võ Văn Tần, Quận 3, TP.HCM'),
(10, 'Ngô Thị K', 'ngothik', '0912345687', 'ngothik@gmail.com', '456 Đường Trần Hưng Đạo, Quận 5, TP.HCM'),
(11, 'Hồ Văn L', 'hovanl', '0912345688', 'hovanl@gmail.com', '258 Đường Nguyễn Trãi, Quận 5, TP.HCM'),
(12, 'Lý Thị M', 'lythim', '0912345689', 'lythim@gmail.com', '369 Đường Hùng Vương, Quận 5, TP.HCM'),
(13, 'Trương Văn N', 'truongvann', '0912345690', 'truongvann@gmail.com', '147 Đường Ngô Quyền, Quận 10, TP.HCM'),
(14, 'Đinh Thị O', 'dinhthio', '0912345691', 'dinhthio@gmail.com', '258 Đường Lý Chính Thắng, Quận 3, TP.HCM'),
(15, 'Mai Văn P', 'maivanp', '0912345692', 'maivanp@gmail.com', '369 Đường Bà Hạt, Quận 10, TP.HCM'),
(16, 'Võ Thị Q', 'vothiq', '0912345693', 'vothiq@gmail.com', '159 Đường Lê Hồng Phong, Quận 10, TP.HCM'),
(17, 'Chu Văn R', 'chuvanr', '0912345694', 'chuvanr@gmail.com', '753 Đường Nguyễn Tri Phương, Quận 10, TP.HCM'),
(18, 'Phan Thị S', 'phanthis', '0912345695', 'phanthis@gmail.com', '852 Đường Thành Thái, Quận 10, TP.HCM'),
(19, 'Trịnh Văn T', 'trinhvant', '0912345696', 'trinhvant@gmail.com', '456 Đường Bắc Hải, Quận Tân Bình, TP.HCM'),
(20, 'Đoàn Thị U', 'doanthiu', '0912345697', 'doanthiu@gmail.com', '789 Đường Hoàng Văn Thụ, Quận Tân Bình, TP.HCM'),
(21, 'Lương Văn V', 'luongvanv', '0912345698', 'luongvanv@gmail.com', '123 Đường Phạm Văn Hai, Quận Tân Bình, TP.HCM'),
(22, 'Kiều Thị X', 'kieuthix', '0912345699', 'kieuthix@gmail.com', '456 Đường Cộng Hòa, Quận Tân Bình, TP.HCM'),
(23, 'Tạ Văn Y', 'tavany', '0912345700', 'tavany@gmail.com', '789 Đường Trường Chinh, Quận Tân Bình, TP.HCM'),
(24, 'Hà Thị Z', 'hathiz', '0912345701', 'hathiz@gmail.com', '321 Đường Lê Văn Duyệt, Quận Bình Thạnh, TP.HCM'),
(25, 'Lâm Văn AA', 'lamvanaa', '0912345702', 'lamvanaa@gmail.com', '654 Đường Xô Viết Nghệ Tĩnh, Quận Bình Thạnh, TP.HCM'),
(26, 'Thái Thị BB', 'thaithibb', '0912345703', 'thaithibb@gmail.com', '987 Đường Điện Biên Phủ, Quận Bình Thạnh, TP.HCM'),
(27, 'Sơn Văn CC', 'sonvancc', '0912345704', 'sonvancc@gmail.com', '159 Đường Nơ Trang Long, Quận Bình Thạnh, TP.HCM'),
(28, 'Lưu Thị DD', 'luuthidd', '0912345705', 'luuthidd@gmail.com', '753 Đường Bạch Đằng, Quận Bình Thạnh, TP.HCM'),
(29, 'Dương Văn EE', 'duongvanee', '0912345706', 'duongvanee@gmail.com', '852 Đường Ung Văn Khiêm, Quận Bình Thạnh, TP.HCM'),
(30, 'Quách Thị FF', 'quachthiff', '0912345707', 'quachthiff@gmail.com', '456 Đường Phan Đăng Lưu, Quận Phú Nhuận, TP.HCM'),
(31, 'Bạch Văn GG', 'bachvangg', '0912345708', 'bachvangg@gmail.com', '789 Đường Hoàng Minh Giám, Quận Phú Nhuận, TP.HCM'),
(32, 'Vương Thị HH', 'vuongthihh', '0912345709', 'vuongthihh@gmail.com', '123 Đường Phan Xích Long, Quận Phú Nhuận, TP.HCM'),
(33, 'Tô Văn II', 'tovanii', '0912345710', 'tovanii@gmail.com', '456 Đường Trần Kế Xương, Quận Phú Nhuận, TP.HCM'),
(34, 'Lã Thị JJ', 'lathijj', '0912345711', 'lathijj@gmail.com', '789 Đường Nguyễn Văn Trỗi, Quận Phú Nhuận, TP.HCM'),
(35, 'Triệu Văn KK', 'trieuvankk', '0912345712', 'trieuvankk@gmail.com', '321 Đường Lê Quang Định, Quận Gò Vấp, TP.HCM'),
(36, 'Hứa Thị LL', 'huathill', '0912345713', 'huathill@gmail.com', '654 Đường Quang Trung, Quận Gò Vấp, TP.HCM'),
(37, 'Phùng Văn MM', 'phungvanmm', '0912345714', 'phungvanmm@gmail.com', '987 Đường Lê Đức Thọ, Quận Gò Vấp, TP.HCM'),
(38, 'Hồng Thị NN', 'hongthinn', '0912345715', 'hongthinn@gmail.com', '159 Đường Nguyễn Oanh, Quận Gò Vấp, TP.HCM'),
(39, 'Đỗ Văn OO', 'dovanoo', '0912345716', 'dovanoo@gmail.com', '753 Đường Phạm Văn Đồng, Quận Thủ Đức, TP.HCM'),
(40, 'Lê Thị PP', 'lethipp', '0912345717', 'lethipp@gmail.com', '852 Đường Kha Vạn Cân, Quận Thủ Đức, TP.HCM'),
(41, 'Nguyễn Văn QQ', 'nguyenvanqq', '0912345718', 'nguyenvanqq@gmail.com', '456 Đường Võ Văn Ngân, Quận Thủ Đức, TP.HCM'),
(42, 'Trần Thị RR', 'tranthirr', '0912345719', 'tranthirr@gmail.com', '789 Đường Linh Đông, Quận Thủ Đức, TP.HCM'),
(43, 'Phạm Văn SS', 'phamvanss', '0912345720', 'phamvanss@gmail.com', '123 Đường Lê Văn Việt, Quận 9, TP.HCM'),
(44, 'Hoàng Thị TT', 'hoangthitt', '0912345721', 'hoangthitt@gmail.com', '456 Đường Đỗ Xuân Hợp, Quận 9, TP.HCM'),
(45, 'Vũ Văn UU', 'vuvanuu', '0912345722', 'vuvanuu@gmail.com', '789 Đường Nguyễn Xiển, Quận 9, TP.HCM'),
(46, 'Đặng Thị VV', 'dangthivv', '0912345723', 'dangthivv@gmail.com', '321 Đường Lã Xuân Oai, Quận 9, TP.HCM'),
(47, 'Bùi Văn WW', 'buivanww', '0912345724', 'buivanww@gmail.com', '654 Đường Tân Lập, Quận 9, TP.HCM'),
(48, 'Đinh Thị XX', 'dinhthixx', '0912345725', 'dinhthixx@gmail.com', '987 Đường Tạ Quang Bửu, Quận 8, TP.HCM'),
(49, 'Lý Văn YY', 'lyvanyy', '0912345726', 'lyvanyy@gmail.com', '159 Đường Dương Bá Trạc, Quận 8, TP.HCM'),
(50, 'Hồ Thị ZZ', 'hothizz', '0912345727', 'hothizz@gmail.com', '753 Đường Bùi Minh Trực, Quận 8, TP.HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dim_date`
--

CREATE TABLE `dim_date` (
  `date_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `day_of_week` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dim_date`
--

INSERT INTO `dim_date` (`date_id`, `date`, `day`, `month`, `year`, `quarter`, `day_of_week`) VALUES
(1, '2025-05-01', 1, 5, 2025, 2, 'Thursday'),
(2, '2025-05-02', 2, 5, 2025, 2, 'Friday'),
(3, '2025-05-03', 3, 5, 2025, 2, 'Saturday'),
(4, '2025-05-04', 4, 5, 2025, 2, 'Sunday'),
(5, '2025-05-05', 5, 5, 2025, 2, 'Monday'),
(6, '2025-05-06', 6, 5, 2025, 2, 'Tuesday'),
(7, '2025-05-07', 7, 5, 2025, 2, 'Wednesday'),
(8, '2025-05-08', 8, 5, 2025, 2, 'Thursday'),
(9, '2025-05-09', 9, 5, 2025, 2, 'Friday'),
(10, '2025-05-10', 10, 5, 2025, 2, 'Saturday');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dim_product`
--

CREATE TABLE `dim_product` (
  `product_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dim_product`
--

INSERT INTO `dim_product` (`product_id`, `title`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Nước súc miệng Listerine Cool Mint hơi thở thơm mát chai 250ml', 65000, 2, '2024-02-22 19:32:20', '2024-02-22 19:32:20'),
(2, 'Sữa tắm Romano Classic giúp sạch khuẩn chai 650g', 95000, 1, '2024-02-22 19:32:38', '2024-02-22 19:32:38'),
(4, 'Dầu gội Romano Attitude tóc khỏe, sạch gàu chai 650g', 85000, 3, '2024-02-22 19:32:54', '2024-02-22 19:32:54'),
(5, 'Xịt thơm miệng thảo dược Greelux khử mùi hôi miệng chai 12ml', 75000, 2, '2024-02-22 19:38:25', '2024-02-22 19:38:25'),
(8, 'Gel tắm, gội, rửa mặt Nerman Gentleman 3in1 hương nước hoa chai 350ml', 116000, 1, '2024-02-22 19:38:42', '2024-02-22 19:38:42'),
(9, 'Tắm gội Clear men 3 in 1 dưỡng toàn thân mát lạnh 618ml', 99000, 1, '2024-02-22 19:39:16', '2024-02-22 19:39:16'),
(10, 'Sữa rửa mặt Men Bioré sạch nhờn, ngăn dầu tuýp 100g ', 210000, 38, '2024-02-22 19:46:00', '2024-02-22 19:46:00'),
(12, 'Sửa rửa mặt nam Cetaphil', 300000, 38, '2024-02-22 19:58:49', '2024-02-22 19:58:49'),
(13, 'Bàn chải đánh răng Oral B siêu mềm (vỉ 1 cây)', 114000, 2, '2024-02-22 19:59:03', '2024-02-22 19:59:03'),
(14, 'Tăm chỉ nha khoa Beauty Formulas Active Oral Care hộp 50 cây', 95000, 2, '2024-02-22 20:15:33', '2024-02-22 20:15:33'),
(16, 'Dầu gội Romano classic giúp sạch gàu chai 650g', 160000, 3, '2024-02-22 20:05:39', '2024-02-22 20:05:39'),
(17, 'Kem đánh răng Sensodyne Fresh Mint giảm ê buốt tuýp 100g', 145000, 2, '2024-02-22 20:10:04', '2024-02-22 20:10:04'),
(18, 'Lăn khử mùi Nivea Men Silver Protect ngăn vi khuẩn gây mùi chai 50ml', 250000, 1, '2024-02-22 20:09:39', '2024-02-22 20:09:39'),
(19, 'Lăn khử mùi Nivea Invisible giảm vệt ố vàng trên áo chai 50ml', 150000, 1, '2024-02-22 20:09:21', '2024-02-22 20:09:21'),
(20, 'Xịt Zuchi Family khử mùi hôi chân và giày chai 50ml', 150000, 1, '2024-02-22 20:08:10', '2024-02-22 20:08:10'),
(21, 'Sữa rửa mặt Nivea Men Detox Mud giúp sáng da, mờ thâm mụn tuýp 100g', 164000, 38, '2024-02-22 20:04:34', '2024-02-22 20:04:34'),
(26, 'Kem đánh răng Sensodyne Gentle Whitening trắng răng tuýp 100g', 235000, 2, '2024-02-22 20:04:20', '2024-02-22 20:04:20'),
(28, 'Dầu gội dược liệu Thái Dương', 120000, 3, '2024-02-22 20:03:01', '2024-02-22 20:03:01'),
(29, 'Dầu gội bưởi Milaganics', 190000, 3, '2024-02-22 20:02:02', '2024-02-22 20:02:02'),
(30, 'Gel rửa mặt Nerman 60s Fresh Curcumin ngừa mụn, làm sạch da mặt cho nam tuýp 100ml', 199000, 38, '2024-02-22 20:01:49', '2024-02-22 20:01:49'),
(31, 'Sữa rửa mặt Nivea Men Facial Foam giúp ngăn ngừa mụn tối ưu tuýp 100g', 176000, 38, '2024-02-22 20:01:36', '2024-02-22 20:01:36'),
(43, 'Tắm gội Clear men 3 in 1 dưỡng toàn thân mát lạnh 618ml', 225000, 1, '2024-02-22 19:38:59', '2024-02-22 19:38:59'),
(44, 'Bàn chải điện Oral-B Pro 1000', 850000, 2, '2024-02-23 09:00:00', '2024-02-23 09:00:00'),
(45, 'Nước súc miệng Colgate Plax', 55000, 2, '2024-02-23 09:05:00', '2024-02-23 09:05:00'),
(46, 'Sữa tắm Dove Men+Care', 120000, 1, '2024-02-23 09:10:00', '2024-02-23 09:10:00'),
(47, 'Dầu gội Head & Shoulders bạc hà', 80000, 3, '2024-02-23 09:15:00', '2024-02-23 09:15:00'),
(48, 'Kem đánh răng P/S than hoạt tính', 45000, 2, '2024-02-23 09:20:00', '2024-02-23 09:20:00'),
(49, 'Lăn khử mùi Rexona Men Ice Cool', 90000, 1, '2024-02-23 09:25:00', '2024-02-23 09:25:00'),
(50, 'Sữa rửa mặt La Roche-Posay', 250000, 38, '2024-02-23 09:30:00', '2024-02-23 09:30:00'),
(51, 'Dầu gội Pantene Pro-V', 95000, 3, '2024-02-23 09:35:00', '2024-02-23 09:35:00'),
(52, 'Nước hoa hồng Simple', 110000, 38, '2024-02-23 09:40:00', '2024-02-23 09:40:00'),
(53, 'Xà bông Lifebuoy', 35000, 1, '2024-02-23 09:45:00', '2024-02-23 09:45:00'),
(54, 'Kem cạo râu Gillette Series', 125000, 2, '2024-02-23 09:50:00', '2024-02-23 09:50:00'),
(55, 'Dầu xả Romano Classic', 85000, 3, '2024-02-23 09:55:00', '2024-02-23 09:55:00'),
(56, 'Tẩy tế bào chết St. Ives', 150000, 38, '2024-02-23 10:00:00', '2024-02-23 10:00:00'),
(57, 'Nước rửa tay Lifebuoy', 45000, 1, '2024-02-23 10:05:00', '2024-02-23 10:05:00'),
(58, 'Kem đánh răng CloseUp', 50000, 2, '2024-02-23 10:10:00', '2024-02-23 10:10:00'),
(59, 'Sữa tắm Romano Active', 110000, 1, '2024-02-23 10:15:00', '2024-02-23 10:15:00'),
(60, 'Dầu gội Clear Men', 90000, 3, '2024-02-23 10:20:00', '2024-02-23 10:20:00'),
(61, 'Sữa rửa mặt Garnier Men', 135000, 38, '2024-02-23 10:25:00', '2024-02-23 10:25:00'),
(62, 'Lăn khử mùi Axe Dark Temptation', 95000, 1, '2024-02-23 10:30:00', '2024-02-23 10:30:00'),
(63, 'Nước súc miệng Thái Dương', 60000, 2, '2024-02-23 10:35:00', '2024-02-23 10:35:00'),
(64, 'Dầu gội Sunsilk mềm mượt', 75000, 3, '2024-02-23 10:40:00', '2024-02-23 10:40:00'),
(65, 'Sữa tắm Lux hương nước hoa', 85000, 1, '2024-02-23 10:45:00', '2024-02-23 10:45:00'),
(66, 'Kem đánh răng Aquafresh', 55000, 2, '2024-02-23 10:50:00', '2024-02-23 10:50:00'),
(67, 'Sữa rửa mặt Neutrogena', 180000, 38, '2024-02-23 10:55:00', '2024-02-23 10:55:00'),
(68, 'Dầu xả Romano Attitude', 95000, 3, '2024-02-23 11:00:00', '2024-02-23 11:00:00'),
(69, 'Lăn khử mùi Romano Sport', 120000, 1, '2024-02-23 11:05:00', '2024-02-23 11:05:00'),
(70, 'Nước hoa hồng Garnier', 95000, 38, '2024-02-23 11:10:00', '2024-02-23 11:10:00'),
(71, 'Kem đánh răng Sensodyne Repair', 125000, 2, '2024-02-23 11:15:00', '2024-02-23 11:15:00'),
(72, 'Sữa tắm Romano Fresh', 105000, 1, '2024-02-23 11:20:00', '2024-02-23 11:20:00'),
(73, 'Dầu gội Romano Deep Clean', 110000, 3, '2024-02-23 11:25:00', '2024-02-23 11:25:00'),
(74, 'Xịt khử mùi Romano Body Spray', 145000, 1, '2024-02-23 11:30:00', '2024-02-23 11:30:00'),
(75, 'Sữa rửa mặt Romano Acne Control', 155000, 38, '2024-02-23 11:35:00', '2024-02-23 11:35:00'),
(76, 'Nước súc miệng Romano Fresh', 75000, 2, '2024-02-23 11:40:00', '2024-02-23 11:40:00'),
(77, 'Dầu gội Romano Anti-Dandruff', 120000, 3, '2024-02-23 11:45:00', '2024-02-23 11:45:00'),
(78, 'Kem đánh răng Romano White', 85000, 2, '2024-02-23 11:50:00', '2024-02-23 11:50:00'),
(79, 'Sữa tắm Romano Energy', 115000, 1, '2024-02-23 11:55:00', '2024-02-23 11:55:00'),
(80, 'Dầu xả Romano Smooth', 95000, 3, '2024-02-23 12:00:00', '2024-02-23 12:00:00'),
(81, 'Lăn khử mùi Romano Extreme', 135000, 1, '2024-02-23 12:05:00', '2024-02-23 12:05:00'),
(82, 'Sữa rửa mặt Romano Brightening', 165000, 38, '2024-02-23 12:10:00', '2024-02-23 12:10:00'),
(83, 'Nước súc miệng Romano Herbal', 80000, 2, '2024-02-23 12:15:00', '2024-02-23 12:15:00'),
(84, 'Dầu gội Romano Volume Boost', 130000, 3, '2024-02-23 12:20:00', '2024-02-23 12:20:00'),
(85, 'Kem đánh răng Romano Sensitive', 95000, 2, '2024-02-23 12:25:00', '2024-02-23 12:25:00'),
(86, 'Sữa tắm Romano Relax', 125000, 1, '2024-02-23 12:30:00', '2024-02-23 12:30:00'),
(87, 'Dầu xả Romano Repair', 110000, 3, '2024-02-23 12:35:00', '2024-02-23 12:35:00'),
(88, 'Lăn khử mùi Romano Fresh', 105000, 1, '2024-02-23 12:40:00', '2024-02-23 12:40:00'),
(89, 'Sữa rửa mặt Romano Deep Clean', 145000, 38, '2024-02-23 12:45:00', '2024-02-23 12:45:00'),
(90, 'Nước súc miệng Romano Whitening', 90000, 2, '2024-02-23 12:50:00', '2024-02-23 12:50:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fact_sales`
--

CREATE TABLE `fact_sales` (
  `sale_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `date_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total_amount` float NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `fact_sales`
--

INSERT INTO `fact_sales` (`sale_id`, `order_id`, `user_id`, `product_id`, `category_id`, `date_id`, `quantity`, `price`, `total_amount`, `status`) VALUES
(1, 1, 1, 5, 2, 1, 2, 75000, 150000, 'Đang chuẩn bị'),
(2, 1, 1, 17, 2, 1, 1, 145000, 145000, 'Đang chuẩn bị'),
(3, 1, 1, 26, 2, 1, 1, 235000, 235000, 'Đang chuẩn bị'),
(4, 2, 2, 2, 1, 1, 1, 95000, 95000, 'Đã nhận hàng'),
(5, 2, 2, 18, 1, 1, 2, 250000, 500000, 'Đã nhận hàng'),
(6, 3, 3, 10, 38, 1, 1, 210000, 210000, 'Đã nhận hàng'),
(7, 3, 3, 21, 38, 1, 1, 164000, 164000, 'Đã nhận hàng'),
(8, 4, 4, 4, 3, 1, 1, 85000, 85000, 'Đã nhận hàng'),
(9, 4, 4, 16, 3, 1, 1, 160000, 160000, 'Đã nhận hàng'),
(10, 4, 4, 28, 3, 1, 1, 120000, 120000, 'Đã nhận hàng'),
(11, 5, 5, 8, 1, 2, 1, 116000, 116000, 'Đang giao'),
(12, 5, 5, 19, 1, 2, 2, 150000, 300000, 'Đang giao'),
(13, 6, 6, 12, 38, 2, 1, 300000, 300000, 'Đã nhận hàng'),
(14, 6, 6, 30, 38, 2, 1, 199000, 199000, 'Đã nhận hàng'),
(15, 7, 7, 1, 2, 2, 3, 65000, 195000, 'Đã nhận hàng'),
(16, 7, 7, 13, 2, 2, 2, 114000, 228000, 'Đã nhận hàng'),
(17, 8, 8, 9, 1, 2, 1, 99000, 99000, 'Đã nhận hàng'),
(18, 8, 8, 20, 1, 2, 1, 150000, 150000, 'Đã nhận hàng'),
(19, 8, 8, 31, 38, 2, 1, 176000, 176000, 'Đã nhận hàng'),
(20, 9, 9, 14, 2, 3, 2, 95000, 190000, 'Đang giao'),
(21, 14, 14, 29, 3, 4, 1, 199000, 199000, 'Đã nhận hàng'),
(22, 20, 20, 43, 1, 5, 1, 225000, 225000, 'Đã hủy'),
(23, 21, 21, 44, 2, 5, 1, 850000, 850000, 'Đang giao'),
(24, 21, 21, 45, 2, 5, 1, 55000, 55000, 'Đang giao'),
(25, 22, 22, 46, 1, 5, 1, 120000, 120000, 'Đã hủy'),
(26, 22, 22, 47, 3, 5, 1, 80000, 80000, 'Đã nhận hàng'),
(27, 23, 23, 48, 2, 5, 2, 45000, 90000, 'Đã nhận hàng'),
(28, 23, 23, 49, 1, 5, 1, 90000, 90000, 'Đã hủy'),
(29, 24, 24, 50, 38, 6, 1, 250000, 250000, 'Đã hủy'),
(30, 24, 24, 51, 3, 6, 1, 95000, 95000, 'Đã nhận hàng'),
(31, 25, 25, 52, 38, 6, 1, 110000, 110000, 'Đang giao'),
(32, 25, 25, 53, 1, 6, 1, 35000, 35000, 'Đang giao'),
(33, 26, 26, 54, 2, 6, 1, 125000, 125000, 'Đã nhận hàng'),
(34, 26, 26, 55, 3, 6, 1, 85000, 85000, 'Đã nhận hàng'),
(35, 27, 27, 56, 38, 6, 1, 150000, 150000, 'Đã nhận hàng'),
(36, 27, 27, 57, 1, 6, 1, 45000, 45000, 'Đã nhận hàng'),
(37, 28, 28, 58, 2, 6, 2, 50000, 100000, 'Đã nhận hàng'),
(38, 28, 28, 59, 1, 6, 1, 110000, 110000, 'Đã nhận hàng'),
(39, 29, 29, 60, 3, 6, 1, 90000, 90000, 'Đang giao'),
(40, 29, 29, 61, 38, 6, 1, 135000, 135000, 'Đang giao'),
(41, 30, 30, 62, 1, 7, 1, 95000, 95000, 'Đã nhận hàng'),
(42, 30, 30, 63, 2, 7, 1, 60000, 60000, 'Đã hủy'),
(43, 31, 31, 64, 3, 7, 1, 75000, 75000, 'Đã hủy'),
(44, 31, 31, 65, 1, 7, 1, 85000, 85000, 'Đã nhận hàng'),
(45, 32, 32, 66, 2, 7, 2, 55000, 110000, 'Đã nhận hàng'),
(46, 32, 32, 67, 38, 7, 1, 180000, 180000, 'Đã nhận hàng'),
(47, 33, 33, 68, 3, 7, 1, 95000, 95000, 'Đang giao'),
(48, 33, 33, 69, 1, 7, 1, 120000, 120000, 'Đang giao'),
(49, 34, 34, 70, 38, 7, 1, 95000, 95000, 'Đã nhận hàng'),
(50, 34, 34, 71, 2, 7, 1, 125000, 125000, 'Đã hủy'),
(51, 35, 35, 72, 1, 8, 1, 105000, 105000, 'Đã nhận hàng'),
(52, 35, 35, 73, 3, 8, 1, 110000, 110000, 'Đã nhận hàng'),
(53, 36, 36, 74, 1, 8, 1, 145000, 145000, 'Đã nhận hàng'),
(54, 36, 36, 75, 38, 8, 1, 155000, 155000, 'Đã nhận hàng'),
(55, 37, 37, 76, 2, 8, 2, 75000, 150000, 'Đang giao'),
(56, 37, 37, 77, 3, 8, 1, 120000, 120000, 'Đang giao'),
(57, 38, 38, 78, 2, 8, 1, 85000, 85000, 'Đã nhận hàng'),
(58, 38, 38, 79, 1, 8, 1, 115000, 115000, 'Đã nhận hàng'),
(59, 39, 39, 80, 3, 8, 1, 95000, 95000, 'Đã nhận hàng'),
(60, 39, 39, 81, 1, 8, 1, 135000, 135000, 'Đã nhận hàng'),
(61, 40, 40, 82, 38, 9, 1, 165000, 165000, 'Đã nhận hàng'),
(62, 40, 40, 83, 2, 9, 1, 80000, 80000, 'Đã nhận hàng'),
(63, 41, 41, 84, 3, 9, 1, 130000, 130000, 'Đang giao'),
(64, 41, 41, 85, 2, 9, 1, 95000, 95000, 'Đang giao'),
(65, 42, 42, 86, 1, 9, 1, 125000, 125000, 'Đã nhận hàng'),
(66, 42, 42, 87, 3, 9, 1, 110000, 110000, 'Đã nhận hàng'),
(67, 43, 43, 88, 1, 9, 2, 105000, 210000, 'Đã nhận hàng'),
(68, 43, 43, 89, 38, 9, 1, 145000, 145000, 'Đã nhận hàng'),
(69, 44, 44, 90, 2, 9, 1, 90000, 90000, 'Đã nhận hàng'),
(70, 44, 44, 1, 2, 9, 1, 65000, 65000, 'Đã nhận hàng'),
(71, 45, 45, 2, 1, 10, 1, 95000, 95000, 'Đang giao'),
(72, 46, 46, 4, 3, 10, 1, 85000, 85000, 'Đã nhận hàng'),
(73, 46, 46, 5, 2, 10, 1, 75000, 75000, 'Đã nhận hàng'),
(74, 48, 48, 8, 1, 10, 1, 116000, 116000, 'Đã nhận hàng'),
(75, 48, 48, 9, 1, 10, 1, 99000, 99000, 'Đã nhận hàng'),
(76, 49, 49, 10, 38, 10, 1, 210000, 210000, 'Đang giao'),
(77, 50, 50, 12, 38, 10, 1, 300000, 300000, 'Đã nhận hàng'),
(78, 50, 50, 13, 2, 10, 1, 114000, 114000, 'Đã nhận hàng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dim_category`
--
ALTER TABLE `dim_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `dim_customer`
--
ALTER TABLE `dim_customer`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `dim_date`
--
ALTER TABLE `dim_date`
  ADD PRIMARY KEY (`date_id`);

--
-- Chỉ mục cho bảng `dim_product`
--
ALTER TABLE `dim_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `fact_sales`
--
ALTER TABLE `fact_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `date_id` (`date_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dim_date`
--
ALTER TABLE `dim_date`
  MODIFY `date_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `fact_sales`
--
ALTER TABLE `fact_sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dim_product`
--
ALTER TABLE `dim_product`
  ADD CONSTRAINT `dim_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `dim_category` (`category_id`);

--
-- Các ràng buộc cho bảng `fact_sales`
--
ALTER TABLE `fact_sales`
  ADD CONSTRAINT `fact_sales_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `dim_customer` (`user_id`),
  ADD CONSTRAINT `fact_sales_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `dim_product` (`product_id`),
  ADD CONSTRAINT `fact_sales_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `dim_category` (`category_id`),
  ADD CONSTRAINT `fact_sales_ibfk_4` FOREIGN KEY (`date_id`) REFERENCES `dim_date` (`date_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
