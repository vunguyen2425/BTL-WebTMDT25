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
(43, 'Tắm gội Clear men 3 in 1 dưỡng toàn thân mát lạnh 618ml', 225000, 46, 'uploads/tt3.jpg', 'Là dòng sản phẩm cung cấp giải pháp tắm gội và dưỡng ẩm toàn diện cho nam giới, đến từ thương hiệu xà bông tắm gội 2 trong 1 Clear Men. Tắm gội Clear men 3 in 1 mát lạnh 618ml với công thức gel đột phá, dưỡng ẩm da đầu và mang đến hương thơm nam tính từ tinh thể bạc hà', 1, '2024-02-22 19:38:59', '2024-02-22 19:38:59');

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
