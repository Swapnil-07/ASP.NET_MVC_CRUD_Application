USE [Crud_Application]
GO
/****** Object:  Table [dbo].[State]    Script Date: 06/23/2020 03:08:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [nvarchar](50) NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[State] ON
INSERT [dbo].[State] ([state_id], [state_name], [country_id]) VALUES (1, N'Uttar Pradesh', 1)
INSERT [dbo].[State] ([state_id], [state_name], [country_id]) VALUES (2, N'Rajasthan', 1)
INSERT [dbo].[State] ([state_id], [state_name], [country_id]) VALUES (3, N'Delhi', 1)
INSERT [dbo].[State] ([state_id], [state_name], [country_id]) VALUES (4, N'NewYork', 2)
INSERT [dbo].[State] ([state_id], [state_name], [country_id]) VALUES (5, N'Mishigan', 2)
INSERT [dbo].[State] ([state_id], [state_name], [country_id]) VALUES (6, N'London', 3)
SET IDENTITY_INSERT [dbo].[State] OFF
/****** Object:  Table [dbo].[Emp]    Script Date: 06/23/2020 03:08:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_name] [nvarchar](50) NULL,
	[gender] [nvarchar](20) NULL,
	[is_fulltime] [bit] NOT NULL,
	[address] [nvarchar](max) NULL,
	[country] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[image_path] [nvarchar](max) NULL,
 CONSTRAINT [PK_Emp] PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Emp] ON
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (1, N'Swapnil', N'Male', 1, N'Thermal Colony', N'1', N'2', N'Kota', N'F:\Soft Engg\Programming\Practice\MVC New Applications\Crud_App_MVC\Crud_App_MVC\App_Data\Images\765px-SARS-CoV-2_without_background.png')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (2, N'Anmol', N'Male', 1, N'Kota', N'1', N'1', N'Noida', N'F:\Soft Engg\Programming\Practice\MVC New Applications\Crud_App_MVC\Crud_App_MVC\App_Data\Images\shutterstock_1622665819.jpg')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (3, N'Anmol Ojha', N'Male', 1, N'Udaipur', N'1', N'1', N'Noida', N'F:\Soft Engg\Programming\Practice\MVC New Applications\Crud_App_MVC\Crud_App_MVC\App_Data\Images\bell.gif')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (4, N'OP', N'Male', 1, N'Sikar road', N'1', N'2', N'Sikar', N'F:\Soft Engg\Programming\Practice\MVC New Applications\Crud_App_MVC\Crud_App_MVC\App_Data\Images\9c679254-1ad6-40f8-8934-ea6d1492eb1d.jpg')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (5, N'Mobile', N'Female', 1, N'Haryana', N'2', N'4', N'haryana', N'F:\Soft Engg\Programming\Practice\MVC New Applications\Crud_App_MVC\Crud_App_MVC\App_Data\Images\WhatsApp Image 2019-06-06 at 6.05.15 PM.jpeg')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (6, N'Ankit', N'Male', 1, N'Street-67', N'1', N'2', N'Kurukshetra', N'F:\Soft Engg\Programming\Practice\MVC New Applications\Crud_App_MVC\Crud_App_MVC\App_Data\Images\9c679254-1ad6-40f8-8934-ea6d1492eb1d.jpg')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (7, N'Prasann JI', N'Male', 1, N'Vatika Sansaar', N'2', N'4', N'Kathmandu', N'F:\Soft Engg\Programming\Practice\MVC New Applications\Crud_App_MVC\Crud_App_MVC\App_Data\Images\coronavirus-ares-genetics.png')
SET IDENTITY_INSERT [dbo].[Emp] OFF
/****** Object:  Table [dbo].[Country]    Script Date: 06/23/2020 03:08:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (1, N'India')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (2, N'USA')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (3, N'UK')
SET IDENTITY_INSERT [dbo].[Country] OFF
