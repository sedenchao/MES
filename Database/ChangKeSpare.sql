USE [master]
GO
/****** Object:  Database [ChangKeSpare]    Script Date: 12/10/2016 11:59:34 ******/
CREATE DATABASE [ChangKeSpare] ON  PRIMARY 
( NAME = N'ChangKeSpare', FILENAME = N'D:\database\ChangKeSpare.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ChangKeSpare_log', FILENAME = N'D:\database\ChangKeSpare_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ChangKeSpare] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChangKeSpare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChangKeSpare] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ChangKeSpare] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ChangKeSpare] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ChangKeSpare] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ChangKeSpare] SET ARITHABORT OFF
GO
ALTER DATABASE [ChangKeSpare] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ChangKeSpare] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ChangKeSpare] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ChangKeSpare] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ChangKeSpare] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ChangKeSpare] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ChangKeSpare] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ChangKeSpare] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ChangKeSpare] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ChangKeSpare] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ChangKeSpare] SET  DISABLE_BROKER
GO
ALTER DATABASE [ChangKeSpare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ChangKeSpare] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ChangKeSpare] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ChangKeSpare] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ChangKeSpare] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ChangKeSpare] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ChangKeSpare] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ChangKeSpare] SET  READ_WRITE
GO
ALTER DATABASE [ChangKeSpare] SET RECOVERY FULL
GO
ALTER DATABASE [ChangKeSpare] SET  MULTI_USER
GO
ALTER DATABASE [ChangKeSpare] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ChangKeSpare] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChangKeSpare', N'ON'
GO
USE [ChangKeSpare]
GO
/****** Object:  Table [dbo].[TT_PART_TYPE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_PART_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[PartType] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_PART_TYPE] PRIMARY KEY CLUSTERED 
(
	[PartType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_LOC_TYPE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_LOC_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[LocType] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_LOC_TYPE] PRIMARY KEY CLUSTERED 
(
	[LocType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_GROUP_TYPE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_GROUP_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[GroupType] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_GROUP_TYPE] PRIMARY KEY CLUSTERED 
(
	[GroupType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_EQPT_TYPE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_EQPT_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[EqptType] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_EQPT_TYPE] PRIMARY KEY CLUSTERED 
(
	[EqptType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TS_STOCK_DETAIL]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_STOCK_DETAIL](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[LocCode] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[ProduceDate] [datetime] NOT NULL,
	[OverdueDate] [datetime] NOT NULL,
	[ReceiveDate] [datetime] NOT NULL,
	[UpdateQty] [money] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TS_STOCK_DETAIL] PRIMARY KEY CLUSTERED 
(
	[LocCode] ASC,
	[PartCode] ASC,
	[Batch] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'LocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0：待检，1：合格，2：不合格，3：过期，4：待判定）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'ProduceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'OverdueDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL'
GO
SET IDENTITY_INSERT [dbo].[TS_STOCK_DETAIL] ON
INSERT [dbo].[TS_STOCK_DETAIL] ([UID], [LocCode], [PartCode], [Batch], [State], [Qty], [UnitPrice], [ProduceDate], [OverdueDate], [ReceiveDate], [UpdateQty], [UpdateTime]) VALUES (1, N'KW001', N'LJ001', N'16101001', 1, 22.0000, 2.5000, CAST(0x0000A69B00000000 AS DateTime), CAST(0x0000A76300000000 AS DateTime), CAST(0x0000A69B00000000 AS DateTime), 2.0000, CAST(0x0000A6D800BD6ECB AS DateTime))
INSERT [dbo].[TS_STOCK_DETAIL] ([UID], [LocCode], [PartCode], [Batch], [State], [Qty], [UnitPrice], [ProduceDate], [OverdueDate], [ReceiveDate], [UpdateQty], [UpdateTime]) VALUES (5, N'KW001', N'LJ001', N'16101002', 0, 9.0000, 0.0000, CAST(0x0000A69B00000000 AS DateTime), CAST(0x0000A76300000000 AS DateTime), CAST(0x0000A6D7014683AE AS DateTime), -1.0000, CAST(0x0000A6D800BD6ED3 AS DateTime))
INSERT [dbo].[TS_STOCK_DETAIL] ([UID], [LocCode], [PartCode], [Batch], [State], [Qty], [UnitPrice], [ProduceDate], [OverdueDate], [ReceiveDate], [UpdateQty], [UpdateTime]) VALUES (4, N'KW002', N'LJ001', N'16101001', 1, 35.0000, 2.5000, CAST(0x0000A69B00000000 AS DateTime), CAST(0x0000A76300000000 AS DateTime), CAST(0x0000A69B00000000 AS DateTime), 5.0000, CAST(0x0000A6D70136C295 AS DateTime))
INSERT [dbo].[TS_STOCK_DETAIL] ([UID], [LocCode], [PartCode], [Batch], [State], [Qty], [UnitPrice], [ProduceDate], [OverdueDate], [ReceiveDate], [UpdateQty], [UpdateTime]) VALUES (6, N'OTHER', N'LJ001', N'16101002', 0, 2.0000, 0.0000, CAST(0x0000A69B00000000 AS DateTime), CAST(0x0000A76300000000 AS DateTime), CAST(0x0000A6D7014683AE AS DateTime), 1.0000, CAST(0x0000A6D800BD6ED4 AS DateTime))
SET IDENTITY_INSERT [dbo].[TS_STOCK_DETAIL] OFF
/****** Object:  Table [dbo].[TL_TRANSACTION]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TL_TRANSACTION](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[OperName] [nvarchar](80) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[BillType] [int] NOT NULL,
	[SubBillType] [int] NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[LocCode] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TL_STOCKMOVE] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_TRANSACTION', @level2type=N'COLUMN',@level2name=N'OperName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_TRANSACTION', @level2type=N'COLUMN',@level2name=N'LogTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_TRANSACTION', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_TRANSACTION', @level2type=N'COLUMN',@level2name=N'LocCode'
GO
SET IDENTITY_INSERT [dbo].[TL_TRANSACTION] ON
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (1, N'zs', CAST(0x0000A6D700F89513 AS DateTime), N'MD-20161209-0003', 103, 0, N'LJ001', N'16101001', 0.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (2, N'zhangsan', CAST(0x0000A6D700F916E8 AS DateTime), N'MD-20161209-0002', 103, 0, N'LJ001', N'16101001', 0.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (3, N'zs', CAST(0x0000A6D700FA82E5 AS DateTime), N'MD-20161209-0003', 103, 0, N'LJ001', N'16101001', -2.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (4, N'zs', CAST(0x0000A6D700FF34CD AS DateTime), N'MD-20161209-0003', 103, 0, N'LJ001', N'16101001', -2.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (5, N'zhangsan', CAST(0x0000A6D700FF4F1C AS DateTime), N'MD-20161209-0002', 103, 0, N'LJ001', N'16101001', -1.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (6, N'zs', CAST(0x0000A6D7010F51B4 AS DateTime), N'SR-20161209-0004', 107, 0, N'LJ001', N'16101001', 1.0000, 0.0000, N'KW001', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (11, N'zhangs', CAST(0x0000A6D70136AB11 AS DateTime), N'SM-20161209-0009', 302, 0, N'LJ001', N'16101001', -5.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (12, N'zhangs', CAST(0x0000A6D70136C299 AS DateTime), N'SM-20161209-0009', 302, 0, N'LJ001', N'16101001', 5.0000, 0.0000, N'KW002', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (13, N'zhangs', CAST(0x0000A6D7014683B4 AS DateTime), N'OI-20161209-0002', 301, 0, N'LJ001', N'16101002', 11.0000, 0.0000, N'KW001', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (14, N'zhangs', CAST(0x0000A6D70152FBD9 AS DateTime), N'OI-20161209-0008', 301, 0, N'LJ001', N'16101001', -3.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (15, N'zhangs', CAST(0x0000A6D800BCBD5D AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101001', 2.0000, 0.0000, N'KW001', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (16, N'zhangs', CAST(0x0000A6D800BCCD21 AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101002', -1.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (17, N'zhangs', CAST(0x0000A6D800BCDFB1 AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101002', 1.0000, 0.0000, N'OTHER', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (18, N'zhangs', CAST(0x0000A6D800BD6ED2 AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101001', 2.0000, 0.0000, N'KW001', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (19, N'zhangs', CAST(0x0000A6D800BD6ED3 AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101002', -1.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (20, N'zhangs', CAST(0x0000A6D800BD6ED5 AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101002', 1.0000, 0.0000, N'OTHER', N'In')
SET IDENTITY_INSERT [dbo].[TL_TRANSACTION] OFF
/****** Object:  Table [dbo].[TL_OPER]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TL_OPER](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[OperCode] [nvarchar](80) NOT NULL,
	[OperName] [nvarchar](50) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[LogType] [varchar](50) NOT NULL,
	[LogSite] [nvarchar](200) NOT NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_TL_LOG] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'OperCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'LogTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'LogSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'Message'
GO
SET IDENTITY_INSERT [dbo].[TL_OPER] ON
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (1, N'admin', N'超级管理员', CAST(0x0000A6D40094E4E7 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (2, N'admin', N'超级管理员', CAST(0x0000A6D400950C1C AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (3, N'admin', N'超级管理员', CAST(0x0000A6D40095253B AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (4, N'admin', N'超级管理员', CAST(0x0000A6D40095CD62 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (5, N'admin', N'超级管理员', CAST(0x0000A6D4009609F1 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (6, N'admin', N'超级管理员', CAST(0x0000A6D40098BEA3 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (7, N'admin', N'超级管理员', CAST(0x0000A6D40098F486 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (8, N'admin', N'超级管理员', CAST(0x0000A6D400999647 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (9, N'admin', N'超级管理员', CAST(0x0000A6D4009A5374 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (10, N'admin', N'超级管理员', CAST(0x0000A6D4009D21A0 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (11, N'admin', N'超级管理员', CAST(0x0000A6D4009DE92C AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (12, N'admin', N'超级管理员', CAST(0x0000A6D4009E9401 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (13, N'admin', N'超级管理员', CAST(0x0000A6D4009F6D32 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (14, N'admin', N'超级管理员', CAST(0x0000A6D400A4174E AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (15, N'admin', N'超级管理员', CAST(0x0000A6D400B43948 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (16, N'admin', N'超级管理员', CAST(0x0000A6D400B7BC59 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (17, N'admin', N'超级管理员', CAST(0x0000A6D400B9FBFD AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (18, N'admin', N'超级管理员', CAST(0x0000A6D400BABFED AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (19, N'admin', N'超级管理员', CAST(0x0000A6D400BC41D8 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (20, N'admin', N'超级管理员', CAST(0x0000A6D400BCE1B4 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (21, N'admin', N'超级管理员', CAST(0x0000A6D400EDA6C5 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (22, N'admin', N'超级管理员', CAST(0x0000A6D400F238B2 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (23, N'admin', N'超级管理员', CAST(0x0000A6D400F2F862 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (24, N'admin', N'超级管理员', CAST(0x0000A6D400F3B23C AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (25, N'admin', N'超级管理员', CAST(0x0000A6D400F45E77 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (26, N'admin', N'超级管理员', CAST(0x0000A6D400F54D5E AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (27, N'admin', N'超级管理员', CAST(0x0000A6D400F93D34 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (28, N'admin', N'超级管理员', CAST(0x0000A6D400F95CBE AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (29, N'admin', N'超级管理员', CAST(0x0000A6D400FB0A72 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (30, N'admin', N'超级管理员', CAST(0x0000A6D400FD15FE AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (31, N'admin', N'超级管理员', CAST(0x0000A6D40105DDCC AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (32, N'admin', N'超级管理员', CAST(0x0000A6D401060AC0 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (33, N'admin', N'超级管理员', CAST(0x0000A6D4010830F6 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (34, N'admin', N'超级管理员', CAST(0x0000A6D40108F831 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (35, N'admin', N'超级管理员', CAST(0x0000A6D4010C03BB AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (36, N'admin', N'超级管理员', CAST(0x0000A6D4010CEE61 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (37, N'admin', N'超级管理员', CAST(0x0000A6D4010DEC40 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (38, N'admin', N'超级管理员', CAST(0x0000A6D4010E9D72 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (39, N'admin', N'超级管理员', CAST(0x0000A6D4010FF5F6 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (40, N'admin', N'超级管理员', CAST(0x0000A6D401105343 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (41, N'admin', N'超级管理员', CAST(0x0000A6D401111A59 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (42, N'admin', N'超级管理员', CAST(0x0000A6D4011370ED AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (43, N'admin', N'超级管理员', CAST(0x0000A6D40113DD9A AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (44, N'admin', N'超级管理员', CAST(0x0000A6D40114648C AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (45, N'admin', N'超级管理员', CAST(0x0000A6D40115C577 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (46, N'admin', N'超级管理员', CAST(0x0000A6D4011658E6 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (47, N'admin', N'超级管理员', CAST(0x0000A6D40118D28F AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (48, N'admin', N'超级管理员', CAST(0x0000A6D4011958E6 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (49, N'admin', N'超级管理员', CAST(0x0000A6D4011A63FB AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (50, N'admin', N'超级管理员', CAST(0x0000A6D4011B1D5D AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (51, N'admin', N'超级管理员', CAST(0x0000A6D500F1F720 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (52, N'admin', N'超级管理员', CAST(0x0000A6D500F3981E AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (53, N'admin', N'超级管理员', CAST(0x0000A6D500F6E354 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (54, N'admin', N'超级管理员', CAST(0x0000A6D500FE62F7 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (55, N'admin', N'超级管理员', CAST(0x0000A6D500FFF72D AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (56, N'admin', N'超级管理员', CAST(0x0000A6D5010064DE AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (57, N'admin', N'超级管理员', CAST(0x0000A6D50100A500 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (58, N'admin', N'超级管理员', CAST(0x0000A6D50100E285 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (59, N'admin', N'超级管理员', CAST(0x0000A6D50105DB1A AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (60, N'admin', N'超级管理员', CAST(0x0000A6D5010B8000 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (61, N'admin', N'超级管理员', CAST(0x0000A6D501632C1F AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (62, N'admin', N'超级管理员', CAST(0x0000A6D60109B301 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (63, N'admin', N'超级管理员', CAST(0x0000A6D60109EC86 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (64, N'admin', N'超级管理员', CAST(0x0000A6D6010AD023 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (65, N'admin', N'超级管理员', CAST(0x0000A6D6010B822F AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (66, N'admin', N'超级管理员', CAST(0x0000A6D6010C18A6 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (67, N'admin', N'超级管理员', CAST(0x0000A6D6010CCB4E AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (68, N'admin', N'超级管理员', CAST(0x0000A6D6011D5685 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (69, N'admin', N'超级管理员', CAST(0x0000A6D6011DE576 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (70, N'admin', N'超级管理员', CAST(0x0000A6D6011E3DC4 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (71, N'admin', N'超级管理员', CAST(0x0000A6D6011EA9E3 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (72, N'admin', N'超级管理员', CAST(0x0000A6D601260535 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (73, N'admin', N'超级管理员', CAST(0x0000A6D6015193E5 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (74, N'admin', N'超级管理员', CAST(0x0000A6D700969493 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (75, N'admin', N'超级管理员', CAST(0x0000A6D7009E690D AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (76, N'admin', N'超级管理员', CAST(0x0000A6D7009F13F2 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (77, N'admin', N'超级管理员', CAST(0x0000A6D7009F7F5F AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (78, N'admin', N'超级管理员', CAST(0x0000A6D7009FE1A0 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (79, N'admin', N'超级管理员', CAST(0x0000A6D700A10086 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (80, N'admin', N'超级管理员', CAST(0x0000A6D700A54FB6 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (81, N'admin', N'超级管理员', CAST(0x0000A6D700A5BDAC AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (82, N'admin', N'超级管理员', CAST(0x0000A6D700A649CB AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (83, N'admin', N'超级管理员', CAST(0x0000A6D700A8617E AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (84, N'admin', N'超级管理员', CAST(0x0000A6D700A99D5A AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (85, N'admin', N'超级管理员', CAST(0x0000A6D700AB389C AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (86, N'admin', N'超级管理员', CAST(0x0000A6D700AC403C AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (87, N'admin', N'超级管理员', CAST(0x0000A6D700ACB305 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (88, N'admin', N'超级管理员', CAST(0x0000A6D700ACF03A AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (89, N'admin', N'超级管理员', CAST(0x0000A6D700ADAF40 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (90, N'admin', N'超级管理员', CAST(0x0000A6D700AE579F AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (91, N'admin', N'超级管理员', CAST(0x0000A6D700AEE126 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (92, N'admin', N'超级管理员', CAST(0x0000A6D700B4D90E AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (93, N'admin', N'超级管理员', CAST(0x0000A6D700B528A0 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (94, N'admin', N'超级管理员', CAST(0x0000A6D700B60625 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (95, N'admin', N'超级管理员', CAST(0x0000A6D700BB37CD AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (96, N'admin', N'超级管理员', CAST(0x0000A6D700BC7C63 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (97, N'admin', N'超级管理员', CAST(0x0000A6D700BD03A4 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (98, N'admin', N'超级管理员', CAST(0x0000A6D700BD3EFA AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (99, N'admin', N'超级管理员', CAST(0x0000A6D700BDCAA9 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (100, N'admin', N'超级管理员', CAST(0x0000A6D700BE4768 AS DateTime), N'Login', N'JH', N'登录成功')
GO
print 'Processed 100 total records'
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (101, N'admin', N'超级管理员', CAST(0x0000A6D700C0DAC8 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (102, N'admin', N'超级管理员', CAST(0x0000A6D700C22C19 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (103, N'admin', N'超级管理员', CAST(0x0000A6D700C40F1F AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (104, N'admin', N'超级管理员', CAST(0x0000A6D700C48104 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (105, N'admin', N'超级管理员', CAST(0x0000A6D700DE6737 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (106, N'admin', N'超级管理员', CAST(0x0000A6D700E024E3 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (107, N'admin', N'超级管理员', CAST(0x0000A6D700E6BC50 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (108, N'admin', N'超级管理员', CAST(0x0000A6D700E85B35 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (109, N'admin', N'超级管理员', CAST(0x0000A6D700E92802 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (110, N'admin', N'超级管理员', CAST(0x0000A6D700EB3B1E AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (111, N'admin', N'超级管理员', CAST(0x0000A6D700EC2205 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (112, N'admin', N'超级管理员', CAST(0x0000A6D700ECD8A2 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (113, N'admin', N'超级管理员', CAST(0x0000A6D700F02EB8 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (114, N'admin', N'超级管理员', CAST(0x0000A6D700F1D901 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (115, N'admin', N'超级管理员', CAST(0x0000A6D700F22031 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (116, N'admin', N'超级管理员', CAST(0x0000A6D700F313E8 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (117, N'admin', N'超级管理员', CAST(0x0000A6D700F44391 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (118, N'admin', N'超级管理员', CAST(0x0000A6D700F49C34 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (119, N'admin', N'超级管理员', CAST(0x0000A6D700F74C20 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (120, N'admin', N'超级管理员', CAST(0x0000A6D700F7F170 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (121, N'admin', N'超级管理员', CAST(0x0000A6D700F88ADF AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (122, N'admin', N'超级管理员', CAST(0x0000A6D700F8C180 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (123, N'admin', N'超级管理员', CAST(0x0000A6D700F9D1FF AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (124, N'admin', N'超级管理员', CAST(0x0000A6D700FA64A8 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (125, N'admin', N'超级管理员', CAST(0x0000A6D700FB1228 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (126, N'admin', N'超级管理员', CAST(0x0000A6D700FF2B93 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (127, N'admin', N'超级管理员', CAST(0x0000A6D700FFBBEF AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (128, N'admin', N'超级管理员', CAST(0x0000A6D70101EECB AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (129, N'admin', N'超级管理员', CAST(0x0000A6D7010475AA AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (130, N'admin', N'超级管理员', CAST(0x0000A6D7010528F7 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (131, N'admin', N'超级管理员', CAST(0x0000A6D701056C6B AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (132, N'admin', N'超级管理员', CAST(0x0000A6D701085971 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (133, N'admin', N'超级管理员', CAST(0x0000A6D70108CBD1 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (134, N'admin', N'超级管理员', CAST(0x0000A6D70109497E AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (135, N'admin', N'超级管理员', CAST(0x0000A6D7010AD3B0 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (136, N'admin', N'超级管理员', CAST(0x0000A6D7010B7870 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (137, N'admin', N'超级管理员', CAST(0x0000A6D7010C1864 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (138, N'admin', N'超级管理员', CAST(0x0000A6D7010C62A6 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (139, N'admin', N'超级管理员', CAST(0x0000A6D7010E7EEC AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (140, N'admin', N'超级管理员', CAST(0x0000A6D7010F42BF AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (141, N'admin', N'超级管理员', CAST(0x0000A6D701151CCB AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (142, N'admin', N'超级管理员', CAST(0x0000A6D7011717FD AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (143, N'admin', N'超级管理员', CAST(0x0000A6D70118B990 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (144, N'admin', N'超级管理员', CAST(0x0000A6D701192DD0 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (145, N'admin', N'超级管理员', CAST(0x0000A6D7011A01C7 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (146, N'admin', N'超级管理员', CAST(0x0000A6D70132AFEB AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (147, N'admin', N'超级管理员', CAST(0x0000A6D701354577 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (148, N'admin', N'超级管理员', CAST(0x0000A6D70135D407 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (149, N'admin', N'超级管理员', CAST(0x0000A6D7013689F2 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (150, N'admin', N'超级管理员', CAST(0x0000A6D70137C33F AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (151, N'admin', N'超级管理员', CAST(0x0000A6D701383776 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (152, N'admin', N'超级管理员', CAST(0x0000A6D7013D5B11 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (153, N'admin', N'超级管理员', CAST(0x0000A6D7013E6954 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (154, N'admin', N'超级管理员', CAST(0x0000A6D70144CDB7 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (155, N'admin', N'超级管理员', CAST(0x0000A6D7014641DC AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (156, N'admin', N'超级管理员', CAST(0x0000A6D70148C7D3 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (157, N'admin', N'超级管理员', CAST(0x0000A6D701494AE2 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (158, N'admin', N'超级管理员', CAST(0x0000A6D7014A0067 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (159, N'admin', N'超级管理员', CAST(0x0000A6D7014A978F AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (160, N'admin', N'超级管理员', CAST(0x0000A6D7014F0BE5 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (161, N'admin', N'超级管理员', CAST(0x0000A6D70150C154 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (162, N'admin', N'超级管理员', CAST(0x0000A6D70152D6EC AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (163, N'admin', N'超级管理员', CAST(0x0000A6D701556F00 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (164, N'admin', N'超级管理员', CAST(0x0000A6D70156CD40 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (165, N'admin', N'超级管理员', CAST(0x0000A6D701584B08 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (166, N'admin', N'超级管理员', CAST(0x0000A6D7015BDF3F AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (167, N'admin', N'超级管理员', CAST(0x0000A6D7015C4B03 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (168, N'admin', N'超级管理员', CAST(0x0000A6D7016400B9 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (169, N'admin', N'超级管理员', CAST(0x0000A6D701644120 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (170, N'admin', N'超级管理员', CAST(0x0000A6D70165F71B AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (171, N'admin', N'超级管理员', CAST(0x0000A6D70166AC20 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (172, N'admin', N'超级管理员', CAST(0x0000A6D7016719B9 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (173, N'admin', N'超级管理员', CAST(0x0000A6D701676666 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (174, N'admin', N'超级管理员', CAST(0x0000A6D70167BE04 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (175, N'admin', N'超级管理员', CAST(0x0000A6D70169A93C AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (176, N'admin', N'超级管理员', CAST(0x0000A6D7016B305C AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (177, N'admin', N'超级管理员', CAST(0x0000A6D7016C575C AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (178, N'admin', N'超级管理员', CAST(0x0000A6D7016C8BDF AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (179, N'admin', N'超级管理员', CAST(0x0000A6D7016CC8DA AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (180, N'admin', N'超级管理员', CAST(0x0000A6D7016DB5B3 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (181, N'admin', N'超级管理员', CAST(0x0000A6D7016E3406 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (182, N'admin', N'超级管理员', CAST(0x0000A6D701700C9A AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (183, N'admin', N'超级管理员', CAST(0x0000A6D701728435 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (184, N'admin', N'超级管理员', CAST(0x0000A6D800A3F382 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (185, N'admin', N'超级管理员', CAST(0x0000A6D800A490D9 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (186, N'admin', N'超级管理员', CAST(0x0000A6D800A74C66 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (187, N'admin', N'超级管理员', CAST(0x0000A6D800A79F79 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (188, N'admin', N'超级管理员', CAST(0x0000A6D800A98EE3 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (189, N'admin', N'超级管理员', CAST(0x0000A6D800AE3A95 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (190, N'admin', N'超级管理员', CAST(0x0000A6D800AEAD8A AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (191, N'admin', N'超级管理员', CAST(0x0000A6D800B0AC69 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (192, N'admin', N'超级管理员', CAST(0x0000A6D800B180C9 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (193, N'admin', N'超级管理员', CAST(0x0000A6D800B1CE4D AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (194, N'admin', N'超级管理员', CAST(0x0000A6D800B2126B AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (195, N'admin', N'超级管理员', CAST(0x0000A6D800B48295 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (196, N'admin', N'超级管理员', CAST(0x0000A6D800B75354 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (197, N'admin', N'超级管理员', CAST(0x0000A6D800B7BFF5 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (198, N'admin', N'超级管理员', CAST(0x0000A6D800BA5E2E AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (199, N'admin', N'超级管理员', CAST(0x0000A6D800BA9B97 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (200, N'admin', N'超级管理员', CAST(0x0000A6D800BB30C4 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (201, N'admin', N'超级管理员', CAST(0x0000A6D800BCB07F AS DateTime), N'Login', N'JH', N'登录成功')
GO
print 'Processed 200 total records'
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (202, N'admin', N'超级管理员', CAST(0x0000A6D800BD64C8 AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (203, N'admin', N'超级管理员', CAST(0x0000A6D800BEF4DB AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (204, N'admin', N'超级管理员', CAST(0x0000A6D800BF35A8 AS DateTime), N'Login', N'JH', N'登录成功')
SET IDENTITY_INSERT [dbo].[TL_OPER] OFF
/****** Object:  Table [dbo].[TL_NOTIFY]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TL_NOTIFY](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[NotifyType] [int] NOT NULL,
	[NotifyMessage] [nvarchar](max) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[CreateOperName] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CloseOperName] [nvarchar](50) NULL,
	[CloseTime] [datetime] NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_TS_NOTIFY] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TL_NOTIFY] ON
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (1, 0, N'', N'ASK0001', N'张三', CAST(0x0000A6D400F47683 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (2, 0, N'', N'ASK0001', N'张三', CAST(0x0000A6D400F47B3F AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (3, 0, N'', N'ASK0001', N'张三', CAST(0x0000A6D400F4B395 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (4, 0, N'', N'ASK0001', N'张三', CAST(0x0000A6D400F58A44 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (5, 0, N'', N'ASK0001', N'张三', CAST(0x0000A6D401063BB3 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (6, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D401065343 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (7, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D401066C07 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (8, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D40106864D AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (9, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D4010703B9 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (10, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D401072515 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (11, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D4010908E5 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (12, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D4010D44AD AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (13, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D40113EEFF AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (14, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D401149605 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (15, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D4011A6FA6 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (16, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D4011A970C AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (17, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D4011AA1F9 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (18, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D4011ABDAD AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (19, 0, N'', N'MA-20161206-0001', N'123', CAST(0x0000A6D4011BB41A AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (20, 0, N'', N'MA-20161206-0001', N'123', CAST(0x0000A6D500F29368 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (21, 0, N'', N'ASK0001', N'张三SSS', CAST(0x0000A6D700AB926A AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (22, 0, N'', N'MA-20161209-0001', N'张三', CAST(0x0000A6D700AD7122 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (23, 0, N'', N'MA-20161209-0001', N'张三', CAST(0x0000A6D700AE9820 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (24, 5, N'', N'IV-20161210-0002', N'zhangs', CAST(0x0000A6D800A9A63D AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (25, 5, N'', N'IV-20161210-0002', N'zhangs', CAST(0x0000A6D800AE4E52 AS DateTime), N'', CAST(0x000063DF00000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[TL_NOTIFY] OFF
/****** Object:  Table [dbo].[TL_INTERFACE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TL_INTERFACE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[InterfaceType] [nvarchar](50) NOT NULL,
	[InterfaceString] [nvarchar](max) NOT NULL,
	[State] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ProcessTime] [datetime] NOT NULL,
	[BillNum] [varchar](50) NOT NULL,
	[BillType] [varchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[pQty] [int] NULL,
	[p01] [varchar](50) NULL,
	[p02] [varchar](50) NULL,
	[p03] [varchar](50) NULL,
	[p04] [varchar](50) NULL,
	[p05] [varchar](50) NULL,
	[p06] [varchar](50) NULL,
	[p07] [varchar](50) NULL,
	[p08] [varchar](50) NULL,
	[p09] [varchar](50) NULL,
	[p10] [varchar](50) NULL,
	[p11] [varchar](50) NULL,
	[p12] [varchar](50) NULL,
	[p13] [varchar](50) NULL,
	[p14] [varchar](50) NULL,
	[p15] [varchar](50) NULL,
	[p16] [varchar](50) NULL,
	[p17] [varchar](50) NULL,
	[p18] [varchar](50) NULL,
	[p19] [varchar](50) NULL,
	[p20] [varchar](50) NULL,
 CONSTRAINT [PK_TS_INTERFACE] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_INTERFACE'
GO
/****** Object:  Table [dbo].[TL_BILL]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TL_BILL](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[OperName] [nvarchar](80) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[LogType] [nvarchar](50) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[BillType] [int] NOT NULL,
	[SubBillType] [int] NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_TL_BILL] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'OperName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'LogTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'BillType'
GO
SET IDENTITY_INSERT [dbo].[TL_BILL] ON
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (1, N'张三', CAST(0x0000A6D400F47682 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (2, N'张三', CAST(0x0000A6D400F47B3F AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (3, N'张三', CAST(0x0000A6D400F4B395 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (4, N'张三', CAST(0x0000A6D400F58A43 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (5, N'张三', CAST(0x0000A6D401063BB2 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (6, N'张三SSS', CAST(0x0000A6D401065343 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (7, N'张三SSS', CAST(0x0000A6D401066C07 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (8, N'张三SSS', CAST(0x0000A6D40106864D AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (9, N'张三SSS', CAST(0x0000A6D4010703B9 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (10, N'张三SSS', CAST(0x0000A6D401072515 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (11, N'张三SSS', CAST(0x0000A6D4010908D9 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (12, N'张三SSS', CAST(0x0000A6D4010D44AC AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (13, N'张三SSS', CAST(0x0000A6D40113EEF5 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (14, N'张三SSS', CAST(0x0000A6D4011495FD AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (15, N'张三SSS', CAST(0x0000A6D4011A6FA3 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (16, N'张三SSS', CAST(0x0000A6D4011A970B AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (17, N'张三SSS', CAST(0x0000A6D4011AA1F8 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (18, N'张三SSS', CAST(0x0000A6D4011ABDAC AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (19, N'123', CAST(0x0000A6D4011BB41A AS DateTime), N'Add', N'MA-20161206-0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (20, N'123', CAST(0x0000A6D500F29363 AS DateTime), N'Add', N'MA-20161206-0001', 1041, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (21, N'张三SSS', CAST(0x0000A6D700AB9264 AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (22, N'张三', CAST(0x0000A6D700AD7120 AS DateTime), N'Add', N'MA-20161209-0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (23, N'张三', CAST(0x0000A6D700AE981D AS DateTime), N'Add', N'MA-20161209-0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (24, N'zhangsan', CAST(0x0000A6D700EC54E5 AS DateTime), N'Add', N'MD-20161209-0002', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (25, N'zs', CAST(0x0000A6D700ED0EF5 AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (26, N'zs', CAST(0x0000A6D700ED320F AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (27, N'zs', CAST(0x0000A6D700F04C38 AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (28, N'zs', CAST(0x0000A6D700F06488 AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (29, N'zs', CAST(0x0000A6D700F1E9B3 AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (30, N'zs', CAST(0x0000A6D700F89515 AS DateTime), N'Finish', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (31, N'zhangsan', CAST(0x0000A6D700F916EA AS DateTime), N'Finish', N'MD-20161209-0002', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (32, N'zs', CAST(0x0000A6D700FA87A3 AS DateTime), N'Finish', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (33, N'zs', CAST(0x0000A6D700FF34D0 AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (34, N'zs', CAST(0x0000A6D700FF34D1 AS DateTime), N'Finish', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (35, N'zhangsan', CAST(0x0000A6D700FF4F1D AS DateTime), N'Add', N'MD-20161209-0002', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (36, N'zhangsan', CAST(0x0000A6D700FF4F1D AS DateTime), N'Finish', N'MD-20161209-0002', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (37, N'zs', CAST(0x0000A6D701032853 AS DateTime), N'Add', N'SR-20161209-0002', 107, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (38, N'zs', CAST(0x0000A6D701048A17 AS DateTime), N'Add', N'SR-20161209-0004', 107, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (39, N'zs', CAST(0x0000A6D701097B1C AS DateTime), N'Add', N'SR-20161209-0004', 107, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (42, N'zhangs', CAST(0x0000A6D70136AB0C AS DateTime), N'Add', N'SM-20161209-0009', 302, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (43, N'zhangs', CAST(0x0000A6D7014683AD AS DateTime), N'Add', N'OI-20161209-0002', 301, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (44, N'zhangs', CAST(0x0000A6D70152F7DC AS DateTime), N'Add', N'OI-20161209-0008', 301, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (45, N'zhangs', CAST(0x0000A6D800A9A63C AS DateTime), N'Add', N'IV-20161210-0002', 305, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (46, N'zhangs', CAST(0x0000A6D800AE4E52 AS DateTime), N'Add', N'IV-20161210-0002', 305, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (47, N'zhangs', CAST(0x0000A6D800BD6ED8 AS DateTime), N'Add', N'IV-20161210-0002', 305, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (48, N'zhangs', CAST(0x0000A6D800BD6ED8 AS DateTime), N'Finish', N'IV-20161210-0002', 305, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TL_BILL] OFF
/****** Object:  Table [dbo].[TL_BASEDATA]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TL_BASEDATA](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[OperName] [nvarchar](80) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[LogType] [varchar](50) NOT NULL,
	[DataType] [varchar](50) NOT NULL,
	[OldValue] [nvarchar](4000) NOT NULL,
	[NewValue] [nvarchar](4000) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TL_BASEDATA] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'OperName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'LogTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'DataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'OldValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'NewValue'
GO
SET IDENTITY_INSERT [dbo].[TL_BASEDATA] ON
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (1, N'', CAST(0x0000A6D400FA1C01 AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:123,WhseCode:123,GroupCode:,LocType:,State:0,Remark:11111,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (2, N'', CAST(0x0000A6D400FA5CB0 AS DateTime), N'Update', N'TA_STORE_LOCATION', N'UID:1,LocCode:123,WhseCode:123,GroupCode:,LocType:,State:0,Remark:11111,', N'UID:1,LocCode:123,WhseCode:123,GroupCode:,LocType:,State:0,Remark:222,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (3, N'', CAST(0x0000A6D401112F82 AS DateTime), N'Delete', N'TA_STORE_LOCATION', N'UID:1,LocCode:123,WhseCode:123,GroupCode:,LocType:,State:0,Remark:222,', N'', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (4, N'', CAST(0x0000A6D40118F61B AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:234,WhseCode:234,GroupCode:,LocType:,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (5, N'', CAST(0x0000A6D40119017F AS DateTime), N'Delete', N'TA_STORE_LOCATION', N'UID:2,LocCode:234,WhseCode:234,GroupCode:,LocType:,State:0,Remark:,', N'', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (6, N'', CAST(0x0000A6D500F3E32A AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:11,WhseCode:11,GroupCode:11,LocType:,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (7, N'', CAST(0x0000A6D6011D9C04 AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:KW001,WhseCode:11,GroupCode:11,LocType:,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (8, N'', CAST(0x0000A6D70096D09C AS DateTime), N'Add', N'TA_STORE_WHSE', N'', N'UID:0,WhseCode:CK001,WhseName:备件库,WhseAddress:123123,WhseType:第三方仓库,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (9, N'', CAST(0x0000A6D70096F55D AS DateTime), N'Delete', N'TA_STORE_LOCATION', N'UID:3,LocCode:11,WhseCode:11,GroupCode:11,LocType:,State:0,Remark:,', N'', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (10, N'', CAST(0x0000A6D70096F55D AS DateTime), N'Update', N'TA_STORE_LOCATION', N'UID:4,LocCode:KW001,WhseCode:11,GroupCode:11,LocType:,State:0,Remark:,', N'UID:4,LocCode:KW001,WhseCode:CK001,GroupCode:11,LocType:,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (11, N'', CAST(0x0000A6D70097719F AS DateTime), N'Add', N'TA_PART', N'', N'UID:0,PartCode:LJ001,ErpPartCode:LJ001,PartDesc1:零件描述1,PartDesc2:零件描述2,Unit:个,BM:BM,PartType:0,MaxQty:50,MinQty:20,SafeQty:30,IdleDays:0,SplyPackQty:0,ValidityDays:200,State:0,Remark:,Picture:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (12, N'', CAST(0x0000A6D70097B481 AS DateTime), N'Add', N'TA_WORKLINE', N'', N'UID:0,WorklineCode:Line001,WokrlineName:生产线001,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (13, N'', CAST(0x0000A6D701179F41 AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:KW002,WhseCode:备件库,GroupCode:11,LocType:,State:0,Remark:,', NULL)
SET IDENTITY_INSERT [dbo].[TL_BASEDATA] OFF
/****** Object:  Table [dbo].[TB_STOCK_MOVE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_STOCK_MOVE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](20) NOT NULL,
	[FromLocCode] [nvarchar](50) NOT NULL,
	[ToLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_STOCK_MOVE_1] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'ToLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'Remark'
GO
SET IDENTITY_INSERT [dbo].[TB_STOCK_MOVE] ON
INSERT [dbo].[TB_STOCK_MOVE] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [ToLocCode], [Qty], [Remark]) VALUES (3, N'SM-20161209-0009', N'LJ001', N'16101001', N'KW001', N'KW002', 5.0000, NULL)
SET IDENTITY_INSERT [dbo].[TB_STOCK_MOVE] OFF
/****** Object:  Table [dbo].[TB_RETURN]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RETURN](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[FromLocCode] [nvarchar](50) NOT NULL,
	[ToLocCode] [nvarchar](50) NULL,
	[OutQty] [money] NOT NULL,
	[InQty] [money] NULL,
	[UnitPrice] [money] NOT NULL,
	[Amount] [money] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[WorklineCode] [nvarchar](50) NULL,
	[EqptCode] [nvarchar](50) NULL,
	[AskUser] [nvarchar](50) NULL,
	[AskTime] [datetime] NULL,
	[ConfirmUser] [nvarchar](50) NULL,
	[ConfirmTime] [datetime] NULL,
	[ReturnUser] [nvarchar](50) NULL,
	[ReturnTime] [datetime] NULL,
	[TakeUser] [nvarchar](50) NOT NULL,
	[TakeTime] [datetime] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_Return] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TB_RETURN] ON
INSERT [dbo].[TB_RETURN] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [ToLocCode], [OutQty], [InQty], [UnitPrice], [Amount], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [ReturnUser], [ReturnTime], [TakeUser], [TakeTime], [State], [Remark]) VALUES (1, N'SR-20161209-0004', N'LJ001', N'16101001', N'', N'KW001', 2.0000, 1.0000, 2.5000, 5.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'zss', CAST(0x0000A6D7010481B4 AS DateTime), N'zss', CAST(0x0000A6D700ED0375 AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_RETURN] OFF
/****** Object:  Table [dbo].[TB_PO]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PO](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[Line] [int] NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[BillQty] [money] NOT NULL,
	[ArrialQty] [money] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_PO] PRIMARY KEY CLUSTERED 
(
	[BillNum] ASC,
	[Line] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'BillQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已收数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'ArrialQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购订单明细表 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO'
GO
SET IDENTITY_INSERT [dbo].[TB_PO] ON
INSERT [dbo].[TB_PO] ([UID], [BillNum], [Line], [PartCode], [BillQty], [ArrialQty], [State], [Remark]) VALUES (2, N'MR0001', 1, N'Part0001', 100.0000, 0.0000, 0, NULL)
INSERT [dbo].[TB_PO] ([UID], [BillNum], [Line], [PartCode], [BillQty], [ArrialQty], [State], [Remark]) VALUES (1, N'PO0001', 1, N'Part0001', 100.0000, 0.0000, 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_PO] OFF
/****** Object:  Table [dbo].[TB_OUT]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_OUT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[FromLocCode] [nvarchar](50) NOT NULL,
	[BillQty] [money] NULL,
	[OutQty] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Amount] [money] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[WorklineCode] [nvarchar](50) NULL,
	[EqptCode] [nvarchar](50) NULL,
	[AskUser] [nvarchar](50) NULL,
	[AskTime] [datetime] NULL,
	[ConfirmUser] [nvarchar](50) NULL,
	[ConfirmTime] [datetime] NULL,
	[TakeType] [int] NOT NULL,
	[TakeUser] [nvarchar](50) NOT NULL,
	[TakeTime] [datetime] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_OUT] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'叫料库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'FromLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实发数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'OutQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'Remark'
GO
SET IDENTITY_INSERT [dbo].[TB_OUT] ON
INSERT [dbo].[TB_OUT] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [BillQty], [OutQty], [UnitPrice], [Amount], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [TakeType], [TakeUser], [TakeTime], [State], [Remark]) VALUES (1, N'MD-20161209-0002', N'LJ001', N'16101001', N'KW001', NULL, 1.0000, 2.5000, 2.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'zhangs', CAST(0x0000A6D700EC448E AS DateTime), 0, NULL)
INSERT [dbo].[TB_OUT] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [BillQty], [OutQty], [UnitPrice], [Amount], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [TakeType], [TakeUser], [TakeTime], [State], [Remark]) VALUES (2, N'MD-20161209-0003', N'LJ001', N'16101001', N'KW001', NULL, 2.0000, 2.5000, 5.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'zss', CAST(0x0000A6D700ED0375 AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_OUT] OFF
/****** Object:  Table [dbo].[TB_OTHER_OUT]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_OTHER_OUT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](20) NOT NULL,
	[FromLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NULL,
	[Amount] [money] NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_OTHER_OUT] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'FromLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'Remark'
GO
SET IDENTITY_INSERT [dbo].[TB_OTHER_OUT] ON
INSERT [dbo].[TB_OTHER_OUT] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [Qty], [UnitPrice], [Amount], [Remark]) VALUES (1, N'OI-20161209-0008', N'LJ001', N'16101001', N'KW001', 3.0000, 2.5000, 7.5000, NULL)
SET IDENTITY_INSERT [dbo].[TB_OTHER_OUT] OFF
/****** Object:  Table [dbo].[TB_OTHER_IN]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_OTHER_IN](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](20) NOT NULL,
	[ToLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[ProduceDate] [datetime] NULL,
	[UnitPrice] [money] NULL,
	[Amount] [money] NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK73_4] PRIMARY KEY NONCLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'ToLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其它出入库明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN'
GO
SET IDENTITY_INSERT [dbo].[TB_OTHER_IN] ON
INSERT [dbo].[TB_OTHER_IN] ([UID], [BillNum], [PartCode], [Batch], [ToLocCode], [Qty], [ProduceDate], [UnitPrice], [Amount], [Remark]) VALUES (1, N'OI-20161209-0002', N'LJ001', N'16101002', N'KW001', 11.0000, CAST(0x0000A69B00000000 AS DateTime), 2.3000, 25.3000, NULL)
SET IDENTITY_INSERT [dbo].[TB_OTHER_IN] OFF
/****** Object:  Table [dbo].[TB_INVENTORY_LOC]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_INVENTORY_LOC](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[LocCode] [nvarchar](50) NOT NULL,
	[OperName] [nvarchar](50) NULL,
	[BillTime] [datetime] NOT NULL,
	[CheckBeginTime] [nvarchar](50) NULL,
	[CheckEndTime] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TB_CHECK] PRIMARY KEY CLUSTERED 
(
	[BillNum] ASC,
	[LocCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'CheckBeginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初盘结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'CheckEndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态 0:新建 1:已初盘 2:已重盘 3:已生成接口 -1:已取消' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'Remark'
GO
SET IDENTITY_INSERT [dbo].[TB_INVENTORY_LOC] ON
INSERT [dbo].[TB_INVENTORY_LOC] ([UID], [BillNum], [LocCode], [OperName], [BillTime], [CheckBeginTime], [CheckEndTime], [State], [Remark]) VALUES (1, N'IV-20161210-0002', N'KW001', NULL, CAST(0x0000A6D800A9A3A2 AS DateTime), NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_INVENTORY_LOC] OFF
/****** Object:  Table [dbo].[TB_INVENTORY_DETAIL]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_INVENTORY_DETAIL](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[CheckLocCode] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[BookQty] [money] NOT NULL,
	[CheckQty] [money] NULL,
	[CheckTime] [datetime] NULL,
	[OperName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_CHECK_DETAIL] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账面数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'CheckQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'CheckTime'
GO
SET IDENTITY_INSERT [dbo].[TB_INVENTORY_DETAIL] ON
INSERT [dbo].[TB_INVENTORY_DETAIL] ([UID], [BillNum], [CheckLocCode], [PartCode], [Batch], [BookQty], [CheckQty], [CheckTime], [OperName]) VALUES (2, N'IV-20161210-0002', N'KW001', N'LJ001', N'16101001', 18.0000, 20.0000, CAST(0x0000A6D800A9A5B0 AS DateTime), N'')
INSERT [dbo].[TB_INVENTORY_DETAIL] ([UID], [BillNum], [CheckLocCode], [PartCode], [Batch], [BookQty], [CheckQty], [CheckTime], [OperName]) VALUES (3, N'IV-20161210-0002', N'KW001', N'LJ001', N'16101002', 11.0000, 10.0000, CAST(0x0000A6D800A9A5B0 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[TB_INVENTORY_DETAIL] OFF
/****** Object:  Table [dbo].[TB_IN]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_IN](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PoBillNum] [nvarchar](50) NOT NULL,
	[PoLineNum] [int] NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](20) NOT NULL,
	[ToLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[ProduceDate] [datetime] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_IN] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'ToLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'ProduceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原料入库明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN'
GO
SET IDENTITY_INSERT [dbo].[TB_IN] ON
INSERT [dbo].[TB_IN] ([UID], [BillNum], [PoBillNum], [PoLineNum], [PartCode], [Batch], [ToLocCode], [Qty], [UnitPrice], [ProduceDate], [State], [Remark]) VALUES (3, N'MR0001', N'PO0001', 1, N'Part0001', N'161212', N'KW001', 100.0000, 12.0000, CAST(0x0000A6D400B5998E AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_IN] OFF
/****** Object:  Table [dbo].[TB_BILL]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_BILL](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[SourceBillNum] [nvarchar](50) NULL,
	[BillType] [int] NOT NULL,
	[SubBillType] [int] NOT NULL,
	[BillTime] [datetime] NOT NULL,
	[StartTime] [nvarchar](50) NULL,
	[FinishTime] [nvarchar](50) NULL,
	[OperName] [nvarchar](50) NOT NULL,
	[SplyId] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_TB_BILL] PRIMARY KEY CLUSTERED 
(
	[BillNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'SourceBillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'SubBillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'BillTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'FinishTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'OperName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0：新建 1：执行中 2：完成 -1：作废）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'State'
GO
SET IDENTITY_INSERT [dbo].[TB_BILL] ON
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (3, N'ASK0001', NULL, 104, 0, CAST(0x0000A6D400EE6FD7 AS DateTime), NULL, NULL, N'张三SSS', NULL, 0, N'123123')
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (23, N'IV-20161210-0002', NULL, 305, 0, CAST(0x0000A6D800A9A633 AS DateTime), NULL, N'2016-12-10 11:29:42', N'zhangs', NULL, 3, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (4, N'MA-20161206-0001', NULL, 104, 0, CAST(0x0000A6D4011B9778 AS DateTime), NULL, NULL, N'123', NULL, 0, N'123')
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (5, N'MA-20161209-0001', NULL, 104, 0, CAST(0x0000A6D700AD7119 AS DateTime), NULL, NULL, N'张三', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (6, N'MD-20161209-0002', NULL, 103, 30105, CAST(0x0000A6D700EC54E0 AS DateTime), NULL, N'2016-12-09 15:29:33', N'zhangsan', NULL, 3, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (7, N'MD-20161209-0003', NULL, 103, 30106, CAST(0x0000A6D700ED0EF3 AS DateTime), NULL, N'2016-12-09 15:29:10', N'zs', NULL, 3, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (2, N'MR0001', NULL, 101, 10101, CAST(0x0000A6D400B48196 AS DateTime), NULL, NULL, N'张三', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (13, N'OI-20161209-0002', NULL, 301, 30111, CAST(0x0000A6D7014683A8 AS DateTime), NULL, NULL, N'zhangs', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (22, N'OI-20161209-0008', NULL, 301, 30101, CAST(0x0000A6D70152F7D8 AS DateTime), NULL, NULL, N'zhangs', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (1, N'PO0001', NULL, 702, 0, CAST(0x0000A6D4009CFBAD AS DateTime), NULL, NULL, N'张三', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (12, N'SM-20161209-0009', NULL, 302, 0, CAST(0x0000A6D70136AB06 AS DateTime), NULL, NULL, N'zhangs', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (8, N'SR-20161209-0002', N'MD-20161209-0003', 107, 30114, CAST(0x0000A6D70103284E AS DateTime), NULL, NULL, N'zs', NULL, 0, N'')
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (9, N'SR-20161209-0004', N'MD-20161209-0003', 107, 30114, CAST(0x0000A6D70104853D AS DateTime), NULL, NULL, N'zs', NULL, 0, N'')
SET IDENTITY_INSERT [dbo].[TB_BILL] OFF
/****** Object:  Table [dbo].[TB_ASK]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ASK](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[DeptCode] [nvarchar](50) NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[WorklineCode] [nvarchar](50) NULL,
	[EqptCode] [nvarchar](50) NULL,
	[AskUser] [nvarchar](50) NOT NULL,
	[AskTime] [datetime] NOT NULL,
	[ConfirmUser] [nvarchar](50) NULL,
	[ConfirmTime] [datetime] NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[Batch] [nvarchar](50) NULL,
	[TakeType] [int] NULL,
	[TakeUser] [nvarchar](50) NULL,
	[TakeTime] [datetime] NULL,
	[UintPrice] [money] NULL,
	[Amount] [money] NULL,
 CONSTRAINT [PK_TB_ASK] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'叫料单明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK'
GO
SET IDENTITY_INSERT [dbo].[TB_ASK] ON
INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (1, N'ASK0001', N'Part0001', 10.0000, N'001', N'PRO001', N'Line001', N'LJ001', N'张三', CAST(0x0000A6D400EF3F37 AS DateTime), N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (13, N'ASK0001', N'Part0001', 11.0000, N'001', N'X261CC', N'Line001', N'LJ001', N'张三', CAST(0x0000A6D400EF3EE0 AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (14, N'MA-20161206-0001', N'11', 1.0000, N'11', N'11', N'11', N'11', N'11', CAST(0x0000A6DA00000000 AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (15, N'MA-20161209-0001', N'LJ001', 12.0000, N'001', N'X261CC', N'Line001', N'LJ001', N'张三', CAST(0x0000A6D700AD5890 AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (16, N'MA-20161209-0001', N'LJ001', 11.0000, N'001', N'X261CC', N'Line001', N'EQPT', N'李四', CAST(0x0000A6D700AE8DF0 AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TB_ASK] OFF
/****** Object:  Table [dbo].[TA_WORKLINE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_WORKLINE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[WorklineCode] [nvarchar](50) NOT NULL,
	[WokrlineName] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK30_1] PRIMARY KEY NONCLUSTERED 
(
	[WorklineCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产线编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE', @level2type=N'COLUMN',@level2name=N'WorklineCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产线名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE', @level2type=N'COLUMN',@level2name=N'WokrlineName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产线表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE'
GO
SET IDENTITY_INSERT [dbo].[TA_WORKLINE] ON
INSERT [dbo].[TA_WORKLINE] ([UID], [WorklineCode], [WokrlineName], [State], [Remark]) VALUES (1, N'Line001', N'生产线001', 0, NULL)
SET IDENTITY_INSERT [dbo].[TA_WORKLINE] OFF
/****** Object:  Table [dbo].[TA_UNIT]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_UNIT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[Remak] [nvarchar](200) NULL,
 CONSTRAINT [PK17] PRIMARY KEY NONCLUSTERED 
(
	[Unit] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_UNIT', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_UNIT', @level2type=N'COLUMN',@level2name=N'Remak'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计量单位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_UNIT'
GO
/****** Object:  Table [dbo].[TA_SUPERLIER]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_SUPERLIER](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[SplyId] [nvarchar](50) NOT NULL,
	[SplyName] [nvarchar](50) NOT NULL,
	[ErpCode] [nvarchar](50) NULL,
	[Address] [nvarchar](120) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Contacter] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK23] PRIMARY KEY NONCLUSTERED 
(
	[SplyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'SplyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'SplyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Contacter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER'
GO
/****** Object:  Table [dbo].[TA_SUB_BILLTYPE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_SUB_BILLTYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[SubBillType] [int] NOT NULL,
	[BillType] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[TypeDesc] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_TA_SUB_BILLTYPE] PRIMARY KEY CLUSTERED 
(
	[SubBillType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUB_BILLTYPE', @level2type=N'COLUMN',@level2name=N'SubBillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUB_BILLTYPE', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUB_BILLTYPE', @level2type=N'COLUMN',@level2name=N'TypeDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUB_BILLTYPE', @level2type=N'COLUMN',@level2name=N'State'
GO
/****** Object:  Table [dbo].[TA_STORE_WHSE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_STORE_WHSE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[WhseCode] [nvarchar](50) NOT NULL,
	[WhseName] [nvarchar](50) NOT NULL,
	[WhseAddress] [nvarchar](200) NOT NULL,
	[WhseType] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK7] PRIMARY KEY NONCLUSTERED 
(
	[WhseCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'WhseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'WhseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'WhseAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'WhseType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE'
GO
SET IDENTITY_INSERT [dbo].[TA_STORE_WHSE] ON
INSERT [dbo].[TA_STORE_WHSE] ([UID], [WhseCode], [WhseName], [WhseAddress], [WhseType], [State], [Remark]) VALUES (1, N'CK001', N'备件库', N'123123', N'第三方仓库', 0, NULL)
SET IDENTITY_INSERT [dbo].[TA_STORE_WHSE] OFF
/****** Object:  Table [dbo].[TA_STORE_LOCATION]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_STORE_LOCATION](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[LocCode] [nvarchar](50) NOT NULL,
	[WhseCode] [nvarchar](50) NOT NULL,
	[GroupCode] [nvarchar](50) NULL,
	[LocType] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK10] PRIMARY KEY NONCLUSTERED 
(
	[LocCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'LocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'WhseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'GroupCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位类型(高位货架，地面库位)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'LocType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0:失效（包括冻结） 1:有效)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION'
GO
SET IDENTITY_INSERT [dbo].[TA_STORE_LOCATION] ON
INSERT [dbo].[TA_STORE_LOCATION] ([UID], [LocCode], [WhseCode], [GroupCode], [LocType], [State], [Remark]) VALUES (5, N'KW002', N'备件库', N'11', NULL, 0, NULL)
INSERT [dbo].[TA_STORE_LOCATION] ([UID], [LocCode], [WhseCode], [GroupCode], [LocType], [State], [Remark]) VALUES (4, N'KW001', N'CK001', N'11', NULL, 1, NULL)
INSERT [dbo].[TA_STORE_LOCATION] ([UID], [LocCode], [WhseCode], [GroupCode], [LocType], [State], [Remark]) VALUES (6, N'OTHER', N'OTHER', N'11', N'', 0, N'')
SET IDENTITY_INSERT [dbo].[TA_STORE_LOCATION] OFF
/****** Object:  Table [dbo].[TA_STORE_GROUP]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_STORE_GROUP](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[GroupCode] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[GroupType] [nvarchar](50) NOT NULL,
	[WhseCode] [nvarchar](50) NOT NULL,
	[AreaCode] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK10_1] PRIMARY KEY NONCLUSTERED 
(
	[GroupCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'GroupCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'GroupName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'GroupType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'WhseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库区编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP'
GO
/****** Object:  Table [dbo].[TA_PROJECT]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_PROJECT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectCode] [nvarchar](50) NOT NULL,
	[ProjectName] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TA_PROJECT] PRIMARY KEY CLUSTERED 
(
	[ProjectCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TA_PART]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_PART](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[ErpPartCode] [nvarchar](50) NULL,
	[PartDesc1] [nvarchar](max) NOT NULL,
	[PartDesc2] [nvarchar](max) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[BM] [nvarchar](50) NOT NULL,
	[PartType] [int] NOT NULL,
	[MaxQty] [money] NOT NULL,
	[MinQty] [money] NOT NULL,
	[SafeQty] [money] NOT NULL,
	[IdleDays] [int] NOT NULL,
	[SplyPackQty] [money] NOT NULL,
	[ValidityDays] [int] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_TA_PART] PRIMARY KEY CLUSTERED 
(
	[PartCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ERP零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'ErpPartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件描述1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'PartDesc1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件描述2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'PartDesc2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购件/制造件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'BM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'PartType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'MaxQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'MinQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'SafeQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商包装数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'SplyPackQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保质期（天）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'ValidityDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0：失效 1:有效）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART'
GO
SET IDENTITY_INSERT [dbo].[TA_PART] ON
INSERT [dbo].[TA_PART] ([UID], [PartCode], [ErpPartCode], [PartDesc1], [PartDesc2], [Unit], [BM], [PartType], [MaxQty], [MinQty], [SafeQty], [IdleDays], [SplyPackQty], [ValidityDays], [State], [Remark], [Picture]) VALUES (1, N'LJ001', N'LJ001', N'零件描述1', N'零件描述2', N'个', N'BM', 0, 50.0000, 20.0000, 30.0000, 0, 0.0000, 200, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TA_PART] OFF
/****** Object:  Table [dbo].[TA_EQUIPMENT]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_EQUIPMENT](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[EqptCode] [nvarchar](50) NOT NULL,
	[EqptName] [nvarchar](50) NOT NULL,
	[EqptType] [nvarchar](50) NOT NULL,
	[EqptModel] [nvarchar](50) NULL,
	[EqptLocation] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[EqptManager] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TS_RFID] PRIMARY KEY CLUSTERED 
(
	[EqptCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TA_DEPT]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_DEPT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
	[DeptName] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TA_DEPT] PRIMARY KEY CLUSTERED 
(
	[DeptCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TA_CONFIG]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_CONFIG](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[ParamName] [nvarchar](50) NOT NULL,
	[ParamValue] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_SYS_CONFIG] PRIMARY KEY CLUSTERED 
(
	[ParamName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG', @level2type=N'COLUMN',@level2name=N'ParamName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG', @level2type=N'COLUMN',@level2name=N'ParamValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG'
GO
/****** Object:  Table [dbo].[TA_BILLTYPE]    Script Date: 12/10/2016 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_BILLTYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillType] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[TypeDesc] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Prefix] [nvarchar](50) NOT NULL,
	[BillNumRule] [nvarchar](500) NOT NULL,
	[LastNumber] [int] NOT NULL,
	[LastBillNum] [nvarchar](50) NULL,
	[LastBillTime] [datetime] NOT NULL,
	[PrintTemplateFileName] [nvarchar](500) NULL,
	[ImportTemplateFileName] [nvarchar](500) NULL,
 CONSTRAINT [PK_TS_BILLTYPE] PRIMARY KEY CLUSTERED 
(
	[BillType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'TypeDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'前缀' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'Prefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号规则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'BillNumRule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最终序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'LastNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最终单据编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'LastBillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最终单据时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'LastBillTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印模板文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'PrintTemplateFileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE'
GO
SET IDENTITY_INSERT [dbo].[TA_BILLTYPE] ON
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (1, 101, N'MaterialReceive', N'原料收货单', 1, N'MR', N'P|D:l|N:4', 2, N'MR-20161006-0001', CAST(0x0000A69700E70EF1 AS DateTime), N'MaterialReceive.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (2, 102, N'MaterialIn', N'原料入库单', 1, N'MI', N'P|D:l|N:4', 2, N'MI-20161006-0001', CAST(0x0000A69700EDA232 AS DateTime), N'MaterialIn.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (28, 103, N'MaterialDeliver', N'备件出库', 1, N'MD', N'P|D:l|N:4', 4, N'MD-20161209-0003', CAST(0x0000A6D700ED0EF1 AS DateTime), N'', NULL)
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (3, 104, N'MaterialAsk', N'原料叫料单', 1, N'MA', N'P|D:l|N:4', 2, N'MA-20161209-0001', CAST(0x0000A6D700AD7113 AS DateTime), N'MaterialAsk.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (29, 107, N'SpareReturn', N'备件领用归还', 1, N'SR', N'P|D:l|N:4', 5, N'SR-20161209-0004', CAST(0x0000A6D70104853A AS DateTime), N'MaterialAsk.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (4, 201, N'ProductReceive', N'成品收货单', 1, N'PR', N'P|D:l|N:4', 5, N'PR-20161006-0004', CAST(0x0000A69700EECFA2 AS DateTime), N'ProductReceive.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (5, 202, N'ProductIn', N'成品入库单', 1, N'PI', N'P|D:l|N:4', 2, N'PI-20161006-0001', CAST(0x0000A69700F030E9 AS DateTime), N'ProductIn.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (6, 204, N'DeliverPlan', N'发货计划单', 1, N'DP', N'P|D:l|N:4', 2, N'PD-20161006-0001', CAST(0x0000A69700F7E62C AS DateTime), N'DeliverPlan.grf', N'DeliverPlan.xlsx')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (7, 206, N'ProductSortedDeliver', N'成品顺序发货单', 1, N'PSD', N'P|D:l|N:4', 1, N'', CAST(0x0000A67A014E1C06 AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (8, 207, N'ProductSell', N'成品销售单', 1, N'PS', N'P|D:l|N:4', 3, N'PS-20161006-0002', CAST(0x0000A6970112548D AS DateTime), N'ProductSell.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (9, 301, N'OtherInOut', N'其它出入库单', 1, N'OI', N'P|D:l|N:4', 9, N'OI-20161209-0008', CAST(0x0000A6D70152F7D6 AS DateTime), N'OtherInOut.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (10, 302, N'StockMove', N'移库单', 1, N'SM', N'P|D:l|N:4', 10, N'SM-20161209-0009', CAST(0x0000A6D70136AB01 AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (11, 303, N'StockPack', N'打包单', 1, N'SP', N'P|D:l|N:4', 1, N'', CAST(0x0000A67A014E1C46 AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (12, 304, N'StockUnPack', N'拆包单', 1, N'SUP', N'P|D:l|N:4', 5, N'SUP-20161006-0004', CAST(0x0000A69701660287 AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (13, 305, N'Inventory', N'盘点单', 1, N'IV', N'P|D:l|N:4', 3, N'IV-20161210-0002', CAST(0x0000A6D800A9A630 AS DateTime), N'InventoryPlan.grf', N'InventoryPlan.xlsx')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (14, 306, N'BalanceCompare', N'结算比对报表', 1, N'BC', N'P|D:l|N:4', 3, N'BC-20160715-0002', CAST(0x0000A64401151F88 AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (15, 404, N'EqptLoad', N'托盘装载单', 1, N'EL', N'P|D:l|N:4', 1, N'', CAST(0x0000A67A014E1B58 AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (16, 501, N'VinReceive', N'Vin收货单', 1, N'VR', N'P|D:l|N:4', 12, N'VR-20160914-0011', CAST(0x0000A68101806FDE AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (17, 502, N'VinDeliver', N'Vin发货单', 1, N'VD', N'P|D:l|N:4', 8, N'VD-20160902-0007', CAST(0x0000A675015F2887 AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (18, 503, N'VinSell', N'VIN销售单', 1, N'VS', N'P|D:l|N:4', 1, N'', CAST(0x0000A67A014E1C6A AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (19, 601, N'Inspect', N'报验单', 1, N'IS', N'P|D:l|N:4', 2, N'IS-20161006-0001', CAST(0x0000A69700E70F34 AS DateTime), N'Inspect.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (20, 602, N'TraceBack', N'追溯单', 1, N'TB', N'P|D:l|N:4', 1, N'', CAST(0x0000A67A014E1C5F AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (21, 603, N'PickPlan', N'备料单', 1, N'PP', N'P|D:l|N:4', 9, N'PP-20161006-0008', CAST(0x0000A69700F8E4C3 AS DateTime), N'PickPlan.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (22, 604, N'PickFact', N'拣料单', 1, N'PF', N'P|D:l|N:4', 9, N'PF-20161006-0008', CAST(0x0000A6970107767A AS DateTime), N'PickFact.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (23, 605, N'ProducePlan', N'生产计划单', 1, N'PDP', N'P|D:l|N:4', 3, N'PDP-20161006-0002', CAST(0x0000A69700C9E931 AS DateTime), N'ProducePlan.grf', N'ProducePlan.xlsx')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (24, 606, N'OutsourcePlan', N'委外计划单', 1, N'OP', N'P|D:l|N:4', 1, N'', CAST(0x0000A69500C0E382 AS DateTime), N'OutsourcePlan.grf', N'OutsourcePlan.xlsx')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (25, 702, N'PuchaseOrder', N'采购订单', 1, N'PO', N'P|D:l|N:4', 1, N'', CAST(0x0000A67A014E1C13 AS DateTime), N'Po.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (26, 703, N'AsnOrder', N'供应商发货单', 1, N'ASN', N'P|D:l|N:4', 1, N'', CAST(0x0000A67A014E1C2E AS DateTime), N'Asn.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (27, 704, N'SaleOrder', N'销售订单', 1, N'SO', N'P|D:l|N:4', 1, N'', CAST(0x0000A67A014E1C21 AS DateTime), N'So.grf', N'')
SET IDENTITY_INSERT [dbo].[TA_BILLTYPE] OFF
/****** Object:  View [dbo].[VS_STOCK_AGE]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_STOCK_AGE]
AS
SELECT  dbo.TS_STOCK_DETAIL.LocCode, dbo.TS_STOCK_DETAIL.PartCode, dbo.TS_STOCK_DETAIL.Batch, 
                   dbo.TS_STOCK_DETAIL.Qty, dbo.TS_STOCK_DETAIL.UnitPrice, dbo.TS_STOCK_DETAIL.ProduceDate, 
                   dbo.TS_STOCK_DETAIL.OverdueDate, dbo.TS_STOCK_DETAIL.ReceiveDate, dbo.TA_PART.PartDesc1, 
                   dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, dbo.TA_PART.BM, dbo.TA_PART.PartType
FROM      dbo.TS_STOCK_DETAIL LEFT OUTER JOIN
                   dbo.TA_PART ON dbo.TS_STOCK_DETAIL.PartCode = dbo.TA_PART.PartCode
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
         Begin Table = "TS_STOCK_DETAIL"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 422
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TA_PART"
            Begin Extent = 
               Top = 7
               Left = 288
               Bottom = 425
               Right = 475
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_STOCK_AGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_STOCK_AGE'
GO
/****** Object:  View [dbo].[VS_STOCK]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_STOCK]
AS
SELECT  dbo.TS_STOCK_DETAIL.LocCode, dbo.TS_STOCK_DETAIL.PartCode, dbo.TS_STOCK_DETAIL.Qty, 
                   dbo.TS_STOCK_DETAIL.UnitPrice, SUM(dbo.TS_STOCK_DETAIL.Qty * dbo.TS_STOCK_DETAIL.UnitPrice) AS Amount, 
                   dbo.TA_PART.PartDesc1, dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, dbo.TA_PART.BM, dbo.TA_PART.PartType, 
                   dbo.TA_PART.MaxQty, dbo.TA_PART.MinQty, dbo.TA_PART.SafeQty
FROM      dbo.TS_STOCK_DETAIL LEFT OUTER JOIN
                   dbo.TA_PART ON dbo.TS_STOCK_DETAIL.PartCode = dbo.TA_PART.PartCode
GROUP BY dbo.TS_STOCK_DETAIL.LocCode, dbo.TS_STOCK_DETAIL.PartCode, dbo.TS_STOCK_DETAIL.Qty, 
                   dbo.TS_STOCK_DETAIL.UnitPrice, dbo.TA_PART.PartDesc1, dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, 
                   dbo.TA_PART.BM, dbo.TA_PART.PartType, dbo.TA_PART.MaxQty, dbo.TA_PART.MinQty, dbo.TA_PART.SafeQty
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
         Begin Table = "TS_STOCK_DETAIL"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 378
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TA_PART"
            Begin Extent = 
               Top = 7
               Left = 288
               Bottom = 376
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 4
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
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_STOCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_STOCK'
GO
/****** Object:  View [dbo].[VS_OVERDUE_STOCK]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_OVERDUE_STOCK]
AS
SELECT  dbo.TS_STOCK_DETAIL.PartCode, SUM(dbo.TS_STOCK_DETAIL.Qty) AS TotalQty, dbo.TA_PART.PartDesc1, 
                   dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, dbo.TA_PART.BM, dbo.TA_PART.PartType, dbo.TA_PART.ValidityDays, 
                   dbo.TS_STOCK_DETAIL.ReceiveDate
FROM      dbo.TS_STOCK_DETAIL LEFT OUTER JOIN
                   dbo.TA_PART ON dbo.TS_STOCK_DETAIL.PartCode = dbo.TA_PART.PartCode
GROUP BY dbo.TS_STOCK_DETAIL.PartCode, dbo.TA_PART.PartDesc1, dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, 
                   dbo.TA_PART.BM, dbo.TA_PART.PartType, dbo.TA_PART.ValidityDays, dbo.TS_STOCK_DETAIL.ReceiveDate
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
         Begin Table = "TS_STOCK_DETAIL"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 401
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TA_PART"
            Begin Extent = 
               Top = 7
               Left = 288
               Bottom = 428
               Right = 475
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 1416
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_OVERDUE_STOCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_OVERDUE_STOCK'
GO
/****** Object:  View [dbo].[VS_IDLE_STOCK_DETAIL]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_IDLE_STOCK_DETAIL]
AS
SELECT  dbo.TS_STOCK_DETAIL.LocCode, dbo.TS_STOCK_DETAIL.PartCode, dbo.TS_STOCK_DETAIL.Batch, 
                   dbo.TS_STOCK_DETAIL.Qty, dbo.TS_STOCK_DETAIL.UnitPrice, dbo.TA_PART.PartDesc1, dbo.TA_PART.PartDesc2, 
                   dbo.TA_PART.Unit, dbo.TA_PART.BM, dbo.TA_PART.PartType, dbo.TA_PART.IdleDays, 
                   dbo.TS_STOCK_DETAIL.ReceiveDate, dbo.TS_STOCK_DETAIL.ProduceDate
FROM      dbo.TS_STOCK_DETAIL LEFT OUTER JOIN
                   dbo.TA_PART ON dbo.TS_STOCK_DETAIL.PartCode = dbo.TA_PART.PartCode
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
         Begin Table = "TS_STOCK_DETAIL"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 393
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TA_PART"
            Begin Extent = 
               Top = 7
               Left = 288
               Bottom = 424
               Right = 475
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_IDLE_STOCK_DETAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_IDLE_STOCK_DETAIL'
GO
/****** Object:  View [dbo].[VIEW_STOCK_DETAIL_AGE]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_STOCK_DETAIL_AGE]
AS
SELECT     UID, LocCode AS 库位, PartCode AS 零件号, Batch AS 批次, State AS 状态, Qty AS 数量, UnitPrice AS 单价, UnitPrice * Qty AS 金额, ProduceDate AS 生产日期, 
                      ReceiveDate AS 入库时间, DATEDIFF(day, ReceiveDate, GETDATE()) AS 在库天数
FROM         dbo.TS_STOCK_DETAIL
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
         Begin Table = "TS_STOCK_DETAIL"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 192
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
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_STOCK_DETAIL_AGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_STOCK_DETAIL_AGE'
GO
/****** Object:  View [dbo].[VIEW_STOCK_DETAIL]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VIEW_STOCK_DETAIL]
as
SELECT     UID,  LocCode AS 库位, PartCode AS 零件号,  Batch AS 批次,  
                       State AS 状态, Qty AS 数量, 
                       UnitPrice as 单价,
                       (UnitPrice * Qty) AS 金额, ProduceDate AS 生产日期, 
                       OverdueDate AS 失效日期, UpdateTime AS 更新时间, 
                      UpdateQty AS 更新数量
FROM         dbo.TS_STOCK_DETAIL
GO
/****** Object:  View [dbo].[VIEW_INVENTORY_DETAIL]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VIEW_INVENTORY_DETAIL]
as
SELECT     UID, BillNum AS 单据号, CheckLocCode AS 盘点库位, 
PartCode AS 零件号, Batch AS 批次, 
                      BookQty AS 账面数, CheckQty AS 盘点数, 
                      (BookQty - CheckQty) AS 差异数, CheckTime AS 盘点时间, 
                      OperName AS 操作员
FROM         dbo.TB_INVENTORY_DETAIL
GO
/****** Object:  View [dbo].[VIEW_CalSafeQty]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CalSafeQty]
AS
SELECT     MinQty AS 最低库存, MaxQty AS 最高库存, PartCode AS 零件号, PartDesc2 AS 零件描述,
                          (SELECT     SUM(Qty) AS Expr1
                            FROM          dbo.TS_STOCK_DETAIL
                            WHERE      (PartCode = part.PartCode)) AS 在库数量
FROM         dbo.TA_PART AS part
WHERE     (State = 1) AND (MinQty >
                          (SELECT     ISNULL(SUM(Qty), 0) AS Expr1
                            FROM          dbo.TS_STOCK_DETAIL AS TS_STOCK_DETAIL_2
                            WHERE      (PartCode = part.PartCode) AND (State = 1))) OR
                      (MaxQty <
                          (SELECT     ISNULL(SUM(Qty), 0) AS Expr1
                            FROM          dbo.TS_STOCK_DETAIL AS TS_STOCK_DETAIL_1
                            WHERE      (PartCode = part.PartCode) AND (State = 1)))
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
         Begin Table = "part"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 188
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CalSafeQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CalSafeQty'
GO
/****** Object:  View [dbo].[VIEW_CalOverdue_DAYS]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VIEW_CalOverdue_DAYS]
as
SELECT     DATEDIFF(day, GETDATE(), OverdueDate) AS 安全天数,  LocCode AS 所在库位, PartCode AS 零件号,
batch as 批次,
                 Qty AS 数量, ProduceDate AS 生产日期, OverdueDate AS 过期日期
FROM         dbo.TS_STOCK_DETAIL AS sd
WHERE     (DATEDIFF(day, GETDATE(), OverdueDate) <= 30)
GO
/****** Object:  View [dbo].[VIEW_CalInaction_DAYS]    Script Date: 12/10/2016 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CalInaction_DAYS]
AS
SELECT     DATEDIFF(day, UpdateTime, GETDATE()) AS 呆滞天数, LocCode AS 所在库位, PartCode AS 零件号, Batch AS 批次, Qty AS 数量, ProduceDate AS 生产日期, 
                      OverdueDate AS 过期日期
FROM         dbo.TS_STOCK_DETAIL AS sd
WHERE     (DATEDIFF(day, UpdateTime, GETDATE()) >= 365)
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
         Begin Table = "sd"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 192
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CalInaction_DAYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CalInaction_DAYS'
GO
/****** Object:  Default [DF_TS_STOCK_DETAIL_Batch]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_Batch]  DEFAULT (N'‘’‘’') FOR [Batch]
GO
/****** Object:  Default [DF_TS_STOCK_DETAIL_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_TS_UNIQUE_STOCK_Qty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_UNIQUE_STOCK_Qty]  DEFAULT ((1)) FOR [Qty]
GO
/****** Object:  Default [DF_TS_STOCK_DETAIL_ProduceDate]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_ProduceDate]  DEFAULT ('1-1-1') FOR [ProduceDate]
GO
/****** Object:  Default [DF_TS_STOCK_DETAIL_OverdueDate]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_OverdueDate]  DEFAULT ('1-1-1') FOR [OverdueDate]
GO
/****** Object:  Default [DF_TS_STOCK_DETAIL_ReceiveDate]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_ReceiveDate]  DEFAULT (getdate()) FOR [ReceiveDate]
GO
/****** Object:  Default [DF_TS_STOCK_DETAIL_UpdateQty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_UpdateQty]  DEFAULT ((0)) FOR [UpdateQty]
GO
/****** Object:  Default [DF_TS_STOCK_DETAIL_UpdateTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_TL_STOCKMOVE_LogTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_TRANSACTION] ADD  CONSTRAINT [DF_TL_STOCKMOVE_LogTime]  DEFAULT (getdate()) FOR [LogTime]
GO
/****** Object:  Default [DF_TL_TRANSACTION_SubBillType]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_TRANSACTION] ADD  CONSTRAINT [DF_TL_TRANSACTION_SubBillType]  DEFAULT ((0)) FOR [SubBillType]
GO
/****** Object:  Default [DF_TL_STOCKMOVE_Qty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_TRANSACTION] ADD  CONSTRAINT [DF_TL_STOCKMOVE_Qty]  DEFAULT ((0)) FOR [Qty]
GO
/****** Object:  Default [DF_TL_LOG_LogTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_OPER] ADD  CONSTRAINT [DF_TL_LOG_LogTime]  DEFAULT (getdate()) FOR [LogTime]
GO
/****** Object:  Default [DF_TL_LOG_LogSite]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_OPER] ADD  CONSTRAINT [DF_TL_LOG_LogSite]  DEFAULT ((0)) FOR [LogSite]
GO
/****** Object:  Default [DF_TS_NOTIFY_NotifyTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_NOTIFY] ADD  CONSTRAINT [DF_TS_NOTIFY_NotifyTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_TS_NOTIFY_CloseTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_NOTIFY] ADD  CONSTRAINT [DF_TS_NOTIFY_CloseTime]  DEFAULT ('1-1-1') FOR [CloseTime]
GO
/****** Object:  Default [DF_TS_NOTIFY_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_NOTIFY] ADD  CONSTRAINT [DF_TS_NOTIFY_State]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_TS_INTERFACE_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_INTERFACE] ADD  CONSTRAINT [DF_TS_INTERFACE_State]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_TS_INTERFACE_CreateTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_INTERFACE] ADD  CONSTRAINT [DF_TS_INTERFACE_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_TS_INTERFACE_ProcessTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_INTERFACE] ADD  CONSTRAINT [DF_TS_INTERFACE_ProcessTime]  DEFAULT ('1-1-1') FOR [ProcessTime]
GO
/****** Object:  Default [DF_TL_BILL_LogTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_BILL] ADD  CONSTRAINT [DF_TL_BILL_LogTime]  DEFAULT (getdate()) FOR [LogTime]
GO
/****** Object:  Default [DF_Table_1_OldData]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_BILL] ADD  CONSTRAINT [DF_Table_1_OldData]  DEFAULT ((0)) FOR [BillNum]
GO
/****** Object:  Default [DF_TL_BASEDATA_LogTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_BASEDATA] ADD  CONSTRAINT [DF_TL_BASEDATA_LogTime]  DEFAULT (getdate()) FOR [LogTime]
GO
/****** Object:  Default [DF_Table_1_LogSite]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_BASEDATA] ADD  CONSTRAINT [DF_Table_1_LogSite]  DEFAULT ('') FOR [OldValue]
GO
/****** Object:  Default [DF_TL_BASEDATA_NewValue]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TL_BASEDATA] ADD  CONSTRAINT [DF_TL_BASEDATA_NewValue]  DEFAULT ('') FOR [NewValue]
GO
/****** Object:  Default [DF_TB_STOCK_MOVE_Batch]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_STOCK_MOVE] ADD  CONSTRAINT [DF_TB_STOCK_MOVE_Batch]  DEFAULT ((0)) FOR [Batch]
GO
/****** Object:  Default [DF_TB_STOCK_MOVE_Qty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_STOCK_MOVE] ADD  CONSTRAINT [DF_TB_STOCK_MOVE_Qty]  DEFAULT ((0)) FOR [Qty]
GO
/****** Object:  Default [DF_TF_PO_DETAIL_Line]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF_TF_PO_DETAIL_Line]  DEFAULT ((1)) FOR [Line]
GO
/****** Object:  Default [DF__KF_Purchas__nQty__5BAD9CC8]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF__KF_Purchas__nQty__5BAD9CC8]  DEFAULT ((0)) FOR [BillQty]
GO
/****** Object:  Default [DF__KF_Purcha__FActu__5CA1C101]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF__KF_Purcha__FActu__5CA1C101]  DEFAULT ((0)) FOR [ArrialQty]
GO
/****** Object:  Default [DF_TF_PO_DETAIL_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF_TF_PO_DETAIL_State]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_TB_PICK_FACT_ActualQty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_OUT] ADD  CONSTRAINT [DF_TB_PICK_FACT_ActualQty]  DEFAULT ((0)) FOR [OutQty]
GO
/****** Object:  Default [DF_TB_PICK_FACT_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_OUT] ADD  CONSTRAINT [DF_TB_PICK_FACT_State]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_TB_OTHER_OUT_Batch]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_OTHER_OUT] ADD  CONSTRAINT [DF_TB_OTHER_OUT_Batch]  DEFAULT ((0)) FOR [Batch]
GO
/****** Object:  Default [DF_TB_OTHER_OUT_Qty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_OTHER_OUT] ADD  CONSTRAINT [DF_TB_OTHER_OUT_Qty]  DEFAULT ((0)) FOR [Qty]
GO
/****** Object:  Default [DF__KF_OtherI__cBatc__662B2B3B]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_OTHER_IN] ADD  CONSTRAINT [DF__KF_OtherI__cBatc__662B2B3B]  DEFAULT ((0)) FOR [Batch]
GO
/****** Object:  Default [DF__KF_OtherI__nActu__671F4F74]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_OTHER_IN] ADD  CONSTRAINT [DF__KF_OtherI__nActu__671F4F74]  DEFAULT ((0)) FOR [Qty]
GO
/****** Object:  Default [DF_Table_1_nState]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_INVENTORY_LOC] ADD  CONSTRAINT [DF_Table_1_nState]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_Table_1_dBookQty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_INVENTORY_DETAIL] ADD  CONSTRAINT [DF_Table_1_dBookQty]  DEFAULT ((0)) FOR [BookQty]
GO
/****** Object:  Default [DF_TB_CHECK_DETAIL_CheckQty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_INVENTORY_DETAIL] ADD  CONSTRAINT [DF_TB_CHECK_DETAIL_CheckQty]  DEFAULT ((0)) FOR [CheckQty]
GO
/****** Object:  Default [DF_TB_IN_PoLineNum]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_IN] ADD  CONSTRAINT [DF_TB_IN_PoLineNum]  DEFAULT ((0)) FOR [PoLineNum]
GO
/****** Object:  Default [DF_TB_MATERIAL_RECEIVE_Batch]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_IN] ADD  CONSTRAINT [DF_TB_MATERIAL_RECEIVE_Batch]  DEFAULT ((0)) FOR [Batch]
GO
/****** Object:  Default [DF_TB_MATERIAL_RECEIVE_Qty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_IN] ADD  CONSTRAINT [DF_TB_MATERIAL_RECEIVE_Qty]  DEFAULT ((0)) FOR [Qty]
GO
/****** Object:  Default [DF_TB_MATERIAL_RECEIVE_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_IN] ADD  CONSTRAINT [DF_TB_MATERIAL_RECEIVE_State]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_TB_BILL_SubBillType]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_BILL] ADD  CONSTRAINT [DF_TB_BILL_SubBillType]  DEFAULT ((0)) FOR [SubBillType]
GO
/****** Object:  Default [DF_Table_1_SendTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_BILL] ADD  CONSTRAINT [DF_Table_1_SendTime]  DEFAULT (getdate()) FOR [BillTime]
GO
/****** Object:  Default [DF_TB_BILL_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_BILL] ADD  CONSTRAINT [DF_TB_BILL_State]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__SC_Materia__nQty__6AEFE058]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_ASK] ADD  CONSTRAINT [DF__SC_Materia__nQty__6AEFE058]  DEFAULT ((0)) FOR [Qty]
GO
/****** Object:  Default [DF_TB_MATERIAL_ASK_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TB_ASK] ADD  CONSTRAINT [DF_TB_MATERIAL_ASK_State]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_TA_WORKLINE_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_WORKLINE] ADD  CONSTRAINT [DF_TA_WORKLINE_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF__t_Supplie__state__56E8E7AB]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_SUPERLIER] ADD  CONSTRAINT [DF__t_Supplie__state__56E8E7AB]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_TA_SUB_BILLTYPE_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_SUB_BILLTYPE] ADD  CONSTRAINT [DF_TA_SUB_BILLTYPE_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF__t_StoreIn__state__58D1301D]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_STORE_WHSE] ADD  CONSTRAINT [DF__t_StoreIn__state__58D1301D]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_TA_STORE_LOCATION_GroupCode]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [DF_TA_STORE_LOCATION_GroupCode]  DEFAULT ('') FOR [GroupCode]
GO
/****** Object:  Default [DF_TA_STORE_LOCATION_LocType]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [DF_TA_STORE_LOCATION_LocType]  DEFAULT ('') FOR [LocType]
GO
/****** Object:  Default [DF_TA_STORE_LOCATION_nState]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [DF_TA_STORE_LOCATION_nState]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_TA_STORE_LOCATION_Remark]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [DF_TA_STORE_LOCATION_Remark]  DEFAULT ('') FOR [Remark]
GO
/****** Object:  Default [DF_TA_STORE_GROUP_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_STORE_GROUP] ADD  CONSTRAINT [DF_TA_STORE_GROUP_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_TA_PROJECT_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PROJECT] ADD  CONSTRAINT [DF_TA_PROJECT_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_TA_PART_ErpPartCode]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_ErpPartCode]  DEFAULT ('') FOR [ErpPartCode]
GO
/****** Object:  Default [DF_TA_PART_PartName2]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_PartName2]  DEFAULT ('''') FOR [PartDesc2]
GO
/****** Object:  Default [DF_TA_PART_Unit]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_Unit]  DEFAULT (N'EA') FOR [Unit]
GO
/****** Object:  Default [DF_TA_PART_PartType]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_PartType]  DEFAULT ('') FOR [PartType]
GO
/****** Object:  Default [DF_TA_PART_MaxQty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_MaxQty]  DEFAULT ((0)) FOR [MaxQty]
GO
/****** Object:  Default [DF_TA_PART_MinQty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_MinQty]  DEFAULT ((0)) FOR [MinQty]
GO
/****** Object:  Default [DF_TA_PART_SafeQty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_SafeQty]  DEFAULT ((0)) FOR [SafeQty]
GO
/****** Object:  Default [DF_TA_PART_IdleDays]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_IdleDays]  DEFAULT ((0)) FOR [IdleDays]
GO
/****** Object:  Default [DF_TA_PART_SupplierPackQty]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_SupplierPackQty]  DEFAULT ((1)) FOR [SplyPackQty]
GO
/****** Object:  Default [DF_TA_PART_ValidityDays]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_ValidityDays]  DEFAULT ((365)) FOR [ValidityDays]
GO
/****** Object:  Default [DF_TA_PART_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_TS_EQUIPMENT_LocCode]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_EQUIPMENT] ADD  CONSTRAINT [DF_TS_EQUIPMENT_LocCode]  DEFAULT ('') FOR [EqptLocation]
GO
/****** Object:  Default [DF_TA_DEPT_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_DEPT] ADD  CONSTRAINT [DF_TA_DEPT_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_SYS_CONFIG_State]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_CONFIG] ADD  CONSTRAINT [DF_SYS_CONFIG_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_Table_1_nState_1]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_Table_1_nState_1]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_Table_1_cBillNumRule]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_Table_1_cBillNumRule]  DEFAULT (N'P|D:l|N:4') FOR [BillNumRule]
GO
/****** Object:  Default [DF_Table_1_nLastNumber]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_Table_1_nLastNumber]  DEFAULT ((1)) FOR [LastNumber]
GO
/****** Object:  Default [DF_TA_BILLTYPE_LastBillNum]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_TA_BILLTYPE_LastBillNum]  DEFAULT ('') FOR [LastBillNum]
GO
/****** Object:  Default [DF_Table_1_tLastBillTime]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_Table_1_tLastBillTime]  DEFAULT (getdate()) FOR [LastBillTime]
GO
/****** Object:  Default [DF_TA_BILLTYPE_TemplateFileName]    Script Date: 12/10/2016 11:59:35 ******/
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_TA_BILLTYPE_TemplateFileName]  DEFAULT ('') FOR [PrintTemplateFileName]
GO
