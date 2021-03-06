USE [master]
GO
/****** Object:  Database [DealBook]    Script Date: 4/7/2021 4:55:24 PM ******/
CREATE DATABASE [DealBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DealBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DealBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DealBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DealBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DealBook] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DealBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DealBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DealBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DealBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DealBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DealBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [DealBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DealBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DealBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DealBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DealBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DealBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DealBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DealBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DealBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DealBook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DealBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DealBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DealBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DealBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DealBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DealBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DealBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DealBook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DealBook] SET  MULTI_USER 
GO
ALTER DATABASE [DealBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DealBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DealBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DealBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DealBook] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DealBook] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DealBook] SET QUERY_STORE = OFF
GO
USE [DealBook]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/7/2021 4:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 4/7/2021 4:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNhaXuatBan] [nvarchar](10) NOT NULL,
	[TenNhaXuatBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/7/2021 4:55:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaXuatBan] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[Hinhchinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK01', N'Sách Kinh Tế - Kỹ Năng')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK02', N'Nghệ Thuật Sống - Tâm Lý')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK03', N'Sách Văn học Việt Nam')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK04', N'Sách Thiếu Nhi')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK05', N'Sách Giáo Dục - Gia Đình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK06', N'Sách Lịch Sử')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK07', N'Sách Văn Hóa - Nghệ Thuật')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK08', N'Sách Khoa Học - Triết Học')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK09', N'Sách Tâm Linh - Tôn Giáo')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'BOOK10', N'Sách Y Học - Thực Dưỡng')
GO
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB01', N'NXB Kim Đồng')
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB02', N'NXB Thanh Niên ')
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB03', N'NXB Giáo Dục')
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB04', N'NXB ĐH Sư Phạm')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'BOOK01', N'NXB01', N'Lập Kế Hoạch Kinh Doanh Hiệu Quả', N'Chưa xác định', N'1.png', NULL, NULL, 111200, 0, 0, N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'BOOK02', N'NXB01', N'Thám Tử Lừng Danh Conan', N'Chưa xác định', N'2.png', NULL, NULL, 20000, 0, 0, N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'BOOK01', N'NXB02', N'Bí Mật Tư Duy Triệu Phú', N'Chưa xác định', N'3.png', NULL, NULL, 74520, 0, 0, N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP04', N'BOOK03', N'NXB04', N'Little Me Buggy Boards: Wild Animals', N'Chưa xác đinh', N'4.png', NULL, NULL, 54400, 0, 0, N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP05', N'BOOK05', N'NXB03', N'Charlotte''s Web', N'Chưa xác định ', N'5.png', NULL, NULL, 174255, 0, 0, N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP06', N'BOOK04', N'NXB02', N'Làm Lại Từ Đầu', N'Chưa xác định', N'6.png', NULL, NULL, 43000, 0, 0, N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP07', N'BOOK09', N'NXB03', N'Vui Vẻ Không Quạu Nha 2', N'Chưa xác định', N'7.png', NULL, NULL, 62000, 0, 0, N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP08', N'BOOK08', N'NXB02', N'11 Truyện Kỳ Lạ Về Loài Vật', N'Chưa xác định', N'8.png', NULL, NULL, 17800, 0, 0, N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP09', N'BOOK06', N'NXB04', N'Husky Và Sư Tôn Mèo Trắng Của Hắn', N'Chưa xác định', N'9.png', NULL, NULL, 119200, 0, 0, N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaXuatBan], [TenSanPham], [CauHinh], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP10', N'BOOK07', N'NXB01', N'Sao Em Buồn Đến Thế?', N'Chưa xác định ', N'10.png', NULL, NULL, 66400, 0, 0, N'0')
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
USE [master]
GO
ALTER DATABASE [DealBook] SET  READ_WRITE 
GO
