USE [Academy]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 18.07.2024 13:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Financing] [money] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 18.07.2024 13:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dean] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 18.07.2024 13:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Rating] [float] NOT NULL,
	[Year] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 18.07.2024 13:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmploymentDate] [date] NOT NULL,
	[IsAssistant] [bit] NOT NULL,
	[IsProfessor] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Position] [nvarchar](max) NOT NULL,
	[Premium] [money] NOT NULL,
	[Salary] [money] NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Financing], [Name]) VALUES (1, 1000000.0000, N'Cardiology')
INSERT [dbo].[Departments] ([Id], [Financing], [Name]) VALUES (2, 750000.0000, N'Neurology')
INSERT [dbo].[Departments] ([Id], [Financing], [Name]) VALUES (3, 500000.0000, N'Pediatrics')
INSERT [dbo].[Departments] ([Id], [Financing], [Name]) VALUES (4, 1200000.0000, N'Orthopedics')
INSERT [dbo].[Departments] ([Id], [Financing], [Name]) VALUES (5, 300000.0000, N'Dermatology')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 

INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (1, N'Dr. John Smith', N'Interventional Cardiology')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (2, N'Dr. Jane Doe', N'Electrophysiology')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (3, N'Dr. Alan Brown', N'Heart Failure')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (4, N'Dr. Emily White', N'Clinical Neurophysiology')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (5, N'Dr. Michael Green', N'Neurocritical Care')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (6, N'Dr. Sarah Black', N'Child Neurology')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (7, N'Dr. Olivia Blue', N'General Pediatrics')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (8, N'Dr. Daniel Red', N'Neonatology')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (9, N'Dr. Grace Yellow', N'Pediatric Oncology')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (10, N'Dr. Henry Gold', N'Sports Medicine')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (11, N'Dr. Emma Silver', N'Joint Replacement')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (12, N'Dr. Liam Bronze', N'Pediatric Orthopedics')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (13, N'Dr. Mia Copper', N'Cosmetic Dermatology')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (14, N'Dr. Noah Iron', N'Dermatopathology')
INSERT [dbo].[Faculties] ([Id], [Dean], [Name]) VALUES (15, N'Dr. Sophia Steel', N'Pediatric Dermatology')
SET IDENTITY_INSERT [dbo].[Faculties] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (1, N'Cardio1', 4.5, 3)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (2, N'Cardio2', 3.8, 2)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (3, N'Cardio3', 4.9, 1)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (4, N'Neuro1', 4.2, 4)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (5, N'Neuro2', 3.7, 5)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (6, N'Neuro3', 4.3, 3)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (7, N'Pedia1', 3.9, 2)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (8, N'Pedia2', 4, 3)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (9, N'Pedia3', 3.8, 1)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (10, N'Ortho1', 4.4, 4)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (11, N'Ortho2', 3.6, 2)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (12, N'Ortho3', 4.1, 5)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (13, N'Derma1', 4.3, 3)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (14, N'Derma2', 3.5, 1)
INSERT [dbo].[Groups] ([Id], [Name], [Rating], [Year]) VALUES (15, N'Derma3', 4.2, 4)
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (1, CAST(N'2005-09-15' AS Date), 0, 1, N'John', N'Professor of Cardiology', 1500.0000, 18000.0000, N'Smith')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (2, CAST(N'2010-01-10' AS Date), 1, 0, N'Emily', N'Assistant in Neurology', 500.0000, 3000.0000, N'White')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (3, CAST(N'1998-03-23' AS Date), 0, 1, N'Robert', N'Professor of Pediatrics', 1100.0000, 10000.0000, N'Brown')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (4, CAST(N'2015-06-12' AS Date), 0, 0, N'Anna', N'Dermatologist', 350.0000, 4000.0000, N'Taylor')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (5, CAST(N'2020-11-01' AS Date), 1, 0, N'Michael', N'Orthopedic Assistant', 300.0000, 6500.0000, N'Johnson')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (6, CAST(N'2000-01-01' AS Date), 1, 0, N'Bob', N'Assistant in Neurology', 450.0000, 3500.0000, N'Bobster')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (7, CAST(N'2008-04-20' AS Date), 0, 0, N'Mary', N'Pediatrician', 200.0000, 4500.0000, N'Jones')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (8, CAST(N'2012-09-05' AS Date), 0, 0, N'William', N'Neurologist', 2500.0000, 4800.0000, N'Wilson')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (9, CAST(N'2014-07-15' AS Date), 0, 0, N'Elizabeth', N'Dermatologist', 300.0000, 4200.0000, N'Roberts')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (10, CAST(N'2016-03-10' AS Date), 0, 0, N'Christopher', N'Orthopedist', 200.0000, 4300.0000, N'Lee')
INSERT [dbo].[Teachers] ([Id], [EmploymentDate], [IsAssistant], [IsProfessor], [Name], [Position], [Premium], [Salary], [Surname]) VALUES (11, CAST(N'2019-01-25' AS Date), 0, 0, N'Sophia', N'Cardiologist', 150.0000, 4700.0000, N'Young')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__737584F6FC3544A9]    Script Date: 18.07.2024 13:22:23 ******/
ALTER TABLE [dbo].[Departments] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Facultie__737584F6DF5A8F18]    Script Date: 18.07.2024 13:22:23 ******/
ALTER TABLE [dbo].[Faculties] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Groups__737584F639EF8891]    Script Date: 18.07.2024 13:22:23 ******/
ALTER TABLE [dbo].[Groups] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT ((0)) FOR [IsAssistant]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT ((0)) FOR [IsProfessor]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT ((0.0)) FOR [Premium]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD CHECK  (([Financing]>=(0.0)))
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD CHECK  (([Dean]<>N''))
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Rating]>=(0) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Year]>=(1) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([EmploymentDate]>='1990-01-01'))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Position]<>N''))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Premium]>=(0.0)))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Salary]>(0.0)))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Surname]<>N''))
GO
