# task
1. Starting with The database Ive created a table regarding Customer and Its location.

GO

/****** Object:  Table [dbo].[CustomerMaster]    Script Date: 17-01-2021 17:50:49 ******/
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

=====================================================================================================================================
2. Creating a display Store Procedure to display information based on The location.

GO
/****** Object:  StoredProcedure [dbo].[spGetUserDetails]    Script Date: 16-01-2021 13:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[usp_GetUserDetails]--exec spGetUserDetails '
 @Location VARCHAR(80)    
AS    
BEGIN    
    select  CustomerName, Email,PhoneNo,CompanyName,Location  from CustomerMaster   
    where Location = @Location
END    
========================================================================================================================================




    
    
    
    
    
    
    
    
    
    
    
    












