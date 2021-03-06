USE [master]
GO
/****** Object:  Database [code]    Script Date: 11/19/2016 4:52:26 PM ******/
CREATE DATABASE [code]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'code', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\code.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'code_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\code_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [code] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [code].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [code] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [code] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [code] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [code] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [code] SET ARITHABORT OFF 
GO
ALTER DATABASE [code] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [code] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [code] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [code] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [code] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [code] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [code] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [code] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [code] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [code] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [code] SET  DISABLE_BROKER 
GO
ALTER DATABASE [code] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [code] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [code] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [code] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [code] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [code] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [code] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [code] SET RECOVERY FULL 
GO
ALTER DATABASE [code] SET  MULTI_USER 
GO
ALTER DATABASE [code] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [code] SET DB_CHAINING OFF 
GO
ALTER DATABASE [code] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [code] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'code', N'ON'
GO
USE [code]
GO
/****** Object:  Table [dbo].[t_anh]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_anh](
	[anh] [nvarchar](50) NOT NULL,
	[duongdan] [text] NOT NULL,
 CONSTRAINT [PK_t_anh] PRIMARY KEY CLUSTERED 
(
	[anh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_baidang]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_baidang](
	[id_nguoidung] [int] NOT NULL,
	[anh] [nvarchar](50) NULL,
	[video] [nvarchar](50) NULL,
	[gif] [nvarchar](50) NULL,
	[luotxem] [int] NULL,
	[luotthich] [int] NULL,
	[luotchiase] [int] NULL,
	[ngaydang] [datetime] NULL,
	[ngaychinhsua] [datetime] NULL,
	[id_nhom] [int] NULL,
	[id_baidang] [int] IDENTITY(1,1) NOT NULL,
	[noidung] [text] NULL,
 CONSTRAINT [PK_t_baidang] PRIMARY KEY CLUSTERED 
(
	[id_baidang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_banbe]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_banbe](
	[id_nguoidunga] [int] NOT NULL,
	[id_nguoidungb] [int] NOT NULL,
	[id_banbe] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_t_banbe] PRIMARY KEY CLUSTERED 
(
	[id_banbe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_binhluan]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_binhluan](
	[id_baidang] [int] NOT NULL,
	[id_binhluan] [int] IDENTITY(1,1) NOT NULL,
	[id_nguoidung] [int] NOT NULL,
	[noidung] [text] NOT NULL,
	[anh] [nvarchar](50) NULL,
	[luotthich] [int] NULL,
	[ngaybinhluan] [datetime] NULL,
 CONSTRAINT [PK_t_binhluan] PRIMARY KEY CLUSTERED 
(
	[id_binhluan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_caidat]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_caidat](
	[ten_thongso] [text] NOT NULL,
	[giatri] [text] NOT NULL,
	[id_thongso] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_t_caidat] PRIMARY KEY CLUSTERED 
(
	[id_thongso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_nguoidung]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_nguoidung](
	[id_nguoidung] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [text] NOT NULL,
	[ngaysinh] [date] NULL,
	[anh] [nvarchar](50) SPARSE  NULL,
	[sdt] [text] NULL,
	[facebook] [nvarchar](50) NOT NULL,
	[online] [bit] NULL,
	[luottheodoi] [int] NULL,
 CONSTRAINT [PK_t_nguoidung] PRIMARY KEY CLUSTERED 
(
	[id_nguoidung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[t_nguoidung] SET (LOCK_ESCALATION = AUTO)
GO
/****** Object:  Table [dbo].[t_quangcao]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_quangcao](
	[noidung] [text] NULL,
	[anh] [text] NULL,
	[link] [text] NULL,
	[id_quangcao] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_t_quangcao] PRIMARY KEY CLUSTERED 
(
	[id_quangcao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_tinnhan]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_tinnhan](
	[noidung] [text] NOT NULL,
	[anh] [nvarchar](50) NULL,
	[id_nguoidunga] [int] NOT NULL,
	[id_nguoidungb] [int] NOT NULL,
	[id_tinnhan] [int] IDENTITY(1,1) NOT NULL,
	[thoigian] [datetime] NOT NULL,
 CONSTRAINT [PK_t_tinnhan] PRIMARY KEY CLUSTERED 
(
	[id_tinnhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_theodoi]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_theodoi](
	[id_nguoidunga] [int] NOT NULL,
	[id_nguoidungb] [int] NOT NULL,
	[id_theodoi] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_t_theodoi] PRIMARY KEY CLUSTERED 
(
	[id_theodoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_thongbao]    Script Date: 11/19/2016 4:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_thongbao](
	[id_baidang] [int] NOT NULL,
	[id_nguoidung] [int] NOT NULL,
	[noidung] [text] NOT NULL,
	[id_thongbao] [int] IDENTITY(1,1) NOT NULL,
	[thoigian] [datetime] NULL,
 CONSTRAINT [PK_t_thongbao] PRIMARY KEY CLUSTERED 
(
	[id_thongbao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[t_anh] ([anh], [duongdan]) VALUES (N'1', N'1')
INSERT [dbo].[t_anh] ([anh], [duongdan]) VALUES (N'dsdas', N'dsdsddd')
SET IDENTITY_INSERT [dbo].[t_baidang] ON 

INSERT [dbo].[t_baidang] ([id_nguoidung], [anh], [video], [gif], [luotxem], [luotthich], [luotchiase], [ngaydang], [ngaychinhsua], [id_nhom], [id_baidang], [noidung]) VALUES (2, N'1', NULL, NULL, 0, 0, 0, CAST(0x0000A5A300000000 AS DateTime), CAST(0x0000A5A300000000 AS DateTime), NULL, 1, N'bai dang 1')
INSERT [dbo].[t_baidang] ([id_nguoidung], [anh], [video], [gif], [luotxem], [luotthich], [luotchiase], [ngaydang], [ngaychinhsua], [id_nhom], [id_baidang], [noidung]) VALUES (2, N'dsdas', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A5B700000000 AS DateTime), CAST(0x0000A5AB00000000 AS DateTime), NULL, 5, N'bai dang 2')
INSERT [dbo].[t_baidang] ([id_nguoidung], [anh], [video], [gif], [luotxem], [luotthich], [luotchiase], [ngaydang], [ngaychinhsua], [id_nhom], [id_baidang], [noidung]) VALUES (2, N'1', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A61D00000000 AS DateTime), CAST(0x0000A61C00000000 AS DateTime), NULL, 6, N'eee')
SET IDENTITY_INSERT [dbo].[t_baidang] OFF
SET IDENTITY_INSERT [dbo].[t_banbe] ON 

INSERT [dbo].[t_banbe] ([id_nguoidunga], [id_nguoidungb], [id_banbe]) VALUES (2, 3, 2)
INSERT [dbo].[t_banbe] ([id_nguoidunga], [id_nguoidungb], [id_banbe]) VALUES (2, 4, 3)
INSERT [dbo].[t_banbe] ([id_nguoidunga], [id_nguoidungb], [id_banbe]) VALUES (3, 4, 4)
SET IDENTITY_INSERT [dbo].[t_banbe] OFF
SET IDENTITY_INSERT [dbo].[t_binhluan] ON 

INSERT [dbo].[t_binhluan] ([id_baidang], [id_binhluan], [id_nguoidung], [noidung], [anh], [luotthich], [ngaybinhluan]) VALUES (5, 3, 2, N'ffff', N'1', 1, CAST(0x0000A58100000000 AS DateTime))
INSERT [dbo].[t_binhluan] ([id_baidang], [id_binhluan], [id_nguoidung], [noidung], [anh], [luotthich], [ngaybinhluan]) VALUES (5, 4, 3, N'fsdfdsf', N'1', 222, NULL)
INSERT [dbo].[t_binhluan] ([id_baidang], [id_binhluan], [id_nguoidung], [noidung], [anh], [luotthich], [ngaybinhluan]) VALUES (5, 5, 2, N'dfddddddd', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_binhluan] OFF
SET IDENTITY_INSERT [dbo].[t_nguoidung] ON 

INSERT [dbo].[t_nguoidung] ([id_nguoidung], [hoten], [ngaysinh], [anh], [sdt], [facebook], [online], [luottheodoi]) VALUES (2, N'admin', CAST(0xEB1E0B00 AS Date), NULL, N'0962672240', N'1', 1, 25)
INSERT [dbo].[t_nguoidung] ([id_nguoidung], [hoten], [ngaysinh], [anh], [sdt], [facebook], [online], [luottheodoi]) VALUES (3, N'nguoidung1', CAST(0x1C3B0B00 AS Date), NULL, N'0628648212', N'2', 0, 2)
INSERT [dbo].[t_nguoidung] ([id_nguoidung], [hoten], [ngaysinh], [anh], [sdt], [facebook], [online], [luottheodoi]) VALUES (4, N'nguoidung2', CAST(0x35340B00 AS Date), NULL, N'0625315225', N'1', NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_nguoidung] OFF
ALTER TABLE [dbo].[t_baidang]  WITH CHECK ADD  CONSTRAINT [FK_t_baidang_t_anh] FOREIGN KEY([anh])
REFERENCES [dbo].[t_anh] ([anh])
GO
ALTER TABLE [dbo].[t_baidang] CHECK CONSTRAINT [FK_t_baidang_t_anh]
GO
ALTER TABLE [dbo].[t_baidang]  WITH CHECK ADD  CONSTRAINT [FK_t_baidang_t_nguoidung] FOREIGN KEY([id_nguoidung])
REFERENCES [dbo].[t_nguoidung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[t_baidang] CHECK CONSTRAINT [FK_t_baidang_t_nguoidung]
GO
ALTER TABLE [dbo].[t_banbe]  WITH CHECK ADD  CONSTRAINT [FK_t_banbe_t_nguoidung] FOREIGN KEY([id_nguoidunga])
REFERENCES [dbo].[t_nguoidung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[t_banbe] CHECK CONSTRAINT [FK_t_banbe_t_nguoidung]
GO
ALTER TABLE [dbo].[t_banbe]  WITH CHECK ADD  CONSTRAINT [FK_t_banbe_t_nguoidung1] FOREIGN KEY([id_nguoidungb])
REFERENCES [dbo].[t_nguoidung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[t_banbe] CHECK CONSTRAINT [FK_t_banbe_t_nguoidung1]
GO
ALTER TABLE [dbo].[t_binhluan]  WITH CHECK ADD  CONSTRAINT [FK_t_binhluan_t_anh] FOREIGN KEY([anh])
REFERENCES [dbo].[t_anh] ([anh])
GO
ALTER TABLE [dbo].[t_binhluan] CHECK CONSTRAINT [FK_t_binhluan_t_anh]
GO
ALTER TABLE [dbo].[t_binhluan]  WITH CHECK ADD  CONSTRAINT [FK_t_binhluan_t_baidang] FOREIGN KEY([id_baidang])
REFERENCES [dbo].[t_baidang] ([id_baidang])
GO
ALTER TABLE [dbo].[t_binhluan] CHECK CONSTRAINT [FK_t_binhluan_t_baidang]
GO
ALTER TABLE [dbo].[t_binhluan]  WITH CHECK ADD  CONSTRAINT [FK_t_binhluan_t_nguoidung] FOREIGN KEY([id_nguoidung])
REFERENCES [dbo].[t_nguoidung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[t_binhluan] CHECK CONSTRAINT [FK_t_binhluan_t_nguoidung]
GO
ALTER TABLE [dbo].[t_nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_t_nguoidung_t_anh] FOREIGN KEY([anh])
REFERENCES [dbo].[t_anh] ([anh])
GO
ALTER TABLE [dbo].[t_nguoidung] CHECK CONSTRAINT [FK_t_nguoidung_t_anh]
GO
ALTER TABLE [dbo].[t_nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_t_nguoidung_t_anh1] FOREIGN KEY([anh])
REFERENCES [dbo].[t_anh] ([anh])
GO
ALTER TABLE [dbo].[t_nguoidung] CHECK CONSTRAINT [FK_t_nguoidung_t_anh1]
GO
ALTER TABLE [dbo].[t_tinnhan]  WITH CHECK ADD  CONSTRAINT [FK_t_tinnhan_t_nguoidung] FOREIGN KEY([id_nguoidunga])
REFERENCES [dbo].[t_nguoidung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[t_tinnhan] CHECK CONSTRAINT [FK_t_tinnhan_t_nguoidung]
GO
ALTER TABLE [dbo].[t_tinnhan]  WITH CHECK ADD  CONSTRAINT [FK_t_tinnhan_t_nguoidung1] FOREIGN KEY([id_nguoidungb])
REFERENCES [dbo].[t_nguoidung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[t_tinnhan] CHECK CONSTRAINT [FK_t_tinnhan_t_nguoidung1]
GO
ALTER TABLE [dbo].[t_theodoi]  WITH CHECK ADD  CONSTRAINT [FK_t_theodoi_t_nguoidung] FOREIGN KEY([id_nguoidunga])
REFERENCES [dbo].[t_nguoidung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[t_theodoi] CHECK CONSTRAINT [FK_t_theodoi_t_nguoidung]
GO
ALTER TABLE [dbo].[t_theodoi]  WITH CHECK ADD  CONSTRAINT [FK_t_theodoi_t_nguoidung1] FOREIGN KEY([id_nguoidungb])
REFERENCES [dbo].[t_nguoidung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[t_theodoi] CHECK CONSTRAINT [FK_t_theodoi_t_nguoidung1]
GO
ALTER TABLE [dbo].[t_thongbao]  WITH CHECK ADD  CONSTRAINT [FK_t_thongbao_t_baidang] FOREIGN KEY([id_baidang])
REFERENCES [dbo].[t_baidang] ([id_baidang])
GO
ALTER TABLE [dbo].[t_thongbao] CHECK CONSTRAINT [FK_t_thongbao_t_baidang]
GO
ALTER TABLE [dbo].[t_thongbao]  WITH CHECK ADD  CONSTRAINT [FK_t_thongbao_t_nguoidung] FOREIGN KEY([id_nguoidung])
REFERENCES [dbo].[t_nguoidung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[t_thongbao] CHECK CONSTRAINT [FK_t_thongbao_t_nguoidung]
GO
USE [master]
GO
ALTER DATABASE [code] SET  READ_WRITE 
GO
