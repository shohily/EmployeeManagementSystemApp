USE [master]
GO
/****** Object:  Database [DB_EmployeeInformation]    Script Date: 6/3/2015 8:35:26 AM ******/
CREATE DATABASE [DB_EmployeeInformation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_EmployeeInformation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_EmployeeInformation.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_EmployeeInformation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_EmployeeInformation_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_EmployeeInformation] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_EmployeeInformation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_EmployeeInformation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB_EmployeeInformation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_EmployeeInformation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_EmployeeInformation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_EmployeeInformation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_EmployeeInformation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_EmployeeInformation] SET  MULTI_USER 
GO
ALTER DATABASE [DB_EmployeeInformation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_EmployeeInformation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_EmployeeInformation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_EmployeeInformation] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DB_EmployeeInformation]
GO
/****** Object:  Table [dbo].[Employee_Table]    Script Date: 6/3/2015 8:35:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee_Table](
	[ID] [int] NULL,
	[Name] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[JoinDate] [varchar](50) NULL,
	[Address] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (1, N'Disha', N'Manager', N'02-12-2015', N'Dhaka')
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (2, N'Mim', N'Officer', N'05-04-2015', N'Laxmibazar')
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (3, N'Sorna', N'Junior Officer', N'14-04-2015', N'Dhaka')
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (4, N'Tanjila', N'Officer', N'07-12-2014', N'Dhaka')
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (5, N'Hridda', N'ghj', N'1-1-15', N'Dhaka')
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (6, N'Rakib', N'Officer', N'04-02-2015', N'Uttora')
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (7, N'Tonni', N'Manager', N'18-11-2014', N'Mirpur')
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (8, N'sunny', N'officer', N'5.5.15', N'dhaka')
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (9, N'Rana', N'Officer', N'01-11-2014', N'Dhaka')
INSERT [dbo].[Employee_Table] ([ID], [Name], [Designation], [JoinDate], [Address]) VALUES (7, N'eva', N'manager', N'01.01.2011', N'dhaka')
USE [master]
GO
ALTER DATABASE [DB_EmployeeInformation] SET  READ_WRITE 
GO
