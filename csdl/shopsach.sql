-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 29, 2019 lúc 08:09 AM
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
  `ma_chu_de` int(11) NOT NULL COMMENT 'Mã chủ đề',
  `ten_chude` varchar(255) NOT NULL COMMENT 'Tên chủ đề'
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
  `id_cmt` int(11) NOT NULL COMMENT 'Mã bình luận',
  `ma_kh` int(11) NOT NULL COMMENT 'Mã khách hàng',
  `ma_sach` int(11) NOT NULL COMMENT 'Mã sách',
  `time_cmt` date NOT NULL COMMENT 'Thời gian bình luận',
  `noidung_cmt` text NOT NULL COMMENT 'Nội dung bình luận'
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
(13, 1, 36, '2019-03-07', 'sdasd'),
(14, 1, 36, '2019-03-07', 'sdsad'),
(15, 13, 35, '2019-03-07', 'quyển này khá hay nhé'),
(16, 13, 32, '2019-03-07', 'quyển này khá hay nhé'),
(17, 13, 32, '2019-03-07', 'quyển này khá hay nhé'),
(18, 13, 32, '2019-03-07', 'đasa'),
(19, 13, 32, '2019-03-07', 'đasa'),
(20, 13, 32, '2019-03-07', 'dsadsadsa'),
(21, 13, 32, '2019-03-07', 'dsadsadsa'),
(22, 13, 32, '2019-03-07', 'dsadsadsa'),
(23, 1, 36, '2019-03-14', 'hehe'),
(24, 1, 31, '2019-03-14', 'ỵioio'),
(25, 1, 36, '2019-03-14', 'quyển này khá hay nhé'),
(26, 13, 31, '2019-03-18', 'dsdasdsa'),
(27, 1, 41, '2019-03-26', 'sách hay quá. hihi'),
(28, 1, 35, '2019-03-27', 'quyển này khá hay nhé'),
(29, 1, 35, '2019-03-27', 'quyển này khá hay nhé');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ma_hd` int(11) NOT NULL COMMENT 'Mã hóa đơn',
  `ma_sach` int(11) NOT NULL COMMENT 'Mã sách',
  `soluong` int(11) NOT NULL COMMENT 'Số lượng mua',
  `dathanhtoan` tinyint(1) NOT NULL COMMENT 'Tình trạng thanh toán',
  `tinhtranggiaohang` int(11) NOT NULL COMMENT 'Tình trạng giao hàng',
  `ngaydathang` date NOT NULL COMMENT 'Thời gian đặt hàng',
  `ma_kh` int(11) NOT NULL COMMENT 'Mã khách hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ma_hd`, `ma_sach`, `soluong`, `dathanhtoan`, `tinhtranggiaohang`, `ngaydathang`, `ma_kh`) VALUES
(48, 32, 1, 0, 3, '2018-11-09', 20),
(49, 22, 6, 0, 2, '2018-11-09', 20),
(58, 35, 1, 0, 3, '2018-11-09', 20),
(59, 36, 1, 0, 0, '2018-11-09', 20),
(60, 33, 1, 0, 0, '2018-11-09', 20),
(61, 32, 1, 0, 0, '2018-11-09', 20),
(64, 35, 1, 0, 1, '2018-11-23', 13),
(67, 36, 1, 0, 2, '2019-02-19', 13),
(68, 32, 1, 0, 2, '2019-02-19', 13),
(69, 40, 1, 0, 1, '2019-03-28', 1),
(70, 40, 1, 0, 1, '2019-03-28', 1),
(71, 39, 2, 0, 1, '2019-03-28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ma_nxb` int(11) NOT NULL COMMENT 'Mã nhà xuất bản',
  `ten_nxb` varchar(255) NOT NULL COMMENT 'Tên nhà xuất bản',
  `dia_chi` varchar(255) NOT NULL COMMENT 'Địa chỉ nhà xuất bản',
  `sdt_nxb` varchar(11) NOT NULL COMMENT 'Số điện thoại nhà xuất bản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ma_nxb`, `ten_nxb`, `dia_chi`, `sdt_nxb`) VALUES
(1, 'Kim Đồng', 'Hà Nội', '0987654321'),
(2, 'Sam Sung', 'Hà Nội', '0987654321'),
(3, 'NXB Hội Nhà Văn, Phương Nam Book', 'Hà Nội', '0987654321');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `ma_sach` int(11) NOT NULL COMMENT 'Mã sách',
  `ten_sach` varchar(255) NOT NULL COMMENT 'Tên sách',
  `gia_ban` decimal(10,0) NOT NULL COMMENT 'Đơn giá',
  `mo_ta` text NOT NULL COMMENT 'Mô tả sách',
  `anh_bia` varchar(255) NOT NULL COMMENT 'Ảnh bìa',
  `ngay_cap_nhat` date NOT NULL COMMENT 'Ngày cập nhật',
  `so_luong_ton` int(11) NOT NULL COMMENT 'Số lượng còn',
  `ma_nxb` int(11) NOT NULL COMMENT 'Mã nhà xuất bản',
  `ma_chu_de` int(11) NOT NULL COMMENT 'Mã chủ đề',
  `chuot` int(11) NOT NULL COMMENT 'Số lượt xem',
  `ma_tg` int(11) NOT NULL COMMENT 'Mã tác giả'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`ma_sach`, `ten_sach`, `gia_ban`, `mo_ta`, `anh_bia`, `ngay_cap_nhat`, `so_luong_ton`, `ma_nxb`, `ma_chu_de`, `chuot`, `ma_tg`) VALUES
(21, 'Em đừng chết có được không', '65000', 'Em Đừng Chết Được Không là tập hợp hai mươi ghi chép về những giấc mơ của Vũ Lập Nhật, cả hai mươi giấc mơ đều có cốt truyện tương đối chi tiết như những truyện ngắn, nhưng đồng thời vẫn giữ vẻ mơ hồ, huyền ảo như cảm giác ta thường có mỗi khi hồi tưởng về giấc mơ đêm qua. Những câu chuyện trong mơ phần lớn đều diễn ra theo cách thức kỳ lạ, thường kết thúc buồn hoặc dở dang nhưng chúng phần nào để lại một số manh mối để truy cầu về nguồn gốc hiện thực - như một bối cảnh mờ ảo đằng sau sân khấu chính của giấc mơ, và trong quá trình ngược chiều đó, đến lượt giấc mơ lại trở thành bối cảnh cho hiện thực đứng trên sàn diễn.\r\n\r\n* * * * *\r\n\r\nỞ lâu trong các giấc mơ quả thực khiến người ta thấy mình đơn độc như thế nào vì câu chuyện trong những giấc mơ ấy, chỉ bản thân mình là trải qua, chỉ bản thân mình là hiểu rõ nhất. Người ta có thể viết lại giấc mơ ấy, có thể kể cho người khác nghe về nó nhưng những người khác sẽ chẳng bao giờ thực sự hiểu được điều mà người nằm mơ đã trải qua.\r\n\r\n(Trích Chỉ là một thớ thịt mà thôi)\r\n\r\nNgay khoảnh khắc tôi bước qua đoạn thanh chắn bị mất, đột nhiên, tiếng chuông cửa vang lên rất lớn. Âm thanh ấy khiến tôi giật mình và vấp chân ngã đúng vào khoảng hở của thanh chắn. Thời khắc tôi rơi xuống tầng dưới, mọi thứ quá đỗi sống động và thật. Hình như tôi đă khóc. Thật sự khóc. Nhưng cơn gió tạo nên trong không khí lúc cơ thể tôi đang rơi đã kịp lau nó đi mất rồi. Tôi đã khóc khi nhìn lên căn phòng em - nơi mà lẽ ra chỉ còn một chút thôi là tôi đến được cứ ngày càng xa dần, cao dần và tôi thì thấp dần. \"Tạm biệt em\" tôi đã khóc khi chỉ nghĩ đến ba chữ đó mà chẳng kịp thốt ra thành lời trước khi tỉnh dậy.', 'em-dung-chet-duoc-khong.140x204.b.jpg', '2018-11-04', 100, 3, 2, 2, 1),
(22, 'AMERICA SHARK TANK', '168000', 'Bạn học được gì từ cuốn Thành Công Trong Kinh Doanh Và Cuộc Sống Cùng Shark Robert Herjavec\r\n\r\nThật thú vị hơn, khi tác giả đã bộc bạch rõ những điều hết sức thực tế của chính mình mà bạn đọc đều dễ dàng thấm hiểu. Những bài học đều có minh chứng rõ ràng kết nối giữa cuộc sống và công việc kinh doanh của tác giả. Một số bài học được nhắc đến trong cuốn sách như sau:\r\n\r\n- Hãy là chính mình, chứ đừng là người mà bạn nghĩ là chính mình\r\n\r\n- Nguyên nhân khiến việc trình bày ý tưởng thất bại\r\n\r\n- Học hỏi từ thất bại, thu lợi từ những cơ hội\r\n\r\n- Làm sếp của chính mình\r\n\r\n- Cách biến ít thành nhiều\r\n\r\n- Đặt tiền của bạn vào doanh nhân có định hướng\r\n\r\n- Nuôi dưỡng sự nhiệt tình…', 'thanh-cong-trong-kinh-doanh-va-cuoc-song-cung-shark-robert-herjavec.140x204.b.jpg', '2018-11-04', 100, 1, 2, 9, 1),
(23, 'RÈN LUYỆN Ý CHÍ CHIẾN THẮNG', '148000', 'Không có một yếu tố nào có thể đảm bảo sự thành công nhưng nếu tập trung rèn luyện ý chí sẽ giúp bạn tạo ra cơ hội cho mình.\r\n\r\nNhững câu chuyện đời thường và thực tế kể về những tấm gương ý chí, đầy nghị lực để vươn lên khó khăn của số phận nghiệt ngã không phải ít, nhưng để những câu chuyện đó trở thành động lực cho những người đang bế tắc, cho những ai đang mất đi phương hướng của bản thân thì thật không dễ dàng gì.\r\n\r\nHenry Ford từng nói rằng: “Thất bại chỉ đơn thuần là cơ hội để bắt đầu lại một cách thông minh hơn. Ý chí và lòng quyết tâm là ngọn lửa của cuộc sống, là sức mạnh của tinh thần, là tài sản vô hình lớn nhất của con người”. Cái được của bền bỉ ý chí mỗi con người chính là sự chiến thắng bản thân mình. Trải qua những gian nan, bạn trở nên mạnh mẽ và không còn phải sợ hãi trước những sóng gió của cuộc đời.\r\n\r\nBí quyết của thành công là biết rút ra bài học từ thất bại. Khi đó thất bại sẽ trở thành hạt giống của thành công sau này. Vị cố thủ tướng tài giỏi nước Anh Winston Churchill đã nói: “Tôi có thể tóm lược những bài học quý giá của cuộc đời mình trong 10 từ: Không bao giờ bỏ cuộc, không bao giờ bỏ cuộc”. Chỉ người đủ sức chấp nhận thất bại mới đủ sức để chiến thắng. Và rèn luyện ý chí là bí quyết mang đến những cơ hội thành công. Người ta thường tìm thấy cơ hội trong khó khăn và thử thách, bởi vậy mà để tìm thấy một cơ hội là điều không hề dễ dàng. Nhưng chính ý chí và nghị lực của bên trong con người “Bạn có thực sự muốn nắm lấy cơ hội”, “Bạn có thực sự quyết tâm để vượt qua giông bão và muốn chiến thắng?”. Trả lời được những câu hỏi đó là bạn đã định hướng cho mình về ý chí rồi.', 'ren-luyen-y-chi-chien-thang-cung-shark-robert-herjavec.140x204.b.jpg', '2018-11-04', 100, 2, 3, 0, 2),
(24, 'PHONG CÁCH PARK HANG SEO', '160000', 'Phong Cách Quản Trị Park Hang Seo - Bí Quyết Thành Công Của Doanh Nghiệp Hàn Quốc\r\n\r\nThành công của đội bóng đá U23 Việt Nam tranh cúp AFC 2018 vừa qua để lại những giá trị và bài học kinh nghiệm sâu sắc từ nhiều góc nhìn khác nhau. Để đi đến thành công, có rất nhiều yếu tố, nhưng yếu tố quan trọng nhất vẫn là cách tổ chức và vận hành, phong cách quản trị của tập thể đó.\r\n\r\nTrong thành công của U23, có hình ảnh của những người Hàn Quốc,. Quyển sách này không chỉ lại câu chuyện, cách làm việc, vận hành tạo ra kỳ tích U23 Việt Nam mà còn là một tài liệu quý miêu tả khá rõ ràng và súc tích, so sánh cách làm việc của Park Hang Seo nói riêng và mở rộng ra là giới thiệu những đặc tính quản trị doanh nghiệp của người Hàn Quốc nói chung, đưa ra những bài học hữu ích và hiệu quả.', 'phong-cach-quan-tri-park-hang-seo.140x204.b.jpg', '2018-11-04', 100, 3, 2, 4, 1),
(26, 'LỊCH BÀN CHỮ A THƯ PHÁP', '450000', '<p><strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong></p><p>Những độc giả trung th&agrave;nh của David Grossman hẳn sẽ sửng sốt khi đọc t&ecirc;n cuốn tiểu thuyết n&agrave;y.&nbsp;<strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong>&nbsp;ư? C&acirc;u mở đầu quen thuộc của c&aacute;c truyện cười ư? David Grossman đ&acirc;y sao- một người viết nghi&ecirc;m nghị đầy l&ograve;ng trắc ẩn, một người cha mất con trai v&igrave; chiến tranh?</p><p>Một con ngựa bước v&agrave;o qu&aacute;n bar. G&atilde; pha chế hất h&agrave;m, &ldquo;&Ecirc;, sao mặt d&agrave;i thuỗn ra vậy?&rdquo;</p><p>Kh&ocirc;ng, cuốn s&aacute;ch n&agrave;y sẽ kh&ocirc;ng khiến bạn cười. Cho d&ugrave; c&acirc;u chuyện g&oacute;i gọn trong buổi diễn h&agrave;i độc thoại hơn hai tiếng đồng hồ. Cho d&ugrave; nh&acirc;n vật ch&iacute;nh, Dovaleh Greenstein, một diễn vi&ecirc;n h&agrave;i hết thời, sắp trao cho c&aacute;c bạn một buổi diễn độc nhất v&ocirc; nhị, s&ocirc; diễn kết th&uacute;c sự nghiệp, khi anh nh&igrave;n lại cuộc đời, di sản, c&ugrave;ng một mất m&aacute;t đ&atilde; định h&igrave;nh n&ecirc;n con người m&igrave;nh. Một lần nữa, đừng tr&ocirc;ng đợi tiếng cười, bởi chỉ c&oacute; sự ngượng nghịu, nỗi ch&aacute;n gh&eacute;t bản th&acirc;n, cơn cho&aacute;ng v&aacute;ng, v&agrave; nỗi đau.</p><p>Bởi ở đ&acirc;y nỗi đau, chứ kh&ocirc;ng phải tiếng cười, ch&iacute;nh l&agrave; liều thuốc chữa l&agrave;nh.</p>', 'banner_web_hinh-lich-2019_450x652_lich2.140x204.b.jpg', '2018-11-07', 100, 1, 2, 4, 1),
(27, 'THẦN THOẠI BẮC ÂU', '45000', 'Thần Thoại Bắc Âu\r\n\r\n\"Mỗi một nền văn hóa đều gắn với một truyền thuyết, sử thi, thần thoại riêng.\r\n\r\n\r\nKhi thế giới được hình thành hẳn ai cũng biết về Thần thoại Hy Lạp với những vị thần dũng mãnh hiên ngang như: Zeus, Hades, Poseidon. Thần thoại La Mã với Venus, Neptune, Jupiter...Thần thoại Bắc Âu với Odin, Thor hay Loki...\r\n\r\n\r\nThần thoại Bắc Âu bao gồm tôn giáo và tín ngưỡng thời kỳ tiền Ki-tô giáo, cùng với các truyền thuyết của cư dân vùng Scandinavia, kể cả những người định cư trên đảo Iceland - nơi tìm thấy nhiều tư liệu viết của thần thoại Bắc Âu. Dị bản nổi tiếng của thần thoại Bắc Âu là thần thoại các dân tộc gốc Đức vốn hình thành từ thần thoại các dân tộc Ấn-Âu tồn tại trước đó.\r\n\r\n\r\nTrong Thần thoại Bắc Âu không đơn thuần chỉ là cuộc chiến giữa thị tộc, thần thánh, người khổng lồ hay sự kiện \"\"đen tối\"\" nổi tiếng \"\"Ragnarok\"\"... mà bạn sẽ biết đến với những nét văn hóa đặc trưng của tín ngưỡng thời kỳ tiền Ki-tô giáo, cùng với các truyền thuyết của cư dân vùng Scandinavia, kể cả những người định cư trên đảo Iceland - nơi tìm thấy nhiều tư liệu viết của thần thoại Bắc Âu.\"', 'than-thoai-bac-au.140x204.b.jpg', '2018-11-04', 100, 2, 3, 4, 1),
(28, 'SỐNG CHẬM LẠI RỒI MỌI', '456222', 'Sống Chậm Lại Rồi Mọi Chuyện Sẽ Ổn Thôi\r\n\r\nBạn trẻ...\r\n\r\nBạn \"tham lam\" nhiều thứ chưa thuộc về mình.\r\n\r\nBạn đam mê nhiều điều mà quên đi bản thân.\r\n\r\nBạn vội vã sống vì sợ tuổi trẻ qua nhanh như một cơn mưa mùa hạ.\r\n\r\nĐến khi nhìn lại chính mình, bạn mới chợt nhận ra mình chỉ là tập hợp của những thiếu sót và con số 0 tròn trĩnh:\r\n\r\n- Không ngừng oán trách về bản thân\r\n\r\n- Không dám đối diện với sự thay đổi\r\n\r\n- Không có mục đích sống\r\n\r\n- Không hiểu giá trị của sự chia sẻ\r\n\r\n- Thích những điều mình không thể đạt được', '107563_song-cham-lai-roi-moi-chuyen-se-on-thoi.140x204.b.jpg', '2018-11-04', 100, 2, 3, 29, 2),
(29, 'MELODIES OF TIME', '456123', 'Mỹ Tâm - Melodies of Time (CD)\r\n\r\nMục lục\r\n\r\n1. Chuyện tình không suy tư\r\n\r\n2. Xin thời gian qua mau\r\n\r\n3. Bản tình cuối\r\n\r\n4. Những bước chân âm thầm\r\n\r\n5. Đợi yêu\r\n\r\n6. Sao em còn buồn\r\n\r\n7. Em đã thấy mùa xuân chưa\r\n\r\n8. Đoản khúc cuối cho em\r\n\r\n9. Chuyện hợp tan\r\n\r\n10. Có một dòng sông đã qua đời', 'Melodies-of-times-my-tam.140x204.b.jpg', '2018-11-04', 100, 3, 3, 1, 1),
(30, 'TRỊNH CÔNG SƠN - LỆ QUYÊN', '456789', 'TRỊNH CÔNG SƠN - LỆ QUYÊN', 'Le-Quyen-Trinh-Cong-Son-Dia-Than.140x204.b.jpg', '2018-11-04', 100, 2, 2, 7, 2),
(31, 'FRAGILE - HÀ ANH TUẤN (CD)', '4562', 'Album Fragile - Hà Anh Tuấn\r\n\r\n01. Người (Nhạc: Phạm Toàn Thắng)\r\n\r\n02. Em à (Nhạc: Phạm Toàn Thắng)\r\n\r\n03. Mong manh (Nhạc: Phạm Toàn Thắng)\r\n\r\n04. Hoàng hôn tháng tám (Nhạc: Phạm Toàn Thắng)\r\n\r\n05. Anh ấy cô ấy (Nhạc: Phạm Toàn Thắng)\r\n\r\n06. Người con gái ta thương (Nhạc: Phạm Toàn Thắng - thơ: Ngô Võ Giang Trung)\r\n\r\n07. Chuyện của mùa đông (Nhạc: Phạm Toàn Thắng)\r\n\r\n08. Tháng tư là lời nói dối của em (Nhạc: Phạm Toàn Thắng)\r\n\r\n09. Tái bút anh yêu em (Nhạc: Phạm Toàn Thắng)\r\n\r\n10. Cứ thế (Nhạc: Phạm Toàn Thắng)\r\n\r\n11. Lạc (Nhạc: Phạm Toàn Thắng)', 'bia-cd-ha-anh-tuan-fragile.140x204.b.jpg', '2018-11-04', 100, 2, 2, 48, 1),
(32, 'LỊCH BÀN CHỮ A VƯƠN TỚI ', '78945', 'Lịch Bàn Chữ A Vươn Tới Những Tầm Cao 24*18 (HN) - Có Note là một trong những Mẫu Lịch Tết được các doanh nghiệp lựa chọn để làm món quà ý nghĩa cuối năm dành tặng cho nhân viên, khách hàng hay đối tác của mình.\r\n\r\n\r\n– Kích thước: 24 x 18 cm\r\n\r\n– Quy cách: In Offset, 13 tờ, C230gsm\r\n\r\n– Giấy Bristol 230g/m2\r\n\r\n– Ruột 52 tuần\r\n\r\n– Giấy Fort 70g/m2\r\n\r\n– Có Note ghi chú', 'banner_web_hinh-lich-2019_450x652_lich2.140x204.b.jpg', '2018-11-04', 100, 3, 3, 76, 2),
(33, '3468 - PHẠM HOÀI NAM', '741258', 'Album 3468 - Phạm Hoài Nam\r\n\r\n1. Những khúc hát đã tan (Nhạc: F.Feldman - Quốc Bảo)\r\n\r\n2. Người yêu cũ có người yêu mới (Nhạc: Hamlet Trương)\r\n\r\n3. Phố mùa đông (Nhạc: Bảo Chấn)\r\n\r\n4. Ta có hẹn với tháng năm (Nhạc: Hồ Tiến Đạt)\r\n\r\n5. Tình khúc (Nhạc: Quốc Bảo)\r\n\r\n6. Cho niềm đau chìm xuống (Nhạc: Quốc Bảo)\r\n\r\n7. Dấu đêm (Nhạc: Việt Anh)', 'cd-3-4-6-8.140x204.b.jpg', '2018-11-04', 100, 3, 2, 94, 2),
(34, 'MÃI YÊU - MỸ TÂM SINGER', '456321', 'Album ra mắt đầu tiên của Mỹ Tâm chính thức được tái bản lại sau 17 năm vắng bóng trên thị trường, giữ nguyên bìa in như bản năm 2001, như một cách để Phương Nam Film lưu giữ những kỉ niệm một thời mới vào nghề của Tóc Nâu Môi Trầm Mỹ Tâm, để có một Mỹ Tâm thành công rực rỡ như hôm nay.\r\n\r\n1. Yêu Dại Khờ (Nhạc: Quang Huy)\r\n\r\n2. Hai Mươi (Nhạc: Quốc Bảo)\r\n\r\n3. Tình Mơ (Nhạc: Mỹ Tâm)\r\n\r\n4. Nhé Anh (live version) (Nhạc: Nguyễn Hà)\r\n\r\n5. Em Của Tôi (Nhạc: Quốc Bảo)', 'cd-my-tam-mai-yeu-201815221228425ab9c05a489c2.140x204.b.jpg', '2018-11-04', 100, 2, 3, 98, 1),
(35, 'Em đừng chết có được không', '100000', '<p><strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong></p><p>Những độc giả trung th&agrave;nh của David Grossman hẳn sẽ sửng sốt khi đọc t&ecirc;n cuốn tiểu thuyết n&agrave;y.&nbsp;<strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong>&nbsp;ư? C&acirc;u mở đầu quen thuộc của c&aacute;c truyện cười ư? David Grossman đ&acirc;y sao- một người viết nghi&ecirc;m nghị đầy l&ograve;ng trắc ẩn, một người cha mất con trai v&igrave; chiến tranh?</p><p>Một con ngựa bước v&agrave;o qu&aacute;n bar. G&atilde; pha chế hất h&agrave;m, &ldquo;&Ecirc;, sao mặt d&agrave;i thuỗn ra vậy?&rdquo;</p><p>Kh&ocirc;ng, cuốn s&aacute;ch n&agrave;y sẽ kh&ocirc;ng khiến bạn cười. Cho d&ugrave; c&acirc;u chuyện g&oacute;i gọn trong buổi diễn h&agrave;i độc thoại hơn hai tiếng đồng hồ. Cho d&ugrave; nh&acirc;n vật ch&iacute;nh, Dovaleh Greenstein, một diễn vi&ecirc;n h&agrave;i hết thời, sắp trao cho c&aacute;c bạn một buổi diễn độc nhất v&ocirc; nhị, s&ocirc; diễn kết th&uacute;c sự nghiệp, khi anh nh&igrave;n lại cuộc đời, di sản, c&ugrave;ng một mất m&aacute;t đ&atilde; định h&igrave;nh n&ecirc;n con người m&igrave;nh. Một lần nữa, đừng tr&ocirc;ng đợi tiếng cười, bởi chỉ c&oacute; sự ngượng nghịu, nỗi ch&aacute;n gh&eacute;t bản th&acirc;n, cơn cho&aacute;ng v&aacute;ng, v&agrave; nỗi đau.</p><p>Bởi ở đ&acirc;y nỗi đau, chứ kh&ocirc;ng phải tiếng cười, ch&iacute;nh l&agrave; liều thuốc chữa l&agrave;nh.</p>', '107563_song-cham-lai-roi-moi-chuyen-se-on-thoi.140x204.b.jpg', '2018-11-07', 100, 3, 2, 80, 2),
(36, 'Con ngựa bước vào quán bar', '100000', '<p><strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong></p><p>Những độc giả trung th&agrave;nh của David Grossman hẳn sẽ sửng sốt khi đọc t&ecirc;n cuốn tiểu thuyết n&agrave;y.&nbsp;<strong>Con Ngựa Bước V&agrave;o Qu&aacute;n Bar</strong>&nbsp;ư? C&acirc;u mở đầu quen thuộc của c&aacute;c truyện cười ư? David Grossman đ&acirc;y sao- một người viết nghi&ecirc;m nghị đầy l&ograve;ng trắc ẩn, một người cha mất con trai v&igrave; chiến tranh?</p><p>Một con ngựa bước v&agrave;o qu&aacute;n bar. G&atilde; pha chế hất h&agrave;m, &ldquo;&Ecirc;, sao mặt d&agrave;i thuỗn ra vậy?&rdquo;</p><p>Kh&ocirc;ng, cuốn s&aacute;ch n&agrave;y sẽ kh&ocirc;ng khiến bạn cười. Cho d&ugrave; c&acirc;u chuyện g&oacute;i gọn trong buổi diễn h&agrave;i độc thoại hơn hai tiếng đồng hồ. Cho d&ugrave; nh&acirc;n vật ch&iacute;nh, Dovaleh Greenstein, một diễn vi&ecirc;n h&agrave;i hết thời, sắp trao cho c&aacute;c bạn một buổi diễn độc nhất v&ocirc; nhị, s&ocirc; diễn kết th&uacute;c sự nghiệp, khi anh nh&igrave;n lại cuộc đời, di sản, c&ugrave;ng một mất m&aacute;t đ&atilde; định h&igrave;nh n&ecirc;n con người m&igrave;nh. Một lần nữa, đừng tr&ocirc;ng đợi tiếng cười, bởi chỉ c&oacute; sự ngượng nghịu, nỗi ch&aacute;n gh&eacute;t bản th&acirc;n, cơn cho&aacute;ng v&aacute;ng, v&agrave; nỗi đau.</p><p>Bởi ở đ&acirc;y nỗi đau, chứ kh&ocirc;ng phải tiếng cười, ch&iacute;nh l&agrave; liều thuốc chữa l&agrave;nh.</p>', 'con-ngua-buoc-vao-quan-bar.140x204.b.jpg', '2019-03-08', 100, 1, 2, 564, 1),
(37, 'chuyện thú vị như người Nhật', '70000', '<p>&quot;D&ugrave; trước nay bạn lu&ocirc;n bị mọi người coi l&agrave; nh&agrave;m ch&aacute;n, nhưng với cuốn s&aacute;ch n&agrave;y bạn nhất định c&oacute; thể n&oacute;i chuyện th&uacute; vị hơn</p><p>Hết giờ l&agrave;m ở c&ocirc;ng ty, trong l&uacute;c chờ thang m&aacute;y xuống tầng, bạn được anh A - một &ldquo;người nổi tiếng&rdquo; của ph&ograve;ng ban b&ecirc;n cạnh bắt chuyện. Nhưng tr&ecirc;n đường c&ugrave;ng đi bộ đến ga t&agrave;u điện, bạn lại chẳng biết n&oacute;i th&ecirc;m chuyện g&igrave;. Bầu kh&ocirc;ng kh&iacute; l&uacute;c ấy thật gượng gạo, kh&ocirc;ng thoải m&aacute;i (mặc d&ugrave; bạn kh&ocirc;ng muốn bị đ&aacute;nh gi&aacute; l&agrave; người nh&agrave;m ch&aacute;n). Hay trong bữa tiệc của c&ocirc;ng ty, bạn nh&acirc;n l&uacute;c kh&ocirc;ng kh&iacute; đang lắng xuống kể về b&agrave;i học thất bại của bản th&acirc;n trong qu&aacute; khứ nhưng mọi người đều im lặng, kh&ocirc;ng ai phản ứng g&igrave;. (Bạn lo sợ nghĩ &ldquo;Chết rồi, tiếp theo m&igrave;nh phải l&agrave;m g&igrave; đ&acirc;y?&rdquo;) Bạn đưa mắt nh&igrave;n quanh, thấy nh&oacute;m người kế b&ecirc;n đang n&oacute;i chuyện rất r&ocirc;m rả h&agrave;o hứng, bạn c&agrave;ng tự tr&aacute;ch bản th&acirc;n &ldquo;Tại sao m&igrave;nh cố gắng hết sức rồi m&agrave; vẫn chẳng thể thu h&uacute;t được mọi người?&rdquo; C&oacute; lẽ bất cứ ai trong ch&uacute;ng ta cũng từng trải qua những t&igrave;nh huống như thế n&agrave;y. C&oacute; thể n&oacute;i hầu hết những phiền muộn của ch&uacute;ng ta đều bắt nguồn từ mối quan hệ giữa con người với con người. Đ&oacute; ch&iacute;nh l&agrave; vấn đề thuộc về kĩ năng giao tiếp, khi kh&ocirc;ng thể truyền đạt được những điều bản th&acirc;n muốn n&oacute;i v&agrave; đ&ocirc;i khi c&ograve;n g&acirc;y hiểu lầm cho người kh&aacute;c. Điều n&agrave;y khiến cho cuộc n&oacute;i chuyện trở n&ecirc;n k&eacute;m s&ocirc;i nổi, dần đi v&agrave;o ng&otilde; cụt.</p><p>Nhưng nếu truyền tải được t&acirc;m tư t&igrave;nh cảm của m&igrave;nh, để người nghe cũng hiểu v&agrave; đồng cảm với c&acirc;u chuyện của m&igrave;nh, th&igrave; cuộc tr&ograve; chuyện sẽ được tiếp diễn, v&agrave; từ đ&oacute; mối quan hệ giữa bạn v&agrave; những người xung quanh trở n&ecirc;n gắn kết hơn.</p><p>T&ocirc;i từng l&agrave; đạo diễn của những bộ phim v&agrave; chương tr&igrave;nh truyền h&igrave;nh như Salaryman NEO, Amachan, hay chương tr&igrave;nh h&agrave;i đầu ti&ecirc;n của Shimura Ken tr&ecirc;n k&ecirc;nh NHK c&oacute; t&ecirc;n l&agrave; Tonari Shimura. Hầu như c&ocirc;ng việc của t&ocirc;i đều li&ecirc;n quan đến những chương tr&igrave;nh c&oacute; những t&igrave;nh tiết h&agrave;i hước g&acirc;y cười cho kh&aacute;n giả n&ecirc;n t&ocirc;i nắm rất r&otilde; những yếu tố n&agrave;o tạo ra sự th&uacute; vị trong giao tiếp. Trong khoảng thời gian l&agrave;m những chương tr&igrave;nh đ&oacute;, c&aacute;ch giao tiếp thường ng&agrave;y của t&ocirc;i cũng thay đổi theo v&agrave; dần dần mọi người th&iacute;ch th&uacute; với những c&acirc;u chuyện t&ocirc;i kể. Ch&iacute;nh v&igrave; vậy, trong cuốn s&aacute;ch n&agrave;y, t&ocirc;i sẽ chia sẻ với c&aacute;c bạn c&aacute;ch n&oacute;i chuyện sao cho thật th&uacute; vị.</p><p>Suốt cho đến những năm đầu của tuổi 30, t&ocirc;i lu&ocirc;n rất buồn phiền bởi kh&ocirc;ng thể truyền tải trọn vẹn những g&igrave; m&igrave;nh muốn n&oacute;i đến người kh&aacute;c. Hơn thế nữa, t&ocirc;i cũng cảm thấy bất m&atilde;n bởi người đối diện kh&ocirc;ng cho rằng t&ocirc;i th&uacute; vị như bản th&acirc;n t&ocirc;i vẫn nghĩ. Tuy nhi&ecirc;n, để sản xuất chương tr&igrave;nh, t&ocirc;i phải ch&uacute; &yacute; quan s&aacute;t c&aacute;ch diễn vi&ecirc;n v&agrave; đội ngũ nh&acirc;n vi&ecirc;n trao đổi với nhau. T&ocirc;i c&oacute; thực sự lắng nghe lời đối phương n&oacute;i kh&ocirc;ng? C&oacute; lẽ v&igrave; bản th&acirc;n l&agrave;m c&aacute;c chương tr&igrave;nh h&agrave;i kịch n&ecirc;n t&ocirc;i đ&atilde; cho rằng m&igrave;nh bắt buộc phải trở n&ecirc;n th&uacute; vị nhưng lại kh&ocirc;ng hề ch&uacute; &yacute; tiếp nhận c&acirc;u chuyện của người kh&aacute;c.</p><p>Sau đ&oacute; t&ocirc;i đ&atilde; thay đổi ho&agrave;n to&agrave;n c&aacute;ch suy nghĩ, trước ti&ecirc;n t&ocirc;i cố gắng hết m&igrave;nh để lắng nghe đối phương.</p><p>V&agrave; rồi phản ứng của mọi người xung quanh đ&atilde; thay đổi rất nhanh ch&oacute;ng.</p><p>T&ocirc;i đ&atilde; ho&agrave;n to&agrave;n tin tưởng v&agrave;o những g&igrave; cuốn s&aacute;ch n&agrave;y viết.</p><p>Rằng ch&iacute;nh sự quan t&acirc;m đến suy nghĩ, cảm x&uacute;c của người kh&aacute;c l&agrave; &ldquo;cốt l&otilde;i&rdquo; khiến c&acirc;u chuyện trở n&ecirc;n cuốn h&uacute;t người nghe, v&agrave; nếu sở hữu điều đ&oacute; th&igrave; chẳng c&oacute; ai l&agrave; kh&ocirc;ng thể n&oacute;i chuyện th&uacute; vị được.</p><p>Tuy nhi&ecirc;n, c&oacute; lẽ sẽ c&oacute; những người suy nghĩ ti&ecirc;u cực như thế n&agrave;y &ldquo;Kh&ocirc;ng, m&igrave;nh kh&ocirc;ng thể l&agrave;m được&rdquo;, hay &ldquo;Th&ocirc;i bỏ đi, c&oacute; kể chuyện ra th&igrave; mọi người cũng cho l&agrave; nhạt nhẽo&rdquo; hay &ldquo;Từ trước đến nay m&igrave;nh cũng đọc s&aacute;ch m&agrave; c&oacute; cải thiện th&ecirc;m được g&igrave; đ&acirc;u&rdquo;.</p><p>Nhưng cuốn s&aacute;ch n&agrave;y sẽ đem lại cho bạn những trải nghiệm ho&agrave;n to&agrave;n kh&aacute;c biệt. Đ&oacute; l&agrave; bởi cuốn s&aacute;ch chứa đựng những b&iacute; quyết khiến cho người kh&aacute;c đ&aacute;nh gi&aacute; bạn l&agrave; con người th&uacute; vị, d&ugrave; tr&ecirc;n thực tế kh&ocirc;ng phải như vậy. Mỗi c&aacute; nh&acirc;n c&oacute; c&aacute;ch nh&igrave;n nhận kh&aacute;c nhau về sự h&agrave;i hước. V&igrave; vậy kh&ocirc;ng phải tất cả những người xung quanh đều hưởng ứng c&acirc;u chuyện của bạn. Tuy nhi&ecirc;n, &iacute;t nhất bạn c&oacute; thể ph&aacute;t huy v&agrave; &aacute;p dụng hiệu quả nổi bật của những kĩ năng n&agrave;y với những người bạn muốn tiếp cận v&agrave; muốn trở n&ecirc;n th&acirc;n thiết với họ.</p><p>T&ocirc;i muốn nhấn mạnh rằng, cuốn s&aacute;ch n&agrave;y kh&ocirc;ng chứa những kiến thức c&oacute; vẻ học thuật được viết bởi một vị giảng vi&ecirc;n đại học hay diễn giả chuy&ecirc;n nghiệp, m&agrave; chỉ c&oacute; những kĩ năng giao tiếp thực tế, thường thấy trong cuộc sống thường ng&agrave;y của ch&uacute;ng ta, kh&ocirc;ng giới hạn trong một ng&agrave;nh nghề n&agrave;o hết. T&ocirc;i đảm bảo rằng, đ&acirc;y sẽ l&agrave; cuốn s&aacute;ch gi&uacute;p bạn c&oacute; thể thực hiện những cuộc hội thoại thường nhật một c&aacute;ch dễ d&agrave;ng, thoải m&aacute;i. V&agrave; t&ocirc;i cũng mong muốn rằng c&aacute;c bạn c&oacute; cuốn s&aacute;ch n&agrave;y trong tay, để cuộc đời của c&aacute;c bạn trở n&ecirc;n phong ph&uacute; v&agrave; c&oacute; nhiều trải nghiệm th&uacute; vị hơn.</p><p>Teruyuki Yoshida&quot;</p>', '1.jpg', '2019-03-21', 100, 1, 2, 6, 1),
(38, 'CHƯƠNG TRÌNH NGHỊ SỰ', '75000', '<p>&ldquo;Ch&uacute;ng ta chất vấn Lịch sử, ch&uacute;ng ta khẳng định Lịch sử c&oacute; lẽ đ&atilde; buộc c&aacute;c diễn vi&ecirc;n ch&iacute;nh trong những dằn vặt của ch&uacute;ng ta phải tạo d&aacute;ng. Ch&uacute;ng ta sẽ kh&ocirc;ng bao giờ thấy ống quần dơ bẩn, khăn b&agrave;n ngả v&agrave;ng, cuống s&eacute;c, vết c&agrave; ph&ecirc;...&rdquo;</p><p>Ph&aacute;t x&iacute;t Đức nổi tiếng l&agrave; c&oacute; một đội qu&acirc;n thần tốc, hiện đại v&agrave; bất khả chiến bại. Nhưng ph&iacute;a sau những chiến c&ocirc;ng đầu ti&ecirc;n ch&uacute;ng gi&agrave;nh được lại l&agrave; một loạt c&aacute;c vụ mặc cả, c&aacute;c &acirc;m mưu lợi &iacute;ch tầm thường, h&egrave;n hạ v&agrave; những sự cố lố bịch, nực cười. Trong Chương tr&igrave;nh nghị sự, cuốn tiểu thuyết x&uacute;c t&iacute;ch v&agrave; sắc sảo thuật lại vụ s&aacute;t nhập &Aacute;o v&agrave;o Đức, Eric Vuillard để c&aacute;i th&ocirc; kệch v&agrave; bi thảm kh&ocirc;ng ngừng đan xen h&ograve;ng l&agrave;m s&aacute;ng tỏ, th&ocirc;ng qua lối viết ch&iacute;nh x&aacute;c v&agrave; mỉa mai, &ldquo;vẻ d&iacute;nh d&aacute;p của những mưu mẹo v&agrave; những tr&ograve; bịp bợm vốn tạo n&ecirc;n Lịch sử.&rdquo;</p><p>&ldquo;C&acirc;u chuyện lịch sử n&agrave;y, ngắn gọn, đanh th&eacute;p, tung hứng với c&aacute;c li&ecirc;n kết ch&iacute;nh trị v&agrave; kinh tế, hẳn rồi, song đặc biệt cũng kể lại tất cả những điều đ&oacute; bằng th&aacute;i độ xấc xược t&agrave;i t&igrave;nh, t&igrave;m kiếm kh&iacute;a cạnh nực cười v&agrave; phi l&yacute;, để rốt cuộc, phơi b&agrave;y to&agrave;n bộ mưu ma chước quỷ ẩn m&igrave;nh dưới những chiếc mũ k&ecirc; pi.&rdquo; - Le Point</p>', '2.jpg', '2019-03-21', 1232, 1, 3, 4, 3),
(39, 'ĐẠI HỌC KHÔNG LẠC HƯỚNG', '95000', '<p>&quot;Ch&agrave;o c&aacute;c bạn, t&ocirc;i l&agrave; L&yacute; Thượng Long.</p><p>Đại học kh&ocirc;ng lạc hướng l&agrave; cuốn s&aacute;ch &ldquo;gối đầu giường&rdquo; m&agrave; t&ocirc;i viết d&agrave;nh cho c&aacute;c bạn sinh vi&ecirc;n đại học.</p><p>Mỗi lần đến c&aacute;c trường đại học k&iacute; tặng s&aacute;ch, c&acirc;u hỏi t&ocirc;i nhận được nhiều nhất ch&iacute;nh l&agrave; &ldquo;Nếu bản th&acirc;n cảm thấy hoang mang th&igrave; n&ecirc;n l&agrave;m thế n&agrave;o&rdquo;.</p><p>C&oacute; người n&oacute;i tuổi trẻ ai m&agrave; kh&ocirc;ng cảm thấy hoang mang, t&ocirc;i nghĩ kh&ocirc;ng phải như vậy.</p><p>Trong qu&atilde;ng thanh xu&acirc;n của m&igrave;nh, t&ocirc;i đ&atilde; gặp rất nhiều người t&agrave;i giỏi, họ kh&ocirc;ng những kh&ocirc;ng hoang mang, m&agrave; c&ograve;n c&oacute; mục ti&ecirc;u cực k&igrave; r&otilde; r&agrave;ng, cứ như thế, họ đ&atilde; khiến những th&aacute;ng ng&agrave;y tuổi trẻ của m&igrave;nh thi vị như tứ thơ.</p><p>Trong số những người n&agrave;y c&oacute; một số ra nước ngo&agrave;i học tại c&aacute;c trường danh tiếng, một số từ trường phổ th&ocirc;ng b&igrave;nh thường thi được v&agrave;o trường đại học top đầu, một số t&igrave;m được c&ocirc;ng việc tốt, một số khởi nghiệp th&agrave;nh c&ocirc;ng. Khi c&oacute; cơ hội tiếp x&uacute;c với họ, t&ocirc;i kinh ngạc ph&aacute;t hiện ra rằng những người n&agrave;y đều c&oacute; một điểm chung: Trong những năm đại học, ở họ kh&ocirc;ng c&oacute; c&aacute;i gọi l&agrave; cảm gi&aacute;c hoang mang. T&ocirc;i cho rằng mỗi con đường đều c&oacute; quy luật, tất nhi&ecirc;n kh&ocirc;ng phải quy luật n&agrave;o cũng th&iacute;ch hợp với tất cả mọi người, nhưng tin l&agrave; những c&acirc;u chuyện thực tế của t&ocirc;i, của những người xung quanh m&agrave; t&ocirc;i chứng kiến sẽ mang đến cho c&aacute;c bạn những gợi mở hay cảm hứng n&agrave;o đ&oacute;, nghĩ vậy v&agrave; t&ocirc;i quyết định viết một cuốn s&aacute;ch tham khảo c&oacute; tựa đề Đại học kh&ocirc;ng lạc hướng.</p><p>Sự kh&aacute;c biệt lớn nhất giữa s&aacute;ch tham khảo v&agrave; s&aacute;ch self-help nằm ở chỗ s&aacute;ch self-help c&oacute; thể kể chuyện, c&ograve;n s&aacute;ch tham khảo đa phần l&agrave; l&iacute; luận v&agrave; đưa ra những kiến thức c&oacute; thể &aacute;p dụng v&agrave;o cuộc sống hằng ng&agrave;y. Khi viết cuốn s&aacute;ch n&agrave;y, rất nhiều nỗi nghi hoặc v&agrave; băn khoăn trong cuộc sống sinh vi&ecirc;n lại ập về t&acirc;m tr&iacute; t&ocirc;i, t&ocirc;i chợt nghĩ nếu thời đại học năm xưa m&agrave; m&igrave;nh đọc được cuốn s&aacute;ch n&agrave;y th&igrave; liệu c&oacute; bớt đi rất nhiều nỗi hoang mang kh&ocirc;ng? Nếu năm nhất đại học t&ocirc;i đ&atilde; biết được những kiến thức n&agrave;y th&igrave; liệu c&oacute; bớt đi rất nhiều đường v&ograve;ng kh&ocirc;ng?</p><p>Trong những năm đại học rốt cuộc c&oacute; n&ecirc;n đi l&agrave;m th&ecirc;m kh&ocirc;ng?</p><p>N&ecirc;n tiếp x&uacute;c với t&igrave;nh y&ecirc;u như thế n&agrave;o?</p><p>Học trường đại học b&igrave;nh thường, l&agrave;m thế n&agrave;o để c&oacute; cuộc đời tốt nhất?</p><p>C&aacute;c bằng cấp, chứng chỉ c&oacute; được sau những năm đại học đ&oacute; rốt cuộc c&oacute; c&ocirc;ng dụng g&igrave;?</p><p>C&oacute; n&ecirc;n tham gia hội sinh vi&ecirc;n v&agrave; c&aacute;c c&acirc;u lạc bộ kh&ocirc;ng?</p><p>Khi những c&acirc;u hỏi n&agrave;y được đặt ra, t&ocirc;i lần lượt giải đ&aacute;p từng c&acirc;u một, cuối c&ugrave;ng t&ocirc;i hiểu ra rằng k&igrave; thực tuổi trẻ cũng c&oacute; thể kh&ocirc;ng hoang mang, kh&ocirc;ng lạc hướng.</p><p>Trong khi viết, sợ người đọc cảm thấy l&iacute; luận kh&ocirc; khan n&ecirc;n t&ocirc;i kết hợp đưa ra những c&acirc;u chuyện thực tế để c&aacute;c bạn hứng th&uacute; hơn, xin n&oacute;i th&ecirc;m, l&agrave; một đạo diễn, bi&ecirc;n kịch trẻ, kể chuyện l&agrave; sở trường của t&ocirc;i.</p><p>Hi vọng bạn th&iacute;ch cuốn s&aacute;ch n&agrave;y, cũng hi vọng cuốn s&aacute;ch n&agrave;y l&agrave; h&agrave;nh trang c&oacute; thể gi&uacute;p c&aacute;c bạn trong những năm đại học. Thấy chữ như thấy người, mong rằng tuổi trẻ của c&aacute;c bạn c&oacute; t&ocirc;i bầu bạn, kh&ocirc;ng bao giờ c&ocirc; độc.&quot;</p>', 'dai-hoc-khong-lac-huong.450x652.w.b.jpg', '2019-03-22', 100, 1, 2, 2, 5),
(40, 'vĩ đại nhờ tôi luyện mà thành', '142000', '<p>&quot;C&ocirc;ng t&aacute;c quản l&iacute; c&oacute; thể thay đổi doanh nghiệp, nhưng thực sự muốn cải tổ doanh nghiệp th&igrave; cần phải dựa v&agrave;o người l&atilde;nh đạo. H&agrave;nh động của người l&atilde;nh đạo, đặc biệt l&agrave; c&aacute;c quyết định v&agrave;o những thời điểm then chốt l&agrave; nh&acirc;n tố ảnh hưởng lớn nhất đến sự th&agrave;nh bại của doanh nghiệp. &ldquo;Thuyền vượt qua đại dương nhờ người cầm l&aacute;i&rdquo;. Con thuyền đi c&oacute; nhanh hay kh&ocirc;ng l&agrave; do l&ograve;ng người c&oacute; đồng t&acirc;m hiệp lực hay kh&ocirc;ng; con thuyền c&oacute; thể thuận buồm xu&ocirc;i gi&oacute; tr&aacute;nh được đ&aacute; ngầm nước xo&aacute;y để cập bến hay kh&ocirc;ng ch&iacute;nh l&agrave; tr&aacute;ch nhiệm m&agrave; người cầm l&aacute;i kh&ocirc;ng thể chối bỏ được. Sự an to&agrave;n của một con thuyền lớn v&agrave; t&iacute;nh mạng của tất cả mọi người tr&ecirc;n thuyền được quyết định rất lớn bởi khả năng ph&aacute;n đo&aacute;n v&agrave; năng lực xử l&iacute; khi l&acirc;m nguy của người cầm l&aacute;i. S&oacute;ng to gi&oacute; lớn chứng tỏ bản lĩnh anh h&ugrave;ng, người c&oacute; thể ch&egrave;o l&aacute;i cả một con thuyền doanh nghiệp to lớn, kh&ocirc;ng ai kh&aacute;c ch&iacute;nh l&agrave; người l&atilde;nh đạo.</p><p>Doanh nghiệp l&agrave; hệ thống đặc biệt được s&aacute;ng tạo hoặc cải tạo bởi b&agrave;n tay của con người, l&agrave; một loại hệ thống năng động. Trong hệ thống n&agrave;y, bắt buộc phải c&oacute; một người c&oacute; thể điều tiết tốt những c&ocirc;ng việc như đưa ra quyết s&aacute;ch, chỉ huy, đốc th&uacute;c vận h&agrave;nh&hellip;, tr&ugrave; t&iacute;nh tốt về con người, tiền của, vật chất, tin tức đầu v&agrave;o của doanh nghiệp v&agrave; sản phẩm c&ugrave;ng với dịch vụ đầu ra ph&ugrave; hợp với nhu cầu của x&atilde; hội. Bởi v&igrave; chỉ c&oacute; như vậy th&igrave; mới c&oacute; thể c&ugrave;ng l&uacute;c thu được lợi &iacute;ch t&agrave;i ch&iacute;nh v&agrave; lợi &iacute;ch kinh tế x&atilde; hội. Người n&agrave;y kh&ocirc;ng phải l&agrave; ai kh&aacute;c, m&agrave; ch&iacute;nh l&agrave; người l&atilde;nh đạo của doanh nghiệp. Cho n&ecirc;n, với tư c&aacute;ch l&agrave; một người l&atilde;nh đạo, cần phải c&oacute; g&oacute;c nh&igrave;n, giải ph&aacute;p v&agrave; năng lực tổng qu&aacute;t to&agrave;n diện.</p><p>Người kh&ocirc;ng biết t&iacute;nh to&aacute;n to&agrave;n cục th&igrave; kh&ocirc;ng thể l&agrave;m l&atilde;nh đạo. Người l&atilde;nh đạo ch&iacute;nh l&agrave; người mưu t&iacute;nh to&agrave;n cục, l&agrave; người đưa ra quyết định cuối c&ugrave;ng để giải quyết c&aacute;c vấn đề kh&oacute; khăn. Doanh nghiệp muốn ph&aacute;t triển nhưng lại kh&ocirc;ng c&oacute; kế hoạch l&acirc;u d&agrave;i ph&ugrave; hợp với đặc trưng doanh nghiệp, cũng kh&ocirc;ng c&oacute; người l&atilde;nh đạo c&oacute; t&agrave;i c&oacute; lực th&igrave; e l&agrave; chuyện viển v&ocirc;ng. Thực lực của người l&atilde;nh đạo xuất ph&aacute;t từ ph&aacute;n đo&aacute;n ch&iacute;nh x&aacute;c về c&aacute;c thay đổi trong tương lai. Giữa kế hoạch v&agrave; biến đổi, giữa nghĩ v&agrave; l&agrave;m, giữa tri thức v&agrave; h&agrave;nh động c&oacute; khoảng c&aacute;ch rất lớn, đối với c&aacute; nh&acirc;n m&agrave; n&oacute;i khoảng c&aacute;ch n&agrave;y l&agrave; b&igrave;nh thường, nhưng đối với doanh nghiệp m&agrave; n&oacute;i th&igrave; lại l&agrave; ch&iacute; mạng. Thu nhỏ một c&aacute;ch tối đa những khoảng c&aacute;ch n&agrave;y ch&iacute;nh l&agrave; nhiệm vụ lớn lao của người l&atilde;nh đạo.</p><p>Ngoại trừ quyền lực cứng đủ để điều khiển sự ph&aacute;t triển của doanh nghiệp, người l&atilde;nh đạo c&ograve;n cần phải c&oacute; t&iacute;nh th&iacute;ch ứng cực tốt. Một người l&atilde;nh đạo ưu t&uacute; l&agrave; người c&oacute; thể căn cứ v&agrave;o quy m&ocirc; lớn nhỏ, đối tượng quản l&iacute; v&agrave; c&aacute;c giai đoạn ph&aacute;t triển kh&aacute;c nhau của doanh ngiệp để sẵn s&agrave;ng điều chỉnh phương ph&aacute;p v&agrave; phong c&aacute;ch l&atilde;nh đạo của m&igrave;nh. Giống như Konosuke Matsushita từng n&oacute;i: &ldquo;Khi nh&acirc;n vi&ecirc;n của t&ocirc;i c&oacute; 100 người, t&ocirc;i cần phải đứng trước mặt họ để chỉ huy; khi nh&acirc;n vi&ecirc;n của t&ocirc;i tăng l&ecirc;n 1.000 người, t&ocirc;i cần phải đứng ở giữa họ, khẩn cầu nh&acirc;n vi&ecirc;n dốc sức hỗ trợ; khi nh&acirc;n vi&ecirc;n của t&ocirc;i l&ecirc;n đến h&agrave;ng chục ngh&igrave;n người, t&ocirc;i chỉ cần đứng ph&iacute;a sau họ, trong l&ograve;ng cảm k&iacute;ch l&agrave; được.&rdquo;</p><p>Quyền lực mềm của người l&atilde;nh đạo c&oacute; thể mi&ecirc;u tả bằng cụm từ &ldquo;Sức ảnh hưởng&rdquo;. C&aacute;i gọi l&agrave; sức ảnh hưởng ch&iacute;nh l&agrave; năng lực khi một người tiếp x&uacute;c với người kh&aacute;c tạo n&ecirc;n t&aacute;c động thay đổi h&agrave;nh vi v&agrave; t&acirc;m l&iacute; của người kia. Sức ảnh hưởng người người đều c&oacute;, nhưng mức độ của n&oacute; lại kh&aacute;c nhau. Hơn nữa, sức ảnh hưởng của một người cũng t&ugrave;y thuộc v&agrave;o từng đối tượng, ho&agrave;n cảnh... m&agrave; thay đổi. Với tư c&aacute;ch l&agrave; một người l&atilde;nh đạo, cần phải nỗ lực học tập, kh&ocirc;ng ngừng tiếp nhận tri thức mới, tăng th&ecirc;m kĩ năng v&agrave; năng lực, từ đ&oacute; c&oacute; th&ecirc;m t&agrave;i ph&aacute;n đo&aacute;n, t&agrave;i tổ chức, t&agrave;i chỉ huy b&agrave;i binh bố trận, t&agrave;i s&aacute;ng tạo theo kịp thời đại v&agrave; t&agrave;i ứng biến cần thiết&hellip; Chỉ c&oacute; như vậy mới c&oacute; thể khiến cho cấp dưới kh&acirc;m phục, tin cậy, cấp dưới một khi tin tưởng sẽ tự gi&aacute;c phục t&ugrave;ng theo l&atilde;nh đạo.</p><p>Người l&atilde;nh đạo l&agrave; trụ cột v&agrave; linh hồn của doanh nghiệp, người l&atilde;nh đạo l&agrave; nh&acirc;n vật đứng đầu dẫn lối cho doanh nghiệp. Một người đặc biệt g&aacute;nh v&aacute;c đủ mọi nhiệm vụ như vậy kh&ocirc;ng chỉ cần c&oacute; năng lực, thực lực, kĩ năng, m&agrave; c&agrave;ng phải c&oacute; tr&iacute; lực v&agrave; con mắt tinh tường để th&aacute;o gỡ rối ren, nh&igrave;n th&ocirc;ng suốt mọi chuyện, đồng thời phải ch&uacute; trọng r&egrave;n luyện suy nghĩ đa chiều, tự soi x&eacute;t bản th&acirc;n, kh&ocirc;ng ngừng đột ph&aacute;, mở rộng giới hạn của bản th&acirc;n.</p><p>Ch&iacute;n phương ph&aacute;p tu luyện năng lực l&atilde;nh đạo m&agrave; cuốn s&aacute;ch n&agrave;y tổng kết ra chỉ l&agrave; g&oacute;p ch&uacute;t sức mọn v&agrave;o x&acirc;y dựng &ldquo;trường kinh doanh kh&ocirc;ng bi&ecirc;n giới&rdquo;, hi vọng độc giả c&oacute; th&ecirc;m nguồn tư liệu, c&oacute; th&ecirc;m cảm hứng để học hỏi hiệu quả, từ đ&oacute; c&oacute; th&ecirc;m động lực tạo ra sức mạnh tinh thần lớn lao v&agrave; tr&iacute; tuệ kinh doanh th&ocirc;ng th&aacute;i.</p><p>Đổng Quyền&quot;</p>', 'vi-dai-nho-toi-luyen-ma-thanh.450x652.w.b.jpg', '2019-03-22', 1232, 3, 2, 6, 2),
(41, 'khi nói không tôi thấy tội lỗi', '160000', '<p>&quot;Nhiều người cho rằng m&igrave;nh c&oacute; học lực cao th&igrave; kh&ocirc;ng cần phải chăm chỉ cũng c&oacute; thể được người kh&aacute;c nh&igrave;n nhận v&agrave; t&ocirc;n trọng, tuy nhi&ecirc;n rất nhiều người c&oacute; học lực thấp hơn m&igrave;nh nhưng lại đạt được những th&agrave;nh tựu m&agrave; m&igrave;nh kh&ocirc;ng bao giờ c&oacute; được. C&oacute; nhiều người cảm thấy năng lực của m&igrave;nh kh&ocirc;ng tồi, nhất định sẽ được l&atilde;nh đạo coi trọng, nhưng sau n&agrave;y mới ph&aacute;t hiện ra bản th&acirc;n m&igrave;nh vẫn chưa được ai để &yacute; tới,... Tất cả mọi việc thoạt nh&igrave;n c&oacute; vẻ phức tạp, nhưng nguy&ecirc;n nh&acirc;n s&acirc;u xa l&agrave; do ch&uacute;ng ta chưa th&iacute;ch nghi được với m&ocirc;i trường xung quanh. Trong c&ocirc;ng sở, những thứ biểu hiện ra ngo&agrave;i nhiều khi lại c&oacute; bản chất ho&agrave;n to&agrave;n kh&aacute;c, bạn kh&ocirc;ng hiểu được suy nghĩ thực sự của l&atilde;nh đạo, kh&ocirc;ng biết được l&agrave; người m&agrave; c&ocirc;ng ty cần phải c&oacute; những y&ecirc;u cầu g&igrave;, cho n&ecirc;n mới c&oacute; nhiều người được gọi l&agrave; nh&acirc;n sĩ ưu t&uacute; nhưng vẫn kh&ocirc;ng gặp thời...</p><p>Để gi&uacute;p bạn loại bỏ được những trở ngại trong c&ocirc;ng việc, tạo dựng được sự nghiệp cho m&igrave;nh, cuốn s&aacute;ch n&agrave;y sẽ giải đ&aacute;p những điều m&agrave; bạn đang lo lắng, để bạn tr&aacute;nh được những thất bại v&agrave; trắc trở, vững bước tr&ecirc;n con đường đi đến th&agrave;nh c&ocirc;ng.&quot;</p>', 'khi-noi-khong-toi-thay-toi-loi.450x652.w.b.jpg', '2019-03-22', 300, 2, 4, 16, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `ma_tg` int(11) NOT NULL COMMENT 'Mã tác giả',
  `ten_tg` varchar(255) NOT NULL COMMENT 'Tên tác giả',
  `diachi_tg` varchar(255) NOT NULL COMMENT 'Địa chỉ tác giả',
  `tieusu` text NOT NULL COMMENT 'Tiểu sử tác giả',
  `sdt_tg` varchar(11) NOT NULL COMMENT 'Số điện thoại tác giả'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`ma_tg`, `ten_tg`, `diachi_tg`, `tieusu`, `sdt_tg`) VALUES
(1, 'Nguyễn Đình Hậu', 'Hà Nội', 'Học Giỏi', '094003047'),
(2, 'Nông Văn Khánh', 'Lạng Sơn', 'Cao Bằng', '982321'),
(3, 'Phùng Duy Thảo', 'SLNA', 'Có tiền án tiền sự', '123456789'),
(4, 'Dương Phương Nam', 'Ba Vì', 'haha', '12423312'),
(5, 'Ngô Tất Tố', 'Thôn Đoài', 'dứada', '1123231');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ma_kh` int(11) NOT NULL COMMENT 'Mã khách hàng',
  `taikhoan_kh` varchar(255) NOT NULL COMMENT 'Tên tài khoản',
  `matkhau_kh` varchar(255) NOT NULL COMMENT 'Mật khẩu tài khoản',
  `email_kh` varchar(255) NOT NULL COMMENT 'Email tài khoản',
  `ten_kh` varchar(255) NOT NULL COMMENT 'Tên tài khoản',
  `anh_kh` varchar(255) NOT NULL COMMENT 'Avatar tài khoản',
  `diachi_kh` varchar(255) NOT NULL COMMENT 'Địa chỉ tài khoản',
  `sdt_kh` varchar(11) NOT NULL COMMENT 'Số điện thoại tài khoản',
  `gioitinh_kh` tinyint(1) NOT NULL COMMENT 'Giới tính',
  `ngaysinh_kh` date NOT NULL COMMENT 'Ngày sinh',
  `quyen_kh` int(11) NOT NULL COMMENT 'Quyền tài khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ma_kh`, `taikhoan_kh`, `matkhau_kh`, `email_kh`, `ten_kh`, `anh_kh`, `diachi_kh`, `sdt_kh`, `gioitinh_kh`, `ngaysinh_kh`, `quyen_kh`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@admin.com', 'Nguyễn Đình Hậu', 'anhnguoidung.jpg', '43 Nguyễn Chí Thanh, Ba Đình, Hà Nội', '0123456789', 0, '1997-09-20', 1),
(10, 'hahah', 'f5283ab37e0a0aa26d2b04075e8f9769', 'admin2@admin.com', 'eqqweqw', 'anhnguoidung.jpg', 'đâsdasdas', '22345113', 0, '2000-01-02', 1),
(13, 'khachhang1', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@admin.com', 'Nguyễn Đình Hậu', '4.jpeg', 'Thái Nguyên', '0964003047', 0, '2018-11-06', 0),
(14, 'test', '4e4d6c332b6fe62a63afe56171fd3725', 'admin@admin.com', 'haha', 'anhnguoidung.jpg', '312321', 'dsad', 1, '2018-11-08', 0),
(19, 'hau', '827ccb0eea8a706c4c34a16891f84e7b', 'hau@hau.com', 'hau', 'anhnguoidung.jpg', '094002112', 'haha', 1, '2018-11-08', 0),
(20, 'admin2', '827ccb0eea8a706c4c34a16891f84e7b', 'hau@hau.com', 'admin', 'anhnguoidung.jpg', 'Thái Nguyên', '123456', 1, '2018-11-08', 0),
(21, 'admin3', '827ccb0eea8a706c4c34a16891f84e7b', 'hau@hau.comaa', 'Nguyễn Đình Hậu', 'IMG_1746 - Copy.JPG', 'Thái Nguyên', '123456', 1, '2018-11-08', 0),
(22, 'admin4', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@admin.com', 'sda', 'anhnguoidung.jpg', 'Thái Nguyên', '0964003047', 1, '2018-11-08', 0),
(23, 'sadsad', 'a5cc86b47a11fb1430c2ee4432229dc0', 'admin@admin.com', 'DSADSAD', 'anhnguoidung.jpg', 'dsadsads', '2321312', 1, '2019-03-18', 0),
(24, 'hauhauhau', '860b432652504fa60f8da945398e20de', 'admin@admin.com', 'dsadsadsa', 'anhnguoidung.jpg', 'mới', '23213123', 1, '2019-03-17', 0),
(25, 'he', '860b432652504fa60f8da945398e20de', 'admin@admin.com', 'dsadsadsa', 'anhnguoidung.jpg', 'mới', '23213123', 1, '2019-03-17', 0),
(26, 'hrhrh', '860b432652504fa60f8da945398e20de', 'admin@admin.com', 'dsadsadsa', 'anhnguoidung.jpg', 'mới', '23213123', 1, '2019-03-17', 0),
(27, 'hauhauhau', '860b432652504fa60f8da945398e20de', 'admin@admin.com', 'dsadsadsa', 'anhnguoidung.jpg', 'mới', '23213123', 1, '2019-03-17', 0),
(28, 'hauhauhau', '860b432652504fa60f8da945398e20de', 'admin@admin.com', 'dsadsadsa', 'anhnguoidung.jpg', 'mới', '23213123', 1, '2019-03-17', 0),
(29, 'hauhauhau', '860b432652504fa60f8da945398e20de', 'admin@admin.com', 'dsadsadsa', 'anhnguoidung.jpg', 'mới', '23213123', 1, '2019-03-17', 0),
(30, 'hauhauhau', '860b432652504fa60f8da945398e20de', 'admin@admin.com', 'dsadsadsa', 'anhnguoidung.jpg', 'mới', '23213123', 1, '2019-03-17', 0),
(32, 'hauhauhau', 'e7520ba36b4f4152d753be9e801e1290', 'admin@admin.com', 'ewqewq', 'anhnguoidung.jpg', 'eqweqw', '312323', 1, '2019-03-05', 0),
(34, '2', '761c7920f470038d4c8a619c79eddd62', 'admin@admin.com', 'dưqdwq', 'anhnguoidung.jpg', '2321', '23213', 1, '2019-03-16', 0),
(35, '23', 'a0ea050f2ff4d1c0c632a1daffd31f86', 'admin@admin.com', 'DSADSAD', 'anhnguoidung.jpg', '1312', '2321', 1, '2019-03-14', 0),
(36, 'hahahah', 'b625fc80e2edaef6718b0f7798989b0d', 'admin@admin.com', 'dsadsad', 'anhnguoidung.jpg', 'ứdsad', '2321', 1, '2019-03-13', 0),
(45, 'dsadasdwqd', '7577038858c792eb906cb79d427172c5', 'admin@admin.com', 'DSADSAD', 'anhnguoidung.jpg', 'dsadasd', '23123', 1, '2019-03-23', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thamgia`
--

CREATE TABLE `thamgia` (
  `ma_thamgia` int(11) NOT NULL COMMENT 'Mã tham gia',
  `ma_sach` int(11) NOT NULL COMMENT 'Mã sách',
  `ma_tg` int(11) NOT NULL COMMENT 'Mã tác giả',
  `vaitro` int(11) NOT NULL COMMENT 'Vai trò',
  `vitri` int(11) NOT NULL COMMENT 'Vị trí'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vote_sach`
--

CREATE TABLE `vote_sach` (
  `id_vote` int(11) NOT NULL COMMENT 'Mã đánh giá',
  `ma_kh` int(11) NOT NULL COMMENT 'Mã khách hàng',
  `ma_sach` int(11) NOT NULL COMMENT 'Mã sách',
  `vote` int(11) NOT NULL COMMENT 'Đánh giá'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vote_sach`
--

INSERT INTO `vote_sach` (`id_vote`, `ma_kh`, `ma_sach`, `vote`) VALUES
(1, 1, 36, 5),
(2, 13, 36, 3),
(3, 13, 35, 5),
(4, 13, 32, 3),
(5, 1, 33, 1),
(6, 1, 30, 1),
(7, 1, 31, 3),
(8, 1, 32, 5),
(9, 13, 31, 2),
(10, 1, 37, 5),
(11, 1, 41, 5),
(12, 1, 35, 3);

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
  MODIFY `ma_chu_de` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cmt`
--
ALTER TABLE `cmt`
  MODIFY `id_cmt` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã bình luận', AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ma_hd` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã hóa đơn', AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ma_nxb` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã nhà xuất bản', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `ma_sach` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã sách', AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `ma_tg` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã tác giả', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã khách hàng', AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `thamgia`
--
ALTER TABLE `thamgia`
  MODIFY `ma_thamgia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã tham gia';

--
-- AUTO_INCREMENT cho bảng `vote_sach`
--
ALTER TABLE `vote_sach`
  MODIFY `id_vote` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã đánh giá', AUTO_INCREMENT=13;

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
