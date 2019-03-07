-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 07, 2019 lúc 11:25 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopsach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `ma_chu_de` int(11) NOT NULL,
  `ten_chude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`ma_chu_de`, `ten_chude`) VALUES
(2, 'Sách tiếng Việt'),
(3, 'Sách tiếng Anh'),
(4, 'Truyện Cổ Tích'),
(5, 'Khoa học xã hội'),
(6, 'Giáo trình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cmt`
--

CREATE TABLE `cmt` (
  `id_cmt` int(11) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ma_sach` int(11) NOT NULL,
  `time_cmt` date NOT NULL,
  `noidung_cmt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cmt`
--

INSERT INTO `cmt` (`id_cmt`, `ma_kh`, `ma_sach`, `time_cmt`, `noidung_cmt`) VALUES
(5, 1, 36, '2019-03-05', 'quyển này khá hay nhé'),
(6, 1, 36, '2019-03-04', 'sách rất hay'),
(7, 1, 36, '2019-03-05', 'đâsdsa'),
(8, 1, 33, '2019-03-05', 'Tớ đã mua rồi nhé. cảm ơn shop'),
(9, 13, 36, '2019-03-06', 'hay nè'),
(10, 1, 35, '2019-03-06', 'sách hay quá'),
(11, 1, 28, '2019-03-07', 'quyển này khá hay nhé'),
(12, 1, 36, '2019-03-07', 'kajsdbak'),
(13, 1, 36, '2019-03-07', 'sdasd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ma_hd` int(11) NOT NULL,
  `ma_sach` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dathanhtoan` tinyint(1) NOT NULL,
  `tinhtranggiaohang` int(11) NOT NULL,
  `ngaydathang` date NOT NULL,
  `ma_kh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ma_hd`, `ma_sach`, `soluong`, `dathanhtoan`, `tinhtranggiaohang`, `ngaydathang`, `ma_kh`) VALUES
(48, 32, 1, 0, 3, '2018-11-09', 20),
(49, 22, 6, 0, 2, '2018-11-09', 20),
(56, 31, 18, 0, 1, '2018-11-09', 1),
(57, 34, 4, 0, 1, '2018-11-09', 1),
(58, 35, 1, 0, 1, '2018-11-09', 20),
(59, 36, 1, 0, 0, '2018-11-09', 20),
(60, 33, 1, 0, 0, '2018-11-09', 20),
(61, 32, 1, 0, 0, '2018-11-09', 20),
(62, 31, 2, 0, 1, '2018-11-12', 1),
(63, 36, 2, 0, 1, '2018-11-19', 1),
(64, 35, 1, 0, 1, '2018-11-23', 13),
(65, 36, 4, 0, 1, '2018-12-02', 1),
(66, 33, 1, 0, 1, '2018-12-06', 1),
(67, 36, 1, 0, 0, '2019-02-19', 13),
(68, 32, 1, 0, 0, '2019-02-19', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ma_nxb` int(11) NOT NULL,
  `ten_nxb` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `sdt_nxb` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ma_nxb`, `ten_nxb`, `dia_chi`, `sdt_nxb`) VALUES
(1, 'Kim Đồng', 'Hà Nội', '1245789'),
(2, 'Sam Sung', 'Hà Nội', '1231231231'),
(3, 'NXB Hội Nhà Văn, Phương Nam Book', 'Hà Nội', '1245789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `ma_sach` int(11) NOT NULL,
  `ten_sach` varchar(255) NOT NULL,
  `gia_ban` decimal(10,0) NOT NULL,
  `mo_ta` text NOT NULL,
  `anh_bia` varchar(255) NOT NULL,
  `ngay_cap_nhat` date NOT NULL,
  `so_luong_ton` int(11) NOT NULL,
  `ma_nxb` int(11) NOT NULL,
  `ma_chu_de` int(11) NOT NULL,
  `chuot` int(11) NOT NULL,
  `ma_tg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`ma_sach`, `ten_sach`, `gia_ban`, `mo_ta`, `anh_bia`, `ngay_cap_nhat`, `so_luong_ton`, `ma_nxb`, `ma_chu_de`, `chuot`, `ma_tg`) VALUES
(21, 'Em đừng chết có được không', '65000', 'Em Đừng Chết Được Không là tập hợp hai mươi ghi chép về những giấc mơ của Vũ Lập Nhật, cả hai mươi giấc mơ đều có cốt truyện tương đối chi tiết như những truyện ngắn, nhưng đồng thời vẫn giữ vẻ mơ hồ, huyền ảo như cảm giác ta thường có mỗi khi hồi tưởng về giấc mơ đêm qua. Những câu chuyện trong mơ phần lớn đều diễn ra theo cách thức kỳ lạ, thường kết thúc buồn hoặc dở dang nhưng chúng phần nào để lại một số manh mối để truy cầu về nguồn gốc hiện thực - như một bối cảnh mờ ảo đằng sau sân khấu chính của giấc mơ, và trong quá trình ngược chiều đó, đến lượt giấc mơ lại trở thành bối cảnh cho hiện thực đứng trên sàn diễn.\r\n\r\n* * * * *\r\n\r\nỞ lâu trong các giấc mơ quả thực khiến người ta thấy mình đơn độc như thế nào vì câu chuyện trong những giấc mơ ấy, chỉ bản thân mình là trải qua, chỉ bản thân mình là hiểu rõ nhất. Người ta có thể viết lại giấc mơ ấy, có thể kể cho người khác nghe về nó nhưng những người khác sẽ chẳng bao giờ thực sự hiểu được điều mà người nằm mơ đã trải qua.\r\n\r\n(Trích Chỉ là một thớ thịt mà thôi)\r\n\r\nNgay khoảnh khắc tôi bước qua đoạn thanh chắn bị mất, đột nhiên, tiếng chuông cửa vang lên rất lớn. Âm thanh ấy khiến tôi giật mình và vấp chân ngã đúng vào khoảng hở của thanh chắn. Thời khắc tôi rơi xuống tầng dưới, mọi thứ quá đỗi sống động và thật. Hình như tôi đă khóc. Thật sự khóc. Nhưng cơn gió tạo nên trong không khí lúc cơ thể tôi đang rơi đã kịp lau nó đi mất rồi. Tôi đã khóc khi nhìn lên căn phòng em - nơi mà lẽ ra chỉ còn một chút thôi là tôi đến được cứ ngày càng xa dần, cao dần và tôi thì thấp dần. \"Tạm biệt em\" tôi đã khóc khi chỉ nghĩ đến ba chữ đó mà chẳng kịp thốt ra thành lời trước khi tỉnh dậy.', 'em-dung-chet-duoc-khong.140x204.b.jpg', '2018-11-04', 100, 3, 2, 2, 1),
(22, 'AMERICA SHARK TANK', '168000', 'Bạn học được gì từ cuốn Thành Công Trong Kinh Doanh Và Cuộc Sống Cùng Shark Robert Herjavec\r\n\r\nThật thú vị hơn, khi tác giả đã bộc bạch rõ những điều hết sức thực tế của chính mình mà bạn đọc đều dễ dàng thấm hiểu. Những bài học đều có minh chứng rõ ràng kết nối giữa cuộc sống và công việc kinh doanh của tác giả. Một số bài học được nhắc đến trong cuốn sách như sau:\r\n\r\n- Hãy là chính mình, chứ đừng là người mà bạn nghĩ là chính mình\r\n\r\n- Nguyên nhân khiến việc trình bày ý tưởng thất bại\r\n\r\n- Học hỏi từ thất bại, thu lợi từ những cơ hội\r\n\r\n- Làm sếp của chính mình\r\n\r\n- Cách biến ít thành nhiều\r\n\r\n- Đặt tiền của bạn vào doanh nhân có định hướng\r\n\r\n- Nuôi dưỡng sự nhiệt tình…', 'thanh-cong-trong-kinh-doanh-va-cuoc-song-cung-shark-robert-herjavec.140x204.b.jpg', '2018-11-04', 100, 1, 2, 9, 1),
(23, 'RÈN LUYỆN Ý CHÍ CHIẾN THẮNG', '148000', 'Không có một yếu tố nào có thể đảm bảo sự thành công nhưng nếu tập trung rèn luyện ý chí sẽ giúp bạn tạo ra cơ hội cho mình.\r\n\r\nNhững câu chuyện đời thường và thực tế kể về những tấm gương ý chí, đầy nghị lực để vươn lên khó khăn của số phận nghiệt ngã không phải ít, nhưng để những câu chuyện đó trở thành động lực cho những người đang bế tắc, cho những ai đang mất đi phương hướng của bản thân thì thật không dễ dàng gì.\r\n\r\nHenry Ford từng nói rằng: “Thất bại chỉ đơn thuần là cơ hội để bắt đầu lại một cách thông minh hơn. Ý chí và lòng quyết tâm là ngọn lửa của cuộc sống, là sức mạnh của tinh thần, là tài sản vô hình lớn nhất của con người”. Cái được của bền bỉ ý chí mỗi con người chính là sự chiến thắng bản thân mình. Trải qua những gian nan, bạn trở nên mạnh mẽ và không còn phải sợ hãi trước những sóng gió của cuộc đời.\r\n\r\nBí quyết của thành công là biết rút ra bài học từ thất bại. Khi đó thất bại sẽ trở thành hạt giống của thành công sau này. Vị cố thủ tướng tài giỏi nước Anh Winston Churchill đã nói: “Tôi có thể tóm lược những bài học quý giá của cuộc đời mình trong 10 từ: Không bao giờ bỏ cuộc, không bao giờ bỏ cuộc”. Chỉ người đủ sức chấp nhận thất bại mới đủ sức để chiến thắng. Và rèn luyện ý chí là bí quyết mang đến những cơ hội thành công. Người ta thường tìm thấy cơ hội trong khó khăn và thử thách, bởi vậy mà để tìm thấy một cơ hội là điều không hề dễ dàng. Nhưng chính ý chí và nghị lực của bên trong con người “Bạn có thực sự muốn nắm lấy cơ hội”, “Bạn có thực sự quyết tâm để vượt qua giông bão và muốn chiến thắng?”. Trả lời được những câu hỏi đó là bạn đã định hướng cho mình về ý chí rồi.', 'ren-luyen-y-chi-chien-thang-cung-shark-robert-herjavec.140x204.b.jpg', '2018-11-04', 100, 2, 3, 0, 2),
(24, 'PHONG CÁCH PARK HANG SEO', '160000', 'Phong Cách Quản Trị Park Hang Seo - Bí Quyết Thành Công Của Doanh Nghiệp Hàn Quốc\r\n\r\nThành công của đội bóng đá U23 Việt Nam tranh cúp AFC 2018 vừa qua để lại những giá trị và bài học kinh nghiệm sâu sắc từ nhiều góc nhìn khác nhau. Để đi đến thành công, có rất nhiều yếu tố, nhưng yếu tố quan trọng nhất vẫn là cách tổ chức và vận hành, phong cách quản trị của tập thể đó.\r\n\r\nTrong thành công của U23, có hình ảnh của những người Hàn Quốc,. Quyển sách này không chỉ lại câu chuyện, cách làm việc, vận hành tạo ra kỳ tích U23 Việt Nam mà còn là một tài liệu quý miêu tả khá rõ ràng và súc tích, so sánh cách làm việc của Park Hang Seo nói riêng và mở rộng ra là giới thiệu những đặc tính quản trị doanh nghiệp của người Hàn Quốc nói chung, đưa ra những bài học hữu ích và hiệu quả.', 'phong-cach-quan-tri-park-hang-seo.140x204.b.jpg', '2018-11-04', 100, 3, 2, 4, 1),
(26, 'LỊCH BÀN CHỮ A THƯ PHÁP', '450000', '<p><strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong></p><p>Những độc giả trung th&agrave;nh của David Grossman hẳn sẽ sửng sốt khi đọc t&ecirc;n cuốn tiểu thuyết n&agrave;y.&nbsp;<strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong>&nbsp;ư? C&acirc;u mở đầu quen thuộc của c&aacute;c truyện cười ư? David Grossman đ&acirc;y sao- một người viết nghi&ecirc;m nghị đầy l&ograve;ng trắc ẩn, một người cha mất con trai v&igrave; chiến tranh?</p><p>Một con ngựa bước v&agrave;o qu&aacute;n bar. G&atilde; pha chế hất h&agrave;m, &ldquo;&Ecirc;, sao mặt d&agrave;i thuỗn ra vậy?&rdquo;</p><p>Kh&ocirc;ng, cuốn s&aacute;ch n&agrave;y sẽ kh&ocirc;ng khiến bạn cười. Cho d&ugrave; c&acirc;u chuyện g&oacute;i gọn trong buổi diễn h&agrave;i độc thoại hơn hai tiếng đồng hồ. Cho d&ugrave; nh&acirc;n vật ch&iacute;nh, Dovaleh Greenstein, một diễn vi&ecirc;n h&agrave;i hết thời, sắp trao cho c&aacute;c bạn một buổi diễn độc nhất v&ocirc; nhị, s&ocirc; diễn kết th&uacute;c sự nghiệp, khi anh nh&igrave;n lại cuộc đời, di sản, c&ugrave;ng một mất m&aacute;t đ&atilde; định h&igrave;nh n&ecirc;n con người m&igrave;nh. Một lần nữa, đừng tr&ocirc;ng đợi tiếng cười, bởi chỉ c&oacute; sự ngượng nghịu, nỗi ch&aacute;n gh&eacute;t bản th&acirc;n, cơn cho&aacute;ng v&aacute;ng, v&agrave; nỗi đau.</p><p>Bởi ở đ&acirc;y nỗi đau, chứ kh&ocirc;ng phải tiếng cười, ch&iacute;nh l&agrave; liều thuốc chữa l&agrave;nh.</p>', 'banner_web_hinh-lich-2019_450x652_lich2.140x204.b.jpg', '2018-11-07', 100, 1, 2, 3, 1),
(27, 'THẦN THOẠI BẮC ÂU', '45000', 'Thần Thoại Bắc Âu\r\n\r\n\"Mỗi một nền văn hóa đều gắn với một truyền thuyết, sử thi, thần thoại riêng.\r\n\r\n\r\nKhi thế giới được hình thành hẳn ai cũng biết về Thần thoại Hy Lạp với những vị thần dũng mãnh hiên ngang như: Zeus, Hades, Poseidon. Thần thoại La Mã với Venus, Neptune, Jupiter...Thần thoại Bắc Âu với Odin, Thor hay Loki...\r\n\r\n\r\nThần thoại Bắc Âu bao gồm tôn giáo và tín ngưỡng thời kỳ tiền Ki-tô giáo, cùng với các truyền thuyết của cư dân vùng Scandinavia, kể cả những người định cư trên đảo Iceland - nơi tìm thấy nhiều tư liệu viết của thần thoại Bắc Âu. Dị bản nổi tiếng của thần thoại Bắc Âu là thần thoại các dân tộc gốc Đức vốn hình thành từ thần thoại các dân tộc Ấn-Âu tồn tại trước đó.\r\n\r\n\r\nTrong Thần thoại Bắc Âu không đơn thuần chỉ là cuộc chiến giữa thị tộc, thần thánh, người khổng lồ hay sự kiện \"\"đen tối\"\" nổi tiếng \"\"Ragnarok\"\"... mà bạn sẽ biết đến với những nét văn hóa đặc trưng của tín ngưỡng thời kỳ tiền Ki-tô giáo, cùng với các truyền thuyết của cư dân vùng Scandinavia, kể cả những người định cư trên đảo Iceland - nơi tìm thấy nhiều tư liệu viết của thần thoại Bắc Âu.\"', 'than-thoai-bac-au.140x204.b.jpg', '2018-11-04', 100, 2, 3, 2, 1),
(28, 'SỐNG CHẬM LẠI RỒI MỌI', '456222', 'Sống Chậm Lại Rồi Mọi Chuyện Sẽ Ổn Thôi\r\n\r\nBạn trẻ...\r\n\r\nBạn \"tham lam\" nhiều thứ chưa thuộc về mình.\r\n\r\nBạn đam mê nhiều điều mà quên đi bản thân.\r\n\r\nBạn vội vã sống vì sợ tuổi trẻ qua nhanh như một cơn mưa mùa hạ.\r\n\r\nĐến khi nhìn lại chính mình, bạn mới chợt nhận ra mình chỉ là tập hợp của những thiếu sót và con số 0 tròn trĩnh:\r\n\r\n- Không ngừng oán trách về bản thân\r\n\r\n- Không dám đối diện với sự thay đổi\r\n\r\n- Không có mục đích sống\r\n\r\n- Không hiểu giá trị của sự chia sẻ\r\n\r\n- Thích những điều mình không thể đạt được', '107563_song-cham-lai-roi-moi-chuyen-se-on-thoi.140x204.b.jpg', '2018-11-04', 100, 2, 3, 29, 2),
(29, 'MELODIES OF TIME', '456123', 'Mỹ Tâm - Melodies of Time (CD)\r\n\r\nMục lục\r\n\r\n1. Chuyện tình không suy tư\r\n\r\n2. Xin thời gian qua mau\r\n\r\n3. Bản tình cuối\r\n\r\n4. Những bước chân âm thầm\r\n\r\n5. Đợi yêu\r\n\r\n6. Sao em còn buồn\r\n\r\n7. Em đã thấy mùa xuân chưa\r\n\r\n8. Đoản khúc cuối cho em\r\n\r\n9. Chuyện hợp tan\r\n\r\n10. Có một dòng sông đã qua đời', 'Melodies-of-times-my-tam.140x204.b.jpg', '2018-11-04', 100, 3, 3, 1, 1),
(30, 'TRỊNH CÔNG SƠN - LỆ QUYÊN', '456789', 'TRỊNH CÔNG SƠN - LỆ QUYÊN', 'Le-Quyen-Trinh-Cong-Son-Dia-Than.140x204.b.jpg', '2018-11-04', 100, 2, 2, 4, 2),
(31, 'FRAGILE - HÀ ANH TUẤN (CD)', '4562', 'Album Fragile - Hà Anh Tuấn\r\n\r\n01. Người (Nhạc: Phạm Toàn Thắng)\r\n\r\n02. Em à (Nhạc: Phạm Toàn Thắng)\r\n\r\n03. Mong manh (Nhạc: Phạm Toàn Thắng)\r\n\r\n04. Hoàng hôn tháng tám (Nhạc: Phạm Toàn Thắng)\r\n\r\n05. Anh ấy cô ấy (Nhạc: Phạm Toàn Thắng)\r\n\r\n06. Người con gái ta thương (Nhạc: Phạm Toàn Thắng - thơ: Ngô Võ Giang Trung)\r\n\r\n07. Chuyện của mùa đông (Nhạc: Phạm Toàn Thắng)\r\n\r\n08. Tháng tư là lời nói dối của em (Nhạc: Phạm Toàn Thắng)\r\n\r\n09. Tái bút anh yêu em (Nhạc: Phạm Toàn Thắng)\r\n\r\n10. Cứ thế (Nhạc: Phạm Toàn Thắng)\r\n\r\n11. Lạc (Nhạc: Phạm Toàn Thắng)', 'bia-cd-ha-anh-tuan-fragile.140x204.b.jpg', '2018-11-04', 100, 2, 2, 34, 1),
(32, 'LỊCH BÀN CHỮ A VƯƠN TỚI ', '78945', 'Lịch Bàn Chữ A Vươn Tới Những Tầm Cao 24*18 (HN) - Có Note là một trong những Mẫu Lịch Tết được các doanh nghiệp lựa chọn để làm món quà ý nghĩa cuối năm dành tặng cho nhân viên, khách hàng hay đối tác của mình.\r\n\r\n\r\n– Kích thước: 24 x 18 cm\r\n\r\n– Quy cách: In Offset, 13 tờ, C230gsm\r\n\r\n– Giấy Bristol 230g/m2\r\n\r\n– Ruột 52 tuần\r\n\r\n– Giấy Fort 70g/m2\r\n\r\n– Có Note ghi chú', 'banner_web_hinh-lich-2019_450x652_lich2.140x204.b.jpg', '2018-11-04', 100, 3, 3, 43, 2),
(33, '3468 - PHẠM HOÀI NAM', '741258', 'Album 3468 - Phạm Hoài Nam\r\n\r\n1. Những khúc hát đã tan (Nhạc: F.Feldman - Quốc Bảo)\r\n\r\n2. Người yêu cũ có người yêu mới (Nhạc: Hamlet Trương)\r\n\r\n3. Phố mùa đông (Nhạc: Bảo Chấn)\r\n\r\n4. Ta có hẹn với tháng năm (Nhạc: Hồ Tiến Đạt)\r\n\r\n5. Tình khúc (Nhạc: Quốc Bảo)\r\n\r\n6. Cho niềm đau chìm xuống (Nhạc: Quốc Bảo)\r\n\r\n7. Dấu đêm (Nhạc: Việt Anh)', 'cd-3-4-6-8.140x204.b.jpg', '2018-11-04', 100, 3, 2, 86, 2),
(34, 'MÃI YÊU - MỸ TÂM SINGER', '456321', 'Album ra mắt đầu tiên của Mỹ Tâm chính thức được tái bản lại sau 17 năm vắng bóng trên thị trường, giữ nguyên bìa in như bản năm 2001, như một cách để Phương Nam Film lưu giữ những kỉ niệm một thời mới vào nghề của Tóc Nâu Môi Trầm Mỹ Tâm, để có một Mỹ Tâm thành công rực rỡ như hôm nay.\r\n\r\n1. Yêu Dại Khờ (Nhạc: Quang Huy)\r\n\r\n2. Hai Mươi (Nhạc: Quốc Bảo)\r\n\r\n3. Tình Mơ (Nhạc: Mỹ Tâm)\r\n\r\n4. Nhé Anh (live version) (Nhạc: Nguyễn Hà)\r\n\r\n5. Em Của Tôi (Nhạc: Quốc Bảo)', 'cd-my-tam-mai-yeu-201815221228425ab9c05a489c2.140x204.b.jpg', '2018-11-04', 100, 2, 3, 97, 1),
(35, 'Em đừng chết có được không', '100000', '<p><strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong></p><p>Những độc giả trung th&agrave;nh của David Grossman hẳn sẽ sửng sốt khi đọc t&ecirc;n cuốn tiểu thuyết n&agrave;y.&nbsp;<strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong>&nbsp;ư? C&acirc;u mở đầu quen thuộc của c&aacute;c truyện cười ư? David Grossman đ&acirc;y sao- một người viết nghi&ecirc;m nghị đầy l&ograve;ng trắc ẩn, một người cha mất con trai v&igrave; chiến tranh?</p><p>Một con ngựa bước v&agrave;o qu&aacute;n bar. G&atilde; pha chế hất h&agrave;m, &ldquo;&Ecirc;, sao mặt d&agrave;i thuỗn ra vậy?&rdquo;</p><p>Kh&ocirc;ng, cuốn s&aacute;ch n&agrave;y sẽ kh&ocirc;ng khiến bạn cười. Cho d&ugrave; c&acirc;u chuyện g&oacute;i gọn trong buổi diễn h&agrave;i độc thoại hơn hai tiếng đồng hồ. Cho d&ugrave; nh&acirc;n vật ch&iacute;nh, Dovaleh Greenstein, một diễn vi&ecirc;n h&agrave;i hết thời, sắp trao cho c&aacute;c bạn một buổi diễn độc nhất v&ocirc; nhị, s&ocirc; diễn kết th&uacute;c sự nghiệp, khi anh nh&igrave;n lại cuộc đời, di sản, c&ugrave;ng một mất m&aacute;t đ&atilde; định h&igrave;nh n&ecirc;n con người m&igrave;nh. Một lần nữa, đừng tr&ocirc;ng đợi tiếng cười, bởi chỉ c&oacute; sự ngượng nghịu, nỗi ch&aacute;n gh&eacute;t bản th&acirc;n, cơn cho&aacute;ng v&aacute;ng, v&agrave; nỗi đau.</p><p>Bởi ở đ&acirc;y nỗi đau, chứ kh&ocirc;ng phải tiếng cười, ch&iacute;nh l&agrave; liều thuốc chữa l&agrave;nh.</p>', '107563_song-cham-lai-roi-moi-chuyen-se-on-thoi.140x204.b.jpg', '2018-11-07', 100, 3, 2, 53, 2),
(36, 'Con ngựa bước vào quán bar ư', '100000', '<p><strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong></p><p>Những độc giả trung th&agrave;nh của David Grossman hẳn sẽ sửng sốt khi đọc t&ecirc;n cuốn tiểu thuyết n&agrave;y.&nbsp;<strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong>&nbsp;ư? C&acirc;u mở đầu quen thuộc của c&aacute;c truyện cười ư? David Grossman đ&acirc;y sao- một người viết nghi&ecirc;m nghị đầy l&ograve;ng trắc ẩn, một người cha mất con trai v&igrave; chiến tranh?</p><p>Một con ngựa bước v&agrave;o qu&aacute;n bar. G&atilde; pha chế hất h&agrave;m, &ldquo;&Ecirc;, sao mặt d&agrave;i thuỗn ra vậy?&rdquo;</p><p>Kh&ocirc;ng, cuốn s&aacute;ch n&agrave;y sẽ kh&ocirc;ng khiến bạn cười. Cho d&ugrave; c&acirc;u chuyện g&oacute;i gọn trong buổi diễn h&agrave;i độc thoại hơn hai tiếng đồng hồ. Cho d&ugrave; nh&acirc;n vật ch&iacute;nh, Dovaleh Greenstein, một diễn vi&ecirc;n h&agrave;i hết thời, sắp trao cho c&aacute;c bạn một buổi diễn độc nhất v&ocirc; nhị, s&ocirc; diễn kết th&uacute;c sự nghiệp, khi anh nh&igrave;n lại cuộc đời, di sản, c&ugrave;ng một mất m&aacute;t đ&atilde; định h&igrave;nh n&ecirc;n con người m&igrave;nh. Một lần nữa, đừng tr&ocirc;ng đợi tiếng cười, bởi chỉ c&oacute; sự ngượng nghịu, nỗi ch&aacute;n gh&eacute;t bản th&acirc;n, cơn cho&aacute;ng v&aacute;ng, v&agrave; nỗi đau.</p><p>Bởi ở đ&acirc;y nỗi đau, chứ kh&ocirc;ng phải tiếng cười, ch&iacute;nh l&agrave; liều thuốc chữa l&agrave;nh.</p>', 'con-ngua-buoc-vao-quan-bar.140x204.b.jpg', '2018-11-09', 100, 1, 2, 445, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `ma_tg` int(11) NOT NULL,
  `ten_tg` varchar(255) NOT NULL,
  `diachi_tg` varchar(255) NOT NULL,
  `tieusu` text NOT NULL,
  `sdt_tg` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`ma_tg`, `ten_tg`, `diachi_tg`, `tieusu`, `sdt_tg`) VALUES
(1, 'Nguyễn Đình Hậu', 'Hà Nội', 'Học Giỏi', '094003047'),
(2, 'Nông Văn Khánh', 'Lạng Sơn', 'Cao Bằng', '982321'),
(3, 'Phùng Duy Thảo', 'SLNA', 'Có tiền án tiền sự', '123456789'),
(4, 'Dương Phương Nam', 'Ba Vì', 'haha', '12423312');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ma_kh` int(11) NOT NULL,
  `taikhoan_kh` varchar(255) NOT NULL,
  `matkhau_kh` varchar(255) NOT NULL,
  `email_kh` varchar(255) NOT NULL,
  `ten_kh` varchar(255) NOT NULL,
  `anh_kh` varchar(255) NOT NULL,
  `diachi_kh` varchar(255) NOT NULL,
  `sdt_kh` varchar(11) NOT NULL,
  `gioitinh_kh` tinyint(1) NOT NULL,
  `ngaysinh_kh` date NOT NULL,
  `quyen_kh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ma_kh`, `taikhoan_kh`, `matkhau_kh`, `email_kh`, `ten_kh`, `anh_kh`, `diachi_kh`, `sdt_kh`, `gioitinh_kh`, `ngaysinh_kh`, `quyen_kh`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@admin.com', 'Nguyễn Đình Hậu', 'IMG_6841.JPG', '43 Nguyễn Chí Thanh, Ba Đình, Hà Nội', '0123456789', 1, '1997-09-20', 1),
(10, 'hahah', 'f5283ab37e0a0aa26d2b04075e8f9769', 'admin2@admin.com', 'eqqweqw', 'anhnguoidung.jpg', 'đâsdasdas', '22345113', 0, '2000-01-02', 0),
(13, 'khachhang1', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@admin.com', 'Nguyễn Đình Hậu', '4.jpeg', 'Thái Nguyên', '0964003047', 0, '2018-11-06', 0),
(14, 'test', '4e4d6c332b6fe62a63afe56171fd3725', 'admin@admin.com', 'haha', 'anhnguoidung.jpg', '312321', 'dsad', 1, '2018-11-08', 0),
(19, 'hau', '827ccb0eea8a706c4c34a16891f84e7b', 'hau@hau.com', 'hau', 'anhnguoidung.jpg', '094002112', 'haha', 1, '2018-11-08', 0),
(20, 'admin2', '827ccb0eea8a706c4c34a16891f84e7b', 'hau@hau.com', 'admin', 'anhnguoidung.jpg', 'Thái Nguyên', '123456', 1, '2018-11-08', 0),
(21, 'admin3', '827ccb0eea8a706c4c34a16891f84e7b', 'hau@hau.comaa', 'Nguyễn Đình Hậu', 'IMG_1746 - Copy.JPG', 'Thái Nguyên', '123456', 1, '2018-11-08', 0),
(22, 'admin4', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@admin.com', 'sda', 'anhnguoidung.jpg', 'Thái Nguyên', '0964003047', 1, '2018-11-08', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thamgia`
--

CREATE TABLE `thamgia` (
  `ma_thamgia` int(11) NOT NULL,
  `ma_sach` int(11) NOT NULL,
  `ma_tg` int(11) NOT NULL,
  `vaitro` int(11) NOT NULL,
  `vitri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vote_sach`
--

CREATE TABLE `vote_sach` (
  `id_vote` int(11) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ma_sach` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vote_sach`
--

INSERT INTO `vote_sach` (`id_vote`, `ma_kh`, `ma_sach`, `vote`) VALUES
(1, 1, 36, 5),
(2, 13, 36, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`ma_chu_de`);

--
-- Chỉ mục cho bảng `cmt`
--
ALTER TABLE `cmt`
  ADD PRIMARY KEY (`id_cmt`),
  ADD KEY `ma_kh` (`ma_kh`),
  ADD KEY `ma_sach` (`ma_sach`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ma_hd`),
  ADD KEY `ma_kh` (`ma_kh`),
  ADD KEY `ma_sach` (`ma_sach`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ma_nxb`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`ma_sach`),
  ADD KEY `ma_NXB` (`ma_nxb`,`ma_chu_de`),
  ADD KEY `r7` (`ma_chu_de`),
  ADD KEY `ma_tg` (`ma_tg`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`ma_tg`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `thamgia`
--
ALTER TABLE `thamgia`
  ADD PRIMARY KEY (`ma_thamgia`),
  ADD KEY `ma_sach` (`ma_sach`),
  ADD KEY `ma_tg` (`ma_tg`);

--
-- Chỉ mục cho bảng `vote_sach`
--
ALTER TABLE `vote_sach`
  ADD PRIMARY KEY (`id_vote`),
  ADD KEY `ma_kh` (`ma_kh`),
  ADD KEY `ma_sach` (`ma_sach`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `ma_chu_de` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cmt`
--
ALTER TABLE `cmt`
  MODIFY `id_cmt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ma_hd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ma_nxb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `ma_sach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `ma_tg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `thamgia`
--
ALTER TABLE `thamgia`
  MODIFY `ma_thamgia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vote_sach`
--
ALTER TABLE `vote_sach`
  MODIFY `id_vote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cmt`
--
ALTER TABLE `cmt`
  ADD CONSTRAINT `cmt_ibfk_1` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`),
  ADD CONSTRAINT `cmt_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `taikhoan` (`ma_kh`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`),
  ADD CONSTRAINT `r1` FOREIGN KEY (`ma_kh`) REFERENCES `taikhoan` (`ma_kh`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`ma_nxb`) REFERENCES `nhaxuatban` (`ma_nxb`),
  ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`ma_chu_de`) REFERENCES `chude` (`ma_chu_de`),
  ADD CONSTRAINT `sach_ibfk_3` FOREIGN KEY (`ma_tg`) REFERENCES `tacgia` (`ma_tg`);

--
-- Các ràng buộc cho bảng `thamgia`
--
ALTER TABLE `thamgia`
  ADD CONSTRAINT `thamgia_ibfk_1` FOREIGN KEY (`ma_tg`) REFERENCES `tacgia` (`ma_tg`),
  ADD CONSTRAINT `thamgia_ibfk_2` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`);

--
-- Các ràng buộc cho bảng `vote_sach`
--
ALTER TABLE `vote_sach`
  ADD CONSTRAINT `vote_sach_ibfk_1` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`),
  ADD CONSTRAINT `vote_sach_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `taikhoan` (`ma_kh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
