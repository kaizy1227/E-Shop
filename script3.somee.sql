/****** Object:  Table [dbo].[About]    Script Date: 7/11/2021 8:15:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTilte] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [xml] NULL,
	[Detail] [ntext] NULL,
	[Status] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifieldBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/11/2021 8:15:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTilte] [varchar](50) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifieldBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome1] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/11/2021 8:15:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 7/11/2021 8:15:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTilte] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[Status] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifieldBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [nchar](10) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [int] NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [int] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail_1] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](20) NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTilte] [varchar](250) NULL,
	[Description] [nvarchar](4000) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[Status] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifieldBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [nchar](10) NULL,
	[Tags] [nvarchar](500) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTilte] [varchar](50) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifieldBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Silde]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Silde](
	[ID] [int] NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Silde] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [MetaTilte], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome1]) VALUES (1, N'Quần Áo', N'quan-ao', NULL, 1, NULL, CAST(N'2021-01-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[Category] ([ID], [Name], [MetaTilte], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome1]) VALUES (2, N'Đồng Hồ', N'dong-ho', NULL, 1, NULL, CAST(N'2021-01-06T15:43:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[Category] ([ID], [Name], [MetaTilte], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome1]) VALUES (3, N'Giày Dép', N'giay-dep-na', NULL, 1, NULL, CAST(N'2021-01-06T15:45:03.760' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (1, CAST(N'2021-01-08T14:22:35.527' AS DateTime), NULL, N'dasdsa', N'dsadsad', N'dsadsad', N'asdsada', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (2, CAST(N'2021-01-08T14:24:10.637' AS DateTime), NULL, N'cẩn', N'0123456789', N'abc', N'abc@gmai.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (3, CAST(N'2021-01-08T14:58:38.440' AS DateTime), NULL, N'Hai Vu Thanhh', N'81343080000', N'62 Sư Vạn Hạnh0', N'kaizy12237@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (26, CAST(N'2021-01-10T11:54:17.447' AS DateTime), NULL, N'Hai', N'0181237747', N'HCM', N'haikhanh26@mrhai.site', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (27, CAST(N'2021-01-10T13:09:34.760' AS DateTime), NULL, N'Chi Kim', N'081732364', N'Q100', N'chikim1233@mrhai.site', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (6, 3, 1, CAST(400000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (6, 6, 1, CAST(400000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (12, 1, 1, CAST(199000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (12, 4, 1, CAST(199000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (12, 5, 1, CAST(199000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (13, 2, 13, CAST(299000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (13, 5, 2, CAST(299000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (30, 27, 2, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (38, 9, 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (38, 21, 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (51, 13, 1, CAST(650000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (80, 22, 1, CAST(890000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (80, 23, 1, CAST(890000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (80, 24, 1, CAST(890000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (80, 25, 1, CAST(890000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (81, 6, 1, CAST(1350000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (81, 14, 1, CAST(1350000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (81, 15, 1, CAST(1350000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (81, 16, 1, CAST(1350000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (81, 26, 1, CAST(1350000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (81, 27, 2, CAST(1350000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (82, 6, 1, CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (82, 8, 1, CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (82, 10, 1, CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (82, 11, 1, CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (82, 12, 1, CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (82, 25, 1, CAST(990000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (83, 7, 1, CAST(15000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (83, 17, 1, CAST(15000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (83, 18, 1, CAST(15000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (83, 19, 1, CAST(15000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (83, 20, 1, CAST(15000000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (1, N'A01', N'Giày Adidas Smith', N'giay-adidas-smith', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-2.jpg', NULL, CAST(200000 AS Decimal(18, 0)), NULL, 15, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T20:57:30.950' AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (2, N'A02', N'Áo Thun Coke', N'ao-thun-coke', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-4.jpg', NULL, CAST(250000 AS Decimal(18, 0)), NULL, 6, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T20:59:30.803' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (3, N'A03', N'Quần Thể Thao Nam', N'quan-the-thao-nam', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 7, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T21:02:24.620' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (6, N'A05', N'Giày Jodea 2', N'giay-jodea-2', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-5.jpg', NULL, CAST(400000 AS Decimal(18, 0)), NULL, 7, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T21:38:07.083' AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (7, N'A06', N'Giày Bi-Tas Black', N'giay-bitas-black', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-10.jpg', NULL, CAST(550000 AS Decimal(18, 0)), NULL, 8, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T21:39:48.280' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (8, N'A07', N'Giày Adidas Superstar', N'giay-adidas-superstar', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-11.jpg', NULL, CAST(290000 AS Decimal(18, 0)), NULL, 6, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T21:40:52.483' AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (9, N'A08', N'Đồng Hồ Cơ KX-09', N'dong-ho-co-kx-09', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-8.jpg', NULL, CAST(499000 AS Decimal(18, 0)), NULL, 8, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T21:42:05.347' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (10, N'A09', N'Đồng Hồ Gramin T-10', N'dong-ho-gramin-t-10', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-9.jpg', NULL, CAST(590000 AS Decimal(18, 0)), NULL, 67, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T21:42:55.460' AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (11, N'A10', N'Quần Thể Thao', N'quan-the-thao', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-12.jpg', NULL, CAST(249000 AS Decimal(18, 0)), NULL, 78, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T21:44:50.497' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (12, N'A11', N'Áo Thun Puma', N'ao-thun-puma', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-6.jpg', NULL, CAST(199000 AS Decimal(18, 0)), NULL, 8, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T21:45:47.410' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (13, N'A12', N'Áo Thun Cổ Tròn Nam', N'ao-thun-co-tron-nam', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/product-1.jpg', NULL, CAST(299000 AS Decimal(18, 0)), NULL, 7, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-05T21:45:59.590' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (16, N'A13', N'Aó Thun Puma TX150', N'ao-thun-puma-tx150', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a1.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:46:27.717' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (17, N'A14', N'Aó Thun TX1550', N'ao-thun-TX1550', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a2.jpg', NULL, CAST(299000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:47:15.067' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (18, N'A15', N'Aó Thun TZ1570', N'ao-thun-TZ1570', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a3.jpg', NULL, CAST(200000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:47:15.070' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (19, N'A16', N'Aó Thun TC350', N'ao-thun-TC350', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a4.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.070' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (20, N'A17', N'Aó Thun TM250', N'ao-thun-TM250', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a5.jpg', NULL, CAST(250000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.070' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (21, N'A18', N'Aó Thun TS250', N'ao-thun-TS250', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a6.jpg', NULL, CAST(299000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.070' AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (22, N'A19', N'Aó Thun TZ050', N'ao-thun-TZ050', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a7.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.070' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (23, N'A20', N'Aó Thun TX70', N'ao-thun-TX70', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a8.jpg', NULL, CAST(299000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.070' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (24, N'A21', N'Aó Thun TP50', N'ao-thun-TP50', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a9.jpg', NULL, CAST(200000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.070' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (25, N'A22', N'Aó Thun TX1650', N'ao-thun-TX1650', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a10.jpg', NULL, CAST(250000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.070' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (26, N'A23', N'Aó Thun TX1580', N'ao-thun-TX1580', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a11.jpg', NULL, CAST(299000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.070' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (27, N'A24', N'Aó Thun TX170', N'ao-thun-TX170', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a12.jpg', NULL, CAST(200000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.073' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (28, N'A25', N'Aó Thun TA2550', N'ao-thun-TA2550', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a13.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.073' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (29, N'A26', N'Aó Thun TY180', N'ao-thun-TY180', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a14.jpg', NULL, CAST(299000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.073' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (30, N'A27', N'Aó Thun TO550', N'ao-thun-TO550', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a15.jpg', NULL, CAST(200000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.073' AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (31, N'A28', N'Aó Thun TCB550', N'ao-thun-TCB550', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a16.jpg', NULL, CAST(299000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.073' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (32, N'A29', N'Aó Thun TTY50', N'ao-thun-TTY50', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a17.jpg', NULL, CAST(250000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.073' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (33, N'A30', N'Aó Thun TT250', N'ao-thun-TT250', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a18.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.073' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (34, N'A31', N'Aó Thun TX980', N'ao-thun-TX980', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a19.jpg', NULL, CAST(299000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.073' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (35, N'A32', N'Aó Thun TH550', N'ao-thun-TH550', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/a20.jpg', NULL, CAST(250000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:49:13.073' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (36, N'A33', N'Quần Thể Thao MX120', N'quan-the-thao-MX120', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/d1.jpg', NULL, CAST(299000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:51:05.513' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (37, N'A34', N'Quần Thể Thao MX180', N'quan-the-thao-MX180', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/d2.jpg', NULL, CAST(250000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:51:05.513' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (38, N'A35', N'Quần Thể Thao MX170', N'quan-the-thao-MX170', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/d3.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:51:05.513' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (39, N'A36', N'Quần Thể Thao MX160', N'quan-the-thao-MX160', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/d4.jpg', NULL, CAST(240000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:51:05.513' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (40, N'A37', N'Quần Thể Thao MX150', N'quan-the-thao-MX150', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/d5.jpg', NULL, CAST(300000 AS Decimal(18, 0)), NULL, 9, 2, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:51:05.513' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (41, N'A38', N'Giày Men RIGI', N'giay-mem-rigi', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b1.jpg', NULL, CAST(569000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.907' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (42, N'A39', N'Giày Men Tell Path 19', N'giay-men-tell-path19', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b2.jpg', NULL, CAST(489000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.907' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (43, N'A340', N'Giày Men Naha', N'giay-men-naha', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b3.jpg', NULL, CAST(780000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.907' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (44, N'A41', N'Giày Men Terex', N'giay-men-terex', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b4.jpg', NULL, CAST(520000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.907' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (45, N'A42', N'Giày Men CMTK IND', N'giay-men-cmtk-ind', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b5.jpg', NULL, CAST(569000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.907' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (46, N'A43', N'Giày Men Aquashoes', N'giay-men-aquashoes', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b6.jpg', NULL, CAST(489000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.907' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (47, N'A44', N'Giày Men Lucifer Kint', N'giay-men-lucifer-kint', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b7.jpg', NULL, CAST(630000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.907' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (48, N'A45', N'Giày Men Mesh Run', N'giay-men-mesh-run', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b8.jpg', NULL, CAST(520000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.907' AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (49, N'A46', N'Giày Men HYBRID NETFIT', N'giay-men-hybrid-netfit', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b9.jpg', NULL, CAST(569000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.907' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (50, N'A47', N'Giày Men Runing', N'giay-men-running', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b10.jpg', NULL, CAST(780000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (51, N'A48', N'Giày Men Stride-1', N'giay-men-stride1', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b11.jpg', NULL, CAST(650000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (52, N'A49', N'Giày Men UltraRide', N'giay-men-utraride', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b12.jpg', NULL, CAST(520000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (53, N'A50', N'Giày Men NRGY ELATE', N'giay-men-nrgy-elate', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b13.jpg', NULL, CAST(569000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (54, N'A51', N'Giày Men Walking', N'giay-men-walking', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b14.jpg', NULL, CAST(630000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (55, N'A52', N'Giày Men Street Run', N'giay-men-street-run', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b15.jpg', NULL, CAST(489000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (56, N'A53', N'Giày Men Racquet', N'giay-men-racquet', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b16.jpg', NULL, CAST(520000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (57, N'A54', N'Giày Men Superfly 7', N'giay-men-superfly7', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b17.jpg', NULL, CAST(780000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (58, N'A55', N'Giày Men Sof Tride', N'giay-men-sof-tride', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b18.jpg', NULL, CAST(489000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (59, N'A56', N'Giày Men Metaflash', N'giay-men-metaflash', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b19.jpg', NULL, CAST(780000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (60, N'A57', N'Giày Men Pacer Evo', N'giay-men-pacer-evo', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/b20.jpg', NULL, CAST(569000 AS Decimal(18, 0)), NULL, 9, 1, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:53:53.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (61, N'A58', N'Đồng Hồ AX K10', N'dong-ho-ax-k10', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c1.jpg', NULL, CAST(990000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.150' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (62, N'A59', N'Đồng Hồ AX T55', N'dong-ho-ax-t55', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c2.jpg', NULL, CAST(12000000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.150' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (63, N'A60', N'Đồng Hồ HILFIGER Đỏ', N'dong-ho-hifiger-do', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c3.jpg', NULL, CAST(15000000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.150' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (64, N'A61', N'Đồng Hồ HILFIGER Xanh', N'dong-ho-hifiger-xanh', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c4.jpg', NULL, CAST(890000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.150' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (65, N'A62', N'Đồng Hồ HILFIGER Xám', N'dong-ho-hifiger-xam', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c5.jpg', NULL, CAST(1350000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.150' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (66, N'A63', N'Đồng Hồ Casio 100M', N'dong-ho-casio-100m', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c6.jpg', NULL, CAST(990000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (67, N'A64', N'Đồng Hồ Casio P992', N'dong-ho-casio-p992', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c7.jpg', NULL, CAST(950000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (68, N'A65', N'Đồng Hồ Casio Xanh KA77', N'dong-ho-casio-xanh-ka77', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c8.jpg', NULL, CAST(7890000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (69, N'A66', N'Đồng Hồ Casio Đỏ YT100', N'dong-ho-casio-do-yt100', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c9.jpg', NULL, CAST(12000000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (71, N'A68', N'Đồng Hồ Casio Vàng TY55', N'dong-ho-casio vang-ty55', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c11.jpg', NULL, CAST(890000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (72, N'A69', N'Đồng Hồ Casio X 100M', N'dong-ho-casio-x-100m', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c21.jpg', NULL, CAST(15000000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (73, N'A70', N'Đồng Hồ AX Đỏ PO99', N'dong-ho-ax-do-po99', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c13.jpg', NULL, CAST(12000000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (74, N'A71', N'Đồng Hồ FOSSIL R600', N'dong-ho-fossil-r600', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c14.jpg', NULL, CAST(1350000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (75, N'A72', N'Đồng Hồ FOSSIL T760', N'dong-ho-fossil-t760', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c15.jpg', NULL, CAST(990000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (76, N'A73', N'Đồng Hồ Garmin Y200', N'dong-ho-garmin-y200', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c16.jpg', NULL, CAST(890000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (77, N'A74', N'Đồng Hồ FOSSIL L800', N'dong-ho-fossil-l800', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c17.jpg', NULL, CAST(950000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (78, N'A75', N'Đồng Hồ Casio Q20', N'dong-ho-casio-q20', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c18.jpg', NULL, CAST(15000000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (79, N'A76', N'Đồng Hồ Casio E900', N'dong-ho-casio-e900', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c19.jpg', NULL, CAST(12000000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.153' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (80, N'A77', N'Đồng Hồ Casio NT100', N'dong-ho-casio-nt100', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c20.jpg', NULL, CAST(890000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.157' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (81, N'A78', N'Đồng Hồ AX H255', N'dong-ho-ax-h255', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c12.jpg', NULL, CAST(1350000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.157' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (82, N'A79', N'Đồng Hồ Casio GP98', N'dong-ho-casio-gp98', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c22.jpg', NULL, CAST(990000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.157' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (83, N'A80', N'Đồng Hồ FOSSIL N300', N'dong-ho-fossil-n300', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c23.jpg', NULL, CAST(15000000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.157' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
INSERT [dbo].[Product] ([ID], [Code], [Name], [MetaTilte], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [Quantity], [CategoryID], [Detail], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tags]) VALUES (84, N'A81', N'Đồng Hồ AX QO39', N'dong-ho-ax-q039', N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', N'/Areas/Client/images/c24.jpg', NULL, CAST(990000 AS Decimal(18, 0)), NULL, 9, 3, N'Chúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng...', NULL, 1, CAST(N'2021-01-08T11:59:49.157' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'0         ', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTilte], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (1, N'Giày', N'giay', NULL, 1, NULL, CAST(N'2021-01-05T23:17:42.010' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTilte], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (2, N'Quần Áo', N'quan-ao', NULL, 1, NULL, CAST(N'2021-01-05T23:18:03.440' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTilte], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifieldBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (3, N'Đồng Hồ', N'dong-ho', NULL, 1, NULL, CAST(N'2021-01-05T23:18:16.690' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (1, N'admin', N'4297f44b13955235245b2497399d7a93', N'Hai Ne', N' To Hien Thanh, Q10', N'admin@mrhai.site', N'859151555', NULL, NULL, CAST(N'2021-01-05T17:49:38.203' AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'thanhhai', N'4297f44b13955235245b2497399d7a93', N'Hai Vu Thanh', N'62 Sư Vạn Hạnh', N'Starzer00127@gmail.com', N'813430800', NULL, NULL, CAST(N'2021-01-05T14:06:06.913' AS DateTime), NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (3, N'taican', N'4297f44b13955235245b2497399d7a93', N'Tai Can', N'Q11', N'taiicancr7@gmail.com', N'825812747', NULL, NULL, CAST(N'2021-01-05T17:54:29.330' AS DateTime), NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (4, N'kimchi', N'4297f44b13955235245b2497399d7a93', N'haasasf', N'Q5', N'kimchi123@gmail.com', N'824765261', NULL, NULL, CAST(N'2021-01-09T11:29:07.307' AS DateTime), NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (9, N'khanh', N'4297f44b13955235245b2497399d7a93', N'khanh', N'khanh', N'khanh', N'khanh', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (10, N'khanh123', N'4297f44b13955235245b2497399d7a93', N'Hai', N'Q9', N'khanh123222@gmail.com', N'0817246622', CAST(N'2021-01-10T13:11:11.777' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ShowOnHome1]  DEFAULT ((0)) FOR [ShowOnHome1]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Category_Insert]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sp_Category_Insert]
@Name nvarchar(50),
@Status bit
as
begin
	insert into Category(Name,CreateDate,Status)
	values(@Name,getdate(),@Status)
	end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_Category_ListAll]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_Category_ListAll]
as
select * from Category where Status=1
order by [ID] asc
GO
/****** Object:  StoredProcedure [dbo].[Sp_Product_ListAll]    Script Date: 7/11/2021 8:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_Product_ListAll]
as
select * from Product where Status=1
order by [id] asc
GO
