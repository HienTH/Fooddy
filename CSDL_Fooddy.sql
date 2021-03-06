USE [Fooddy_1]
GO
/****** Object:  Table [dbo].[tblCategories]    Script Date: 11/29/2016 2:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategories](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblComments]    Script Date: 11/29/2016 2:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComments](
	[ID] [int] NOT NULL,
	[FoodID] [nvarchar](50) NOT NULL,
	[CustomerID] [nvarchar](50) NOT NULL,
	[CommentDetails] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tblComments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomers]    Script Date: 11/29/2016 2:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomers](
	[ID] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_tblCutomers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFood]    Script Date: 11/29/2016 2:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFood](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UnitBrief] [nvarchar](50) NULL,
	[UnitPrice] [float] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[DateFood] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [nvarchar](50) NOT NULL,
	[SupplierId] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NOT NULL,
	[Latest] [bit] NOT NULL,
	[Views] [int] NOT NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 11/29/2016 2:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetails](
	[OrdersID] [nvarchar](50) NOT NULL,
	[FoodId] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_tblOrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrdersID] ASC,
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 11/29/2016 2:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[ID] [nvarchar](50) NOT NULL,
	[CustomerId] [nvarchar](50) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[RequireDate] [date] NOT NULL,
	[Receiver] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSuppliers]    Script Date: 11/29/2016 2:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSuppliers](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Vote] [int] NULL,
 CONSTRAINT [PK_tblSupplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 11/29/2016 2:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[CustomerID] [nvarchar](50) NOT NULL,
	[Activated] [bit] NOT NULL,
	[Quyen] [int] NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblCategories] ([ID], [Name], [Image]) VALUES (N'CTGR001', N'Bữa sáng', N'Sang.jpg')
INSERT [dbo].[tblCategories] ([ID], [Name], [Image]) VALUES (N'CTGR002', N'Bữa trưa', N'Trua.jpg')
INSERT [dbo].[tblCategories] ([ID], [Name], [Image]) VALUES (N'CTGR003', N'Bữa tối', N'Toi.jpg')
INSERT [dbo].[tblCategories] ([ID], [Name], [Image]) VALUES (N'CTGR004', N'Tráng miệng', N'Trangmieng.jpg')
INSERT [dbo].[tblCategories] ([ID], [Name], [Image]) VALUES (N'CTGR005', N'Đồ uống', N'Douong.jpg')
INSERT [dbo].[tblCategories] ([ID], [Name], [Image]) VALUES (N'CTGR006', N'Hà Nội', N'Hanoi.jpg')
INSERT [dbo].[tblCategories] ([ID], [Name], [Image]) VALUES (N'CTGR007', N'Món Italy', N'Italy.jpg')
INSERT [dbo].[tblCategories] ([ID], [Name], [Image]) VALUES (N'CTGR008', N'Món mới', N'Monmoi.jpg')
INSERT [dbo].[tblCategories] ([ID], [Name], [Image]) VALUES (N'CTGR009', N'Món Nướng', N'Monnuong.jpg')
INSERT [dbo].[tblCustomers] ([ID], [Fullname], [Email], [Photo], [Age]) VALUES (N'CTM0001', N'Nguyễn Văn Anh', N'NVA@gmail.com', N'CTM1.jpg', 20)
INSERT [dbo].[tblCustomers] ([ID], [Fullname], [Email], [Photo], [Age]) VALUES (N'CTM0002', N'Phạm Ngọc Anh', N'PNA@gmail.com', N'CTM2.jpg', 20)
INSERT [dbo].[tblCustomers] ([ID], [Fullname], [Email], [Photo], [Age]) VALUES (N'CTM0003', N'Hà Đức Hiến', N'HDH@gmail.com', N'CTM3.jpg', 20)
INSERT [dbo].[tblCustomers] ([ID], [Fullname], [Email], [Photo], [Age]) VALUES (N'CTM0004', N'Doãn Văn Thiều', N'DVT@gmail.com', N'CTM4.jpg', 20)
INSERT [dbo].[tblCustomers] ([ID], [Fullname], [Email], [Photo], [Age]) VALUES (N'CTM0005', N'Phạm Trọng Hiếu', N'PTH@gmail.com', N'CTM5.jpg', 20)
INSERT [dbo].[tblCustomers] ([ID], [Fullname], [Email], [Photo], [Age]) VALUES (N'CTM0006', N'Bạch Ngọc Hiệp', N'BNH@gmail.com', N'CTM6.jpg', 20)
INSERT [dbo].[tblCustomers] ([ID], [Fullname], [Email], [Photo], [Age]) VALUES (N'CTM0007', N'Vũ Quốc Tuấn', N'VQT@gmail.com', N'CTM7.jpg', 20)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0001', N'Bún ốc', NULL, 30, N'FD0001.jpg', CAST(0x223C0B00 AS Date), 1, N'Bún ốc là thức quà nổi tiếng của đất Hà Nội. Một buổi sáng trời se se lạnh mà được ngồi ở một quán bún ốc, thưởng thức một tô bún nghi ngút khói, với những sợi bún sần sật cùng với nước dùng ngon ngọt thì quả thật là hết ý. Với giá cả chỉ từ 20000đ - 35000đ cho một bát bún toàn ốc là ốc, lại còn kết hợp với cả đậu, chuối, thịt bò, giò, sườn sụn,..thì quả thật là quá no nê cho một bữa sáng.', N'CTGR001', N'SP0001', 10, 0.3, 1, 16)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0002', N'Cháo sườn', NULL, 10, N'FD0002.jpg', CAST(0x223C0B00 AS Date), 1, N'Nhắc đến ngày đông mà không nhắc tới cháo sườn thì quả là một thiếu sót lớn. Là người Hà Nội thì không ai mà chưa từng được nếm thử qua hương vị của cháo sườn. Chỉ với 20.000đ – 30.000đ, bạn đã có ngay một bát cháo sườn thơm ngon đậm vị, với những hạt cháo được xay mịn nhuyễn, thịt sườn được ninh nhừ tan ngay khi mới vừa được cho vào miệng. Tùy theo khẩu vị của từng người bạn có thể gọi thêm hạt tiêu hay quẩy nóng để món ăn thêm phần hấp dẫn.', N'CTGR001', N'SP0002', 5, 0, 0, 5)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0003', N'Xôi xéo', NULL, 15, N'FD0003.jpg', CAST(0x223C0B00 AS Date), 1, N'Xôi là món ăn sáng phổ biến của người Hà Nội. Tuy vậy, xôi còn có thể dùng để ăn trưa, ăn bữa xế cũng rất hợp miệng. Nói đến xôi là không thể không kể đến xôi xéo – một thứ xôi đặc biệt và vô cùng thơm ngon. Xôi xéo là sự hòa quyện của nhiều màu sắc : màu xanh của lá chuối dùng để gói xôi, màu vàng đậm của hành phi, màu vàng nhạt của đậu xanh thơm ngát. Chỉ cần bỏ một miếng xôi vào miệng là ta thấy mỡ, đậu và xôi cứ như tan dần ra.', N'CTGR002', N'SP0001', 3, 0.7, 0, 18)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0004', N'Phở', NULL, 25, N'FD0004.jpg', CAST(0x223C0B00 AS Date), 1, N'Phở là món ăn đặc trưng của Việt Nam và là biểu tượng cho các món ăn ở đất kinh kỳ. Có thể nói phở là thức ăn phù hợp với mọi mùa nhưng thưởng thức một tô phở nóng vào mùa đông là một cái thú đặc biệt. Vào buổi sáng sớm, khi hai bàn tay bạn đang xoa vào nhau vì cái lạnh tê tái, thì một tô phở nóng được bưng ra. Hít hà cái mùi thơm của bánh phở mềm, của thịt, của hành lá và của nước dùng thơm ngon được hòa lẫn với nhau thì quả thật là không còn gì bằng. Phở Hà Nội có hai vị đặc trưng là phở bò và phở gà, mỗi vị lại có một nét riêng. Phở bò thu hút người ta bởi cái ngọt của những thớ thịt bò, cái đậm vị của nước dùng phở.', N'CTGR001', N'SP0003', 3, 0, 0, 3)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0005', N'Bánh cuốn nóng', NULL, 20, N'FD0005.jpg', CAST(0x223C0B00 AS Date), 1, N'Nói Hà Nội là đất ẩm thực quả không sai, khi nơi đây là cái nôi sản sinh ra rất nhiều những món ăn ngon nổi tiếng và bánh cuốn là một trong số đó. Bánh cuốn được những cô bán hàng cháng mỏng, bên trong kèm theo lớp nhân thịt và chả quế đậm đà. Ăn kèm với bánh cuốn là nước chấm nóng hổi,thơm ngây ngất và đưa đẩy bánh cuốn vô cùng.', N'CTGR003', N'SP0002', 5, 0, 0, 29)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0006', N'Lẩu ếch', NULL, 30, N'FD0006.jpg', CAST(0x223C0B00 AS Date), 1, N'Lẩu ếch là món ăn phổ biến và được nhiều người ưa chuộng bởi hương vị ngọt thơm của thịt ếch và đậm đà của nước dùng. Chỉ cần bỏ ra một chút thời gian và công sức, bạn cũng có thể làm được món lẩu ếch ngon như ngoài quán đấy!', N'CTGR001', N'SP0002', 7, 0.2, 1, 7)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0007', N'Hủ tiếu thập cẩm', NULL, 40, N'FD0007.jpg', CAST(0x223C0B00 AS Date), 1, N'Tuyệt chiêu cho cách làm hủ tiếu  thập cẩm ngon vô cùng. Một trong những món ngon miền Nam không thể không nhắc đến đó là món hủ tiếu thập cẩm, món hủ tiếu ăn sáng sẽ rất ngon, cùng tìm hiểu cách làm với nau.vn món ngon mỗi ngày để biết cách làm hủ tiếu thập cẩm các bạn nhé! ', N'CTGR001', N'SP0004', 8, 0, 1, 5)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0008', N'Ghẹ rang muối', NULL, 60, N'FD0008.jpg', CAST(0x223C0B00 AS Date), 1, N'Món càng ghẹ rang muối ớt là món ăn phổ biến ở Sài gòn, vào các quán hải sản hay các quán nướng món càng ghẹ rang muối ớt là món ăn được nhiều thực khách gọi nhất, bởi ngồi nhâm nhi và thưởng thức món càng ghẹ rang muối bùi bùi, ngậy ngậy', N'CTGR002', N'SP0002', 7, 0.2, 1, 45)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0009', N'Vịt tiêm thuốc bắc', NULL, 80, N'FD0009.jpg', CAST(0x223C0B00 AS Date), 1, N'Món ngon nữa của ẩm thực miền Nam đó là món mì vịt tiềm thuốc bắc, ai đã được ăn qua món này chắc hẳn sẽ không quên được mùi vị thơm ngon của nó, và các bạn hoàn toàn có thể làm món mì vịt tiềm thuốc bắc tại nhà nhé! cách làm rất đơn giản ạ! dưới đây là chi tiết', N'CTGR002', N'SP0005', 12, 0, 1, 3)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0010', N'Bánh khoai mì nướng', NULL, 40, N'FD0010.jpg', CAST(0x223C0B00 AS Date), 1, N' Cách làm bánh khoai mì nướng thơm ngon vô cùng đơn giản mà nau.vn món ngon mỗi ngày chia sẻ tới các bạn dưới đây sẽ làm các bạn thực sự bất ngờ, chỉ mất chút thời gian lại có món bánh ngon, lạ miệng, ngậy ngậy thơm thơm cho gia đình mình thưởng thức mà không phải ra ngoài hàng mua, cùng thực hiện các bạn nhé', N'CTGR003', N'SP0002', 11, 0.1, 1, 5)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0011', N'Xôi sầu riêng', NULL, 20, N'FD0011.jpg', CAST(0x223C0B00 AS Date), 1, N'Xôi là món ăn được nhiều người yêu thích, xôi có rất nhiều loại xôi ngon, dễ ăn, như xôi ngô, xôi lạc, xôi ruốc, xôi đỗ xanh, xôi đỗ đen, xôi gà, xôi dừa… và một trong những món xôi ngon phải kể đến đó là món xôi sầu riêng, vị dẻo thơm của xôi kết hợp với vị ngọt, ngậy, đặc trưng của sầu riêng tạo nên một món ăn vô cùng hấp dẫn,…', N'CTGR003', N'SP0005', 13, 0, 1, 10)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0012', N'Bún mắm chay', NULL, 20, N'FD0012.jpg', CAST(0x223C0B00 AS Date), 1, N'Đây là món đặc sản của người miền Nam, cách làm cũng rất đơn giản, chúng ta có thể tự làm món này tại nhà với cách làm mà nau.vn món ngon mỗi ngày chia sẻ dưới đây các bạn nhé! Xem thêm: Công thức cho cách làm món cá kèo kho tộ siêu ngon ăn là mê. ', N'CTGR001', N'SP0002', 9, 0.5, 1, 11)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0013', N'Lươn om chuối đậu', NULL, 50, N'FD0013.jpg', CAST(0x223C0B00 AS Date), 1, N'Bổ sung thêm món ngon trong bữa cơm gia đình với công thức làm đơn giản dưới đây bạn không tốn quá nhiều thời gian mà vẫn đem lại bữa ăn ngon cho gia đình mình, đảm bảo sẽ được các ông chồng khen tấm tắc khi thưởng thức, lươn lại có giá trị dinh dưỡng rất cao đem lại sức khỏe tốt cho cả gia đình mình nữa các bạn nhé!', N'CTGR004', N'SP0002', 10, 0, 1, 17)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0014', N'Gà hấp lá chanh', NULL, 30, N'FD0014.jpg', CAST(0x223C0B00 AS Date), 1, N'Gà hấp lá chanh rất bắt mắt với màu vàng ươm của thịt gà , độ dai vừa phải thoang thoảng đâu đó mùi lá chanh thơm phức. Gà hấp lá chanh là một món ăn khá dễ làm nhưng nó giữ lại được toàn vẹn vị ngọt có trong thịt gà. Hãy nhanh tay làm món gà hấp lá chanh để cả nhà có một bữa tối ấm áp bên nhau nhé', N'CTGR002', N'SP0003', 9, 0, 1, 15)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0015', N'Lẩu gà lá giang', NULL, 50, N'FD0015.jpg', CAST(0x223C0B00 AS Date), 1, N'Lá giang là một cái tên nghe có vẻ lạ với nhiều người, nhưng nó lại rất đỗi quen thuộc với người dân Nam Bộ, không chỉ có thể kết hợp với nhiều loại thực phẩm tạo nên những món ăn ngon với vị chua đặc trưng, nó còn có nhiều tác dụng tốt đối với sức khỏe mà tiêu biểu nhất là khả năng thanh nhiệt giải độc.', N'CTGR005', N'SP0002', 14, 0, 1, 10)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0016', N'Thịt kho tiêu', NULL, 55, N'FD0016.jpg', CAST(0x223C0B00 AS Date), 1, N'Thịt kho tiêu là món ăn quen thuộc có mặt trong bữa ăn của hầu hết các gia đình Việt Nam. Hương vị bình dị nhưng vô cùng hấp dẫn khiến cho món này vẫn luôn được lòng các bà nội trợ và gia đình.', N'CTGR002', N'SP0005', 20, 0, 1, 20)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0017', N'Trứng sốt cà chua', NULL, 40, N'FD0017.jpg', CAST(0x223C0B00 AS Date), 1, N'Cơm nguội ăn với món trứng chưng cà chua thì đúng là miễn chê. Chỉ mất 3 phút chế biến, đảm bảσ không mất thời gian và công sức, rất thích hợp cho buổi sáng nhé', N'CTGR004', N'SP0003', 15, 0, 1, 15)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0018', N'Cơm chiên Dương Châu', NULL, 50, N'FD0018.jpg', CAST(0x223C0B00 AS Date), 1, N'Cơm chiên Dương Châu là một món ăn bắt nguồn từ Trung Hoa nhưng lại trở thành một phần quen thuộc trong thực đơn của người Việt Nam chúng ta. Đây là một món khai vị thường được lựa chọn, đóng vai trò không nhỏ trong sự thành công của các bữa tiệc.', N'CTGR003', N'SP0003', 18, 0, 1, 20)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0019', N'Sườn chiên xả ớt', NULL, 60, N'FD0019.jpg', CAST(0x223C0B00 AS Date), 1, N'Sườn chiên sả ớt là một món ăn chứa nhiều chất đạm lại bổ sung hàm lượng calo rất lớn cho cơ thể nên các bạn hãy nhanh tay thêm món sườn chiên sả ớt vào thực đơn bữa tối nhà mình ngay hôm nay nhé. Vừa đơn giản về cách làm lại vừa tiết kiệm thời gian nên dù có hơi bận một tí thì bạn cũng có thể chế biến được món ngon cho gia đình thưởng thức nhé.', N'CTGR001', N'SP0004', 23, 0, 1, 25)
INSERT [dbo].[tblFood] ([ID], [Name], [UnitBrief], [UnitPrice], [Image], [DateFood], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Latest], [Views]) VALUES (N'FD0020', N'Hấp sò huyết', NULL, 70, N'FD0020.jpg', CAST(0x223C0B00 AS Date), 1, N'Sò huyết rửa sạch để ráo. Cách chọn sò huyết ngon là những con vừa ăn, vì con lớn ăn dễ bị dai, con nhỏ lại bị teo thịt do chưa đẫy. Nên mua loại còn tươi, sò huyết tươi là những con thò lưỡi ra ngoài. Nếu sò huyết ngậm miệng có thể vẫn còn tươi nhưng nhất thiết không được có mùi.', N'CTGR004', N'SP0004', 32, 0, 1, 39)
INSERT [dbo].[tblOrderDetails] ([OrdersID], [FoodId], [Quantity], [UnitPrice], [Total]) VALUES (N'OD0001', N'FD0001', 1, 30, 30)
INSERT [dbo].[tblOrderDetails] ([OrdersID], [FoodId], [Quantity], [UnitPrice], [Total]) VALUES (N'OD0001', N'FD0003', 1, 15, 15)
INSERT [dbo].[tblOrderDetails] ([OrdersID], [FoodId], [Quantity], [UnitPrice], [Total]) VALUES (N'OD0002', N'FD0002', 1, 10, 10)
INSERT [dbo].[tblOrderDetails] ([OrdersID], [FoodId], [Quantity], [UnitPrice], [Total]) VALUES (N'OD0003', N'FD0004', 1, 25, 25)
INSERT [dbo].[tblOrderDetails] ([OrdersID], [FoodId], [Quantity], [UnitPrice], [Total]) VALUES (N'OD0004', N'FD0002', 2, 20, 40)
INSERT [dbo].[tblOrderDetails] ([OrdersID], [FoodId], [Quantity], [UnitPrice], [Total]) VALUES (N'OD0005', N'FD0003', 3, 15, 45)
INSERT [dbo].[tblOrders] ([ID], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description]) VALUES (N'OD0001', N'CTM0001', CAST(0x213C0B00 AS Date), CAST(0x223C0B00 AS Date), N'2016-11-23', N'Cầu Giấy', N'Đã nhận')
INSERT [dbo].[tblOrders] ([ID], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description]) VALUES (N'OD0002', N'CTM0002', CAST(0x213C0B00 AS Date), CAST(0x223C0B00 AS Date), N'2016-11-23', N'Mai Dịch', N'Đã nhận')
INSERT [dbo].[tblOrders] ([ID], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description]) VALUES (N'OD0003', N'CTM0003', CAST(0x213C0B00 AS Date), CAST(0x223C0B00 AS Date), N'2016-11-23', N'Nghĩa Đô', N'Chưa nhận')
INSERT [dbo].[tblOrders] ([ID], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description]) VALUES (N'OD0004', N'CTM0001', CAST(0x213C0B00 AS Date), CAST(0x213C0B00 AS Date), N'2016-11-22', N'Hoàn Kiếm', N'Đã nhận')
INSERT [dbo].[tblOrders] ([ID], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description]) VALUES (N'OD0005', N'CTM0006', CAST(0x203C0B00 AS Date), CAST(0x223C0B00 AS Date), N'2016-11-23', N'Cổ Nhuế', N'Chưa nhận')
INSERT [dbo].[tblSuppliers] ([ID], [Name], [Logo], [Email], [Phone], [Vote]) VALUES (N'SP0001', N'Bò Tơ Quán Mộc', N'logo1.jpg', N'Botoquanmoc@gmail.com', N'0978587711', 10)
INSERT [dbo].[tblSuppliers] ([ID], [Name], [Logo], [Email], [Phone], [Vote]) VALUES (N'SP0002', N'Thoáng Hội An Restaurant', N'logo2.jpg', N'Thoanghoian@gmail.com', N'0978587712', 30)
INSERT [dbo].[tblSuppliers] ([ID], [Name], [Logo], [Email], [Phone], [Vote]) VALUES (N'SP0003', N'Bục Quán', N'logo3.jpg', N'Bucquan@gmail.com', N'0978587713', 25)
INSERT [dbo].[tblSuppliers] ([ID], [Name], [Logo], [Email], [Phone], [Vote]) VALUES (N'SP0004', N'Mộc Quán', N'logo4.jpg', N'Mocquan@gmail.com', N'0978587714', 21)
INSERT [dbo].[tblSuppliers] ([ID], [Name], [Logo], [Email], [Phone], [Vote]) VALUES (N'SP0005', N'Minh Ký', N'logo5.jpg', N'Minhky@gmail.com', N'0978587715', 34)
INSERT [dbo].[tblSuppliers] ([ID], [Name], [Logo], [Email], [Phone], [Vote]) VALUES (N'SP0006', N'Thủy Tạ Cafe', N'logo6.jpg', N'Thuyta@gmail.com', N'0978587716', 70)
INSERT [dbo].[tblUser] ([Username], [Password], [CustomerID], [Activated], [Quyen]) VALUES (N'Admin1', N'Admin', N'CTM0004', 1, 1)
INSERT [dbo].[tblUser] ([Username], [Password], [CustomerID], [Activated], [Quyen]) VALUES (N'User0001', N'User1', N'CTM0001', 1, 0)
INSERT [dbo].[tblUser] ([Username], [Password], [CustomerID], [Activated], [Quyen]) VALUES (N'User0002', N'User2', N'CTM0002', 1, 0)
INSERT [dbo].[tblUser] ([Username], [Password], [CustomerID], [Activated], [Quyen]) VALUES (N'User0003', N'User3', N'CTM0003', 1, 0)
ALTER TABLE [dbo].[tblOrderDetails] ADD  CONSTRAINT [DF_tblOrderDetails_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[tblComments]  WITH CHECK ADD  CONSTRAINT [FK_tblComments_tblCustomers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tblCustomers] ([ID])
GO
ALTER TABLE [dbo].[tblComments] CHECK CONSTRAINT [FK_tblComments_tblCustomers]
GO
ALTER TABLE [dbo].[tblComments]  WITH CHECK ADD  CONSTRAINT [FK_tblComments_tblFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[tblFood] ([ID])
GO
ALTER TABLE [dbo].[tblComments] CHECK CONSTRAINT [FK_tblComments_tblFood]
GO
ALTER TABLE [dbo].[tblFood]  WITH CHECK ADD  CONSTRAINT [FK_tblFood_tblCategories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tblCategories] ([ID])
GO
ALTER TABLE [dbo].[tblFood] CHECK CONSTRAINT [FK_tblFood_tblCategories]
GO
ALTER TABLE [dbo].[tblFood]  WITH CHECK ADD  CONSTRAINT [FK_tblFood_tblSuppliers] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[tblSuppliers] ([ID])
GO
ALTER TABLE [dbo].[tblFood] CHECK CONSTRAINT [FK_tblFood_tblSuppliers]
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetails_tblFood] FOREIGN KEY([FoodId])
REFERENCES [dbo].[tblFood] ([ID])
GO
ALTER TABLE [dbo].[tblOrderDetails] CHECK CONSTRAINT [FK_tblOrderDetails_tblFood]
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetails_tblOrders] FOREIGN KEY([OrdersID])
REFERENCES [dbo].[tblOrders] ([ID])
GO
ALTER TABLE [dbo].[tblOrderDetails] CHECK CONSTRAINT [FK_tblOrderDetails_tblOrders]
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD  CONSTRAINT [FK_tblOrders_tblCutomers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[tblCustomers] ([ID])
GO
ALTER TABLE [dbo].[tblOrders] CHECK CONSTRAINT [FK_tblOrders_tblCutomers]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblCustomers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tblCustomers] ([ID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblCustomers]
GO
