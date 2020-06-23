USE [Crud_Application]
GO
/****** Object:  Table [dbo].[State]    Script Date: 06/24/2020 02:29:45 ******/
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
/****** Object:  Table [dbo].[Emp]    Script Date: 06/24/2020 02:29:45 ******/
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
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (9, N'Gupta Ji', N'Male', 0, N'Gupta Ji ki Gali, Gupta Mohalla', N'1', N'2', N'Gupta Nagar', N'765px-SARS-CoV-2_without_background.png')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (10, N'Sharma Ji', N'Male', 0, N'Sharma Ji ki Gali, Sharma ji ka Mohalla', N'1', N'2', N'Sharma Nagar', N'download (1).jpg')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (11, N'Abhijeet', N'Male', 1, N'Rangbari Road', N'1', N'2', N'Kota', N'cretor.jpg')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (12, N'Raj', N'Male', 1, N'Fatehpura', N'1', N'2', N'Udz', N'download (2).jpg')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (13, N'Op', N'Male', 1, N'Kochor', N'1', N'2', N'Sikar', N'images.jpg')
INSERT [dbo].[Emp] ([emp_id], [emp_name], [gender], [is_fulltime], [address], [country], [state], [city], [image_path]) VALUES (14, N'Swapnil', N'Male', 1, N'Thermal Colony', N'2', N'4', N'NewYork', N'images.jfif')
SET IDENTITY_INSERT [dbo].[Emp] OFF
/****** Object:  Table [dbo].[Country]    Script Date: 06/24/2020 02:29:45 ******/
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
