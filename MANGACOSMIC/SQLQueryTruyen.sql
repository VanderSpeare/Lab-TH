--create database DBWEBTRUYEN
--drop database DBWEBTRUYEN

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [varchar](30) NOT NULL,
	[PassAdmin] [varchar](30) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MaTL] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 3/20/2019 7:59:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Taikhoan] [varchar](50) NULL,
	[Matkhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[DiachiKH] [nvarchar](200) NULL,
	[DienthoaiKH] [varchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[TRUYEN]    Script Date: 3/20/2019 7:59:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRUYEN](
	[Matruyen] [int] IDENTITY(1,1) NOT NULL,
	[Tentruyen] [nvarchar](100) NOT NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [varchar](50) NULL,
	[MaTT] [int] NULL,
	[Theodoi] [int] NULL,
	[Ngaycapnhat] [datetime] NULL,
 CONSTRAINT [PK_Truyen] PRIMARY KEY CLUSTERED 
(
	[Matruyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUONG](
	[MaChuong] [int] IDENTITY(1,1) NOT NULL,
	[TenChuong] [nvarchar](100) NOT NULL,
	[Noidung] [nvarchar](max) NULL,
	[Matruyen] [int] NULL,
 CONSTRAINT [PK_Chuong] PRIMARY KEY CLUSTERED 
(
	[MaChuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINHTRANG](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TinhTrang] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUOTXEM](
	[MaLuotXem] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaChuong] [int] NOT NULL,
	[Matruyen] [int] NOT NULL,
 CONSTRAINT [PK_Luotxem] PRIMARY KEY CLUSTERED 
(
	[MaLuotXem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](100) NULL,
	[Tieusu] [nvarchar](max) NULL,
	[Dienthoai] [varchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIET](
	[MaTG] [int] NOT NULL,
	[Matruyen] [int] NOT NULL,
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUOCCHUDE](
	[MaCD] [int] NOT NULL,
	[Matruyen] [int] NOT NULL,
 CONSTRAINT [PK_Thuocchude] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC,
	[Matruyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUOCTHELOAI](
	[MaTL] [int] NOT NULL,
	[Matruyen] [int] NOT NULL,
 CONSTRAINT [PK_Thuoctheloai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC,
	[Matruyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'admin', N'123456', N'Trần Nguyễn Gia Long')
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'user', N'654321', N'David Beckham')
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'Quái Vật')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'Động Vật')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (3, N'Nấu Ăn')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (4, N'Âm Nhạc')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
SET IDENTITY_INSERT [dbo].[THELOAI] ON 

INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (1, N'Hành Động')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (2, N'Kinh Dị')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (3, N'Kì Ảo')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (4, N'Hài Hước')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (5, N'Kịch Tính')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (6, N'Đời Thường')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (7, N'Học Đường')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (8, N'Thể Thao')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (9, N'Siêu Nhiên')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (10, N'Bi Kịch')
INSERT [dbo].[THELOAI] ([MaTL], [TenTheLoai]) VALUES (11, N'Huyền Bí')
SET IDENTITY_INSERT [dbo].[THELOAI] OFF
SET IDENTITY_INSERT [dbo].[TINHTRANG] ON 

INSERT [dbo].[TINHTRANG] ([MaTT], [TenTinhTrang]) VALUES (1, N'Đang Tiến Hành')
INSERT [dbo].[TINHTRANG] ([MaTT], [TenTinhTrang]) VALUES (2, N'Tạm Ngưng')
INSERT [dbo].[TINHTRANG] ([MaTT], [TenTinhTrang]) VALUES (3, N'Ngừng Vô Thời Hạn')
SET IDENTITY_INSERT [dbo].[TINHTRANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (1, N'Nguyen A', N'abc', N'abc', N'abc@gmail.com', N'2018-02-04', N'9908999', CAST(N'2019-03-04T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (2, N'Lionel Messi', N'messi', N'123', N'messi@gmail.com', N'123 LTK', N'09998899', CAST(N'2010-03-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[TRUYEN] ON 

INSERT [dbo].[TRUYEN] ([Matruyen], [Tentruyen], [Mota], [Anhbia], [MaTT], [Theodoi], [Ngaycapnhat]) VALUES (1, N'Góc Nhìn Của Độc Giả Toàn Tri', N'Kim Dokja là một nhân viên văn phòng bình thường, với sở thích duy nhất là đọc cuốn tiểu thuyết “Ba cách để sinh tồn trong thế giới bị hủy diệt.” (gọi tắt là Bí kíp sinh tồn). Tuy nhiên, trong suốt 10 năm đăng tải, Kim Dokja là độc giả duy nhất của cuốn tiểu thuyết 3149 chương này. Vào ngày mà cậu đọc được những dòng cuối cùng của bộ truyện, những tình tiết, nhân vật và kịch bản mà cậu đã thuộc lòng lần lượt xuất hiện trong thế giới thực. Thế giới bình thường nay đã thành thế giới của Bí kíp sinh tồn, mà Kim Dokja, là người duy nhất biết được kết cục của thế giới này.', N'ORV4.jfif', 1, 1, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[TRUYEN] ([Matruyen], [Tentruyen], [Mota], [Anhbia], [MaTT], [Theodoi], [Ngaycapnhat]) VALUES (2, N'Overlord', N'Câu chuyện bắt đầu trong những giây phút cuối tại tại Yggdrasil, một game online đình đám sắp phải đóng cửa. Nhân vật chính Momonga của chúng ta quyết định ở lại đến tận những phút cuối cùng với trò chơi yêu thích của mình và chờ server down. Bất ngờ, server không shutdown và Momonga bị mắc kẹt trong nhân vật của chính mình và "xuyên việt" tới thế giới khác. “Overlord hùng mạnh” giờ đây lại tiếp tục đi khám phá thế giới mới và đối mặt với những thử thách mới. Không gia đình, bạn bè, địa vị xã hội, người đàn ông bình thường này sẽ cố gắng hết sức để thống trị thế giới mới này.', N'overlord1.jpg', 1, 1, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[TRUYEN] ([Matruyen], [Tentruyen], [Mota], [Anhbia], [MaTT], [Theodoi], [Ngaycapnhat]) VALUES (3, N'Toàn Chức Cao Thủ', N'Diệp Tu – cao thủ đứng đầu được vinh danh là bách khoa toàn thư của game Vinh Quang, vì đủ loại nguyên nhân mà bị câu lạc bộ đuổi đi. Sau khi bị trục xuất, rời khỏi nghề, hắn trở thành nhân viên quản lý trong một tiệm net nho nhỏ. Thế nhưng, với kinh nghiệm về game trong 10 năm, mang theo những hồi ức năm nào, cùng món vũ khí tự chế vẫn chưa hoàn thành, hắn lại bắt đầu quay về con đường đỉnh cao ấy…', N'avatar1.jpg', 1, 1, CAST(N'2019-02-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[TRUYEN] OFF
SET IDENTITY_INSERT [dbo].[CHUONG] ON 
INSERT [dbo].[CHUONG] ([MaChuong], [TenChuong], [Noidung], [Matruyen]) VALUES (1, N'Mở đầu', N'[Có ba cách để sống sót trong một thế giới sau thảm họa diệt vong. Lúc này, có lẽ tôi đã quên mất vài thứ, nhưng tôi chắc chắn một điều: Bạn, người đang đọc những dòng chữ này, sẽ là kẻ sống sót.
Ba cách để sinh tồn trong thế giới bị hủy diệt – Hết.]
Chiếc smartphone đời cũ cùi bắp của tôi ì ạch load giao diện một trang web chuyên đăng tải tiểu thuyết mạng. Tôi cứ liên tục kéo lên kéo xuống màn hình không biết bao nhiêu lần, tự hỏi:
“Đùa nhau à? Thế là hết rồi?”
Tôi xem lại một lần nữa, thấy hai chữ “hoàn thành” vẫn chình ình ở đó không thể lẫn vào đâu được. Bộ truyện này đã kết thúc.
+
[Ba cách để sinh tồn trong thế giới bị hủy diệt]
Tác giả: tls123
3149 chương.
+
“Ba cách để sinh tồn trong thế giới bị hủy diệt” là một bộ tiểu thuyết kỳ ảo dài tập có tổng cộng 3149 chương, hay còn được gọi tắt là “Bí kíp sinh tồn”.
Tôi bắt đầu theo dõi bộ tiểu thuyết mạng này từ hồi còn học năm cuối cấp ba, cái thời mà tôi còn bị bắt nạt bởi lũ đầu gấu trong trường; đến khi tôi trượt vỏ chuối trong kỳ thi đại học để rồi kết thúc đời sinh viên trong một ngôi trường đại học không tên tuổi ở địa phương; rồi cả hồi tôi còn trong quân ngũ, khi cái máy rút thăm chết tiệt giở chứng khiến tôi bị xếp vào đơn vị ngay tuyến đầu; cho đến tận lúc này, sau khi liên tục nhảy việc và giờ tôi đang làm một nhân viên hợp đồng quèn của một công ty chi nhánh nhỏ thuộc một doanh nghiệp lớn… Mẹ nó, thôi không nói về vấn đề này nữa.
Dù sao thì…
[Lời tác giả: Cảm ơn các bạn vì đã theo dõi ‘Bí kíp sinh tồn’ từ đầu đến giờ. Tôi sẽ sớm quay trở lại cùng phần kết truyện!]
“À… Vẫn còn phần kết. Vậy sắp tới sẽ là phần cuối cùng rồi.”
Từ những năm cuối của tuổi vị thành niên cho đến tận khi trưởng thành, tôi đã theo dõi bộ truyện này suốt hơn mười năm ròng. Nay câu chuyện sắp đến hồi kết thúc, tôi cảm thấy hơi hụt hẫng, nhưng đồng thời cũng có chút thỏa mãn. Tôi mở khung bình luận ở cuối trang, đắn đo viết đi viết lại mấy chữ.
[Kim Dokja: Cảm ơn tác giả trong suốt thời gian qua. Mong chờ được đọc chương cuối.]
Đó là lời thật lòng. “Bí kíp sinh tồn” là cuốn tiểu thuyết của cuộc đời tôi. Không phải là bộ truyện nổi tiếng nhất, nhưng là bộ truyện mà tôi tâm đắc nhất. Tôi vẫn còn rất nhiều lời muốn nói nhưng không sao biểu đạt ra được, chỉ sợ lại viết ra những lời thiếu suy nghĩ làm tổn thương tác giả.
Mỗi chương có trung bình 1.9 lượt click.
Mỗi chương có trung bình 1.08 bình luận.
Đó là chỉ số về độ phổ biến của “Bí kíp sinh tồn”. Chương đầu tiên có số lượt click vào là 1.200, đến chương 10 giảm mạnh, chỉ còn 120 lượt click, chương 50 còn có 12 lượt. Cuối cùng, đến chương 100, chỉ còn duy nhất 1 lượt.
Lượt click = 1.
Nhìn một dãy số 1 xuất hiện bên cạnh danh sách các chương, tôi không nói nên lời. Thỉnh thoảng vẫn có vài số 2 xuất hiện, nhưng có vẻ như đó là do người ta click nhầm.
“Xin cảm ơn.”
Một bộ truyện dài hơn ba ngàn chương với lượt xem trung bình mỗi chương là 1 trong suốt mười năm ròng, chẳng phải đó chính là bộ truyện chỉ dành cho riêng mình tôi hay sao? Tôi nhấn vào mục “Đề cử” và bắt đầu gõ bàn phím,
[Đề cử: bộ truyện này siêu thú vị.]
Tác giả đã viết cho tôi nguyên một bộ tiểu thuyết miễn phí, vậy tôi ít nhất cũng nên cho anh ấy một phiếu đề cử chứ! Nghĩ vậy, tôi bèn nhấn nút đăng, và ngay sau đó, một loạt các bình luận hiện ra phía dưới.
[Hình như lại một anti mới, tôi tra ID của người này thì thấy hắn chỉ đề cử đi đề cử lại duy nhất một bộ truyện.]
[Không phải tác giả bị cấm tự đề cử bản thân hay sao? Ê, đừng có làm trò đó ở đây.]
Bấy giờ tôi mới nhớ ra mình cũng đã từng viết vài bài đề cử như vậy từ mấy tháng trước. Loáng cái, có hàng tá bình luận nhao nhao lên mắng chửi “hám fame” hay “đồ thần kinh” xuất hiện. Tôi ngượng chín cả mặt.
Biết rằng tác giả chắc chắn sẽ đọc được những lời này, tôi vội vàng tìm cách xóa đề cử. Thế nhưng tôi nhận được thông báo cho biết đề cử này đã bị báo cáo nên không thể xóa được nữa.
“Gì vậy chứ…”
Thật buồn phiền khi thấy lời giới thiệu chân thành của mình rốt cuộc lại gây ảnh hưởng xấu lên chính bộ truyện như vậy. Nếu bọn họ đã chịu xem qua một chút, vậy tại sao không ai thử đọc bộ truyện thú vị này cơ chứ? Tôi muốn ủng hộ tác giả, nhưng với mức lương của một thằng nhân viên quèn như tôi, chỉ sống một mình thôi cũng đã đủ vất vả lắm rồi.
Đúng lúc đó, tôi nhận được thông báo “Một tin nhắn mới”.
[tls123: Cảm ơn.]
Một tin nhắn không đầu không đuôi. Phải mất một lúc tôi mới hiểu chuyện gì vừa xảy ra.
[Kim Dokja: Tác giả à?]
tls123 – tác giả của “Bí kíp sinh tồn”.
[tls123: Nhờ cậu mà tôi mới hoàn thành được bộ truyện. Tôi còn thắng một cuộc thi nữa.]
Thật không thể tin nổi. “Bí kíp sinh tồn” đã thắng một cuộc thi?
[Kim Dokja: Xin chúc mừng! Đó là cuộc thi nào vậy?]
[tls123: Cậu không biết đâu, cuộc thi đó không nổi tiếng cho lắm.]
Trong phút chốc, tôi tự hỏi liệu có phải anh ta nói dối cho đỡ xấu hổ hay không, nhưng tôi mong đây là sự thật hơn. Có lẽ là do tôi không biết cuộc thi đó thật. Biết đâu bộ truyện này lại rất nổi tiếng ở những trang web khác thì sao? Tôi hơi buồn một chút, nhưng dù sao một bộ truyện hay như vậy được nhiều người biết đến âu cũng là chuyện tốt.
[tls123: Tôi muốn tặng cậu một món quà thay cho lời cảm ơn.]
[Kim Dokja: Quà?]
[tls123: Tôi muốn cảm ơn vị độc giả thân mến đã giúp tôi đem lại sự sống cho câu chuyện này.]
Sau đó, anh ta hỏi email của tôi, tôi bèn nhắn địa chỉ email thường dùng của mình cho anh ta.
[tls123: À phải rồi, tôi sẽ mở chế độ thu phí đấy.]
[Kim Dokja: Ồ, thế à? Bao giờ thì bắt đầu? Tuyệt tác này đáng nhẽ phải được thu phí ngay từ đầu mới đúng!]
Đó là một lời nói dối. “Bí kíp sinh tồn” là truyện đăng theo ngày, nghĩa là tôi sẽ phải trả 3.000 won mỗi tháng để đọc truyện. Đối với tôi, 3.000 won đã bằng một hộp cơm trưa ở siêu thị tiện lợi rồi.
[tls123: Chế độ thu phí sẽ bắt đầu từ ngày mai.]
[Kim Dokja: Vậy tôi sẽ phải trả tiền để đọc phần cuối vào ngày mai?]
[tls123: Phải, e là cậu sẽ phải trả tiền để đọc nó.]
[Kim Dokja: Đương nhiên, tôi sẽ trả! Tôi sẽ mua phần cuối cùng!]
Sau đó, tác giả không trả lời tin nhắn nữa, hình như anh ta đã log out rồi. Tôi cảm thấy sụp đổ và trống rỗng. Tác giả đã thành công rồi, nên anh ta không buồn trả lời tin nhắn nữa mà log out luôn phải không?
Sự ngưỡng mộ của tôi dần chuyển hóa thành mùi chua loét của sự ghen tị. Tôi hào hứng như thế để làm gì cơ chứ? Dù sao thì đó cũng đâu phải tiểu thuyết của tôi.
“Liệu anh ta có cho mình phiếu quà tặng không nhỉ? Giá mà được một phiếu quà tặng trị giá 50.000 won thì tốt biết mấy.”
Lúc đó, tôi đã suy nghĩ một cách ngây thơ như vậy, không hề hay biết những gì sẽ xảy ra với thế giới vào ngày hôm sau.', 1)
INSERT [dbo].[CHUONG] ([MaChuong], [TenChuong], [Noidung], [Matruyen]) VALUES (2, N'Tập 1: Chế độ thu phí (1)', N'“Tôi là Dokja [1].”
Tôi thường tự giới thiệu bản thân như vậy, và y như rằng sau đó sẽ dẫn đến sự hiểu lầm như sau:
“Ồ, cậu là con một à?”
“Phải, nhưng ‘Dokja’ không phải là nghĩa đó.”
“Hả? Tức là sao?”
“Tên tôi là Dokja. Kim Dokja.”
Kim Dokja (金獨子) – cha tôi đã đặt cho tôi cái tên này với mong muốn tôi có thể trở thành một người đàn ông độc lập và mạnh mẽ. Nhưng chắc ổng không thể ngờ rằng, cái tên mà ổng ban cho lại chỉ khiến tôi trở thành một thằng đàn ông độc thân tầm thường và cô đơn mà thôi. Tóm lại là thế này:
Tôi tên Kim Dokja, 28 tuổi, sống một mình. Sở thích của tôi là đọc tiểu thuyết mạng trên tàu điện ngầm.
“Cứ thế, anh sẽ chui cả vào trong điện thoại di động mất thôi.”
Trên chuyến tàu điện ngầm ồn ào, tôi ngẩng đầu lên theo phản xạ. Một đôi mắt tò mò đang nhìn thẳng vào tôi. Đó là một nhân viên của phòng Nhân sự trong công ty, Yoo Sangah.
“A, xin chào.” Tôi chào cô ấy.
“Anh đang trên đường về nhà từ công ty à?”
“Vâng, còn cô thì sao, cô Yoo Sangah?”
“Hôm nay rõ là may. Trưởng phòng của chúng tôi đã đi công tác rồi.” Chỗ ngồi bên cạnh tôi vừa trống, Yoo Sangah liền lập tức ngồi xuống. Một mùi thơm thoang thoảng toát ra từ bả vai đang dựa sát gần tôi của cô ấy, khiến tôi bất giác căng thẳng hẳn lên.
“Cô có thường đi tàu điện ngầm không?”
“Thì…” Vẻ mặt của Yoo Sangah trầm xuống. Nghĩ lại thì đây là lần đầu tiên tôi gặp Yoo Sangah trên tàu điện ngầm. Mọi người đồn đại rằng Yoo Sangah thường được đám đàn ông trong công ty chở về nhà mỗi ngày, từ Trưởng phòng Nhân sự Kang cho đến Trưởng phòng Tài chính Han…Nhưng không ngờ, Yoo Sangah lại thốt lên một câu trả lời ngoài dự đoán: “Có kẻ đã trộm mất xe đạp của tôi rồi.”
Xe đạp ư?
“Cô đi làm bằng xe đạp à?”
“Phải! Dạo này tôi tăng ca nhiều quá, không đi tập được mấy. Hơi phiền phức, nhưng đáng lắm.”
“Ồ, ra là vậy.”
Yoo Sangah nở nụ cười. Nhìn cô ấy ở khoảng cách gần thế này, tôi có thể hiểu vì sao đám đực rựa trong công ty cứ phát sốt lên vì cô. Nhưng thôi, đó chẳng phải việc của tôi. Mỗi người có một cuộc sống riêng, và cuộc sống của Yoo Sangah hoàn toàn khác biệt với tôi.
Sau cuộc trò chuyện gượng gạo, chúng tôi tiếp tục dán mắt vào điện thoại của mình. Tôi mở ứng dụng đọc truyện mà mình đang xem dở trước khi Yoo Sangah… Cái gì thế này? “Por favor dinero.”
“Hả?”
“Tiếng Tây Ban Nha đấy.”
“…Vậy à. Nó có nghĩa là gì?”
“Làm ơn hãy cho tôi chút tiền,” Yoo Sangah trả lời một cách tự hào. Tranh thủ học thêm trên chuyến tàu về nhà ư…? Cuộc sống của cô ấy đúng là khác tôi quá nhiều. Mà, cô ấy học thuộc cụm từ này để làm cái gì vậy?
“Cô chăm chỉ thật.”
“Mà này, anh Dokja đang đọc gì thế?”
“À, tôi…”
Yoo Sangah chăm chú nhìn vào chiếc màn hình LCD trên con di động của tôi. “Tiểu thuyết à?”
“Vâng, à thì… Tôi đang học tiếng Hàn ấy mà.”
“Chà, tôi cũng thích đọc tiểu thuyết lắm. Nhưng dạo này tôi lại không có thời gian để đọc…” Ngạc nhiên thật, Yoo Sangah thích đọc tiểu thuyết ư? “Tôi thường đọc sách của Murakami Haruki, Raymond Carver, Han Kang…”
Tôi cũng nghĩ vậy.
Yoo Sangah hỏi: “Anh Dokja, tác giả yêu thích của anh là ai?”
“Tôi có nói tên thì cô cũng không biết đâu.”
“Tôi đã đọc nhiều lắm. Anh cứ nói thử xem.”
Vào lúc này, thật sự rất khó để nói rằng sở thích của tôi là đọc tiểu thuyết mạng. Tôi liếc qua màn hình điện thoại.
[“Thế giới sau tận thế”
Tác giả: Sing Shangshong.]
Tôi không thể nói là mình đang đọc “Thế giới sau tận thế” của Sing Shangshong được.
“Thì chỉ là truyện kỳ ảo thôi. Đại loại như là… Ờ, như ‘Chúa tể của những chiếc nhẫn’ ấy…”
Yoo Sangah mở lớn đôi mắt: “A, ‘Chúa tể của những chiếc nhẫn’! Tôi đã xem bộ phim đó rồi!”
“Bộ phim đó rất hay.”
Chúng tôi lại rơi vào im lặng. Yoo Sangah nhìn tôi chằm chằm như thể đang chờ tôi tiếp tục mở lời. Cuộc trò chuyện rơi vào bế tắc. Vì vậy tôi quyết định thay đổi chủ đề.
“Thế mà tôi đã vào công ty được tròn một năm rồi đấy, bắt đầu cũng từ tầm này năm ngoái. Thời gian trôi nhanh thật.”
“Vâng, hồi đó chúng ta đều chẳng biết gì cả nhỉ?”
“Phải, cảm giác cứ như chỉ mới hôm qua thôi vậy, thế mà thời hạn hợp đồng của tôi đã hết rồi.”
Lúc đó, khi nhìn thấy vẻ mặt của Yoo Sangah, tôi mới nhận ra mình đã lỡ lời.
“Ôi, tôi…” Yoo Sangah im bặt.
Tôi quên mất. Tháng trước, Yoo Sangah đã được một chủ đầu tư nước ngoài tiến cử và được xét duyệt lên thành nhân viên chính thức.
“A đúng rồi, xin lỗi vì lời chúc mừng muộn màng nhé. Haha, đáng lẽ ra tôi cũng nên chăm chỉ học thêm ngoại ngữ hơn mới phải.”
“Ôi không, anh Dokja! Vẫn còn một buổi đánh giá hiệu quả công việc nữa và…”
Tôi ghét phải thừa nhận điều này, nhưng cách mà Yoo Sangah nói chuyện thật là tuyệt vời. Khuôn mặt cô ấy sáng bừng như thể mọi ánh đèn trên thế gian đều tập trung vào một mình cô vậy. Nếu thế giới này là một cuốn tiểu thuyết, thì nhân vật chính hẳn phải là một người như cô ấy. Thực tế, đó âu cũng là lẽ đương nhiên. Tôi chẳng cố gắng trong bất cứ việc gì, trong khi Yoo Sangah lại rất nỗ lực. Tôi đọc tiểu thuyết trên mạng trong khi Yoo Sangah chăm chỉ học hành. Vì vậy, Yoo Sangah trở thành nhân viên chính thức còn tôi thì phải chấm dứt hợp đồng là điều dĩ nhiên thôi.
“Này… Anh Dokja.”
“Vâng.”
“Nếu anh không ngại… hay là tôi giới thiệu cho anh app điện thoại mà tôi đang dùng nhé?” Giọng Yoo Sangah bỗng trở nên xa xôi, như thể ý thức của tôi vừa trôi tuột ra khỏi thế giới này vậy. Tôi cố giữ tỉnh táo và nhìn thẳng về phía trước. Một cậu bé khoảng mười tuổi đang ngồi trên ghế đối diện. Cậu ôm một cái lưới vợt côn trùng trong tay, ngồi bên mẹ mình và bật cười khanh khách.
“… Anh Dokja?”
Nếu như tôi bắt đầu một cuộc sống khác thì sao? Ý tôi là, nếu như tính chất cuộc sống của tôi bỗng hoàn toàn thay đổi thì sao?
“Anh Kim Dok…”
Nếu như câu chuyện đời tôi không phải thể loại “hiện thực” mà là “kỳ ảo”… Liệu tôi có thể trở thành nhân vật chính không? Tôi không biết nữa. Có lẽ sẽ chẳng bao giờ biết được. Tôi chỉ biết rõ một điều.
“Không sao đâu, cô Yoo Sangah.”
“Hả?”
“Dù tôi có biết tên app đó thì cũng không có tác dụng gì đâu.” Rõ ràng cuộc đời tôi mang thể loại “hiện thực”. “Vì ‘Độc giả’ thì phải sống cuộc sống của ‘độc giả’ chứ.”
“Hả? Gì cơ…?”
“Tôi là người như vậy đấy.”
Trong cuộc sống này, tôi không phải nhân vật chính, mà là một “độc giả” [2].
“Cuộc sống ‘độc giả’…” Vẻ mặt của Yoo Sangah trở nên nghiêm trọng. Tôi xua tay tỏ ý rằng mình vẫn ổn. Không biết vì sao nhưng cô gái này thật sự lo lắng cho tôi, có lẽ vì cô ấy là nhân viên phòng Nhân sự chăng…? Mặc dù cô ấy biết rõ thành tích công việc của tôi tệ như thế nào mà.
“Anh Dokja nói hay lắm.”
“Vâng?”
“Thế thì tôi sẽ sống một cuộc sống ngọc ngà [3] vậy!”
Yoo Sangah có vẻ như đã quyết định được điều gì, sau đó cô ấy quay lại tiếp tục học tiếng Tây Ban Nha. Tôi liếc nhìn cô một thoáng một lúc rồi quay về chúi mũi vào trang truyện của mình. Mọi thứ trở lại như bình thường, nhưng kỳ lạ thay, tôi không thể kéo được màn hình điện thoại nữa. Có lẽ sức nặng của hiện thực mà tôi vừa ý thức được đã đè chặt thanh cuộn màn hình rồi chăng?
Đúng lúc này, trên màn hình hiện lên một dòng thông báo.
[Bạn có một thư mới.]
Là email từ tác giả “Bí kíp sinh tồn”. Tôi liền mở email ra.
[Kính gửi quý độc giả, tiểu thuyết của tôi sẽ được mở chế độ thu phí vào lúc 7 PM. Thứ này sẽ có ích. Chúc bạn may mắn.]
[1 tệp đính kèm.]
Tác giả nói sẽ gửi cho tôi một món quà. Món quà gì nhỉ?
…Giống như cái tên của mình, tôi cũng là một “độc giả” trời sinh. Vậy nên, tôi rất hào hứng khi nhận được email này. Phải, cuộc sống của một “độc giả” cũng không tệ lắm.
Tôi kiểm tra thời gian. Bây giờ là 6:55 PM. Chỉ còn đúng 5 phút nữa là đến 7 giờ đúng – thời điểm bộ truyện kia bắt đầu mở chế độ thu phí. Trong ứng dụng đọc truyện, tôi mở danh sách yêu thích mà mình đã lưu ra. Vì cả bộ truyện chỉ có mình tôi là độc giả duy nhất, tôi nên là người đầu tiên để lại bình luận chúc mừng và cổ vũ tác giả chứ nhỉ?
Thế nhưng…
[Tác phẩm không tồn tại.]
Tôi thử gõ đi gõ lại từ “hủy diệt” vào thanh tìm kiếm nhiều lần, nhưng kết quả vẫn y như vậy. Trang thông tin về bộ truyện “Bí kíp sinh tồn” đã hoàn toàn biến mất không một chút dấu vết. Thật kỳ lạ. Đã bao giờ có trường hợp truyện bị xóa đột ngột mà không có thông báo trước khi sắp được mở chế độ thu phí chưa nhỉ?
Ngay lúc đó, đèn trên tàu bỗng phụt tắt, cả toa tàu trở nên tối mịt.
Kétttttttt!
Con tàu rung mạnh, tiếng kim loại ma sát chát chúa rít lên. Yoo Sangah hét ầm lên và ôm lấy tay tôi. Tôi nghe thấy tiếng mọi người xôn xao náo loạn. Yoo Sangah ghì tay tôi mạnh đến mức tâm trí tôi dồn cả vào cơn đau điếng ở cánh tay trái thay vì lực quán tính sinh ra khi đoàn tàu phanh gấp. Phải mất khoảng mười hai giây sau, đoàn tàu mới hoàn toàn dừng lại.
Những tiếng thắc mắc xôn xao khắp nơi.
“Ôi trời, chuyện gì vậy?”
“C-Cái gì thế?”
Trong bóng tối, có ánh sáng đèn từ một vài chiếc di động sáng lên. Yoo Sangah vẫn ôm chặt tay trái của tôi, hỏi: “Ch-Chuyện gì đang xảy ra thế này?”
Tôi giả vờ bình tĩnh. “Đừng lo. Không có chuyện gì nghiêm trọng đâu.”
“Thật không?”
“Ừ, cùng lắm chỉ là tai nạn do ai đó nhảy tàu tự tử thôi. Nhân viên kỹ thuật sẽ thông báo ngay ấy mà.”
Vừa dứt lời, tôi liền nghe thấy thông báo của nhân viên kỹ thuật trên tàu: “Thưa toàn bộ hành khách trên tàu. Thưa toàn bộ hành khách trên tàu.”
Tiếng ồn ào huyên náo lập tức im bặt. Tôi thở phào nói: “Thấy chưa? Có gì nghiêm trọng đâu. Bây giờ bọn họ sẽ xin lỗi, rồi điện sẽ bật trở lại…”
“M-Mọi người hãy mau chạy đi… Chạy…!”
“Hả?”
Một tiếng bíp dài vang lên, đài thông báo trên tàu tắt phụp. Cả đoàn tàu trở nên hỗn loạn.
“A-anh Dokja? Thế này là sao vậy…”
Một ánh sáng chói lóe lên từ phía trước con tàu. Sau đó, tôi nghe thấy một tiếng trống vang lên kèm theo một tiếng nổ nhỏ. Có thứ gì đó ẩn trong bóng tối đang lao về phía này. Đúng lúc này, tôi vô tình nhìn thấy đồng hồ.
7:00 PM.
Tíc. Cả thế giới như ngừng bặt lại. Rồi tôi nghe thấy một giọng nói:
[Dịch vụ miễn phí của hệ thống hành tinh số 8612 đã kết thúc.]
[Kịch bản chính bắt đầu.]
Đó là khoảnh khắc khi câu chuyện của cuộc đời tôi thay đổi thể loại.', 1)
INSERT [dbo].[CHUONG] ([MaChuong], [TenChuong], [Noidung], [Matruyen]) VALUES (3, N'Tập 1: Chế độ thu phí (2)', N'[Dokkaebi [4]. Có người đã gọi như vậy trong lần đầu tiên nó xuất hiện.]
Không hiểu sao câu văn này bỗng hiện lên trong đầu tôi. Tàu điện ngầm dừng đột ngột, điện phụt tắt, khoang tàu tối om… Tất cả những chi tiết này đem lại cho tôi cảm giác déjà vu [5] mãnh liệt. Chuyện tàu điện ngầm bị dừng đột ngột tuy hiếm, nhưng vẫn có thể xảy ra. Nhưng lần này là vì sao nhỉ? Tôi bất giác nhớ lại những câu quen thuộc mở đầu cho cuốn tiểu thuyết… Không thể nào!? Nếu thế thì thật hoang đường!
Vào đúng lúc này, ô cửa của toa 3807 xịch mở, và điện bật sáng trở lại. Yoo Sangah nép mình bên cạnh tôi, lẩm bẩm: “… Dokkaebi?”
Trong đầu tôi như có tiếng nổ “uỳnh” vang lên. Tôi run bắn lên khi thấy nội dung cuốn truyện mình từng đọc dần dần hòa vào làm một với hiện thực trước mắt. [Một sinh vật kỳ dị mình đầy lông lá, thân choàng áo tơi, đầu có cặp sừng xuất hiện, bay lơ lửng giữa không trung.]
[Nó quá dị hợm để có thể gọi là tinh linh, quá xấu xa để có thể gọi là thiên thần, và quá ngờ nghệch để có thể gọi là ác quỷ.]
[Vì vậy, nó được gọi là “dokkaebi”.]
Hơn thế nữa, tôi còn biết câu đầu tiên mà con dokkaebi kia sắp nói là gì.
[&어#@!&어#@!…]
[&어#@!&어#@!…]
Tiểu thuyết và hiện thực đã hoàn toàn trùng khớp.
“Cái gì vậy?”
“Thực tế ảo à?”
Giữa những xì xào bàn tán, tôi cảm thấy mình như bị ném vào một thế giới khác. Không nghi ngờ gì nữa, đây đích thị là một con dokkaebi – chính con dokkaebi đã mở cánh cửa dẫn tới thảm kịch của hàng ngàn sinh mạng trong “Bí kíp sinh tồn”.
Bỗng nhiên, giọng của Yoo Sangah vang lên, cắt đứt dòng suy nghĩ của tôi: “Không hiểu sao nghe hơi giống tiếng Tây Ban Nha, tôi có nên nói chuyện với nó không nhỉ?”
Tôi có chút ngỡ ngàng, liền hỏi: “… Cô có biết đó là thứ gì không hả? Cô định ra đó và hỏi xin tiền nó hay sao?”
“Không, nhưng…”
Ngay lúc đó, tôi nghe thấy một tràng tiếng Hàn phát âm cực kỳ chuẩn xác vang lên. “A lô, a lô. Nghe rõ không? Hầy, do không có sẵn gói ngôn ngữ Hàn Quốc nên hơi mất công một chút. Tất cả đã nghe rõ chưa?”
Tôi thấy nét mặt căng thẳng của mọi người hơi giãn ra, có lẽ là vì nghe thấy ngôn ngữ quen thuộc chăng? Một người đàn ông cao lớn trong nguyên bộ suit chỉnh tề bước ra trước tiên.
“Này, mấy người đang làm trò gì vậy?”
“…Hở?”
“Mấy người đang quay phim đấy à? Tôi phải đi gấp cho kịp buổi thử vai.”
Tôi không có ấn tượng gì với khuôn mặt này, xem ra đó là một diễn viên không tên tuổi. Nếu tôi là đạo diễn, chắc chắn tôi sẽ chọn người này bởi cái vẻ tràn đầy năng lượng và nhiệt huyết của anh ta. Nhưng đáng tiếc, đứng trước anh ta lúc này không phải một vị đạo diễn nào cả.
“À, buổi thử vai. Phải rồi. Đây cũng là một buổi thử vai. Haha, do dữ liệu không được đầy đủ, chứ nếu thông báo rõ ràng 7 giờ tối sẽ bắt đầu thu phí, thì chắc đã có nhiều người xem trả tiền hơn rồi…”
“Hả? Đang nói cái quái gì vậy?”
“Được rồi. Thưa các vị, hãy bình tĩnh ngồi về chỗ của mình và nghe ta nói đây. Kể từ lúc này, ta sẽ thông báo cho các ngươi biết một điều vô cùng quan trọng.”
Lồng ngực tôi dần dần trở nên nghẹn ứ.
“Cái quái gì vậy? Mau cho tàu chạy đi!”
“Ai đó gọi trưởng tàu đến đây cái!”
“Sao họ lại dám làm chuyện này khi không có sự đồng ý của chúng ta chứ?”
“Mẹ ơi, đó là thứ gì vậy? Hoạt hình ạ?”
Không còn nghi ngờ gì nữa, đây chính là đoạn mở đầu mà tôi đã đọc. Tôi muốn ngăn những việc tiếp theo xảy ra, nhưng… không có cách nào cả. Mọi người ở đây sẽ không nghe lời của một sinh vật nhỏ bé, dễ thương, trông như được tạo bởi CG này đâu. Điều duy nhất tôi có thể làm đó là ngăn Yoo Sangah lại khi cô ấy muốn đứng lên khỏi ghế.
“Cô Yoo Sangah, nguy hiểm lắm, đừng di chuyển.”
“Hả?” Yoo Sangah kinh ngạc mở to mắt. Tôi biết lời mình vừa nói rất mơ hồ, nhưng tôi không thể giải thích những gì mình biết vào lúc này.
Đúng hơn thì, tôi không cần phải giải thích nữa.
“Haha, các ngươi thật ồn ào.”
Bởi những gì sắp xảy ra trước mắt có sức thuyết phục hơn bất cứ lời giải thích nào.
“Ta đã bảo là yên lặng!”
Tôi từ từ nhắm mắt lại khi cặp mắt của con dokkaebi dần chuyển sang màu đỏ. Có thứ gì đó kêu lục bục, rồi một tiếng nổ “bụp” trầm đục vang lên, cả khoang tàu rơi vào tĩnh lặng.
“Ư, ư. A…” Một cái lỗ to tướng xuất hiện ngay giữa trán của anh chàng diễn viên vô danh sắp có buổi thử vai. Người đàn ông lắm lời liền ngã gục xuống đất ngay tại chỗ.
“Đây không phải là quay phim.”
Lại một tiếng vỡ giòn tan nữa vang lên. Lần này, là người đã đòi gọi trưởng tàu.
“Không phải giấc mơ. Cũng chẳng phải tiểu thuyết.”
Một, hai… Máu phọt lên không trung ngay khi đầu của ai đó bắt đầu nổ tung. Họ đều là những người đã thể hiện sự chống đối với dokkaebi, cùng với những người hoảng loạn gào thét và bỏ chạy. Bất cứ ai gây ra những tiếng ồn ào náo loạn dù nhỏ nhất sẽ phải nhận một cái lỗ sâu hoắm trên trán. Chỉ trong phút chốc, cả đoàn tàu biến thành một bể máu.
“Đây không còn là ‘thực tế’ mà các ngươi từng biết nữa. Đã hiểu chưa? Vậy nên hãy câm miệng lại và nghe lời ta nói đây.”
Hơn một nửa số người có mặt ở đây đã chết. Máu và những mảnh xác người nằm la liệt khắp các khoang tàu.
Bây giờ, không ai dám la hét gì nữa. Bọn họ khiếp sợ nhìn con dokkaebi như loài vượn nguyên thủy khi đứng trước kẻ săn mồi tàn bạo. Tôi choáng váng ghì chặt lấy bả vai Yoo Sangah khi cô ấy bắt đầu khóc nấc lên, cố nén hơi thở.
Đây là sự thật. Khi lời nhắn kỳ lạ vang lên trong tai tôi, và cả khi con dokkaebi xuất hiện trước mắt, tôi vẫn còn chưa ý thức được điều này, cho đến tận khi chứng kiến cả đoàn tàu chìm trong bể máu, tôi mới tỉnh ra.
“Thưa các vị! Cuộc sống của các vị từ trước đến nay vẫn luôn tốt đẹp lắm nhỉ?”
Một bà cụ ngồi ở khu ghế ưu tiên vô tình chạm mắt với con dokkaebi, bà cụ liền run lên vì khiếp hãi.
“Các vị đã sống miễn phí quá lâu rồi. Cuộc sống này thật hào phóng phải không? Các vị được sinh ra miễn phí, tha hồ hít thở, ăn uống, bài tiết, và cả sinh con đẻ cái nữa! Ha! Đúng là một thế giới thật tốt đẹp!”
Miễn phí? Không ai trên một chuyến tàu muộn sau giờ làm lại được sống một cách miễn phí cả. Để sống, họ phải nai lưng ra làm việc kiếm tiền, và bắt chuyến tàu vào giờ tan tầm này để trở về nhà sau một ngày dài lao động. Thế nhưng, vào lúc này, không ai dám phản bác lại lời nói của con dokkaebi.
“Nhưng giờ đây, những ngày tháng tốt đẹp ấy đã kết thúc rồi. Các vị còn được sống miễn phí bao lâu nữa đây? Nếu muốn hưởng thụ hạnh phúc, trả giá là điều đương nhiên rồi. Phải không nào?”
Tất cả đều run lẩy bẩy, không trả lời nổi. Nhưng ngay sau đó, một cánh tay dè dặt giơ lên.
“V-Vậy ngài có muốn tiền không?”
Tôi tự hỏi loại người nào có thể nói ra lời đó vào lúc như thế này. Nhưng không ngờ, tôi lại biết người này.
“Cô Yoo Sangah, đó có phải là trưởng phòng Han của phòng Tài chính không?”
“…Phải.”
Không có gì đáng ngạc nhiên. Gã ta là một tên có ô dù điển hình trong công ty, là kẻ đứng đầu danh sách những người mà đám nhân viên mới muốn tránh mặt. Đó là Han Myungoh, trưởng phòng Tài chính. Vì sao một kẻ như thế mà lại chịu đi tàu điện ngầm nhỉ?
“Tôi sẽ trả tiền, bao nhiêu cũng được. Hãy lấy đi. Xin hãy nhớ tôi là người này.”
Trưởng phòng Han lấy tấm danh thiếp của mình ra trước những ánh mắt đầy mong đợi của mọi người xung quanh. Bầu không khí sôi nổi hẳn lên, cứ như thể gã là đấng cứu thế đang chiến đấu chống lại bọn khủng bố vậy.
“Ngài muốn bao nhiêu? Một tờ lớn này? Hay hai tờ?”
Đó là một khoản tiền quá lớn đối với mức thu nhập của cấp bậc trưởng phòng ở một công ty con. Có lời đồn rằng Han Myungoh là con trai út của giám đốc công ty chi nhánh này, và giờ thì tôi nghĩ có lẽ đó là sự thật. Một trưởng phòng chẳng bao giờ có thể giữ được từng đấy tấm séc trong ví của mình.
“Chà, ngươi định đưa tiền cho ta ư?”
“Đ-Đúng vậy! Hiện giờ tôi không cầm nhiều tiền mặt theo… Nhưng nếu cho tôi ra khỏi đây, tôi có thể đưa ngài nhiều hơn nữa.”
“Tiền, tốt lắm. Một thứ được làm từ sợi thực vật mà loài người thường dùng để thỏa hiệp với nhau.”
Gã trưởng phòng vui vẻ ra mặt. Đó là biểu cảm “Quả nhiên, có tiền mua tiên cũng được”. Đáng thương làm sao.
“Bây giờ tôi chỉ có ngần này, nhưng…”
“Nhưng cũng chỉ áp dụng được trong không gian và thời gian của các ngươi mà thôi.”
“Hả?”
Chỉ trong chớp mắt sau, một ngọn lửa bất ngờ bùng lên trong không khí, thiêu rụi những tấm séc trên tay gã trưởng phòng thành tro bụi. Trưởng phòng Han hét lên thất thanh.
“Đống giấy lộn đó chẳng có giá trị gì trong thế giới vĩ mô. Nếu còn dám làm vậy một lần nữa, ta sẽ thổi bay đầu ngươi, nhớ đấy.”
“Ư… Aaa…” Nỗi sợ hãi lại một lần nữa lan tỏa giữa những người sống sót. Có thể dễ dàng đoán được họ đang suy nghĩ những gì, bởi mọi thứ đều y hệt như trong truyện vậy.
“Rốt cuộc chuyện này là sao?”
Chỉ có mình tôi biết chuyện gì sẽ xảy ra tiếp theo.
“Ôi trời, trong lúc các ngươi đang ầm ĩ thì khoản nợ lại ngày càng tăng đấy. Hừm, thôi được. Thay vì để ta giải thích cả trăm lần, chi bằng cho các ngươi tự thực hành kiếm tiền luôn chẳng phải sẽ nhanh hơn sao?”
Sừng của con dokkaebi liền mọc dài ra như một cặp ăng-ten, cơ thể nó bồng bềnh bay lên trần tàu.
Lát sau, một thông báo vang lên.
[Kênh #BI – 7623 đã mở.]
[Các tinh tọa [6] đã vào kênh.]
Một ô cửa số nhỏ hiện ra trước cặp mắt kinh hoàng của mỗi người.
[Kịch bản chính bắt đầu!]
+
[Kịch bản chính #1 – “Minh chứng của giá trị”.]
Phân loại: Chính.
Độ khó: F.
Điều kiện thông qua: Giết từ 1 sinh vật trở lên.
Thời gian: 30 phút.
Phần thưởng: 300 xu.
Thất bại: Chết.
+
Con dokkaebi nhếch mép cười trong khi cơ thể nó dần trở nên trong suốt rồi tan biến vào không khí.
“Vậy thì, chúc các vị may mắn. Nhất định phải cho ta xem chuyện hay đấy!”', 1)
SET IDENTITY_INSERT [dbo].[CHUONG] OFF 
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__7FB3F64F24C7CD54]    Script Date: 3/20/2019 7:59:12 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--KHACHHANG > LUOTXEM > TRUYEN + NOVEL
GO
ALTER TABLE [dbo].[LUOTXEM]  WITH CHECK ADD  CONSTRAINT [FK_Khachxem] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[LUOTXEM] CHECK CONSTRAINT [FK_Khachxem]
GO
ALTER TABLE [dbo].[LUOTXEM]  WITH CHECK ADD  CONSTRAINT [FK_Xemmanga] FOREIGN KEY([Matruyen])
REFERENCES [dbo].[TRUYEN] ([Matruyen])
--CHUDE > THUOCCHUDE > TRUYEN
GO
ALTER TABLE [dbo].[THUOCCHUDE]  WITH CHECK ADD  CONSTRAINT [FK_Thuocchude] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[THUOCCHUDE] CHECK CONSTRAINT [FK_Thuocchude]
GO
ALTER TABLE [dbo].[THUOCCHUDE]  WITH CHECK ADD  CONSTRAINT [FK_Chude] FOREIGN KEY([Matruyen])
REFERENCES [dbo].[TRUYEN] ([Matruyen])
--THELOAI > THUOCTHELOAI > TRUYEN
GO
ALTER TABLE [dbo].[THUOCTHELOAI]  WITH CHECK ADD  CONSTRAINT [FK_Thuoctheloai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[THELOAI] ([MaTL])
GO
ALTER TABLE [dbo].[THUOCTHELOAI] CHECK CONSTRAINT [FK_Thuoctheloai]
GO
ALTER TABLE [dbo].[THUOCTHELOAI]  WITH CHECK ADD  CONSTRAINT [FK_Theloaimanga] FOREIGN KEY([Matruyen])
REFERENCES [dbo].[TRUYEN] ([Matruyen])
--CHUONG > TRUYEN
GO
ALTER TABLE [dbo].[CHUONG]  WITH CHECK ADD  CONSTRAINT [FK_Chuong] FOREIGN KEY([Matruyen])
REFERENCES [dbo].[TRUYEN] ([Matruyen])
GO
ALTER TABLE [dbo].[CHUONG] CHECK CONSTRAINT [FK_Chuong]
--TRUYEN > VIETTRUYEN > TACGIA
ALTER TABLE [dbo].[VIET]  WITH CHECK ADD  CONSTRAINT [FK_Viet] FOREIGN KEY([Matruyen])
REFERENCES [dbo].[TRUYEN] ([Matruyen])
GO
ALTER TABLE [dbo].[VIET] CHECK CONSTRAINT [FK_Viet]
GO
ALTER TABLE [dbo].[VIET]  WITH CHECK ADD  CONSTRAINT [FK_Tacgia] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TACGIA] ([MaTG])
GO
ALTER TABLE [dbo].[VIET] CHECK CONSTRAINT [FK_Tacgia]
--TINHTRANG > TRUYEN
GO
ALTER TABLE [dbo].[TRUYEN]  WITH CHECK ADD  CONSTRAINT [FK_Tinhtrang] FOREIGN KEY([MaTT])
REFERENCES [dbo].[TINHTRANG] ([MaTT])
GO
ALTER TABLE [dbo].[TRUYEN] CHECK CONSTRAINT [FK_Tinhtrang]