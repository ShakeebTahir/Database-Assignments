USE [master]
GO
/****** Object:  Database [ShakeebTahirA1]    Script Date: 10/7/2023 3:02:33 AM ******/
CREATE DATABASE [ShakeebTahirA1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShakeebTahirA1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShakeebTahirA1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShakeebTahirA1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShakeebTahirA1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShakeebTahirA1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShakeebTahirA1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShakeebTahirA1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShakeebTahirA1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShakeebTahirA1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShakeebTahirA1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShakeebTahirA1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET RECOVERY FULL 
GO
ALTER DATABASE [ShakeebTahirA1] SET  MULTI_USER 
GO
ALTER DATABASE [ShakeebTahirA1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShakeebTahirA1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShakeebTahirA1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShakeebTahirA1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShakeebTahirA1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShakeebTahirA1', N'ON'
GO
ALTER DATABASE [ShakeebTahirA1] SET QUERY_STORE = OFF
GO
USE [ShakeebTahirA1]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 10/7/2023 3:02:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [char](75) NOT NULL,
	[City] [char](40) NOT NULL,
	[PostalCode] [char](7) NOT NULL,
	[CreditCard] [char](16) NOT NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbo.ORDERS_]    Script Date: 10/7/2023 3:02:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbo.ORDERS_](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [numeric](7, 2) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[ShippingDate] [date] NOT NULL,
	[Completed] [char](3) NOT NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 10/7/2023 3:02:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[ProductID] [int] NOT NULL,
	[ProductName] [char](100) NOT NULL,
	[ProductCategory] [char](50) NOT NULL,
	[ProductColor] [char](25) NOT NULL,
	[Cost] [numeric](7, 2) NOT NULL,
	[ListPrice] [numeric](7, 2) NOT NULL,
	[InStock] [char](3) NOT NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REVIEW]    Script Date: 10/7/2023 3:02:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REVIEW](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Review] [nvarchar](max) NOT NULL,
	[ReviewDate] [date] NOT NULL,
 CONSTRAINT [PK_REVIEW] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CUSTOMER] ([CustomerID], [CustomerName], [City], [PostalCode], [CreditCard]) VALUES (98, N'Newman                                                                     ', N'London                                  ', N'N6B 1P1', N'2260000006172830')
GO
INSERT [dbo].[CUSTOMER] ([CustomerID], [CustomerName], [City], [PostalCode], [CreditCard]) VALUES (154, N'Eduaro Corrochio                                                           ', N'Oshawa                                  ', N'L1H 4N7', N'2260226756171430')
GO
INSERT [dbo].[CUSTOMER] ([CustomerID], [CustomerName], [City], [PostalCode], [CreditCard]) VALUES (160, N'Elaine Bennnis                                                             ', N'Woodstock                               ', N'N4S 5Z4', N'4290035006172830')
GO
INSERT [dbo].[CUSTOMER] ([CustomerID], [CustomerName], [City], [PostalCode], [CreditCard]) VALUES (210, N'Tim Whatley                                                                ', N'Windsor                                 ', N'N8X 2C7', N'2145017503086420')
GO
INSERT [dbo].[CUSTOMER] ([CustomerID], [CustomerName], [City], [PostalCode], [CreditCard]) VALUES (237, N'George Costanza                                                            ', N'Barrie                                  ', N'L4M 3C1', N'3822500392272830')
GO
INSERT [dbo].[CUSTOMER] ([CustomerID], [CustomerName], [City], [PostalCode], [CreditCard]) VALUES (314, N'Cosmo Kramer                                                               ', N'Toronto                                 ', N'M5P 1P3', N'4760015006172830')
GO
INSERT [dbo].[CUSTOMER] ([CustomerID], [CustomerName], [City], [PostalCode], [CreditCard]) VALUES (517, N'Larry David                                                                ', N'London                                  ', N'N6H 4S4', N'3390340134257150')
GO
INSERT [dbo].[CUSTOMER] ([CustomerID], [CustomerName], [City], [PostalCode], [CreditCard]) VALUES (618, N'Jerry Seinfeld                                                             ', N'Kingston                                ', N'K7L 1X7', N'2610017171561700')
GO
SET IDENTITY_INSERT [dbo].[dbo.ORDERS_] ON 
GO
INSERT [dbo].[dbo.ORDERS_] ([OrderID], [ProductID], [CustomerID], [Quantity], [TotalPrice], [OrderDate], [ShippingDate], [Completed]) VALUES (1, 200292, 314, 1, CAST(80.00 AS Numeric(7, 2)), CAST(N'2011-09-14' AS Date), CAST(N'2011-09-15' AS Date), N'Yes')
GO
INSERT [dbo].[dbo.ORDERS_] ([OrderID], [ProductID], [CustomerID], [Quantity], [TotalPrice], [OrderDate], [ShippingDate], [Completed]) VALUES (2, 200296, 98, 3, CAST(225.00 AS Numeric(7, 2)), CAST(N'2011-09-14' AS Date), CAST(N'2011-09-16' AS Date), N'Yes')
GO
INSERT [dbo].[dbo.ORDERS_] ([OrderID], [ProductID], [CustomerID], [Quantity], [TotalPrice], [OrderDate], [ShippingDate], [Completed]) VALUES (3, 200292, 154, 2, CAST(160.00 AS Numeric(7, 2)), CAST(N'2011-08-20' AS Date), CAST(N'2011-08-22' AS Date), N'Yes')
GO
INSERT [dbo].[dbo.ORDERS_] ([OrderID], [ProductID], [CustomerID], [Quantity], [TotalPrice], [OrderDate], [ShippingDate], [Completed]) VALUES (4, 200010, 618, 2, CAST(40.00 AS Numeric(7, 2)), CAST(N'2011-08-22' AS Date), CAST(N'2011-08-24' AS Date), N'Yes')
GO
INSERT [dbo].[dbo.ORDERS_] ([OrderID], [ProductID], [CustomerID], [Quantity], [TotalPrice], [OrderDate], [ShippingDate], [Completed]) VALUES (5, 200010, 237, 1, CAST(20.00 AS Numeric(7, 2)), CAST(N'2011-09-20' AS Date), CAST(N'2011-09-21' AS Date), N'No ')
GO
INSERT [dbo].[dbo.ORDERS_] ([OrderID], [ProductID], [CustomerID], [Quantity], [TotalPrice], [OrderDate], [ShippingDate], [Completed]) VALUES (6, 200325, 98, 5, CAST(325.00 AS Numeric(7, 2)), CAST(N'2011-09-16' AS Date), CAST(N'2011-09-18' AS Date), N'Yes')
GO
INSERT [dbo].[dbo.ORDERS_] ([OrderID], [ProductID], [CustomerID], [Quantity], [TotalPrice], [OrderDate], [ShippingDate], [Completed]) VALUES (7, 200400, 160, 1, CAST(91.00 AS Numeric(7, 2)), CAST(N'2011-09-17' AS Date), CAST(N'2011-09-19' AS Date), N'Yes')
GO
INSERT [dbo].[dbo.ORDERS_] ([OrderID], [ProductID], [CustomerID], [Quantity], [TotalPrice], [OrderDate], [ShippingDate], [Completed]) VALUES (8, 200319, 517, 1, CAST(77.00 AS Numeric(7, 2)), CAST(N'2011-09-01' AS Date), CAST(N'2011-09-05' AS Date), N'Yes')
GO
INSERT [dbo].[dbo.ORDERS_] ([OrderID], [ProductID], [CustomerID], [Quantity], [TotalPrice], [OrderDate], [ShippingDate], [Completed]) VALUES (9, 200423, 210, 7, CAST(1085.00 AS Numeric(7, 2)), CAST(N'2011-10-03' AS Date), CAST(N'2011-10-10' AS Date), N'No ')
GO
SET IDENTITY_INSERT [dbo].[dbo.ORDERS_] OFF
GO
INSERT [dbo].[PRODUCT] ([ProductID], [ProductName], [ProductCategory], [ProductColor], [Cost], [ListPrice], [InStock]) VALUES (200010, N'20 lb Barbell                                                                                       ', N'freeweights                                       ', N'Black                    ', CAST(10.00 AS Numeric(7, 2)), CAST(20.00 AS Numeric(7, 2)), N'Yes')
GO
INSERT [dbo].[PRODUCT] ([ProductID], [ProductName], [ProductCategory], [ProductColor], [Cost], [ListPrice], [InStock]) VALUES (200145, N'Elliptical Trainer                                                                                  ', N'Exercise Machines                                 ', N'Grey                     ', CAST(400.00 AS Numeric(7, 2)), CAST(1000.00 AS Numeric(7, 2)), N'No ')
GO
INSERT [dbo].[PRODUCT] ([ProductID], [ProductName], [ProductCategory], [ProductColor], [Cost], [ListPrice], [InStock]) VALUES (200292, N'Soldier Apparel Jacket                                                                              ', N'Soldier Apparel                                   ', N'Grey                     ', CAST(30.00 AS Numeric(7, 2)), CAST(80.00 AS Numeric(7, 2)), N'Yes')
GO
INSERT [dbo].[PRODUCT] ([ProductID], [ProductName], [ProductCategory], [ProductColor], [Cost], [ListPrice], [InStock]) VALUES (200296, N'Soldier Apparel T-Shirt                                                                             ', N'Soldier Apparel                                   ', N'Green                    ', CAST(25.00 AS Numeric(7, 2)), CAST(75.00 AS Numeric(7, 2)), N'Yes')
GO
INSERT [dbo].[PRODUCT] ([ProductID], [ProductName], [ProductCategory], [ProductColor], [Cost], [ListPrice], [InStock]) VALUES (200319, N'Soldier Apparel Long Sleeve Shirt                                                                   ', N'Soldier Apparel                                   ', N'Navy                     ', CAST(42.00 AS Numeric(7, 2)), CAST(77.00 AS Numeric(7, 2)), N'Yes')
GO
INSERT [dbo].[PRODUCT] ([ProductID], [ProductName], [ProductCategory], [ProductColor], [Cost], [ListPrice], [InStock]) VALUES (200325, N'Soldier Apparel toque                                                                               ', N'Soldier Apparel                                   ', N'Burgandy                 ', CAST(28.00 AS Numeric(7, 2)), CAST(65.00 AS Numeric(7, 2)), N'Yes')
GO
INSERT [dbo].[PRODUCT] ([ProductID], [ProductName], [ProductCategory], [ProductColor], [Cost], [ListPrice], [InStock]) VALUES (200400, N'Gym Partner                                                                                         ', N'Accessories                                       ', N'Chocolate                ', CAST(42.00 AS Numeric(7, 2)), CAST(91.00 AS Numeric(7, 2)), N'Yes')
GO
INSERT [dbo].[PRODUCT] ([ProductID], [ProductName], [ProductCategory], [ProductColor], [Cost], [ListPrice], [InStock]) VALUES (200423, N'Gym Partner iPad                                                                                    ', N'Accessories                                       ', N'Khaki                    ', CAST(74.00 AS Numeric(7, 2)), CAST(155.00 AS Numeric(7, 2)), N'Yes')
GO
SET IDENTITY_INSERT [dbo].[REVIEW] ON 
GO
INSERT [dbo].[REVIEW] ([ReviewID], [ProductID], [CustomerID], [Rating], [Review], [ReviewDate]) VALUES (1, 200292, 314, 4, N'Great product', CAST(N'2011-09-20' AS Date))
GO
INSERT [dbo].[REVIEW] ([ReviewID], [ProductID], [CustomerID], [Rating], [Review], [ReviewDate]) VALUES (2, 200296, 98, 5, N'Good', CAST(N'2011-09-20' AS Date))
GO
INSERT [dbo].[REVIEW] ([ReviewID], [ProductID], [CustomerID], [Rating], [Review], [ReviewDate]) VALUES (3, 200010, 618, 3, N'Excellent', CAST(N'2011-08-29' AS Date))
GO
INSERT [dbo].[REVIEW] ([ReviewID], [ProductID], [CustomerID], [Rating], [Review], [ReviewDate]) VALUES (4, 200292, 154, 5, N'Excellent', CAST(N'2011-08-30' AS Date))
GO
INSERT [dbo].[REVIEW] ([ReviewID], [ProductID], [CustomerID], [Rating], [Review], [ReviewDate]) VALUES (5, 200325, 98, 3, N'Not bad', CAST(N'2011-09-22' AS Date))
GO
SET IDENTITY_INSERT [dbo].[REVIEW] OFF
GO
ALTER TABLE [dbo].[dbo.ORDERS_]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_CUSTOMER] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CUSTOMER] ([CustomerID])
GO
ALTER TABLE [dbo].[dbo.ORDERS_] CHECK CONSTRAINT [FK_ORDER_CUSTOMER]
GO
ALTER TABLE [dbo].[dbo.ORDERS_]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ProductID])
GO
ALTER TABLE [dbo].[dbo.ORDERS_] CHECK CONSTRAINT [FK_ORDER_PRODUCT]
GO
ALTER TABLE [dbo].[REVIEW]  WITH CHECK ADD  CONSTRAINT [FK_REVIEW_CUSTOMER] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CUSTOMER] ([CustomerID])
GO
ALTER TABLE [dbo].[REVIEW] CHECK CONSTRAINT [FK_REVIEW_CUSTOMER]
GO
ALTER TABLE [dbo].[REVIEW]  WITH CHECK ADD  CONSTRAINT [FK_REVIEW_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ProductID])
GO
ALTER TABLE [dbo].[REVIEW] CHECK CONSTRAINT [FK_REVIEW_PRODUCT]
GO
USE [master]
GO
ALTER DATABASE [ShakeebTahirA1] SET  READ_WRITE 
GO
