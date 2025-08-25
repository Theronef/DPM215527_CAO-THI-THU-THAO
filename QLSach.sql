USE [master]
GO
/****** Object:  Database [QLSach]    Script Date: 25/12/2023 12:38:36 SA ******/
CREATE DATABASE [QLSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSach', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLSach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSach_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLSach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLSach] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSach] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSach] SET  MULTI_USER 
GO
ALTER DATABASE [QLSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSach', N'ON'
GO
ALTER DATABASE [QLSach] SET QUERY_STORE = OFF
GO
USE [QLSach]
GO
/****** Object:  Table [BanSach]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BanSach](
	[mahd] [nvarchar](5) NOT NULL,
	[masach] [nvarchar](5) NOT NULL,
	[makh] [nvarchar](50) NOT NULL,
	[manv] [nvarchar](50) NOT NULL,
	[soluongban] [int] NULL,
	[thoigia] [datetime] NULL,
	[thanhtien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HoaDon]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HoaDon](
	[mahd] [nvarchar](5) NOT NULL,
	[makh] [nvarchar](5) NOT NULL,
	[manv] [nvarchar](5) NOT NULL,
	[masach] [nvarchar](5) NOT NULL,
	[soluong] [int] NOT NULL,
	[giaban] [float] NOT NULL,
	[ngaylap] [date] NULL,
	[thanhtien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[mahd] ASC,
	[makh] ASC,
	[manv] ASC,
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KhachHang]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KhachHang](
	[makh] [nvarchar](5) NOT NULL,
	[tenkh] [nvarchar](50) NOT NULL,
	[sdt] [nvarchar](50) NOT NULL,
	[gioitinh] [nvarchar](3) NOT NULL,
	[namsinh] [date] NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [nguoidung]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nguoidung](
	[ten] [nvarchar](50) NOT NULL,
	[matkhau] [varchar](50) NULL,
	[quyen] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ten] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NhanVien]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NhanVien](
	[manv] [nvarchar](5) NOT NULL,
	[tennv] [nvarchar](50) NOT NULL,
	[sdt] [nvarchar](50) NOT NULL,
	[namsinh] [date] NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[gioitinh] [nvarchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NhapSach]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NhapSach](
	[maphieu] [nvarchar](5) NOT NULL,
	[masach] [nvarchar](5) NOT NULL,
	[tensach] [nvarchar](50) NOT NULL,
	[ngaynhap] [date] NULL,
	[gianhap] [float] NOT NULL,
	[soluong] [int] NOT NULL,
	[tongtien] [float] NULL,
 CONSTRAINT [PK__NhapSach__A72B5185A981FA44] PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC,
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NhaXuatBan]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NhaXuatBan](
	[manxb] [nvarchar](5) NOT NULL,
	[tennxb] [nvarchar](50) NOT NULL,
	[sdt] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manxb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sach]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sach](
	[masach] [nvarchar](5) NOT NULL,
	[tensach] [nvarchar](50) NULL,
	[matg] [nvarchar](5) NULL,
	[matl] [nvarchar](5) NULL,
	[manxb] [nvarchar](5) NULL,
	[namxuatban] [int] NULL,
	[giaban] [float] NULL,
	[soluongton] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TacGia]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TacGia](
	[matg] [nvarchar](5) NOT NULL,
	[tentg] [nvarchar](50) NOT NULL,
	[sdt] [nchar](50) NOT NULL,
	[namsinh] [datetime] NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[gioitinh] [nvarchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[matg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TheLoai]    Script Date: 25/12/2023 12:38:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TheLoai](
	[matl] [nvarchar](5) NOT NULL,
	[tentl] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[matl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [BanSach] ([mahd], [masach], [makh], [manv], [soluongban], [thoigia], [thanhtien]) VALUES (N'HD001', N'S001', N'KH001', N'NV001', 5, CAST(N'2022-01-05T00:00:00.000' AS DateTime), 104.95)
INSERT [BanSach] ([mahd], [masach], [makh], [manv], [soluongban], [thoigia], [thanhtien]) VALUES (N'HD002', N'S002', N'KH002', N'NV002', 3, CAST(N'2022-02-10T00:00:00.000' AS DateTime), 77.97)
INSERT [BanSach] ([mahd], [masach], [makh], [manv], [soluongban], [thoigia], [thanhtien]) VALUES (N'HD003', N'S003', N'KH003', N'NV003', 2, CAST(N'2022-03-15T00:00:00.000' AS DateTime), 45)
GO
INSERT [HoaDon] ([mahd], [makh], [manv], [masach], [soluong], [giaban], [ngaylap], [thanhtien]) VALUES (N'HD001', N'KH001', N'NV001', N'S001', 4, 20.99, CAST(N'2022-01-05' AS Date), 119.96)
INSERT [HoaDon] ([mahd], [makh], [manv], [masach], [soluong], [giaban], [ngaylap], [thanhtien]) VALUES (N'HD002', N'KH001', N'NV001', N'S001', 1, 20.99, CAST(N'2023-12-24' AS Date), 20.99)
INSERT [HoaDon] ([mahd], [makh], [manv], [masach], [soluong], [giaban], [ngaylap], [thanhtien]) VALUES (N'HD003', N'KH001', N'NV001', N'S001', 6, 20.99, CAST(N'2023-12-24' AS Date), 125.94)
GO
INSERT [KhachHang] ([makh], [tenkh], [sdt], [gioitinh], [namsinh], [diachi]) VALUES (N'KH001', N'John Doe', N'123456789', N'nam', CAST(N'1990-05-10' AS Date), N'123 Main Street')
INSERT [KhachHang] ([makh], [tenkh], [sdt], [gioitinh], [namsinh], [diachi]) VALUES (N'KH002', N'Jane Smith', N'987654321', N'nu', CAST(N'1985-08-15' AS Date), N'456 Oak Avenue')
INSERT [KhachHang] ([makh], [tenkh], [sdt], [gioitinh], [namsinh], [diachi]) VALUES (N'KH003', N'Bob Johnson', N'111222333', N'nam', CAST(N'1992-12-20' AS Date), N'789 Pine Road')
GO
INSERT [nguoidung] ([ten], [matkhau], [quyen]) VALUES (N'nhanvien', N'a906449d5769fa7361d7ecc6aa3f6d28', 2)
INSERT [nguoidung] ([ten], [matkhau], [quyen]) VALUES (N'quanly', N'e99a18c428cb38d5f260853678922e03', 1)
GO
INSERT [NhanVien] ([manv], [tennv], [sdt], [namsinh], [diachi], [gioitinh]) VALUES (N'NV001', N'Alice Turner', N'123456789', CAST(N'1980-07-20' AS Date), N'10 Business Road', N'nu')
INSERT [NhanVien] ([manv], [tennv], [sdt], [namsinh], [diachi], [gioitinh]) VALUES (N'NV002', N'David Miller', N'987654321', CAST(N'1992-01-05' AS Date), N'15 Tech Lane', N'nam')
INSERT [NhanVien] ([manv], [tennv], [sdt], [namsinh], [diachi], [gioitinh]) VALUES (N'NV003', N'Emily White', N'111222333', CAST(N'1985-11-15' AS Date), N'20 Marketing Street', N'nu')
GO
INSERT [NhapSach] ([maphieu], [masach], [tensach], [ngaynhap], [gianhap], [soluong], [tongtien]) VALUES (N'NS001', N'S001', N'The Catcher in the Rye', CAST(N'2022-01-01T00:00:00.000' AS DateTime), 18.5, 50, 925)
INSERT [NhapSach] ([maphieu], [masach], [tensach], [ngaynhap], [gianhap], [soluong], [tongtien]) VALUES (N'NS002', N'S002', N'To Kill a Mockingbird', CAST(N'2022-02-05T00:00:00.000' AS DateTime), 20, 30, 600)
INSERT [NhapSach] ([maphieu], [masach], [tensach], [ngaynhap], [gianhap], [soluong], [tongtien]) VALUES (N'NS003', N'S003', N'1984', CAST(N'2022-03-10T00:00:00.000' AS DateTime), 21, 25, 525)
GO
INSERT [NhaXuatBan] ([manxb], [tennxb], [sdt], [diachi]) VALUES (N'NXB01', N'Penguin Books', N'123456789', N'123 Publisher Street')
INSERT [NhaXuatBan] ([manxb], [tennxb], [sdt], [diachi]) VALUES (N'NXB02', N'HarperCollins', N'987654321', N'456 Publisher Street')
INSERT [NhaXuatBan] ([manxb], [tennxb], [sdt], [diachi]) VALUES (N'NXB03', N'Random House', N'111222333', N'789 Publisher Street')
GO
INSERT [Sach] ([masach], [tensach], [matg], [matl], [manxb], [namxuatban], [giaban], [soluongton]) VALUES (N'S001', N'The Catcher in the Rye', N'TG001', N'TL001', N'NXB01', 1951, 20.99, 95)
INSERT [Sach] ([masach], [tensach], [matg], [matl], [manxb], [namxuatban], [giaban], [soluongton]) VALUES (N'S002', N'To Kill a Mockingbird', N'TG002', N'TL002', N'NXB02', 1960, 25.99, -1)
INSERT [Sach] ([masach], [tensach], [matg], [matl], [manxb], [namxuatban], [giaban], [soluongton]) VALUES (N'S003', N'1984', N'TG003', N'TL003', N'NXB03', 1949, 22.5, 0)
GO
INSERT [TacGia] ([matg], [tentg], [sdt], [namsinh], [diachi], [gioitinh]) VALUES (N'TG001', N'J.D. Salinger', N'123456789                                         ', CAST(N'1919-01-01T00:00:00.000' AS DateTime), N'Cornish, New Hampshire', N'nam')
INSERT [TacGia] ([matg], [tentg], [sdt], [namsinh], [diachi], [gioitinh]) VALUES (N'TG002', N'Harper Lee', N'987654321                                         ', CAST(N'1926-04-28T00:00:00.000' AS DateTime), N'Monroeville, Alabama', N'nu')
INSERT [TacGia] ([matg], [tentg], [sdt], [namsinh], [diachi], [gioitinh]) VALUES (N'TG003', N'George Orwell', N'111222333                                         ', CAST(N'1903-06-25T00:00:00.000' AS DateTime), N'Motihari, India', N'nam')
GO
INSERT [TheLoai] ([matl], [tentl]) VALUES (N'TL001', N'Fiction')
INSERT [TheLoai] ([matl], [tentl]) VALUES (N'TL002', N'Classic')
INSERT [TheLoai] ([matl], [tentl]) VALUES (N'TL003', N'Dystopian')
GO
USE [master]
GO
ALTER DATABASE [QLSach] SET  READ_WRITE 
GO
