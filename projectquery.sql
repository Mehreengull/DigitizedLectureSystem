USE [DataBase8]
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Announcement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassTbl]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[School_Id] [int] NULL,
	[Code] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClassTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaterialResource]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaterialResource](
	[Name] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Length] [float] NOT NULL,
	[Content] [varbinary](max) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Classid] [int] NOT NULL,
 CONSTRAINT [PK_MaterialResource] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Summary] [nvarchar](50) NULL,
	[Details] [nvarchar](max) NULL,
	[Picture] [varbinary](max) NULL,
	[email] [nvarchar](50) NULL,
	[class_id] [int] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProfilePicture] [varbinary](max) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[RelationshipStatus] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[PersonalInfo] [varchar](150) NULL,
	[Name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[NumberOfClassesEnrolled] [int] NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SchoolTbl]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_SchoolTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentClassOTM]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentClassOTM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Student_Id] [int] NULL,
	[Class_Id] [int] NULL,
 CONSTRAINT [PK_StudentClassOTM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentTbl]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_StudentTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeacherClassOTM]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherClassOTM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Teacher_Id] [int] NULL,
	[Class_Id] [int] NULL,
 CONSTRAINT [PK_TeacherClassOTM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeacherTbl]    Script Date: 12/7/2018 10:06:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_TeacherTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClassTbl]  WITH CHECK ADD  CONSTRAINT [FK_ClassTbl_SchoolTbl] FOREIGN KEY([School_Id])
REFERENCES [dbo].[SchoolTbl] ([Id])
GO
ALTER TABLE [dbo].[ClassTbl] CHECK CONSTRAINT [FK_ClassTbl_SchoolTbl]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_ClassTbl] FOREIGN KEY([class_id])
REFERENCES [dbo].[ClassTbl] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_ClassTbl]
GO
ALTER TABLE [dbo].[StudentClassOTM]  WITH CHECK ADD  CONSTRAINT [FK_StudentClassOTM_ClassTbl1] FOREIGN KEY([Class_Id])
REFERENCES [dbo].[ClassTbl] ([Id])
GO
ALTER TABLE [dbo].[StudentClassOTM] CHECK CONSTRAINT [FK_StudentClassOTM_ClassTbl1]
GO
ALTER TABLE [dbo].[StudentClassOTM]  WITH CHECK ADD  CONSTRAINT [FK_StudentClassOTM_StudentTbl] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[StudentTbl] ([Id])
GO
ALTER TABLE [dbo].[StudentClassOTM] CHECK CONSTRAINT [FK_StudentClassOTM_StudentTbl]
GO
ALTER TABLE [dbo].[TeacherClassOTM]  WITH CHECK ADD  CONSTRAINT [FK_TeacherClassOTM_ClassTbl] FOREIGN KEY([Class_Id])
REFERENCES [dbo].[ClassTbl] ([Id])
GO
ALTER TABLE [dbo].[TeacherClassOTM] CHECK CONSTRAINT [FK_TeacherClassOTM_ClassTbl]
GO
ALTER TABLE [dbo].[TeacherClassOTM]  WITH CHECK ADD  CONSTRAINT [FK_TeacherClassOTM_TeacherTbl] FOREIGN KEY([Teacher_Id])
REFERENCES [dbo].[TeacherTbl] ([Id])
GO
ALTER TABLE [dbo].[TeacherClassOTM] CHECK CONSTRAINT [FK_TeacherClassOTM_TeacherTbl]
GO
