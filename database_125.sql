-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 30, 2023 at 12:20 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_125`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`, `level`, `created_at`, `updated_at`) VALUES
(9, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0947854609', 2, '2022-05-22 06:27:16', '2023-06-30 04:29:27'),
(10, 'admin2', 'admin2@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0977538641', 2, '2022-06-10 08:22:56', '2023-06-30 10:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `donhang_id` int(11) DEFAULT NULL,
  `sanpham_id` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `size` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`donhang_id`, `sanpham_id`, `soluong`, `gia`, `size`, `hinhanh`, `id`, `created_at`) VALUES
(1, 3, 1, 399000, 'M', 'vngoods_41_455365.avif', 1, '2023-06-30 07:11:36'),
(1, 4, 1, 499000, 'tuỳ chọn', 'vngoods_06_457936.avif', 2, '2023-06-30 07:11:36'),
(2, 1, 1, 186750, 'tuỳ chọn', 'vngoods_01_458291.webp', 3, '2023-06-30 07:11:51'),
(2, 2, 1, 299250, 'S', 'vngoods_12_461910.avif', 4, '2023-06-30 07:11:51'),
(3, 7, 95, 599250, 'tuỳ chọn', 'goods_38_453679.avif', 5, '2023-06-30 07:12:59'),
(3, 8, 1, 499000, 'M', 'goods_69_438862.avif', 6, '2023-06-30 07:12:59'),
(4, 5, 1, 599250, 'L', 'goods_09_461052.avif', 7, '2023-06-30 07:16:38'),
(4, 6, 99, 499000, 'L', 'goods_09_462252.avif', 8, '2023-06-30 07:16:38'),
(5, 6, 1, 499000, 'tuỳ chọn', 'goods_09_462252.avif', 9, '2023-06-30 07:17:31'),
(6, 1, 2, 186750, 'L', 'vngoods_01_458291.webp', 10, '2023-06-30 07:19:21'),
(7, 2, 2, 299250, 'M', 'vngoods_12_461910.avif', 11, '2023-06-30 07:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `tendanhmuc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuccha_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`tendanhmuc`, `slug`, `hinhanh`, `danhmuccha_id`, `created_at`, `updated_at`, `id`) VALUES
('Quần áo nam', 'quan-ao-nam', NULL, 0, '2023-06-15 19:00:38', '2023-06-30 04:40:16', 14),
('Quần áo nữ', 'quan-ao-nu', NULL, 0, '2023-06-15 19:00:43', '2023-06-15 19:00:43', 15),
('Phụ kiện nam', 'phu-kien-nam', NULL, 0, '2023-06-15 19:00:50', '2023-06-23 02:15:31', 16),
('Phụ kiện nữ', 'phu-kien-nu', NULL, 0, '2023-06-15 19:01:29', '2023-06-30 00:06:14', 17);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `ten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` char(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `loai` tinyint(4) NOT NULL DEFAULT '1',
  `thanhvien_id` int(11) NOT NULL DEFAULT '0',
  `noidung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(4) DEFAULT '0',
  `nhanviengiaohang_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`ten`, `diachi`, `sodienthoai`, `email`, `tongtien`, `loai`, `thanhvien_id`, `noidung`, `trangthai`, `nhanviengiaohang_id`, `created_at`, `updated_at`, `id`) VALUES
('Nguyễn Hữu Khánh', '69 Tố Hữu, Vạn Phúc, Hà Đông, Hà Nội', '0978560453', 'khanh@gmail.com', 898000, 1, 1, '', 3, 10, '2023-06-30 07:11:36', '2023-06-30 00:17:07', 1),
('Nguyễn Hữu Khánh', '69 Tố Hữu, Vạn Phúc, Hà Đông, Hà Nội', '0978560453', 'khanh@gmail.com', 486000, 1, 1, '', 4, 10, '2023-06-30 07:11:50', '2023-06-30 00:17:11', 2),
('Nguyễn Văn Khánh', '100 Trần Phú, Văn Quán, Hà Đông, Hà Nội', '0975679855', 'khanh2@gmail.com', 51684975, 2, 2, 'Số lượng lớn', 3, 10, '2023-06-30 07:12:59', '2023-06-30 00:17:40', 3),
('Nguyễn Văn Khánh', '100 Trần Phú, Văn Quán, Hà Đông, Hà Nội', '0975679855', 'khanh2@gmail.com', 45000225, 2, 2, 'Số lượng lớn', 3, 10, '2023-06-30 07:16:38', '2023-06-30 00:17:44', 4),
('Trần Tuấn Huy', '49 Quang Trung, Nguyễn Trãi, Hà Đông, Hà Nội', '0956387544', 'huy@gmail.com', 499000, 1, 3, '', 3, 10, '2023-06-30 07:17:31', '2023-06-30 00:17:48', 5),
('Trần Tuấn Huy', '49 Quang Trung, Nguyễn Trãi, Hà Đông, Hà Nội', '0956387544', 'huy@gmail.com', 373500, 2, 3, 'Giao nhanh', 2, 10, '2023-06-30 07:19:21', '2023-06-30 00:21:19', 6),
('Trần Tuấn Huy', '49 Quang Trung, Nguyễn Trãi, Hà Đông, Hà Nội', '0956387544', 'huy@gmail.com', 598500, 2, 3, 'Giao nhanh', 1, 10, '2023-06-30 07:19:59', '2023-06-30 00:21:23', 7);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `tenmenu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vitri` tinyint(4) DEFAULT '0',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`tenmenu`, `slug`, `vitri`, `id`) VALUES
('Tin Tức', 'tin-tuc.php', 0, 3),
('Giới Thiệu', NULL, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `tennhacc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` char(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`tennhacc`, `diachi`, `sodienthoai`, `email`, `created_at`, `updated_at`, `id`) VALUES
('Công ty may mặc Hà Nội', 'Hà Nội', '0967445968', 'mmhanoi@gmail.com', '2023-06-15 19:02:32', '2023-06-15 19:02:32', 8),
('Công ty may mặc bao bì Gia Lâm', 'Gia Lâm Hà Nội', '0989544271', 'bbgialam@gmail.com', '2023-06-15 19:03:40', '2023-06-15 19:03:40', 9);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sodienthoai` varchar(255) DEFAULT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ten`, `email`, `sodienthoai`, `matkhau`, `diachi`) VALUES
(1, 'Huy', 'huy@gmail.com', '0987656111', '25f9e794323b453885f5181f1b624d0b', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `tensanpham` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `danhmuc_id` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT '0',
  `soluong` int(11) DEFAULT '0',
  `giamgia` tinyint(4) DEFAULT '0',
  `hinhanh` varchar(255) DEFAULT NULL,
  `mota` text,
  `trangthai` varchar(255) DEFAULT NULL,
  `hot` tinyint(3) UNSIGNED DEFAULT '0',
  `yeuthich` int(11) DEFAULT '0',
  `nhacungcap_id` int(11) DEFAULT NULL,
  `gianhap` int(11) DEFAULT NULL,
  `pay` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `size` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`tensanpham`, `slug`, `danhmuc_id`, `gia`, `soluong`, `giamgia`, `hinhanh`, `mota`, `trangthai`, `hot`, `yeuthich`, `nhacungcap_id`, `gianhap`, `pay`, `created_at`, `updated_at`, `id`, `size`) VALUES
('Áo Thun Gân Dáng Ngắn Kẻ Sọc Ngắn Tay Xếp Ly', 'ao-thun-gan-dang-ngan-ke-soc-ngan-tay-xep-ly', 15, 249000, 100, 25, 'vngoods_01_458291.webp', '<p><span style=\"font-size:18px\">- Chất liệu cotton gân co giãn cho dáng người vừa vặn.<br />\r\n- Cổ tròn.<br />\r\n- Áo dáng nắng và vừa vặn.<br />\r\n- Tay áo xếp nếp.<br />\r\n- Họa tiết kẻ sọc mát mẻ.</span></p>\r\n', NULL, 1, 0, 8, 149000, 5, '2023-06-30 03:34:13', '2023-06-30 03:34:13', 1, 'S,M,L,XL,XXL'),
('DRY-EX Áo Thun Cổ Tròn Ngắn Tay', 'dry-ex-ao-thun-co-tron-ngan-tay', 15, 399000, 100, 25, 'vngoods_12_461910.avif', '<p><span style=\"font-size:18px\">- Kết cấu tự nhiên.<br />\r\n- Công nghệ &#39;DRY-EX&#39;.<br />\r\n- Đường cắt tiêu chuẩn không quá lỏng cũng không quá chật ở vai và eo.<br />\r\n- Trọng lượng nhẹ và dễ dàng di chuyển.<br />\r\n- Thích hợp cho làm trang phục thể thao và hàng ngày.</span></p>\r\n', NULL, 0, 0, 9, 259000, 3, '2023-06-30 03:40:35', '2023-06-30 03:40:35', 2, 'S,M,L,XL,XXL'),
('Áo Thun Supima Cotton Cổ Tròn Ngắn Tay', 'ao-thun-supima-cotton-co-tron-ngan-tay', 14, 399000, 97, 0, 'vngoods_41_455365.avif', '<p><span style=\"font-size:18px\">- Đã cập nhật lên một loại vải quan trọng hơn với lớp hoàn thiện cao cấp.<br />\r\n- Cotton SUPIMA® 100% mịn, chống vón.<br />\r\n- Phong cách thiết kế cơ bản mặc riêng hoặc xếp lớp.<br />\r\n- Tỉ mỉ đến từng chi tiết như độ rộng cổ áo, đường chỉ may.</span></p>\r\n', NULL, 0, 0, 8, 299000, 3, '2023-06-30 03:45:14', '2023-06-30 03:45:14', 3, 'S,M,L,XL,XXL'),
('AIRism Áo Polo Cổ Mở', 'airism-ao-polo-co-mo', 14, 499000, 97, 0, 'vngoods_06_457936.avif', '<p><span style=\"font-size:18px\">- Vải &#39;AIRism&#39; mịn màng và thoải mái khi chạm vào.<br />\r\n- Công nghệ cool touch và Công nghệ DRY khô nhanh.<br />\r\n- Vải tạo ra một Kiểu dáng đẹp.<br />\r\n- Áo polo Cổ áo chữ V với sự đơn giản của áo thun và sự thanh lịch của polo.<br />\r\n- Thư giãn, vừa vặn.<br />\r\n- Cổ áo tối giản, hiện đại Thích hợp cho phong cách giản dị, thanh lịch.<br />\r\n- Đường cắt ở cả hai bên giúp dễ dàng cho áo bên trong hoặc thả ngoài.</span></p>\r\n', NULL, 0, 0, 9, 399000, 5, '2023-06-30 03:51:59', '2023-06-30 03:51:59', 4, 'S,M,L,XL,XXL'),
('Túi Đeo Vai Giả Da', 'tui-deo-vai-gia-da', 17, 799000, 99, 25, 'goods_09_461052.avif', '<p><span style=\"font-size:18px\">- Chất liệu giả da mang đến cho bạn một cái nhìn sang trọng.<br />\r\n- Được khắc nổi tinh xảo thanh lịch, kết cấu chắc chắn, đứng phom.<br />\r\n- Dễ dàng vệ sinh.<br />\r\n- Thiết kế hình trụ cho phép mở rộng sức chứa của túi.<br />\r\n- Dây đeo có thể điều chỉnh.<br />\r\n- Hai túi bên trong giúp bạn sắp xếp các vật dụng nhỏ.<br />\r\n- Các đường cong ở mặt trước và mặt sau tạo nên một vẻ ngoài đẹp mắt, tinh tế và thanh lịch.</span></p>\r\n', NULL, 0, 0, 8, 499999, 3, '2023-06-30 03:57:57', '2023-06-30 03:57:57', 5, 'L'),
('Mũ Bucket Chống UV (Chống Nắng)', 'mu-bucket-chong-uv-chong-nang', 17, 499000, 0, 0, 'goods_09_462252.avif', '<p><span style=\"font-size:18px\">- Chất liệu vải twill, được giặt sạch để tăng độ mềm mại.<br />\r\n- Với công nghệ Chống tia cực tím (UPF50+) và DRY.<br />\r\n- Thiết kế kiểu dáng được cải tiến và đảm bảo vừa vặn hơn.<br />\r\n- Thiết kế nút điều chỉnh bên trong.<br />\r\n- Kiểu dáng đơn giản, cổ điển phù hợp với mọi trang phục.</span></p>\r\n', NULL, 0, 0, 9, 399000, 5, '2023-06-30 04:06:41', '2023-06-30 04:06:41', 6, 'L'),
('Thắt Lưng Da Ý Cổ Điển', 'that-lung-da-y-co-dien', 16, 799000, 5, 25, 'goods_38_453679.avif', '<p><span style=\"font-size:18px\">- Được làm bằng da từ nhà sản xuất Ausonia nổi tiếng của Ý. * Dập nổi ở mặt sau của thắt lưng.<br />\r\n- Có nguồn gốc da thuộc ở Ý. * Được lắp ráp ở Trung Quốc.<br />\r\n- Bản nhỏ cho kiểu dáng đẹp mắt.<br />\r\n- Da thuộc từ thực vật cho cảm giác và vẻ ngoài của chất liệu da được cải thiện theo thời gian.<br />\r\n- Thắt lưng cho phong cách giản dị.</span></p>\r\n', NULL, 0, 0, 8, 499000, 6, '2023-06-30 04:11:39', '2023-06-30 04:11:39', 7, 'M,L'),
('Mũ Lưỡi Trai Vải Twill Chống UV (Chống Nắng)', 'mu-luoi-trai-vai-twill-chong-uv-chong-nang', 16, 499000, 99, 0, 'goods_69_438862.avif', '<p><span style=\"font-size:18px\">- Với tính năng hút ẩm, khô nhanh và chống tia UV.<br />\r\n- Mặt trong của dây điều chỉnh co giãn để vừa vặn thoải mái.<br />\r\n- Thiết kế cơ bản linh hoạt.<br />\r\n- Khóa được mạ lớp màu vàng và điều chỉnh bằng da thật bổ sung cho màu sắc của vải.<br />\r\n- Một chiếc mũ lưỡi trai thông dụng để sử dụng hàng ngày.</span></p>\r\n', NULL, 0, 0, 9, 399000, 3, '2023-06-30 04:13:29', '2023-06-30 04:13:29', 8, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `hoten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thunbar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `sodienthoai` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `id_auth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`hoten`, `email`, `password`, `diachi`, `thunbar`, `level`, `sodienthoai`, `created_at`, `updated_at`, `id`, `id_auth`) VALUES
('Nguyễn Hữu Khánh', 'khanh@gmail.com', '25f9e794323b453885f5181f1b624d0b', '69 Tố Hữu, Vạn Phúc, Hà Đông, Hà Nội', NULL, 0, '0978560453', '2023-06-30 03:26:30', '2023-06-30 03:26:30', 1, NULL),
('Nguyễn Văn Khánh', 'khanh2@gmail.com', '25f9e794323b453885f5181f1b624d0b', '100 Trần Phú, Văn Quán, Hà Đông, Hà Nội', NULL, 0, '0975679855', '2023-06-30 03:27:52', '2023-06-30 03:27:52', 2, NULL),
('Trần Tuấn Huy', 'huy@gmail.com', '25f9e794323b453885f5181f1b624d0b', '49 Quang Trung, Nguyễn Trãi, Hà Đông, Hà Nội', NULL, 0, '0956387544', '2023-06-30 03:29:09', '2023-06-30 03:29:09', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `tieude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8_unicode_ci,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `Menu_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`tieude`, `noidung`, `hinhanh`, `created_at`, `updated_at`, `slug`, `id`, `Menu_id`) VALUES
('Giới Thiệu', '<h1><span style=\"font-size:18px\"><strong>WEBSITE MUA SẮM THỜI TRANG VIỆT NAM</strong></span></h1>\r\n\r\n<p><span style=\"font-size:18px\">BẠN ĐANG TÌM KIẾM NHỮNG MẪU THỜI TRANG, QUẦN ÁO VÀ PHỤ KIỆN MỚI NHẤT TRÊN MẠNG? HÃY MUA SẮM NGAY HÔM NAY TẠI ĐÂY!</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Website sẽ mang lại cho khách hàng những trải nghiệm mua sắm thời trang hàng hiệu trực tuyến thú vị từ các thương hiệu thời trang quốc tế và trong nước, cam kết chất lượng phục vụ hàng đầu cùng với những bộ sưu tập quần áo nam nữ khổng lồ từ trang phục, phụ kiện cho tới những xu hướng thời trang mới nhất. Bạn có thể tìm thấy những bộ trang phục mình muốn từ những bộ đồ ở nhà thật thoải mái hay tự tin trong những bộ trang phục công sở phù hợp. Những trải nghiệm mới chỉ có ở trang mua sắm thời trang này.</span></p>\r\n\r\n<h1><span style=\"font-size:18px\"><strong>MÓN QUÀ TẶNG NGƯỜI THÂN THẬT Ý NGHĨA!</strong></span></h1>\r\n\r\n<p><span style=\"font-size:18px\">Website sẽ gợi ý cho bạn những món quà thật ý nghĩa để tặng người thân, bạn bè. Chúng tôi sẽ làm bạn hài lòng với sự lựa chọn của mình bằng giá tốt nhất và chất lượng dịch vụ hoàn hảo của Website.</span></p>\r\n\r\n<h1><span style=\"font-size:18px\"><strong>MUA SẮM Ở WEBSITE - PHÙ HỢP VỚI TÚI TIỀN TỪ DOANH NHÂN, NHÂN VIÊN VĂN PHÒNG ĐẾN CÁC BẠN TRẺ</strong></span></h1>\r\n\r\n<p><span style=\"font-size:18px\">Website luôn cập nhật những xu hướng thời trang phong cách nhất.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Đặc biệt, Website còn có nhiều đợt khuyến mãi, giảm giá đặc biệt với giá tốt nhất. Thời trang hàng hiệu chất lượng cao, phù hợp túi tiền - chỉ có ở ĐÂY!</span></p>\r\n\r\n<h1><span style=\"font-size:18px\"><strong>PHONG CÁCH MUA SẮM HIỆN ĐẠI - THUẬN TIỆN, THANH TOÁN AN TOÀN - DỄ DÀNG</strong></span></h1>\r\n\r\n<p><span style=\"font-size:18px\">Bạn có thể mua sắm thoải mái trên Website mà không có bất kỳ lo lắng nào: trả hàng trong vòng 14 ngày kể từ ngày nhận hàng. Nếu bạn có bất kì câu hỏi nào về các sản phẩm của chúng tôi hãy gọi ngay tới bộ phận chăm sóc khách hàng, nơi mà chúng tôi luôn làm việc 24/7</span></p>\r\n', 'goods_09_461052.avif', '2023-06-30 11:41:44', '2023-06-30 11:41:44', 'gioi-thieu', 2, '3'),
('10 cách mặc quần ống rộng đi làm ngày nắng nóng', '<h1><span style=\"font-size:18px\"><strong>Trong thời tiết nóng bức, quần ống rộng là lựa chọn lý tưởng để chị em hoàn thiện phong cách.</strong></span></h1>\r\n\r\n<p><span style=\"font-size:18px\">Thời tiết nóng nực khiến những thiết kế quần dáng ôm không còn là lựa chọn lý tưởng dành cho nàng công sở. Thay vào đó, quần ống rộng sẽ đáng diện hơn hẳn. Với thiết kế suông rộng, kiểu quần này sẽ tạo cảm giác thoải mái, mát mẻ. Quan trọng không kém, quần ống rộng còn giúp chị em ghi điểm ở nét phóng khoáng, thời thượng. Quần ống rộng có nhiều cách mix phù hợp với môi trường công sở, các nàng hãy tham khảo để style đi làm luôn sành điệu và nhẹ mát trong mùa hè.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-10-16872751097881777134183.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 1.\" id=\"img_595637771073060864\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-10-16872751097881777134183.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 1.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Làm thế nào để hack tuổi khi diện áo tối màu? Câu trả lời chính là kết hợp cùng quần âu ống suông, mang tông màu pastel. Combo này sẽ mang đến nét trẻ trung, ngọt ngào cho người diện. Dẫu vậy, nàng công sở vẫn có được vẻ ngoài sang xịn mịn khi áp dụng outfit gồm áo đen cổ vuông, quần âu hồng pastel và sandal đơn giản.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-9-16872751088941009695252.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 2.\" id=\"img_595637767215194112\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-9-16872751088941009695252.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 2.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Công thức áo blouse trắng và quần âu màu pastel đem lại cảm giác dịu mát trong những ngày hè nóng nực. Ngoài ra, bộ đôi còn ghi trọn điểm tinh tế và thanh lịch. Để tạo điểm nhấn cho outfit, các nàng có thể đeo vòng cổ ngọc trai hoặc một chiếc dây chuyền vàng, dáng mảnh.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-8-16872751079092011532433.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 3.\" id=\"img_595637763249729536\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-8-16872751079092011532433.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 3.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Thêm một cách diện quần ống suông đầy tinh tế cho nàng công sở, đó là combo áo màu xanh đậm kết hợp với quần âu màu be. Set trang phục này sẽ tôn da sáng, đồng thời mang đến vẻ sang trọng cho người mặc. Những món đồ như sandal quai mảnh, túi cói giúp tổng thể thêm phóng khoáng và trẻ trung.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-7-16872751067801801402947.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 4.\" id=\"img_595637758418497536\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-7-16872751067801801402947.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 4.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Áo sơ mi trắng kết hợp với quần âu màu xám là công thức ai mặc cũng đẹp. Chị em đừng quên sơ vin để hoàn thiện vẻ ngoài chỉn chu, và tôn dáng tối ưu. Đôi giày loafer luôn được đánh giá cao ở sự thanh lịch và không bao giờ lỗi mốt. Do đó, mẫu giày này rất lý tưởng để kết hợp với các outfit công sở.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-6-1687275105895199569489.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 5.\" id=\"img_595637754415955968\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-6-1687275105895199569489.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 5.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Những chiếc quần vải thô, màu be lý tưởng để lựa chọn trong thời tiết nóng bức. Mẫu quần này rất trẻ trung, nhưng cũng có sự tinh tế và trang nhã. Chị em dễ dàng có được vẻ ngoài sang xịn mịn khi kết hợp quần vải thô màu be với áo đen. Các chi tiết như cạp cao, đôi sandal quai mảnh và thao tác sơ vin sẽ cho hiệu quả hack dáng tối ưu.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-5-16872751045342056371804.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 6.\" id=\"img_595637749615894528\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-5-16872751045342056371804.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 6.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Những lúc không muốn cầu kỳ trong khoản phối đồ, chị em hãy áp dụng công thức áo sơ mi trắng kết hợp với quần âu đen. Combo này luôn thanh lịch, hiện đại và ăn nhập hoàn hảo với môi trường công sở chuyên nghiệp. Để vẻ ngoài thêm trau chuốt, chị em hãy ưu tiên quần âu đen có đường ly giữa, sơ vin gọn gàng và đi giày có quai hậu.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-4-16872751033201314621597.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 7.\" id=\"img_595637744507002880\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-4-16872751033201314621597.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 7.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Áo blouse trắng rất sang trọng, quý phái. Để trẻ hóa phong cách khi diện mẫu áo này, bạn nên kết hợp cùng quần âu màu hồng pastel. Nhờ chọn túi xách và giày cùng tông màu trắng, người mặc sẽ hoàn thiện được tổng thể trang phục tinh tế.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-3-1687275101964851128650.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 8.\" id=\"img_595637738497609728\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-3-1687275101964851128650.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 8.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Áo sơ mi màu tím nhạt kết hợp ăn ý với quần âu xám, tạo nên set trang phục trẻ trung và trang nhã. Những kiểu giày phù hợp với công thức này bao gồm sandal màu trung tính, giày cao gót mũi nhọn, loafer hoặc giày búp bê tối giản.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-2-1687275100760674564920.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 9.\" id=\"img_595637733534932992\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-2-1687275100760674564920.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 9.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Mẫu áo sơ mi màu xanh vốn đã nổi bật, nên chị em hãy cân bằng outfit bằng một chiếc quần âu ống suông màu trung tính. Khi hoàn thiện style công sở, sơ vin là cách đơn giản nhất để có được vẻ ngoài thanh lịch, chỉn chu.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/20/photo-1-1687275096729582357424.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 10.\" id=\"img_595637726831353856\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/20/photo-1-1687275096729582357424.jpg\" title=\"10 cách mặc quần ống rộng đi làm ngày nắng nóng - Ảnh 10.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Nữ tính và thanh lịch là ưu điểm của set áo blouse trắng kết hợp với quần âu màu nâu. Các món đồ như túi xách và giày trắng có tác dụng \"thắp sáng\" outfit, nhưng vẫn đảm bảo sự tinh tế cho người mặc.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Nguồn: kenh14.vn</span></p>\r\n', 'photo-7-16872751067801801402947.webp', '2023-06-30 11:55:59', '2023-06-30 11:55:59', '10-cach-mac-quan-ong-rong-di-lam-ngay-nang-nong', 3, '3'),
('10 cách mặc áo kẻ ngang trẻ trung, tinh tế', '<h1><strong><span style=\"font-size:18px\">Áo kẻ ngang là món thời trang rất đáng sắm cho tủ đồ mùa hè.</span></strong></h1>\r\n\r\n<p><span style=\"font-size:18px\">Nhắc đến các xu hướng thời trang của mùa hè 2023, không thể quên nói tới áo kẻ ngang. Kiểu áo họa tiết này vốn dĩ là món thời trang kinh điển, luôn chuẩn mốt theo năm tháng. Tuy nhiên, hè năm nay, áo kẻ ngang dường như phủ sóng nhiều hơn hẳn so với năm trước. Áo kẻ ngang ghi điểm ở sự nổi bật, trẻ trung mà vẫn toát lên vẻ thanh lịch. Chị em có thể biến hóa đa dạng với áo kẻ ngang, tạo nên outfit phù hợp từ đi làm đến đi chơi. Để mặc đẹp với áo kẻ ngang, các nàng hãy tham khảo 10 set đồ sau:</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-10-16870047686502062165816.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 1.\" id=\"img_594503877556797440\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-10-16870047686502062165816.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 1.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Áo kẻ ngang và quần jeans là công thức rất quen thuộc. Dẫu vậy, combo này vẫn được ưa chuộng mỗi mùa hè. Áo kẻ ngang và quần jeans sẽ nhân đôi hiệu quả hack tuổi. Khi sơ vin gọn gàng, chị em còn có được vẻ ngoài thanh lịch.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-9-1687004766454571925812.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 2.\" id=\"img_594503868337717248\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-9-1687004766454571925812.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 2.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Bên cạnh quần jeans, áo kẻ ngang còn kết hợp ăn ý với quần màu be. Không chỉ trẻ trung, bộ đôi áo kẻ ngang và quần màu be còn có sự trang nhã, tinh tế. Đôi giày sneaker màu trung tính là mảnh ghép hoàn hảo, để duy trì độ trang nhã của outfit. Ngoài ra, chị em đừng quên nhấn nhá thắt lưng. Đây là món phụ kiện nhỏ nhưng có công dụng nâng tầm set trang phục.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-8-16870047644821535971752.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 3.\" id=\"img_594503863013322752\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-8-16870047644821535971752.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 3.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Áo kẻ ngang trễ vai có vai trò tôn lên nét nữ tính và quyến rũ của người diện. Để tạo nên vẻ ngoài chỉn chu, sang trọng, chị em có thể kết hợp áo kẻ ngang trễ vai với quần âu, sau đó sơ vin gọn gàng. Túi xách và giày dép màu trung tính sẽ giữ nguyên vẻ tinh tế của tổng thể outfit.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-7-16870047623122070337330.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 4.\" id=\"img_594503851310977024\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-7-16870047623122070337330.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 4.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Dù mang tông màu đen - trắng làm chủ đạo nhưng set trang phục trên không gây cảm giác nhàm chán. Công thức áo thun kẻ ngang kết hợp với quần short đen giúp giải nhiệt mùa hè, và hoàn thiện vẻ ngoài năng động, trẻ trung. Bạn nên ghim công thức này cho những chuyến du lịch hoặc khi dạo phố cuối tuần.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-6-1687004760951496860401.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 5.\" id=\"img_594503845179379712\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-6-1687004760951496860401.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 5.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Chị em sẽ có vẻ ngoài sang xịn mịn khi kết hợp áo thun kẻ ngang với quần short màu nâu. Sơ vin luôn là bí kíp đơn giản để nâng tầm outfit. Ngoài ra, thao tác này cũng giúp hack dáng tối ưu. Đối với công thức áo kẻ ngang + quần short, bạn hãy đi một số kiểu giày phóng khoáng như sandal, mule, sneaker trắng hoặc loafer.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-5-16870047598101906594977.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 6.\" id=\"img_594503840341876736\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-5-16870047598101906594977.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 6.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Bên cạnh áo thun kẻ màu trung tính, chị em hãy tham khảo những phiên bản màu sắc nổi bật hơn. Mẫu áo kẻ đỏ tạo điểm nhấn đầy tươi tắn và ngọt ngào cho người diện. Item này kết hợp ăn ý với quần jeans xanh, mang đến vẻ hài hòa cho người diện. Tổng thể outfit trở nên nữ tính hơn nữa nhờ chiếc mũ bucket, túi cói và vòng cổ hình trái tim siêu \"hot\" hè này.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-4-16870047587082047572631.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 7.\" id=\"img_594503835655700480\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-4-16870047587082047572631.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 7.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Thanh lịch và trang nhã là ấn tượng về combo áo kẻ ngang cổ bẻ kết hợp với quần jeans trắng. Những món phụ kiện màu nâu như túi xách da, thắt lưng, dép lê đã cộng thêm điểm sang trọng cho tổng thể trang phục. Bạn thậm chí có thể áp dụng công thức này tới công sở nếu thay thế dép lê bằng một kiểu giày đứng dáng hơn như giày búp bê đơn giản, giày cao gót mũi nhọn.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-3-1687004757519265431787.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 8.\" id=\"img_594503830545850368\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-3-1687004757519265431787.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 8.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Áo kẻ tông xanh lá chính là điểm nhấn của set trang phục. Khi kết hợp mẫu áo với quần jeans xanh, hiệu quả hack tuổi được tăng thêm. Dù nổi bật và tươi trẻ, set trang phục vẫn có sự trang nhã.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-2-16870047564891285271551.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 9.\" id=\"img_594503826721193984\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-2-16870047564891285271551.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 9.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Đừng chỉ kết hợp áo kẻ ngang với quần jeans, bạn hãy mix mẫu áo cùng chân váy để tạo nên set đồ nữ tính, bay bổng. Công thức áo kẻ ngang + chân váy trắng không những trẻ trung mà còn thanh lịch, sang trọng.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><a href=\"https://kenh14cdn.com/203336854389633024/2023/6/17/photo-1-16870047551491142445178.jpg\" target=\"_blank\" title=\"\"><img alt=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 10.\" id=\"img_594503822308974592\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2023/6/17/photo-1-16870047551491142445178.jpg\" title=\"10 cách mặc áo kẻ ngang trẻ trung, tinh tế - Ảnh 10.\" /></a></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Thích sự trẻ trung, năng động thì chị em hãy tham khảo mẫu áo kẻ mang tông màu đen - hồng nhạt kết hợp với quần jeans. Sự tươi tắn và ngọt ngào của outfit không hề \"lệch pha\" với nàng ngoài 30 tuổi. Do đó, chị em hãy ghim công thức này để đổi mới phong cách mùa hè.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Nguồn: kenh14.vn</span></p>\r\n', 'photo-9-1687004766454571925812.webp', '2023-06-30 11:56:55', '2023-06-30 11:56:55', '10-cach-mac-ao-ke-ngang-tre-trung-tinh-te', 4, '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
