USE [master]
GO
/****** Object:  Database [ChangKePower]    Script Date: 2016/10/20 10:31:36 ******/
CREATE DATABASE [ChangKePower] ON  PRIMARY 
( NAME = N'ChangKePower', FILENAME = N'c:\sqldata\ChangKePower.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ChangKePower_log', FILENAME = N'c:\sqldata\ChangKePower_log.ldf' , SIZE = 6272KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ChangKePower] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChangKePower].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChangKePower] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChangKePower] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChangKePower] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChangKePower] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChangKePower] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChangKePower] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChangKePower] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChangKePower] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChangKePower] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChangKePower] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChangKePower] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChangKePower] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChangKePower] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChangKePower] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChangKePower] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChangKePower] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChangKePower] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChangKePower] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChangKePower] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChangKePower] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChangKePower] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChangKePower] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChangKePower] SET RECOVERY FULL 
GO
ALTER DATABASE [ChangKePower] SET  MULTI_USER 
GO
ALTER DATABASE [ChangKePower] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChangKePower] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChangKePower', N'ON'
GO
USE [ChangKePower]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ChangKePower]
GO
/****** Object:  Table [dbo].[TA_MENU]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_MENU](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[PortalCode] [nvarchar](50) NOT NULL,
	[MenuCode] [nvarchar](50) NOT NULL,
	[ParentCode] [nvarchar](50) NOT NULL,
	[ControlType] [nvarchar](50) NOT NULL,
	[ControlName] [nvarchar](50) NOT NULL,
	[MenuText] [nvarchar](50) NOT NULL,
	[NameSpace] [nvarchar](200) NULL,
	[ClassName] [nvarchar](100) NULL,
	[Params] [nvarchar](100) NULL,
	[ImageName] [nvarchar](100) NULL,
	[Remark] [nvarchar](200) NULL,
	[X] [int] NOT NULL,
	[Y] [int] NOT NULL,
	[BackColor] [varchar](50) NULL,
 CONSTRAINT [PK_TA_Menu2] PRIMARY KEY CLUSTERED 
(
	[PortalCode] ASC,
	[MenuCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TL_BASEDATA]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_BUTTON]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_BUTTON](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[ButtonCode] [nvarchar](50) NOT NULL,
	[ButtonName] [nvarchar](50) NOT NULL,
	[ButtonType] [nvarchar](50) NOT NULL,
	[PotralCode] [nvarchar](50) NOT NULL,
	[MenuCode] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](50) NULL,
 CONSTRAINT [PK_TA_Button] PRIMARY KEY CLUSTERED 
(
	[ButtonCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_DEPT]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_DEPT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
	[DeptName] [nvarchar](50) NOT NULL,
	[ParentCode] [nvarchar](50) NOT NULL,
	[IsLeafNode] [bit] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TA_Dept] PRIMARY KEY CLUSTERED 
(
	[DeptCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_MENU]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_MENU](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[MenuCode] [nvarchar](50) NOT NULL,
	[ControlName] [nvarchar](50) NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[ParentCode] [nvarchar](50) NOT NULL,
	[PortalCode] [nvarchar](50) NOT NULL,
	[NameSpace] [nvarchar](50) NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TA_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_OPER_ROLE]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_OPER_ROLE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[OperCode] [nvarchar](50) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
	[IsBeloneTo] [bit] NOT NULL,
 CONSTRAINT [PK_TS_OperRole] PRIMARY KEY CLUSTERED 
(
	[OperCode] ASC,
	[RoleCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_OPERATOR]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_OPERATOR](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[OperCode] [nvarchar](50) NOT NULL,
	[OperName] [nvarchar](50) NOT NULL,
	[OperPassword] [nvarchar](200) NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TA_Operator] PRIMARY KEY CLUSTERED 
(
	[OperCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_PORTAL]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_PORTAL](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[PortalCode] [nvarchar](50) NOT NULL,
	[PortalName] [nvarchar](50) NOT NULL,
	[PortalType] [nvarchar](50) NOT NULL,
	[PortalUrl] [nvarchar](200) NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TA_Portal] PRIMARY KEY CLUSTERED 
(
	[PortalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_ROLE]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_ROLE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[PowerString] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_TA_Role] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_ROLE_NOTIFYTYPE]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_ROLE_NOTIFYTYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
	[PortalCode] [nvarchar](50) NOT NULL,
	[NotifyType] [int] NOT NULL,
	[IsVisible] [bit] NOT NULL,
 CONSTRAINT [PK_TS_ROLE_NOTIFY] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_ROLE_POWER]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_ROLE_POWER](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
	[MenuCode] [nvarchar](50) NOT NULL,
	[PortalCode] [nvarchar](50) NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[IsReadOnly] [bit] NOT NULL,
 CONSTRAINT [PK_TA_Power2] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[VS_OPER_ROLE]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_OPER_ROLE]
AS
SELECT   dbo.TS_OPER_ROLE.UID, dbo.TS_OPER_ROLE.OperCode, dbo.TS_OPER_ROLE.RoleCode, 
                dbo.TS_OPER_ROLE.IsBeloneTo, dbo.TS_ROLE.RoleName, dbo.TS_ROLE.Remark
FROM      dbo.TS_OPER_ROLE LEFT OUTER JOIN
                dbo.TS_ROLE ON dbo.TS_OPER_ROLE.RoleCode = dbo.TS_ROLE.RoleCode

GO
/****** Object:  View [dbo].[VS_POWER_MENU]    Script Date: 2016/10/20 10:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_POWER_MENU]
AS
SELECT  dbo.TS_ROLE_POWER.UID, dbo.TS_ROLE_POWER.RoleCode, dbo.TS_ROLE_POWER.MenuCode, 
                   dbo.TS_ROLE_POWER.PortalCode, dbo.TS_ROLE_POWER.IsVisible, dbo.TS_ROLE_POWER.IsReadOnly, 
                   dbo.TA_MENU.ParentCode, dbo.TA_MENU.ControlType, dbo.TA_MENU.ControlName, dbo.TA_MENU.MenuText, 
                   dbo.TA_MENU.NameSpace, dbo.TA_MENU.ClassName, dbo.TA_MENU.Params, dbo.TA_MENU.ImageName, 
                   dbo.TA_MENU.Remark, dbo.TA_MENU.X, dbo.TA_MENU.Y
FROM      dbo.TA_MENU INNER JOIN
                   dbo.TS_ROLE_POWER ON dbo.TA_MENU.MenuCode = dbo.TS_ROLE_POWER.MenuCode AND 
                   dbo.TA_MENU.PortalCode = dbo.TS_ROLE_POWER.PortalCode


GO
SET IDENTITY_INSERT [dbo].[TA_MENU] ON 

INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (1, N'WMSPC', N'A', N'WMSPC', N'Tab', N'TabA', N'系统', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (2, N'WMSPC', N'AB', N'A', N'Grp', N'GrpAB', N'系统查询', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (3, N'WMSPC', N'AB10', N'AB', N'Itm', N'ItmAB10', N'提示信息', N'ChangKeTec.Wms.WinForm.Manage', N'FormNotify', N'', N'Warning', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (4, N'WMSPC', N'AB20', N'AB', N'Itm', N'ItmAB20', N'未知客户零件', N'ChangKeTec.Wms.WinForm.Manage', N'FormUnknowPartCode', N'', N'GearQuestion', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (5, N'WMSPC', N'AB30', N'AB', N'Itm', N'ItmAB30', N'系统参数', N'ChangKeTec.Wms.WinForm.Manage', N'FormConfig', N'', N'Global', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (6, N'WMSPC', N'AB40', N'AB', N'Itm', N'ItmAB40', N'单据类型', N'ChangKeTec.Wms.WinForm.Manage', N'FormBillType', N'', N'App', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (7, N'WMSPC', N'AB50', N'AB', N'Itm', N'ItmAB50', N'账期', N'ChangKeTec.Wms.WinForm.Manage', N'FormPaymentDay', N'', N'Calender', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (8, N'WMSPC', N'B', N'WMSPC', N'Tab', N'TabB', N'基础数据', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (9, N'WMSPC', N'BA', N'B', N'Grp', N'GrpBA', N'仓库信息', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (10, N'WMSPC', N'BA10', N'BA', N'Itm', N'ItmBA10', N'仓库', N'ChangKeTec.Wms.WinForm.BaseData', N'FormStoreWhse', N'', N'House', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (11, N'WMSPC', N'BA20', N'BA', N'Itm', N'ItmBA20', N'库区', N'ChangKeTec.Wms.WinForm.BaseData', N'FormStoreArea', N'', N'Stop2', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (12, N'WMSPC', N'BA30', N'BA', N'Itm', N'ItmBA30', N'库位组', N'ChangKeTec.Wms.WinForm.BaseData', N'FormStoreGroup', N'', N'Share', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (13, N'WMSPC', N'BA40', N'BA', N'Itm', N'ItmBA40', N'库位', N'ChangKeTec.Wms.WinForm.BaseData', N'FormStoreLocation', N'', N'Db', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (14, N'WMSPC', N'BB', N'B', N'Grp', N'GrpBB', N'零件信息', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (15, N'WMSPC', N'BB10', N'BB', N'Itm', N'ItmBB10', N'零件', N'ChangKeTec.Wms.WinForm.BaseData', N'FormPart', N'', N'Gear', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (16, N'WMSPC', N'BB20', N'BB', N'Itm', N'ItmBB20', N'结算BOM', N'ChangKeTec.Wms.WinForm.BaseData', N'FormCustBom', N'', N'GearWarning', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (17, N'WMSPC', N'BB30', N'BB', N'Itm', N'ItmBB30', N'客户零件', N'ChangKeTec.Wms.WinForm.BaseData', N'FormCustPart', N'', N'GearInfo', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (18, N'WMSPC', N'BC', N'B', N'Grp', N'GrpBC', N'生产信息', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (19, N'WMSPC', N'BC10', N'BC', N'Itm', N'ItmBC10', N'生产线', N'ChangKeTec.Wms.WinForm.BaseData', N'FormWorkline', N'', N'Monitors', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (20, N'WMSPC', N'BC20', N'BC', N'Itm', N'ItmBC20', N'班组', N'ChangKeTec.Wms.WinForm.BaseData', N'FormTeam', N'', N'UserGroup', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (21, N'WMSPC', N'BC30', N'BC', N'Itm', N'ItmBC30', N'班次', N'ChangKeTec.Wms.WinForm.BaseData', N'FormShift', N'', N'WIndow', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (22, N'WMSPC', N'BC40', N'BC', N'Itm', N'ItmBC40', N'生产BOM', N'ChangKeTec.Wms.WinForm.BaseData', N'FormBom', N'', N'GearYes', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (23, N'WMSPC', N'BD', N'B', N'Grp', N'GrpBD', N'其它信息', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (24, N'WMSPC', N'BD10', N'BD', N'Itm', N'ItmBD10', N'供应商', N'ChangKeTec.Wms.WinForm.BaseData', N'FormSuperlier', N'', N'UserBlue', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (25, N'WMSPC', N'BD20', N'BD', N'Itm', N'ItmBD20', N'客户', N'ChangKeTec.Wms.WinForm.BaseData', N'FormCustomer', N'', N'UserBlack', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (26, N'WMSPC', N'BD30', N'BD', N'Itm', N'ItmBD30', N'委外加工商', N'ChangKeTec.Wms.WinForm.BaseData', N'FormOutsourcer', N'', N'UserBlueInfo', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (27, N'WMSPC', N'C', N'WMSPC', N'Tab', N'TabC', N'单据', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (28, N'WMSPC', N'CA', N'C', N'Grp', N'GrpCA', N'原料管理', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (29, N'WMSPC', N'CA10', N'CA', N'Itm', N'ItmCA10', N'订单收货', N'ChangKeTec.Wms.WinForm.Bills', N'FormMaterialReceive', N'PoReceive', N'Notebook', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (30, N'WMSPC', N'CA20', N'CA', N'Itm', N'ItmCA20', N'ASN收货', N'ChangKeTec.Wms.WinForm.Bills', N'FormMaterialReceive', N'AsnReceive', N'NotebookAdd', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (31, N'WMSPC', N'CA30', N'CA', N'Itm', N'ItmCA30', N'检验', N'ChangKeTec.Wms.WinForm.Bills', N'FormInspect', N'', N'NotebookYes', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (32, N'WMSPC', N'CA40', N'CA', N'Itm', N'ItmCA40', N'入库', N'ChangKeTec.Wms.WinForm.Bills', N'FormMaterialIn', N'', N'NotebookLocked', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (33, N'WMSPC', N'CA50', N'CA', N'Itm', N'ItmCA50', N'原料退货', N'ChangKeTec.Wms.WinForm.Bills', N'FormOtherInout', N'ReturnToSupplier', N'Notebook', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (34, N'WMSPC', N'CA60', N'CA', N'Itm', N'ItmCA60', N'生产退库', N'ChangKeTec.Wms.WinForm.Bills', N'FormOtherInout', N'BackToStore', N'Notebook', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (35, N'WMSPC', N'CB', N'C', N'Grp', N'GrpCB', N'成品管理', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (36, N'WMSPC', N'CB10', N'CB', N'Itm', N'ItmCB10', N'收货', N'ChangKeTec.Wms.WinForm.Bills', N'FormProductReceive', N'', N'Folder', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (37, N'WMSPC', N'CB20', N'CB', N'Itm', N'ItmCB20', N'入库', N'ChangKeTec.Wms.WinForm.Bills', N'FormProductIn', N'', N'FolderYes', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (38, N'WMSPC', N'CB30', N'CB', N'Itm', N'ItmCB30', N'发货', N'ChangKeTec.Wms.WinForm.Bills', N'FormDeliverPlan', N'', N'FolderDelete', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (39, N'WMSPC', N'CB40', N'CB', N'Itm', N'ItmCB40', N'排序发货', N'ChangKeTec.Wms.WinForm.Bills', N'FormSortedDeliver', N'', N'FolderLocked', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (40, N'WMSPC', N'CB50', N'CB', N'Itm', N'ItmCB50', N'销售', N'ChangKeTec.Wms.WinForm.Bills', N'FormProductSell', N'', N'FolderStop', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (41, N'WMSPC', N'CB60', N'CB', N'Itm', N'ItmCB60', N'销售退货', N'ChangKeTec.Wms.WinForm.Bills', N'FormOtherInout', N'ProductReturn', N'Folder', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (42, N'WMSPC', N'CC', N'C', N'Grp', N'GrpCC', N'生产管理', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (43, N'WMSPC', N'CC10', N'CC', N'Itm', N'ItmCC10', N'生产计划', N'ChangKeTec.Wms.WinForm.Bills', N'FormProducePlan', N'', N'File', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (44, N'WMSPC', N'CC20', N'CC', N'Itm', N'ItmCC20', N'看板叫料', N'ChangKeTec.Wms.WinForm.Bills', N'FormMaterialAsk', N'', N'FileInfo', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (45, N'WMSPC', N'CC30', N'CC', N'Itm', N'ItmCC30', N'配料备料', N'ChangKeTec.Wms.WinForm.Bills', N'FormPickPlan', N'', N'FileQuestion', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (46, N'WMSPC', N'CC40', N'CC', N'Itm', N'ItmCC40', N'拣料发料', N'ChangKeTec.Wms.WinForm.Bills', N'FormPickFact', N'', N'FileLocked', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (47, N'WMSPC', N'CD', N'C', N'Grp', N'GrpCD', N'委外管理', N'ChangKeTec.Wms.WinForm.Bills', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (48, N'WMSPC', N'CD10', N'CD', N'Itm', N'ItmCD10', N'委外出库', N'ChangKeTec.Wms.WinForm.Bills', N'', N'', N'File', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (49, N'WMSPC', N'CD20', N'CD', N'Itm', N'TimCD20', N'委外入库', N'ChangKeTec.Wms.WinForm.Bills', N'', N'', N'File', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (50, N'WMSPC', N'CE', N'C', N'Grp', N'GrpCE', N'原始单据', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (51, N'WMSPC', N'CE10', N'CE', N'Itm', N'ItmCE10', N'采购订单', N'ChangKeTec.Wms.WinForm.Forms', N'FormPurchaseOrder', N'', N'Mail', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (52, N'WMSPC', N'CE20', N'CE', N'Itm', N'ItmCE20', N'采购发货单', N'ChangKeTec.Wms.WinForm.Forms', N'FormAsnOrder', N'', N'Mail', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (53, N'WMSPC', N'CE30', N'CE', N'Itm', N'ItmCE30', N'销售订单', N'ChangKeTec.Wms.WinForm.Forms', N'FormSaleOrder', N'', N'MailOpen', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (54, N'WMSPC', N'D', N'WMSPC', N'Tab', N'TabD', N'库存', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (55, N'WMSPC', N'DA', N'D', N'Grp', N'GrpDA', N'库存查询', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (56, N'WMSPC', N'DA10', N'DA', N'Itm', N'ItmDA10', N'全部', N'ChangKeTec.Wms.WinForm.Stock', N'FormStock2', N'', N'Db', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (57, N'WMSPC', N'DA20', N'DA', N'Itm', N'ItmDA20', N'原料', N'ChangKeTec.Wms.WinForm.Stock', N'FormStock2', N'RAW', N'DbAdd', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (58, N'WMSPC', N'DA30', N'DA', N'Itm', N'ItmDA30', N'线边', N'ChangKeTec.Wms.WinForm.Stock', N'FormStock2', N'WIP', N'DbGear', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (59, N'WMSPC', N'DA40', N'DA', N'Itm', N'ItmDA40', N'成品', N'ChangKeTec.Wms.WinForm.Stock', N'FormStock2', N'FG', N'DbYes', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (60, N'WMSPC', N'DA50', N'DA', N'Itm', N'ItmDA50', N'销售', N'ChangKeTec.Wms.WinForm.Stock', N'FormStock2', N'SALE', N'DbRight', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (61, N'WMSPC', N'DA60', N'DA', N'Itm', N'ItmDA60', N'隔离', N'ChangKeTec.Wms.WinForm.Stock', N'FormStock2', N'UNDECIDE', N'DbWarning', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (62, N'WMSPC', N'DA70', N'DA', N'Itm', N'ItmDA70', N'报废', N'ChangKeTec.Wms.WinForm.Stock', N'FormStock2', N'SCRAP', N'DbDelete', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (63, N'WMSPC', N'DA80', N'DA', N'Itm', N'ItmDA80', N'其它', N'ChangKeTec.Wms.WinForm.Stock', N'FormStock2', N'OTHER', N'DbQuestion', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (1130, N'WMSPC', N'DA90', N'DA', N'Itm', N'ItmDA90', N'冻结', N'ChangKeTec.Wms.WinForm.Stock', N'FormStockFreeze', N'', N'DbLocked', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (64, N'WMSPC', N'DB', N'D', N'Grp', N'GrpDB', N'库存管理', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (65, N'WMSPC', N'DB10', N'DB', N'Itm', N'ItmDB10', N'移库', N'ChangKeTec.Wms.WinForm.Bills', N'FormStockMove', N'', N'DbStop', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (66, N'WMSPC', N'DB20', N'DB', N'Itm', N'ItmDB20', N'拆包', N'ChangKeTec.Wms.WinForm.Bills', N'FormUnpack', N'', N'DbUp', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (67, N'WMSPC', N'DB30', N'DB', N'Itm', N'ItmDB30', N'合包', N'ChangKeTec.Wms.WinForm.Bills', N'FormPack', N'', N'DbDown', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (68, N'WMSPC', N'DB40', N'DB', N'Itm', N'ItmDB40', N'盘点', N'ChangKeTec.Wms.WinForm.Bills', N'FormInventoryPlan', N'', N'Phone', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (69, N'WMSPC', N'DB50', N'DB', N'Itm', N'ItmDB50', N'其他出入库', N'ChangKeTec.Wms.WinForm.Bills', N'FormOtherInout', N'', N'DbLeft', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (70, N'WMSPC', N'DB60', N'DB', N'Itm', N'ItmDB60', N'码托', N'ChangKeTec.Wms.WinForm.Bills', N'FormEqptLoad', N'', N'Basket', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (71, N'WMSPC', N'E', N'WMSPC', N'Tab', N'TabE', N'日志', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (72, N'WMSPC', N'EA', N'E', N'Grp', N'GrpEA', N'日志查询', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (73, N'WMSPC', N'EA10', N'EA', N'Itm', N'ItmEA10', N'登录日志', N'ChangKeTec.Wms.WinForm.Logs', N'FormOperLog', N'', N'IdInfo', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (74, N'WMSPC', N'EA20', N'EA', N'Itm', N'ItmEA20', N'基础数据日志', N'ChangKeTec.Wms.WinForm.Logs', N'FormBaseDataLog', N'', N'AppInfo', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (75, N'WMSPC', N'EA30', N'EA', N'Itm', N'ItmEA30', N'单据日志', N'ChangKeTec.Wms.WinForm.Logs', N'FormBillLog', N'', N'FileInfo', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (76, N'WMSPC', N'EA40', N'EA', N'Itm', N'ItmEA40', N'事务日志', N'ChangKeTec.Wms.WinForm.Logs', N'FormTransactionLog', N'', N'DbInfo', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (77, N'WMSPC', N'EA50', N'EA', N'Itm', N'ItmEA50', N'ERP接口日志', N'ChangKeTec.Wms.WinForm.Logs', N'FormInterface2', N'', N'UKey', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (78, N'WMSPC', N'F', N'WMSPC', N'Tab', N'TabF', N'报表', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (79, N'WMSPC', N'FA', N'F', N'Grp', N'GrpFA', N'原料报表', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (80, N'WMSPC', N'FA10', N'FA', N'Itm', N'ItmFA10', N'原料入库', N'ChangKeTec.Wms.WinForm.Report', N'', N'', N'ChartAdd', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (81, N'WMSPC', N'FA20', N'FA', N'Itm', N'ItmFA20', N'原料出库', N'ChangKeTec.Wms.WinForm.Report', N'', N'', N'ChartDelete', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (82, N'WMSPC', N'FA30', N'FA', N'Itm', N'ItmFA30', N'原料检验', N'ChangKeTec.Wms.WinForm.Report', N'', N'', N'ChartInfo', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (83, N'WMSPC', N'FB', N'F', N'Grp', N'GrpFB', N'成品报表', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (84, N'WMSPC', N'FB10', N'FB', N'Itm', N'ItmFB10', N'成品入库', N'ChangKeTec.Wms.WinForm.Report', N'', N'', N'ChartAdd', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (85, N'WMSPC', N'FB20', N'FB', N'Itm', N'ItmFB20', N'成品出库', N'ChangKeTec.Wms.WinForm.Report', N'', N'', N'ChartYes', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (86, N'WMSPC', N'FB30', N'FB', N'Itm', N'ItmFB30', N'客户退货', N'ChangKeTec.Wms.WinForm.Report', N'', N'', N'ChartDelete', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (87, N'WMSPC', N'FB40', N'FB', N'Itm', N'ItmFB40', N'VIN入库', N'ChangKeTec.Wms.WinForm.Report', N'FormRptVin', N'VinReceive', N'ChartAdd', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (88, N'WMSPC', N'FB50', N'FB', N'Itm', N'ItmFB50', N'VIN出库', N'ChangKeTec.Wms.WinForm.Report', N'FormRptVin', N'VinDeliver', N'ChartYes', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (89, N'WMSPC', N'FC', N'F', N'Grp', N'GrpFC', N'其它报表', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (90, N'WMSPC', N'FC10', N'FC', N'Itm', N'ItmFC10', N'盘点差异', N'ChangKeTec.Wms.WinForm.Report', N'', N'', N'DbSearch', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (91, N'WMSPC', N'FC20', N'FC', N'Itm', N'ItmFC20', N'其它出入库', N'ChangKeTec.Wms.WinForm.Report', N'', N'', N'DbWarning', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (92, N'WMSPC', N'FC30', N'FC', N'Itm', N'ItmFC30', N'移库报表', N'ChangKeTec.Wms.WinForm.Report', N'', N'', N'DbRight', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (93, N'WMSPC', N'FC40', N'FC', N'Itm', N'ItmFC40', N'出入库汇总', N'ChangKeTec.Wms.WinForm.Report', N'FormRptInOutSummary', N'', N'Chart', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (94, N'WMSPC', N'FC50', N'FC', N'Itm', N'ItmFC50', N'在库库龄', N'ChangKeTec.Wms.WinForm.Report', N'FormRptStockDays', N'', N'Chart', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (95, N'WMSPC', N'FC60', N'FC', N'Itm', N'ItmFC60', N'出入库流水', N'ChangKeTec.Wms.WinForm.Report', N'FormRptInOutList', N'', N'Chart', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (96, N'WMSPC', N'FC70', N'FC', N'Itm', N'ItmFC70', N'过期预警', N'ChangKeTec.Wms.WinForm.Report', N'FormRptCalOverduDays', N'', N'Chart', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (97, N'WMSPC', N'FC80', N'FC', N'Itm', N'ItmFC80', N'安全库存预警', N'ChangKeTec.Wms.WinForm.Report', N'FormRptCalSafeQty', N'', N'Chart', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (2131, N'WMSPC', N'FC90', N'FC', N'Itm', N'ItmFC90', N'出入库按库区汇总', N'ChangKeTec.Wms.WinForm.Report', N'FormRptInOutSummaryByArea', N'', N'Chart', N'', 0, 0, NULL)
GO
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (98, N'WMSPC', N'G', N'WMSPC', N'Tab', N'TabG', N'标签', N'', N'', N'', NULL, NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (99, N'WMSPC', N'GA', N'G', N'Grp', N'GrpGA', N'标签打印', N'', N'', N'', NULL, NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (100, N'WMSPC', N'GA10', N'GA', N'Itm', N'ItmGA10', N'原料标签', N'ChangKeTec.Wms.WinForm.Barcode', N'FormMaterialBarcodeCreateByPo', N'', N'PrinterInfo', NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (101, N'WMSPC', N'GA20', N'GA', N'Itm', N'ItmGA20', N'成品标签', N'ChangKeTec.Wms.WinForm.Barcode', N'FormProduceBarcodeCreateBySo', N'', N'PrinterYes', NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (102, N'WMSPC', N'GA30', N'GA', N'Itm', N'ItmGA30', N'零件标签', N'ChangKeTec.Wms.WinForm.Barcode', NULL, N'', N'PrinterStop', NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (103, N'WMSPC', N'GA40', N'GA', N'Itm', N'ItmGA40', N'库位标签', N'ChangKeTec.Wms.WinForm.Barcode', NULL, N'', N'Printer', NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (2130, N'WMSPC', N'GA50', N'GA', N'Itm', N'ItmGA50', N'补打标签', N'ChangKeTec.Wms.WinForm.Barcode', N'FormBarcodeReprint', N'', N'Printer', NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (3130, N'WMSPC', N'GA60', N'GA', N'Itm', N'ItmGA60', N'直接创建标签', N'ChangKeTec.Wms.WinForm.Barcode', N'FormBarcodeCreateDirect', N'', N'Printer', NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (104, N'WMSPC', N'Z', N'WMSPC', N'Tab', N'TabZ', N'定制', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (105, N'WMSPC', N'ZA', N'Z', N'Grp', N'GrpZA', N'结算比对', N'', N'', N'', N'', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (106, N'WMSPC', N'ZA10', N'ZA', N'Itm', N'ItmZA10', N'VIN结算比对', N'ChangKeTec.Wms.WinForm.Bills', N'FormCompare', N'', N'FilesWarning', N'', 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (107, N'WMSPDA', N'A', N'WMSPDA', N'Tab', N'TabA', N'成品', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (108, N'WMSPDA', N'AA', N'A', N'btn', N'btnAA', N'排序发货', N'Wms.CcIntier.PdaForm.Bill.Product', N'FrmSortedDeliver', NULL, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (109, N'WMSPDA', N'AB', N'A', N'btn', N'btnAB', N'完工收货', N'Wms.CcIntier.PdaForm.Bill.Product', N'FrmProductInWithPlan', NULL, NULL, NULL, 120, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (110, N'WMSPDA', N'AC', N'A', N'btn', N'btnAC', N'成品入库', N'Wms.CcIntier.PdaForm.Bill.Product', N'FrmProductIn', NULL, NULL, NULL, 0, 48, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (111, N'WMSPDA', N'AD', N'A', N'btn', N'btnAD', N'追溯绑定', N'Wms.CcIntier.PdaForm.Bill.Product', N'FrmTraceback', NULL, NULL, NULL, 120, 48, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (112, N'WMSPDA', N'AE', N'A', N'btn', N'btnAE', N'委外入库', N'Wms.CcIntier.PdaForm.Bill.Product', N'FrmOSIn', NULL, NULL, NULL, 0, 96, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (113, N'WMSPDA', N'AF', N'A', N'btn', N'btnAF', N'成品发货', N'Wms.CcIntier.PdaForm.Bill.Product', N'FrmProducePick', NULL, NULL, NULL, 120, 96, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (130, N'WMSPDA', N'B', N'WMSPDA', N'Tab', N'TabB', N'原料', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (114, N'WMSPDA', N'BA', N'B', N'btn', N'btnBA', N'订单收货', N'Wms.CcIntier.PdaForm.Bill.Material', N'FrmReceiveByBarcode', NULL, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (115, N'WMSPDA', N'BB', N'B', N'btn', N'btnBB', N'订单收货(码托)', N'Wms.CcIntier.PdaForm.Bill.Material', N'FrmReceiveByBarcodewithEqpt', NULL, NULL, NULL, 120, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (116, N'WMSPDA', N'BC', N'B', N'btn', N'btnBC', N'ASN收货', N'Wms.CcIntier.PdaForm.Bill.Material', N'FrmReceiveByAsn', NULL, NULL, NULL, 0, 48, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (117, N'WMSPDA', N'BD', N'B', N'btn', N'btnBD', N'ASN收货(校验)', N'Wms.CcIntier.PdaForm.Bill.Material', N'FrmRcvByASNCheck', NULL, NULL, NULL, 120, 48, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (118, N'WMSPDA', N'BE', N'B', N'btn', N'btnBE', N'ASN收货(码托)', N'Wms.CcIntier.PdaForm.Bill.Material', N'FrmRcvByASNwithEqpt', NULL, NULL, NULL, 0, 96, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (119, N'WMSPDA', N'BF', N'B', N'btn', N'btnBF', N'原料入库', N'Wms.CcIntier.PdaForm.Bill.Material', N'FrmMaterialIn', NULL, NULL, NULL, 120, 96, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (120, N'WMSPDA', N'BG', N'B', N'btn', N'btnBG', N'生产叫料', N'Wms.CcIntier.PdaForm.Bill.Material', N'FrmAsk', NULL, NULL, NULL, 0, 144, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (121, N'WMSPDA', N'BH', N'B', N'btn', N'btnBH', N'拣料', N'Wms.CcIntier.PdaForm.Bill.Material', N'FrmMaterialPick', NULL, NULL, NULL, 120, 144, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (122, N'WMSPDA', N'BI', N'B', N'btn', N'btnBI', N'委外出库', N'Wms.CcIntier.PdaForm.Bill.Material', N'FrmOSPick', NULL, NULL, NULL, 0, 192, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (131, N'WMSPDA', N'C', N'WMSPDA', N'Tab', N'TabC', N'管理', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (123, N'WMSPDA', N'CA', N'C', N'btn', N'btnCA', N'拆包', N'Wms.CcIntier.PdaForm.Bill.Mange', N'FrmUnpack', NULL, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (124, N'WMSPDA', N'CB', N'C', N'btn', N'btnCB', N'合包', N'Wms.CcIntier.PdaForm.Bill.Mange', N'FrmPack', NULL, NULL, NULL, 120, 0, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (125, N'WMSPDA', N'CC', N'C', N'btn', N'btnCC', N'临时盘点', N'Wms.CcIntier.PdaForm.Bill.Mange', N'FrmTempCheck', NULL, NULL, NULL, 0, 48, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (126, N'WMSPDA', N'CD', N'C', N'btn', N'btnCD', N'计划盘点', N'Wms.CcIntier.PdaForm.Bill.Mange', N'FrmPlanCheck', NULL, NULL, NULL, 120, 48, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (127, N'WMSPDA', N'CE', N'C', N'btn', N'btnCE', N'移库', N'Wms.CcIntier.PdaForm.Bill.Mange', N'FrmStockMove', NULL, NULL, NULL, 0, 96, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (128, N'WMSPDA', N'CF', N'C', N'btn', N'btnCF', N'其他入库', N'Wms.CcIntier.PdaForm.Bill.Mange', N'FrmOtherIn', NULL, NULL, NULL, 120, 96, NULL)
INSERT [dbo].[TA_MENU] ([UID], [PortalCode], [MenuCode], [ParentCode], [ControlType], [ControlName], [MenuText], [NameSpace], [ClassName], [Params], [ImageName], [Remark], [X], [Y], [BackColor]) VALUES (129, N'WMSPDA', N'CG', N'C', N'btn', N'btnCG', N'其他出库', N'Wms.CcIntier.PdaForm.Bill.Mange', N'FrmOtherOut', NULL, NULL, NULL, 0, 144, NULL)
SET IDENTITY_INSERT [dbo].[TA_MENU] OFF
SET IDENTITY_INSERT [dbo].[TL_BASEDATA] ON 

INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (1, N'', CAST(N'2016-10-17T09:01:13.620' AS DateTime), N'Update', N'TS_ROLE', N'UID:3,RoleCode:02,RoleName:测试2,PowerString:,Remark:,', N'UID:3,RoleCode:02,RoleName:PC客户端全功能,PowerString:,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (2, N'', CAST(N'2016-10-17T09:01:13.623' AS DateTime), N'Update', N'TS_ROLE', N'UID:4,RoleCode:03,RoleName:测试3,PowerString:,Remark:,', N'UID:4,RoleCode:03,RoleName:PDA客户端全功能,PowerString:,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (3, N'', CAST(N'2016-10-17T11:12:24.503' AS DateTime), N'Update', N'TA_MENU', N'UID:39,PortalCode:WMSPC,MenuCode:CB40,ParentCode:CB,ControlType:Itm,ControlName:ItmCB40,MenuText:排序发货,NameSpace:ChangKeTec.Wms.WinForm.Bills,ClassName:FormSortedDeliver2,Params:,ImageName:FolderLocked,Remark:,X:0,Y:0,', N'UID:39,PortalCode:WMSPC,MenuCode:CB40,ParentCode:CB,ControlType:Itm,ControlName:ItmCB40,MenuText:排序发货,NameSpace:ChangKeTec.Wms.WinForm.Bills,ClassName:FormSortedDeliver,Params:,ImageName:FolderLocked,Remark:,X:0,Y:0,', NULL)
SET IDENTITY_INSERT [dbo].[TL_BASEDATA] OFF
SET IDENTITY_INSERT [dbo].[TS_DEPT] ON 

INSERT [dbo].[TS_DEPT] ([UID], [DeptCode], [DeptName], [ParentCode], [IsLeafNode], [Remark]) VALUES (1, N'001', N'综合管理部', N'003', 1, NULL)
SET IDENTITY_INSERT [dbo].[TS_DEPT] OFF
SET IDENTITY_INSERT [dbo].[TS_MENU] ON 

INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (146, N'm1', N'm1', N'原料', N'WMSPDA', N'WMSPDA', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (147, N'm2', N'm2', N'成品', N'WMSPDA', N'WMSPDA', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (149, N'm2b1', N'm2b1', N'排序发货', N'm2', N'WMSPDA', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (79, N't1', N't1', N'系统管理', N'WMSPC', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (85, N't1g1', N't1g1', N'基础数据', N't1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (88, N't1g1b1', N't1g1b1', N'仓库', N't1g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (89, N't1g1b2', N't1g1b2', N'库区', N't1g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (90, N't1g1b3', N't1g1b3', N'库位组', N't1g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (91, N't1g1b4', N't1g1b4', N'库位', N't1g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (92, N't1g1b5', N't1g1b5', N'零件', N't1g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (93, N't1g1b6', N't1g1b6', N'BOM', N't1g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (94, N't1g1b7', N't1g1b7', N'账期', N't1g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (86, N't1g2', N't1g2', N'当前用户', N't1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (95, N't1g2b1', N't1g2b1', N'切换用户', N't1g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (96, N't1g2b2', N't1g2b2', N'修改密码', N't1g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (97, N't1g2b3', N't1g2b3', N'参数刷新', N't1g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (87, N't1g3', N't1g3', N'系统查询', N't1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (98, N't1g3b1', N't1g3b1', N'提示查询', N't1g3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (99, N't1g3b2', N't1g3b2', N'新客户零件', N't1g3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (100, N't1g3b3', N't1g3b3', N'系统参数查询', N't1g3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (80, N't2', N't2', N'单据管理', N'WMSPC', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (101, N't2g1', N't2g1', N'原料管理', N't2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (104, N't2g1b1', N't2g1b1', N'订单入库', N't2g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (105, N't2g1b2', N't2g1b2', N'ASN入库', N't2g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (106, N't2g1b3', N't2g1b3', N'原料检验', N't2g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (102, N't2g2', N't2g2', N'成品管理', N't2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (107, N't2g2b1', N't2g2b1', N'成品入库', N't2g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (108, N't2g2b2', N't2g2b2', N'成品出库', N't2g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (109, N't2g2b3', N't2g2b3', N'客户退货', N't2g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (150, N't2g2b4', N't2g2b4', N'排序发货', N't2g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (103, N't2g3', N't2g3', N'生产管理', N't2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (110, N't2g3b1', N't2g3b1', N'生产计划', N't2g3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (111, N't2g3b2', N't2g3b2', N'看板叫料', N't2g3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (112, N't2g3b3', N't2g3b3', N'配料发料', N't2g3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (82, N't3', N't3', N'库存管理', N'WMSPC', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (113, N't3g1', N't3g1', N'库存查询', N't3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (115, N't3g1b1', N't3g1b1', N'全部库存', N't3g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (116, N't3g1b2', N't3g1b2', N'成品库存', N't3g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (117, N't3g1b3', N't3g1b3', N'销售库存', N't3g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (118, N't3g1b4', N't3g1b4', N'差异库存', N't3g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (114, N't3g2', N't3g2', N'库存管理', N't3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (119, N't3g2b1', N't3g2b1', N'移库', N't3g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (120, N't3g2b2', N't3g2b2', N'拆包', N't3g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (121, N't3g3b3', N't3g3b3', N'合包', N't3g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (122, N't3g3b4', N't3g3b4', N'盘点', N't3g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (123, N't3g3b5', N't3g3b5', N'其他出入库', N't3g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (84, N't4', N't4', N'日志管理', N'WMSPC', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (124, N't4g1', N't4g1', N'日志查询', N't4', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (125, N't4g1b1', N't4g1b1', N'登录日志', N't4g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (126, N't4g1b2', N't4g1b2', N'基础数据日志', N't4g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (127, N't4g1b3', N't4g1b3', N'操作日志', N't4g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (128, N't4g1b4', N't4g1b4', N'VIN日志', N't4g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (129, N't4g1b5', N't4g1b5', N'接口日志', N't4g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (81, N't5', N't5', N'报表管理', N'WMSPC', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (130, N't5g1', N't5g1', N'原料报表', N't5', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (133, N't5g1b1', N't5g1b1', N'原料入库报表', N't5g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (134, N't5g1b2', N't5g1b2', N'原料出库报表', N't5g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (135, N't5g1b3', N't5g1b3', N'原料检验报表', N't5g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (131, N't5g2', N't5g2', N'成品报表', N't5', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (136, N't5g2b1', N't5g2b1', N'成品入库报表', N't5g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (137, N't5g2b2', N't5g2b2', N'成品出库报表', N't5g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (138, N't5g2b3', N't5g2b3', N'客户退货报表', N't5g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (139, N't5g2b4', N't5g2b4', N'VIN入库报表', N't5g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (140, N't5g2b5', N't5g2b5', N'VIN出库报表', N't5g2', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (132, N't5g3', N't5g3', N'其它报表', N't5', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (141, N't5g3b1', N't5g3b1', N'盘点差异报表', N't5g3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (142, N't5g3b2', N't5g3b2', N'其它出入库报表', N't5g3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (143, N't5g3b3', N't5g3b3', N'移库报表', N't5g3', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (83, N't6', N't6', N'结算比对', N'WMSPC', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (144, N't6g1', N't6g1', N'结算比对', N't6', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (145, N't6g1b1', N't6g1b1', N'VIN结算比对', N't6g1', N'WMSPC', NULL, NULL)
INSERT [dbo].[TS_MENU] ([UID], [MenuCode], [ControlName], [MenuName], [ParentCode], [PortalCode], [NameSpace], [Remark]) VALUES (78, N'WMSPC', N'WMSPC', N'WMS系统', N'', N'WMSPC', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TS_MENU] OFF
SET IDENTITY_INSERT [dbo].[TS_OPER_ROLE] ON 

INSERT [dbo].[TS_OPER_ROLE] ([UID], [OperCode], [RoleCode], [IsBeloneTo]) VALUES (7, N'1002', N'01', 1)
INSERT [dbo].[TS_OPER_ROLE] ([UID], [OperCode], [RoleCode], [IsBeloneTo]) VALUES (4, N'1002', N'02', 1)
INSERT [dbo].[TS_OPER_ROLE] ([UID], [OperCode], [RoleCode], [IsBeloneTo]) VALUES (5, N'1003', N'02', 1)
INSERT [dbo].[TS_OPER_ROLE] ([UID], [OperCode], [RoleCode], [IsBeloneTo]) VALUES (1, N'admin', N'01', 1)
SET IDENTITY_INSERT [dbo].[TS_OPER_ROLE] OFF
SET IDENTITY_INSERT [dbo].[TS_OPERATOR] ON 

INSERT [dbo].[TS_OPERATOR] ([UID], [OperCode], [OperName], [OperPassword], [DeptCode]) VALUES (6, N'1002', N'BBB', N'5C2DE907DB859810', N'001')
INSERT [dbo].[TS_OPERATOR] ([UID], [OperCode], [OperName], [OperPassword], [DeptCode]) VALUES (7, N'1003', N'CCC', N'5C2DE907DB859810', N'001')
INSERT [dbo].[TS_OPERATOR] ([UID], [OperCode], [OperName], [OperPassword], [DeptCode]) VALUES (1, N'admin', N'超级管理员', N'EF0D2F0DD771412E', N'001')
SET IDENTITY_INSERT [dbo].[TS_OPERATOR] OFF
SET IDENTITY_INSERT [dbo].[TS_PORTAL] ON 

INSERT [dbo].[TS_PORTAL] ([UID], [PortalCode], [PortalName], [PortalType], [PortalUrl], [Remark]) VALUES (1, N'WMSPC', N'WMSPC客户端', N'PC', NULL, NULL)
INSERT [dbo].[TS_PORTAL] ([UID], [PortalCode], [PortalName], [PortalType], [PortalUrl], [Remark]) VALUES (2, N'WMSPDA', N'WMSPDA客户端', N'PDA', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TS_PORTAL] OFF
SET IDENTITY_INSERT [dbo].[TS_ROLE] ON 

INSERT [dbo].[TS_ROLE] ([UID], [RoleCode], [RoleName], [PowerString], [Remark]) VALUES (1, N'01', N'全功能角色', N'WMSPC:1,t1:1,t1g1:1,t1g1b1:1,t1g1b2:1,t1g1b3:1,t1g1b4:1,t1g1b5:1,t1g1b6:1,t1g1b7:1,t1g2:1,t1g2b1:1,t1g2b2:1,t1g2b3:1,t1g3:1,t1g3b1:1,t1g3b2:1,t1g3b3:1,t2:0,t2g1:0,t2g1b1:0,t2g1b2:0,t2g1b3:0,t2g2:0,t2g2b1:0,t2g2b2:0,t2g2b3:0,t2g3:0,t2g3b1:0,t2g3b2:0,t2g3b3:0,t3:1,t3g1:1,t3g1b1:1,t3g1b2:1,t3g1b3:1,t3g1b4:0,t3g2:0,t3g2b1:0,t3g2b2:0,t3g3b3:0,t3g3b4:0,t3g3b5:0,t4:1,t4g1:1,t4g1b1:0,t4g1b2:0,t4g1b3:0,t4g1b4:1,t4g1b5:1,t5:1,t5g1:0,t5g1b1:0,t5g1b2:0,t5g1b3:0,t5g2:1,t5g2b1:0,t5g2b2:0,t5g2b3:0,t5g2b4:1,t5g2b5:1,t5g3:0,t5g3b1:0,t5g3b2:0,t5g3b3:0,t6:1,t6g1:1,t6g1b1:1,WMSPDA:0', NULL)
INSERT [dbo].[TS_ROLE] ([UID], [RoleCode], [RoleName], [PowerString], [Remark]) VALUES (3, N'02', N'PC客户端全功能', NULL, NULL)
INSERT [dbo].[TS_ROLE] ([UID], [RoleCode], [RoleName], [PowerString], [Remark]) VALUES (4, N'03', N'PDA客户端全功能', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TS_ROLE] OFF
SET IDENTITY_INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ON 

INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (2, N'01', N'WMSPC', 0, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (3, N'01', N'WMSPC', 1, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (4, N'01', N'WMSPC', 2, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (5, N'01', N'WMSPC', 3, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (6, N'01', N'WMSPC', 4, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (7, N'01', N'WMSPC', 5, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (8, N'01', N'WMSPC', 6, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (9, N'01', N'WMSPC', 7, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (10, N'01', N'WMSPC', 8, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (11, N'01', N'WMSPC', 9, 1)
INSERT [dbo].[TS_ROLE_NOTIFYTYPE] ([UID], [RoleCode], [PortalCode], [NotifyType], [IsVisible]) VALUES (12, N'01', N'WMSPC', 10, 1)
SET IDENTITY_INSERT [dbo].[TS_ROLE_NOTIFYTYPE] OFF
SET IDENTITY_INSERT [dbo].[TS_ROLE_POWER] ON 

INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (1, N'01', N'A', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (2, N'01', N'AB', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (3, N'01', N'AB10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (4, N'01', N'AB20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (5, N'01', N'AB30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (6, N'01', N'AB40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (7, N'01', N'AB50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (8, N'01', N'B', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (9, N'01', N'BA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (10, N'01', N'BA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (11, N'01', N'BA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (12, N'01', N'BA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (13, N'01', N'BA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (14, N'01', N'BB', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (15, N'01', N'BB10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (16, N'01', N'BB20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (17, N'01', N'BB30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (18, N'01', N'BC', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (19, N'01', N'BC10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20, N'01', N'BC20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (21, N'01', N'BC30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (22, N'01', N'BC40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (23, N'01', N'BD', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (24, N'01', N'BD10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (25, N'01', N'BD20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (26, N'01', N'BD30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (27, N'01', N'C', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (28, N'01', N'CA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (29, N'01', N'CA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (30, N'01', N'CA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (31, N'01', N'CA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (32, N'01', N'CA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (33, N'01', N'CA50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (34, N'01', N'CA60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (35, N'01', N'CB', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (36, N'01', N'CB10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (37, N'01', N'CB20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (38, N'01', N'CB30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (39, N'01', N'CB40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (40, N'01', N'CB50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (41, N'01', N'CB60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (42, N'01', N'CC', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (43, N'01', N'CC10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (44, N'01', N'CC20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (45, N'01', N'CC30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (46, N'01', N'CC40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (47, N'01', N'CD', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (48, N'01', N'CD10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (49, N'01', N'CD20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (50, N'01', N'CE', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (51, N'01', N'CE10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (52, N'01', N'CE20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (53, N'01', N'CE30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (54, N'01', N'D', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (55, N'01', N'DA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (56, N'01', N'DA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (57, N'01', N'DA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (58, N'01', N'DA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (59, N'01', N'DA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (60, N'01', N'DA50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (61, N'01', N'DA60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (62, N'01', N'DA70', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (63, N'01', N'DA80', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (64, N'01', N'DB', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (65, N'01', N'DB10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (66, N'01', N'DB20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (67, N'01', N'DB30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (68, N'01', N'DB40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (69, N'01', N'DB50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (70, N'01', N'DB60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (71, N'01', N'E', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (72, N'01', N'EA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (73, N'01', N'EA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (74, N'01', N'EA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (75, N'01', N'EA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (76, N'01', N'EA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (77, N'01', N'EA50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (78, N'01', N'F', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (79, N'01', N'FA', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (80, N'01', N'FA10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (81, N'01', N'FA20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (82, N'01', N'FA30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (83, N'01', N'FB', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (84, N'01', N'FB10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (85, N'01', N'FB20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (86, N'01', N'FB30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (87, N'01', N'FB40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (88, N'01', N'FB50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (89, N'01', N'FC', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (90, N'01', N'FC10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (91, N'01', N'FC20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (92, N'01', N'FC30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (93, N'01', N'FC40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (94, N'01', N'FC50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (95, N'01', N'FC60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (96, N'01', N'FC70', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (97, N'01', N'FC80', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (98, N'01', N'G', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (99, N'01', N'GA', N'WMSPC', 1, 0)
GO
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (100, N'01', N'GA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (101, N'01', N'GA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (102, N'01', N'GA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (103, N'01', N'GA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (104, N'01', N'Z', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (105, N'01', N'ZA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (106, N'01', N'ZA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (107, N'01', N'A', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (108, N'01', N'AA', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (109, N'01', N'AB', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (110, N'01', N'AC', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (111, N'01', N'AD', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (112, N'01', N'AE', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (113, N'01', N'AF', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (114, N'01', N'B', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (115, N'01', N'BA', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (116, N'01', N'BB', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (117, N'01', N'BC', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (118, N'01', N'BD', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (119, N'01', N'BE', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (120, N'01', N'BF', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (121, N'01', N'BG', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (122, N'01', N'BH', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (123, N'01', N'BI', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (124, N'01', N'C', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (125, N'01', N'CA', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (126, N'01', N'CB', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (127, N'01', N'CC', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (128, N'01', N'CD', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (129, N'01', N'CE', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (130, N'01', N'CF', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (131, N'01', N'CG', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (10107, N'01', N'DA90', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20107, N'01', N'GA50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20108, N'01', N'FC90', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20109, N'02', N'A', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20110, N'02', N'AB', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20111, N'02', N'AB10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20112, N'02', N'AB20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20113, N'02', N'AB30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20114, N'02', N'AB40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20115, N'02', N'AB50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20116, N'02', N'B', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20117, N'02', N'BA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20118, N'02', N'BA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20119, N'02', N'BA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20120, N'02', N'BA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20121, N'02', N'BA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20122, N'02', N'BB', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20123, N'02', N'BB10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20124, N'02', N'BB20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20125, N'02', N'BB30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20126, N'02', N'BC', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20127, N'02', N'BC10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20128, N'02', N'BC20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20129, N'02', N'BC30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20130, N'02', N'BC40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20131, N'02', N'BD', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20132, N'02', N'BD10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20133, N'02', N'BD20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20134, N'02', N'BD30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20135, N'02', N'C', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20136, N'02', N'CA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20137, N'02', N'CA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20138, N'02', N'CA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20139, N'02', N'CA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20140, N'02', N'CA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20141, N'02', N'CA50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20142, N'02', N'CA60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20143, N'02', N'CB', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20144, N'02', N'CB10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20145, N'02', N'CB20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20146, N'02', N'CB30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20147, N'02', N'CB40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20148, N'02', N'CB50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20149, N'02', N'CB60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20150, N'02', N'CC', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20151, N'02', N'CC10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20152, N'02', N'CC20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20153, N'02', N'CC30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20154, N'02', N'CC40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20155, N'02', N'CD', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20156, N'02', N'CD10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20157, N'02', N'CD20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20158, N'02', N'CE', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20159, N'02', N'CE10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20160, N'02', N'CE20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20161, N'02', N'CE30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20162, N'02', N'D', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20163, N'02', N'DA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20164, N'02', N'DA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20165, N'02', N'DA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20166, N'02', N'DA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20167, N'02', N'DA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20168, N'02', N'DA50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20169, N'02', N'DA60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20170, N'02', N'DA70', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20171, N'02', N'DA80', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20172, N'02', N'DA90', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20173, N'02', N'DB', N'WMSPC', 1, 0)
GO
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20174, N'02', N'DB10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20175, N'02', N'DB20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20176, N'02', N'DB30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20177, N'02', N'DB40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20178, N'02', N'DB50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20179, N'02', N'DB60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20180, N'02', N'E', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20181, N'02', N'EA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20182, N'02', N'EA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20183, N'02', N'EA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20184, N'02', N'EA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20185, N'02', N'EA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20186, N'02', N'EA50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20187, N'02', N'F', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20188, N'02', N'FA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20189, N'02', N'FA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20190, N'02', N'FA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20191, N'02', N'FA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20192, N'02', N'FB', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20193, N'02', N'FB10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20194, N'02', N'FB20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20195, N'02', N'FB30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20196, N'02', N'FB40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20197, N'02', N'FB50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20198, N'02', N'FC', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20199, N'02', N'FC10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20200, N'02', N'FC20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20201, N'02', N'FC30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20202, N'02', N'FC40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20203, N'02', N'FC50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20204, N'02', N'FC60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20205, N'02', N'FC70', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20206, N'02', N'FC80', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20207, N'02', N'FC90', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20208, N'02', N'G', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20209, N'02', N'GA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20210, N'02', N'GA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20211, N'02', N'GA20', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20212, N'02', N'GA30', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20213, N'02', N'GA40', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20214, N'02', N'GA50', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20215, N'02', N'GA60', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20216, N'02', N'Z', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20217, N'02', N'ZA', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20218, N'02', N'ZA10', N'WMSPC', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20219, N'02', N'A', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20220, N'02', N'AA', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20221, N'02', N'AB', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20222, N'02', N'AC', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20223, N'02', N'AD', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20224, N'02', N'AE', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20225, N'02', N'AF', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20226, N'02', N'B', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20227, N'02', N'BA', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20228, N'02', N'BB', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20229, N'02', N'BC', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20230, N'02', N'BD', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20231, N'02', N'BE', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20232, N'02', N'BF', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20233, N'02', N'BG', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20234, N'02', N'BH', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20235, N'02', N'BI', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20236, N'02', N'C', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20237, N'02', N'CA', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20238, N'02', N'CB', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20239, N'02', N'CC', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20240, N'02', N'CD', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20241, N'02', N'CE', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20242, N'02', N'CF', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20243, N'02', N'CG', N'WMSPDA', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20244, N'03', N'A', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20245, N'03', N'AB', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20246, N'03', N'AB10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20247, N'03', N'AB20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20248, N'03', N'AB30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20249, N'03', N'AB40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20250, N'03', N'AB50', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20251, N'03', N'B', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20252, N'03', N'BA', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20253, N'03', N'BA10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20254, N'03', N'BA20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20255, N'03', N'BA30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20256, N'03', N'BA40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20257, N'03', N'BB', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20258, N'03', N'BB10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20259, N'03', N'BB20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20260, N'03', N'BB30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20261, N'03', N'BC', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20262, N'03', N'BC10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20263, N'03', N'BC20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20264, N'03', N'BC30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20265, N'03', N'BC40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20266, N'03', N'BD', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20267, N'03', N'BD10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20268, N'03', N'BD20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20269, N'03', N'BD30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20270, N'03', N'C', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20271, N'03', N'CA', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20272, N'03', N'CA10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20273, N'03', N'CA20', N'WMSPC', 0, 0)
GO
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20274, N'03', N'CA30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20275, N'03', N'CA40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20276, N'03', N'CA50', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20277, N'03', N'CA60', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20278, N'03', N'CB', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20279, N'03', N'CB10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20280, N'03', N'CB20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20281, N'03', N'CB30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20282, N'03', N'CB40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20283, N'03', N'CB50', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20284, N'03', N'CB60', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20285, N'03', N'CC', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20286, N'03', N'CC10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20287, N'03', N'CC20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20288, N'03', N'CC30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20289, N'03', N'CC40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20290, N'03', N'CD', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20291, N'03', N'CD10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20292, N'03', N'CD20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20293, N'03', N'CE', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20294, N'03', N'CE10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20295, N'03', N'CE20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20296, N'03', N'CE30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20297, N'03', N'D', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20298, N'03', N'DA', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20299, N'03', N'DA10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20300, N'03', N'DA20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20301, N'03', N'DA30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20302, N'03', N'DA40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20303, N'03', N'DA50', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20304, N'03', N'DA60', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20305, N'03', N'DA70', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20306, N'03', N'DA80', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20307, N'03', N'DA90', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20308, N'03', N'DB', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20309, N'03', N'DB10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20310, N'03', N'DB20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20311, N'03', N'DB30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20312, N'03', N'DB40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20313, N'03', N'DB50', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20314, N'03', N'DB60', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20315, N'03', N'E', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20316, N'03', N'EA', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20317, N'03', N'EA10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20318, N'03', N'EA20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20319, N'03', N'EA30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20320, N'03', N'EA40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20321, N'03', N'EA50', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20322, N'03', N'F', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20323, N'03', N'FA', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20324, N'03', N'FA10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20325, N'03', N'FA20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20326, N'03', N'FA30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20327, N'03', N'FB', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20328, N'03', N'FB10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20329, N'03', N'FB20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20330, N'03', N'FB30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20331, N'03', N'FB40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20332, N'03', N'FB50', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20333, N'03', N'FC', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20334, N'03', N'FC10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20335, N'03', N'FC20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20336, N'03', N'FC30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20337, N'03', N'FC40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20338, N'03', N'FC50', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20339, N'03', N'FC60', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20340, N'03', N'FC70', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20341, N'03', N'FC80', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20342, N'03', N'FC90', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20343, N'03', N'G', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20344, N'03', N'GA', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20345, N'03', N'GA10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20346, N'03', N'GA20', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20347, N'03', N'GA30', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20348, N'03', N'GA40', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20349, N'03', N'GA50', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20350, N'03', N'GA60', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20351, N'03', N'Z', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20352, N'03', N'ZA', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20353, N'03', N'ZA10', N'WMSPC', 0, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20354, N'03', N'A', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20355, N'03', N'AA', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20356, N'03', N'AB', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20357, N'03', N'AC', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20358, N'03', N'AD', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20359, N'03', N'AE', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20360, N'03', N'AF', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20361, N'03', N'B', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20362, N'03', N'BA', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20363, N'03', N'BB', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20364, N'03', N'BC', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20365, N'03', N'BD', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20366, N'03', N'BE', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20367, N'03', N'BF', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20368, N'03', N'BG', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20369, N'03', N'BH', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20370, N'03', N'BI', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20371, N'03', N'C', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20372, N'03', N'CA', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20373, N'03', N'CB', N'WMSPDA', 1, 0)
GO
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20374, N'03', N'CC', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20375, N'03', N'CD', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20376, N'03', N'CE', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20377, N'03', N'CF', N'WMSPDA', 1, 0)
INSERT [dbo].[TS_ROLE_POWER] ([UID], [RoleCode], [MenuCode], [PortalCode], [IsVisible], [IsReadOnly]) VALUES (20378, N'03', N'CG', N'WMSPDA', 1, 0)
SET IDENTITY_INSERT [dbo].[TS_ROLE_POWER] OFF
ALTER TABLE [dbo].[TA_MENU] ADD  CONSTRAINT [DF_TS_MENU2_ParentCode]  DEFAULT ('''') FOR [ParentCode]
GO
ALTER TABLE [dbo].[TA_MENU] ADD  CONSTRAINT [DF_TA_MENU_X]  DEFAULT ((0)) FOR [X]
GO
ALTER TABLE [dbo].[TA_MENU] ADD  CONSTRAINT [DF_TA_MENU_Y]  DEFAULT ((0)) FOR [Y]
GO
ALTER TABLE [dbo].[TL_BASEDATA] ADD  CONSTRAINT [DF_TL_BASEDATA_LogTime]  DEFAULT (getdate()) FOR [LogTime]
GO
ALTER TABLE [dbo].[TL_BASEDATA] ADD  CONSTRAINT [DF_TL_BASEDATA_OldValue]  DEFAULT ('') FOR [OldValue]
GO
ALTER TABLE [dbo].[TL_BASEDATA] ADD  CONSTRAINT [DF_TL_BASEDATA_NewValue]  DEFAULT ('') FOR [NewValue]
GO
ALTER TABLE [dbo].[TS_DEPT] ADD  CONSTRAINT [DF_TS_DEPT_IsLeafNode]  DEFAULT ((1)) FOR [IsLeafNode]
GO
ALTER TABLE [dbo].[TS_MENU] ADD  CONSTRAINT [DF_TS_MENU_ParentCode]  DEFAULT ('''') FOR [ParentCode]
GO
ALTER TABLE [dbo].[TS_OPER_ROLE] ADD  CONSTRAINT [DF_TS_OPER_ROLE_IsBeloneTo]  DEFAULT ((1)) FOR [IsBeloneTo]
GO
ALTER TABLE [dbo].[TS_ROLE_POWER] ADD  CONSTRAINT [DF_TS_POWER_IsVisible]  DEFAULT ((0)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[TS_ROLE_POWER] ADD  CONSTRAINT [DF_TS_POWER_IsReadOnly]  DEFAULT ((0)) FOR [IsReadOnly]
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BS系统使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_MENU', @level2type=N'COLUMN',@level2name=N'NameSpace'
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
         Begin Table = "TS_OPER_ROLE"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 240
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TS_ROLE"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 236
               Right = 389
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_OPER_ROLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_OPER_ROLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
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
         Begin Table = "TA_MENU"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 297
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "TS_ROLE_POWER"
            Begin Extent = 
               Top = 7
               Left = 289
               Bottom = 277
               Right = 466
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
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_POWER_MENU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_POWER_MENU'
GO
USE [master]
GO
ALTER DATABASE [ChangKePower] SET  READ_WRITE 
GO
