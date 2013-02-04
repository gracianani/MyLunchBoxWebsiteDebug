USE [master]
GO
/****** Object:  Database [MyLunchBoxDevelopment]    Script Date: 02/03/2013 22:01:14 ******/
CREATE DATABASE [MyLunchBoxDevelopment] ON  PRIMARY 
( NAME = N'MyLunchBoxDevelopment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MyLunchBoxDevelopment.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MyLunchBoxDevelopment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MyLunchBoxDevelopment_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyLunchBoxDevelopment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET ARITHABORT OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET  DISABLE_BROKER
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET  READ_WRITE
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET RECOVERY FULL
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET  MULTI_USER
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MyLunchBoxDevelopment] SET DB_CHAINING OFF
GO
USE [MyLunchBoxDevelopment]
GO
/****** Object:  User [AniZhao]    Script Date: 02/03/2013 22:01:14 ******/
CREATE USER [AniZhao] FOR LOGIN [anizhao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 02/03/2013 22:01:14 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'2a03d2ea-3323-445b-95b9-8cccbc07a07e', NULL)
/****** Object:  Table [dbo].[Roles]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([roleId], [roleName]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([roleId], [roleName]) VALUES (2, N'Customer')
INSERT [dbo].[Roles] ([roleId], [roleName]) VALUES (3, N'Restaurant')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[RewardTypes]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RewardTypes](
	[rewardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[rewardTypeDescription] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rewardTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RewardTypes] ON
INSERT [dbo].[RewardTypes] ([rewardTypeId], [rewardTypeDescription]) VALUES (1, N'lucky spin')
INSERT [dbo].[RewardTypes] ([rewardTypeId], [rewardTypeDescription]) VALUES (2, N'membership reward')
INSERT [dbo].[RewardTypes] ([rewardTypeId], [rewardTypeDescription]) VALUES (3, N'reward card')
INSERT [dbo].[RewardTypes] ([rewardTypeId], [rewardTypeDescription]) VALUES (4, N'order')
INSERT [dbo].[RewardTypes] ([rewardTypeId], [rewardTypeDescription]) VALUES (5, N'registor')
INSERT [dbo].[RewardTypes] ([rewardTypeId], [rewardTypeDescription]) VALUES (6, N'voting')
SET IDENTITY_INSERT [dbo].[RewardTypes] OFF
/****** Object:  Table [dbo].[RewardCards]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RewardCards](
	[RewardCardId] [int] IDENTITY(1,1) NOT NULL,
	[RewardPoints] [decimal](8, 2) NOT NULL,
	[RewardDescription] [nvarchar](100) NOT NULL,
	[UnitPrice] [decimal](8, 2) NOT NULL,
	[IsAvailable] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RewardCardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RewardCards] ON
INSERT [dbo].[RewardCards] ([RewardCardId], [RewardPoints], [RewardDescription], [UnitPrice], [IsAvailable]) VALUES (2, CAST(2100.00 AS Decimal(8, 2)), N'Reward card value $21.00', CAST(20.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[RewardCards] ([RewardCardId], [RewardPoints], [RewardDescription], [UnitPrice], [IsAvailable]) VALUES (3, CAST(5500.00 AS Decimal(8, 2)), N'Reward card value $55.00', CAST(50.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[RewardCards] ([RewardCardId], [RewardPoints], [RewardDescription], [UnitPrice], [IsAvailable]) VALUES (4, CAST(12000.00 AS Decimal(8, 2)), N'Reward card value $120.00', CAST(100.00 AS Decimal(8, 2)), 1)
SET IDENTITY_INSERT [dbo].[RewardCards] OFF
/****** Object:  Table [dbo].[RegisterQuestions]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterQuestions](
	[RegisterQuestionId] [int] IDENTITY(1,1) NOT NULL,
	[RegisterQuestionText] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RegisterQuestionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RegisterQuestions] ON
INSERT [dbo].[RegisterQuestions] ([RegisterQuestionId], [RegisterQuestionText]) VALUES (1, N'What was the name of your first pet?')
INSERT [dbo].[RegisterQuestions] ([RegisterQuestionId], [RegisterQuestionText]) VALUES (2, N'Where did you go the first time you flew on an airplane?')
INSERT [dbo].[RegisterQuestions] ([RegisterQuestionId], [RegisterQuestionText]) VALUES (3, N'What was the model of your first motorized vehicle?')
INSERT [dbo].[RegisterQuestions] ([RegisterQuestionId], [RegisterQuestionText]) VALUES (4, N'In what city did your parents meet?')
INSERT [dbo].[RegisterQuestions] ([RegisterQuestionId], [RegisterQuestionText]) VALUES (5, N'What was the name of your first manager?')
INSERT [dbo].[RegisterQuestions] ([RegisterQuestionId], [RegisterQuestionText]) VALUES (6, N'What is the name of the street where you grew up?')
SET IDENTITY_INSERT [dbo].[RegisterQuestions] OFF
/****** Object:  Table [dbo].[OrderStatusLevels]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatusLevels](
	[OrderStatusId] [int] NOT NULL,
	[OrderStatusDescription] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderStatusLevels] ([OrderStatusId], [OrderStatusDescription]) VALUES (1, N'Pending')
INSERT [dbo].[OrderStatusLevels] ([OrderStatusId], [OrderStatusDescription]) VALUES (2, N'Processing')
INSERT [dbo].[OrderStatusLevels] ([OrderStatusId], [OrderStatusDescription]) VALUES (3, N'Holded')
INSERT [dbo].[OrderStatusLevels] ([OrderStatusId], [OrderStatusDescription]) VALUES (4, N'Complete')
INSERT [dbo].[OrderStatusLevels] ([OrderStatusId], [OrderStatusDescription]) VALUES (5, N'Closed')
/****** Object:  Table [dbo].[Movies]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movies](
	[movieId] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[releaseDate] [datetime] NULL,
	[genre] [varchar](100) NULL,
	[price] [decimal](18, 0) NULL,
	[rating] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[movieId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON
INSERT [dbo].[Movies] ([movieId], [title], [releaseDate], [genre], [price], [rating]) VALUES (1, N'When Harry Met Sally', CAST(0x00007EFB00000000 AS DateTime), N'Comedy', CAST(10 AS Decimal(18, 0)), N'a')
INSERT [dbo].[Movies] ([movieId], [title], [releaseDate], [genre], [price], [rating]) VALUES (2, N'The Battleship', CAST(0x0000A07400000000 AS DateTime), N'family', CAST(13 AS Decimal(18, 0)), N'b')
INSERT [dbo].[Movies] ([movieId], [title], [releaseDate], [genre], [price], [rating]) VALUES (3, N'Always', CAST(0x0000A03700000000 AS DateTime), N'Kids', CAST(12 AS Decimal(18, 0)), N'R')
SET IDENTITY_INSERT [dbo].[Movies] OFF
/****** Object:  Table [dbo].[Locations]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](200) NOT NULL,
	[BusinessName] [varchar](200) NULL,
	[FirstName] [varchar](200) NOT NULL,
	[LastName] [varchar](200) NOT NULL,
	[Address1] [varchar](200) NOT NULL,
	[Address2] [varchar](200) NULL,
	[City] [varchar](200) NOT NULL,
	[StateOrProvince] [varchar](200) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[CountryCode] [varchar](10) NOT NULL,
	[phoneNumber] [varchar](20) NULL,
	[ZipCode] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (1, N'ElementBars', N'Element Bars', N'Element ', N'Bars', N'2021 W Fulton Street', N'', N'Chicago', N'Alabama', N'United States', N'US', N'2192188404', N'60613')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (3, N'Purdue West Lafayette (Campus)', N'Purdue West Lafayett (Campus)', N'Purdue', N'West  Lafayette', N'475 Stadium Mall Dr', N' ', N'West Lafayette', N'IN', N'United States', N'US', NULL, N'60613')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (4, N'UCLA Undergraduate Admissions', N'UCLA', N'UCLA', N'UCLA', N'1147 Murphy Hall', N'', N'Los Angeles', N'CA', N'United States', N'US', NULL, N'90095')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (5, N'Student Library (PWL)', N'Student Library', N'Student ', N'Library', N'4540 US Highway 52 W', N'', N'West Lafayette', N'IN', N'United States', N'US', N'7655832526', N'46711')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (8, N'Bell Tower', N'Bell Tower', N'Bell', N'Tower', N'1st Street & N Russell st', N'', N'West Lafayette', N'IN ', N'United States', N'US', NULL, N'46411')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (9, N'Elliott Hall of Music', N'Elliott Hall of Music', N'Elliott', N'Hall of Music', N'5th Street & Russell St.', N'', N'West Lafayette ', N'IN', N'United States', N'US', NULL, N'46411')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (11, N'Student Activities Center (UCLA)', N'Student Activities Center (UCLA)', N'Student', N'Activities Center', N'Bruin Walk East', N'', N'Los Angeles', N'CA', N'United States', N'US', NULL, N'90095')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (12, N'Boelter Hall', N'Boelter Hall', N'Boelter ', N'Hall', N'602 Charles E. Young Drive, East', N'', N'Los Angeles', N'CA', N'United States', N'US', NULL, N'90095')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (15, N'Dorm', N'Dorm', N'Dorm', N'Dorm', N'178 W 173rd Street ', N'', N'West Lafayette', N'IL', N'United States', N'US', N'2192188404', N'49852')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (16, N'Dorm', N'Dorm', N'Dorm', N'Dorm', N'178 W 173rd Street ', N'', N'West Lafayette', N'IL', N'United States', N'US', N'2192188404', N'49852')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (17, N'Dorm', N'Dorm', N'Dorm', N'Dorm', N'178 W 173rd Street ', N'', N'West Lafayette', N'IL', N'United States', N'US', N'2192188404', N'49852')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (18, N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'178 W 173rd Street ', N'', N'West Lafayette', N'IL', N'United States', N'US', N'2192188404', N'49852')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (19, N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'178 W 173rd Street ', N'', N'West Lafayette', N'IL', N'United States', N'US', N'2192188404', N'49852')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (20, N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'178 W 173rd Street ', N'', N'West Lafayette', N'IL', N'United States', N'US', N'2192188404', N'49852')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (21, N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'178 W 173rd Street ', N'', N'West Lafayette', N'IL', N'United States', N'US', N'2192188404', N'49852')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (22, N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'Dorm (Second Phase)', N'178 W 173rd Street ', N'', N'West Lafayette', N'IL', N'United States', N'US', N'2192188404', N'49852')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (23, N'Dorm2', N'Dorm2', N'Dorm2', N'Dorm2', N'169 th street', N'', N'hammond', N'in', N'United States', N'US', N'2198782312', N'60613')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (24, N'1927 Bridgepointe Circle', NULL, N'Kevin', N'Asher', N'1927 Bridgepointe Circle', N'#H342', N'San Mateo', N'CA', N'United States', N'US', NULL, N'94404')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (25, N'1540 Lorella Ave', NULL, N'yaqi', N'zhao', N'869 w buena ave', N'apt515', N'chicago', N'Illinois', N'United States', N'US', NULL, N'60613')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (26, N'HongYu', NULL, N'Hong', N'Yu', N'helllo.hyu', N'helllo.hyu', N'zz', N'Alabama', N'United States', N'US', NULL, N'21401')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (29, N'Feast From The East (UCLA)', N'Feast From The East (UCLA)', N'', N'', N'1949 Westwood Blvd', N'', N'Los Angeles', N'Alabama', N'United States', N'US', NULL, N'90025')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (30, N'', N'', N'', N'', N'', N'', N'', N'', N'United States', N'US', NULL, N'')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (31, N'Ca', N'Ca', N'', N'', N'ca2', N'', N'Ca', N'Alabama', N'United States', N'US', NULL, N'23456')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (32, N'yummy house (PWL)', N'yummy house (PWL)', N'', N'', N'2186 Cypress Avenue', N'', N'San Pablo', N'California', N'United States', N'US', NULL, N'94806')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (33, N'', N'', N'', N'', N'', N'', N'', N'', N'United States', N'US', N'', N'')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (34, N'', N'', N'', N'', N'', N'', N'', N'', N'United States', N'US', N'', N'')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (35, N'', N'', N'', N'', N'', N'', N'', N'', N'United States', N'US', N'', N'')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (36, N'Dorm (Phase III)', N'Dorm (Phase III)', N'Dorm (Phase III)', N'Dorm (Phase III)', N'2021 W Fulton St Ste 213', N'', N'West Lafayette', N'Indiana', N'United States', N'US', N'', N'60614')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (37, N'Dorm (Phase III)', N'Dorm (Phase III)', N'Dorm (Phase III)', N'Dorm (Phase III)', N'2021 W Fulton St Ste 213', N'', N'West Lafayette', N'Colorado', N'United States', N'US', N'', N'60614')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (38, N'UCD', N'UCD', N'UCD', N'UCD', N'5520 Frankford Ct', N'', N'Dallas', N'Texas', N'United States', N'US', N'9729770351', N'90989')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (39, N'UCD', N'UCD', N'UCD', N'UCD', N'5520 Frankford Ct', N'', N'Dallas', N'Texas', N'United States', N'US', N'9729770351', N'90989')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (40, N'United States', N'United States', N'United States', N'United States', N'25900 Oak Street', N'#116', N'Lomita', N'California', N'United States', N'US', N'3105675187', N'90717')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (41, N'Hometown Chinese Restaurant(UCD)', N'Hometown Chinese Restaurant(UCD)', N'', N'', N'132 E St', N'', N'Davis', N'California', N'United States', N'US', NULL, N'95616')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (42, N'Shanghai Town', N'Shanghai Town', N'', N'', N'1260 Lake Blvd  ', N'', N'Davis', N'California', N'United States', N'US', NULL, N'95616')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (43, N'Library', N'Library', N'Library', N'Library', N'1157 W Diversey Pkwy 303', N'', N'chicago', N'Illinois', N'United States', N'US', N'2199899988', N'60614')
INSERT [dbo].[Locations] ([LocationId], [LocationName], [BusinessName], [FirstName], [LastName], [Address1], [Address2], [City], [StateOrProvince], [Country], [CountryCode], [phoneNumber], [ZipCode]) VALUES (44, N'', NULL, N'', N'', N'', N'', N'', N'Alabama', N'United States', N'US', NULL, N'')
SET IDENTITY_INSERT [dbo].[Locations] OFF
/****** Object:  Table [dbo].[ItemTypes]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemTypes](
	[ItemTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ItemTypeDescription] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ItemTypes] ON
INSERT [dbo].[ItemTypes] ([ItemTypeId], [ItemTypeDescription]) VALUES (1, N'CustomBentoBox')
INSERT [dbo].[ItemTypes] ([ItemTypeId], [ItemTypeDescription]) VALUES (2, N'Beverage')
INSERT [dbo].[ItemTypes] ([ItemTypeId], [ItemTypeDescription]) VALUES (3, N'MembershipCard')
SET IDENTITY_INSERT [dbo].[ItemTypes] OFF
/****** Object:  Table [dbo].[DishTypes]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishTypes](
	[DishTypeId] [int] IDENTITY(1,1) NOT NULL,
	[DishTypeDescription] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DishTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DishTypes] ON
INSERT [dbo].[DishTypes] ([DishTypeId], [DishTypeDescription]) VALUES (1, N'Main Cource')
INSERT [dbo].[DishTypes] ([DishTypeId], [DishTypeDescription]) VALUES (2, N'Side Dish')
INSERT [dbo].[DishTypes] ([DishTypeId], [DishTypeDescription]) VALUES (3, N'Beverage')
INSERT [dbo].[DishTypes] ([DishTypeId], [DishTypeDescription]) VALUES (4, N'NoodleSoup')
SET IDENTITY_INSERT [dbo].[DishTypes] OFF
/****** Object:  Table [dbo].[DishStatusLevels]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishStatusLevels](
	[dishStatusId] [int] IDENTITY(1,1) NOT NULL,
	[dishStatusDescription] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dishStatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DishStatusLevels] ON
INSERT [dbo].[DishStatusLevels] ([dishStatusId], [dishStatusDescription]) VALUES (1, N'available')
INSERT [dbo].[DishStatusLevels] ([dishStatusId], [dishStatusDescription]) VALUES (2, N'unavailable')
SET IDENTITY_INSERT [dbo].[DishStatusLevels] OFF
/****** Object:  Table [dbo].[BentoBoxTypes]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BentoBoxTypes](
	[bentoBoxTypeId] [int] IDENTITY(1,1) NOT NULL,
	[bentoBoxDescription] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bentoBoxTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BentoBoxTypes] ON
INSERT [dbo].[BentoBoxTypes] ([bentoBoxTypeId], [bentoBoxDescription]) VALUES (1, N'1 Entry Plate')
INSERT [dbo].[BentoBoxTypes] ([bentoBoxTypeId], [bentoBoxDescription]) VALUES (2, N'2 Entry Plate')
INSERT [dbo].[BentoBoxTypes] ([bentoBoxTypeId], [bentoBoxDescription]) VALUES (3, N'3 Entry Plate')
INSERT [dbo].[BentoBoxTypes] ([bentoBoxTypeId], [bentoBoxDescription]) VALUES (4, N'4 Entry Plate')
INSERT [dbo].[BentoBoxTypes] ([bentoBoxTypeId], [bentoBoxDescription]) VALUES (5, N'A La Carte')
SET IDENTITY_INSERT [dbo].[BentoBoxTypes] OFF
/****** Object:  Table [dbo].[bentoBoxStatusLevels]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bentoBoxStatusLevels](
	[bentoBoxStatusId] [int] IDENTITY(1,1) NOT NULL,
	[bentoBoxStatusDescription] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bentoBoxStatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[bentoBoxStatusLevels] ON
INSERT [dbo].[bentoBoxStatusLevels] ([bentoBoxStatusId], [bentoBoxStatusDescription]) VALUES (1, N'available')
INSERT [dbo].[bentoBoxStatusLevels] ([bentoBoxStatusId], [bentoBoxStatusDescription]) VALUES (2, N'unavailable')
SET IDENTITY_INSERT [dbo].[bentoBoxStatusLevels] OFF
/****** Object:  Table [dbo].[Announcement]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[AnnouncementId] [int] IDENTITY(1,1) NOT NULL,
	[AnnouncementText] [nvarchar](1000) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[IsShownOnHomePage] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AnnouncementId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 02/03/2013 22:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'2a03d2ea-3323-445b-95b9-8cccbc07a07e', N'4bf73079-c071-4f41-b677-59b9ea2d84da', N'yaqi.zhao@elementbars.com', N'yaqi.zhao@elementbars.com', NULL, 0, CAST(0x0000A12A00A8A647 AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[hashedPAssword] [nvarchar](128) NOT NULL,
	[salt] [nvarchar](128) NOT NULL,
	[strkey] [nvarchar](128) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[phoneNumber] [varchar](15) NULL,
	[createdOn] [datetime] NOT NULL,
	[referrer] [varchar](100) NULL,
	[lastActivityAt] [datetime] NOT NULL,
	[lastLoginAt] [datetime] NOT NULL,
	[lastLockoutAt] [datetime] NOT NULL,
	[lastPasswordChangedAt] [datetime] NOT NULL,
	[isLockedOut] [bit] NOT NULL,
	[isApproved] [bit] NOT NULL,
	[facebookUserId] [bigint] NULL,
	[receiveEmail] [bit] NOT NULL,
	[isConfirmed] [bit] NOT NULL,
	[addressId] [int] NULL,
	[fbAccessToken] [varchar](255) NULL,
	[passwordQuestion] [nvarchar](255) NOT NULL,
	[passwordAnswer] [nvarchar](255) NOT NULL,
	[failedPasswordAttemptCount] [int] NOT NULL,
	[failedPasswordAnswerAttemptCount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (15, N'yaqi.zhao@elementbars.com', N'n6RvHb/L5OwJd4HyD0ROySxzZrg277+9DGJ0RhZu', N'6�btFn', N'7EED7AD1-495D-4E23-8734-F862001F30B7', N'Yaqi', N'Zhao', N'312-897-8967', CAST(0x0000A12A014C2CBB AS DateTime), NULL, CAST(0x0000A1580041F62E AS DateTime), CAST(0x0000A1580035D4C1 AS DateTime), CAST(0x0000A12A014C2CBB AS DateTime), CAST(0x0000A1580029F1EA AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'as', N'as', 2, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (16, N'JenWhite@gmail.com', N'zfw8DApoZg9E07WmunxVRxRHtHLAfOQtclhFzw==', N'wHzkLXJYRc8=', N'61774598-8267-4F35-94A7-4A7937FBEDE2', N'Jen', N'White', N'219-989-4581', CAST(0x0000A1370028BFF0 AS DateTime), NULL, CAST(0x0000A14F0011D404 AS DateTime), CAST(0x0000A14E016CBB9A AS DateTime), CAST(0x0000A1370028BFF0 AS DateTime), CAST(0x0000A1370028BFF0 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcde', N'abcde', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (17, N'JimmyJohnson@gmail.com', N'3aiIJdCs811zVKXPyC/v2hBbU+Ronye0VXM/fA==', N'aJ8ntFVzP3w=', N'27E5A1D0-7ACF-4478-9B0B-D9EBE5132906', N'Jimmy', N'Johnson', N'219-989-2312', CAST(0x0000A13700295229 AS DateTime), NULL, CAST(0x0000A139008E03F2 AS DateTime), CAST(0x0000A13700295229 AS DateTime), CAST(0x0000A13700295229 AS DateTime), CAST(0x0000A13700295229 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdef', N'abcdef', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (18, N'starbucks@starbucks.com', N'0XxMmcw1c/x4ckahMYJh3VFpIeABEkA2drC0Ew==', N'ARJANnawtBM=', N'DF82133F-72C8-4B90-80BA-CF9FCFFD110A', N'', N'', NULL, CAST(0x0000A13900952037 AS DateTime), NULL, CAST(0x0000A13900952037 AS DateTime), CAST(0x0000A13900952037 AS DateTime), CAST(0x0000A13900952037 AS DateTime), CAST(0x0000A13900952037 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdefg', N'abcdefg', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (19, N'milkyway@milkyway.com', N'p4fBgjDE69iXiRJNoDIWC5QUcgepEbL9Ku/Yog==', N'qRGy/Srv2KI=', N'C5250DB5-F24A-4CD9-AC30-FAF6389F1AAA', N'', N'', NULL, CAST(0x0000A139009599C5 AS DateTime), NULL, CAST(0x0000A139009599C5 AS DateTime), CAST(0x0000A139009599C5 AS DateTime), CAST(0x0000A139009599C5 AS DateTime), CAST(0x0000A139009599C5 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdefg', N'abcdefg', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (20, N'rayhay@rayhay.com', N'pP4Na3wOVKrnR+RXZZ0Pysxb27xH4zDVhUqUDA==', N'R+Mw1YVKlAw=', N'6FF5BE1C-ECC2-4056-B73D-6588A5EA5BBC', N'', N'', NULL, CAST(0x0000A13900961D94 AS DateTime), NULL, CAST(0x0000A13900961D94 AS DateTime), CAST(0x0000A13900961D94 AS DateTime), CAST(0x0000A13900961D94 AS DateTime), CAST(0x0000A13900961D94 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdefg', N'abcdefg', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (21, N'hayhayday@rayhay.com', N'm0KOdkHxQF3AQ8AmyOJEy+37GPoGDaB2+oU4HA==', N'Bg2gdvqFOBw=', N'B049DE81-1A61-4C00-8F25-B81605FDDF6F', N'', N'', NULL, CAST(0x0000A13900964B0A AS DateTime), NULL, CAST(0x0000A13900964B0A AS DateTime), CAST(0x0000A13900964B0A AS DateTime), CAST(0x0000A13900964B0A AS DateTime), CAST(0x0000A13900964B0A AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdefg', N'abcdefg', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (22, N'hayhayhayday@rayhay.com', N'CZCkp/niAtrR9levtdPPavSjrlkDtWaYncSkMw==', N'A7VmmJ3EpDM=', N'AC0DD7DC-9326-44CD-9B54-DA7D3693D43B', N'', N'', NULL, CAST(0x0000A1390096720A AS DateTime), NULL, CAST(0x0000A1390096720A AS DateTime), CAST(0x0000A1390096720A AS DateTime), CAST(0x0000A1390096720A AS DateTime), CAST(0x0000A1390096720A AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdefg', N'abcdefg', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (23, N'idealDay@gmail.com', N'JGO3X3IDsWtuNNxsHJyig5+LZuC7I4bVwri2vg==', N'uyOG1cK4tr4=', N'F516C07B-A3F2-40A7-BCA8-70CA74F620F4', N'', N'', NULL, CAST(0x0000A13900969CB9 AS DateTime), NULL, CAST(0x0000A13900969CB9 AS DateTime), CAST(0x0000A13900969CB9 AS DateTime), CAST(0x0000A13900969CB9 AS DateTime), CAST(0x0000A13900969CB9 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdef', N'abcdef', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (24, N'deardevil@gmail.com', N'QaeLGrMQIkxevIUmrKhXFPJLjNMZDY6j58739g==', N'GQ2Oo+fO9/Y=', N'469E473A-6816-4171-A7E2-4738BFE3BB72', N'', N'', NULL, CAST(0x0000A1390096B590 AS DateTime), NULL, CAST(0x0000A1390096B590 AS DateTime), CAST(0x0000A1390096B590 AS DateTime), CAST(0x0000A1390096B590 AS DateTime), CAST(0x0000A1390096B590 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdef', N'abcdef', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (25, N'dearpiggy@gmail.com', N'X+n/JTw7j+G8IgahIQpz47aXKDXnHhe9yYaatg==', N'5x4XvcmGmrY=', N'ED86AE00-2E8C-4316-B29D-20E01988BF81', N'', N'', NULL, CAST(0x0000A1390096D88B AS DateTime), NULL, CAST(0x0000A1390096D88B AS DateTime), CAST(0x0000A1390096D88B AS DateTime), CAST(0x0000A1390096D88B AS DateTime), CAST(0x0000A1390096D88B AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdef', N'abcdef', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (26, N'dearlovelyMan@gmail.com', N'H5kg502vb4qVoZE8A2RcgPFx++6zF8C6yDDE2Q==', N'sxfAusgwxNk=', N'0030E89E-BA93-4B29-AEB5-533DD6E13785', N'', N'', NULL, CAST(0x0000A139009721C1 AS DateTime), NULL, CAST(0x0000A13900A103DF AS DateTime), CAST(0x0000A139009721C1 AS DateTime), CAST(0x0000A139009721C1 AS DateTime), CAST(0x0000A139009721C1 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdef', N'abcdef', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (27, N'hello.hyu@gmail.com', N'/Z7tBjKbAnvSYaWYCX8THbVxZM9QTlRMTDFKM3g2RT0=', N'PNTLL1J3x6E=', N'B1766600-6CC5-4C66-9B0C-E8184B3388F6', N'', N'', NULL, CAST(0x0000A13D01649B93 AS DateTime), NULL, CAST(0x0000A1580049D85C AS DateTime), CAST(0x0000A15A01576C76 AS DateTime), CAST(0x0000A13D01649B93 AS DateTime), CAST(0x0000A1580043B158 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'hello', N'123', 2, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (28, N'keating007@sina.com', N'O6LaStrgFVmfnZkFEJemKhxnZZtrp5vsNXavtg==', N'a6eb7DV2r7Y=', N'AB64199F-73F2-4F75-BAF8-1A1973510556', N'', N'', NULL, CAST(0x0000A14000109A5E AS DateTime), NULL, CAST(0x0000A14000109A5E AS DateTime), CAST(0x0000A14000109A5E AS DateTime), CAST(0x0000A14000109A5E AS DateTime), CAST(0x0000A14000109A5E AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'who?', N'me', 1, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (29, N'testtesttest@gmail.com', N'svs1Mz8kdIled0KWSrjVKBQUrfhi2qhfe7liZw==', N'YtqoX3u5Ymc=', N'2A25F609-D463-4A97-82D0-42C91D771E39', N'', N'', NULL, CAST(0x0000A14200320BCF AS DateTime), NULL, CAST(0x0000A14400294A53 AS DateTime), CAST(0x0000A14200320BCF AS DateTime), CAST(0x0000A14200320BCF AS DateTime), CAST(0x0000A14200320BCF AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdef', N'abv', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (30, N'gracian.ani@gmail.com', N'YgJnIFQjLRPf36gMPVEAhEC2HPuNM8/Xxo8GHA==', N'jTPP18aPBhw=', N'420773B1-D0A0-4F58-BACA-F88A56CA3064', N'', N'', NULL, CAST(0x0000A14E002DE8F6 AS DateTime), NULL, CAST(0x0000A158002C8151 AS DateTime), CAST(0x0000A14E002DE8F6 AS DateTime), CAST(0x0000A14E002DE8F6 AS DateTime), CAST(0x0000A14E002DE8F6 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'abcdef', N'abcdef', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (31, N'tetttett@gmail.com', N'P/LK2ACxUZN3cybkgeNGEj5XQYBML0h1CeSvOw==', N'TC9IdQnkrzs=', N'858AC2AB-22E8-4784-A2EF-E3642ABFD7B8', N'', N'', NULL, CAST(0x0000A14F01575E45 AS DateTime), NULL, CAST(0x0000A14F01575E45 AS DateTime), CAST(0x0000A14F01575E45 AS DateTime), CAST(0x0000A14F01575E45 AS DateTime), CAST(0x0000A14F01575E45 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'aaa', N'aaa', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (32, N'aacc@test.com', N'9QmYXfYuPjrTwXVhmg0NBQo8dM4n9PbE2X9/Iw==', N'J/T2xNl/fyM=', N'790CB437-B349-436F-9C63-315B20560480', N'', N'', NULL, CAST(0x0000A14F015A6AD2 AS DateTime), NULL, CAST(0x0000A14F01655B52 AS DateTime), CAST(0x0000A14F015F1E0D AS DateTime), CAST(0x0000A14F015A6AD2 AS DateTime), CAST(0x0000A14F015A6AD2 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'aaa', N'ccc', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (33, N'bbccdd@gmail.com', N'ub9Up73KUJLvc3fi5F+sV6VlkUVw6oc4D4Ur+w==', N'cOqHOA+FK/s=', N'9EE57A55-C954-4CCB-B8DE-73F47512496B', N'', N'', NULL, CAST(0x0000A14F0165ED1F AS DateTime), NULL, CAST(0x0000A14F0165ED1F AS DateTime), CAST(0x0000A14F0165ED1F AS DateTime), CAST(0x0000A14F0165ED1F AS DateTime), CAST(0x0000A14F0165ED1F AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'adfad', N'afsda', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (34, N'ccddee@gmail.com', N'kRRmxbY41CWtkt+lBH1YHLBLXjVxuWlepj5hww==', N'cblpXqY+YcM=', N'66D7A5CD-C20F-4AB4-A3C5-CD411EBA2719', N'', N'', NULL, CAST(0x0000A14F0166A671 AS DateTime), NULL, CAST(0x0000A14F0166A671 AS DateTime), CAST(0x0000A14F0166A671 AS DateTime), CAST(0x0000A14F0166A671 AS DateTime), CAST(0x0000A14F0166A671 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'dsf', N'dsfa', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (35, N'cdcdcd@gmail.com', N'592mSZQl9elH0pylLM1IaTxRvJ7fmo4mZo60Kw==', N'35qOJmaOtCs=', N'4976A0CF-91E5-4115-9809-E84B9803D5AF', N'', N'', NULL, CAST(0x0000A14F01671624 AS DateTime), NULL, CAST(0x0000A14F01671624 AS DateTime), CAST(0x0000A14F01671624 AS DateTime), CAST(0x0000A14F01671624 AS DateTime), CAST(0x0000A14F01671624 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'fdsa', N'daf', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (36, N'adfasf@gmail.com', N'+HYyB6pAPCndVAHVdlHwLKvXzOCoU9+BrlFCOA==', N'qFPfga5RQjg=', N'D7800D58-BAFA-43FF-9168-9270EB6D8AD1', N'', N'', NULL, CAST(0x0000A14F01687E9D AS DateTime), NULL, CAST(0x0000A14F01698A03 AS DateTime), CAST(0x0000A14F01687E9D AS DateTime), CAST(0x0000A14F01687E9D AS DateTime), CAST(0x0000A14F01687E9D AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'adf', N'adf', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (37, N'passwordtest1@gmail.com', N'zCHVRuyMokRgqoN9nGGenOcPUR5zWKgX25cJiw==', N'c1ioF9uXCYs=', N'53379A14-9800-4B20-ABD5-8D7B76FF0E27', N'', N'', NULL, CAST(0x0000A158000EAB87 AS DateTime), NULL, CAST(0x0000A158000EAB87 AS DateTime), CAST(0x0000A158000EAB87 AS DateTime), CAST(0x0000A158000EAB87 AS DateTime), CAST(0x0000A158000EAB87 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'as', N'as', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (38, N'passwordtest2@gmail.com', N'VjvECbgMG0kqzms+E/gyYaCwEllrUTZidkNObTc2ST0=', N'kQ6bvCNm76I=', N'FC402D95-A3FA-4791-B11F-E3E69922E72A', N'', N'', NULL, CAST(0x0000A158000EFF2F AS DateTime), NULL, CAST(0x0000A158000F3F97 AS DateTime), CAST(0x0000A158000F3F9E AS DateTime), CAST(0x0000A158000EFF2F AS DateTime), CAST(0x0000A158000F3FA3 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'as', N'0qpU8/AWiUL0QEzVfittoi0dQcORDpu8I2bvog==', 0, 1)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (39, N'yuhong651@gmail.com', N'pg0dMdxXUw8RNkT607HgzE/FWrc4a1IweGUwNUk1UT0=', N'8kR0xe05I5Q=', N'5F8376E3-53A7-4F9A-B12E-352BB06AAD10', N'', N'', NULL, CAST(0x0000A158002CF667 AS DateTime), NULL, CAST(0x0000A158002D13AE AS DateTime), CAST(0x0000A158002D13B7 AS DateTime), CAST(0x0000A158002CF667 AS DateTime), CAST(0x0000A158002D13B8 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'hello', N'LRSVBBqTDkOxOXU+K0Hjst9TF9PyRHTF7TkjlA==', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (40, N'testquestions@gmail.com', N'wCa+xPvAC+JwfE/JaNvSjPkg08rXSLLpM3eSoA==', N'10iy6TN3kqA=', N'F65B96A0-2956-4710-9F43-5FDBA412B7A6', N'', N'', NULL, CAST(0x0000A158002F1D25 AS DateTime), NULL, CAST(0x0000A158002F1D25 AS DateTime), CAST(0x0000A158002F1D25 AS DateTime), CAST(0x0000A158002F1D25 AS DateTime), CAST(0x0000A158002F1D25 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'1', N'/crK9kUWKLvEll7wh/FUsoMT12jXSLLpM3eSoA==', 0, 0)
INSERT [dbo].[Users] ([userId], [email], [hashedPAssword], [salt], [strkey], [firstName], [lastName], [phoneNumber], [createdOn], [referrer], [lastActivityAt], [lastLoginAt], [lastLockoutAt], [lastPasswordChangedAt], [isLockedOut], [isApproved], [facebookUserId], [receiveEmail], [isConfirmed], [addressId], [fbAccessToken], [passwordQuestion], [passwordAnswer], [failedPasswordAttemptCount], [failedPasswordAnswerAttemptCount]) VALUES (41, N'testquestion2@gmail.com', N'Wgn0xkMdY5j2DyDLcx/CI7+FbmlHbVFIdkpzVDNadz0=', N'GmQHvJsT3Zw=', N'D3F9432D-62AE-4F9F-8809-403DA14F2354', N'', N'', NULL, CAST(0x0000A158002FC8FC AS DateTime), NULL, CAST(0x0000A15800344DBE AS DateTime), CAST(0x0000A15800344DBF AS DateTime), CAST(0x0000A158002FC8FC AS DateTime), CAST(0x0000A15800344DC0 AS DateTime), 0, 1, NULL, 0, 0, NULL, NULL, N'What was the name of your first pet?', N'UBzskpYSQWzDLsd41+rhAIjUlIgaZAe8mxPdnA==', 0, 11)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[Universities]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universities](
	[UniversityId] [int] IDENTITY(1,1) NOT NULL,
	[UniversityName] [nvarchar](200) NOT NULL,
	[UniversityLocationId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UniversityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Universities] ON
INSERT [dbo].[Universities] ([UniversityId], [UniversityName], [UniversityLocationId]) VALUES (1, N'Purdue University West Lafayette', 3)
INSERT [dbo].[Universities] ([UniversityId], [UniversityName], [UniversityLocationId]) VALUES (2, N'University of California, Los Angeles)', 4)
INSERT [dbo].[Universities] ([UniversityId], [UniversityName], [UniversityLocationId]) VALUES (5, N'UC Davis', 40)
SET IDENTITY_INSERT [dbo].[Universities] OFF
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 02/03/2013 22:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[University_Delivery]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[University_Delivery](
	[universityDeliveryId] [int] IDENTITY(1,1) NOT NULL,
	[universityId] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[deliveryTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[universityDeliveryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[University_Delivery] ON
INSERT [dbo].[University_Delivery] ([universityDeliveryId], [universityId], [locationId], [deliveryTime]) VALUES (1, 1, 5, CAST(0x0000A13E00C5C100 AS DateTime))
INSERT [dbo].[University_Delivery] ([universityDeliveryId], [universityId], [locationId], [deliveryTime]) VALUES (3, 1, 9, CAST(0x0000A13E00C5C100 AS DateTime))
INSERT [dbo].[University_Delivery] ([universityDeliveryId], [universityId], [locationId], [deliveryTime]) VALUES (4, 2, 11, CAST(0x0000A13E00C5C100 AS DateTime))
INSERT [dbo].[University_Delivery] ([universityDeliveryId], [universityId], [locationId], [deliveryTime]) VALUES (15, 2, 23, CAST(0x0000A14000C5C100 AS DateTime))
INSERT [dbo].[University_Delivery] ([universityDeliveryId], [universityId], [locationId], [deliveryTime]) VALUES (20, 1, 37, CAST(0x0000A15100BAC480 AS DateTime))
INSERT [dbo].[University_Delivery] ([universityDeliveryId], [universityId], [locationId], [deliveryTime]) VALUES (21, 5, 43, CAST(0x0000A15700BAC480 AS DateTime))
SET IDENTITY_INSERT [dbo].[University_Delivery] OFF
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  Table [dbo].[UsersInRoles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInRoles](
	[usersInRolesId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[roleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usersInRolesId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UsersInRoles] ON
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (1, 15, 1)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (2, 27, 1)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (3, 16, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (4, 17, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (5, 18, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (6, 19, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (7, 20, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (8, 21, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (9, 22, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (10, 23, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (11, 24, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (12, 25, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (13, 26, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (14, 28, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (15, 29, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (16, 30, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (17, 31, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (18, 32, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (19, 36, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (20, 37, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (21, 38, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (22, 39, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (23, 40, 2)
INSERT [dbo].[UsersInRoles] ([usersInRolesId], [userId], [roleId]) VALUES (24, 41, 2)
SET IDENTITY_INSERT [dbo].[UsersInRoles] OFF
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'2a03d2ea-3323-445b-95b9-8cccbc07a07e', N'4bf73079-c071-4f41-b677-59b9ea2d84da', N'8vf9FXO3+V9fWr+pGK4MygNjHO0=', 1, N'Tz3WXFsS8ToMv83WAnWfzQ==', NULL, N'yaqi.zhao@elementbars.com', N'yaqi.zhao@elementbars.com', NULL, NULL, 1, 0, CAST(0x0000A12800B6F904 AS DateTime), CAST(0x0000A12A00A8A647 AS DateTime), CAST(0x0000A12800B6F904 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[ShoppingCartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[LastUpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoppingCartId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (283, 27, CAST(0x0000A14E015FE2DA AS DateTime), CAST(0x0000A14E015FE2DA AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (289, 15, CAST(0x0000A14E018750E5 AS DateTime), CAST(0x0000A14E018750E6 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (290, 15, CAST(0x0000A14E0187681C AS DateTime), CAST(0x0000A14E0187681C AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (292, 27, CAST(0x0000A14F001D04AA AS DateTime), CAST(0x0000A14F001D04AA AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (293, 27, CAST(0x0000A14F001D04C3 AS DateTime), CAST(0x0000A14F001D04C3 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (295, 15, CAST(0x0000A14F0030484C AS DateTime), CAST(0x0000A14F0030484C AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (296, 27, CAST(0x0000A14F00313292 AS DateTime), CAST(0x0000A14F00313292 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (297, NULL, CAST(0x0000A14F01563FC2 AS DateTime), CAST(0x0000A14F01563FC2 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (300, 27, CAST(0x0000A14F0156E16E AS DateTime), CAST(0x0000A14F0156E16E AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (303, NULL, CAST(0x0000A14F015AE75E AS DateTime), CAST(0x0000A14F015AE75E AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (304, NULL, CAST(0x0000A14F015B4B24 AS DateTime), CAST(0x0000A14F015B4B24 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (305, NULL, CAST(0x0000A14F015F1242 AS DateTime), CAST(0x0000A14F015F1242 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (306, NULL, CAST(0x0000A14F01656FD2 AS DateTime), CAST(0x0000A14F01656FD2 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (307, NULL, CAST(0x0000A14F01667E82 AS DateTime), CAST(0x0000A14F01667E82 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (308, NULL, CAST(0x0000A14F0166F6EA AS DateTime), CAST(0x0000A14F0166F6EA AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (325, 27, CAST(0x0000A150016B0DC0 AS DateTime), CAST(0x0000A150016B0DC0 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (328, NULL, CAST(0x0000A150016B5174 AS DateTime), CAST(0x0000A150016B5174 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (338, NULL, CAST(0x0000A15001708A15 AS DateTime), CAST(0x0000A15001708A15 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (345, NULL, CAST(0x0000A15001718669 AS DateTime), CAST(0x0000A15001718669 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (350, NULL, CAST(0x0000A1500171F42F AS DateTime), CAST(0x0000A1500171F42F AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (353, NULL, CAST(0x0000A15100080D58 AS DateTime), CAST(0x0000A15100080D58 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (356, NULL, CAST(0x0000A151000F7696 AS DateTime), CAST(0x0000A151000F7696 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (357, NULL, CAST(0x0000A151000FDBEB AS DateTime), CAST(0x0000A151000FDBEB AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (359, 27, CAST(0x0000A1510012BF75 AS DateTime), CAST(0x0000A1510012BF75 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (363, 27, CAST(0x0000A151003080DE AS DateTime), CAST(0x0000A151003080DE AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (368, NULL, CAST(0x0000A1510036774E AS DateTime), CAST(0x0000A1510036774E AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (369, NULL, CAST(0x0000A1510036C5B7 AS DateTime), CAST(0x0000A1510036C5B7 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (371, 27, CAST(0x0000A1510037D436 AS DateTime), CAST(0x0000A1510037D436 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (373, NULL, CAST(0x0000A1510037DE32 AS DateTime), CAST(0x0000A1510037DE32 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (376, NULL, CAST(0x0000A151003831D5 AS DateTime), CAST(0x0000A151003831D5 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (377, NULL, CAST(0x0000A1530152ED9E AS DateTime), CAST(0x0000A1530152ED9E AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (378, NULL, CAST(0x0000A1530173423C AS DateTime), CAST(0x0000A1530173423C AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (381, 15, CAST(0x0000A154005615F8 AS DateTime), CAST(0x0000A154005615F8 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (385, 15, CAST(0x0000A1550167A648 AS DateTime), CAST(0x0000A1550167A649 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (386, NULL, CAST(0x0000A1550169C58C AS DateTime), CAST(0x0000A1550169C58C AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (389, NULL, CAST(0x0000A156001887AF AS DateTime), CAST(0x0000A156001887AF AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (397, 27, CAST(0x0000A156002D4D2A AS DateTime), CAST(0x0000A156002D4D2A AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (400, 27, CAST(0x0000A15600348825 AS DateTime), CAST(0x0000A15600348825 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (402, 15, CAST(0x0000A156016A7959 AS DateTime), CAST(0x0000A156016A7959 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (404, 15, CAST(0x0000A157000D994D AS DateTime), CAST(0x0000A157000D994D AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (410, 15, CAST(0x0000A1570035AB80 AS DateTime), CAST(0x0000A1570035AB80 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (411, NULL, CAST(0x0000A157003A8296 AS DateTime), CAST(0x0000A157003A8296 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (412, NULL, CAST(0x0000A15800BE3D3A AS DateTime), CAST(0x0000A15800BE3D3E AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (413, NULL, CAST(0x0000A1570166EAF7 AS DateTime), CAST(0x0000A1570166EAF7 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (414, NULL, CAST(0x0000A158000C7BDC AS DateTime), CAST(0x0000A158000C7BDC AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (415, NULL, CAST(0x0000A158000CC305 AS DateTime), CAST(0x0000A158000CC305 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (416, NULL, CAST(0x0000A158000CF326 AS DateTime), CAST(0x0000A158000CF326 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (421, NULL, CAST(0x0000A158000E6DFE AS DateTime), CAST(0x0000A158000E6DFE AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (422, NULL, CAST(0x0000A158000E89A0 AS DateTime), CAST(0x0000A158000E89A0 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (423, NULL, CAST(0x0000A158000EDF00 AS DateTime), CAST(0x0000A158000EDF00 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (431, 15, CAST(0x0000A1580021CCAA AS DateTime), CAST(0x0000A1580021CCAA AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (432, 27, CAST(0x0000A1580022288E AS DateTime), CAST(0x0000A1580022288E AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (433, NULL, CAST(0x0000A15800274511 AS DateTime), CAST(0x0000A15800274512 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (434, NULL, CAST(0x0000A158002767F7 AS DateTime), CAST(0x0000A158002767F7 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (435, NULL, CAST(0x0000A158002AD205 AS DateTime), CAST(0x0000A158002AD205 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (436, NULL, CAST(0x0000A158002CD441 AS DateTime), CAST(0x0000A158002CD441 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (437, NULL, CAST(0x0000A158002CFABA AS DateTime), CAST(0x0000A158002CFABA AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (438, NULL, CAST(0x0000A158002D236B AS DateTime), CAST(0x0000A158002D236B AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (440, NULL, CAST(0x0000A158002FA6BF AS DateTime), CAST(0x0000A158002FA6BF AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (441, NULL, CAST(0x0000A158002FE078 AS DateTime), CAST(0x0000A158002FE078 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (442, NULL, CAST(0x0000A1580030ED59 AS DateTime), CAST(0x0000A1580030ED59 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (443, 27, CAST(0x0000A1580031558E AS DateTime), CAST(0x0000A1580031558E AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (444, NULL, CAST(0x0000A15800325316 AS DateTime), CAST(0x0000A15800325317 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (449, 15, CAST(0x0000A15800420282 AS DateTime), CAST(0x0000A15800420282 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (450, NULL, CAST(0x0000A1580043B5B0 AS DateTime), CAST(0x0000A1580043B5B0 AS DateTime))
INSERT [dbo].[ShoppingCarts] ([ShoppingCartId], [UserId], [CreatedAt], [LastUpdatedAt]) VALUES (451, NULL, CAST(0x0000A158004A38C7 AS DateTime), CAST(0x0000A158004A38C7 AS DateTime))
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[TxnId] [varchar](50) NULL,
	[UserId] [int] NULL,
	[PayerEmail] [varchar](100) NOT NULL,
	[OrderStatusId] [int] NULL,
	[OrderReceivedAt] [datetime] NOT NULL,
	[OrderDescription] [nvarchar](500) NOT NULL,
	[PaymentStatus] [varchar](50) NOT NULL,
	[Gross] [decimal](8, 2) NOT NULL,
	[Fee] [decimal](8, 2) NOT NULL,
	[Tax] [decimal](8, 2) NOT NULL,
	[PaymentNote] [nvarchar](200) NOT NULL,
	[Savings] [decimal](8, 2) NOT NULL,
	[ReceiverFirstName] [nvarchar](50) NULL,
	[ReceiverLastName] [nvarchar](50) NULL,
	[DeliveryLocationId] [int] NOT NULL,
	[receiverPhoneNumber] [varchar](20) NULL,
	[DeliveryTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (3, N'6N810572S1154661A', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12A01609478 AS DateTime), N'', N'', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12B00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (4, N'30W50725ED3813914', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12A0160E562 AS DateTime), N'', N'', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12B00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (5, N'8MP08977HW4069600', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12A01615253 AS DateTime), N'', N'', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12B00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (6, N'10C527254J758701P', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12A01881318 AS DateTime), N'', N'', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12B00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (7, N'10J55691C3463004Y', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12A018885B9 AS DateTime), N'', N'', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12B00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (8, N'4LC250064E0926747', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12B0002337D AS DateTime), N'LunchCombo水果1,水果2', N'', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12C00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (9, N'1PA793551X288130W', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12C001E5E50 AS DateTime), N'LunchComboDonut,Hot Dog', N'', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12D00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (10, N'0DR45041N5932471C', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12C0020F137 AS DateTime), N'LunchComboDonut', N'', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12D00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (11, N'7YA3563732129545F', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12C00213AC1 AS DateTime), N'LunchComboDonut', N'', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12D00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (12, N'2K9640042H992094N', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A12E000D5183 AS DateTime), N'Bowl Hamburger,Donut,Gingerbread Man,Bowl Donut,Bowl Hamburger', N'', CAST(17.97 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A12F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (13, N'9T721180FR0004525', 26, N'dearlovelyMan@gmail.com', 2, CAST(0x0000A13B00A2CF29 AS DateTime), N'3-Entree PlateMoo Shu Pork,Mixed Veggies,Orange Chicken,A La carteMixed Veggies', N'', CAST(12.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13C00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (14, N'5LD55597K11437630', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E00010672 AS DateTime), N'A La carteMixed Veggies', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (15, N'05195504KV195670W', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E0004BE93 AS DateTime), N'A La carteMoo Shu Pork,A La carteMoo Shu Pork,Mixed Veggies', N'', CAST(9.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (16, N'1G144570W32760045', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E000646B5 AS DateTime), N'', N'', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (17, N'16A958070V7237037', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E00069A2E AS DateTime), N'A La carteMixed Veggies', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (18, N'2R972600BS106591U', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E00071628 AS DateTime), N'A La carteMoo Shu Pork', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (19, N'7LA36533LW428283E', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E0008140A AS DateTime), N'A La carteMoo Shu Pork', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (20, N'6AF141824V577834X', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E0009D5DF AS DateTime), N'A La carteMoo Shu Pork', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (21, N'77R44523K0639004L', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E000A4732 AS DateTime), N'', N'', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (22, N'6R698226H54533523', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E000A6DD0 AS DateTime), N'A La carteMixed Veggies', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (23, N'6RU400718U258431G', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E000B5B8C AS DateTime), N'A La carteMixed Veggies', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (24, N'5HS72494L7637091W', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E000BF555 AS DateTime), N'A La carteMixed Veggies', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (25, N'1P933704TG409171H', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E000C9F3E AS DateTime), N'A La carteMoo Shu Pork', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (26, N'0FW706505K5378234', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E000CCE20 AS DateTime), N'A La carteMoo Shu Pork,3-Entree PlateKong Pao Chicken,Moo Shu Pork,Orange Chicken', N'', CAST(12.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (27, N'3KS31600UX2279336', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E0019187E AS DateTime), N'A La carteMoo Shu Pork', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (28, N'5ET979760R547311X', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E00198D21 AS DateTime), N'3-Entree PlateMoo Shu Pork,Mixed Veggies,Kong Pao Chicken', N'', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (29, N'5LC90943W8578145M', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E001AE8E7 AS DateTime), N'A La carteMoo Shu Pork', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (30, N'8WD75479FF271214T', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E001B6991 AS DateTime), N'A La carteKong Pao Chicken,Mushroom Chicken', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 1, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (31, N'67B4317076833383Y', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13E00208B74 AS DateTime), N'A La carteMixed Veggies,Orange Chicken', N'', CAST(4.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), N'Austen', N'Ito', 3, NULL, CAST(0x0000A13F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (32, N'7AB952101N678721N', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13F00185D80 AS DateTime), N'3-Entree Plate: Moo Shu Pork', N'', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), N'yaqi', N'zhao', 3, NULL, CAST(0x0000A14000C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (33, N'7YH97532GH1928807', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A13F001C9C5E AS DateTime), N'Bowl : Moo Shu Pork', N'', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), N'Austen', N'Ito', 9, NULL, CAST(0x0000A14000C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (34, N'74C78245AT8743432', 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A1420017CAA7 AS DateTime), N'2-Entree Plate: Kong Pao Chicken,Rice,Mushroom Chicken,Bowl : Kong Pao Chicken,Rice', N'', CAST(26.96 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), N'Austen', N'dd', 9, NULL, CAST(0x0000A14300C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (35, N'57A22732316020911', 29, N'testtesttest@gmail.com', 2, CAST(0x0000A1420172E01C AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice', N'', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 9, NULL, CAST(0x0000A14300C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (39, N'reward', 29, N'testtesttest@gmail.com', 2, CAST(0x0000A1430037066A AS DateTime), N'3-Entree Plate: Mixed Veggies,Moo Shu Pork,Kong Pao Chicken,Rice', N'paid', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 5, NULL, CAST(0x0000A14400C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (40, N'reward', 29, N'testtesttest@gmail.com', 2, CAST(0x0000A143008F4279 AS DateTime), N'3-Entree Plate: Mixed Veggies,Moo Shu Pork,Kong Pao Chicken,Rice', N'paid', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 5, NULL, CAST(0x0000A14400C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (41, N'reward', 29, N'testtesttest@gmail.com', 2, CAST(0x0000A14400074AB9 AS DateTime), N'3-Entree Plate: Mixed Veggies,Moo Shu Pork,Kong Pao Chicken,Rice', N'paid', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(7.99 AS Decimal(8, 2)), N'213', N'123', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (42, N'reward', 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144001172DE AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice', N'paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'', CAST(6.99 AS Decimal(8, 2)), N'Jennie', N'Kim', 5, N'05626906232', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (44, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144001D9428 AS DateTime), N'3-Entree Plate: Mixed Veggies,Moo Shu Pork,Kong Pao Chicken,Rice', N'WaitingForPayment', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.02 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'05626906232', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (45, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144001E8C4B AS DateTime), N'2-Entree Plate: Moo Shu Pork,Kong Pao Chicken,Noodle', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'2192188404', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (46, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144001F7DF3 AS DateTime), N'2-Entree Plate: Moo Shu Pork,Kong Pao Chicken,Noodle', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'123', N'123', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (47, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144001F93FF AS DateTime), N'2-Entree Plate: Mixed Veggies,Moo Shu Pork,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'123', N'123', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (48, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144001FC8BD AS DateTime), N'2-Entree Plate: Mixed Veggies,Moo Shu Pork,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'213', N'213', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (49, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144001FDBDA AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'213', N'213', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (50, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144002063B4 AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'213', N'123', 5, N'123', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (51, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A14400209AF1 AS DateTime), N'Bowl : Moo Shu Pork,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'213', N'123', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (52, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A14400222729 AS DateTime), N'Bowl : Moo Shu Pork,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'123', N'1', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (53, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A1440022D0EF AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'123', N'1', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (54, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A14400249232 AS DateTime), N'Bowl : Kong Pao Chicken,Rice,Bowl : Kong Pao Chicken,Noodle', N'Paid', CAST(11.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(11.98 AS Decimal(8, 2)), N'yt', N'yu', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (55, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A1440024A9AB AS DateTime), N'2-Entree Plate: Moo Shu Pork,Kong Pao Chicken,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'yt', N'yu', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (56, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A14400261B59 AS DateTime), N'Bowl : Moo Shu Pork,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'123', N'213', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (57, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A14400264E9C AS DateTime), N'Bowl : Moo Shu Pork,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'123', N'213', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (58, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A14400267FD8 AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'123', N'213', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (59, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A1440026AE4B AS DateTime), N'2-Entree Plate: Mixed Veggies,Kong Pao Chicken,Noodle', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'Meghan', N'Reedy', 5, N'09082087439', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (60, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144002801DF AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'Kevin', N'Asher', 5, N'(650) 281-5363', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (61, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A144002814A7 AS DateTime), N'Bowl : Kong Pao Chicken,Noodle', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'Kevin', N'Asher', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (62, NULL, 29, N'testtesttest@gmail.com', 2, CAST(0x0000A14400285753 AS DateTime), N'2-Entree Plate: Mixed Veggies,Moo Shu Pork,Rice', N'WaitingForPayment', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.02 AS Decimal(8, 2)), N'Kevin', N'Asher', 5, N'', CAST(0x0000A14500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (63, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14601649D6C AS DateTime), N'2-Entree Plate: Kong Pao Chicken,Moo Shu Pork,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'05626906232', CAST(0x0000A14700C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (64, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14700ABB694 AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mushroom Chicken,Rice', N'WaitingForPayment', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(5.31 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'23123', CAST(0x0000A14800C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (65, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14800310E9F AS DateTime), N'5500.00 points Membership Card', N'Paid', CAST(50.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 5, NULL, CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (66, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A148003191E5 AS DateTime), N'5500.00 points Membership Card', N'Paid', CAST(50.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 5, NULL, CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (67, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A1480031F5CF AS DateTime), N'5500.00 points Membership Card', N'Paid', CAST(50.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 5, NULL, CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (68, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14800329060 AS DateTime), N'2100.00 points Membership Card', N'Paid', CAST(20.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 5, NULL, CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (69, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A14800373FA1 AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice,Fanta,2-Entree Plate: Fanta,Rice,Kong Pao Chicken,2-Entree Plate: Mixed Veggies,Rice,Bowl : Kong Pao Chicken,Rice', N'WaitingForPayment', CAST(26.96 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(1.00 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (70, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A14800378B52 AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice,Fanta', N'WaitingForPayment', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (71, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A14800382938 AS DateTime), N'12000.00 points Membership Card', N'Paid', CAST(100.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 11, NULL, CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (72, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A1480038C3FD AS DateTime), N'Soup and Salad: BEEF Á LA SICHUAN,MONGOLIAN BEEF ,SHANGHAI CUCUMBERS', N'Paid', CAST(12.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(12.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'05626906232', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (73, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A148003A1195 AS DateTime), N'Bowl : Moo Shu Pork,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'23423334233', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (74, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A1480049C212 AS DateTime), N'3-Entree Plate: Mixed Veggies,Moo Shu Pork,Kong Pao Chicken,Rice', N'Paid', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.39 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'05626906232', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (75, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A148004AE92A AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.01 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'2192188404', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (76, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A148004C2525 AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.01 AS Decimal(8, 2)), N'213', N'213', 5, N'', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (77, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A148004C8160 AS DateTime), N'3-Entree Plate: Mixed Veggies,Moo Shu Pork,Kong Pao Chicken,Rice', N'Paid', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.01 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'05626906232', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (78, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14800588EF3 AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.01 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (79, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14800B15DBC AS DateTime), N'2-Entree Plate: Moo Shu Pork,Kong Pao Chicken,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'123', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (80, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A1480149E5AE AS DateTime), N'2-Entree Plate: Mixed Veggies,Noodle,Fanta', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'123', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (81, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A148014D0825 AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'1324423234', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (82, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A148014D9CB5 AS DateTime), N'Bowl : Moo Shu Pork,Rice,Fanta,2-Entree Plate: Moo Shu Pork,Kong Pao Chicken,Rice', N'Paid', CAST(12.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(12.98 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'123', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (83, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A148014DB0A1 AS DateTime), N'3-Entree Plate: Moo Shu Pork,Kong Pao Chicken,Mushroom Chicken,Rice', N'Paid', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(7.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 5, N'123', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (84, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A148014E8A1C AS DateTime), N'3-Entree Plate: Mixed Veggies,Moo Shu Pork,Mushroom Chicken,Rice', N'Paid', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(7.97 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'', CAST(0x0000A14900C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (85, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A149002DB376 AS DateTime), N'Bowl : Rice,Mixed Veggies,2-Entree Plate: Moo Shu Pork,Rice', N'WaitingForPayment', CAST(37.94 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(27.94 AS Decimal(8, 2)), N'yaqi', N'zhao', 11, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (86, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A149002EF998 AS DateTime), N'Soup and Salad: Beef A La Sichuan,Mongolian Beef,Asian Tomato-Cucumber Salad,2-Entree Plate: Mixed Veggies,Moo Shu Pork,Rice,2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice,2100.00 points Membership Card', N'Paid', CAST(106.97 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), N'yaqi', N'zhao', 9, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (87, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A149002F7DD6 AS DateTime), N'Bowl : Moo Shu Pork,Rice', N'WaitingForPayment', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(1.23 AS Decimal(8, 2)), N'yaqi', N'zhao', 9, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (88, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A149002F7E06 AS DateTime), N'', N'WaitingForPayment', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(1.23 AS Decimal(8, 2)), NULL, NULL, 9, NULL, CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (89, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14901549E5C AS DateTime), N'2-Entree Plate: Mixed Veggies,Moo Shu Pork,Rice', N'WaitingForPayment', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(6.98 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14901549F17 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (90, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14901595D65 AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (91, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A149015A0EF6 AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'WaitingForPayment', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(5.57 AS Decimal(8, 2)), N'ab', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (92, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A149015D068F AS DateTime), N'Bowl : Moo Shu Pork,Rice', N'WaitingForPayment', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (93, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A149015D51E3 AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'WaitingForPayment', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (94, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A149015E155D AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'WaitingForPayment', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (95, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A149015E5D41 AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'WaitingForPayment', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (96, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14A0026934A AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'WaitingForPayment', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (97, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14A002D91FD AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'WaitingForPayment', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14A00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (98, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14C016EC91A AS DateTime), N'Soup and Salad: Asian Tomato-Cucumber Salad,Mongolian Beef,Beef A La Sichuan,Banana Spring Rolls', N'WaitingForPayment', CAST(25.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14D00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (99, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14D00204D6E AS DateTime), N'Bowl : Kong Pao Chicken,Rice,Soup and Salad: Asian Tomato-Cucumber Salad,Mongolian Beef,Beef A La Sichuan', N'WaitingForPayment', CAST(31.97 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14D00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (100, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14E0008807D AS DateTime), N'Bowl : Kong Pao Chicken,Rice,Fanta', N'WaitingForPayment', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.90 AS Decimal(8, 2)), N'ad', N'sadfs', 5, N'219-218-8404', CAST(0x0000A14E00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (101, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A14E001003FF AS DateTime), N'2-Entree Plate: Mongolian Beef,Beef A La Sichuan,Asian Tomato-Cucumber Salad', N'Paid', CAST(11.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(11.99 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'', CAST(0x0000A14E00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (102, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A14E0014FAF8 AS DateTime), N'Bowl : Moo Shu Pork,Rice,Soup and Salad: Mongolian Beef,Asian Tomato-Cucumber Salad,Beef A La Sichuan', N'Paid', CAST(44.96 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(44.96 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'1324423234', CAST(0x0000A14E00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (103, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A14E002B0FED AS DateTime), N'2-Entree Plate: Moo Shu Pork,Mixed Veggies,Rice,Bowl : Moo Shu Pork,Rice,Fanta', N'WaitingForPayment', CAST(12.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'', CAST(0x0000A14E00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (104, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A14E01538614 AS DateTime), N'2-Entree Plate: Kong Pao Chicken,Moo Shu Pork,Noodle', N'WaitingForPayment', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'', CAST(0x0000A14F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (105, NULL, 16, N'JenWhite@gmail.com', 2, CAST(0x0000A14E01619A5B AS DateTime), N'2-Entree Plate: Moo Shu Pork,Kong Pao Chicken,Noodle', N'WaitingForPayment', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(3.00 AS Decimal(8, 2)), N'Jenn', N'White', 5, N'219-989-0417', CAST(0x0000A14F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (106, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14E016527E5 AS DateTime), N'1-Entree Plate: Orange Chicken,Rice', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'yaqi', N'Zhao', 11, N'219-218-8404', CAST(0x0000A14F00C5C100 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (107, NULL, 16, N'JenWhite@gmail.com', 2, CAST(0x0000A14E0165699D AS DateTime), N'2-Entree Plate: Orange Chicken,Surf and Turf,Rice', N'WaitingForPayment', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'Jenn', N'White', 11, N'219-684-7852', CAST(0x0000A14F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (108, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A14F00303BBD AS DateTime), N'Bowl : Moo Shu Pork,Noodle,Coca Cola', N'Paid', CAST(7.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(7.98 AS Decimal(8, 2)), N'yaqi', N'Zhao', 5, N'219-218-8404', CAST(0x0000A14F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (109, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A14F003119B4 AS DateTime), N'Bowl : Kong Pao Chicken,Noodle,Fanta,Coca Cola', N'Paid', CAST(8.97 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(8.97 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'', CAST(0x0000A14F00C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (110, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A14F0156D194 AS DateTime), N'1-Entree Plate: Orange Chicken,Rice', N'Paid', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(7.99 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'', CAST(0x0000A15000C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (111, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A151002226CD AS DateTime), N'Bowl : Kong Pao Chicken,Noodle,Fanta,Coca Cola', N'Paid', CAST(8.97 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(8.97 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'', CAST(0x0000A15100C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (112, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A154015F830E AS DateTime), N'3-Entree Plate: Mixed Veggies,Moo Shu Pork,Kong Pao Chicken,Rice,2-Entree Plate: Moo Shu Pork,Kong Pao Chicken,Noodle', N'Paid', CAST(16.97 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(16.97 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'219-218-8404', CAST(0x0000A15500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (113, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A15401671B2C AS DateTime), N'2-Entree Plate: Moo Shu Pork,Kong Pao Chicken,Rice', N'WaitingForPayment', CAST(7.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'', CAST(0x0000A15500C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (114, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A156000C3D2E AS DateTime), N'A La carte: Noodle Soup', N'WaitingForPayment', CAST(139.80 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'', CAST(0x0000A15600C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (115, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A156000C7540 AS DateTime), N'2-Entree Plate: Mongolian Beef,Beef A La Sichuan,Asian Tomato-Cucumber Salad', N'Paid', CAST(11.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(11.99 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'', CAST(0x0000A15600C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (116, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A1560028D20E AS DateTime), N'A La carte: Noodle Soup', N'WaitingForPayment', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'', CAST(0x0000A15600C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (117, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A156002B7648 AS DateTime), N'1-Entree Plate: Orange Chicken,Rice', N'WaitingForPayment', CAST(7.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 11, N'407-538-1133', CAST(0x0000A15600C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (118, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A156002D3DF0 AS DateTime), N'Bowl : Moo Shu Pork,Rice', N'Paid', CAST(6.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.98 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'407-538-1133', CAST(0x0000A15600C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (121, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A15600347C52 AS DateTime), N'A La carte: Noodle Soup', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'', CAST(0x0000A15600C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (126, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A15601699DA7 AS DateTime), N'2100.00 points Membership Card', N'Paid', CAST(20.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (127, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A156016A6C25 AS DateTime), N'2100.00 points Membership Card', N'Paid', CAST(20.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (128, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A157002F3EBE AS DateTime), N'A La carte: Noodle Soup', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 37, N'219-218-8404', CAST(0x0000A15700B54640 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (129, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A15700359E93 AS DateTime), N'1-Entree Plate: Beef A La Sichuan,Noodle', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 43, N'219-218-8404', CAST(0x0000A15700B54640 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (130, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A15800174484 AS DateTime), N'5500.00 points Membership Card', N'Paid', CAST(50.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (131, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A15800179A3F AS DateTime), N'A La carte: Noodle Soup', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'407-538-1133', CAST(0x0000A15800C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (132, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A1580017C4DE AS DateTime), N'A La carte: Noodle Soup', N'WaitingForPayment', CAST(69.90 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'407-538-1133', CAST(0x0000A15800C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (133, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A1580018076A AS DateTime), N'A La carte: Noodle Soup', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'407-538-1133', CAST(0x0000A15800C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (134, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A15800185B94 AS DateTime), N'A La carte: Noodle Soup', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'407-538-1133', CAST(0x0000A15800C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (135, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A1580019375B AS DateTime), N'2-Entree Plate: Mongolian Beef,Beef A La Sichuan,Asian Tomato-Cucumber Salad', N'WaitingForPayment', CAST(11.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Cash', CAST(11.09 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'407-538-1133', CAST(0x0000A15800C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (136, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A1580021BFEC AS DateTime), N'1-Entree Plate: Beef A La Sichuan,Noodle', N'Paid', CAST(5.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(5.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 43, N'219-218-8404', CAST(0x0000A15800B54640 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (137, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A15800221CF9 AS DateTime), N'Bowl : Kong Pao Chicken,Rice', N'Paid', CAST(6.98 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.98 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'407-538-1133', CAST(0x0000A15800C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (138, NULL, 27, N'hello.hyu@gmail.com', 2, CAST(0x0000A158003149B2 AS DateTime), N'A La carte: Noodle Soup', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'Hong', N'Yu', 5, N'407-538-1133', CAST(0x0000A15800C5C100 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (139, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A158003B12AA AS DateTime), N'2100.00 points Membership Card', N'Paid', CAST(20.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 43, NULL, NULL)
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (140, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A158003B87C1 AS DateTime), N'2100.00 points Membership Card', N'Paid', CAST(20.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'CreditCard', CAST(0.00 AS Decimal(8, 2)), NULL, NULL, 43, NULL, NULL)
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (141, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A158003D7F36 AS DateTime), N'1-Entree Plate: Beef A La Sichuan,Noodle,Fanta', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 43, N'219-218-8404', CAST(0x0000A15800B54640 AS DateTime))
INSERT [dbo].[Orders] ([OrderId], [TxnId], [UserId], [PayerEmail], [OrderStatusId], [OrderReceivedAt], [OrderDescription], [PaymentStatus], [Gross], [Fee], [Tax], [PaymentNote], [Savings], [ReceiverFirstName], [ReceiverLastName], [DeliveryLocationId], [receiverPhoneNumber], [DeliveryTime]) VALUES (142, NULL, 15, N'yaqi.zhao@elementbars.com', 2, CAST(0x0000A1580041F617 AS DateTime), N'1-Entree Plate: Beef A La Sichuan,Noodle ( Fanta x 1 )', N'Paid', CAST(6.99 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'NotRequired', CAST(6.99 AS Decimal(8, 2)), N'yaqi', N'zhao', 43, N'219-218-8404', CAST(0x0000A15800B54640 AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[Restaurants]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Restaurants](
	[RestaurantId] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantName] [nvarchar](100) NOT NULL,
	[RestaurantStatusId] [int] NOT NULL,
	[RestaurantHoursFrom] [datetime] NULL,
	[RestaurantHoursTo] [datetime] NULL,
	[RestaurantHours2From] [datetime] NULL,
	[RestaurantHours2To] [datetime] NULL,
	[RestaurantLocationId] [int] NOT NULL,
	[universityId] [int] NOT NULL,
	[RestaurantImageUrl] [varchar](200) NULL,
	[RestaurantShortDescription] [nvarchar](100) NULL,
	[RestaurantDetailedDescription] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[RestaurantId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurants] ON
INSERT [dbo].[Restaurants] ([RestaurantId], [RestaurantName], [RestaurantStatusId], [RestaurantHoursFrom], [RestaurantHoursTo], [RestaurantHours2From], [RestaurantHours2To], [RestaurantLocationId], [universityId], [RestaurantImageUrl], [RestaurantShortDescription], [RestaurantDetailedDescription]) VALUES (1, N'Panda Express ', 1, CAST(0x0000A15600C5C100 AS DateTime), CAST(0x0000A15600D63BC0 AS DateTime), CAST(0x0000A156016A8C80 AS DateTime), NULL, 1, 1, N'/Content/Images/Restaurants/panda-express-logo.png', N'Asian-inspired cuisine in a fast casual environment.', N'Panda uses only the freshest and most delicious ingredients in our dishes. From crisp broccoli and string beans to sweet red bell peppers and tender sliced zucchini, our veggies are cut fresh every day and share the spotlight in our wok tossed entrees.')
INSERT [dbo].[Restaurants] ([RestaurantId], [RestaurantName], [RestaurantStatusId], [RestaurantHoursFrom], [RestaurantHoursTo], [RestaurantHours2From], [RestaurantHours2To], [RestaurantLocationId], [universityId], [RestaurantImageUrl], [RestaurantShortDescription], [RestaurantDetailedDescription]) VALUES (2, N'P.F. Chang''s (UCLA)', 1, CAST(0x0000A12D00B54640 AS DateTime), CAST(0x0000A12D00C5C100 AS DateTime), CAST(0x0000A12D011826C0 AS DateTime), CAST(0x0000A12D01391C40 AS DateTime), 1, 1, N'/Content/Images/Restaurants/PFChangs-logo.png', N'Asian-inspired cuisine in a fast casual environment.', N'Panda uses only the freshest and most delicious ingredients in our dishes. From crisp broccoli and string beans to sweet red bell peppers and tender sliced zucchini, our veggies are cut fresh every day and share the spotlight in our wok tossed entrees.')
INSERT [dbo].[Restaurants] ([RestaurantId], [RestaurantName], [RestaurantStatusId], [RestaurantHoursFrom], [RestaurantHoursTo], [RestaurantHours2From], [RestaurantHours2To], [RestaurantLocationId], [universityId], [RestaurantImageUrl], [RestaurantShortDescription], [RestaurantDetailedDescription]) VALUES (3, N'Feast From The East', 2, CAST(0x0000A14E00830310 AS DateTime), CAST(0x0000A14E00830310 AS DateTime), CAST(0x0000A14E00C5C100 AS DateTime), CAST(0x0000A14E00830310 AS DateTime), 29, 2, N'', N'Feast From The East is a unique quick service restaurant serving Asian inspired cuisine.', N'Feast From The East is a unique quick service restaurant serving Asian inspired cuisine. Our menu features wildly popular signature items like our famous Chinese Chicken Salad, Sesame Chicken Wings, as well as our cook-to-order House Specials prepared with your choice of beef, tofu, chicken or shrimp. You can take your meal home or grab a booth in our recently remodeled dining area and stay awhile. ')
INSERT [dbo].[Restaurants] ([RestaurantId], [RestaurantName], [RestaurantStatusId], [RestaurantHoursFrom], [RestaurantHoursTo], [RestaurantHours2From], [RestaurantHours2To], [RestaurantLocationId], [universityId], [RestaurantImageUrl], [RestaurantShortDescription], [RestaurantDetailedDescription]) VALUES (5, N'Yosanova', 2, CAST(0x0000A14F00B54640 AS DateTime), CAST(0x0000A14F017B0740 AS DateTime), NULL, NULL, 31, 2, N'', N'Nothing', N'Nothing at all.')
INSERT [dbo].[Restaurants] ([RestaurantId], [RestaurantName], [RestaurantStatusId], [RestaurantHoursFrom], [RestaurantHoursTo], [RestaurantHours2From], [RestaurantHours2To], [RestaurantLocationId], [universityId], [RestaurantImageUrl], [RestaurantShortDescription], [RestaurantDetailedDescription]) VALUES (6, N'Yummy House', 1, CAST(0x0000A14E00C5C100 AS DateTime), CAST(0x0000A14E00830310 AS DateTime), NULL, NULL, 32, 2, N'', N'Yummy House', N'Yummy House')
INSERT [dbo].[Restaurants] ([RestaurantId], [RestaurantName], [RestaurantStatusId], [RestaurantHoursFrom], [RestaurantHoursTo], [RestaurantHours2From], [RestaurantHours2To], [RestaurantLocationId], [universityId], [RestaurantImageUrl], [RestaurantShortDescription], [RestaurantDetailedDescription]) VALUES (7, N'Hometown Chinese Restaurant', 1, CAST(0x0000A15700C5C100 AS DateTime), CAST(0x0000A15700E6B680 AS DateTime), NULL, NULL, 41, 5, N'', N'Delicious Taiwanese food, good variety, and yummy milk teas.', N'Delicious Taiwanese food, good variety, and yummy milk teas.')
INSERT [dbo].[Restaurants] ([RestaurantId], [RestaurantName], [RestaurantStatusId], [RestaurantHoursFrom], [RestaurantHoursTo], [RestaurantHours2From], [RestaurantHours2To], [RestaurantLocationId], [universityId], [RestaurantImageUrl], [RestaurantShortDescription], [RestaurantDetailedDescription]) VALUES (8, N'Shanghai Town', 1, CAST(0x0000A15700C5C100 AS DateTime), CAST(0x0000A15700D63BC0 AS DateTime), NULL, NULL, 42, 5, N'', N'Authentic shanghai food.', N'Authentic shanghai food.')
SET IDENTITY_INSERT [dbo].[Restaurants] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  Table [dbo].[BentoBox]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BentoBox](
	[BentoBoxId] [int] IDENTITY(1,1) NOT NULL,
	[BentoBoxName] [nvarchar](200) NOT NULL,
	[BentoBoxDescription] [nvarchar](1000) NOT NULL,
	[UnitPrice] [decimal](8, 2) NOT NULL,
	[RestaurantId] [int] NULL,
	[bentoBoxImageUrl] [varchar](200) NULL,
	[bentoBoxTypeId] [int] NULL,
	[bentoBoxStatusId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BentoBoxId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BentoBox] ON
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (1, N'1-Entree Plate', N'Bowl ', CAST(5.99 AS Decimal(8, 2)), 1, N'/Content/Images/BentoBoxes/bowl.png', 1, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (2, N'2-Entree Plate', N'2-Entree Plate', CAST(6.99 AS Decimal(8, 2)), 1, N'/Content/Images/BentoBoxes/plate.png', 2, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (3, N'3-Entree Plate', N'3-Entree Plate', CAST(7.99 AS Decimal(8, 2)), 1, N'/Content/Images/BentoBoxes/plate.png', 3, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (4, N'Noodle/Fry Rice', N'A La carte', CAST(6.99 AS Decimal(8, 2)), 1, N'/Content/Images/BentoBoxes/plate.png', 5, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (5, N'2-Entree Plate', N'2-Entree Plate', CAST(11.99 AS Decimal(8, 2)), 2, N'/Content/images', 2, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (6, N'Soup and Salad', N'Soup and Salad', CAST(12.99 AS Decimal(8, 2)), 2, N'/Content/Images', 2, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (7, N'1-Entree Plate', N'1-Entree Plate', CAST(5.99 AS Decimal(8, 2)), 6, N'', 1, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (8, N'2-Entree Plate', N'2-Entree Plate', CAST(6.99 AS Decimal(8, 2)), 6, N'', 2, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (9, N'3-Entree Plate', N'3-Entree Plate', CAST(7.99 AS Decimal(8, 2)), 6, N'', 3, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (10, N'Noodle and Rice', N'Noodle and Rice', CAST(6.99 AS Decimal(8, 2)), 7, N'', 5, 2)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (11, N'1-Entree Plate', N'1-Entree Plate', CAST(5.99 AS Decimal(8, 2)), 7, N'', 1, 2)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (12, N'2-Entree Plate', N'2-Entree Plate', CAST(6.99 AS Decimal(8, 2)), 7, N'', 2, 2)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (13, N'3-Entree Plate', N'3-Entree Plate', CAST(7.99 AS Decimal(8, 2)), 7, N'', 3, 2)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (14, N'Noodle and Rice', N'Noodle and Rice', CAST(6.99 AS Decimal(8, 2)), 8, N'', 5, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (15, N'1-Entree Plate', N'1-Entree Plate', CAST(5.99 AS Decimal(8, 2)), 8, N'', 1, 1)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (16, N'2-Entree Plate', N'2-Entree Plate', CAST(6.99 AS Decimal(8, 2)), 8, N'', 2, 2)
INSERT [dbo].[BentoBox] ([BentoBoxId], [BentoBoxName], [BentoBoxDescription], [UnitPrice], [RestaurantId], [bentoBoxImageUrl], [bentoBoxTypeId], [bentoBoxStatusId]) VALUES (17, N'3-Entree Plate', N'3-Entree Plate', CAST(7.99 AS Decimal(8, 2)), 8, N'', 3, 2)
SET IDENTITY_INSERT [dbo].[BentoBox] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  Table [dbo].[Dishes]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dishes](
	[dishId] [int] IDENTITY(1,1) NOT NULL,
	[dishName] [nvarchar](100) NOT NULL,
	[dishStatusId] [int] NOT NULL,
	[shortDescription] [nvarchar](500) NULL,
	[detailedDescription] [nvarchar](2000) NULL,
	[restaurantId] [int] NULL,
	[dishImageUrl] [varchar](200) NULL,
	[DishTypeId] [int] NULL,
	[dishIncrementalPrice] [decimal](10, 2) NOT NULL,
	[isOnVoting] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dishId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Dishes] ON
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (1, N'Kong Pao Chicken', 1, N'Kong Pao Chicken', N'Kong Pao Chicken', 1, N'Content/Images/Dishes/msp.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (2, N'Moo Shu Pork', 1, N'Moo Shu Pork', N'Moo Shu Pork', 1, N'Content/Images/Dishes/msp.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (3, N'Mixed Veggies', 1, N'Mixed Veggies', N'Mixed Veggies', 1, N'Content/Images/Dishes/veg.jpg', 1, CAST(1.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (6, N'Mushroom Chicken', 1, N'Mushroom Chicken', N'Mushroom Chicken', 1, N'Content/Images/Dishes/zzt.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (7, N'Orange Chicken', 2, N'Orange Chicken', N'Orange Chicken', 1, N'Content/Images/Dishes/oc.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (8, N'CocaCola', 1, N'refreshing', N'refreshing', 1, N'Content/Images/Dishes/zc.jpg', 3, CAST(1.99 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (9, N'Fanta', 1, N'refreshing', N'refreshing', 1, N'Content/Images/Dishes/Fanta.jpg', 3, CAST(0.99 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (10, N'Rice', 1, N'Rice', N'Rice', 1, N'Content/Images/Dishes/rice.jpg', 2, CAST(0.99 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (11, N'Apple', 2, N'fulfill', N'fulfill', 1, N'Content/Images/Dishes/apple.png', 2, CAST(0.99 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (12, N'Noodle', 1, N'Noodel', N'Noodle', 1, N'Content/Images/Dishes/noodles.jpg', 2, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (13, N'Mongolian Beef', 1, N'Mongolian Beef', N'Mongolian Beef', 2, N'Content/Images/Dishes/zzt.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (18, N'Beef A La Sichuan', 1, N'Beef A La Sichuan', N'Beef A La Sichuan', 2, N'Content/Images/Dishes/msp.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (19, N'Asian Tomato-Cucumber Salad', 1, N'Asian Tomato-Cucumber Salad', N'Asian Tomato-Cucumber Salad', 2, N'Content/Images/Dishes/oc.jpg', 2, CAST(0.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (20, N'Shanghai Cucumbers', 1, N'Shanghai Cucumbers', N'Shanghai Cucumbers', 2, N'Content/Images/Dishes/veg.jpg', 2, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (23, N'Banana Spring Rolls', 1, N'Banana Spring Rolls', N'Banana Spring Rolls', 2, N'Content/Images/Drinks/Fanta.png', 3, CAST(1.99 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (24, N'Orange Chicken', 1, N'yummy', N'yummy', 6, N'Content/Images/Dishes/oc.jpg', 1, CAST(2.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (25, N'Surf and Turf', 1, N'yummy', N'yummy', 6, N'Content/Images/Dishes/zzt.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (26, N'Mongolian Beef', 1, N'yummy', N'yummy', 6, N'Content/Images/Dishes/veg.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (27, N'Pig and shirmp', 1, N'yummy', N'yummy', 6, N'Content/Images/Dishes/kpc.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (28, N'Rice', 1, N'yummy', N'yummy', 6, N'Content/Images/Dishes/rice.jpg', 2, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (29, N'Veg', 1, N'yummy', N'yummy', 5, N'/Content/Images/Dishes/Veg.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (30, N'Hot Dog', 2, N'yummy', N'yummy', 5, N'/Content/Images/Dishes/hot_dog', 1, CAST(0.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (31, N'Rice', 1, N'yummy', N'yummy', 5, N'/Content/Images/Dishes/rice.jpg', 2, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (32, N'Fanta', 2, N'yummy', N'yummy', 5, N'/Content/Images/Dishes/fanta.jpg', 1, CAST(2.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (33, N'Fanta', 1, N'yummy', N'yummy', 5, N'/Content/Images/Dishes/fanta.jpg', 3, CAST(1.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (34, N'Noodle Soup', 1, N'yummy', N'yummy', 1, N'Content/Images/Dishes/NoodleSoup.jpg', 4, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (35, N'Fry Rice', 1, N'yummy', N'yummy', 8, N'Content/Images/Dishes/rice.jpg', 4, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (36, N'Noodle Soup', 1, N'yummy', N'yummy', 8, N'Content/Images/Dishes/NoodleSoup.jpg', 4, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (37, N'Fanta', 1, N'yummy', N'yummy', 8, N'Content/Images/Dishes/fanta.jpg', 3, CAST(1.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (38, N'Beef A La Sichuan', 1, N'yummy', N'yummy', 8, N'Content/Images/Dishes/zzt.jpg', 1, CAST(0.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[Dishes] ([dishId], [dishName], [dishStatusId], [shortDescription], [detailedDescription], [restaurantId], [dishImageUrl], [DishTypeId], [dishIncrementalPrice], [isOnVoting]) VALUES (39, N'Noodle', 1, N'yummy', N'yummy', 8, N'Content/Images/Dishes/noodles.jpg', 2, CAST(0.00 AS Decimal(10, 2)), 0)
SET IDENTITY_INSERT [dbo].[Dishes] OFF
/****** Object:  Table [dbo].[Rewards]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rewards](
	[RewardId] [int] IDENTITY(1,1) NOT NULL,
	[RewareTypeId] [int] NOT NULL,
	[DiscountAmount] [decimal](8, 2) NOT NULL,
	[RewardCreatedAt] [datetime] NOT NULL,
	[RewardDescription] [varchar](100) NULL,
	[UserId] [int] NULL,
	[Txn] [varchar](50) NULL,
	[orderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RewardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Rewards] ON
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (1, 1, CAST(300.00 AS Decimal(8, 2)), CAST(0x0000A13600000000 AS DateTime), N'Lucky Spin 20121229', 16, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (2, 1, CAST(500.00 AS Decimal(8, 2)), CAST(0x0000A13600000000 AS DateTime), N'Lucky Spin 20121229', 17, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (3, 1, CAST(300.00 AS Decimal(8, 2)), CAST(0x0000A13600000000 AS DateTime), N'Lucky Spin 20121229', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (5, 1, CAST(231.00 AS Decimal(8, 2)), CAST(0x0000A13E00768268 AS DateTime), N'Lucky Spin', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (6, 4, CAST(-531.00 AS Decimal(8, 2)), CAST(0x0000A14700ABB71C AS DateTime), N'Consume reward points', 15, NULL, 64)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (7, 1, CAST(100.00 AS Decimal(8, 2)), CAST(0x0000A148001E6842 AS DateTime), N'Lucky Spin', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (8, 3, CAST(5500.00 AS Decimal(8, 2)), CAST(0x0000A1480031F5F9 AS DateTime), N'Reward Card Redeemed', 15, NULL, 67)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (9, 3, CAST(2100.00 AS Decimal(8, 2)), CAST(0x0000A14800329083 AS DateTime), N'Reward Card Redeemed', 15, NULL, 68)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (10, 4, CAST(-100.00 AS Decimal(8, 2)), CAST(0x0000A14800374018 AS DateTime), N'Consume reward points', 27, NULL, 69)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (11, 3, CAST(12000.00 AS Decimal(8, 2)), CAST(0x0000A14800382946 AS DateTime), N'Reward Card Redeemed', 27, NULL, 71)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (12, 4, CAST(-1299.00 AS Decimal(8, 2)), CAST(0x0000A1480038C40D AS DateTime), N'Consume reward points', 15, NULL, 72)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (13, 4, CAST(-599.00 AS Decimal(8, 2)), CAST(0x0000A148003A11A7 AS DateTime), N'Consume reward points', 27, NULL, 73)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (14, 4, CAST(-39.00 AS Decimal(8, 2)), CAST(0x0000A1480049D528 AS DateTime), N'Consume reward points', 15, NULL, 74)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (15, 4, CAST(-1.00 AS Decimal(8, 2)), CAST(0x0000A148004C256F AS DateTime), N'Consume reward points', 15, NULL, 76)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (16, 4, CAST(-1.00 AS Decimal(8, 2)), CAST(0x0000A148004C9EAC AS DateTime), N'Consume reward points', 15, NULL, 77)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (17, 4, CAST(-1.00 AS Decimal(8, 2)), CAST(0x0000A14800588F12 AS DateTime), N'Consume reward points', 15, NULL, 78)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (18, 4, CAST(-699.00 AS Decimal(8, 2)), CAST(0x0000A14800B15E9A AS DateTime), N'Consume reward points', 15, NULL, 79)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (19, 4, CAST(-699.00 AS Decimal(8, 2)), CAST(0x0000A1480149E5E7 AS DateTime), N'Consume reward points', 15, NULL, 80)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (20, 4, CAST(-1298.00 AS Decimal(8, 2)), CAST(0x0000A148014D9CBF AS DateTime), N'Consume reward points', 15, NULL, 82)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (21, 4, CAST(-799.00 AS Decimal(8, 2)), CAST(0x0000A148014DB0AA AS DateTime), N'Consume reward points', 15, NULL, 83)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (22, 4, CAST(-797.00 AS Decimal(8, 2)), CAST(0x0000A148014E8A28 AS DateTime), N'Consume reward points', 27, NULL, 84)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (23, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A148015259BA AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (24, 4, CAST(-2794.00 AS Decimal(8, 2)), CAST(0x0000A149002DB411 AS DateTime), N'Consume reward points', 15, NULL, 85)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (25, 3, CAST(2100.00 AS Decimal(8, 2)), CAST(0x0000A149002EFA1E AS DateTime), N'Reward Card Redeemed', 15, NULL, 86)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (26, 4, CAST(-123.00 AS Decimal(8, 2)), CAST(0x0000A149002F7DE2 AS DateTime), N'Consume reward points', 15, NULL, 87)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (27, 4, CAST(-123.00 AS Decimal(8, 2)), CAST(0x0000A149002F7E28 AS DateTime), N'Consume reward points', 15, NULL, 88)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (28, 4, CAST(-698.00 AS Decimal(8, 2)), CAST(0x0000A14901549FAB AS DateTime), N'Consume reward points', 15, NULL, 89)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (29, 4, CAST(-599.00 AS Decimal(8, 2)), CAST(0x0000A14901595D83 AS DateTime), N'Consume reward points', 15, NULL, 90)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (30, 4, CAST(-557.00 AS Decimal(8, 2)), CAST(0x0000A149015A0EFF AS DateTime), N'Consume reward points', 15, NULL, 91)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (31, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14C0155EF34 AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (32, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14C0155F53B AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (33, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14C0155FC08 AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (34, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14C01560943 AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (35, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14C016678BD AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (36, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14C01668150 AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (37, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14C016733B4 AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (38, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14C01674665 AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (39, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14C016EFF8A AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (40, 4, CAST(-90.00 AS Decimal(8, 2)), CAST(0x0000A14E000881E4 AS DateTime), N'Consume reward points', 15, NULL, 100)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (41, 4, CAST(-1199.00 AS Decimal(8, 2)), CAST(0x0000A14E0010044E AS DateTime), N'Consume reward points', 27, NULL, 101)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (42, 4, CAST(-4496.00 AS Decimal(8, 2)), CAST(0x0000A14E0014FB04 AS DateTime), N'Consume reward points', 27, NULL, 102)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (43, 1, CAST(123.00 AS Decimal(8, 2)), CAST(0x0000A14E0017A062 AS DateTime), N'Lucky Spin', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (44, 1, CAST(552.00 AS Decimal(8, 2)), CAST(0x0000A14E0019BDEB AS DateTime), N'Lucky Spin', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (45, 1, CAST(552.00 AS Decimal(8, 2)), CAST(0x0000A14E001AF60F AS DateTime), N'Lucky Draw 20121229', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (46, 1, CAST(850.00 AS Decimal(8, 2)), CAST(0x0000A14E001B0F0C AS DateTime), N'Lucky Draw 2013-01-13 - 2013-01-20 ', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (47, 1, CAST(850.00 AS Decimal(8, 2)), CAST(0x0000A14E001B8E37 AS DateTime), N'Lucky Draw 2013-01-13 - 2013-01-20 ', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (48, 1, CAST(850.00 AS Decimal(8, 2)), CAST(0x0000A14E001BA64C AS DateTime), N'Lucky Draw 2013-01-13 - 2013-01-20 ', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (49, 1, CAST(20.00 AS Decimal(8, 2)), CAST(0x0000A14E0020968B AS DateTime), N'Lucky Spin', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (50, 1, CAST(20.00 AS Decimal(8, 2)), CAST(0x0000A14E0024C209 AS DateTime), N'Lucky Spin', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (51, 1, CAST(200.00 AS Decimal(8, 2)), CAST(0x0000A14E002E7E34 AS DateTime), N'Lucky Spin', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (52, 1, CAST(300.00 AS Decimal(8, 2)), CAST(0x0000A14E01545CC9 AS DateTime), N'Lucky Draw University              2013-01-13 - 2013-01-20 ', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (53, 4, CAST(-300.00 AS Decimal(8, 2)), CAST(0x0000A14E01619B07 AS DateTime), N'Consume reward points', 16, NULL, 105)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (54, 4, CAST(-599.00 AS Decimal(8, 2)), CAST(0x0000A14E016527EE AS DateTime), N'Consume reward points', 15, NULL, 106)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (55, 1, CAST(700.00 AS Decimal(8, 2)), CAST(0x0000A14E0165EA63 AS DateTime), N'Lucky Draw Purdue University West Lafayette                  2013-01-13 - 2013-01-20 ', 16, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (56, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14E016A26DB AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (57, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14E01896C25 AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (58, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14F001DBD74 AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (59, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A14F001DC9FB AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (60, 4, CAST(-798.00 AS Decimal(8, 2)), CAST(0x0000A14F00303C44 AS DateTime), N'Consume reward points', 15, NULL, 108)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (61, 4, CAST(-897.00 AS Decimal(8, 2)), CAST(0x0000A14F003119C7 AS DateTime), N'Consume reward points', 27, NULL, 109)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (62, 4, CAST(-799.00 AS Decimal(8, 2)), CAST(0x0000A14F0156D1E4 AS DateTime), N'Consume reward points', 27, NULL, 110)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (63, 4, CAST(-897.00 AS Decimal(8, 2)), CAST(0x0000A15100222724 AS DateTime), N'Consume reward points', 27, NULL, 111)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (64, 4, CAST(-1697.00 AS Decimal(8, 2)), CAST(0x0000A154015F8539 AS DateTime), N'Consume reward points', 27, NULL, 112)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (65, 4, CAST(-1199.00 AS Decimal(8, 2)), CAST(0x0000A156000C7548 AS DateTime), N'Consume reward points', 27, NULL, 115)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (66, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A156002C1B12 AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (67, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A156002C3AE4 AS DateTime), N'Voting', 27, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (68, 4, CAST(-698.00 AS Decimal(8, 2)), CAST(0x0000A156002D3E4E AS DateTime), N'Consume reward points', 27, NULL, 118)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (69, 3, CAST(2100.00 AS Decimal(8, 2)), CAST(0x0000A15601699DFF AS DateTime), N'Reward Card Redeemed', 15, NULL, 126)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (70, 3, CAST(2100.00 AS Decimal(8, 2)), CAST(0x0000A156016A6C4E AS DateTime), N'Reward Card Redeemed', 15, NULL, 127)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (71, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A157000D6933 AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (72, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A157000D70BE AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (73, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A157000E3B20 AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (74, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A157000E70FD AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (75, 6, CAST(30.00 AS Decimal(8, 2)), CAST(0x0000A157000EB031 AS DateTime), N'Voting', 15, NULL, NULL)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (76, 4, CAST(-699.00 AS Decimal(8, 2)), CAST(0x0000A157002F3EF3 AS DateTime), N'Consume reward points', 15, NULL, 128)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (77, 4, CAST(-599.00 AS Decimal(8, 2)), CAST(0x0000A15700359E9D AS DateTime), N'Consume reward points', 15, NULL, 129)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (78, 3, CAST(5500.00 AS Decimal(8, 2)), CAST(0x0000A158001744FA AS DateTime), N'Reward Card Redeemed', 27, NULL, 130)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (79, 4, CAST(-699.00 AS Decimal(8, 2)), CAST(0x0000A15800179A4E AS DateTime), N'Consume reward points', 27, NULL, 131)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (80, 4, CAST(-699.00 AS Decimal(8, 2)), CAST(0x0000A15800185B9A AS DateTime), N'Consume reward points', 27, NULL, 134)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (81, 4, CAST(-1109.00 AS Decimal(8, 2)), CAST(0x0000A15800193767 AS DateTime), N'Consume reward points', 27, NULL, 135)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (82, 4, CAST(-599.00 AS Decimal(8, 2)), CAST(0x0000A1580021C00F AS DateTime), N'Consume reward points', 15, NULL, 136)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (83, 4, CAST(-698.00 AS Decimal(8, 2)), CAST(0x0000A15800221D10 AS DateTime), N'Consume reward points', 27, NULL, 137)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (84, 4, CAST(-699.00 AS Decimal(8, 2)), CAST(0x0000A158003149BD AS DateTime), N'Consume reward points', 27, NULL, 138)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (85, 3, CAST(2100.00 AS Decimal(8, 2)), CAST(0x0000A158003B12E3 AS DateTime), N'Reward Card Redeemed', 15, NULL, 139)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (86, 3, CAST(2100.00 AS Decimal(8, 2)), CAST(0x0000A158003B87CC AS DateTime), N'Reward Card Redeemed', 15, NULL, 140)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (87, 4, CAST(-699.00 AS Decimal(8, 2)), CAST(0x0000A158003D7F39 AS DateTime), N'Consume reward points', 15, NULL, 141)
INSERT [dbo].[Rewards] ([RewardId], [RewareTypeId], [DiscountAmount], [RewardCreatedAt], [RewardDescription], [UserId], [Txn], [orderId]) VALUES (88, 4, CAST(-699.00 AS Decimal(8, 2)), CAST(0x0000A1580041F630 AS DateTime), N'Consume reward points', 15, NULL, 142)
SET IDENTITY_INSERT [dbo].[Rewards] OFF
/****** Object:  Table [dbo].[OrderItems]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[orderItemId] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemTypeId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[lineItemCost] [decimal](8, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (1, 10, 195, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (2, 11, 196, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (3, 12, 212, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (4, 12, 213, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (5, 12, 214, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (6, 13, 223, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (7, 13, 224, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (8, 14, 232, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (9, 15, 237, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (10, 15, 238, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (11, 17, 239, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (12, 18, 241, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (13, 19, 245, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (14, 20, 249, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (15, 22, 250, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (16, 23, 251, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (17, 24, 253, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (18, 25, 254, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (19, 26, 255, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (20, 26, 256, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (21, 27, 258, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (22, 28, 259, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (23, 29, 260, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (24, 30, 261, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (25, 31, 262, 1, 0, CAST(4.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (26, 32, 268, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (27, 33, 270, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (28, 34, 367, 1, 0, CAST(20.97 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (29, 34, 370, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (30, 35, 371, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (31, 39, 372, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (32, 40, 372, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (33, 41, 372, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (34, 42, 376, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (35, 44, 377, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (36, 45, 378, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (37, 46, 378, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (38, 47, 379, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (39, 48, 379, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (40, 49, 380, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (41, 50, 380, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (42, 51, 381, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (43, 52, 381, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (44, 53, 382, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (45, 54, 382, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (46, 54, 383, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (47, 55, 384, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (48, 56, 385, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (49, 57, 386, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (50, 58, 387, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (51, 59, 388, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (52, 60, 391, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (53, 61, 392, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (54, 62, 393, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (55, 63, 394, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (56, 64, 396, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (57, 65, 3, 3, 0, CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (58, 66, 3, 3, 0, CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (59, 67, 3, 3, 0, CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (60, 68, 2, 3, 0, CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (61, 69, 395, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (62, 69, 398, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (63, 69, 399, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (64, 69, 401, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (65, 70, 395, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (66, 71, 4, 3, 0, CAST(100.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (67, 72, 402, 1, 0, CAST(12.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (68, 73, 403, 1, 0, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (69, 74, 404, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (70, 75, 405, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (71, 76, 405, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (72, 77, 406, 1, 0, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (73, 78, 407, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (74, 79, 408, 1, 0, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (75, 80, 409, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (76, 81, 410, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (77, 82, 412, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (78, 82, 413, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (79, 83, 414, 1, 1, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (80, 84, 416, 1, 1, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (81, 85, 417, 1, 4, CAST(23.96 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (82, 85, 418, 1, 2, CAST(13.98 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (83, 86, 419, 1, 1, CAST(12.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (84, 86, 420, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (85, 86, 421, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (86, 86, 2, 3, 4, CAST(80.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (87, 87, 422, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (88, 89, 423, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (89, 90, 424, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (90, 91, 426, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (91, 92, 427, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (92, 93, 428, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (93, 94, 429, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (94, 95, 430, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (95, 96, 431, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (96, 97, 432, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (97, 98, 444, 1, 2, CAST(25.98 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (98, 99, 445, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (99, 99, 444, 1, 2, CAST(25.98 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (100, 100, 454, 1, 1, CAST(5.99 AS Decimal(8, 2)))
GO
print 'Processed 100 total records'
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (101, 101, 459, 1, 1, CAST(11.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (102, 102, 461, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (103, 102, 463, 1, 3, CAST(38.97 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (104, 103, 410, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (105, 103, 465, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (106, 104, 466, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (107, 105, 460, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (108, 106, 467, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (109, 107, 468, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (110, 108, 473, 1, 1, CAST(7.98 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (111, 109, 469, 1, 1, CAST(8.97 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (112, 110, 475, 1, 1, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (113, 111, 469, 1, 1, CAST(8.97 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (114, 112, 487, 1, 1, CAST(9.98 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (115, 112, 488, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (116, 113, 491, 1, 1, CAST(7.98 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (117, 114, 492, 1, 20, CAST(139.80 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (118, 115, 493, 1, 1, CAST(11.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (119, 116, 494, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (120, 117, 495, 1, 1, CAST(7.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (121, 118, 496, 1, 1, CAST(6.98 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (122, 121, 498, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (123, 126, 2, 3, 1, CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (124, 127, 2, 3, 1, CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (125, 128, 506, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (126, 129, 508, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (127, 130, 3, 3, 1, CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (128, 131, 510, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (129, 132, 510, 1, 10, CAST(69.90 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (130, 133, 510, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (131, 134, 510, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (132, 135, 511, 1, 1, CAST(11.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (133, 136, 513, 1, 1, CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (134, 137, 512, 1, 1, CAST(6.98 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (135, 138, 515, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (136, 139, 2, 3, 1, CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (137, 140, 2, 3, 1, CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (138, 141, 517, 1, 1, CAST(6.99 AS Decimal(8, 2)))
INSERT [dbo].[OrderItems] ([orderItemId], [orderId], [itemId], [itemTypeId], [quantity], [lineItemCost]) VALUES (139, 142, 518, 1, 1, CAST(6.99 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
/****** Object:  Table [dbo].[UserDetails]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserDetails](
	[userDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[universityId] [int] NULL,
	[phoneNumber] [varchar](20) NULL,
	[locationId] [int] NULL,
	[UniversityDeliveryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userDetailsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserDetails] ON
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (1, 26, N'Connieed', N'Princettadd', 2, N'2192188404', NULL, NULL)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (2, 27, N'Hong', N'Yu', 1, N'407-538-1133', 26, 1)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (3, 15, N'yaqi', N'zhao', 5, N'219-218-8404', 25, 21)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (4, 28, N'Hong', N'Yu', 1, N'134545434', NULL, NULL)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (5, 29, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (6, 30, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (7, 16, N'Jenn', N'White', 2, N'219-218-8404', NULL, NULL)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (8, 31, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (9, 32, N'yaqi', N'zhao', 1, NULL, NULL, 1)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (10, 33, N'bbcc', N'bbdd', 1, NULL, NULL, 1)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (11, 34, N'ccdd', N'ee', 1, NULL, NULL, 1)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (12, 35, N'884', N'884', 1, NULL, NULL, 1)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (13, 36, N'8845', N'8845', 1, NULL, NULL, 1)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (14, 37, N'yaqi', N'zhao', 1, NULL, NULL, 3)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (15, 38, N'yaqi', N'zhao', 1, NULL, NULL, 20)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (16, 39, N'Hong651', N'Yu', 1, NULL, NULL, 1)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (17, 40, N'yaqi', N'zhao', 1, NULL, NULL, 1)
INSERT [dbo].[UserDetails] ([userDetailsId], [userId], [firstName], [lastName], [universityId], [phoneNumber], [locationId], [UniversityDeliveryId]) VALUES (18, 41, N'yaqi', N'zhao', 1, N'', 44, 1)
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItems](
	[ShoppingCartItemId] [int] IDENTITY(1,1) NOT NULL,
	[ShoppingCartId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemTypeId] [int] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[LastUpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoppingCartItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] ON
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (149, 290, 2, 470, 1, CAST(0x0000A14E0187706F AS DateTime), CAST(0x0000A14E0187706F AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (150, 290, 1, 471, 1, CAST(0x0000A14F000AE831 AS DateTime), CAST(0x0000A14F000AE831 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (153, 296, 1, 474, 1, CAST(0x0000A14F01562236 AS DateTime), CAST(0x0000A14F01562236 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (155, 295, 1, 476, 1, CAST(0x0000A14F0157295D AS DateTime), CAST(0x0000A14F0157295D AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (157, 303, 1, 478, 1, CAST(0x0000A14F015B055C AS DateTime), CAST(0x0000A14F015B055C AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (158, 304, 1, 479, 1, CAST(0x0000A14F015B9260 AS DateTime), CAST(0x0000A14F015B9260 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (159, 305, 1, 480, 1, CAST(0x0000A14F015F2EB0 AS DateTime), CAST(0x0000A14F015F2EB0 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (168, 368, 1, 486, 1, CAST(0x0000A15100369796 AS DateTime), CAST(0x0000A15100369796 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (172, 381, 1, 490, 1, CAST(0x0000A15400598751 AS DateTime), CAST(0x0000A15400598751 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (184, 400, 1, 3, 3, CAST(0x0000A15600349CCE AS DateTime), CAST(0x0000A15600349CCE AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (185, 389, 1, 499, 1, CAST(0x0000A1560039AEF4 AS DateTime), CAST(0x0000A1560039AEF4 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (186, 389, 1, 500, 1, CAST(0x0000A1560039AFDF AS DateTime), CAST(0x0000A1560039AFDF AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (187, 389, 1, 501, 1, CAST(0x0000A156003A5D88 AS DateTime), CAST(0x0000A156003A5D88 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (188, 389, 1, 502, 1, CAST(0x0000A156003A5DB2 AS DateTime), CAST(0x0000A156003A5DB2 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (191, 402, 1, 503, 1, CAST(0x0000A1560173E605 AS DateTime), CAST(0x0000A1560173E605 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (192, 404, 1, 504, 1, CAST(0x0000A157000FE195 AS DateTime), CAST(0x0000A157000FE195 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (206, 431, 1, 514, 1, CAST(0x0000A15800226A69 AS DateTime), CAST(0x0000A15800226A69 AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (208, 443, 1, 516, 1, CAST(0x0000A1580039895E AS DateTime), CAST(0x0000A1580039895E AS DateTime))
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [ShoppingCartId], [Quantity], [ItemId], [ItemTypeId], [CreatedAt], [LastUpdatedAt]) VALUES (213, 450, 1, 519, 1, CAST(0x0000A15800444881 AS DateTime), CAST(0x0000A15800444881 AS DateTime))
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  Table [dbo].[votings]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[votings](
	[votingId] [int] IDENTITY(1,1) NOT NULL,
	[dishId] [int] NOT NULL,
	[votedOn] [datetime] NOT NULL,
	[votedBy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[votingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[votings] ON
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (1, 6, CAST(0x0000A13B0059224C AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (2, 8, CAST(0x0000A13B0059224D AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (3, 6, CAST(0x0000A13B007B0619 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (4, 8, CAST(0x0000A13B007B061A AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (5, 6, CAST(0x0000A13B007E9A08 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (6, 8, CAST(0x0000A13B007E9A09 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (7, 6, CAST(0x0000A13B007EBB59 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (8, 8, CAST(0x0000A13B007EBB5A AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (9, 6, CAST(0x0000A13B007F08DA AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (10, 8, CAST(0x0000A13B007F08DC AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (11, 6, CAST(0x0000A13B007F1FAC AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (12, 8, CAST(0x0000A13B007F1FAD AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (13, 6, CAST(0x0000A13B007F2D01 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (14, 8, CAST(0x0000A13B007F2D01 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (15, 6, CAST(0x0000A13B007F5A1E AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (16, 8, CAST(0x0000A13B007F5A1F AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (17, 6, CAST(0x0000A13B007F8799 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (18, 8, CAST(0x0000A13B007F879A AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (19, 6, CAST(0x0000A13B007F967D AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (20, 8, CAST(0x0000A13B007F967E AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (21, 6, CAST(0x0000A13B007FA89A AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (22, 8, CAST(0x0000A13B007FA89B AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (23, 7, CAST(0x0000A13F003356BD AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (24, 3, CAST(0x0000A14200336177 AS DateTime), 29)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (25, 6, CAST(0x0000A14200336179 AS DateTime), 29)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (26, 2, CAST(0x0000A1480039D51A AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (27, 1, CAST(0x0000A148014AC84A AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (28, 3, CAST(0x0000A148014AC84B AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (29, 18, CAST(0x0000A14801525767 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (30, 1, CAST(0x0000A14C0155EF2F AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (31, 1, CAST(0x0000A14C0155F53A AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (32, 13, CAST(0x0000A14C0155FC08 AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (33, 6, CAST(0x0000A14C01560943 AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (34, 1, CAST(0x0000A14C016678BB AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (35, 13, CAST(0x0000A14C01668150 AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (36, 1, CAST(0x0000A14C016733B4 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (37, 13, CAST(0x0000A14C01674665 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (38, 2, CAST(0x0000A14C016EFF89 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (39, 1, CAST(0x0000A14E016A26D4 AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (40, 3, CAST(0x0000A14E01896C1F AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (41, 30, CAST(0x0000A14F001DBD74 AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (42, 25, CAST(0x0000A14F001DC9FA AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (43, 1, CAST(0x0000A156002C1B11 AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (44, 3, CAST(0x0000A156002C1B12 AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (45, 13, CAST(0x0000A156002C3AE3 AS DateTime), 27)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (46, 1, CAST(0x0000A157000D6932 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (47, 3, CAST(0x0000A157000D6933 AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (48, 13, CAST(0x0000A157000D70BE AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (49, 29, CAST(0x0000A157000E3B1F AS DateTime), 15)
INSERT [dbo].[votings] ([votingId], [dishId], [votedOn], [votedBy]) VALUES (50, 24, CAST(0x0000A157000E70FD AS DateTime), 15)
SET IDENTITY_INSERT [dbo].[votings] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCart#Empty]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShoppingCart#Empty]
	@ShoppingCartId int
AS
	Delete [dbo].[ShoppingCartItems] where shoppingCartId = @shoppingCartId
    Delete [dbo].[ShoppingCarts] where shoppingCartId = @shoppingCartId
GO
/****** Object:  Table [dbo].[CustomBentoBox]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomBentoBox](
	[CustomBentoBoxId] [int] IDENTITY(1,1) NOT NULL,
	[CustomBentoBoxName] [nvarchar](200) NOT NULL,
	[BentoBoxId] [int] NOT NULL,
	[Comment] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomBentoBoxId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomBentoBox] ON
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (1, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (2, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (3, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (4, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (5, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (6, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (7, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (8, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (9, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (10, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (11, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (12, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (13, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (14, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (15, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (16, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (17, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (18, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (19, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (20, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (21, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (22, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (23, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (24, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (25, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (26, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (27, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (28, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (29, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (30, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (31, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (32, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (33, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (34, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (35, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (36, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (37, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (38, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (39, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (40, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (41, N'sec', 1, N'ddd')
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (42, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (43, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (44, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (45, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (46, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (47, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (48, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (49, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (50, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (51, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (52, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (53, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (54, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (55, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (56, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (57, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (58, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (59, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (60, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (61, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (62, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (63, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (64, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (65, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (66, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (67, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (68, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (69, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (70, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (71, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (72, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (73, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (74, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (75, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (76, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (77, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (78, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (79, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (80, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (81, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (82, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (83, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (84, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (85, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (86, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (87, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (88, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (89, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (90, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (91, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (92, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (93, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (94, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (95, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (96, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (97, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (98, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (99, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (100, N'My First BentoBox', 1, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (101, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (102, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (103, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (104, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (105, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (106, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (107, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (108, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (109, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (110, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (111, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (112, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (113, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (114, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (115, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (116, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (117, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (118, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (119, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (120, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (121, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (122, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (123, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (124, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (125, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (126, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (127, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (128, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (129, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (130, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (131, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (132, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (133, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (134, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (135, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (136, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (137, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (138, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (139, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (140, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (141, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (142, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (143, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (144, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (145, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (146, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (147, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (148, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (149, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (150, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (151, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (152, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (153, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (154, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (155, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (156, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (157, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (158, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (159, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (160, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (161, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (162, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (163, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (164, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (165, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (166, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (167, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (168, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (169, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (170, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (171, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (172, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (173, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (174, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (175, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (176, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (177, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (178, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (179, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (180, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (181, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (182, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (183, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (184, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (185, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (186, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (187, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (188, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (189, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (190, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (191, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (192, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (193, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (194, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (195, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (196, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (197, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (198, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (199, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (200, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (201, N'My First BentoBox', 1, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (202, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (203, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (204, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (205, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (206, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (208, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (209, N'My First BentoBox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (210, N'My First BentoBox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (211, N'', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (212, N'', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (213, N'', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (214, N'', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (215, N'', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (216, N'', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (217, N'', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (218, N'', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (219, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (220, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (221, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (222, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (223, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (224, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (225, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (226, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (227, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (228, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (229, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (230, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (231, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (232, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (233, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (234, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (235, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (236, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (237, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (238, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (239, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (240, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (241, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (242, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (243, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (244, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (245, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (246, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (247, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (248, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (249, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (250, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (251, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (252, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (253, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (254, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (255, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (256, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (257, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (258, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (259, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (260, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (261, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (262, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (263, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (264, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (265, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (266, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (267, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (268, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (269, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (270, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (271, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (272, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (273, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (274, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (275, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (276, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (277, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (278, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (279, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (280, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (281, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (282, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (283, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (284, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (285, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (286, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (287, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (288, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (289, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (290, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (291, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (292, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (293, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (294, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (295, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (296, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (297, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (298, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (299, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (300, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (301, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (302, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (303, N'My Lunchbox', 3, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (304, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (305, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (306, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (307, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (308, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (309, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (310, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (311, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (312, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (313, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (314, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (315, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (316, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (317, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (318, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (319, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (320, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (321, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (322, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (323, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (324, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (325, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (326, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (327, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (328, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (329, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (330, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (331, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (332, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (333, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (334, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (335, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (336, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (337, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (338, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (339, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (340, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (341, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (342, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (343, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (344, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (345, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (346, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (347, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (348, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (349, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (350, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (351, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (352, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (353, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (354, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (355, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (356, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (357, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (358, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (359, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (360, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (361, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (362, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (363, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (364, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (365, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (366, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (367, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (368, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (369, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (370, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (371, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (372, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (373, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (374, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (375, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (376, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (377, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (378, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (379, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (380, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (381, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (382, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (383, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (384, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (385, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (386, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (387, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (388, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (389, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (390, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (391, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (392, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (393, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (394, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (395, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (396, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (397, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (398, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (399, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (400, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (401, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (402, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (403, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (404, N'My Lunchbox', 3, NULL)
GO
print 'Processed 400 total records'
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (405, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (406, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (407, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (408, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (409, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (410, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (411, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (412, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (413, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (414, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (415, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (416, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (417, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (418, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (419, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (420, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (421, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (422, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (423, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (424, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (425, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (426, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (427, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (428, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (429, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (430, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (431, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (432, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (433, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (434, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (435, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (436, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (437, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (438, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (439, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (440, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (441, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (442, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (443, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (444, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (445, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (446, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (447, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (448, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (449, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (450, N'My Lunchbox', 5, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (451, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (452, N'My Lunchbox', 5, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (453, N'My Lunchbox', 5, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (454, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (455, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (456, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (457, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (458, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (459, N'My Lunchbox', 5, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (460, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (461, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (462, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (463, N'My Lunchbox', 6, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (464, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (465, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (466, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (467, N'My Lunchbox', 7, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (468, N'My Lunchbox', 8, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (469, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (470, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (471, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (472, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (473, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (474, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (475, N'My Lunchbox', 7, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (476, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (477, N'My Lunchbox', 7, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (478, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (479, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (480, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (481, N'My Lunchbox', 9, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (482, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (483, N'My Lunchbox', 8, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (484, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (485, N'My Lunchbox', 8, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (486, N'My Lunchbox', 7, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (487, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (488, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (489, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (490, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (491, N'My Lunchbox', 2, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (492, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (493, N'My Lunchbox', 5, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (494, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (495, N'My Lunchbox', 7, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (496, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (497, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (498, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (499, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (500, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (501, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (502, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (503, N'My Lunchbox', 3, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (504, N'My Lunchbox', 8, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (505, N'My Lunchbox', 8, NULL)
GO
print 'Processed 500 total records'
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (506, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (507, N'         my box', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (508, N'My Lunchbox', 15, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (509, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (510, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (511, N'My Lunchbox', 5, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (512, N'My Lunchbox', 1, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (513, N'My Lunchbox', 15, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (514, N'My Lunchbox', 15, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (515, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (516, N'My Lunchbox', 4, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (517, N'My Lunchbox', 15, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (518, N'My Lunchbox', 15, NULL)
INSERT [dbo].[CustomBentoBox] ([CustomBentoBoxId], [CustomBentoBoxName], [BentoBoxId], [Comment]) VALUES (519, N'My Lunchbox', 4, NULL)
SET IDENTITY_INSERT [dbo].[CustomBentoBox] OFF
/****** Object:  Table [dbo].[CustomBentoBoxItem]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomBentoBoxItem](
	[CustomBentoBoxItemId] [int] IDENTITY(1,1) NOT NULL,
	[CustomBentoBoxId] [int] NOT NULL,
	[DishId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomBentoBoxItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomBentoBoxItem] ON
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1, 8, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (2, 8, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (3, 9, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (4, 9, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (5, 12, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (6, 13, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (7, 14, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (8, 15, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (9, 16, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (10, 16, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (11, 18, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (12, 18, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (13, 18, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (14, 19, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (15, 20, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (16, 21, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (17, 21, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (18, 21, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (19, 22, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (20, 23, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (21, 23, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (22, 24, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (23, 24, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (24, 24, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (34, 28, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (36, 28, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (37, 28, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (39, 25, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (40, 25, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (41, 25, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (42, 38, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (43, 38, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (44, 38, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (45, 38, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (46, 40, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (47, 47, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (48, 47, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (49, 47, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (50, 49, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (51, 49, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (52, 50, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (53, 50, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (54, 52, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (55, 52, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (56, 54, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (57, 54, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (58, 56, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (59, 56, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (60, 58, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (61, 60, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (62, 62, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (63, 64, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (64, 66, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (65, 68, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (66, 70, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (67, 72, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (68, 75, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (69, 77, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (70, 79, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (71, 81, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (72, 83, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (73, 85, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (74, 87, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (75, 88, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (76, 89, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (77, 91, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (78, 92, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (79, 92, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (80, 93, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (81, 94, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (82, 95, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (83, 96, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (84, 97, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (85, 98, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (86, 98, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (87, 99, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (88, 100, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (89, 101, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (90, 102, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (91, 103, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (92, 104, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (93, 105, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (94, 106, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (95, 109, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (96, 109, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (97, 115, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (98, 120, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (102, 129, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (104, 132, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (105, 132, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (106, 133, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (107, 133, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (108, 133, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (109, 133, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (110, 134, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (111, 134, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (113, 134, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (114, 135, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (115, 135, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (116, 135, 12, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (117, 136, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (118, 137, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (119, 138, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (120, 139, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (121, 139, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (122, 140, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (123, 141, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (124, 141, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (125, 143, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (134, 144, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (135, 144, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (136, 144, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (137, 145, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (138, 145, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (139, 145, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (140, 147, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (141, 147, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (142, 147, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (145, 148, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (146, 148, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (147, 148, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (148, 148, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (149, 149, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (150, 149, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (151, 149, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (152, 150, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (153, 152, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (154, 152, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (155, 152, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (156, 153, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (157, 153, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (158, 153, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (159, 154, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (160, 154, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (161, 155, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (162, 155, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (163, 156, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (164, 156, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (165, 157, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (166, 157, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (167, 158, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (170, 161, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (171, 161, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (172, 163, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (173, 163, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (174, 171, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (175, 171, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (176, 171, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (177, 172, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (178, 174, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (179, 174, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (180, 174, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (181, 179, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (182, 179, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (185, 194, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (186, 194, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (187, 195, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (188, 196, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (189, 196, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (190, 198, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (191, 198, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (192, 198, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (193, 198, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (194, 198, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (195, 199, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (196, 199, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (198, 200, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (199, 200, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (204, 204, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (205, 204, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (206, 204, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (207, 206, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (208, 206, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (209, 206, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (210, 208, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (211, 208, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (212, 209, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (213, 210, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (214, 210, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (215, 210, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (216, 211, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (217, 211, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (218, 211, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (219, 212, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (220, 212, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (221, 212, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (222, 213, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (223, 214, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (224, 215, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (225, 215, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (226, 216, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (227, 216, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (228, 217, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (229, 217, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (230, 218, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (231, 218, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (232, 218, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (233, 218, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (234, 219, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (235, 219, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (236, 219, 7, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (237, 219, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (238, 219, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (239, 220, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (240, 220, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (241, 221, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (242, 221, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (243, 221, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (244, 221, 11, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (245, 221, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (246, 222, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (247, 222, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (248, 222, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (249, 222, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (250, 223, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (251, 223, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (252, 223, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (253, 224, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (254, 225, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (255, 225, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (256, 225, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (257, 225, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (258, 225, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (259, 226, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (260, 226, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (261, 226, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (262, 226, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (263, 226, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (264, 226, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (265, 226, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (266, 227, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (267, 227, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (268, 227, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (269, 227, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (270, 227, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (271, 228, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (272, 228, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (273, 228, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (274, 229, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (275, 229, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (276, 229, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (277, 229, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (278, 230, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (279, 230, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (280, 230, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (281, 231, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (282, 232, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (283, 233, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (284, 234, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (285, 235, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (286, 236, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (287, 237, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (288, 238, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (289, 238, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (290, 239, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (291, 240, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (292, 241, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (293, 242, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (294, 243, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (295, 244, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (296, 245, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (297, 246, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (298, 247, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (299, 248, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (300, 249, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (301, 250, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (302, 251, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (303, 252, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (304, 253, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (305, 254, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (306, 255, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (307, 256, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (308, 256, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (309, 256, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (310, 257, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (311, 258, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (312, 259, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (313, 259, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (314, 259, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (315, 260, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (316, 261, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (317, 261, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (318, 262, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (319, 262, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (320, 263, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (321, 263, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (322, 263, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (323, 263, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (324, 263, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (325, 264, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (326, 264, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (327, 264, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (328, 265, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (329, 266, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (330, 266, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (331, 266, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (332, 267, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (333, 268, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (334, 269, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (335, 270, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (336, 271, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (337, 271, 3, 1)
GO
print 'Processed 300 total records'
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (338, 272, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (339, 272, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (340, 272, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (341, 273, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (342, 273, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (343, 273, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (344, 273, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (345, 273, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (346, 274, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (347, 274, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (348, 274, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (349, 274, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (350, 274, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (351, 274, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (352, 275, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (353, 275, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (354, 275, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (355, 277, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (356, 277, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (357, 277, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (358, 277, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (359, 277, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (360, 278, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (361, 278, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (362, 278, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (363, 278, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (364, 279, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (365, 279, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (366, 279, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (367, 279, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (368, 280, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (369, 280, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (370, 280, 7, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (371, 280, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (372, 280, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (373, 281, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (374, 281, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (375, 281, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (376, 282, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (377, 282, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (378, 283, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (379, 283, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (380, 283, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (381, 284, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (382, 284, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (383, 285, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (384, 286, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (385, 286, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (386, 286, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (387, 286, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (388, 287, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (389, 287, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (390, 287, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (391, 287, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (392, 287, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (393, 288, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (394, 288, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (395, 288, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (396, 289, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (397, 289, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (398, 289, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (399, 290, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (400, 290, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (401, 290, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (402, 290, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (403, 291, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (404, 291, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (405, 291, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (406, 291, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (407, 291, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (408, 292, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (409, 292, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (410, 292, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (411, 292, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (412, 293, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (413, 293, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (414, 293, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (415, 294, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (416, 294, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (417, 294, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (418, 295, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (419, 295, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (420, 295, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (421, 296, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (422, 296, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (423, 296, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (424, 296, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (425, 297, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (426, 297, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (427, 297, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (428, 297, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (429, 298, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (430, 298, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (431, 298, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (432, 298, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (433, 298, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (434, 299, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (435, 299, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (436, 299, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (437, 299, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (438, 308, 2, 1)
GO
print 'Processed 400 total records'
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (439, 308, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (440, 308, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (441, 308, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (442, 316, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (443, 316, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (444, 316, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (445, 316, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (446, 316, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (447, 316, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (448, 316, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (449, 316, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (450, 316, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (451, 317, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (452, 317, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (453, 317, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (454, 317, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (455, 317, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (456, 317, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (502, 320, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (503, 320, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (504, 320, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (505, 321, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (506, 321, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (507, 321, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (508, 321, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (509, 323, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (510, 323, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (511, 323, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (512, 324, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (513, 324, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (514, 324, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (515, 325, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (516, 325, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (517, 325, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (518, 325, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (519, 326, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (520, 326, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (521, 326, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (522, 326, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (523, 327, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (524, 327, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (525, 328, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (526, 328, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (527, 328, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (532, 330, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (533, 330, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (534, 330, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (540, 329, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (541, 329, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (542, 329, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (543, 329, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (544, 329, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (545, 331, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (546, 331, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (547, 331, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (548, 331, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (549, 331, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (550, 332, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (551, 332, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (552, 332, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (560, 333, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (561, 333, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (562, 333, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (563, 333, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (564, 333, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (565, 333, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (569, 335, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (570, 335, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (571, 335, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (572, 336, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (573, 336, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (574, 336, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (575, 336, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (576, 337, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (582, 337, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (583, 337, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (584, 338, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (585, 338, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (586, 338, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (587, 339, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (588, 339, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (589, 339, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (590, 340, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (591, 340, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (592, 340, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (593, 340, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (594, 341, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (595, 341, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (596, 341, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (597, 342, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (598, 342, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (599, 343, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (600, 343, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (601, 344, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (602, 344, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (603, 345, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (604, 345, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (605, 346, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (606, 346, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (607, 341, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (608, 347, 1, 1)
GO
print 'Processed 500 total records'
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (609, 347, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (610, 347, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (611, 347, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (612, 348, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (613, 348, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (614, 348, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (615, 349, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (616, 349, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (617, 349, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (618, 350, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (619, 350, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (620, 350, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (621, 351, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (622, 351, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (623, 351, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (624, 352, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (625, 352, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (626, 352, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (627, 353, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (628, 353, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (629, 353, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (630, 354, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (631, 354, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (632, 355, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (633, 355, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (634, 356, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (635, 356, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (636, 357, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (637, 357, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (638, 357, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (639, 358, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (640, 358, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (641, 359, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (642, 359, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (643, 359, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (644, 360, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (645, 360, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (646, 360, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (647, 361, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (648, 361, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (649, 361, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (650, 361, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (651, 362, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (652, 362, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (653, 362, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (654, 362, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (655, 363, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (656, 363, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (657, 363, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (658, 364, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (659, 364, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (660, 364, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (661, 365, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (662, 365, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (663, 365, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (664, 366, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (665, 366, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (667, 367, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (671, 367, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (673, 367, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (674, 368, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (675, 368, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (676, 368, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (677, 368, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (678, 369, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (679, 369, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (680, 369, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (681, 370, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (682, 370, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (683, 371, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (684, 371, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (685, 371, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (686, 372, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (687, 372, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (688, 372, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (689, 372, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (690, 373, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (691, 373, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (692, 373, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (693, 374, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (694, 374, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (695, 374, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (696, 374, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (697, 375, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (698, 375, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (699, 375, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (700, 376, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (701, 376, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (702, 376, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (703, 377, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (704, 377, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (705, 377, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (706, 377, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (707, 378, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (708, 378, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (709, 378, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (710, 379, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (711, 379, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (712, 379, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (713, 380, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (714, 380, 10, 1)
GO
print 'Processed 600 total records'
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (715, 381, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (716, 381, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (717, 382, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (718, 382, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (719, 383, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (720, 383, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (721, 384, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (722, 384, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (723, 384, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (724, 385, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (725, 385, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (726, 386, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (727, 386, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (728, 387, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (729, 387, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (730, 387, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (731, 388, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (732, 388, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (733, 388, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (734, 389, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (735, 389, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (736, 389, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (737, 389, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (738, 390, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (739, 390, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (740, 390, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (741, 391, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (742, 391, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (743, 391, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (744, 392, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (745, 392, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (746, 393, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (747, 393, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (748, 393, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (749, 394, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (750, 394, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (751, 394, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (752, 395, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (753, 395, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (754, 395, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (755, 395, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (756, 396, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (757, 396, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (758, 396, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (759, 397, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (760, 397, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (761, 398, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (762, 398, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (763, 398, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (764, 399, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (765, 399, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (766, 400, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (767, 400, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (768, 400, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (769, 400, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (770, 401, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (771, 401, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (772, 402, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (773, 402, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (774, 402, 20, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (775, 403, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (776, 403, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (777, 404, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (778, 404, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (779, 404, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (780, 404, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (781, 405, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (782, 405, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (783, 405, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (784, 406, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (785, 406, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (786, 406, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (787, 406, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (788, 407, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (789, 407, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (790, 407, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (791, 408, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (792, 408, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (793, 408, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (794, 409, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (795, 409, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (796, 409, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (797, 410, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (798, 410, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (799, 410, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (800, 411, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (801, 411, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (802, 411, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (803, 411, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (804, 412, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (805, 412, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (806, 412, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (807, 413, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (808, 413, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (809, 413, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (810, 414, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (811, 414, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (812, 414, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (813, 414, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (814, 415, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (815, 415, 10, 1)
GO
print 'Processed 700 total records'
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (816, 416, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (817, 416, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (818, 416, 6, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (819, 416, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (821, 417, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (822, 417, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (823, 418, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (824, 418, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (825, 419, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (826, 419, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (827, 419, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (828, 420, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (829, 420, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (830, 420, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (831, 421, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (832, 421, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (833, 421, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (834, 422, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (835, 422, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (836, 423, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (837, 423, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (838, 423, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (839, 424, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (840, 424, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (841, 425, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (842, 425, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (843, 426, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (844, 426, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (845, 427, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (846, 427, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (847, 428, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (848, 428, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (849, 429, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (850, 429, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (851, 430, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (852, 430, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (853, 431, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (854, 431, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (855, 432, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (856, 432, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (857, 433, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (858, 433, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (859, 434, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (860, 434, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (861, 435, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (862, 435, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (863, 436, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (864, 436, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (865, 437, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (866, 437, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (867, 438, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (868, 438, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (869, 439, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (870, 439, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (871, 440, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (872, 440, 20, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (873, 440, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (874, 441, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (875, 441, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (876, 442, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (877, 442, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (878, 443, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (879, 443, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (880, 444, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (881, 444, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (882, 444, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (884, 445, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (885, 445, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (886, 446, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (887, 446, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (888, 447, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (889, 447, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (890, 448, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (891, 448, 20, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (892, 448, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (893, 449, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (894, 449, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (895, 450, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (896, 450, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (897, 450, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (898, 451, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (899, 451, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (900, 452, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (901, 452, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (902, 452, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (903, 453, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (904, 453, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (905, 453, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (906, 454, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (907, 454, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (908, 454, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (909, 455, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (910, 455, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (911, 455, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (912, 456, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (913, 456, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (914, 457, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (915, 457, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (916, 458, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (917, 458, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (918, 458, 10, 1)
GO
print 'Processed 800 total records'
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (919, 459, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (920, 459, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (921, 459, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (922, 460, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (923, 460, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (924, 460, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (925, 461, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (926, 461, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (927, 462, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (928, 462, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (929, 463, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (930, 463, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (931, 463, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (932, 464, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (933, 464, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (934, 464, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (935, 465, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (936, 465, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (937, 465, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (938, 466, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (939, 466, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (940, 466, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (941, 467, 24, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (942, 467, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (943, 468, 24, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (944, 468, 25, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (945, 468, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (946, 469, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (948, 470, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (949, 470, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (950, 471, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (951, 471, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (952, 471, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (953, 472, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (954, 472, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (955, 472, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (956, 473, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (957, 473, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (958, 473, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (959, 469, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (960, 469, 9, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (961, 469, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (962, 474, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (963, 474, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (964, 474, 9, 11)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (965, 475, 24, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (966, 475, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (967, 476, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (968, 476, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (969, 477, 25, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (970, 477, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (971, 478, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (972, 478, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (973, 478, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (974, 478, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (975, 479, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (976, 479, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (977, 479, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (978, 480, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (979, 480, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (980, 480, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (981, 481, 25, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (982, 481, 24, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (983, 481, 26, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (984, 481, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (985, 482, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (986, 482, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (987, 483, 26, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (988, 483, 27, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (989, 483, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (990, 484, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (991, 484, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (992, 484, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (993, 484, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (994, 485, 25, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (995, 485, 26, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (996, 485, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (997, 486, 25, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (998, 486, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (999, 487, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1000, 487, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1001, 487, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1003, 488, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1004, 488, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1005, 488, 12, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1006, 489, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1007, 490, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1008, 490, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1009, 491, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1010, 491, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1011, 491, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1013, 487, 9, 3)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1014, 487, 8, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1015, 487, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1016, 492, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1017, 493, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1018, 493, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1019, 493, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1020, 494, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1021, 495, 24, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1022, 495, 28, 1)
GO
print 'Processed 900 total records'
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1023, 496, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1024, 496, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1025, 497, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1026, 497, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1027, 498, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1028, 499, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1029, 499, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1030, 500, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1031, 500, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1032, 501, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1033, 501, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1034, 502, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1035, 502, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1036, 503, 3, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1037, 503, 2, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1038, 503, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1039, 503, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1040, 504, 26, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1041, 504, 25, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1042, 504, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1043, 505, 26, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1044, 505, 27, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1045, 505, 28, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1046, 506, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1047, 507, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1048, 508, 38, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1049, 508, 39, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1050, 509, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1051, 509, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1052, 510, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1053, 511, 13, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1054, 511, 18, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1055, 511, 19, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1056, 512, 1, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1057, 512, 10, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1058, 513, 38, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1059, 513, 39, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1060, 514, 38, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1061, 514, 39, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1062, 515, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1063, 516, 34, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1064, 517, 38, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1065, 517, 39, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1066, 517, 37, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1067, 518, 38, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1068, 518, 39, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1069, 518, 37, 1)
INSERT [dbo].[CustomBentoBoxItem] ([CustomBentoBoxItemId], [CustomBentoBoxId], [DishId], [quantity]) VALUES (1070, 519, 34, 1)
SET IDENTITY_INSERT [dbo].[CustomBentoBoxItem] OFF
/****** Object:  View [dbo].[DishOrderingSummary]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DishOrderingSummary]
	AS 
	
select dishid, count(dishId) as 'dishOrderTimes'
from dbo.orderitems oi
join dbo.custombentobox custombox
on (oi.itemid = custombox.custombentoboxid
and oi.itemtypeid=1)
join dbo.custombentoboxitem items
on items.custombentoboxid = custombox.custombentoboxid
group by dishid
GO
/****** Object:  StoredProcedure [dbo].[DishOrderCount_Fetch]    Script Date: 02/03/2013 22:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DishOrderCount_Fetch]
	@from datetime,
	@to datetime
AS
select dish.dishid, count(item.dishId) as 'dishOrderTimes'
from dbo.orderitems oi
join dbo.Orders ord on 
ord.OrderId = oi.orderId and ord.OrderReceivedAt between @from and @to
join dbo.custombentobox custombox
on (oi.itemid = custombox.custombentoboxid
and oi.itemtypeid=1)
join dbo.custombentoboxitem item
on item.custombentoboxid = custombox.custombentoboxid
right join dbo.dishes dish
on dish.dishId = item.dishId
group by item.dishid, dish.dishId
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__656C112C]    Script Date: 02/03/2013 22:01:16 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__Locations__ZipCo__2A4B4B5E]    Script Date: 02/03/2013 22:01:16 ******/
ALTER TABLE [dbo].[Locations] ADD  DEFAULT ('60613') FOR [ZipCode]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__6B24EA82]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__6C190EBB]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__6D0D32F4]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__3864608B]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__2180FB33]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__43D61337]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__00200768]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  Default [DF__Orders__Savings__44FF419A]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [Savings]
GO
/****** Object:  Default [DF__Orders__Delivery__2F9A1060]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((1)) FOR [DeliveryLocationId]
GO
/****** Object:  Default [DF__Orders__Delivery__56B3DD81]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [DeliveryTime]
GO
/****** Object:  Default [DF__Restauran__unive__2D27B809]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Restaurants] ADD  DEFAULT ((1)) FOR [universityId]
GO
/****** Object:  Default [DF__BentoBox__bentoB__2704CA5F]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[BentoBox] ADD  DEFAULT ((1)) FOR [bentoBoxStatusId]
GO
/****** Object:  Default [DF__Dishes__dishIncr__382F5661]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Dishes] ADD  DEFAULT ((0.0)) FOR [dishIncrementalPrice]
GO
/****** Object:  Default [DF__Dishes__isOnVoti__3DE82FB7]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Dishes] ADD  DEFAULT ((0)) FOR [isOnVoting]
GO
/****** Object:  Default [DF__CustomBen__quant__39237A9A]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[CustomBentoBoxItem] ADD  DEFAULT ((1)) FOR [quantity]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__6A30C649]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__Users__addressId__398D8EEE]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([addressId])
REFERENCES [dbo].[Locations] ([LocationId])
GO
/****** Object:  ForeignKey [FK__Universit__Unive__29572725]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[Universities]  WITH CHECK ADD FOREIGN KEY([UniversityLocationId])
REFERENCES [dbo].[Locations] ([LocationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__37703C52]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__208CD6FA]    Script Date: 02/03/2013 22:01:28 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__Universit__locat__36470DEF]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[University_Delivery]  WITH CHECK ADD FOREIGN KEY([locationId])
REFERENCES [dbo].[Locations] ([LocationId])
GO
/****** Object:  ForeignKey [FK__Universit__unive__3552E9B6]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[University_Delivery]  WITH CHECK ADD FOREIGN KEY([universityId])
REFERENCES [dbo].[Universities] ([UniversityId])
GO
/****** Object:  ForeignKey [FK__UsersInRo__roleI__61316BF4]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[Roles] ([roleId])
GO
/****** Object:  ForeignKey [FK__UsersInRo__userI__603D47BB]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__44CA3770]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__45BE5BA9]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__151B244E]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__7E37BEF6]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__7F2BE32F]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__3F115E1A]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__ShoppingC__UserI__4E88ABD4]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([userId])
GO
/****** Object:  ForeignKey [FK__Orders__Delivery__308E3499]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([DeliveryLocationId])
REFERENCES [dbo].[Locations] ([LocationId])
GO
/****** Object:  ForeignKey [FK__Orders__OrderSta__440B1D61]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatusLevels] ([OrderStatusId])
GO
/****** Object:  ForeignKey [FK__Orders__UserId__4316F928]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([userId])
GO
/****** Object:  ForeignKey [FK__Restauran__unive__2E1BDC42]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD FOREIGN KEY([universityId])
REFERENCES [dbo].[Universities] ([UniversityId])
GO
/****** Object:  ForeignKey [RestaurantLocation]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD  CONSTRAINT [RestaurantLocation] FOREIGN KEY([RestaurantLocationId])
REFERENCES [dbo].[Locations] ([LocationId])
GO
ALTER TABLE [dbo].[Restaurants] CHECK CONSTRAINT [RestaurantLocation]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__2739D489]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__2645B050]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__BentoBox__bentoB__27F8EE98]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[BentoBox]  WITH CHECK ADD FOREIGN KEY([bentoBoxStatusId])
REFERENCES [dbo].[bentoBoxStatusLevels] ([bentoBoxStatusId])
GO
/****** Object:  ForeignKey [FK__BentoBox__bentoB__7E02B4CC]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[BentoBox]  WITH CHECK ADD FOREIGN KEY([bentoBoxTypeId])
REFERENCES [dbo].[BentoBoxTypes] ([bentoBoxTypeId])
GO
/****** Object:  ForeignKey [FK__BentoBox__Restau__1A14E395]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[BentoBox]  WITH CHECK ADD FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
/****** Object:  ForeignKey [FK__Dishes__dishStat__22401542]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Dishes]  WITH CHECK ADD FOREIGN KEY([dishStatusId])
REFERENCES [dbo].[DishStatusLevels] ([dishStatusId])
GO
/****** Object:  ForeignKey [FK__Dishes__DishType__5D95E53A]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Dishes]  WITH CHECK ADD FOREIGN KEY([DishTypeId])
REFERENCES [dbo].[DishTypes] ([DishTypeId])
GO
/****** Object:  ForeignKey [FK__Dishes__restaura__108B795B]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Dishes]  WITH CHECK ADD FOREIGN KEY([restaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
/****** Object:  ForeignKey [FK__Rewards__orderId__4C364F0E]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Rewards]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
/****** Object:  ForeignKey [FK__Rewards__RewareT__10216507]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Rewards]  WITH CHECK ADD FOREIGN KEY([RewareTypeId])
REFERENCES [dbo].[RewardTypes] ([rewardTypeId])
GO
/****** Object:  ForeignKey [FK__Rewards__UserId__11158940]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[Rewards]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([userId])
GO
/****** Object:  ForeignKey [FK__OrderItem__itemT__793DFFAF]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD FOREIGN KEY([itemTypeId])
REFERENCES [dbo].[ItemTypes] ([ItemTypeId])
GO
/****** Object:  ForeignKey [FK__OrderItem__order__7849DB76]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
/****** Object:  ForeignKey [FK__UserDetai__locat__373B3228]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD FOREIGN KEY([locationId])
REFERENCES [dbo].[Locations] ([LocationId])
GO
/****** Object:  ForeignKey [FK__UserDetai__unive__1C873BEC]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD FOREIGN KEY([universityId])
REFERENCES [dbo].[Universities] ([UniversityId])
GO
/****** Object:  ForeignKey [FK__UserDetai__Unive__55BFB948]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD FOREIGN KEY([UniversityDeliveryId])
REFERENCES [dbo].[University_Delivery] ([universityDeliveryId])
GO
/****** Object:  ForeignKey [FK__UserDetai__userI__1B9317B3]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
/****** Object:  ForeignKey [FK__ShoppingC__ItemT__59063A47]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD FOREIGN KEY([ItemTypeId])
REFERENCES [dbo].[ItemTypes] ([ItemTypeId])
GO
/****** Object:  ForeignKey [FK__ShoppingC__Shopp__5812160E]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD FOREIGN KEY([ShoppingCartId])
REFERENCES [dbo].[ShoppingCarts] ([ShoppingCartId])
GO
/****** Object:  ForeignKey [FK__votings__dishId__2CBDA3B5]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[votings]  WITH CHECK ADD FOREIGN KEY([dishId])
REFERENCES [dbo].[Dishes] ([dishId])
GO
/****** Object:  ForeignKey [FK__votings__votedBy__43A1090D]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[votings]  WITH CHECK ADD FOREIGN KEY([votedBy])
REFERENCES [dbo].[Users] ([userId])
GO
/****** Object:  ForeignKey [FK__CustomBen__Bento__1ED998B2]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[CustomBentoBox]  WITH CHECK ADD FOREIGN KEY([BentoBoxId])
REFERENCES [dbo].[BentoBox] ([BentoBoxId])
GO
/****** Object:  ForeignKey [FK__CustomBen__Custo__239E4DCF]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[CustomBentoBoxItem]  WITH CHECK ADD FOREIGN KEY([CustomBentoBoxId])
REFERENCES [dbo].[CustomBentoBox] ([CustomBentoBoxId])
GO
/****** Object:  ForeignKey [FK__CustomBen__DishI__24927208]    Script Date: 02/03/2013 22:01:29 ******/
ALTER TABLE [dbo].[CustomBentoBoxItem]  WITH CHECK ADD FOREIGN KEY([DishId])
REFERENCES [dbo].[Dishes] ([dishId])
GO
