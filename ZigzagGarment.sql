USE [master]
GO
/****** Object:  Database [ZigzagGarmentDB]    Script Date: 10/21/2022 9:00:46 PM ******/
CREATE DATABASE [ZigzagGarmentDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ZigzagGarmentDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ZigzagGarmentDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ZigzagGarmentDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ZigzagGarmentDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ZigzagGarmentDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ZigzagGarmentDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ZigzagGarmentDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ZigzagGarmentDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ZigzagGarmentDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ZigzagGarmentDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ZigzagGarmentDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ZigzagGarmentDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ZigzagGarmentDB] SET  MULTI_USER 
GO
ALTER DATABASE [ZigzagGarmentDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ZigzagGarmentDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ZigzagGarmentDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ZigzagGarmentDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ZigzagGarmentDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ZigzagGarmentDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ZigzagGarmentDB', N'ON'
GO
ALTER DATABASE [ZigzagGarmentDB] SET QUERY_STORE = OFF
GO
USE [ZigzagGarmentDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/21/2022 9:00:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10/21/2022 9:00:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[employeeNO] [nvarchar](5) NOT NULL,
	[department] [nvarchar](50) NOT NULL,
	[employeeName] [nvarchar](100) NOT NULL,
	[address] [nvarchar](200) NOT NULL,
	[dob] [datetime2](7) NOT NULL,
	[gendr] [nvarchar](50) NOT NULL,
	[NIC] [nvarchar](12) NOT NULL,
	[mobileNo] [nvarchar](12) NOT NULL,
	[EmployeeAge] [int] NOT NULL,
	[experience] [nvarchar](50) NOT NULL,
	[experienceyears] [nvarchar](50) NOT NULL,
	[fromplace] [nvarchar](100) NOT NULL,
	[startdate] [datetime2](7) NOT NULL,
	[enddate] [datetime2](7) NOT NULL,
	[jobrole] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221019141033_InitialCreate', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221019152611_AddedDataAnnotationsToEmployeeModel', N'5.0.8')
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [employeeNO], [department], [employeeName], [address], [dob], [gendr], [NIC], [mobileNo], [EmployeeAge], [experience], [experienceyears], [fromplace], [startdate], [enddate], [jobrole]) VALUES (1004, N'12345', N'Account Department', N'Dinidu', N'No78 , jayasiripura anuradhapura', CAST(N'1998-10-01T01:24:00.0000000' AS DateTime2), N'Male', N'981221974V', N'0702900565', 24, N'Not Experience', N'55', N'colombo', CAST(N'2021-09-01T05:06:00.0000000' AS DateTime2), CAST(N'2022-10-03T23:05:00.0000000' AS DateTime2), N'software')
INSERT [dbo].[Employees] ([Id], [employeeNO], [department], [employeeName], [address], [dob], [gendr], [NIC], [mobileNo], [EmployeeAge], [experience], [experienceyears], [fromplace], [startdate], [enddate], [jobrole]) VALUES (1006, N'54564', N'Account Department', N'hoiewhrwe', N'ksjfgsejf', CAST(N'2022-10-05T00:00:00.0000000' AS DateTime2), N'Male', N'981221974V', N'0702900565', 32, N'Experience', N'65', N'fgfxk', CAST(N'2022-10-18T03:02:00.0000000' AS DateTime2), CAST(N'2022-02-06T22:05:00.0000000' AS DateTime2), N'srgsrgv')
INSERT [dbo].[Employees] ([Id], [employeeNO], [department], [employeeName], [address], [dob], [gendr], [NIC], [mobileNo], [EmployeeAge], [experience], [experienceyears], [fromplace], [startdate], [enddate], [jobrole]) VALUES (1009, N'87897', N'Sewing Department', N'ajgfesf', N'sjfhewj', CAST(N'1979-10-04T00:00:00.0000000' AS DateTime2), N'Male', N'893232654V', N'0702900565', 36, N'Not Experience', N'54', N'ghvgkh', CAST(N'2022-10-26T00:00:00.0000000' AS DateTime2), CAST(N'2022-10-24T00:00:00.0000000' AS DateTime2), N'ytdtydy')
INSERT [dbo].[Employees] ([Id], [employeeNO], [department], [employeeName], [address], [dob], [gendr], [NIC], [mobileNo], [EmployeeAge], [experience], [experienceyears], [fromplace], [startdate], [enddate], [jobrole]) VALUES (1010, N'12345', N'Account Department', N'fveshjf', N'sjahdas', CAST(N'2022-09-28T00:00:00.0000000' AS DateTime2), N'Female', N'326556984V', N'0702900565', 19, N'Not Experience', N'22', N'hszdvhs', CAST(N'2022-10-26T00:00:00.0000000' AS DateTime2), CAST(N'2022-10-24T00:00:00.0000000' AS DateTime2), N'jdhfksejef')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Person]    Script Date: 10/21/2022 9:00:46 PM ******/
ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [UC_Person] UNIQUE NONCLUSTERED 
(
	[employeeNO] ASC,
	[NIC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ZigzagGarmentDB] SET  READ_WRITE 
GO
