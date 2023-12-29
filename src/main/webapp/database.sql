USE [master]
GO
/****** Object:  Database [SACH]    Script Date: 12/29/2023 4:15:41 PM ******/
CREATE DATABASE [SACH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SACH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SACH.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SACH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SACH_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SACH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SACH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SACH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SACH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SACH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SACH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SACH] SET ARITHABORT OFF 
GO
ALTER DATABASE [SACH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SACH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SACH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SACH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SACH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SACH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SACH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SACH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SACH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SACH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SACH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SACH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SACH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SACH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SACH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SACH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SACH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SACH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SACH] SET  MULTI_USER 
GO
ALTER DATABASE [SACH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SACH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SACH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SACH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SACH] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SACH]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaChiTietHD] [bigint] IDENTITY(1,1) NOT NULL,
	[MaSach] [nvarchar](50) NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[MaHoaDon] [bigint] NOT NULL,
	[damua] [bit] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Quyen] [bit] NOT NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[MaHoaDon] [bigint] IDENTITY(1,1) NOT NULL,
	[makh] [bigint] NULL,
	[NgayMua] [datetime] NOT NULL,
	[damua] [bit] NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[makh] [bigint] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sodt] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tendn] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loai]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai](
	[maloai] [nvarchar](50) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_loai] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sach]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[masach] [nvarchar](50) NOT NULL,
	[tensach] [nvarchar](50) NULL,
	[soluong] [bigint] NULL,
	[gia] [bigint] NULL,
	[maloai] [nvarchar](50) NULL,
	[sotap] [nvarchar](50) NULL,
	[anh] [nvarchar](255) NULL,
	[NgayNhap] [datetime] NULL,
	[tacgia] [nvarchar](50) NULL,
 CONSTRAINT [PK_sach] PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[abc]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[abc]
AS
SELECT     dbo.sach.tensach, dbo.loai.tenloai, dbo.ChiTietHoaDon.SoLuongMua
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai

GO
/****** Object:  View [dbo].[HtSach]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[HtSach]
AS
SELECT     dbo.sach.maloai, dbo.loai.tenloai, dbo.sach.masach, dbo.sach.tensach, dbo.sach.tacgia, dbo.sach.gia
FROM         dbo.loai INNER JOIN
                      dbo.sach ON dbo.loai.maloai = dbo.sach.maloai

GO
/****** Object:  View [dbo].[rrr]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[rrr]
AS
SELECT     dbo.loai.tenloai, dbo.sach.tensach, dbo.sach.gia, dbo.ChiTietHoaDon.SoLuongMua
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai

GO
/****** Object:  View [dbo].[tk]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[tk]
AS
SELECT     dbo.loai.tenloai, SUM(dbo.sach.soluong) AS TongSoLuong, AVG(dbo.sach.gia) AS TBCGia, COUNT(dbo.sach.tensach) AS SoSach
FROM         dbo.loai INNER JOIN
                      dbo.sach ON dbo.loai.maloai = dbo.sach.maloai
GROUP BY dbo.loai.tenloai

GO
/****** Object:  View [dbo].[Vabcd]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vabcd]
AS
SELECT     dbo.ChiTietHoaDon.MaSach, dbo.ChiTietHoaDon.SoLuongMua, dbo.hoadon.NgayMua, dbo.loai.tenloai, dbo.sach.soluong
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai

GO
/****** Object:  View [dbo].[Vhoadon]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vhoadon]
AS
SELECT     dbo.sach.masach, dbo.sach.tensach, dbo.sach.gia, dbo.ChiTietHoaDon.SoLuongMua
FROM         dbo.sach INNER JOIN
                      dbo.ChiTietHoaDon ON dbo.sach.masach = dbo.ChiTietHoaDon.MaSach INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon
WHERE     (dbo.hoadon.damua = 0)

GO
/****** Object:  View [dbo].[View_adminxacnhan]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_adminxacnhan]
AS
SELECT dbo.ChiTietHoaDon.MaChiTietHD, dbo.KhachHang.hoten, dbo.sach.tensach, dbo.sach.gia, dbo.ChiTietHoaDon.SoLuongMua, dbo.ChiTietHoaDon.SoLuongMua * dbo.sach.gia AS thanhtien, dbo.ChiTietHoaDon.damua
FROM     dbo.ChiTietHoaDon INNER JOIN
                  dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                  dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh INNER JOIN
                  dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach CROSS JOIN
                  dbo.loai
WHERE  (dbo.ChiTietHoaDon.damua = 0)

GO
/****** Object:  View [dbo].[View_lichsumuahang]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_lichsumuahang]
AS
SELECT dbo.KhachHang.makh, dbo.sach.masach, dbo.sach.tensach, dbo.ChiTietHoaDon.SoLuongMua, dbo.sach.gia, dbo.sach.gia * dbo.ChiTietHoaDon.SoLuongMua AS ThanhTien, dbo.hoadon.NgayMua, dbo.ChiTietHoaDon.damua
FROM     dbo.hoadon INNER JOIN
                  dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh INNER JOIN
                  dbo.ChiTietHoaDon ON dbo.hoadon.MaHoaDon = dbo.ChiTietHoaDon.MaHoaDon INNER JOIN
                  dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach

GO
/****** Object:  View [dbo].[Vqq]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vqq]
AS
SELECT     dbo.loai.tenloai, dbo.sach.tensach, dbo.sach.tacgia, dbo.ChiTietHoaDon.SoLuongMua
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai

GO
/****** Object:  View [dbo].[VTamBay]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VTamBay]
AS
SELECT     dbo.ChiTietHoaDon.MaSach, dbo.ChiTietHoaDon.SoLuongMua, dbo.hoadon.makh, dbo.hoadon.NgayMua, dbo.KhachHang.diachi, dbo.KhachHang.hoten, 
                      dbo.sach.tensach, dbo.sach.tacgia
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.Makh INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai

GO
/****** Object:  View [dbo].[Vtest]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vtest]
AS
SELECT     dbo.sach.tensach, dbo.loai.tenloai, dbo.ChiTietHoaDon.SoLuongMua, dbo.sach.gia, dbo.hoadon.NgayMua, dbo.KhachHang.hoten
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai

GO
/****** Object:  View [dbo].[VTK]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VTK]
AS
SELECT     dbo.loai.tenloai, COUNT(dbo.sach.tacgia) AS SoSach, SUM(dbo.sach.soluong) AS TongSl, AVG(dbo.sach.gia) AS TbcGia
FROM         dbo.loai INNER JOIN
                      dbo.sach ON dbo.loai.maloai = dbo.sach.maloai
GROUP BY dbo.loai.tenloai

GO
/****** Object:  View [dbo].[VTKabc]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VTKabc]
AS
SELECT     dbo.loai.tenloai, SUM(dbo.sach.soluong) AS Tongkho, SUM(dbo.ChiTietHoaDon.SoLuongMua) AS Tongmua, COUNT(dbo.KhachHang.hoten) AS SoKH
FROM         dbo.loai INNER JOIN
                      dbo.sach ON dbo.loai.maloai = dbo.sach.maloai INNER JOIN
                      dbo.ChiTietHoaDon ON dbo.sach.masach = dbo.ChiTietHoaDon.MaSach INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh
GROUP BY dbo.loai.tenloai

GO
/****** Object:  View [dbo].[Vtktest]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vtktest]
AS
SELECT     dbo.loai.tenloai, SUM(dbo.sach.soluong) AS Tongsl, SUM(dbo.ChiTietHoaDon.SoLuongMua) AS Tongslmua, COUNT(dbo.KhachHang.hoten) AS SoKhach
FROM         dbo.hoadon INNER JOIN
                      dbo.ChiTietHoaDon ON dbo.hoadon.MaHoaDon = dbo.ChiTietHoaDon.MaHoaDon INNER JOIN
                      dbo.sach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh
GROUP BY dbo.loai.tenloai

GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaSach], [SoLuongMua], [MaHoaDon], [damua]) VALUES (1, N'S4', 1, 4, 0)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaSach], [SoLuongMua], [MaHoaDon], [damua]) VALUES (2, N'S5', 2, 5, 0)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'abc', N'123', 1)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'admin', N'123', 1)
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (1, 20, CAST(N'1989-01-01 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (2, 21, CAST(N'1945-01-10 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (3, 20, CAST(N'2017-10-10 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (4, 21, CAST(N'2023-12-29 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([MaHoaDon], [makh], [NgayMua], [damua]) VALUES (5, 21, CAST(N'2023-12-29 00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[hoadon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (20, N'Nguyễn Khắc Chung', N'Huế', N'0923782129', N'chungsd@gmail.com', N'nkchung', N'123')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (21, N'Khánh Huyền', N'Huế', N'0979281918', N'huyenqss@gmail.com', N'huyen', N'123')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (22, N'Trần Thu Uyên', N'Đà Nẵng', N'0928918177', N'uyenthu@gmail.com', N'uyen', N'123')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Bi quyet cuoc song', N'Bí quyết cuộc sống')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Chinh tri', N'Chính trị')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Dia ly', N'Địa lý abc')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Hoa hoc', N'Hoá học')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Khoa hoc', N'Khoa học')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Kinh te', N'Kinh tế')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Lich su', N'Lịch Sử')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Ngoai ngu', N'Ngoại ngữ')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'On thi CD-DH', N'Ôn thi CĐ-ĐH')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Tam ly', N'Tâm lý')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Tin', N'Tin Học')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Toan', N'Toán Học')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Van', N'Văn Học')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Vat ly', N'Vật lý')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Y hoc', N'Y học')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S10', N'Lịch sử 11 ', 8, 27000, N'Lich su', N'1', N'img_sach/fd70d057d90e2a6843f88ba84a097b14.jpg', CAST(N'2023-07-24 00:00:00.000' AS DateTime), N'BGD&ĐT')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S11', N'Tiếng Việt lớp 1 tập 2', 10, 25000, N'Van', N'2', N'img_sach/000.jpg', CAST(N'2023-07-24 00:00:00.000' AS DateTime), N'BGD&ĐT')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S2', N'Tiếng Việt lớp 1 tập 1', 10, 25000, N'Van', N'2', N'img_sach/tieng-viet-1.jpg', CAST(N'2023-05-20 00:00:00.000' AS DateTime), N'BGD&ĐT')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S3', N'Tin học lớp 6', 5, 18000, N'Tin', N'1', N'img_sach/tin6.png', CAST(N'2023-05-20 00:00:00.000' AS DateTime), N'BGD&ĐT')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S4', N'Địa lý lớp 12', 5, 19000, N'Dia ly', N'1', N'img_sach/d55346b82f2b42c2bf4c1b5486a35242.jpg', CAST(N'2023-05-20 00:00:00.000' AS DateTime), N'BGD&ĐT')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S5', N'Chân lý và sự thật', 6, 30000, N'Chinh tri', N'1', N'img_sach/chinhtri1.jpg', CAST(N'2023-06-04 00:00:00.000' AS DateTime), N'Vũ Hoàng Công')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S6', N'Hóa học 12', 1, 25000, N'Hoa hoc', N'1', N'img_sach/27e9d5e17fead1ed3872024ec9eafb79.jpg_720x720q80.jpg', CAST(N'2023-06-02 00:00:00.000' AS DateTime), N'BGD&ĐT')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S7', N'Kinh tế số', 4, 28000, N'Kinh te', N'1', N'img_sach/image-2022071510044993.jpg', CAST(N'2023-06-02 00:00:00.000' AS DateTime), N'Trần Thị Ái Cẩm - Đổ Thùy Trinh')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S8', N'Vật lý 12 nâng cao', 5, 24000, N'Vat ly', N'1', N'img_sach/sach-giao-khoa-vat-li-lop-12-nang-cao.jpg', CAST(N'2023-07-16 00:00:00.000' AS DateTime), N'BGD&ĐT')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'S9', N'Tin học lớp 7', 6, 20000, N'Tin', N'1', N'img_sach/Screenshot-2022-02-17-095129-49.png', CAST(N'2023-07-24 00:00:00.000' AS DateTime), N'BGD&ĐT')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gia], [maloai], [sotap], [anh], [NgayNhap], [tacgia]) VALUES (N'ST1', N'Toán lớp 10 tập 1', 12, 20000, N'Toan', N'2', N'img_sach/sach-giao-khoa-toan-10-tap-1-ket-noi-tri-thuc-voi-cuoc-song.png', CAST(N'2023-12-02 00:00:00.000' AS DateTime), N'BGD&ĐT')
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_hoadon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[hoadon] ([MaHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_hoadon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[sach] ([masach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_sach]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_KhachHang] FOREIGN KEY([makh])
REFERENCES [dbo].[KhachHang] ([makh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_hoadon_KhachHang]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [FK_sach_loai] FOREIGN KEY([maloai])
REFERENCES [dbo].[loai] ([maloai])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [FK_sach_loai]
GO
/****** Object:  StoredProcedure [dbo].[TimKiem]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TimKiem](@bien nvarchar(5))
as
  select * from sach where maloai =@bien

GO
/****** Object:  StoredProcedure [dbo].[TimMaLoai]    Script Date: 12/29/2023 4:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TimMaLoai]( @maloai nvarchar(50))
as
select * from sach where maloai=@maloai

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 95
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'abc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'abc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HtSach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HtSach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 95
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 0
               Left = 588
               Bottom = 119
               Right = 748
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'rrr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'rrr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'rrr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[37] 2[1] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 2505
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'tk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'tk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 95
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 96
               Left = 434
               Bottom = 215
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vabcd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vabcd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vabcd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[37] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 240
               Bottom = 125
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 0
               Left = 445
               Bottom = 119
               Right = 605
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 4
               Left = 31
               Bottom = 123
               Right = 191
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vhoadon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vhoadon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[32] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 126
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 7
               Left = 1016
               Bottom = 170
               Right = 1210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 202
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1692
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_adminxacnhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_adminxacnhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_adminxacnhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sach"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 170
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_lichsumuahang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_lichsumuahang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 95
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 5
               Left = 580
               Bottom = 124
               Right = 740
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vqq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vqq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vqq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -172
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 114
               Left = 236
               Bottom = 233
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 215
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 126
               Left = 434
               Bottom = 245
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTamBay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTamBay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTamBay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[14] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 215
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 126
               Left = 236
               Bottom = 245
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[23] 4[43] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[19] 4[43] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 0
               Left = 244
               Bottom = 119
               Right = 404
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 16
               Left = 547
               Bottom = 135
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 96
               Left = 38
               Bottom = 215
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 97
               Left = 439
               Bottom = 216
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Ta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTKabc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ble = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTKabc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTKabc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[30] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sach"
            Begin Extent = 
               Top = 0
               Left = 206
               Bottom = 119
               Right = 366
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 2
               Left = 535
               Bottom = 91
               Right = 695
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 47
               Left = 375
               Bottom = 166
               Right = 535
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 36
               Left = 0
               Bottom = 155
               Right = 160
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 96
               Left = 573
               Bottom = 215
               Right = 733
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtktest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtktest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtktest'
GO
USE [master]
GO
ALTER DATABASE [SACH] SET  READ_WRITE 
GO
