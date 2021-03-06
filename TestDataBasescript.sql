USE [master]
GO
/****** Object:  Database [test]    Script Date: 17-01-2021 18:11:33 ******/
CREATE DATABASE [test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [test] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test] SET ARITHABORT OFF 
GO
ALTER DATABASE [test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test] SET  ENABLE_BROKER 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test] SET RECOVERY FULL 
GO
ALTER DATABASE [test] SET  MULTI_USER 
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'test', N'ON'
GO
ALTER DATABASE [test] SET QUERY_STORE = OFF
GO
USE [test]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [test]
GO
/****** Object:  Table [dbo].[CustomerMaster]    Script Date: 17-01-2021 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerMaster](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomerMaster] ON 

INSERT [dbo].[CustomerMaster] ([CustomerID], [CustomerName], [Email], [PhoneNo], [CompanyName], [Location]) VALUES (12, N'Adnan', N'ADNSADAS@GMAIL.COM', N'9999450096', N'BENNETT COLEMAN AND COMPANY LIMITED', N'Delhi')
INSERT [dbo].[CustomerMaster] ([CustomerID], [CustomerName], [Email], [PhoneNo], [CompanyName], [Location]) VALUES (13, N'TESTCUSTOMER', N'ASDASDAS@ASDADAS.CINCI1212', N'9787981268', N'CUSTEROM', N'Mumbai')
INSERT [dbo].[CustomerMaster] ([CustomerID], [CustomerName], [Email], [PhoneNo], [CompanyName], [Location]) VALUES (14, N'VARUNBEV', N'ASDASHDSADASN@GMAI.COM', N'7011682274', N'VARUN BEVERAGES LIMITED', N'Pune')
INSERT [dbo].[CustomerMaster] ([CustomerID], [CustomerName], [Email], [PhoneNo], [CompanyName], [Location]) VALUES (15, N'ABINBEV', N'ASDHAHDSA@BAYNABHAY7AM976.COAa', N'9829710541', N'ANHEUSER BUSCH INBEV INDIA LIMITED', N'Delhi')
INSERT [dbo].[CustomerMaster] ([CustomerID], [CustomerName], [Email], [PhoneNo], [CompanyName], [Location]) VALUES (16, N'kevin', N'KDD5@G.COMa', N'9812381936', N'KDDD', N'Delhi')
INSERT [dbo].[CustomerMaster] ([CustomerID], [CustomerName], [Email], [PhoneNo], [CompanyName], [Location]) VALUES (17, N'sagar', N'sag_cu@inquizity.com', N'9820098205', N'Sagar Electronics', N'Mumbai')
INSERT [dbo].[CustomerMaster] ([CustomerID], [CustomerName], [Email], [PhoneNo], [CompanyName], [Location]) VALUES (18, N'Jim', N'jim@red.com', N'8765678901', N'jimak', N'Mumbai')
INSERT [dbo].[CustomerMaster] ([CustomerID], [CustomerName], [Email], [PhoneNo], [CompanyName], [Location]) VALUES (19, N'Lokesh', N'YOGESHBCCL@GMAIL.COM', N'8851998414', N'BENNETT COLEMAN AND CO LTD', N'Pune')
INSERT [dbo].[CustomerMaster] ([CustomerID], [CustomerName], [Email], [PhoneNo], [CompanyName], [Location]) VALUES (20, N'Virat', N'ghty@gmail.com', N'9876543443', N'sdds', N'Pune')
SET IDENTITY_INSERT [dbo].[CustomerMaster] OFF
/****** Object:  StoredProcedure [dbo].[usp_GetUserDetails]    Script Date: 17-01-2021 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    
    
    
create PROCEDURE [dbo].[usp_GetUserDetails]--exec spGetUserDetails '
 @Location VARCHAR(80)    
AS    
BEGIN    
 --SELECT AdminUserName,[Password],RoleID,RoleName FROM AdminUserMaster U INNER JOIN RoleMaster R on U.RoleID = R.ID    
 --SELECT * FROM UserMaster WHERE MUID = @UserName    
select  CustomerName, Email,PhoneNo,CompanyName,Location  from CustomerMaster   
where Location = @Location
END    




    
    
    
    
    
    
    
    
    
    
    
    
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
