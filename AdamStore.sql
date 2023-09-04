USE master
GO
DROP DATABASE [AdamStore1]
GO
CREATE DATABASE [AdamStore1]
GO
USE [AdamStore1]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 8/11/2022 7:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 8/11/2022 7:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/11/2022 7:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/11/2022 7:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/11/2022 7:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[read1] [bit] NULL,
	[changedate] [date] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/11/2022 7:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/11/2022 7:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 8/11/2022 7:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[email] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[marks] [float] NOT NULL,
	[gender] [bit] NOT NULL,
	[country] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ALFKI', N'alfki', N'Maria Anders', N'alfki@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANATR', N'anatr', N'Ana Trujillo', N'anatr@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANTON', N'anton', N'Antonio Moreno', N'anton@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'AROUT', N'arout', N'Thomas Hardy', N'arout@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BERGS', N'bergs', N'Christina Berglund', N'bergs@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BLAUS', N'blaus', N'Hanna Moos', N'blaus@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BLONP', N'blonp', N'Frédérique Citeaux', N'blonp@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BOLID', N'bolid', N'Martín Sommer', N'bolid@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BONAP', N'bonap', N'Laurence Lebihan', N'bonap@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BOTTM', N'bottm', N'Elizabeth Lincoln', N'bottm@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BSBEV', N'bsbev', N'Victoria Ashworth', N'bsbev@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CACTU', N'cactu', N'Patricio Simpson', N'cactu@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CENTC', N'centc', N'Francisco Chang', N'centc@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CHOPS', N'chops', N'Yang Wang', N'chops@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'COMMI', N'commi', N'Pedro Afonso', N'commi@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CONSH', N'consh', N'Elizabeth Brown', N'consh@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'customer', N'123', N'Nguyễn Văn Tèo', N'teonv@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'director', N'123', N'Nguyễn Chí Phèo', N'pheonc@fpt.edu.vn', N'9b925e48.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'DRACD', N'dracd', N'Sven Ottlieb', N'dracd@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'DUMON', N'dumon', N'Janine Labrune', N'dumon@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'EASTC', N'eastc', N'Ann Devon', N'eastc@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ERNSH', N'ernsh', N'Roland Mendel', N'ernsh@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FAMIA', N'famia', N'Aria Cruz', N'famia@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FISSA', N'fissa', N'Diego Roel', N'fissa@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FOLIG', N'folig', N'Martine Rancé', N'folig@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FOLKO', N'folko', N'Maria Larsson', N'folko@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FRANK', N'frank', N'Peter Franken', N'frank@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FRANR', N'franr', N'Carine Schmitt', N'franr@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FRANS', N'frans', N'Paolo Accorti', N'frans@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FURIB', N'furib', N'Lino Rodriguez', N'furib@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GALED', N'galed', N'Eduardo Saavedra', N'galed@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GODOS', N'godos', N'José Pedro Freyre', N'godos@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GOURL', N'gourl', N'André Fonseca', N'gourl@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GREAL', N'greal', N'Howard Snyder', N'greal@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GROSR', N'grosr', N'Manuel Pereira', N'grosr@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HANAR', N'hanar', N'Mario Pontes', N'hanar@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HILAA', N'hilaa', N'Carlos Hernández', N'hilaa@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HUNGC', N'hungc', N'Yoshi Latimer', N'hungc@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HUNGO', N'hungo', N'Patricia McKenna', N'hungo@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ISLAT', N'islat', N'Helen Bennett', N'islat@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'KOENE', N'koene', N'Philip Cramer', N'koene@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LACOR', N'lacor', N'Daniel Tonini', N'lacor@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LAMAI', N'lamai', N'Annette Roulet', N'lamai@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LAUGB', N'laugb', N'Yoshi Tannamuri', N'laugb@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LAZYK', N'lazyk', N'John Steel', N'lazyk@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LEHMS', N'lehms', N'Renate Messner', N'lehms@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LETSS', N'letss', N'Jaime Yorres', N'letss@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LILAS', N'lilas', N'Carlos González', N'lilas@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LINOD', N'linod', N'Felipe Izquierdo', N'linod@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LONEP', N'lonep', N'Fran Wilson', N'lonep@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'lucdtps17380@fpt.edu.vn', N'182832b6372', N'Dương Tấn Lực', N'lucdtps17380@fpt.edu.vn', N'7135ceec.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MAGAA', N'magaa', N'Giovanni Rovelli', N'magaa@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MAISD', N'maisd', N'Catherine Dewey', N'maisd@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MEREP', N'merep', N'Jean Fresnière', N'merep@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MORGK', N'morgk', N'Alexander Feuer', N'morgk@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'NORTS', N'norts', N'Simon Crowther', N'norts@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'OCEAN', N'ocean', N'Yvonne Moncada', N'ocean@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'OLDWO', N'oldwo', N'Rene Phillips', N'oldwo@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'OTTIK', N'ottik', N'Henriette Pfalzheim', N'ottik@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PARIS', N'paris', N'Marie Bertrand', N'paris@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PERIC', N'peric', N'Guillermo Fernández', N'peric@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PICCO', N'picco', N'Georg Pipps', N'picco@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PRINI', N'prini', N'Isabel de Castro', N'prini@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'QUEDE', N'quede', N'Bernardo Batista', N'quede@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'QUEEN', N'queen', N'Lúcia Carvalho', N'queen@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'QUICK', N'quick', N'Horst Kloss', N'quick@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RANCH', N'ranch', N'Sergio Gutiérrez', N'ranch@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RATTC', N'rattc', N'Paula Wilson', N'rattc@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'REGGC', N'reggc', N'Maurizio Moroni', N'reggc@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RICAR', N'ricar', N'Janete Limeira', N'ricar@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RICSU', N'ricsu', N'Michael Holz', N'ricsu@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ROMEY', N'romey', N'Alejandra Camino', N'romey@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SANTG', N'santg', N'Jonas Bergulfsen', N'santg@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SAVEA', N'savea', N'Jose Pavarotti', N'savea@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SEVES', N'seves', N'Hari Kumar', N'seves@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SIMOB', N'simob', N'Jytte Petersen', N'simob@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SPECD', N'specd', N'Dominique Perrier', N'specd@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SPLIR', N'splir', N'Art Braunschweiger', N'splir@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'staff', N'123', N'Phạm Thị Nở', N'nopt@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SUPRD', N'suprd', N'Pascale Cartrain', N'suprd@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'THEBI', N'thebi', N'Liz Nixon', N'thebi@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'THECR', N'thecr', N'Liu Wong', N'thecr@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TOMSP', N'tomsp', N'Karin Josephs', N'tomsp@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TORTU', N'tortu', N'Miguel Angel Paolino', N'tortu@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TRADH', N'tradh', N'Anabela Domingues', N'tradh@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TRAIH', N'traih', N'Helvetius Nagy', N'traih@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'VAFFE', N'vaffe', N'Palle Ibsen', N'vaffe@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'VICTE', N'victe', N'Mary Saveley', N'victe@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'VINET', N'vinet', N'Paul Henriot', N'vinet@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WANDK', N'wandk', N'Rita Müller', N'wandk@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WARTH', N'warth', N'Pirkko Koskitalo', N'warth@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WELLI', N'welli', N'Paula Parente', N'welli@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WHITC', N'whitc', N'Karl Jablonski', N'whitc@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WILMK', N'wilmk', N'Matti Karttunen', N'wilmk@gmail.com', N'user.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WOLZA', N'wolza', N'Zbyszek Piestrzeniewicz', N'wolza@gmail.com', N'user.png')
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'ANATR', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'ANTON', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (5, N'AROUT', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (6, N'BERGS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7, N'BLAUS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (8, N'BLONP', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (9, N'BOLID', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (10, N'BONAP', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (11, N'BOTTM', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (12, N'BSBEV', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (13, N'CACTU', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (14, N'CENTC', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (15, N'CHOPS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (16, N'COMMI', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (17, N'CONSH', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (18, N'DRACD', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (19, N'DUMON', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (20, N'EASTC', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (21, N'ERNSH', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (22, N'FAMIA', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (23, N'FISSA', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (24, N'FOLIG', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (25, N'FOLKO', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (26, N'FRANK', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (27, N'FRANR', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (28, N'FRANS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (29, N'FURIB', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (30, N'GALED', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (31, N'GODOS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (32, N'GOURL', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (33, N'GREAL', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (34, N'GROSR', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (35, N'HANAR', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (36, N'HILAA', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (37, N'HUNGC', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (38, N'HUNGO', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (39, N'ISLAT', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (40, N'KOENE', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (41, N'LACOR', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (42, N'LAMAI', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (43, N'LAUGB', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (44, N'LAZYK', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (45, N'LEHMS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (46, N'LETSS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (47, N'LILAS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (48, N'LINOD', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (49, N'LONEP', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (50, N'MAGAA', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (51, N'MAISD', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (52, N'MEREP', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (53, N'MORGK', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (55, N'NORTS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (56, N'OCEAN', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (57, N'OLDWO', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (58, N'OTTIK', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (59, N'PARIS', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (60, N'PERIC', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (61, N'PICCO', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (62, N'PRINI', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (63, N'QUEDE', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (64, N'QUEEN', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (65, N'QUICK', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (66, N'RANCH', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (67, N'RATTC', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (68, N'REGGC', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (69, N'RICAR', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (70, N'RICSU', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (71, N'ROMEY', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (72, N'SANTG', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (74, N'SAVEA', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (75, N'SEVES', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (76, N'SIMOB', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (77, N'SPECD', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (78, N'SPLIR', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (79, N'SUPRD', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (80, N'customer', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (82, N'THEBI', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (83, N'THECR', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (84, N'TOMSP', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (85, N'TORTU', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (86, N'TRADH', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (87, N'TRAIH', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (89, N'VAFFE', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (90, N'VICTE', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (91, N'VINET', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (92, N'WANDK', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (93, N'WARTH', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (94, N'WELLI', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (95, N'WHITC', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (96, N'WILMK', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (97, N'WOLZA', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (100, N'staff', N'STAF')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7103, N'staff', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7141, N'ALFKI', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7145, N'director', N'DIRE')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7146, N'director', N'STAF')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7147, N'lucdtps17380@fpt.edu.vn', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7148, N'lucdtps17380@fpt.edu.vn', N'DIRE')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7149, N'lucdtps17380@fpt.edu.vn', N'STAF')
GO
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1000', N'Iphone')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1001', N'SamSung')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1002', N'OPPO')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1003', N'Vivo')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1004', N'Xiaomi')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1005', N'Masstel')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1006', N'Nokia')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1007', N'Realme')
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100005, 10249, 1051, 42.4, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100006, 10250, 1041, 7.7, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100007, 10250, 1051, 42.4, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100008, 10250, 1065, 16.8, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100009, 10251, 1022, 16.8, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100010, 10251, 1057, 15.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100011, 10251, 1065, 16.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100012, 10252, 1020, 64.8, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100013, 10252, 1033, 2, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100014, 10252, 1060, 27.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100015, 10253, 1031, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100016, 10253, 1039, 14.4, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100017, 10253, 1049, 16, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100018, 10254, 1024, 3.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100019, 10254, 1055, 19.2, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100020, 10254, 1074, 8, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100021, 10255, 1002, 15.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100022, 10255, 1016, 13.9, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100023, 10255, 1036, 15.2, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100024, 10255, 1059, 44, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100025, 10256, 1053, 26.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100026, 10256, 1077, 10.4, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100027, 10257, 1027, 35.1, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100028, 10257, 1039, 14.4, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100029, 10257, 1077, 10.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100030, 10258, 1002, 15.2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100032, 10258, 1032, 25.6, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100033, 10259, 1021, 8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100034, 10259, 1037, 20.8, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100035, 10260, 1041, 7.7, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100036, 10260, 1057, 15.6, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100037, 10260, 1062, 39.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100038, 10260, 1070, 12, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100039, 10261, 1021, 8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100040, 10261, 1035, 14.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100042, 10262, 1007, 24, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100043, 10262, 1056, 30.4, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100044, 10263, 1016, 13.9, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100045, 10263, 1024, 3.6, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100046, 10263, 1030, 20.7, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100047, 10263, 1074, 8, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100048, 10264, 1002, 15.2, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100049, 10264, 1041, 7.7, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100050, 10265, 1017, 31.2, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100051, 10265, 1070, 12, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100052, 10266, 1012, 30.4, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100053, 10267, 1040, 14.7, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100054, 10267, 1059, 44, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100055, 10267, 1076, 14.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100056, 10268, 1029, 99, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100058, 10269, 1033, 2, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100060, 10270, 1036, 15.2, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100061, 10270, 1043, 36.8, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100062, 10271, 1033, 2, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100063, 10272, 1020, 64.8, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100064, 10272, 1031, 10, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100066, 10273, 1010, 24.8, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100067, 10273, 1031, 10, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100068, 10273, 1033, 2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100069, 10273, 1040, 14.7, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100070, 10273, 1076, 14.4, 33)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100071, 10274, 1071, 17.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100073, 10275, 1024, 3.6, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100074, 10275, 1059, 44, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100075, 10276, 1010, 24.8, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100076, 10276, 1013, 4.8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100077, 10277, 1028, 36.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100078, 10277, 1062, 39.4, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100079, 10278, 1044, 15.5, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100080, 10278, 1059, 44, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100081, 10278, 1063, 35.1, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100082, 10278, 1073, 12, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100083, 10279, 1017, 31.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100084, 10280, 1024, 3.6, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100085, 10280, 1055, 19.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100086, 10280, 1075, 6.2, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100087, 10281, 1019, 7.3, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100088, 10281, 1024, 3.6, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100089, 10281, 1035, 14.4, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100090, 10282, 1030, 20.7, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100091, 10282, 1057, 15.6, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100092, 10283, 1015, 12.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100093, 10283, 1019, 7.3, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100094, 10283, 1060, 27.2, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100096, 10284, 1027, 35.1, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100097, 10284, 1044, 15.5, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100098, 10284, 1060, 27.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100099, 10284, 1067, 11.2, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100100, 10285, 1001, 14.4, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100101, 10285, 1040, 14.7, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100102, 10285, 1053, 26.2, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100103, 10286, 1035, 14.4, 100)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100104, 10286, 1062, 39.4, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100105, 10287, 1016, 13.9, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100106, 10287, 1034, 11.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100107, 10287, 1046, 9.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100108, 10288, 1054, 5.9, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100109, 10288, 1068, 10, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100110, 10289, 1003, 8, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100111, 10289, 1064, 26.6, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100113, 10290, 1029, 99, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100114, 10290, 1049, 16, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100115, 10290, 1077, 10.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100116, 10291, 1013, 4.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100117, 10291, 1044, 15.5, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100118, 10291, 1051, 42.4, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100119, 10292, 1020, 64.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100120, 10293, 1018, 50, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100121, 10293, 1024, 3.6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100122, 10293, 1063, 35.1, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100123, 10293, 1075, 6.2, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100124, 10294, 1001, 14.4, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100125, 10294, 1017, 31.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100126, 10294, 1043, 36.8, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100127, 10294, 1060, 27.2, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100128, 10294, 1075, 6.2, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100129, 10295, 1056, 30.4, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100131, 10296, 1016, 13.9, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100132, 10296, 1069, 28.8, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100133, 10297, 1039, 14.4, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100135, 10298, 1002, 15.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100136, 10298, 1036, 15.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100137, 10298, 1059, 44, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100138, 10298, 1062, 39.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100139, 10299, 1019, 7.3, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100140, 10299, 1070, 12, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100141, 10300, 1066, 13.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100142, 10300, 1068, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100143, 10301, 1040, 14.7, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100144, 10301, 1056, 30.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100145, 10302, 1017, 31.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100146, 10302, 1028, 36.4, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100147, 10302, 1043, 36.8, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100148, 10303, 1040, 14.7, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100149, 10303, 1065, 16.8, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100150, 10303, 1068, 10, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100151, 10304, 1049, 16, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100152, 10304, 1059, 44, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100153, 10304, 1071, 17.2, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100154, 10305, 1018, 50, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100155, 10305, 1029, 99, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100156, 10305, 1039, 14.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100157, 10306, 1030, 20.7, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100158, 10306, 1053, 26.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100159, 10306, 1054, 5.9, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100160, 10307, 1062, 39.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100161, 10307, 1068, 10, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100162, 10308, 1069, 28.8, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100163, 10308, 1070, 12, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100164, 10309, 1004, 17.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100165, 10309, 1006, 20, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100167, 10309, 1043, 36.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100168, 10309, 1071, 17.2, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100169, 10310, 1016, 13.9, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100170, 10310, 1062, 39.4, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100172, 10311, 1069, 28.8, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100173, 10312, 1028, 36.4, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100174, 10312, 1043, 36.8, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100175, 10312, 1053, 26.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100176, 10312, 1075, 6.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100177, 10313, 1036, 15.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100178, 10314, 1032, 25.6, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100179, 10314, 1058, 10.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100180, 10314, 1062, 39.4, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100181, 10315, 1034, 11.2, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100182, 10315, 1070, 12, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100183, 10316, 1041, 7.7, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100184, 10316, 1062, 39.4, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100185, 10317, 1001, 14.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100186, 10318, 1041, 7.7, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100187, 10318, 1076, 14.4, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100188, 10319, 1017, 31.2, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100189, 10319, 1028, 36.4, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100190, 10319, 1076, 14.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100191, 10320, 1071, 17.2, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100192, 10321, 1035, 14.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100193, 10322, 1052, 5.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100194, 10323, 1015, 12.4, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100195, 10323, 1025, 11.2, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100196, 10323, 1039, 14.4, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100197, 10324, 1016, 13.9, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100198, 10324, 1035, 14.4, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100199, 10324, 1046, 9.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100200, 10324, 1059, 44, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100201, 10324, 1063, 35.1, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100202, 10325, 1006, 20, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100203, 10325, 1013, 4.8, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100204, 10325, 1014, 18.6, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100205, 10325, 1031, 10, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100207, 10326, 1004, 17.6, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100208, 10326, 1057, 15.6, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100209, 10326, 1075, 6.2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100210, 10327, 1002, 15.2, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100212, 10327, 1030, 20.7, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100213, 10327, 1058, 10.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100214, 10328, 1059, 44, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100215, 10328, 1065, 16.8, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100216, 10328, 1068, 10, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100217, 10329, 1019, 7.3, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100218, 10329, 1030, 20.7, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100219, 10329, 1038, 210.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100220, 10329, 1056, 30.4, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100221, 10330, 1026, 24.9, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100223, 10331, 1054, 5.9, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100224, 10332, 1018, 50, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100226, 10332, 1047, 7.6, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100227, 10333, 1014, 18.6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100228, 10333, 1021, 8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100229, 10333, 1071, 17.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100230, 10334, 1052, 5.6, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100231, 10334, 1068, 10, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100232, 10335, 1002, 15.2, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100233, 10335, 1031, 10, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100234, 10335, 1032, 25.6, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100235, 10335, 1051, 42.4, 48)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100236, 10336, 1004, 17.6, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100237, 10337, 1023, 7.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100238, 10337, 1026, 24.9, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100239, 10337, 1036, 15.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100240, 10337, 1037, 20.8, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100242, 10338, 1017, 31.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100243, 10338, 1030, 20.7, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100244, 10339, 1004, 17.6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100245, 10339, 1017, 31.2, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100246, 10339, 1062, 39.4, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100247, 10340, 1018, 50, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100248, 10340, 1041, 7.7, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100249, 10340, 1043, 36.8, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100250, 10341, 1033, 2, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100251, 10341, 1059, 44, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100252, 10342, 1002, 15.2, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100253, 10342, 1031, 10, 56)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100254, 10342, 1036, 15.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100255, 10342, 1055, 19.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100256, 10343, 1064, 26.6, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100257, 10343, 1068, 10, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100258, 10343, 1076, 14.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100259, 10344, 1004, 17.6, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100260, 10344, 1008, 32, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100261, 10345, 1008, 32, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100262, 10345, 1019, 7.3, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100264, 10346, 1017, 31.2, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100265, 10346, 1056, 30.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100266, 10347, 1025, 11.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100267, 10347, 1039, 14.4, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100268, 10347, 1040, 14.7, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100269, 10347, 1075, 6.2, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100270, 10348, 1001, 14.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100271, 10348, 1023, 7.2, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100272, 10349, 1054, 5.9, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100273, 10350, 1050, 13, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100274, 10350, 1069, 28.8, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100275, 10351, 1038, 210.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100276, 10351, 1041, 7.7, 13)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100277, 10351, 1044, 15.5, 77)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100278, 10351, 1065, 16.8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100279, 10352, 1024, 3.6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100280, 10352, 1054, 5.9, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100282, 10353, 1038, 210.8, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100283, 10354, 1001, 14.4, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100284, 10354, 1029, 99, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100285, 10355, 1024, 3.6, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100286, 10355, 1057, 15.6, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100287, 10356, 1031, 10, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100288, 10356, 1055, 19.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100289, 10356, 1069, 28.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100290, 10357, 1010, 24.8, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100291, 10357, 1026, 24.9, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100292, 10357, 1060, 27.2, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100293, 10358, 1024, 3.6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100294, 10358, 1034, 11.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100295, 10358, 1036, 15.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100296, 10359, 1016, 13.9, 56)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100297, 10359, 1031, 10, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100298, 10359, 1060, 27.2, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100299, 10360, 1028, 36.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100300, 10360, 1029, 99, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100301, 10360, 1038, 210.8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100302, 10360, 1049, 16, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100303, 10360, 1054, 5.9, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100304, 10361, 1039, 14.4, 54)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100305, 10361, 1060, 27.2, 55)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100306, 10362, 1025, 11.2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100307, 10362, 1051, 42.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100308, 10362, 1054, 5.9, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100309, 10363, 1031, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100310, 10363, 1075, 6.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100311, 10363, 1076, 14.4, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100312, 10364, 1069, 28.8, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100313, 10364, 1071, 17.2, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100315, 10366, 1065, 16.8, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100316, 10366, 1077, 10.4, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100317, 10367, 1034, 11.2, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100318, 10367, 1054, 5.9, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100319, 10367, 1065, 16.8, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100320, 10367, 1077, 10.4, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100321, 10368, 1021, 8, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100322, 10368, 1028, 36.4, 13)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100323, 10368, 1057, 15.6, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100324, 10368, 1064, 26.6, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100325, 10369, 1029, 99, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100326, 10369, 1056, 30.4, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100327, 10370, 1001, 14.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100328, 10370, 1064, 26.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100329, 10370, 1074, 8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100330, 10371, 1036, 15.2, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100331, 10372, 1020, 64.8, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100332, 10372, 1038, 210.8, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100333, 10372, 1060, 27.2, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100335, 10373, 1058, 10.6, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100336, 10373, 1071, 17.2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100337, 10374, 1031, 10, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100338, 10374, 1058, 10.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100339, 10375, 1014, 18.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100340, 10375, 1054, 5.9, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100341, 10376, 1031, 10, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100342, 10377, 1028, 36.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100343, 10377, 1039, 14.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100344, 10378, 1071, 17.2, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100345, 10379, 1041, 7.7, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100346, 10379, 1063, 35.1, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100347, 10379, 1065, 16.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100348, 10380, 1030, 20.7, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100349, 10380, 1053, 26.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100350, 10380, 1060, 27.2, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100351, 10380, 1070, 12, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100352, 10381, 1074, 8, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100354, 10382, 1018, 50, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100355, 10382, 1029, 99, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100356, 10382, 1033, 2, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100357, 10382, 1074, 8, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100358, 10383, 1013, 4.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100359, 10383, 1050, 13, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100360, 10383, 1056, 30.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100361, 10384, 1020, 64.8, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100362, 10384, 1060, 27.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100363, 10385, 1007, 24, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100364, 10385, 1060, 27.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100365, 10385, 1068, 10, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100366, 10386, 1024, 3.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100367, 10386, 1034, 11.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100368, 10387, 1024, 3.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100369, 10387, 1028, 36.4, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100370, 10387, 1059, 44, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100371, 10387, 1071, 17.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100372, 10388, 1045, 7.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100373, 10388, 1052, 5.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100374, 10388, 1053, 26.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100375, 10389, 1010, 24.8, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100376, 10389, 1055, 19.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100377, 10389, 1062, 39.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100378, 10389, 1070, 12, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100379, 10390, 1031, 10, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100380, 10390, 1035, 14.4, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100381, 10390, 1046, 9.6, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100383, 10391, 1013, 4.8, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100384, 10392, 1069, 28.8, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100385, 10393, 1002, 15.2, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100386, 10393, 1014, 18.6, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100387, 10393, 1025, 11.2, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100388, 10393, 1026, 24.9, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100389, 10393, 1031, 10, 32)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100390, 10394, 1013, 4.8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100391, 10394, 1062, 39.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100392, 10395, 1046, 9.6, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100393, 10395, 1053, 26.2, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100394, 10395, 1069, 28.8, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100395, 10396, 1023, 7.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100396, 10396, 1071, 17.2, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100398, 10397, 1021, 8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100399, 10397, 1051, 42.4, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100400, 10398, 1035, 14.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100401, 10398, 1055, 19.2, 120)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100402, 10399, 1068, 10, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100403, 10399, 1071, 17.2, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100404, 10399, 1076, 14.4, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100405, 10399, 1077, 10.4, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100406, 10400, 1029, 99, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100407, 10400, 1035, 14.4, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100408, 10400, 1049, 16, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100409, 10401, 1030, 20.7, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100410, 10401, 1056, 30.4, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100411, 10401, 1065, 16.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100412, 10401, 1071, 17.2, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100413, 10402, 1023, 7.2, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100414, 10402, 1063, 35.1, 65)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100415, 10403, 1016, 13.9, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100416, 10403, 1048, 10.2, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100417, 10404, 1026, 24.9, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100419, 10404, 1049, 16, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100420, 10405, 1003, 8, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100421, 10406, 1001, 14.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100422, 10406, 1021, 8, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100423, 10406, 1028, 36.4, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100424, 10406, 1036, 15.2, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100425, 10406, 1040, 14.7, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100427, 10407, 1069, 28.8, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100428, 10407, 1071, 17.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100429, 10408, 1037, 20.8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100430, 10408, 1054, 5.9, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100431, 10408, 1062, 39.4, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100432, 10409, 1014, 18.6, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100433, 10409, 1021, 8, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100434, 10410, 1033, 2, 49)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100435, 10410, 1059, 44, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100436, 10411, 1041, 7.7, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100437, 10411, 1044, 15.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100438, 10411, 1059, 44, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100439, 10412, 1014, 18.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100440, 10413, 1001, 14.4, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100441, 10413, 1062, 39.4, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100442, 10413, 1076, 14.4, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100443, 10414, 1019, 7.3, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100444, 10414, 1033, 2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100445, 10415, 1017, 31.2, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100446, 10415, 1033, 2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100447, 10416, 1019, 7.3, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100448, 10416, 1053, 26.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100449, 10416, 1057, 15.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100450, 10417, 1038, 210.8, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100451, 10417, 1046, 9.6, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100452, 10417, 1068, 10, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100453, 10417, 1077, 10.4, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100454, 10418, 1002, 15.2, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100455, 10418, 1047, 7.6, 55)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100456, 10418, 1061, 22.8, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100457, 10418, 1074, 8, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100458, 10419, 1060, 27.2, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100459, 10419, 1069, 28.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100460, 10420, 1009, 150, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100461, 10420, 1013, 4.8, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100462, 10420, 1070, 12, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100463, 10420, 1073, 12, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100464, 10421, 1019, 7.3, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100465, 10421, 1026, 24.9, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100466, 10421, 1053, 26.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100467, 10421, 1077, 10.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100468, 10422, 1026, 24.9, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100469, 10423, 1031, 10, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100470, 10423, 1059, 44, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100471, 10424, 1035, 14.4, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100472, 10424, 1038, 210.8, 49)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100473, 10424, 1068, 10, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100474, 10425, 1055, 19.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100475, 10425, 1076, 14.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100476, 10426, 1056, 30.4, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100477, 10426, 1064, 26.6, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100478, 10427, 1014, 18.6, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100479, 10428, 1046, 9.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100480, 10429, 1050, 13, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100481, 10429, 1063, 35.1, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100482, 10430, 1017, 31.2, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100483, 10430, 1021, 8, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100484, 10430, 1056, 30.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100485, 10430, 1059, 44, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100486, 10431, 1017, 31.2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100487, 10431, 1040, 14.7, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100488, 10431, 1047, 7.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100489, 10432, 1026, 24.9, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100490, 10432, 1054, 5.9, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100491, 10433, 1056, 30.4, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100493, 10434, 1076, 14.4, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100494, 10435, 1002, 15.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100495, 10435, 1022, 16.8, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100497, 10436, 1046, 9.6, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100498, 10436, 1056, 30.4, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100499, 10436, 1064, 26.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100500, 10436, 1075, 6.2, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100501, 10437, 1053, 26.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100502, 10438, 1019, 7.3, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100503, 10438, 1034, 11.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100504, 10438, 1057, 15.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100505, 10439, 1012, 30.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100506, 10439, 1016, 13.9, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100507, 10439, 1064, 26.6, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100508, 10439, 1074, 8, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100509, 10440, 1002, 15.2, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100510, 10440, 1016, 13.9, 49)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100511, 10440, 1029, 99, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100512, 10440, 1061, 22.8, 90)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100513, 10441, 1027, 35.1, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100515, 10442, 1054, 5.9, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100516, 10442, 1066, 13.6, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100518, 10443, 1028, 36.4, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100519, 10444, 1017, 31.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100520, 10444, 1026, 24.9, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100521, 10444, 1035, 14.4, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100522, 10444, 1041, 7.7, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100523, 10445, 1039, 14.4, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100524, 10445, 1054, 5.9, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100525, 10446, 1019, 7.3, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100526, 10446, 1024, 3.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100527, 10446, 1031, 10, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100528, 10446, 1052, 5.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100529, 10447, 1019, 7.3, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100530, 10447, 1065, 16.8, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100531, 10447, 1071, 17.2, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100532, 10448, 1026, 24.9, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100533, 10448, 1040, 14.7, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100534, 10449, 1010, 24.8, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100535, 10449, 1052, 5.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100536, 10449, 1062, 39.4, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100537, 10450, 1010, 24.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100538, 10450, 1054, 5.9, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100539, 10451, 1055, 19.2, 120)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100540, 10451, 1064, 26.6, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100541, 10451, 1065, 16.8, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100542, 10451, 1077, 10.4, 55)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100543, 10452, 1028, 36.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100544, 10452, 1044, 15.5, 100)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100545, 10453, 1048, 10.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100546, 10453, 1070, 12, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100547, 10454, 1016, 13.9, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100548, 10454, 1033, 2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100549, 10454, 1046, 9.6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100550, 10455, 1039, 14.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100551, 10455, 1053, 26.2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100552, 10455, 1061, 22.8, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100553, 10455, 1071, 17.2, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100554, 10456, 1021, 8, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100555, 10456, 1049, 16, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100556, 10457, 1059, 44, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100557, 10458, 1026, 24.9, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100558, 10458, 1028, 36.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100559, 10458, 1043, 36.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100560, 10458, 1056, 30.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100561, 10458, 1071, 17.2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100562, 10459, 1007, 24, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100563, 10459, 1046, 9.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100565, 10460, 1068, 10, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100566, 10460, 1075, 6.2, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100567, 10461, 1021, 8, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100568, 10461, 1030, 20.7, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100569, 10461, 1055, 19.2, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100570, 10462, 1013, 4.8, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100571, 10462, 1023, 7.2, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100572, 10463, 1019, 7.3, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100574, 10464, 1004, 17.6, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100575, 10464, 1043, 36.8, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100576, 10464, 1056, 30.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100577, 10464, 1060, 27.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100578, 10465, 1024, 3.6, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100579, 10465, 1029, 99, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100580, 10465, 1040, 14.7, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100581, 10465, 1045, 7.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100582, 10465, 1050, 13, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100584, 10466, 1046, 9.6, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100585, 10467, 1024, 3.6, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100586, 10467, 1025, 11.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100587, 10468, 1030, 20.7, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100588, 10468, 1043, 36.8, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100589, 10469, 1002, 15.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100590, 10469, 1016, 13.9, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100591, 10469, 1044, 15.5, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100592, 10470, 1018, 50, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100593, 10470, 1023, 7.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100594, 10470, 1064, 26.6, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100595, 10471, 1007, 24, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100596, 10471, 1056, 30.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100597, 10472, 1024, 3.6, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100598, 10472, 1051, 42.4, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100599, 10473, 1033, 2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100600, 10473, 1071, 17.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100601, 10474, 1014, 18.6, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100602, 10474, 1028, 36.4, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100603, 10474, 1040, 14.7, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100604, 10474, 1075, 6.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100605, 10475, 1031, 10, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100606, 10475, 1066, 13.6, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100607, 10475, 1076, 14.4, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100608, 10476, 1055, 19.2, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100609, 10476, 1070, 12, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100610, 10477, 1001, 14.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100611, 10477, 1021, 8, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100612, 10477, 1039, 14.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100613, 10478, 1010, 24.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100614, 10479, 1038, 210.8, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100615, 10479, 1053, 26.2, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100616, 10479, 1059, 44, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100617, 10479, 1064, 26.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100618, 10480, 1047, 7.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100619, 10480, 1059, 44, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100620, 10481, 1049, 16, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100621, 10481, 1060, 27.2, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100622, 10482, 1040, 14.7, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100623, 10483, 1034, 11.2, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100624, 10483, 1077, 10.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100625, 10484, 1021, 8, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100626, 10484, 1040, 14.7, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100627, 10484, 1051, 42.4, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100628, 10485, 1002, 15.2, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100629, 10485, 1003, 8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100630, 10485, 1055, 19.2, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100631, 10485, 1070, 12, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100633, 10486, 1051, 42.4, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100634, 10486, 1074, 8, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100635, 10487, 1019, 7.3, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100636, 10487, 1026, 24.9, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100637, 10487, 1054, 5.9, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100638, 10488, 1059, 44, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100639, 10488, 1073, 12, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100641, 10489, 1016, 13.9, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100642, 10490, 1059, 44, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100643, 10490, 1068, 10, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100644, 10490, 1075, 6.2, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100645, 10491, 1044, 15.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100646, 10491, 1077, 10.4, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100647, 10492, 1025, 11.2, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100649, 10493, 1065, 16.8, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100650, 10493, 1066, 13.6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100651, 10493, 1069, 28.8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100652, 10494, 1056, 30.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100653, 10495, 1023, 7.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100654, 10495, 1041, 7.7, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100655, 10495, 1077, 10.4, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100656, 10496, 1031, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100657, 10497, 1056, 30.4, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100659, 10497, 1077, 10.4, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100660, 10498, 1024, 4.5, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100661, 10498, 1040, 18.4, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100663, 10499, 1028, 45.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100664, 10499, 1049, 20, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100665, 10500, 1015, 15.5, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100666, 10500, 1028, 45.6, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100667, 10501, 1054, 7.45, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100668, 10502, 1045, 9.5, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100669, 10502, 1053, 32.8, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100670, 10502, 1067, 14, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100671, 10503, 1014, 23.25, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100672, 10503, 1065, 21.05, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100673, 10504, 1002, 19, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100674, 10504, 1021, 10, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100675, 10504, 1053, 32.8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100676, 10504, 1061, 28.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100677, 10505, 1062, 49.3, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100678, 10506, 1025, 14, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100679, 10506, 1070, 15, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100680, 10507, 1043, 46, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100681, 10507, 1048, 12.75, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100682, 10508, 1013, 6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100683, 10508, 1039, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100684, 10509, 1028, 45.6, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100685, 10510, 1029, 123.79, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100686, 10510, 1075, 7.75, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100687, 10511, 1004, 22, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100688, 10511, 1007, 30, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100689, 10511, 1008, 40, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100690, 10512, 1024, 4.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100691, 10512, 1046, 12, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100692, 10512, 1047, 9.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100693, 10512, 1060, 34, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100694, 10513, 1021, 10, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100695, 10513, 1032, 32, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100696, 10513, 1061, 28.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100697, 10514, 1020, 81, 39)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100698, 10514, 1028, 45.6, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100699, 10514, 1056, 38, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100700, 10514, 1065, 21.05, 39)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100701, 10514, 1075, 7.75, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100702, 10515, 1009, 150, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100703, 10515, 1016, 17.45, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100704, 10515, 1027, 43.9, 120)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100705, 10515, 1033, 2.5, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100706, 10515, 1060, 34, 84)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100707, 10516, 1018, 62.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100708, 10516, 1041, 9.65, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100710, 10517, 1052, 7, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100711, 10517, 1059, 55, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100712, 10517, 1070, 15, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100713, 10518, 1024, 4.5, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100714, 10518, 1038, 263.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100715, 10518, 1044, 19.45, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100716, 10519, 1010, 31, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100717, 10519, 1056, 38, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100718, 10519, 1060, 34, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100719, 10520, 1024, 4.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100720, 10520, 1053, 32.8, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100721, 10521, 1035, 18, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100722, 10521, 1041, 9.65, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100723, 10521, 1068, 12.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100724, 10522, 1001, 18, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100725, 10522, 1008, 40, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100726, 10522, 1030, 25.89, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100727, 10522, 1040, 18.4, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100728, 10523, 1017, 39, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100729, 10523, 1020, 81, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100730, 10523, 1037, 26, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100731, 10523, 1041, 9.65, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100732, 10524, 1010, 31, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100733, 10524, 1030, 25.89, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100734, 10524, 1043, 46, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100735, 10524, 1054, 7.45, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100736, 10525, 1036, 19, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100737, 10525, 1040, 18.4, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100738, 10526, 1001, 18, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100739, 10526, 1013, 6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100740, 10526, 1056, 38, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100741, 10527, 1004, 22, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100742, 10527, 1036, 19, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100744, 10528, 1033, 2.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100746, 10529, 1055, 24, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100747, 10529, 1068, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100748, 10529, 1069, 36, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100749, 10530, 1017, 39, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100750, 10530, 1043, 46, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100751, 10530, 1061, 28.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100752, 10530, 1076, 18, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100753, 10531, 1059, 55, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100754, 10532, 1030, 25.89, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100755, 10532, 1066, 17, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100756, 10533, 1004, 22, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100758, 10533, 1073, 15, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100759, 10534, 1030, 25.89, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100760, 10534, 1040, 18.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100761, 10534, 1054, 7.45, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100763, 10535, 1040, 18.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100764, 10535, 1057, 19.5, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100765, 10535, 1059, 55, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100766, 10536, 1012, 38, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100767, 10536, 1031, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100768, 10536, 1033, 2.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100769, 10536, 1060, 34, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100770, 10537, 1031, 12.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100771, 10537, 1051, 53, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100772, 10537, 1058, 13.25, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100774, 10537, 1073, 15, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100775, 10538, 1070, 15, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100777, 10539, 1013, 6, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100778, 10539, 1021, 10, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100779, 10539, 1033, 2.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100780, 10539, 1049, 20, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100781, 10540, 1003, 10, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100782, 10540, 1026, 31.23, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100783, 10540, 1038, 263.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100784, 10540, 1068, 12.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100785, 10541, 1024, 4.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100786, 10541, 1038, 263.5, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100787, 10541, 1065, 21.05, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100788, 10541, 1071, 21.5, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100790, 10542, 1054, 7.45, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100791, 10543, 1012, 38, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100792, 10543, 1023, 9, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100793, 10544, 1028, 45.6, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100794, 10544, 1067, 14, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100796, 10546, 1007, 30, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100797, 10546, 1035, 18, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100798, 10546, 1062, 49.3, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100799, 10547, 1032, 32, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100800, 10547, 1036, 19, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100801, 10548, 1034, 14, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100802, 10548, 1041, 9.65, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100803, 10549, 1031, 12.5, 55)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100804, 10549, 1045, 9.5, 100)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100805, 10549, 1051, 53, 48)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100806, 10550, 1017, 39, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100807, 10550, 1019, 9.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100808, 10550, 1021, 10, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100809, 10550, 1061, 28.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100810, 10551, 1016, 17.45, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100811, 10551, 1035, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100812, 10551, 1044, 19.45, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100813, 10552, 1069, 36, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100814, 10552, 1075, 7.75, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100816, 10553, 1016, 17.45, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100817, 10553, 1022, 21, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100818, 10553, 1031, 12.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100819, 10553, 1035, 18, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100820, 10554, 1016, 17.45, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100821, 10554, 1023, 9, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100822, 10554, 1062, 49.3, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100823, 10554, 1077, 13, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100824, 10555, 1014, 23.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100825, 10555, 1019, 9.2, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100826, 10555, 1024, 4.5, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100827, 10555, 1051, 53, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100828, 10555, 1056, 38, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100830, 10557, 1064, 33.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100831, 10557, 1075, 7.75, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100832, 10558, 1047, 9.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100833, 10558, 1051, 53, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100834, 10558, 1052, 7, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100835, 10558, 1053, 32.8, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100836, 10558, 1073, 15, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100837, 10559, 1041, 9.65, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100838, 10559, 1055, 24, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100839, 10560, 1030, 25.89, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100840, 10560, 1062, 49.3, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100841, 10561, 1044, 19.45, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100842, 10561, 1051, 53, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100843, 10562, 1033, 2.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100844, 10562, 1062, 49.3, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100845, 10563, 1036, 19, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100846, 10563, 1052, 7, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100847, 10564, 1017, 39, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100848, 10564, 1031, 12.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100849, 10564, 1055, 24, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100850, 10565, 1024, 4.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100851, 10565, 1064, 33.25, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100853, 10566, 1018, 62.5, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100854, 10566, 1076, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100855, 10567, 1031, 12.5, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100856, 10567, 1051, 53, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100857, 10567, 1059, 55, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100858, 10568, 1010, 31, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100859, 10569, 1031, 12.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100860, 10569, 1076, 18, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100862, 10570, 1056, 38, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100863, 10571, 1014, 23.25, 11)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100865, 10572, 1016, 17.45, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100866, 10572, 1032, 32, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100867, 10572, 1040, 18.4, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100868, 10572, 1075, 7.75, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100869, 10573, 1017, 39, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100870, 10573, 1034, 14, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100871, 10573, 1053, 32.8, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100872, 10574, 1033, 2.5, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100873, 10574, 1040, 18.4, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100874, 10574, 1062, 49.3, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100875, 10574, 1064, 33.25, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100876, 10575, 1059, 55, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100877, 10575, 1063, 43.9, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100879, 10575, 1076, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100880, 10576, 1001, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100881, 10576, 1031, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100882, 10576, 1044, 19.45, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100883, 10577, 1039, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100884, 10577, 1075, 7.75, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100885, 10577, 1077, 13, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100886, 10578, 1035, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100887, 10578, 1057, 19.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100888, 10579, 1015, 15.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100889, 10579, 1075, 7.75, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100890, 10580, 1014, 23.25, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100891, 10580, 1041, 9.65, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100892, 10580, 1065, 21.05, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100893, 10581, 1075, 7.75, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100894, 10582, 1057, 19.5, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100895, 10582, 1076, 18, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100896, 10583, 1029, 123.79, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100897, 10583, 1060, 34, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100898, 10583, 1069, 36, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100899, 10584, 1031, 12.5, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100900, 10585, 1047, 9.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100901, 10586, 1052, 7, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100902, 10587, 1026, 31.23, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100903, 10587, 1035, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100904, 10587, 1077, 13, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100905, 10588, 1018, 62.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100907, 10589, 1035, 18, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100908, 10590, 1001, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100909, 10590, 1077, 13, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100910, 10591, 1003, 10, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100911, 10591, 1007, 30, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100912, 10591, 1054, 7.45, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100913, 10592, 1015, 15.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100914, 10592, 1026, 31.23, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100915, 10593, 1020, 81, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100916, 10593, 1069, 36, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100917, 10593, 1076, 18, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100918, 10594, 1052, 7, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100919, 10594, 1058, 13.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100920, 10595, 1035, 18, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100921, 10595, 1061, 28.5, 120)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100922, 10595, 1069, 36, 65)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100923, 10596, 1056, 38, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100924, 10596, 1063, 43.9, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100925, 10596, 1075, 7.75, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100926, 10597, 1024, 4.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100927, 10597, 1057, 19.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100928, 10597, 1065, 21.05, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100929, 10598, 1027, 43.9, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100930, 10598, 1071, 21.5, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100931, 10599, 1062, 49.3, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100932, 10600, 1054, 7.45, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100933, 10600, 1073, 15, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100934, 10601, 1013, 6, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100935, 10601, 1059, 55, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100936, 10602, 1077, 13, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100937, 10603, 1022, 21, 48)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100938, 10603, 1049, 20, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100939, 10604, 1048, 12.75, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100940, 10604, 1076, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100941, 10605, 1016, 17.45, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100942, 10605, 1059, 55, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100943, 10605, 1060, 34, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100944, 10605, 1071, 21.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100945, 10606, 1004, 22, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100946, 10606, 1055, 24, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100947, 10606, 1062, 49.3, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100948, 10607, 1007, 30, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100949, 10607, 1017, 39, 100)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100950, 10607, 1033, 2.5, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100951, 10607, 1040, 18.4, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100953, 10608, 1056, 38, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100954, 10609, 1001, 18, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100955, 10609, 1010, 31, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100956, 10609, 1021, 10, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100957, 10610, 1036, 19, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100958, 10611, 1001, 18, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100959, 10611, 1002, 19, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100960, 10611, 1060, 34, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100961, 10612, 1010, 31, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100962, 10612, 1036, 19, 55)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100963, 10612, 1049, 20, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100964, 10612, 1060, 34, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100965, 10612, 1076, 18, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100966, 10613, 1013, 6, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100967, 10613, 1075, 7.75, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100969, 10614, 1021, 10, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100970, 10614, 1039, 18, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100971, 10615, 1055, 24, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100972, 10616, 1038, 263.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100973, 10616, 1056, 38, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100974, 10616, 1070, 15, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100975, 10616, 1071, 21.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100976, 10617, 1059, 55, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100977, 10618, 1006, 25, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100978, 10618, 1056, 38, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100979, 10618, 1068, 12.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100980, 10619, 1021, 10, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100981, 10619, 1022, 21, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100982, 10620, 1024, 4.5, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100983, 10620, 1052, 7, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100984, 10621, 1019, 9.2, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100985, 10621, 1023, 9, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100986, 10621, 1070, 15, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100987, 10621, 1071, 21.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100988, 10622, 1002, 19, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100989, 10622, 1068, 12.5, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100990, 10623, 1014, 23.25, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100991, 10623, 1019, 9.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100992, 10623, 1021, 10, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100993, 10623, 1024, 4.5, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100994, 10623, 1035, 18, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100995, 10624, 1028, 45.6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100996, 10624, 1029, 123.79, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100997, 10624, 1044, 19.45, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100998, 10625, 1014, 23.25, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101000, 10625, 1060, 34, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101001, 10626, 1053, 32.8, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101002, 10626, 1060, 34, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101003, 10626, 1071, 21.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101004, 10627, 1062, 49.3, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101005, 10627, 1073, 15, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101006, 10628, 1001, 18, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101007, 10629, 1029, 123.79, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101008, 10629, 1064, 33.25, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101009, 10630, 1055, 24, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101010, 10630, 1076, 18, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101011, 10631, 1075, 7.75, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101012, 10632, 1002, 19, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101013, 10632, 1033, 2.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101014, 10633, 1012, 38, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101015, 10633, 1013, 6, 13)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101016, 10633, 1026, 31.23, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101017, 10633, 1062, 49.3, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101018, 10634, 1007, 30, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101019, 10634, 1018, 62.5, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101020, 10634, 1051, 53, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101021, 10634, 1075, 7.75, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101022, 10635, 1004, 22, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101024, 10635, 1022, 21, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101025, 10636, 1004, 22, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101026, 10636, 1058, 13.25, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101028, 10637, 1050, 16.25, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101029, 10637, 1056, 38, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101030, 10638, 1045, 9.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101031, 10638, 1065, 21.05, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101033, 10639, 1018, 62.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101034, 10640, 1069, 36, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101035, 10640, 1070, 15, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101036, 10641, 1002, 19, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101037, 10641, 1040, 18.4, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101038, 10642, 1021, 10, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101039, 10642, 1061, 28.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101040, 10643, 1028, 45.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101041, 10643, 1039, 18, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101042, 10643, 1046, 12, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101043, 10644, 1018, 62.5, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101044, 10644, 1043, 46, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101045, 10644, 1046, 12, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101046, 10645, 1018, 62.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101047, 10645, 1036, 19, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101048, 10646, 1001, 18, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101049, 10646, 1010, 31, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101050, 10646, 1071, 21.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101051, 10646, 1077, 13, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101052, 10647, 1019, 9.2, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101053, 10647, 1039, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101054, 10648, 1022, 21, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101055, 10648, 1024, 4.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101056, 10649, 1028, 45.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101058, 10650, 1030, 25.89, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101059, 10650, 1053, 32.8, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101060, 10650, 1054, 7.45, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101061, 10651, 1019, 9.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101062, 10651, 1022, 21, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101063, 10652, 1030, 25.89, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101065, 10653, 1016, 17.45, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101066, 10653, 1060, 34, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101067, 10654, 1004, 22, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101068, 10654, 1039, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101069, 10654, 1054, 7.45, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101070, 10655, 1041, 9.65, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101071, 10656, 1014, 23.25, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101072, 10656, 1044, 19.45, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101073, 10656, 1047, 9.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101074, 10657, 1015, 15.5, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101075, 10657, 1041, 9.65, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101076, 10657, 1046, 12, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101077, 10657, 1047, 9.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101078, 10657, 1056, 38, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101079, 10657, 1060, 34, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101080, 10658, 1021, 10, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101081, 10658, 1040, 18.4, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101082, 10658, 1060, 34, 55)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101083, 10658, 1077, 13, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101084, 10659, 1031, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101085, 10659, 1040, 18.4, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101086, 10659, 1070, 15, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101087, 10660, 1020, 81, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101088, 10661, 1039, 18, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101089, 10661, 1058, 13.25, 49)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101090, 10662, 1068, 12.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101091, 10663, 1040, 18.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101093, 10663, 1051, 53, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101094, 10664, 1010, 31, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101095, 10664, 1056, 38, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101096, 10664, 1065, 21.05, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101097, 10665, 1051, 53, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101098, 10665, 1059, 55, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101099, 10665, 1076, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101100, 10666, 1029, 123.79, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101101, 10666, 1065, 21.05, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101102, 10667, 1069, 36, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101103, 10667, 1071, 21.5, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101104, 10668, 1031, 12.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101105, 10668, 1055, 24, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101106, 10668, 1064, 33.25, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101107, 10669, 1036, 19, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101108, 10670, 1023, 9, 32)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101109, 10670, 1046, 12, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101110, 10670, 1067, 14, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101111, 10670, 1073, 15, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101112, 10670, 1075, 7.75, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101113, 10671, 1016, 17.45, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101114, 10671, 1062, 49.3, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101115, 10671, 1065, 21.05, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101116, 10672, 1038, 263.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101117, 10672, 1071, 21.5, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101118, 10673, 1016, 17.45, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101120, 10673, 1043, 46, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101121, 10674, 1023, 9, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101122, 10675, 1014, 23.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101123, 10675, 1053, 32.8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101124, 10675, 1058, 13.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101125, 10676, 1010, 31, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101126, 10676, 1019, 9.2, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101127, 10676, 1044, 19.45, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101128, 10677, 1026, 31.23, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101129, 10677, 1033, 2.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101130, 10678, 1012, 38, 100)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101131, 10678, 1033, 2.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101132, 10678, 1041, 9.65, 120)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101133, 10678, 1054, 7.45, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101134, 10679, 1059, 55, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101135, 10680, 1016, 17.45, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101136, 10680, 1031, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101138, 10681, 1019, 9.2, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101139, 10681, 1021, 10, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101140, 10681, 1064, 33.25, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101141, 10682, 1033, 2.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101142, 10682, 1066, 17, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101143, 10682, 1075, 7.75, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101144, 10683, 1052, 7, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101145, 10684, 1040, 18.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101146, 10684, 1047, 9.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101147, 10684, 1060, 34, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101148, 10685, 1010, 31, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101149, 10685, 1041, 9.65, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101150, 10685, 1047, 9.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101151, 10686, 1017, 39, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101152, 10686, 1026, 31.23, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101153, 10687, 1009, 150, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101154, 10687, 1029, 123.79, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101155, 10687, 1036, 19, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101156, 10688, 1010, 31, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101157, 10688, 1028, 45.6, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101158, 10688, 1034, 14, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101159, 10689, 1001, 18, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101160, 10690, 1056, 38, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101161, 10690, 1077, 13, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101162, 10691, 1001, 18, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101163, 10691, 1029, 123.79, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101164, 10691, 1043, 46, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101165, 10691, 1044, 19.45, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101166, 10691, 1062, 49.3, 48)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101167, 10692, 1063, 43.9, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101168, 10693, 1009, 150, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101169, 10693, 1054, 7.45, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101170, 10693, 1069, 36, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101171, 10693, 1073, 15, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101172, 10694, 1007, 30, 90)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101173, 10694, 1059, 55, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101174, 10694, 1070, 15, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101175, 10695, 1008, 40, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101176, 10695, 1012, 38, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101177, 10695, 1024, 4.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101178, 10696, 1017, 39, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101179, 10696, 1046, 12, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101180, 10697, 1019, 9.2, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101181, 10697, 1035, 18, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101182, 10697, 1058, 13.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101183, 10697, 1070, 15, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101185, 10698, 1017, 39, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101186, 10698, 1029, 123.79, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101187, 10698, 1065, 21.05, 65)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101188, 10698, 1070, 15, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101189, 10699, 1047, 9.5, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101190, 10700, 1001, 18, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101191, 10700, 1034, 14, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101192, 10700, 1068, 12.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101193, 10700, 1071, 21.5, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101194, 10701, 1059, 55, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101195, 10701, 1071, 21.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101196, 10701, 1076, 18, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101197, 10702, 1003, 10, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101198, 10702, 1076, 18, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101199, 10703, 1002, 19, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101200, 10703, 1059, 55, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101201, 10703, 1073, 15, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101202, 10704, 1004, 22, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101203, 10704, 1024, 4.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101204, 10704, 1048, 12.75, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101205, 10705, 1031, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101206, 10705, 1032, 32, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101207, 10706, 1016, 17.45, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101208, 10706, 1043, 46, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101209, 10706, 1059, 55, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101210, 10707, 1055, 24, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101211, 10707, 1057, 19.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101212, 10707, 1070, 15, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101214, 10708, 1036, 19, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101215, 10709, 1008, 40, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101216, 10709, 1051, 53, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101217, 10709, 1060, 34, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101218, 10710, 1019, 9.2, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101219, 10710, 1047, 9.5, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101220, 10711, 1019, 9.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101221, 10711, 1041, 9.65, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101222, 10711, 1053, 32.8, 120)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101223, 10712, 1053, 32.8, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101224, 10712, 1056, 38, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101225, 10713, 1010, 31, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101226, 10713, 1026, 31.23, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101227, 10713, 1045, 9.5, 110)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101228, 10713, 1046, 12, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101229, 10714, 1002, 19, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101230, 10714, 1017, 39, 27)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101231, 10714, 1047, 9.5, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101232, 10714, 1056, 38, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101233, 10714, 1058, 13.25, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101234, 10715, 1010, 31, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101235, 10715, 1071, 21.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101236, 10716, 1021, 10, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101237, 10716, 1051, 53, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101238, 10716, 1061, 28.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101239, 10717, 1021, 10, 32)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101240, 10717, 1054, 7.45, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101241, 10717, 1069, 36, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101242, 10718, 1012, 38, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101243, 10718, 1016, 17.45, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101244, 10718, 1036, 19, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101245, 10718, 1062, 49.3, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101246, 10719, 1018, 62.5, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101247, 10719, 1030, 25.89, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101248, 10719, 1054, 7.45, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101249, 10720, 1035, 18, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101250, 10720, 1071, 21.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101251, 10721, 1044, 19.45, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101252, 10722, 1002, 19, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101253, 10722, 1031, 12.5, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101254, 10722, 1068, 12.5, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101255, 10722, 1075, 7.75, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101256, 10723, 1026, 31.23, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101257, 10724, 1010, 31, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101258, 10724, 1061, 28.5, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101259, 10725, 1041, 9.65, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101260, 10725, 1052, 7, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101261, 10725, 1055, 24, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101262, 10726, 1004, 22, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101264, 10727, 1017, 39, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101265, 10727, 1056, 38, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101266, 10727, 1059, 55, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101267, 10728, 1030, 25.89, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101268, 10728, 1040, 18.4, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101269, 10728, 1055, 24, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101270, 10728, 1060, 34, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101271, 10729, 1001, 18, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101272, 10729, 1021, 10, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101273, 10729, 1050, 16.25, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101274, 10730, 1016, 17.45, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101275, 10730, 1031, 12.5, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101276, 10730, 1065, 21.05, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101277, 10731, 1021, 10, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101278, 10731, 1051, 53, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101279, 10732, 1076, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101280, 10733, 1014, 23.25, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101281, 10733, 1028, 45.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101282, 10733, 1052, 7, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101283, 10734, 1006, 25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101284, 10734, 1030, 25.89, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101285, 10734, 1076, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101286, 10735, 1061, 28.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101287, 10735, 1077, 13, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101288, 10736, 1065, 21.05, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101289, 10736, 1075, 7.75, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101290, 10737, 1013, 6, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101291, 10737, 1041, 9.65, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101292, 10738, 1016, 17.45, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101293, 10739, 1036, 19, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101294, 10739, 1052, 7, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101295, 10740, 1028, 45.6, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101296, 10740, 1035, 18, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101297, 10740, 1045, 9.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101298, 10740, 1056, 38, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101299, 10741, 1002, 19, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101300, 10742, 1003, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101301, 10742, 1060, 34, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101303, 10743, 1046, 12, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101304, 10744, 1040, 18.4, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101305, 10745, 1018, 62.5, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101306, 10745, 1044, 19.45, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101307, 10745, 1059, 55, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101309, 10746, 1013, 6, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101311, 10746, 1062, 49.3, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101312, 10746, 1069, 36, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101313, 10747, 1031, 12.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101314, 10747, 1041, 9.65, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101315, 10747, 1063, 43.9, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101316, 10747, 1069, 36, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101317, 10748, 1023, 9, 44)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101318, 10748, 1040, 18.4, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101319, 10748, 1056, 38, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101320, 10749, 1056, 38, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101321, 10749, 1059, 55, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101322, 10749, 1076, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101323, 10750, 1014, 23.25, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101324, 10750, 1045, 9.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101325, 10750, 1059, 55, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101326, 10751, 1026, 31.23, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101327, 10751, 1030, 25.89, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101328, 10751, 1050, 16.25, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101329, 10751, 1073, 15, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101330, 10752, 1001, 18, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101331, 10752, 1069, 36, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101332, 10753, 1045, 9.5, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101333, 10753, 1074, 10, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101334, 10754, 1040, 18.4, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101335, 10755, 1047, 9.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101336, 10755, 1056, 38, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101337, 10755, 1057, 19.5, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101338, 10755, 1069, 36, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101339, 10756, 1018, 62.5, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101340, 10756, 1036, 19, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101341, 10756, 1068, 12.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101342, 10756, 1069, 36, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101343, 10757, 1034, 14, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101344, 10757, 1059, 55, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101345, 10757, 1062, 49.3, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101346, 10757, 1064, 33.25, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101347, 10758, 1026, 31.23, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101348, 10758, 1052, 7, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101349, 10758, 1070, 15, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101350, 10759, 1032, 32, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101351, 10760, 1025, 14, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101352, 10760, 1027, 43.9, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101353, 10760, 1043, 46, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101354, 10761, 1025, 14, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101355, 10761, 1075, 7.75, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101356, 10762, 1039, 18, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101357, 10762, 1047, 9.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101358, 10762, 1051, 53, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101359, 10762, 1056, 38, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101360, 10763, 1021, 10, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101361, 10763, 1022, 21, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101362, 10763, 1024, 4.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101363, 10764, 1003, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101364, 10764, 1039, 18, 130)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101365, 10765, 1065, 21.05, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101366, 10766, 1002, 19, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101367, 10766, 1007, 30, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101368, 10766, 1068, 12.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101370, 10768, 1022, 21, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101371, 10768, 1031, 12.5, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101372, 10768, 1060, 34, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101373, 10768, 1071, 21.5, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101374, 10769, 1041, 9.65, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101375, 10769, 1052, 7, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101376, 10769, 1061, 28.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101377, 10769, 1062, 49.3, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101379, 10771, 1071, 21.5, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101380, 10772, 1029, 123.79, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101381, 10772, 1059, 55, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101382, 10773, 1017, 39, 33)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101383, 10773, 1031, 12.5, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101384, 10773, 1075, 7.75, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101385, 10774, 1031, 12.5, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101386, 10774, 1066, 17, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101387, 10775, 1010, 31, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101388, 10775, 1067, 14, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101389, 10776, 1031, 12.5, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101391, 10776, 1045, 9.5, 27)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101392, 10776, 1051, 53, 120)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101394, 10778, 1041, 9.65, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101395, 10779, 1016, 17.45, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101396, 10779, 1062, 49.3, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101397, 10780, 1070, 15, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101398, 10780, 1077, 13, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101399, 10781, 1054, 7.45, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101400, 10781, 1056, 38, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101401, 10781, 1074, 10, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101402, 10782, 1031, 12.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101403, 10783, 1031, 12.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101404, 10783, 1038, 263.5, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101405, 10784, 1036, 19, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101406, 10784, 1039, 18, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101408, 10785, 1010, 31, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101409, 10785, 1075, 7.75, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101410, 10786, 1008, 40, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101411, 10786, 1030, 25.89, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101412, 10786, 1075, 7.75, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101413, 10787, 1002, 19, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101414, 10787, 1029, 123.79, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101415, 10788, 1019, 9.2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101416, 10788, 1075, 7.75, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101417, 10789, 1018, 62.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101418, 10789, 1035, 18, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101419, 10789, 1063, 43.9, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101420, 10789, 1068, 12.5, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101421, 10790, 1007, 30, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101422, 10790, 1056, 38, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101423, 10791, 1029, 123.79, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101424, 10791, 1041, 9.65, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101425, 10792, 1002, 19, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101426, 10792, 1054, 7.45, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101427, 10792, 1068, 12.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101428, 10793, 1041, 9.65, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101429, 10793, 1052, 7, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101430, 10794, 1014, 23.25, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101431, 10794, 1054, 7.45, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101432, 10795, 1016, 17.45, 65)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101433, 10795, 1017, 39, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101434, 10796, 1026, 31.23, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101435, 10796, 1044, 19.45, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101436, 10796, 1064, 33.25, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101437, 10796, 1069, 36, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101439, 10798, 1062, 49.3, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101441, 10799, 1013, 6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101442, 10799, 1024, 4.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101443, 10799, 1059, 55, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101445, 10800, 1051, 53, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101446, 10800, 1054, 7.45, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101447, 10801, 1017, 39, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101448, 10801, 1029, 123.79, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101449, 10802, 1030, 25.89, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101450, 10802, 1051, 53, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101451, 10802, 1055, 24, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101452, 10802, 1062, 49.3, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101453, 10803, 1019, 9.2, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101454, 10803, 1025, 14, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101455, 10803, 1059, 55, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101456, 10804, 1010, 31, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101457, 10804, 1028, 45.6, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101458, 10804, 1049, 20, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101459, 10805, 1034, 14, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101460, 10805, 1038, 263.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101461, 10806, 1002, 19, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101462, 10806, 1065, 21.05, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101463, 10806, 1074, 10, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101464, 10807, 1040, 18.4, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101465, 10808, 1056, 38, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101466, 10808, 1076, 18, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101467, 10809, 1052, 7, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101468, 10810, 1013, 6, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101469, 10810, 1025, 14, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101470, 10810, 1070, 15, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101471, 10811, 1019, 9.2, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101472, 10811, 1023, 9, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101473, 10811, 1040, 18.4, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101474, 10812, 1031, 12.5, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101476, 10812, 1077, 13, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101477, 10813, 1002, 19, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101478, 10813, 1046, 12, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101479, 10814, 1041, 9.65, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101480, 10814, 1043, 46, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101481, 10814, 1048, 12.75, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101482, 10814, 1061, 28.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101483, 10815, 1033, 2.5, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101484, 10816, 1038, 263.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101485, 10816, 1062, 49.3, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101486, 10817, 1026, 31.23, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101487, 10817, 1038, 263.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101488, 10817, 1040, 18.4, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101489, 10817, 1062, 49.3, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101490, 10818, 1032, 32, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101491, 10818, 1041, 9.65, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101492, 10819, 1043, 46, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101493, 10819, 1075, 7.75, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101494, 10820, 1056, 38, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101495, 10821, 1035, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101496, 10821, 1051, 53, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101497, 10822, 1062, 49.3, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101498, 10822, 1070, 15, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101500, 10823, 1057, 19.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101501, 10823, 1059, 55, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101502, 10823, 1077, 13, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101503, 10824, 1041, 9.65, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101504, 10824, 1070, 15, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101505, 10825, 1026, 31.23, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101506, 10825, 1053, 32.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101507, 10826, 1031, 12.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101508, 10826, 1057, 19.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101509, 10827, 1010, 31, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101510, 10827, 1039, 18, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101511, 10828, 1020, 81, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101512, 10828, 1038, 263.5, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101513, 10829, 1002, 19, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101514, 10829, 1008, 40, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101515, 10829, 1013, 6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101516, 10829, 1060, 34, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101517, 10830, 1006, 25, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101518, 10830, 1039, 18, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101519, 10830, 1060, 34, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101520, 10830, 1068, 12.5, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101521, 10831, 1019, 9.2, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101522, 10831, 1035, 18, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101523, 10831, 1038, 263.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101524, 10831, 1043, 46, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101525, 10832, 1013, 6, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101526, 10832, 1025, 14, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101527, 10832, 1044, 19.45, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101528, 10832, 1064, 33.25, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101529, 10833, 1007, 30, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101530, 10833, 1031, 12.5, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101531, 10833, 1053, 32.8, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101532, 10834, 1029, 123.79, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101533, 10834, 1030, 25.89, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101534, 10835, 1059, 55, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101535, 10835, 1077, 13, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101536, 10836, 1022, 21, 52)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101537, 10836, 1035, 18, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101538, 10836, 1057, 19.5, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101539, 10836, 1060, 34, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101540, 10836, 1064, 33.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101541, 10837, 1013, 6, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101542, 10837, 1040, 18.4, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101543, 10837, 1047, 9.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101544, 10837, 1076, 18, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101545, 10838, 1001, 18, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101546, 10838, 1018, 62.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101547, 10838, 1036, 19, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101548, 10839, 1058, 13.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101550, 10840, 1025, 14, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101551, 10840, 1039, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101552, 10841, 1010, 31, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101553, 10841, 1056, 38, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101554, 10841, 1059, 55, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101555, 10841, 1077, 13, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101557, 10842, 1043, 46, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101558, 10842, 1068, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101559, 10842, 1070, 15, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101560, 10843, 1051, 53, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101561, 10844, 1022, 21, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101562, 10845, 1023, 9, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101563, 10845, 1035, 18, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101565, 10845, 1058, 13.25, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101566, 10845, 1064, 33.25, 48)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101567, 10846, 1004, 22, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101568, 10846, 1070, 15, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101569, 10846, 1074, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101570, 10847, 1001, 18, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101571, 10847, 1019, 9.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101572, 10847, 1037, 26, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101573, 10847, 1045, 9.5, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101574, 10847, 1060, 34, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101575, 10847, 1071, 21.5, 55)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101577, 10848, 1009, 150, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101578, 10849, 1003, 10, 49)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101579, 10849, 1026, 31.23, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101580, 10850, 1025, 14, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101581, 10850, 1033, 2.5, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101582, 10850, 1070, 15, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101583, 10851, 1002, 19, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101584, 10851, 1025, 14, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101585, 10851, 1057, 19.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101586, 10851, 1059, 55, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101587, 10852, 1002, 19, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101588, 10852, 1017, 39, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101589, 10852, 1062, 49.3, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101590, 10853, 1018, 62.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101591, 10854, 1010, 31, 100)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101592, 10854, 1013, 6, 65)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101593, 10855, 1016, 17.45, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101594, 10855, 1031, 12.5, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101595, 10855, 1056, 38, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101596, 10855, 1065, 21.05, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101597, 10856, 1002, 19, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101599, 10857, 1003, 10, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101600, 10857, 1026, 31.23, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101601, 10857, 1029, 123.79, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101602, 10858, 1007, 30, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101603, 10858, 1027, 43.9, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101604, 10858, 1070, 15, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101605, 10859, 1024, 4.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101606, 10859, 1054, 7.45, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101607, 10859, 1064, 33.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101608, 10860, 1051, 53, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101609, 10860, 1076, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101610, 10861, 1017, 39, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101611, 10861, 1018, 62.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101612, 10861, 1021, 10, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101613, 10861, 1033, 2.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101614, 10861, 1062, 49.3, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101616, 10862, 1052, 7, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101617, 10863, 1001, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101618, 10863, 1058, 13.25, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101619, 10864, 1035, 18, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101620, 10864, 1067, 14, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101621, 10865, 1038, 263.5, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101622, 10865, 1039, 18, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101623, 10866, 1002, 19, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101624, 10866, 1024, 4.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101625, 10866, 1030, 25.89, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101626, 10867, 1053, 32.8, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101627, 10868, 1026, 31.23, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101628, 10868, 1035, 18, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101629, 10868, 1049, 20, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101630, 10869, 1001, 18, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101632, 10869, 1023, 9, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101633, 10869, 1068, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101634, 10870, 1035, 18, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101635, 10870, 1051, 53, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101636, 10871, 1006, 25, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101637, 10871, 1016, 17.45, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101638, 10871, 1017, 39, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101639, 10872, 1055, 24, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101640, 10872, 1062, 49.3, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101641, 10872, 1064, 33.25, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101642, 10872, 1065, 21.05, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101643, 10873, 1021, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101644, 10873, 1028, 45.6, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101645, 10874, 1010, 31, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101646, 10875, 1019, 9.2, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101647, 10875, 1047, 9.5, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101648, 10875, 1049, 20, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101649, 10876, 1046, 12, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101650, 10876, 1064, 33.25, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101651, 10877, 1016, 17.45, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101652, 10877, 1018, 62.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101653, 10878, 1020, 81, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101654, 10879, 1040, 18.4, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101655, 10879, 1065, 21.05, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101656, 10879, 1076, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101657, 10880, 1023, 9, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101658, 10880, 1061, 28.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101659, 10880, 1070, 15, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101660, 10881, 1073, 15, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101662, 10882, 1049, 20, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101663, 10882, 1054, 7.45, 32)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101664, 10883, 1024, 4.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101665, 10884, 1021, 10, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101666, 10884, 1056, 38, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101667, 10884, 1065, 21.05, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101668, 10885, 1002, 19, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101669, 10885, 1024, 4.5, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101670, 10885, 1070, 15, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101671, 10885, 1077, 13, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101672, 10886, 1010, 31, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101673, 10886, 1031, 12.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101674, 10886, 1077, 13, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101675, 10887, 1025, 14, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101676, 10888, 1002, 19, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101677, 10888, 1068, 12.5, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101679, 10889, 1038, 263.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101680, 10890, 1017, 39, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101681, 10890, 1034, 14, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101682, 10890, 1041, 9.65, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101683, 10891, 1030, 25.89, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101684, 10892, 1059, 55, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101685, 10893, 1008, 40, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101686, 10893, 1024, 4.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101687, 10893, 1029, 123.79, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101688, 10893, 1030, 25.89, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101689, 10893, 1036, 19, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101690, 10894, 1013, 6, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101691, 10894, 1069, 36, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101692, 10894, 1075, 7.75, 120)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101693, 10895, 1024, 4.5, 110)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101694, 10895, 1039, 18, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101695, 10895, 1040, 18.4, 91)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101696, 10895, 1060, 34, 100)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101697, 10896, 1045, 9.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101698, 10896, 1056, 38, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101699, 10897, 1029, 123.79, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101700, 10897, 1030, 25.89, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101701, 10898, 1013, 6, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101702, 10899, 1039, 18, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101703, 10900, 1070, 15, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101704, 10901, 1041, 9.65, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101705, 10901, 1071, 21.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101706, 10902, 1055, 24, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101707, 10902, 1062, 49.3, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101708, 10903, 1013, 6, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101709, 10903, 1065, 21.05, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101710, 10903, 1068, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101711, 10904, 1058, 13.25, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101712, 10904, 1062, 49.3, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101713, 10905, 1001, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101714, 10906, 1061, 28.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101715, 10907, 1075, 7.75, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101716, 10908, 1007, 30, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101717, 10908, 1052, 7, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101718, 10909, 1007, 30, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101719, 10909, 1016, 17.45, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101720, 10909, 1041, 9.65, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101721, 10910, 1019, 9.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101722, 10910, 1049, 20, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101723, 10910, 1061, 28.5, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101724, 10911, 1001, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101725, 10911, 1017, 39, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101726, 10911, 1067, 14, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101728, 10912, 1029, 123.79, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101729, 10913, 1004, 22, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101730, 10913, 1033, 2.5, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101731, 10913, 1058, 13.25, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101732, 10914, 1071, 21.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101733, 10915, 1017, 39, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101734, 10915, 1033, 2.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101735, 10915, 1054, 7.45, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101736, 10916, 1016, 17.45, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101737, 10916, 1032, 32, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101738, 10916, 1057, 19.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101739, 10917, 1030, 25.89, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101740, 10917, 1060, 34, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101741, 10918, 1001, 18, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101742, 10918, 1060, 34, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101743, 10919, 1016, 17.45, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101744, 10919, 1025, 14, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101745, 10919, 1040, 18.4, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101746, 10920, 1050, 16.25, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101747, 10921, 1035, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101748, 10921, 1063, 43.9, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101749, 10922, 1017, 39, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101750, 10922, 1024, 4.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101752, 10923, 1043, 46, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101753, 10923, 1067, 14, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101754, 10924, 1010, 31, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101755, 10924, 1028, 45.6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101756, 10924, 1075, 7.75, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101757, 10925, 1036, 19, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101758, 10925, 1052, 7, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101760, 10926, 1013, 6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101761, 10926, 1019, 9.2, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101763, 10927, 1020, 81, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101764, 10927, 1052, 7, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101765, 10927, 1076, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101766, 10928, 1047, 9.5, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101767, 10928, 1076, 18, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101768, 10929, 1021, 10, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101769, 10929, 1075, 7.75, 49)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101770, 10929, 1077, 13, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101771, 10930, 1021, 10, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101772, 10930, 1027, 43.9, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101773, 10930, 1055, 24, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101774, 10930, 1058, 13.25, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101775, 10931, 1013, 6, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101776, 10931, 1057, 19.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101777, 10932, 1016, 17.45, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101778, 10932, 1062, 49.3, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101780, 10932, 1075, 7.75, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101781, 10933, 1053, 32.8, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101782, 10933, 1061, 28.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101783, 10934, 1006, 25, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101784, 10935, 1001, 18, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101785, 10935, 1018, 62.5, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101786, 10935, 1023, 9, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101787, 10936, 1036, 19, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101788, 10937, 1028, 45.6, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101789, 10937, 1034, 14, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101790, 10938, 1013, 6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101791, 10938, 1043, 46, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101792, 10938, 1060, 34, 49)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101793, 10938, 1071, 21.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101794, 10939, 1002, 19, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101795, 10939, 1067, 14, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101796, 10940, 1007, 30, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101797, 10940, 1013, 6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101798, 10941, 1031, 12.5, 44)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101799, 10941, 1062, 49.3, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101800, 10941, 1068, 12.5, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101802, 10942, 1049, 20, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101803, 10943, 1013, 6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101804, 10943, 1022, 21, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101805, 10943, 1046, 12, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101807, 10944, 1044, 19.45, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101808, 10944, 1056, 38, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101809, 10945, 1013, 6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101810, 10945, 1031, 12.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101811, 10946, 1010, 31, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101812, 10946, 1024, 4.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101813, 10946, 1077, 13, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101814, 10947, 1059, 55, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101815, 10948, 1050, 16.25, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101816, 10948, 1051, 53, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101817, 10948, 1055, 24, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101818, 10949, 1006, 25, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101819, 10949, 1010, 31, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101820, 10949, 1017, 39, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101821, 10949, 1062, 49.3, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101822, 10950, 1004, 22, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101823, 10951, 1033, 2.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101824, 10951, 1041, 9.65, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101825, 10951, 1075, 7.75, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101826, 10952, 1006, 25, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101827, 10952, 1028, 45.6, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101828, 10953, 1020, 81, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101829, 10953, 1031, 12.5, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101830, 10954, 1016, 17.45, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101831, 10954, 1031, 12.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101832, 10954, 1045, 9.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101833, 10954, 1060, 34, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101834, 10955, 1075, 7.75, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101835, 10956, 1021, 10, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101836, 10956, 1047, 9.5, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101837, 10956, 1051, 53, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101838, 10957, 1030, 25.89, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101839, 10957, 1035, 18, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101840, 10957, 1064, 33.25, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101842, 10958, 1007, 30, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101844, 10959, 1075, 7.75, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101845, 10960, 1024, 4.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101846, 10960, 1041, 9.65, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101847, 10961, 1052, 7, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101848, 10961, 1076, 18, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101849, 10962, 1007, 30, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101850, 10962, 1013, 6, 77)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101851, 10962, 1053, 32.8, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101852, 10962, 1069, 36, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101853, 10962, 1076, 18, 44)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101854, 10963, 1060, 34, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101855, 10964, 1018, 62.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101856, 10964, 1038, 263.5, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101857, 10964, 1069, 36, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101858, 10965, 1051, 53, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101859, 10966, 1037, 26, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101860, 10966, 1056, 38, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101861, 10966, 1062, 49.3, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101862, 10967, 1019, 9.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101863, 10967, 1049, 20, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101864, 10968, 1012, 38, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101865, 10968, 1024, 4.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101866, 10968, 1064, 33.25, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101867, 10969, 1046, 12, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101868, 10970, 1052, 7, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101869, 10971, 1029, 123.79, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101870, 10972, 1017, 39, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101871, 10972, 1033, 2.5, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101872, 10973, 1026, 31.23, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101873, 10973, 1041, 9.65, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101874, 10973, 1075, 7.75, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101875, 10974, 1063, 43.9, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101876, 10975, 1008, 40, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101877, 10975, 1075, 7.75, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101878, 10976, 1028, 45.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101879, 10977, 1039, 18, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101880, 10977, 1047, 9.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101881, 10977, 1051, 53, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101882, 10977, 1063, 43.9, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101883, 10978, 1008, 40, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101884, 10978, 1021, 10, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101885, 10978, 1040, 18.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101886, 10978, 1044, 19.45, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101887, 10979, 1007, 30, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101888, 10979, 1012, 38, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101889, 10979, 1024, 4.5, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101890, 10979, 1027, 43.9, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101891, 10979, 1031, 12.5, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101892, 10979, 1063, 43.9, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101893, 10980, 1075, 7.75, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101894, 10981, 1038, 263.5, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101895, 10982, 1007, 30, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101896, 10982, 1043, 46, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101897, 10983, 1013, 6, 84)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101898, 10983, 1057, 19.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101899, 10984, 1016, 17.45, 55)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101900, 10984, 1024, 4.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101901, 10984, 1036, 19, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101902, 10985, 1016, 17.45, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101903, 10985, 1018, 62.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101904, 10985, 1032, 32, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101906, 10986, 1020, 81, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101907, 10986, 1076, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101908, 10986, 1077, 13, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101909, 10987, 1007, 30, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101910, 10987, 1043, 46, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101912, 10988, 1007, 30, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101913, 10988, 1062, 49.3, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101914, 10989, 1006, 25, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101916, 10989, 1041, 9.65, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101917, 10990, 1021, 10, 65)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101918, 10990, 1034, 14, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101919, 10990, 1055, 24, 65)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101920, 10990, 1061, 28.5, 66)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101921, 10991, 1002, 19, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101922, 10991, 1070, 15, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101923, 10991, 1076, 18, 90)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101925, 10993, 1029, 123.79, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101926, 10993, 1041, 9.65, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101927, 10994, 1059, 55, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101928, 10995, 1051, 53, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101929, 10995, 1060, 34, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101931, 10997, 1032, 32, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101932, 10997, 1046, 12, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101933, 10997, 1052, 7, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101934, 10998, 1024, 4.5, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101935, 10998, 1061, 28.5, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101936, 10998, 1074, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101937, 10998, 1075, 7.75, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101938, 10999, 1041, 9.65, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101939, 10999, 1051, 53, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101940, 10999, 1077, 13, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101941, 11000, 1004, 22, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101942, 11000, 1024, 4.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101943, 11000, 1077, 13, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101944, 11001, 1007, 30, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101945, 11001, 1022, 21, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101946, 11001, 1046, 12, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101947, 11001, 1055, 24, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101948, 11002, 1013, 6, 56)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101949, 11002, 1035, 18, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101951, 11002, 1055, 24, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101952, 11003, 1001, 18, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101953, 11003, 1040, 18.4, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101954, 11003, 1052, 7, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101955, 11004, 1026, 31.23, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101956, 11004, 1076, 18, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101957, 11005, 1001, 18, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101958, 11005, 1059, 55, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101959, 11006, 1001, 18, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101960, 11006, 1029, 123.79, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101961, 11007, 1008, 40, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101962, 11007, 1029, 123.79, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101964, 11008, 1028, 45.6, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101965, 11008, 1034, 14, 90)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101966, 11008, 1071, 21.5, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101967, 11009, 1024, 4.5, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101968, 11009, 1036, 19, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101969, 11009, 1060, 34, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101970, 11010, 1007, 30, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101971, 11010, 1024, 4.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101972, 11011, 1058, 13.25, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101973, 11011, 1071, 21.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101974, 11012, 1019, 9.2, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101975, 11012, 1060, 34, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101976, 11012, 1071, 21.5, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101977, 11013, 1023, 9, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101979, 11013, 1045, 9.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101980, 11013, 1068, 12.5, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101981, 11014, 1041, 9.65, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101982, 11015, 1030, 25.89, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101983, 11015, 1077, 13, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101984, 11016, 1031, 12.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101985, 11016, 1036, 19, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101986, 11017, 1003, 10, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101987, 11017, 1059, 55, 110)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101988, 11017, 1070, 15, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101989, 11018, 1012, 38, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101990, 11018, 1018, 62.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101991, 11018, 1056, 38, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101992, 11019, 1046, 12, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101993, 11019, 1049, 20, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101994, 11020, 1010, 31, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101995, 11021, 1002, 19, 11)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101996, 11021, 1020, 81, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101997, 11021, 1026, 31.23, 63)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101998, 11021, 1051, 53, 44)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102000, 11022, 1019, 9.2, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102001, 11022, 1069, 36, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102002, 11023, 1007, 30, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102003, 11023, 1043, 46, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102004, 11024, 1026, 31.23, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102005, 11024, 1033, 2.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102006, 11024, 1065, 21.05, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102007, 11024, 1071, 21.5, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102008, 11025, 1001, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102009, 11025, 1013, 6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102010, 11026, 1018, 62.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102011, 11026, 1051, 53, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102012, 11027, 1024, 4.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102013, 11027, 1062, 49.3, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102014, 11028, 1055, 24, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102015, 11028, 1059, 55, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102016, 11029, 1056, 38, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102017, 11029, 1063, 43.9, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102018, 11030, 1002, 19, 100)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102020, 11030, 1029, 123.79, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102021, 11030, 1059, 55, 100)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102022, 11031, 1001, 18, 45)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102023, 11031, 1013, 6, 80)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102024, 11031, 1024, 4.5, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102025, 11031, 1064, 33.25, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102026, 11031, 1071, 21.5, 16)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102027, 11032, 1036, 19, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102028, 11032, 1038, 263.5, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102029, 11032, 1059, 55, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102030, 11033, 1053, 32.8, 70)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102031, 11033, 1069, 36, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102032, 11034, 1021, 10, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102033, 11034, 1044, 19.45, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102034, 11034, 1061, 28.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102035, 11035, 1001, 18, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102036, 11035, 1035, 18, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102038, 11035, 1054, 7.45, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102039, 11036, 1013, 6, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102040, 11036, 1059, 55, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102041, 11037, 1070, 15, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102042, 11038, 1040, 18.4, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102043, 11038, 1052, 7, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102044, 11038, 1071, 21.5, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102045, 11039, 1028, 45.6, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102046, 11039, 1035, 18, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102047, 11039, 1049, 20, 60)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102048, 11039, 1057, 19.5, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102049, 11040, 1021, 10, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102050, 11041, 1002, 19, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102051, 11041, 1063, 43.9, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102052, 11042, 1044, 19.45, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102053, 11042, 1061, 28.5, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102055, 11044, 1062, 49.3, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102056, 11045, 1033, 2.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102057, 11045, 1051, 53, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102058, 11046, 1012, 38, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102059, 11046, 1032, 32, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102060, 11046, 1035, 18, 18)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102061, 11047, 1001, 18, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102063, 11048, 1068, 12.5, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102064, 11049, 1002, 19, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102065, 11049, 1012, 38, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102066, 11050, 1076, 18, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102067, 11051, 1024, 4.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102068, 11052, 1043, 46, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102069, 11052, 1061, 28.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102070, 11053, 1018, 62.5, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102071, 11053, 1032, 32, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102072, 11053, 1064, 33.25, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102073, 11054, 1033, 2.5, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102074, 11054, 1067, 14, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102075, 11055, 1024, 4.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102076, 11055, 1025, 14, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102077, 11055, 1051, 53, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102078, 11055, 1057, 19.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102079, 11056, 1007, 30, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102080, 11056, 1055, 24, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102081, 11056, 1060, 34, 50)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102082, 11057, 1070, 15, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102083, 11058, 1021, 10, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102084, 11058, 1060, 34, 21)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102085, 11058, 1061, 28.5, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102086, 11059, 1013, 6, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102087, 11059, 1017, 39, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102088, 11059, 1060, 34, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102089, 11060, 1060, 34, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102090, 11060, 1077, 13, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102091, 11061, 1060, 34, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102092, 11062, 1053, 32.8, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102093, 11062, 1070, 15, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102094, 11063, 1034, 14, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102095, 11063, 1040, 18.4, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102096, 11063, 1041, 9.65, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102097, 11064, 1017, 39, 77)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102098, 11064, 1041, 9.65, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102099, 11064, 1053, 32.8, 25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102100, 11064, 1055, 24, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102101, 11064, 1068, 12.5, 55)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102102, 11065, 1030, 25.89, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102103, 11065, 1054, 7.45, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102104, 11066, 1016, 17.45, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102105, 11066, 1019, 9.2, 42)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102106, 11066, 1034, 14, 35)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102107, 11067, 1041, 9.65, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102108, 11068, 1028, 45.6, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102109, 11068, 1043, 46, 36)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102110, 11068, 1077, 13, 28)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102111, 11069, 1039, 18, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102112, 11070, 1001, 18, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102113, 11070, 1002, 19, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102114, 11070, 1016, 17.45, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102115, 11070, 1031, 12.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102116, 11071, 1007, 30, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102117, 11071, 1013, 6, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102118, 11072, 1002, 19, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102119, 11072, 1041, 9.65, 40)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102120, 11072, 1050, 16.25, 22)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102121, 11072, 1064, 33.25, 130)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102123, 11073, 1024, 4.5, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102124, 11074, 1016, 17.45, 14)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102125, 11075, 1002, 19, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102126, 11075, 1046, 12, 30)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102127, 11075, 1076, 18, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102128, 11076, 1006, 25, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102129, 11076, 1014, 23.25, 20)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102130, 11076, 1019, 9.2, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102131, 11077, 1002, 19, 24)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102132, 11077, 1003, 10, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102133, 11077, 1004, 22, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102134, 11077, 1006, 25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102135, 11077, 1007, 30, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102136, 11077, 1008, 40, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102137, 11077, 1010, 31, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102138, 11077, 1012, 38, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102139, 11077, 1013, 6, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102140, 11077, 1014, 23.25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102141, 11077, 1016, 17.45, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102142, 11077, 1020, 81, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102143, 11077, 1023, 9, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102144, 11077, 1032, 32, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102145, 11077, 1039, 18, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102146, 11077, 1041, 9.65, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102147, 11077, 1046, 12, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102148, 11077, 1052, 7, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102149, 11077, 1055, 24, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102150, 11077, 1060, 34, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102151, 11077, 1064, 33.25, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102152, 11077, 1066, 17, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102153, 11077, 1073, 15, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102154, 11077, 1075, 7.75, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102155, 11077, 1077, 13, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102316, 10250, 1009, 150, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102494, 11200, 1042, 14, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102495, 11200, 1022, 21, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102496, 11200, 1023, 9, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102505, 11209, 1019, 9.2, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102506, 11209, 1016, 17.45, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102507, 11209, 1005, 21.35, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102508, 11209, 1003, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102509, 11209, 1006, 25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102510, 11209, 1031, 12.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102511, 11210, 1019, 9.2, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102512, 11210, 1016, 17.45, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102513, 11210, 1005, 21.35, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102514, 11210, 1003, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102515, 11210, 1006, 25, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102516, 11210, 1031, 12.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102517, 11211, 1019, 9.2, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102518, 11211, 1016, 17.45, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102519, 11211, 1005, 21.35, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102520, 11211, 1003, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102521, 11211, 1006, 25, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102522, 11211, 1031, 12.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102523, 11212, 1019, 9.2, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102524, 11212, 1016, 17.45, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102525, 11212, 1005, 21.35, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102526, 11212, 1003, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102527, 11212, 1006, 25, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102528, 11212, 1031, 12.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102529, 11213, 1003, 10, 10)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102530, 11213, 1005, 21.35, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102531, 11213, 1004, 22, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102532, 11213, 1017, 39, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102533, 11213, 1016, 17.45, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102534, 11213, 1029, 123.79, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102535, 11213, 1009, 97, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102536, 11213, 1053, 32.8, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102537, 11213, 1054, 7.45, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102538, 11213, 1055, 24, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102539, 11213, 1037, 26, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102540, 11213, 1036, 19, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102541, 11213, 1030, 25.89, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102542, 11213, 1010, 31, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102543, 11213, 1013, 6, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102544, 11213, 1018, 62.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112505, 21205, 1016, 17.45, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112506, 21205, 1019, 9.2, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112507, 21205, 1025, 14, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112508, 21207, 1006, 25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112509, 21207, 1004, 22, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112510, 21207, 1003, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112511, 21208, 1006, 25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112512, 21208, 1056, 38, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112513, 21208, 1057, 19.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112514, 21208, 1052, 7, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112515, 21209, 1031, 12.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112516, 21209, 1012, 38, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112517, 21209, 1011, 21, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112518, 21209, 1014, 23.25, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112519, 21209, 1007, 30, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (112520, 21209, 1028, 45.6, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122505, 31205, 1006, 25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122506, 31205, 1004, 22, 19)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122507, 31205, 1001, 190, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122508, 31206, 1029, 123.79, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122509, 31206, 1017, 39, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122510, 31206, 1009, 97, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122511, 31207, 1013, 6, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122512, 31207, 1010, 31, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122513, 31207, 1004, 22, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122514, 31207, 1003, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122515, 31207, 1015, 15.5, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132505, 41205, 1074, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132506, 41206, 1024, 4.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132507, 41206, 1038, 263.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132508, 41206, 1035, 18, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132509, 41208, 1014, 23.25, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132510, 41208, 1007, 30, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132511, 41208, 1028, 45.6, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132512, 41208, 1074, 10, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132513, 41208, 1051, 53, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (142505, 51205, 1024, 4.5, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (142506, 51205, 1014, 23.25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (142507, 51205, 1028, 45.6, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (152505, 61205, 1002, 19, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (152506, 61205, 1001, 190, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162505, 71205, 1029, 123.79, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162506, 71205, 1019, 9.2, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162507, 71206, 1042, 14, 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162508, 71206, 1024, 4.5, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162509, 71206, 1002, 19, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162510, 71206, 1001, 190, 9)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162511, 71206, 1075, 7.75, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162512, 71206, 1081, 19, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162513, 71206, 1070, 15, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162514, 71206, 1022, 21, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162515, 71206, 1019, 9.2, 12)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172505, 81206, 1012, 38, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172506, 81206, 1031, 12.5, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172507, 81206, 1028, 45.6, 15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172508, 81207, 1019, 9.2, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172509, 81207, 1016, 17.45, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172510, 81207, 1005, 21.35, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172511, 81207, 1042, 14, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172512, 81208, 1013, 6, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172513, 81208, 1014, 23.25, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172514, 81208, 1002, 19, 8)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172515, 81209, 1006, 25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172516, 81209, 1004, 22, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172517, 81210, 1016, 17.45, 4)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172518, 81211, 1014, 23.25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172519, 81211, 1028, 45.6, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172520, 81211, 1007, 30, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172521, 81212, 1004, 22, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172522, 81212, 1003, 10, 6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172523, 81212, 1006, 25, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (182505, 91205, 1042, 14, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (182506, 91205, 1023, 9, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (182507, 91205, 1022, 21, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (192505, 101205, 1003, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (192506, 101205, 1004, 22, 5)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (192507, 101205, 1006, 25, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202505, 111205, 1006, 25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202506, 111205, 1004, 22, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202507, 111205, 1012, 38, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202508, 111205, 1011, 21, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202509, 111205, 1031, 12.5, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202510, 111206, 1016, 17.45, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202511, 111206, 1005, 21.35, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202512, 111206, 1019, 9.2, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212505, 121205, 1003, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212506, 121205, 1002, 19, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212507, 121205, 1001, 190, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212508, 121206, 1023, 9, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212509, 121206, 1022, 21, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212510, 121206, 1042, 14, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212511, 121206, 1017, 39, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212512, 121218, 1025, 14, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212513, 121218, 1035, 18, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212514, 121218, 1018, 62.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212515, 121219, 1058, 13.25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212516, 121219, 1061, 28.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212526, 121230, 1032, 32, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212527, 121231, 1039, 18, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212528, 121231, 1075, 7.75, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212529, 121231, 1081, 19, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212530, 121232, 1032, 32, 3)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212531, 121232, 1058, 13.25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212532, 121232, 1025, 14, 2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212533, 121232, 1014, 23.25, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212534, 121232, 1074, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212535, 121233, 1018, 62.5, 1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212536, 121234, 1062, 49.3, 1)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10249, N'TOMSP', CAST(N'1996-07-05T00:00:00.000' AS DateTime), N'Luisenstr. 48', 0, 0, CAST(N'1996-07-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10250, N'HANAR', CAST(N'1996-07-08T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 2, 1, CAST(N'1996-07-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10251, N'VICTE', CAST(N'1996-07-08T00:00:00.000' AS DateTime), N'2, rue du Commerce', 3, 1, CAST(N'1996-07-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10252, N'SUPRD', CAST(N'1996-07-09T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 4, 1, CAST(N'1996-07-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10253, N'HANAR', CAST(N'1996-07-10T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 2, 1, CAST(N'1996-07-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10254, N'CHOPS', CAST(N'1996-07-11T00:00:00.000' AS DateTime), N'Hauptstr. 31', 3, 1, CAST(N'1996-07-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10255, N'RICSU', CAST(N'1996-07-12T00:00:00.000' AS DateTime), N'Starenweg 5', 1, 1, CAST(N'1996-07-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10256, N'WELLI', CAST(N'1996-07-15T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 2, 1, CAST(N'1996-07-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10257, N'HILAA', CAST(N'1996-07-16T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 2, 1, CAST(N'1996-07-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10258, N'ERNSH', CAST(N'1996-07-17T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3, 1, CAST(N'1996-07-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10259, N'CENTC', CAST(N'1996-07-18T00:00:00.000' AS DateTime), N'Sierras de Granada 9993', 4, 1, CAST(N'1996-07-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10260, N'OTTIK', CAST(N'1996-07-19T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 2, 1, CAST(N'1996-07-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10261, N'QUEDE', CAST(N'1996-07-19T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 1, 1, CAST(N'1996-07-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10262, N'RATTC', CAST(N'1996-07-22T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 4, 1, CAST(N'1996-07-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10263, N'ERNSH', CAST(N'1996-07-23T00:00:00.000' AS DateTime), N'Kirchgasse 6', 0, 1, CAST(N'1996-07-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10264, N'FOLKO', CAST(N'1996-07-24T00:00:00.000' AS DateTime), N'Åkergatan 24', 1, 1, CAST(N'1996-07-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10265, N'BLONP', CAST(N'1996-07-25T00:00:00.000' AS DateTime), N'24, place Kléber', 1, 1, CAST(N'1996-07-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10266, N'WARTH', CAST(N'1996-07-26T00:00:00.000' AS DateTime), N'Torikatu 38', 3, 1, CAST(N'1996-07-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10267, N'FRANK', CAST(N'1996-07-29T00:00:00.000' AS DateTime), N'Berliner Platz 43', 2, 1, CAST(N'1996-07-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10268, N'GROSR', CAST(N'1996-07-30T00:00:00.000' AS DateTime), N'5ª Ave. Los Palos Grandes', 1, 1, CAST(N'1996-07-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10269, N'WHITC', CAST(N'1996-07-31T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 0, 1, CAST(N'1996-07-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10270, N'WARTH', CAST(N'1996-08-01T00:00:00.000' AS DateTime), N'Torikatu 38', 1, 1, CAST(N'1996-08-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10271, N'SPLIR', CAST(N'1996-08-01T00:00:00.000' AS DateTime), N'P.O. Box 555', 4, 1, CAST(N'1996-08-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10272, N'RATTC', CAST(N'1996-08-02T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 2, 1, CAST(N'1996-08-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10273, N'QUICK', CAST(N'1996-08-05T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3, 1, CAST(N'1996-08-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10274, N'VINET', CAST(N'1996-08-06T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye', 0, 1, CAST(N'1996-08-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10275, N'MAGAA', CAST(N'1996-08-07T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 1, 1, CAST(N'1996-08-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10276, N'TORTU', CAST(N'1996-08-08T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 4, 1, CAST(N'1996-08-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10277, N'MORGK', CAST(N'1996-08-09T00:00:00.000' AS DateTime), N'Heerstr. 22', 3, 1, CAST(N'1996-08-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10278, N'BERGS', CAST(N'1996-08-12T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 0, 1, CAST(N'1996-08-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10279, N'LEHMS', CAST(N'1996-08-13T00:00:00.000' AS DateTime), N'Magazinweg 7', 1, 1, CAST(N'1996-08-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10280, N'BERGS', CAST(N'1996-08-14T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 4, 1, CAST(N'1996-08-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10281, N'ROMEY', CAST(N'1996-08-14T00:00:00.000' AS DateTime), N'Gran Vía, 1', 0, 1, CAST(N'1996-08-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10282, N'ROMEY', CAST(N'1996-08-15T00:00:00.000' AS DateTime), N'Gran Vía, 1', 2, 1, CAST(N'1996-08-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10283, N'LILAS', CAST(N'1996-08-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 3, 1, CAST(N'1996-08-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10284, N'LEHMS', CAST(N'1996-08-19T00:00:00.000' AS DateTime), N'Magazinweg 7', 0, 1, CAST(N'1996-08-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10285, N'QUICK', CAST(N'1996-08-20T00:00:00.000' AS DateTime), N'Taucherstraße 10', 2, 1, CAST(N'1996-08-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10286, N'QUICK', CAST(N'1996-08-21T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3, 1, CAST(N'1996-08-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10287, N'RICAR', CAST(N'1996-08-22T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 2, 1, CAST(N'1996-08-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10288, N'REGGC', CAST(N'1996-08-23T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 4, 1, CAST(N'1996-08-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10289, N'BSBEV', CAST(N'1996-08-26T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 3, 1, CAST(N'1996-08-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10290, N'COMMI', CAST(N'1996-08-27T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23', 1, 1, CAST(N'1996-08-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10291, N'QUEDE', CAST(N'1996-08-27T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 3, 1, CAST(N'1996-08-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10292, N'TRADH', CAST(N'1996-08-28T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414', 2, 1, CAST(N'1996-08-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10293, N'TORTU', CAST(N'1996-08-29T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 2, 1, CAST(N'1996-08-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10294, N'RATTC', CAST(N'1996-08-30T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 4, 1, CAST(N'1996-08-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10295, N'VINET', CAST(N'1996-09-02T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye', 1, 1, CAST(N'1996-09-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10296, N'LILAS', CAST(N'1996-09-03T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 0, 1, CAST(N'1996-09-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10297, N'BLONP', CAST(N'1996-09-04T00:00:00.000' AS DateTime), N'24, place Kléber', 3, 1, CAST(N'1996-09-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10298, N'HUNGO', CAST(N'1996-09-05T00:00:00.000' AS DateTime), N'8 Johnstown Road', 2, 1, CAST(N'1996-09-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10299, N'RICAR', CAST(N'1996-09-06T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 1, 1, CAST(N'1996-09-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10300, N'MAGAA', CAST(N'1996-09-09T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 0, 1, CAST(N'1996-09-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10301, N'WANDK', CAST(N'1996-09-09T00:00:00.000' AS DateTime), N'Adenauerallee 900', 1, 1, CAST(N'1996-09-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10302, N'SUPRD', CAST(N'1996-09-10T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 1, 1, CAST(N'1996-09-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10303, N'GODOS', CAST(N'1996-09-11T00:00:00.000' AS DateTime), N'C/ Romero, 33', 4, 1, CAST(N'1996-09-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10304, N'TORTU', CAST(N'1996-09-12T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 0, 1, CAST(N'1996-09-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10305, N'OLDWO', CAST(N'1996-09-13T00:00:00.000' AS DateTime), N'2743 Bering St.', 0, 1, CAST(N'1996-09-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10306, N'ROMEY', CAST(N'1996-09-16T00:00:00.000' AS DateTime), N'Gran Vía, 1', 2, 1, CAST(N'1996-09-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10307, N'LONEP', CAST(N'1996-09-17T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 1, 1, CAST(N'1996-09-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10308, N'ANATR', CAST(N'1996-09-18T00:00:00.000' AS DateTime), N'Avda. de la Constitución 2222', 2, 1, CAST(N'1996-09-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10309, N'HUNGO', CAST(N'1996-09-19T00:00:00.000' AS DateTime), N'8 Johnstown Road', 2, 1, CAST(N'1996-09-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10310, N'THEBI', CAST(N'1996-09-20T00:00:00.000' AS DateTime), N'89 Jefferson Way Suite 2', 1, 1, CAST(N'1996-09-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10311, N'DUMON', CAST(N'1996-09-20T00:00:00.000' AS DateTime), N'67, rue des Cinquante Otages', 2, 1, CAST(N'1996-09-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10312, N'WANDK', CAST(N'1996-09-23T00:00:00.000' AS DateTime), N'Adenauerallee 900', 1, 1, CAST(N'1996-09-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10313, N'QUICK', CAST(N'1996-09-24T00:00:00.000' AS DateTime), N'Taucherstraße 10', 0, 1, CAST(N'1996-09-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10314, N'RATTC', CAST(N'1996-09-25T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 0, 1, CAST(N'1996-09-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10315, N'ISLAT', CAST(N'1996-09-26T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 4, 1, CAST(N'1996-09-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10316, N'RATTC', CAST(N'1996-09-27T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 4, 1, CAST(N'1996-09-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10317, N'LONEP', CAST(N'1996-09-30T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 0, 1, CAST(N'1996-09-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10318, N'ISLAT', CAST(N'1996-10-01T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 1, 1, CAST(N'1996-10-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10319, N'TORTU', CAST(N'1996-10-02T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 3, 1, CAST(N'1996-10-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10320, N'WARTH', CAST(N'1996-10-03T00:00:00.000' AS DateTime), N'Torikatu 38', 0, 1, CAST(N'1996-10-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10321, N'ISLAT', CAST(N'1996-10-03T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 0, 1, CAST(N'1996-10-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10322, N'PERIC', CAST(N'1996-10-04T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321', 4, 1, CAST(N'1996-10-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10323, N'KOENE', CAST(N'1996-10-07T00:00:00.000' AS DateTime), N'Maubelstr. 90', 2, 1, CAST(N'1996-10-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10324, N'SAVEA', CAST(N'1996-10-08T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 2, 1, CAST(N'1996-10-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10325, N'KOENE', CAST(N'1996-10-09T00:00:00.000' AS DateTime), N'Maubelstr. 90', 2, 1, CAST(N'1996-10-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10326, N'BOLID', CAST(N'1996-10-10T00:00:00.000' AS DateTime), N'C/ Araquil, 67', 0, 1, CAST(N'1996-10-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10327, N'FOLKO', CAST(N'1996-10-11T00:00:00.000' AS DateTime), N'Åkergatan 24', 2, 1, CAST(N'1996-10-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10328, N'FURIB', CAST(N'1996-10-14T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 4, 1, CAST(N'1996-10-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10329, N'SPLIR', CAST(N'1996-10-15T00:00:00.000' AS DateTime), N'P.O. Box 555', 2, 1, CAST(N'1996-10-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10330, N'LILAS', CAST(N'1996-10-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 2, 1, CAST(N'1996-10-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10331, N'BONAP', CAST(N'1996-10-16T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 3, 1, CAST(N'1996-10-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10332, N'MEREP', CAST(N'1996-10-17T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 4, 1, CAST(N'1996-10-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10333, N'WARTH', CAST(N'1996-10-18T00:00:00.000' AS DateTime), N'Torikatu 38', 2, 1, CAST(N'1996-10-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10334, N'VICTE', CAST(N'1996-10-21T00:00:00.000' AS DateTime), N'2, rue du Commerce', 2, 1, CAST(N'1996-10-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10335, N'HUNGO', CAST(N'1996-10-22T00:00:00.000' AS DateTime), N'8 Johnstown Road', 1, 1, CAST(N'1996-10-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10336, N'PRINI', CAST(N'1996-10-23T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58', 0, 1, CAST(N'1996-10-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10337, N'FRANK', CAST(N'1996-10-24T00:00:00.000' AS DateTime), N'Berliner Platz 43', 0, 1, CAST(N'1996-10-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10338, N'OLDWO', CAST(N'1996-10-25T00:00:00.000' AS DateTime), N'2743 Bering St.', 3, 1, CAST(N'1996-10-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10339, N'MEREP', CAST(N'1996-10-28T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 1, 1, CAST(N'1996-10-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10340, N'BONAP', CAST(N'1996-10-29T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 3, 1, CAST(N'1996-10-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10341, N'SIMOB', CAST(N'1996-10-29T00:00:00.000' AS DateTime), N'Vinbæltet 34', 4, 1, CAST(N'1996-10-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10342, N'FRANK', CAST(N'1996-10-30T00:00:00.000' AS DateTime), N'Berliner Platz 43', 0, 1, CAST(N'1996-10-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10343, N'LEHMS', CAST(N'1996-10-31T00:00:00.000' AS DateTime), N'Magazinweg 7', 0, 1, CAST(N'1996-10-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10344, N'WHITC', CAST(N'1996-11-01T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 4, 1, CAST(N'1996-11-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10345, N'QUICK', CAST(N'1996-11-04T00:00:00.000' AS DateTime), N'Taucherstraße 10', 0, 1, CAST(N'1996-11-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10346, N'RATTC', CAST(N'1996-11-05T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 3, 1, CAST(N'1996-11-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10347, N'FAMIA', CAST(N'1996-11-06T00:00:00.000' AS DateTime), N'Rua Orós, 92', 0, 1, CAST(N'1996-11-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10348, N'WANDK', CAST(N'1996-11-07T00:00:00.000' AS DateTime), N'Adenauerallee 900', 2, 1, CAST(N'1996-11-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10349, N'SPLIR', CAST(N'1996-11-08T00:00:00.000' AS DateTime), N'P.O. Box 555', 0, 1, CAST(N'1996-11-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10350, N'LAMAI', CAST(N'1996-11-11T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 4, 1, CAST(N'1996-11-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10351, N'ERNSH', CAST(N'1996-11-11T00:00:00.000' AS DateTime), N'Kirchgasse 6', 0, 1, CAST(N'1996-11-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10352, N'FURIB', CAST(N'1996-11-12T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 0, 1, CAST(N'1996-11-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10353, N'PICCO', CAST(N'1996-11-13T00:00:00.000' AS DateTime), N'Geislweg 14', 1, 1, CAST(N'1996-11-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10354, N'PERIC', CAST(N'1996-11-14T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321', 4, 1, CAST(N'1996-11-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10355, N'AROUT', CAST(N'1996-11-15T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 4, 1, CAST(N'1996-11-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10356, N'WANDK', CAST(N'1996-11-18T00:00:00.000' AS DateTime), N'Adenauerallee 900', 2, 1, CAST(N'1996-11-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10357, N'LILAS', CAST(N'1996-11-19T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 0, 1, CAST(N'1996-11-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10358, N'LAMAI', CAST(N'1996-11-20T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 4, 1, CAST(N'1996-11-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10359, N'SEVES', CAST(N'1996-11-21T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 3, 1, CAST(N'1996-11-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10360, N'BLONP', CAST(N'1996-11-22T00:00:00.000' AS DateTime), N'24, place Kléber', 2, 1, CAST(N'1996-11-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10361, N'QUICK', CAST(N'1996-11-22T00:00:00.000' AS DateTime), N'Taucherstraße 10', 4, 1, CAST(N'1996-11-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10362, N'BONAP', CAST(N'1996-11-25T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 1, 1, CAST(N'1996-11-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10363, N'DRACD', CAST(N'1996-11-26T00:00:00.000' AS DateTime), N'Walserweg 21', 0, 1, CAST(N'1996-11-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10364, N'EASTC', CAST(N'1996-11-26T00:00:00.000' AS DateTime), N'35 King George', 3, 1, CAST(N'1996-11-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10365, N'ANTON', CAST(N'1996-11-27T00:00:00.000' AS DateTime), N'Mataderos  2312', 0, 1, CAST(N'1996-11-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10366, N'GALED', CAST(N'1996-11-28T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23', 2, 1, CAST(N'1996-11-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10367, N'VAFFE', CAST(N'1996-11-28T00:00:00.000' AS DateTime), N'Smagsloget 45', 4, 1, CAST(N'1996-11-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10368, N'ERNSH', CAST(N'1996-11-29T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2, 1, CAST(N'1996-11-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10369, N'SPLIR', CAST(N'1996-12-02T00:00:00.000' AS DateTime), N'P.O. Box 555', 0, 1, CAST(N'1996-12-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10370, N'CHOPS', CAST(N'1996-12-03T00:00:00.000' AS DateTime), N'Hauptstr. 31', 0, 1, CAST(N'1996-12-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10371, N'LAMAI', CAST(N'1996-12-03T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 0, 1, CAST(N'1996-12-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10372, N'QUEEN', CAST(N'1996-12-04T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 3, 1, CAST(N'1996-12-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10373, N'HUNGO', CAST(N'1996-12-05T00:00:00.000' AS DateTime), N'8 Johnstown Road', 0, 1, CAST(N'1996-12-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10374, N'WOLZA', CAST(N'1996-12-05T00:00:00.000' AS DateTime), N'ul. Filtrowa 68', 0, 1, CAST(N'1996-12-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10375, N'HUNGC', CAST(N'1996-12-06T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.', 2, 1, CAST(N'1996-12-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10376, N'MEREP', CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 3, 1, CAST(N'1996-12-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10377, N'SEVES', CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 4, 1, CAST(N'1996-12-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10378, N'FOLKO', CAST(N'1996-12-10T00:00:00.000' AS DateTime), N'Åkergatan 24', 1, 1, CAST(N'1996-12-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10379, N'QUEDE', CAST(N'1996-12-11T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 0, 1, CAST(N'1996-12-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10380, N'HUNGO', CAST(N'1996-12-12T00:00:00.000' AS DateTime), N'8 Johnstown Road', 1, 1, CAST(N'1996-12-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10381, N'LILAS', CAST(N'1996-12-12T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 3, 1, CAST(N'1996-12-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10382, N'ERNSH', CAST(N'1996-12-13T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2, 1, CAST(N'1996-12-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10383, N'AROUT', CAST(N'1996-12-16T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 1, 1, CAST(N'1996-12-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10384, N'BERGS', CAST(N'1996-12-16T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 0, 1, CAST(N'1996-12-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10385, N'SPLIR', CAST(N'1996-12-17T00:00:00.000' AS DateTime), N'P.O. Box 555', 0, 1, CAST(N'1996-12-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10386, N'FAMIA', CAST(N'1996-12-18T00:00:00.000' AS DateTime), N'Rua Orós, 92', 1, 1, CAST(N'1996-12-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10387, N'SANTG', CAST(N'1996-12-18T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78', 3, 1, CAST(N'1996-12-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10388, N'SEVES', CAST(N'1996-12-19T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 0, 1, CAST(N'1996-12-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10389, N'BOTTM', CAST(N'1996-12-20T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 0, 1, CAST(N'1996-12-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10390, N'ERNSH', CAST(N'1996-12-23T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3, 1, CAST(N'1996-12-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10391, N'DRACD', CAST(N'1996-12-23T00:00:00.000' AS DateTime), N'Walserweg 21', 1, 1, CAST(N'1996-12-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10392, N'PICCO', CAST(N'1996-12-24T00:00:00.000' AS DateTime), N'Geislweg 14', 2, 1, CAST(N'1996-12-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10393, N'SAVEA', CAST(N'1996-12-25T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 4, 1, CAST(N'1996-12-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10394, N'HUNGC', CAST(N'1996-12-25T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.', 0, 1, CAST(N'1996-12-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10395, N'HILAA', CAST(N'1996-12-26T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 0, 1, CAST(N'1996-12-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10396, N'FRANK', CAST(N'1996-12-27T00:00:00.000' AS DateTime), N'Berliner Platz 43', 2, 1, CAST(N'1996-12-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10397, N'PRINI', CAST(N'1996-12-27T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58', 0, 1, CAST(N'1996-12-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10398, N'SAVEA', CAST(N'1996-12-30T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 0, 1, CAST(N'1996-12-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10399, N'VAFFE', CAST(N'1996-12-31T00:00:00.000' AS DateTime), N'Smagsloget 45', 2, 1, CAST(N'1996-12-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10400, N'EASTC', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'35 King George', 1, 1, CAST(N'1997-01-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10401, N'RATTC', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 4, 1, CAST(N'1997-01-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10402, N'ERNSH', CAST(N'1997-01-02T00:00:00.000' AS DateTime), N'Kirchgasse 6', 0, 1, CAST(N'1997-01-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10403, N'ERNSH', CAST(N'1997-01-03T00:00:00.000' AS DateTime), N'Kirchgasse 6', 1, 1, CAST(N'1997-01-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10404, N'MAGAA', CAST(N'1997-01-03T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 1, 1, CAST(N'1997-01-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10405, N'LINOD', CAST(N'1997-01-06T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 4, 1, CAST(N'1997-01-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10406, N'QUEEN', CAST(N'1997-01-07T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 3, 1, CAST(N'1997-01-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10407, N'OTTIK', CAST(N'1997-01-07T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 4, 1, CAST(N'1997-01-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10408, N'FOLIG', CAST(N'1997-01-08T00:00:00.000' AS DateTime), N'184, chaussée de Tournai', 2, 1, CAST(N'1997-01-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10409, N'OCEAN', CAST(N'1997-01-09T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A', 4, 1, CAST(N'1997-01-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10410, N'BOTTM', CAST(N'1997-01-10T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 4, 1, CAST(N'1997-01-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10411, N'BOTTM', CAST(N'1997-01-10T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 0, 1, CAST(N'1997-01-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10412, N'WARTH', CAST(N'1997-01-13T00:00:00.000' AS DateTime), N'Torikatu 38', 4, 1, CAST(N'1997-01-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10413, N'LAMAI', CAST(N'1997-01-14T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 3, 1, CAST(N'1997-01-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10414, N'FAMIA', CAST(N'1997-01-14T00:00:00.000' AS DateTime), N'Rua Orós, 92', 1, 1, CAST(N'1997-01-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10415, N'HUNGC', CAST(N'1997-01-15T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.', 0, 1, CAST(N'1997-01-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10416, N'WARTH', CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'Torikatu 38', 4, 1, CAST(N'1997-01-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10417, N'SIMOB', CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'Vinbæltet 34', 2, 1, CAST(N'1997-01-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10418, N'QUICK', CAST(N'1997-01-17T00:00:00.000' AS DateTime), N'Taucherstraße 10', 2, 1, CAST(N'1997-01-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10419, N'RICSU', CAST(N'1997-01-20T00:00:00.000' AS DateTime), N'Starenweg 5', 0, 1, CAST(N'1997-01-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10420, N'WELLI', CAST(N'1997-01-21T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 3, 1, CAST(N'1997-01-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10421, N'QUEDE', CAST(N'1997-01-21T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 1, 1, CAST(N'1997-01-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10422, N'FRANS', CAST(N'1997-01-22T00:00:00.000' AS DateTime), N'Via Monte Bianco 34', 2, 1, CAST(N'1997-01-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10423, N'GOURL', CAST(N'1997-01-23T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 4, 1, CAST(N'1997-01-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10424, N'MEREP', CAST(N'1997-01-23T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 4, 1, CAST(N'1997-01-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10425, N'LAMAI', CAST(N'1997-01-24T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 3, 1, CAST(N'1997-01-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10426, N'GALED', CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23', 2, 1, CAST(N'1997-01-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10427, N'PICCO', CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'Geislweg 14', 1, 1, CAST(N'1997-01-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10428, N'REGGC', CAST(N'1997-01-28T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 4, 1, CAST(N'1997-01-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10429, N'HUNGO', CAST(N'1997-01-29T00:00:00.000' AS DateTime), N'8 Johnstown Road', 4, 1, CAST(N'1997-01-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10430, N'ERNSH', CAST(N'1997-01-30T00:00:00.000' AS DateTime), N'Kirchgasse 6', 0, 1, CAST(N'1997-01-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10431, N'BOTTM', CAST(N'1997-01-30T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 3, 1, CAST(N'1997-01-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10432, N'SPLIR', CAST(N'1997-01-31T00:00:00.000' AS DateTime), N'P.O. Box 555', 3, 1, CAST(N'1997-01-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10433, N'PRINI', CAST(N'1997-02-03T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58', 1, 1, CAST(N'1997-02-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10434, N'FOLKO', CAST(N'1997-02-03T00:00:00.000' AS DateTime), N'Åkergatan 24', 3, 1, CAST(N'1997-02-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10435, N'CONSH', CAST(N'1997-02-04T00:00:00.000' AS DateTime), N'Berkeley Gardens 12  Brewery', 4, 1, CAST(N'1997-02-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10436, N'BLONP', CAST(N'1997-02-05T00:00:00.000' AS DateTime), N'24, place Kléber', 0, 1, CAST(N'1997-02-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10437, N'WARTH', CAST(N'1997-02-05T00:00:00.000' AS DateTime), N'Torikatu 38', 4, 1, CAST(N'1997-02-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10438, N'TOMSP', CAST(N'1997-02-06T00:00:00.000' AS DateTime), N'Luisenstr. 48', 0, 1, CAST(N'1997-02-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10439, N'MEREP', CAST(N'1997-02-07T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 4, 1, CAST(N'1997-02-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10440, N'SAVEA', CAST(N'1997-02-10T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 3, 1, CAST(N'1997-02-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10441, N'OLDWO', CAST(N'1997-02-10T00:00:00.000' AS DateTime), N'2743 Bering St.', 1, 1, CAST(N'1997-02-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10442, N'ERNSH', CAST(N'1997-02-11T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2, 1, CAST(N'1997-02-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10443, N'REGGC', CAST(N'1997-02-12T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 3, 1, CAST(N'1997-02-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10444, N'BERGS', CAST(N'1997-02-12T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 3, 1, CAST(N'1997-02-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10445, N'BERGS', CAST(N'1997-02-13T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 0, 1, CAST(N'1997-02-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10446, N'TOMSP', CAST(N'1997-02-14T00:00:00.000' AS DateTime), N'Luisenstr. 48', 1, 1, CAST(N'1997-02-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10447, N'RICAR', CAST(N'1997-02-14T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 2, 1, CAST(N'1997-02-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10448, N'RANCH', CAST(N'1997-02-17T00:00:00.000' AS DateTime), N'Av. del Libertador 900', 3, 1, CAST(N'1997-02-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10449, N'BLONP', CAST(N'1997-02-18T00:00:00.000' AS DateTime), N'24, place Kléber', 1, 1, CAST(N'1997-02-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10450, N'VICTE', CAST(N'1997-02-19T00:00:00.000' AS DateTime), N'2, rue du Commerce', 2, 1, CAST(N'1997-02-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10451, N'QUICK', CAST(N'1997-02-19T00:00:00.000' AS DateTime), N'Taucherstraße 10', 0, 1, CAST(N'1997-02-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10452, N'SAVEA', CAST(N'1997-02-20T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 2, 1, CAST(N'1997-02-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10453, N'AROUT', CAST(N'1997-02-21T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 2, 1, CAST(N'1997-02-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10454, N'LAMAI', CAST(N'1997-02-21T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 4, 1, CAST(N'1997-02-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10455, N'WARTH', CAST(N'1997-02-24T00:00:00.000' AS DateTime), N'Torikatu 38', 2, 1, CAST(N'1997-02-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10456, N'KOENE', CAST(N'1997-02-25T00:00:00.000' AS DateTime), N'Maubelstr. 90', 1, 1, CAST(N'1997-02-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10457, N'KOENE', CAST(N'1997-02-25T00:00:00.000' AS DateTime), N'Maubelstr. 90', 3, 1, CAST(N'1997-02-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10458, N'SUPRD', CAST(N'1997-02-26T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 3, 1, CAST(N'1997-02-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10459, N'VICTE', CAST(N'1997-02-27T00:00:00.000' AS DateTime), N'2, rue du Commerce', 2, 1, CAST(N'1997-02-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10460, N'FOLKO', CAST(N'1997-02-28T00:00:00.000' AS DateTime), N'Åkergatan 24', 3, 1, CAST(N'1997-02-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10461, N'LILAS', CAST(N'1997-02-28T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 1, 1, CAST(N'1997-02-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10462, N'CONSH', CAST(N'1997-03-03T00:00:00.000' AS DateTime), N'Berkeley Gardens 12  Brewery', 0, 1, CAST(N'1997-03-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10463, N'SUPRD', CAST(N'1997-03-04T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 1, 1, CAST(N'1997-03-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10464, N'FURIB', CAST(N'1997-03-04T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 4, 1, CAST(N'1997-03-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10465, N'VAFFE', CAST(N'1997-03-05T00:00:00.000' AS DateTime), N'Smagsloget 45', 0, 1, CAST(N'1997-03-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10466, N'COMMI', CAST(N'1997-03-06T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23', 2, 1, CAST(N'1997-03-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10467, N'MAGAA', CAST(N'1997-03-06T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 0, 1, CAST(N'1997-03-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10468, N'KOENE', CAST(N'1997-03-07T00:00:00.000' AS DateTime), N'Maubelstr. 90', 2, 1, CAST(N'1997-03-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10469, N'WHITC', CAST(N'1997-03-10T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 0, 1, CAST(N'1997-03-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10470, N'BONAP', CAST(N'1997-03-11T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 0, 1, CAST(N'1997-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10471, N'BSBEV', CAST(N'1997-03-11T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 0, 1, CAST(N'1997-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10472, N'SEVES', CAST(N'1997-03-12T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 2, 1, CAST(N'1997-03-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10473, N'ISLAT', CAST(N'1997-03-13T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 0, 1, CAST(N'1997-03-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10474, N'PERIC', CAST(N'1997-03-13T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321', 2, 1, CAST(N'1997-03-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10475, N'SUPRD', CAST(N'1997-03-14T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 2, 1, CAST(N'1997-03-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10476, N'HILAA', CAST(N'1997-03-17T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 1, 1, CAST(N'1997-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10477, N'PRINI', CAST(N'1997-03-17T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58', 0, 1, CAST(N'1997-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10478, N'VICTE', CAST(N'1997-03-18T00:00:00.000' AS DateTime), N'2, rue du Commerce', 2, 1, CAST(N'1997-03-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10479, N'RATTC', CAST(N'1997-03-19T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 2, 1, CAST(N'1997-03-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10480, N'FOLIG', CAST(N'1997-03-20T00:00:00.000' AS DateTime), N'184, chaussée de Tournai', 0, 1, CAST(N'1997-03-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10481, N'RICAR', CAST(N'1997-03-20T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 3, 1, CAST(N'1997-03-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10482, N'LAZYK', CAST(N'1997-03-21T00:00:00.000' AS DateTime), N'12 Orchestra Terrace', 0, 1, CAST(N'1997-03-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10483, N'WHITC', CAST(N'1997-03-24T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 2, 1, CAST(N'1997-03-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10484, N'BSBEV', CAST(N'1997-03-24T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 1, 1, CAST(N'1997-03-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10485, N'LINOD', CAST(N'1997-03-25T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 0, 1, CAST(N'1997-03-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10486, N'HILAA', CAST(N'1997-03-26T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 1, 1, CAST(N'1997-03-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10487, N'QUEEN', CAST(N'1997-03-26T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 0, 1, CAST(N'1997-03-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10488, N'FRANK', CAST(N'1997-03-27T00:00:00.000' AS DateTime), N'Berliner Platz 43', 0, 1, CAST(N'1997-03-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10489, N'PICCO', CAST(N'1997-03-28T00:00:00.000' AS DateTime), N'Geislweg 14', 0, 1, CAST(N'1997-03-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10490, N'HILAA', CAST(N'1997-03-31T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 2, 1, CAST(N'1997-03-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10491, N'FURIB', CAST(N'1997-03-31T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 4, 1, CAST(N'1997-03-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10492, N'BOTTM', CAST(N'1997-04-01T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 3, 1, CAST(N'1997-04-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10493, N'LAMAI', CAST(N'1997-04-02T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 2, 1, CAST(N'1997-04-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10494, N'COMMI', CAST(N'1997-04-02T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23', 3, 1, CAST(N'1997-04-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10495, N'LAUGB', CAST(N'1997-04-03T00:00:00.000' AS DateTime), N'2319 Elm St.', 0, 1, CAST(N'1997-04-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10496, N'TRADH', CAST(N'1997-04-04T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414', 3, 1, CAST(N'1997-04-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10497, N'LEHMS', CAST(N'1997-04-04T00:00:00.000' AS DateTime), N'Magazinweg 7', 1, 1, CAST(N'1997-04-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10498, N'HILAA', CAST(N'1997-04-07T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 2, 1, CAST(N'1997-04-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10499, N'LILAS', CAST(N'1997-04-08T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 2, 1, CAST(N'1997-04-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10500, N'LAMAI', CAST(N'1997-04-09T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 2, 1, CAST(N'1997-04-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10501, N'BLAUS', CAST(N'1997-04-09T00:00:00.000' AS DateTime), N'Forsterstr. 57', 4, 1, CAST(N'1997-04-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10502, N'PERIC', CAST(N'1997-04-10T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321', 3, 1, CAST(N'1997-04-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10503, N'HUNGO', CAST(N'1997-04-11T00:00:00.000' AS DateTime), N'8 Johnstown Road', 1, 1, CAST(N'1997-04-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10504, N'WHITC', CAST(N'1997-04-11T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 4, 1, CAST(N'1997-04-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10505, N'MEREP', CAST(N'1997-04-14T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 1, 1, CAST(N'1997-04-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10506, N'KOENE', CAST(N'1997-04-15T00:00:00.000' AS DateTime), N'Maubelstr. 90', 1, 1, CAST(N'1997-04-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10507, N'ANTON', CAST(N'1997-04-15T00:00:00.000' AS DateTime), N'Mataderos  2312', 2, 1, CAST(N'1997-04-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10508, N'OTTIK', CAST(N'1997-04-16T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 1, 1, CAST(N'1997-04-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10509, N'BLAUS', CAST(N'1997-04-17T00:00:00.000' AS DateTime), N'Forsterstr. 57', 3, 1, CAST(N'1997-04-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10510, N'SAVEA', CAST(N'1997-04-18T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 3, 1, CAST(N'1997-04-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10511, N'BONAP', CAST(N'1997-04-18T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 3, 1, CAST(N'1997-04-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10512, N'FAMIA', CAST(N'1997-04-21T00:00:00.000' AS DateTime), N'Rua Orós, 92', 1, 1, CAST(N'1997-04-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10513, N'WANDK', CAST(N'1997-04-22T00:00:00.000' AS DateTime), N'Adenauerallee 900', 4, 1, CAST(N'1997-04-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10514, N'ERNSH', CAST(N'1997-04-22T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2, 1, CAST(N'1997-04-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10515, N'QUICK', CAST(N'1997-04-23T00:00:00.000' AS DateTime), N'Taucherstraße 10', 1, 1, CAST(N'1997-04-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10516, N'HUNGO', CAST(N'1997-04-24T00:00:00.000' AS DateTime), N'8 Johnstown Road', 1, 1, CAST(N'1997-04-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10517, N'NORTS', CAST(N'1997-04-24T00:00:00.000' AS DateTime), N'South House 300 Queensbridge', 3, 1, CAST(N'1997-04-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10518, N'TORTU', CAST(N'1997-04-25T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 4, 1, CAST(N'1997-04-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10519, N'CHOPS', CAST(N'1997-04-28T00:00:00.000' AS DateTime), N'Hauptstr. 31', 4, 1, CAST(N'1997-04-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10520, N'SANTG', CAST(N'1997-04-29T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78', 0, 1, CAST(N'1997-04-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10521, N'CACTU', CAST(N'1997-04-29T00:00:00.000' AS DateTime), N'Cerrito 333', 0, 1, CAST(N'1997-04-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10522, N'LEHMS', CAST(N'1997-04-30T00:00:00.000' AS DateTime), N'Magazinweg 7', 2, 1, CAST(N'1997-04-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10523, N'SEVES', CAST(N'1997-05-01T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 0, 1, CAST(N'1997-05-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10524, N'BERGS', CAST(N'1997-05-01T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 1, 1, CAST(N'1997-05-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10525, N'BONAP', CAST(N'1997-05-02T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 2, 1, CAST(N'1997-05-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10526, N'WARTH', CAST(N'1997-05-05T00:00:00.000' AS DateTime), N'Torikatu 38', 1, 1, CAST(N'1997-05-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10527, N'QUICK', CAST(N'1997-05-05T00:00:00.000' AS DateTime), N'Taucherstraße 10', 0, 1, CAST(N'1997-05-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10528, N'GREAL', CAST(N'1997-05-06T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 4, 1, CAST(N'1997-05-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10529, N'MAISD', CAST(N'1997-05-07T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532', 0, 1, CAST(N'1997-05-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10530, N'PICCO', CAST(N'1997-05-08T00:00:00.000' AS DateTime), N'Geislweg 14', 4, 1, CAST(N'1997-05-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10531, N'OCEAN', CAST(N'1997-05-08T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A', 0, 1, CAST(N'1997-05-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10532, N'EASTC', CAST(N'1997-05-09T00:00:00.000' AS DateTime), N'35 King George', 0, 1, CAST(N'1997-05-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10533, N'FOLKO', CAST(N'1997-05-12T00:00:00.000' AS DateTime), N'Åkergatan 24', 3, 1, CAST(N'1997-05-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10534, N'LEHMS', CAST(N'1997-05-12T00:00:00.000' AS DateTime), N'Magazinweg 7', 4, 1, CAST(N'1997-05-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10535, N'ANTON', CAST(N'1997-05-13T00:00:00.000' AS DateTime), N'Mataderos  2312', 1, 1, CAST(N'1997-05-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10536, N'LEHMS', CAST(N'1997-05-14T00:00:00.000' AS DateTime), N'Magazinweg 7', 3, 1, CAST(N'1997-05-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10537, N'RICSU', CAST(N'1997-05-14T00:00:00.000' AS DateTime), N'Starenweg 5', 2, 1, CAST(N'1997-05-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10538, N'BSBEV', CAST(N'1997-05-15T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 3, 1, CAST(N'1997-05-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10539, N'BSBEV', CAST(N'1997-05-16T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 0, 1, CAST(N'1997-05-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10540, N'QUICK', CAST(N'1997-05-19T00:00:00.000' AS DateTime), N'Taucherstraße 10', 1, 1, CAST(N'1997-05-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10541, N'HANAR', CAST(N'1997-05-19T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 1, 1, CAST(N'1997-05-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10542, N'KOENE', CAST(N'1997-05-20T00:00:00.000' AS DateTime), N'Maubelstr. 90', 3, 1, CAST(N'1997-05-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10543, N'LILAS', CAST(N'1997-05-21T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 0, 1, CAST(N'1997-05-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10544, N'LONEP', CAST(N'1997-05-21T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 4, 1, CAST(N'1997-05-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10545, N'LAZYK', CAST(N'1997-05-22T00:00:00.000' AS DateTime), N'12 Orchestra Terrace', 0, 1, CAST(N'1997-05-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10546, N'VICTE', CAST(N'1997-05-23T00:00:00.000' AS DateTime), N'2, rue du Commerce', 4, 1, CAST(N'1997-05-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10547, N'SEVES', CAST(N'1997-05-23T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 3, 1, CAST(N'1997-05-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10548, N'TOMSP', CAST(N'1997-05-26T00:00:00.000' AS DateTime), N'Luisenstr. 48', 1, 1, CAST(N'1997-05-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10549, N'QUICK', CAST(N'1997-05-27T00:00:00.000' AS DateTime), N'Taucherstraße 10', 1, 1, CAST(N'1997-05-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10550, N'GODOS', CAST(N'1997-05-28T00:00:00.000' AS DateTime), N'C/ Romero, 33', 1, 1, CAST(N'1997-05-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10551, N'FURIB', CAST(N'1997-05-28T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 2, 1, CAST(N'1997-05-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10552, N'HILAA', CAST(N'1997-05-29T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 0, 1, CAST(N'1997-05-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10553, N'WARTH', CAST(N'1997-05-30T00:00:00.000' AS DateTime), N'Torikatu 38', 4, 1, CAST(N'1997-05-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10554, N'OTTIK', CAST(N'1997-05-30T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 4, 1, CAST(N'1997-05-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10555, N'SAVEA', CAST(N'1997-06-02T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 3, 1, CAST(N'1997-06-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10556, N'SIMOB', CAST(N'1997-06-03T00:00:00.000' AS DateTime), N'Vinbæltet 34', 2, 1, CAST(N'1997-06-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10557, N'LEHMS', CAST(N'1997-06-03T00:00:00.000' AS DateTime), N'Magazinweg 7', 2, 1, CAST(N'1997-06-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10558, N'AROUT', CAST(N'1997-06-04T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 0, 1, CAST(N'1997-06-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10559, N'BLONP', CAST(N'1997-06-05T00:00:00.000' AS DateTime), N'24, place Kléber', 1, 1, CAST(N'1997-06-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10560, N'FRANK', CAST(N'1997-06-06T00:00:00.000' AS DateTime), N'Berliner Platz 43', 1, 1, CAST(N'1997-06-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10561, N'FOLKO', CAST(N'1997-06-06T00:00:00.000' AS DateTime), N'Åkergatan 24', 1, 1, CAST(N'1997-06-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10562, N'REGGC', CAST(N'1997-06-09T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 3, 1, CAST(N'1997-06-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10563, N'RICAR', CAST(N'1997-06-10T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 2, 1, CAST(N'1997-06-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10564, N'RATTC', CAST(N'1997-06-10T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 1, 1, CAST(N'1997-06-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10565, N'MEREP', CAST(N'1997-06-11T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 2, 1, CAST(N'1997-06-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10566, N'BLONP', CAST(N'1997-06-12T00:00:00.000' AS DateTime), N'24, place Kléber', 1, 1, CAST(N'1997-06-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10567, N'HUNGO', CAST(N'1997-06-12T00:00:00.000' AS DateTime), N'8 Johnstown Road', 4, 1, CAST(N'1997-06-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10568, N'GALED', CAST(N'1997-06-13T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23', 2, 1, CAST(N'1997-06-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10569, N'RATTC', CAST(N'1997-06-16T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 1, 1, CAST(N'1997-06-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10570, N'MEREP', CAST(N'1997-06-17T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 1, 1, CAST(N'1997-06-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10571, N'ERNSH', CAST(N'1997-06-17T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3, 1, CAST(N'1997-06-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10572, N'BERGS', CAST(N'1997-06-18T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 0, 1, CAST(N'1997-06-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10573, N'ANTON', CAST(N'1997-06-19T00:00:00.000' AS DateTime), N'Mataderos  2312', 0, 1, CAST(N'1997-06-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10574, N'TRAIH', CAST(N'1997-06-19T00:00:00.000' AS DateTime), N'722 DaVinci Blvd.', 0, 1, CAST(N'1997-06-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10575, N'MORGK', CAST(N'1997-06-20T00:00:00.000' AS DateTime), N'Heerstr. 22', 1, 1, CAST(N'1997-06-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10576, N'TORTU', CAST(N'1997-06-23T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 4, 1, CAST(N'1997-06-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10577, N'TRAIH', CAST(N'1997-06-23T00:00:00.000' AS DateTime), N'722 DaVinci Blvd.', 4, 1, CAST(N'1997-06-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10578, N'BSBEV', CAST(N'1997-06-24T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 4, 1, CAST(N'1997-06-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10579, N'LETSS', CAST(N'1997-06-25T00:00:00.000' AS DateTime), N'87 Polk St. Suite 5', 2, 1, CAST(N'1997-06-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10580, N'OTTIK', CAST(N'1997-06-26T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 3, 1, CAST(N'1997-06-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10581, N'FAMIA', CAST(N'1997-06-26T00:00:00.000' AS DateTime), N'Rua Orós, 92', 2, 1, CAST(N'1997-06-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10582, N'BLAUS', CAST(N'1997-06-27T00:00:00.000' AS DateTime), N'Forsterstr. 57', 1, 1, CAST(N'1997-06-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10583, N'WARTH', CAST(N'1997-06-30T00:00:00.000' AS DateTime), N'Torikatu 38', 2, 1, CAST(N'1997-06-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10584, N'BLONP', CAST(N'1997-06-30T00:00:00.000' AS DateTime), N'24, place Kléber', 1, 1, CAST(N'1997-06-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10585, N'WELLI', CAST(N'1997-07-01T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 1, 1, CAST(N'1997-07-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10586, N'REGGC', CAST(N'1997-07-02T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 2, 1, CAST(N'1997-07-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10587, N'QUEDE', CAST(N'1997-07-02T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 2, 1, CAST(N'1997-07-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10588, N'QUICK', CAST(N'1997-07-03T00:00:00.000' AS DateTime), N'Taucherstraße 10', 1, 1, CAST(N'1997-07-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10589, N'GREAL', CAST(N'1997-07-04T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 2, 1, CAST(N'1997-07-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10590, N'MEREP', CAST(N'1997-07-07T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 1, 1, CAST(N'1997-07-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10591, N'VAFFE', CAST(N'1997-07-07T00:00:00.000' AS DateTime), N'Smagsloget 45', 0, 1, CAST(N'1997-07-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10592, N'LEHMS', CAST(N'1997-07-08T00:00:00.000' AS DateTime), N'Magazinweg 7', 0, 1, CAST(N'1997-07-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10593, N'LEHMS', CAST(N'1997-07-09T00:00:00.000' AS DateTime), N'Magazinweg 7', 0, 1, CAST(N'1997-07-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10594, N'OLDWO', CAST(N'1997-07-09T00:00:00.000' AS DateTime), N'2743 Bering St.', 1, 1, CAST(N'1997-07-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10595, N'ERNSH', CAST(N'1997-07-10T00:00:00.000' AS DateTime), N'Kirchgasse 6', 4, 1, CAST(N'1997-07-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10596, N'WHITC', CAST(N'1997-07-11T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 3, 1, CAST(N'1997-07-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10597, N'PICCO', CAST(N'1997-07-11T00:00:00.000' AS DateTime), N'Geislweg 14', 3, 1, CAST(N'1997-07-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10598, N'RATTC', CAST(N'1997-07-14T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 4, 1, CAST(N'1997-07-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10599, N'BSBEV', CAST(N'1997-07-15T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 1, 1, CAST(N'1997-07-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10600, N'HUNGC', CAST(N'1997-07-16T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.', 2, 1, CAST(N'1997-07-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10601, N'HILAA', CAST(N'1997-07-16T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 3, 1, CAST(N'1997-07-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10602, N'VAFFE', CAST(N'1997-07-17T00:00:00.000' AS DateTime), N'Smagsloget 45', 1, 1, CAST(N'1997-07-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10603, N'SAVEA', CAST(N'1997-07-18T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 1, 1, CAST(N'1997-07-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10604, N'FURIB', CAST(N'1997-07-18T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 2, 1, CAST(N'1997-07-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10605, N'MEREP', CAST(N'1997-07-21T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 2, 1, CAST(N'1997-07-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10606, N'TRADH', CAST(N'1997-07-22T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414', 3, 1, CAST(N'1997-07-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10607, N'SAVEA', CAST(N'1997-07-22T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 3, 1, CAST(N'1997-07-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10608, N'TOMSP', CAST(N'1997-07-23T00:00:00.000' AS DateTime), N'Luisenstr. 48', 2, 1, CAST(N'1997-07-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10609, N'DUMON', CAST(N'1997-07-24T00:00:00.000' AS DateTime), N'67, rue des Cinquante Otages', 1, 1, CAST(N'1997-07-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10610, N'LAMAI', CAST(N'1997-07-25T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 4, 1, CAST(N'1997-07-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10611, N'WOLZA', CAST(N'1997-07-25T00:00:00.000' AS DateTime), N'ul. Filtrowa 68', 4, 1, CAST(N'1997-07-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10612, N'SAVEA', CAST(N'1997-07-28T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 0, 1, CAST(N'1997-07-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10613, N'HILAA', CAST(N'1997-07-29T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 3, 1, CAST(N'1997-07-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10614, N'BLAUS', CAST(N'1997-07-29T00:00:00.000' AS DateTime), N'Forsterstr. 57', 2, 1, CAST(N'1997-07-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10615, N'WILMK', CAST(N'1997-07-30T00:00:00.000' AS DateTime), N'Keskuskatu 45', 3, 1, CAST(N'1997-07-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10616, N'GREAL', CAST(N'1997-07-31T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 2, 1, CAST(N'1997-07-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10617, N'GREAL', CAST(N'1997-07-31T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 2, 1, CAST(N'1997-07-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10618, N'MEREP', CAST(N'1997-08-01T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 3, 1, CAST(N'1997-08-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10619, N'MEREP', CAST(N'1997-08-04T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 4, 1, CAST(N'1997-08-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10620, N'LAUGB', CAST(N'1997-08-05T00:00:00.000' AS DateTime), N'2319 Elm St.', 2, 1, CAST(N'1997-08-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10621, N'ISLAT', CAST(N'1997-08-05T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 4, 1, CAST(N'1997-08-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10622, N'RICAR', CAST(N'1997-08-06T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 1, 1, CAST(N'1997-08-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10623, N'FRANK', CAST(N'1997-08-07T00:00:00.000' AS DateTime), N'Berliner Platz 43', 4, 1, CAST(N'1997-08-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10624, N'THECR', CAST(N'1997-08-07T00:00:00.000' AS DateTime), N'55 Grizzly Peak Rd.', 0, 1, CAST(N'1997-08-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10625, N'ANATR', CAST(N'1997-08-08T00:00:00.000' AS DateTime), N'Avda. de la Constitución 2222', 4, 1, CAST(N'1997-08-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10626, N'BERGS', CAST(N'1997-08-11T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 4, 1, CAST(N'1997-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10627, N'SAVEA', CAST(N'1997-08-11T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 4, 1, CAST(N'1997-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10628, N'BLONP', CAST(N'1997-08-12T00:00:00.000' AS DateTime), N'24, place Kléber', 2, 1, CAST(N'1997-08-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10629, N'GODOS', CAST(N'1997-08-12T00:00:00.000' AS DateTime), N'C/ Romero, 33', 4, 1, CAST(N'1997-08-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10630, N'KOENE', CAST(N'1997-08-13T00:00:00.000' AS DateTime), N'Maubelstr. 90', 4, 1, CAST(N'1997-08-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10631, N'LAMAI', CAST(N'1997-08-14T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 2, 1, CAST(N'1997-08-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10632, N'WANDK', CAST(N'1997-08-14T00:00:00.000' AS DateTime), N'Adenauerallee 900', 0, 1, CAST(N'1997-08-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10633, N'ERNSH', CAST(N'1997-08-15T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3, 1, CAST(N'1997-08-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10634, N'FOLIG', CAST(N'1997-08-15T00:00:00.000' AS DateTime), N'184, chaussée de Tournai', 0, 1, CAST(N'1997-08-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10635, N'MAGAA', CAST(N'1997-08-18T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 3, 1, CAST(N'1997-08-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10636, N'WARTH', CAST(N'1997-08-19T00:00:00.000' AS DateTime), N'Torikatu 38', 0, 1, CAST(N'1997-08-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10637, N'QUEEN', CAST(N'1997-08-19T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 3, 1, CAST(N'1997-08-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10638, N'LINOD', CAST(N'1997-08-20T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 1, 1, CAST(N'1997-08-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10639, N'SANTG', CAST(N'1997-08-20T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78', 1, 1, CAST(N'1997-08-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10640, N'WANDK', CAST(N'1997-08-21T00:00:00.000' AS DateTime), N'Adenauerallee 900', 3, 1, CAST(N'1997-08-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10641, N'HILAA', CAST(N'1997-08-22T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 4, 1, CAST(N'1997-08-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10642, N'SIMOB', CAST(N'1997-08-22T00:00:00.000' AS DateTime), N'Vinbæltet 34', 2, 1, CAST(N'1997-08-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10643, N'ALFKI', CAST(N'1997-08-25T00:00:00.000' AS DateTime), N'Obere Str. 57', 2, 1, CAST(N'1997-08-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10644, N'WELLI', CAST(N'1997-08-25T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 0, 1, CAST(N'1997-08-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10645, N'HANAR', CAST(N'1997-08-26T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 1, 1, CAST(N'1997-08-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10646, N'HUNGO', CAST(N'1997-08-27T00:00:00.000' AS DateTime), N'8 Johnstown Road', 1, 1, CAST(N'1997-08-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10647, N'QUEDE', CAST(N'1997-08-27T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 4, 1, CAST(N'1997-08-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10648, N'RICAR', CAST(N'1997-08-28T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 4, 1, CAST(N'1997-08-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10649, N'MAISD', CAST(N'1997-08-28T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532', 3, 1, CAST(N'1997-08-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10650, N'FAMIA', CAST(N'1997-08-29T00:00:00.000' AS DateTime), N'Rua Orós, 92', 0, 1, CAST(N'1997-08-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10651, N'WANDK', CAST(N'1997-09-01T00:00:00.000' AS DateTime), N'Adenauerallee 900', 3, 1, CAST(N'1997-09-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10652, N'GOURL', CAST(N'1997-09-01T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 3, 1, CAST(N'1997-09-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10653, N'FRANK', CAST(N'1997-09-02T00:00:00.000' AS DateTime), N'Berliner Platz 43', 3, 1, CAST(N'1997-09-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10654, N'BERGS', CAST(N'1997-09-02T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 1, 1, CAST(N'1997-09-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10655, N'REGGC', CAST(N'1997-09-03T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 2, 1, CAST(N'1997-09-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10656, N'GREAL', CAST(N'1997-09-04T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 1, 1, CAST(N'1997-09-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10657, N'SAVEA', CAST(N'1997-09-04T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 4, 1, CAST(N'1997-09-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10658, N'QUICK', CAST(N'1997-09-05T00:00:00.000' AS DateTime), N'Taucherstraße 10', 4, 1, CAST(N'1997-09-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10659, N'QUEEN', CAST(N'1997-09-05T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 0, 1, CAST(N'1997-09-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10660, N'HUNGC', CAST(N'1997-09-08T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.', 2, 1, CAST(N'1997-09-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10661, N'HUNGO', CAST(N'1997-09-09T00:00:00.000' AS DateTime), N'8 Johnstown Road', 0, 1, CAST(N'1997-09-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10662, N'LONEP', CAST(N'1997-09-09T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 3, 1, CAST(N'1997-09-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10663, N'BONAP', CAST(N'1997-09-10T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 1, 1, CAST(N'1997-09-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10664, N'FURIB', CAST(N'1997-09-10T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 3, 1, CAST(N'1997-09-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10665, N'LONEP', CAST(N'1997-09-11T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 0, 1, CAST(N'1997-09-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10666, N'RICSU', CAST(N'1997-09-12T00:00:00.000' AS DateTime), N'Starenweg 5', 2, 1, CAST(N'1997-09-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10667, N'ERNSH', CAST(N'1997-09-12T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2, 1, CAST(N'1997-09-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10668, N'WANDK', CAST(N'1997-09-15T00:00:00.000' AS DateTime), N'Adenauerallee 900', 1, 1, CAST(N'1997-09-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10669, N'SIMOB', CAST(N'1997-09-15T00:00:00.000' AS DateTime), N'Vinbæltet 34', 1, 1, CAST(N'1997-09-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10670, N'FRANK', CAST(N'1997-09-16T00:00:00.000' AS DateTime), N'Berliner Platz 43', 2, 1, CAST(N'1997-09-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10671, N'FRANR', CAST(N'1997-09-17T00:00:00.000' AS DateTime), N'54, rue Royale', 2, 1, CAST(N'1997-09-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10672, N'BERGS', CAST(N'1997-09-17T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 0, 1, CAST(N'1997-09-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10673, N'WILMK', CAST(N'1997-09-18T00:00:00.000' AS DateTime), N'Keskuskatu 45', 1, 1, CAST(N'1997-09-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10674, N'ISLAT', CAST(N'1997-09-18T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 4, 1, CAST(N'1997-09-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10675, N'FRANK', CAST(N'1997-09-19T00:00:00.000' AS DateTime), N'Berliner Platz 43', 2, 1, CAST(N'1997-09-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10676, N'TORTU', CAST(N'1997-09-22T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 4, 1, CAST(N'1997-09-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10677, N'ANTON', CAST(N'1997-09-22T00:00:00.000' AS DateTime), N'Mataderos  2312', 1, 1, CAST(N'1997-09-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10678, N'SAVEA', CAST(N'1997-09-23T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 2, 1, CAST(N'1997-09-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10679, N'BLONP', CAST(N'1997-09-23T00:00:00.000' AS DateTime), N'24, place Kléber', 4, 1, CAST(N'1997-09-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10680, N'OLDWO', CAST(N'1997-09-24T00:00:00.000' AS DateTime), N'2743 Bering St.', 1, 1, CAST(N'1997-09-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10681, N'GREAL', CAST(N'1997-09-25T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 3, 1, CAST(N'1997-09-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10682, N'ANTON', CAST(N'1997-09-25T00:00:00.000' AS DateTime), N'Mataderos  2312', 0, 1, CAST(N'1997-09-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10683, N'DUMON', CAST(N'1997-09-26T00:00:00.000' AS DateTime), N'67, rue des Cinquante Otages', 3, 1, CAST(N'1997-09-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10684, N'OTTIK', CAST(N'1997-09-26T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 0, 1, CAST(N'1997-09-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10685, N'GOURL', CAST(N'1997-09-29T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 2, 1, CAST(N'1997-09-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10686, N'PICCO', CAST(N'1997-09-30T00:00:00.000' AS DateTime), N'Geislweg 14', 0, 1, CAST(N'1997-09-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10687, N'HUNGO', CAST(N'1997-09-30T00:00:00.000' AS DateTime), N'8 Johnstown Road', 3, 1, CAST(N'1997-09-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10688, N'VAFFE', CAST(N'1997-10-01T00:00:00.000' AS DateTime), N'Smagsloget 45', 0, 1, CAST(N'1997-10-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10689, N'BERGS', CAST(N'1997-10-01T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 2, 1, CAST(N'1997-10-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10690, N'HANAR', CAST(N'1997-10-02T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 4, 1, CAST(N'1997-10-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10691, N'QUICK', CAST(N'1997-10-03T00:00:00.000' AS DateTime), N'Taucherstraße 10', 1, 1, CAST(N'1997-10-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10692, N'ALFKI', CAST(N'1997-10-03T00:00:00.000' AS DateTime), N'Obere Str. 57', 4, 1, CAST(N'1997-10-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10693, N'WHITC', CAST(N'1997-10-06T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 4, 1, CAST(N'1997-10-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10694, N'QUICK', CAST(N'1997-10-06T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3, 1, CAST(N'1997-10-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10695, N'WILMK', CAST(N'1997-10-07T00:00:00.000' AS DateTime), N'Keskuskatu 45', 1, 1, CAST(N'1997-10-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10696, N'WHITC', CAST(N'1997-10-08T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 1, 1, CAST(N'1997-10-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10697, N'LINOD', CAST(N'1997-10-08T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 2, 1, CAST(N'1997-10-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10698, N'ERNSH', CAST(N'1997-10-09T00:00:00.000' AS DateTime), N'Kirchgasse 6', 0, 1, CAST(N'1997-10-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10699, N'MORGK', CAST(N'1997-10-09T00:00:00.000' AS DateTime), N'Heerstr. 22', 0, 1, CAST(N'1997-10-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10700, N'SAVEA', CAST(N'1997-10-10T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 3, 1, CAST(N'1997-10-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10701, N'HUNGO', CAST(N'1997-10-13T00:00:00.000' AS DateTime), N'8 Johnstown Road', 1, 1, CAST(N'1997-10-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10702, N'ALFKI', CAST(N'1997-10-13T00:00:00.000' AS DateTime), N'Obere Str. 57', 2, 1, CAST(N'1997-10-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10703, N'FOLKO', CAST(N'1997-10-14T00:00:00.000' AS DateTime), N'Åkergatan 24', 3, 1, CAST(N'1997-10-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10704, N'QUEEN', CAST(N'1997-10-14T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 1, 1, CAST(N'1997-10-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10705, N'HILAA', CAST(N'1997-10-15T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 4, 1, CAST(N'1997-10-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10706, N'OLDWO', CAST(N'1997-10-16T00:00:00.000' AS DateTime), N'2743 Bering St.', 1, 1, CAST(N'1997-10-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10707, N'AROUT', CAST(N'1997-10-16T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 4, 1, CAST(N'1997-10-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10708, N'THEBI', CAST(N'1997-10-17T00:00:00.000' AS DateTime), N'89 Jefferson Way Suite 2', 2, 1, CAST(N'1997-10-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10709, N'GOURL', CAST(N'1997-10-17T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 4, 1, CAST(N'1997-10-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10710, N'FRANS', CAST(N'1997-10-20T00:00:00.000' AS DateTime), N'Via Monte Bianco 34', 0, 1, CAST(N'1997-10-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10711, N'SAVEA', CAST(N'1997-10-21T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 1, 1, CAST(N'1997-10-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10712, N'HUNGO', CAST(N'1997-10-21T00:00:00.000' AS DateTime), N'8 Johnstown Road', 4, 1, CAST(N'1997-10-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10713, N'SAVEA', CAST(N'1997-10-22T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 0, 1, CAST(N'1997-10-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10714, N'SAVEA', CAST(N'1997-10-22T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 0, 1, CAST(N'1997-10-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10715, N'BONAP', CAST(N'1997-10-23T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 1, 1, CAST(N'1997-10-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10716, N'RANCH', CAST(N'1997-10-24T00:00:00.000' AS DateTime), N'Av. del Libertador 900', 0, 1, CAST(N'1997-10-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10717, N'FRANK', CAST(N'1997-10-24T00:00:00.000' AS DateTime), N'Berliner Platz 43', 1, 1, CAST(N'1997-10-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10718, N'KOENE', CAST(N'1997-10-27T00:00:00.000' AS DateTime), N'Maubelstr. 90', 2, 1, CAST(N'1997-10-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10719, N'LETSS', CAST(N'1997-10-27T00:00:00.000' AS DateTime), N'87 Polk St. Suite 5', 4, 1, CAST(N'1997-10-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10720, N'QUEDE', CAST(N'1997-10-28T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 1, 1, CAST(N'1997-10-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10721, N'QUICK', CAST(N'1997-10-29T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3, 1, CAST(N'1997-10-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10722, N'SAVEA', CAST(N'1997-10-29T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 3, 1, CAST(N'1997-10-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10723, N'WHITC', CAST(N'1997-10-30T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 4, 1, CAST(N'1997-10-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10724, N'MEREP', CAST(N'1997-10-30T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 4, 1, CAST(N'1997-10-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10725, N'FAMIA', CAST(N'1997-10-31T00:00:00.000' AS DateTime), N'Rua Orós, 92', 4, 1, CAST(N'1997-10-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10726, N'EASTC', CAST(N'1997-11-03T00:00:00.000' AS DateTime), N'35 King George', 2, 1, CAST(N'1997-11-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10727, N'REGGC', CAST(N'1997-11-03T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 3, 1, CAST(N'1997-11-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10728, N'QUEEN', CAST(N'1997-11-04T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 1, 1, CAST(N'1997-11-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10729, N'LINOD', CAST(N'1997-11-04T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 0, 1, CAST(N'1997-11-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10730, N'BONAP', CAST(N'1997-11-05T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 1, 1, CAST(N'1997-11-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10731, N'CHOPS', CAST(N'1997-11-06T00:00:00.000' AS DateTime), N'Hauptstr. 31', 3, 1, CAST(N'1997-11-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10732, N'BONAP', CAST(N'1997-11-06T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 1, 1, CAST(N'1997-11-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10733, N'BERGS', CAST(N'1997-11-07T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 4, 1, CAST(N'1997-11-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10734, N'GOURL', CAST(N'1997-11-07T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 3, 1, CAST(N'1997-11-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10735, N'LETSS', CAST(N'1997-11-10T00:00:00.000' AS DateTime), N'87 Polk St. Suite 5', 0, 1, CAST(N'1997-11-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10736, N'HUNGO', CAST(N'1997-11-11T00:00:00.000' AS DateTime), N'8 Johnstown Road', 4, 1, CAST(N'1997-11-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10737, N'VINET', CAST(N'1997-11-11T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye', 2, 1, CAST(N'1997-11-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10738, N'SPECD', CAST(N'1997-11-12T00:00:00.000' AS DateTime), N'25, rue Lauriston', 2, 1, CAST(N'1997-11-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10739, N'VINET', CAST(N'1997-11-12T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye', 4, 1, CAST(N'1997-11-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10740, N'WHITC', CAST(N'1997-11-13T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 4, 1, CAST(N'1997-11-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10741, N'AROUT', CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 2, 1, CAST(N'1997-11-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10742, N'BOTTM', CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 1, 1, CAST(N'1997-11-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10743, N'AROUT', CAST(N'1997-11-17T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 4, 1, CAST(N'1997-11-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10744, N'VAFFE', CAST(N'1997-11-17T00:00:00.000' AS DateTime), N'Smagsloget 45', 3, 1, CAST(N'1997-11-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10745, N'QUICK', CAST(N'1997-11-18T00:00:00.000' AS DateTime), N'Taucherstraße 10', 0, 1, CAST(N'1997-11-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10746, N'CHOPS', CAST(N'1997-11-19T00:00:00.000' AS DateTime), N'Hauptstr. 31', 1, 1, CAST(N'1997-11-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10747, N'PICCO', CAST(N'1997-11-19T00:00:00.000' AS DateTime), N'Geislweg 14', 0, 1, CAST(N'1997-11-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10748, N'SAVEA', CAST(N'1997-11-20T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 3, 1, CAST(N'1997-11-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10749, N'ISLAT', CAST(N'1997-11-20T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 4, 1, CAST(N'1997-11-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10750, N'WARTH', CAST(N'1997-11-21T00:00:00.000' AS DateTime), N'Torikatu 38', 2, 1, CAST(N'1997-11-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10751, N'RICSU', CAST(N'1997-11-24T00:00:00.000' AS DateTime), N'Starenweg 5', 4, 1, CAST(N'1997-11-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10752, N'NORTS', CAST(N'1997-11-24T00:00:00.000' AS DateTime), N'South House 300 Queensbridge', 4, 1, CAST(N'1997-11-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10753, N'FRANS', CAST(N'1997-11-25T00:00:00.000' AS DateTime), N'Via Monte Bianco 34', 1, 1, CAST(N'1997-11-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10754, N'MAGAA', CAST(N'1997-11-25T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 3, 1, CAST(N'1997-11-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10755, N'BONAP', CAST(N'1997-11-26T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 0, 1, CAST(N'1997-11-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10756, N'SPLIR', CAST(N'1997-11-27T00:00:00.000' AS DateTime), N'P.O. Box 555', 0, 1, CAST(N'1997-11-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10757, N'SAVEA', CAST(N'1997-11-27T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 0, 1, CAST(N'1997-11-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10758, N'RICSU', CAST(N'1997-11-28T00:00:00.000' AS DateTime), N'Starenweg 5', 4, 1, CAST(N'1997-11-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10759, N'ANATR', CAST(N'1997-11-28T00:00:00.000' AS DateTime), N'Avda. de la Constitución 2222', 2, 1, CAST(N'1997-11-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10760, N'MAISD', CAST(N'1997-12-01T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532', 1, 1, CAST(N'1997-12-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10761, N'RATTC', CAST(N'1997-12-02T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 3, 1, CAST(N'1997-12-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10762, N'FOLKO', CAST(N'1997-12-02T00:00:00.000' AS DateTime), N'Åkergatan 24', 0, 1, CAST(N'1997-12-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10763, N'FOLIG', CAST(N'1997-12-03T00:00:00.000' AS DateTime), N'184, chaussée de Tournai', 0, 1, CAST(N'1997-12-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10764, N'ERNSH', CAST(N'1997-12-03T00:00:00.000' AS DateTime), N'Kirchgasse 6', 0, 1, CAST(N'1997-12-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10765, N'QUICK', CAST(N'1997-12-04T00:00:00.000' AS DateTime), N'Taucherstraße 10', 1, 1, CAST(N'1997-12-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10766, N'OTTIK', CAST(N'1997-12-05T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 2, 1, CAST(N'1997-12-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10767, N'SUPRD', CAST(N'1997-12-05T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 3, 1, CAST(N'1997-12-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10768, N'AROUT', CAST(N'1997-12-08T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 1, 1, CAST(N'1997-12-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10769, N'VAFFE', CAST(N'1997-12-08T00:00:00.000' AS DateTime), N'Smagsloget 45', 1, 1, CAST(N'1997-12-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10770, N'HANAR', CAST(N'1997-12-09T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 1, 1, CAST(N'1997-12-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10771, N'ERNSH', CAST(N'1997-12-10T00:00:00.000' AS DateTime), N'Kirchgasse 6', 1, 1, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10772, N'LEHMS', CAST(N'1997-12-10T00:00:00.000' AS DateTime), N'Magazinweg 7', 3, 1, CAST(N'1997-12-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10773, N'ERNSH', CAST(N'1997-12-11T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3, 1, CAST(N'1997-12-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10774, N'FOLKO', CAST(N'1997-12-11T00:00:00.000' AS DateTime), N'Åkergatan 24', 4, 1, CAST(N'1997-12-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10775, N'THECR', CAST(N'1997-12-12T00:00:00.000' AS DateTime), N'55 Grizzly Peak Rd.', 1, 1, CAST(N'1997-12-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10776, N'ERNSH', CAST(N'1997-12-15T00:00:00.000' AS DateTime), N'Kirchgasse 6', 4, 1, CAST(N'1997-12-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10777, N'GOURL', CAST(N'1997-12-15T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 2, 1, CAST(N'1997-12-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10778, N'BERGS', CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 3, 1, CAST(N'1997-12-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10779, N'MORGK', CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'Heerstr. 22', 2, 1, CAST(N'1997-12-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10780, N'LILAS', CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 3, 1, CAST(N'1997-12-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10781, N'WARTH', CAST(N'1997-12-17T00:00:00.000' AS DateTime), N'Torikatu 38', 4, 1, CAST(N'1997-12-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10782, N'CACTU', CAST(N'1997-12-17T00:00:00.000' AS DateTime), N'Cerrito 333', 1, 1, CAST(N'1997-12-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10783, N'HANAR', CAST(N'1997-12-18T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 2, 1, CAST(N'1997-12-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10784, N'MAGAA', CAST(N'1997-12-18T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 4, 1, CAST(N'1997-12-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10785, N'GROSR', CAST(N'1997-12-18T00:00:00.000' AS DateTime), N'5ª Ave. Los Palos Grandes', 2, 1, CAST(N'1997-12-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10786, N'QUEEN', CAST(N'1997-12-19T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 2, 1, CAST(N'1997-12-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10787, N'LAMAI', CAST(N'1997-12-19T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 3, 1, CAST(N'1997-12-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10788, N'QUICK', CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3, 1, CAST(N'1997-12-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10789, N'FOLIG', CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'184, chaussée de Tournai', 0, 1, CAST(N'1997-12-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10790, N'GOURL', CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 3, 1, CAST(N'1997-12-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10791, N'FRANK', CAST(N'1997-12-23T00:00:00.000' AS DateTime), N'Berliner Platz 43', 3, 1, CAST(N'1997-12-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10792, N'WOLZA', CAST(N'1997-12-23T00:00:00.000' AS DateTime), N'ul. Filtrowa 68', 3, 1, CAST(N'1997-12-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10793, N'AROUT', CAST(N'1997-12-24T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 3, 1, CAST(N'1997-12-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10794, N'QUEDE', CAST(N'1997-12-24T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 4, 1, CAST(N'1997-12-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10795, N'ERNSH', CAST(N'1997-12-24T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2, 1, CAST(N'1997-12-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10796, N'HILAA', CAST(N'1997-12-25T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 2, 1, CAST(N'1997-12-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10797, N'DRACD', CAST(N'1997-12-25T00:00:00.000' AS DateTime), N'Walserweg 21', 2, 1, CAST(N'1997-12-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10798, N'ISLAT', CAST(N'1997-12-26T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 3, 1, CAST(N'1997-12-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10799, N'KOENE', CAST(N'1997-12-26T00:00:00.000' AS DateTime), N'Maubelstr. 90', 3, 1, CAST(N'1997-12-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10800, N'SEVES', CAST(N'1997-12-26T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 4, 1, CAST(N'1997-12-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10801, N'BOLID', CAST(N'1997-12-29T00:00:00.000' AS DateTime), N'C/ Araquil, 67', 3, 1, CAST(N'1997-12-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10802, N'SIMOB', CAST(N'1997-12-29T00:00:00.000' AS DateTime), N'Vinbæltet 34', 3, 1, CAST(N'1997-12-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10803, N'WELLI', CAST(N'1997-12-30T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 0, 1, CAST(N'1997-12-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10804, N'SEVES', CAST(N'1997-12-30T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 4, 1, CAST(N'1997-12-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10805, N'THEBI', CAST(N'1997-12-30T00:00:00.000' AS DateTime), N'89 Jefferson Way Suite 2', 3, 1, CAST(N'1997-12-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10806, N'VICTE', CAST(N'1997-12-31T00:00:00.000' AS DateTime), N'2, rue du Commerce', 1, 1, CAST(N'1997-12-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10807, N'FRANS', CAST(N'1997-12-31T00:00:00.000' AS DateTime), N'Via Monte Bianco 34', 3, 1, CAST(N'1997-12-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10808, N'OLDWO', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'2743 Bering St.', 3, 1, CAST(N'1998-01-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10809, N'WELLI', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 3, 1, CAST(N'1998-01-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10810, N'LAUGB', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'2319 Elm St.', 3, 1, CAST(N'1998-01-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10811, N'LINOD', CAST(N'1998-01-02T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 3, 1, CAST(N'1998-01-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10812, N'REGGC', CAST(N'1998-01-02T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 2, 1, CAST(N'1998-01-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10813, N'RICAR', CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 2, 1, CAST(N'1998-01-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10814, N'VICTE', CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'2, rue du Commerce', 3, 1, CAST(N'1998-01-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10815, N'SAVEA', CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 1, 1, CAST(N'1998-01-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10816, N'GREAL', CAST(N'1998-01-06T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 2, 1, CAST(N'1998-01-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10817, N'KOENE', CAST(N'1998-01-06T00:00:00.000' AS DateTime), N'Maubelstr. 90', 0, 1, CAST(N'1998-01-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10818, N'MAGAA', CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 1, 1, CAST(N'1998-01-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10819, N'CACTU', CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'Cerrito 333', 4, 1, CAST(N'1998-01-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10820, N'RATTC', CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 4, 1, CAST(N'1998-01-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10821, N'SPLIR', CAST(N'1998-01-08T00:00:00.000' AS DateTime), N'P.O. Box 555', 1, 1, CAST(N'1998-01-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10822, N'TRAIH', CAST(N'1998-01-08T00:00:00.000' AS DateTime), N'722 DaVinci Blvd.', 3, 1, CAST(N'1998-01-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10823, N'LILAS', CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 1, 1, CAST(N'1998-01-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10824, N'FOLKO', CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'Åkergatan 24', 1, 1, CAST(N'1998-01-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10825, N'DRACD', CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'Walserweg 21', 0, 1, CAST(N'1998-01-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10826, N'BLONP', CAST(N'1998-01-12T00:00:00.000' AS DateTime), N'24, place Kléber', 0, 1, CAST(N'1998-01-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10827, N'BONAP', CAST(N'1998-01-12T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 1, 1, CAST(N'1998-01-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10828, N'RANCH', CAST(N'1998-01-13T00:00:00.000' AS DateTime), N'Av. del Libertador 900', 1, 1, CAST(N'1998-01-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10829, N'ISLAT', CAST(N'1998-01-13T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 1, 1, CAST(N'1998-01-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10830, N'TRADH', CAST(N'1998-01-13T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414', 3, 1, CAST(N'1998-01-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10831, N'SANTG', CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78', 2, 1, CAST(N'1998-01-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10832, N'LAMAI', CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 0, 1, CAST(N'1998-01-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10833, N'OTTIK', CAST(N'1998-01-15T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 1, 1, CAST(N'1998-01-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10834, N'TRADH', CAST(N'1998-01-15T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414', 2, 1, CAST(N'1998-01-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10835, N'ALFKI', CAST(N'1998-01-15T00:00:00.000' AS DateTime), N'Obere Str. 57', 1, 1, CAST(N'1998-01-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10836, N'ERNSH', CAST(N'1998-01-16T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3, 1, CAST(N'1998-01-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10837, N'BERGS', CAST(N'1998-01-16T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 2, 1, CAST(N'1998-01-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10838, N'LINOD', CAST(N'1998-01-19T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 0, 1, CAST(N'1998-01-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10839, N'TRADH', CAST(N'1998-01-19T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414', 3, 1, CAST(N'1998-01-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10840, N'LINOD', CAST(N'1998-01-19T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 1, 1, CAST(N'1998-01-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10841, N'SUPRD', CAST(N'1998-01-20T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 4, 1, CAST(N'1998-01-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10842, N'TORTU', CAST(N'1998-01-20T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 1, 1, CAST(N'1998-01-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10843, N'VICTE', CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'2, rue du Commerce', 2, 1, CAST(N'1998-01-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10844, N'PICCO', CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'Geislweg 14', 1, 1, CAST(N'1998-01-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10845, N'QUICK', CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3, 1, CAST(N'1998-01-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10846, N'SUPRD', CAST(N'1998-01-22T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 4, 1, CAST(N'1998-01-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10847, N'SAVEA', CAST(N'1998-01-22T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 2, 1, CAST(N'1998-01-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10848, N'CONSH', CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'Berkeley Gardens 12  Brewery', 0, 1, CAST(N'1998-01-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10849, N'KOENE', CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'Maubelstr. 90', 2, 1, CAST(N'1998-01-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10850, N'VICTE', CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'2, rue du Commerce', 4, 1, CAST(N'1998-01-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10851, N'RICAR', CAST(N'1998-01-26T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 0, 1, CAST(N'1998-01-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10852, N'RATTC', CAST(N'1998-01-26T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 4, 1, CAST(N'1998-01-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10853, N'BLAUS', CAST(N'1998-01-27T00:00:00.000' AS DateTime), N'Forsterstr. 57', 1, 1, CAST(N'1998-01-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10854, N'ERNSH', CAST(N'1998-01-27T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3, 1, CAST(N'1998-01-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10855, N'OLDWO', CAST(N'1998-01-27T00:00:00.000' AS DateTime), N'2743 Bering St.', 2, 1, CAST(N'1998-01-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10856, N'ANTON', CAST(N'1998-01-28T00:00:00.000' AS DateTime), N'Mataderos  2312', 1, 1, CAST(N'1998-01-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10857, N'BERGS', CAST(N'1998-01-28T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 4, 1, CAST(N'1998-01-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10858, N'LACOR', CAST(N'1998-01-29T00:00:00.000' AS DateTime), N'67, avenue de l''Europe', 2, 1, CAST(N'1998-01-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10859, N'FRANK', CAST(N'1998-01-29T00:00:00.000' AS DateTime), N'Berliner Platz 43', 4, 1, CAST(N'1998-01-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10860, N'FRANR', CAST(N'1998-01-29T00:00:00.000' AS DateTime), N'54, rue Royale', 3, 1, CAST(N'1998-01-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10861, N'WHITC', CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 3, 1, CAST(N'1998-01-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10862, N'LEHMS', CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'Magazinweg 7', 3, 1, CAST(N'1998-01-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10863, N'HILAA', CAST(N'1998-02-02T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 4, 1, CAST(N'1998-02-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10864, N'AROUT', CAST(N'1998-02-02T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 3, 1, CAST(N'1998-02-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10865, N'QUICK', CAST(N'1998-02-02T00:00:00.000' AS DateTime), N'Taucherstraße 10', 4, 1, CAST(N'1998-02-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10866, N'BERGS', CAST(N'1998-02-03T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 4, 1, CAST(N'1998-02-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10867, N'LONEP', CAST(N'1998-02-03T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 4, 1, CAST(N'1998-02-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10868, N'QUEEN', CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 1, 1, CAST(N'1998-02-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10869, N'SEVES', CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 2, 1, CAST(N'1998-02-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10870, N'WOLZA', CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'ul. Filtrowa 68', 0, 1, CAST(N'1998-02-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10871, N'BONAP', CAST(N'1998-02-05T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 4, 1, CAST(N'1998-02-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10872, N'GODOS', CAST(N'1998-02-05T00:00:00.000' AS DateTime), N'C/ Romero, 33', 1, 1, CAST(N'1998-02-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10873, N'WILMK', CAST(N'1998-02-06T00:00:00.000' AS DateTime), N'Keskuskatu 45', 3, 1, CAST(N'1998-02-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10874, N'GODOS', CAST(N'1998-02-06T00:00:00.000' AS DateTime), N'C/ Romero, 33', 0, 1, CAST(N'1998-02-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10875, N'BERGS', CAST(N'1998-02-06T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 2, 1, CAST(N'1998-02-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10876, N'BONAP', CAST(N'1998-02-09T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 1, 1, CAST(N'1998-02-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10877, N'RICAR', CAST(N'1998-02-09T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 2, 1, CAST(N'1998-02-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10878, N'QUICK', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'Taucherstraße 10', 0, 1, CAST(N'1998-02-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10879, N'WILMK', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'Keskuskatu 45', 1, 1, CAST(N'1998-02-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10880, N'FOLKO', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'Åkergatan 24', 1, 1, CAST(N'1998-02-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10881, N'CACTU', CAST(N'1998-02-11T00:00:00.000' AS DateTime), N'Cerrito 333', 3, 1, CAST(N'1998-02-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10882, N'SAVEA', CAST(N'1998-02-11T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 4, 1, CAST(N'1998-02-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10883, N'LONEP', CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 4, 1, CAST(N'1998-02-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10884, N'LETSS', CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'87 Polk St. Suite 5', 1, 1, CAST(N'1998-02-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10885, N'SUPRD', CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 0, 1, CAST(N'1998-02-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10886, N'HANAR', CAST(N'1998-02-13T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 1, 1, CAST(N'1998-02-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10887, N'GALED', CAST(N'1998-02-13T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23', 0, 1, CAST(N'1998-02-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10888, N'GODOS', CAST(N'1998-02-16T00:00:00.000' AS DateTime), N'C/ Romero, 33', 2, 1, CAST(N'1998-02-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10889, N'RATTC', CAST(N'1998-02-16T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 3, 1, CAST(N'1998-02-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10890, N'DUMON', CAST(N'1998-02-16T00:00:00.000' AS DateTime), N'67, rue des Cinquante Otages', 4, 1, CAST(N'1998-02-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10891, N'LEHMS', CAST(N'1998-02-17T00:00:00.000' AS DateTime), N'Magazinweg 7', 0, 1, CAST(N'1998-02-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10892, N'MAISD', CAST(N'1998-02-17T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532', 2, 1, CAST(N'1998-02-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10893, N'KOENE', CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'Maubelstr. 90', 0, 1, CAST(N'1998-02-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10894, N'SAVEA', CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 4, 1, CAST(N'1998-02-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10895, N'ERNSH', CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'Kirchgasse 6', 1, 1, CAST(N'1998-02-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10896, N'MAISD', CAST(N'1998-02-19T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532', 2, 1, CAST(N'1998-02-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10897, N'HUNGO', CAST(N'1998-02-19T00:00:00.000' AS DateTime), N'8 Johnstown Road', 2, 1, CAST(N'1998-02-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10898, N'OCEAN', CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A', 0, 1, CAST(N'1998-02-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10899, N'LILAS', CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 1, 1, CAST(N'1998-02-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10900, N'WELLI', CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 4, 1, CAST(N'1998-02-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10901, N'HILAA', CAST(N'1998-02-23T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 4, 1, CAST(N'1998-02-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10902, N'FOLKO', CAST(N'1998-02-23T00:00:00.000' AS DateTime), N'Åkergatan 24', 1, 1, CAST(N'1998-02-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10903, N'HANAR', CAST(N'1998-02-24T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 0, 1, CAST(N'1998-02-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10904, N'WHITC', CAST(N'1998-02-24T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 3, 1, CAST(N'1998-02-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10905, N'WELLI', CAST(N'1998-02-24T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 1, 1, CAST(N'1998-02-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10906, N'WOLZA', CAST(N'1998-02-25T00:00:00.000' AS DateTime), N'ul. Filtrowa 68', 2, 1, CAST(N'1998-02-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10907, N'SPECD', CAST(N'1998-02-25T00:00:00.000' AS DateTime), N'25, rue Lauriston', 2, 1, CAST(N'1998-02-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10908, N'REGGC', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 1, 1, CAST(N'1998-02-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10909, N'SANTG', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78', 2, 1, CAST(N'1998-02-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10910, N'WILMK', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'Keskuskatu 45', 0, 1, CAST(N'1998-02-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10911, N'GODOS', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'C/ Romero, 33', 1, 1, CAST(N'1998-02-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10912, N'HUNGO', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'8 Johnstown Road', 4, 1, CAST(N'1998-02-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10913, N'QUEEN', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 2, 1, CAST(N'1998-02-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10914, N'QUEEN', CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 3, 1, CAST(N'1998-02-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10915, N'TORTU', CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 2, 1, CAST(N'1998-02-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10916, N'RANCH', CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'Av. del Libertador 900', 4, 1, CAST(N'1998-02-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10917, N'ROMEY', CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'Gran Vía, 1', 2, 1, CAST(N'1998-03-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10918, N'BOTTM', CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 1, 1, CAST(N'1998-03-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10919, N'LINOD', CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 4, 1, CAST(N'1998-03-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10920, N'AROUT', CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 4, 1, CAST(N'1998-03-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10921, N'VAFFE', CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'Smagsloget 45', 3, 1, CAST(N'1998-03-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10922, N'HANAR', CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 4, 1, CAST(N'1998-03-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10923, N'LAMAI', CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 4, 1, CAST(N'1998-03-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10924, N'BERGS', CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 0, 1, CAST(N'1998-03-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10925, N'HANAR', CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 2, 1, CAST(N'1998-03-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10926, N'ANATR', CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'Avda. de la Constitución 2222', 0, 1, CAST(N'1998-03-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10927, N'LACOR', CAST(N'1998-03-05T00:00:00.000' AS DateTime), N'67, avenue de l''Europe', 0, 1, CAST(N'1998-03-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10928, N'GALED', CAST(N'1998-03-05T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23', 1, 1, CAST(N'1998-03-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10929, N'FRANK', CAST(N'1998-03-05T00:00:00.000' AS DateTime), N'Berliner Platz 43', 3, 1, CAST(N'1998-03-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10930, N'SUPRD', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 3, 1, CAST(N'1998-03-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10931, N'RICSU', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'Starenweg 5', 0, 1, CAST(N'1998-03-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10932, N'BONAP', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 4, 1, CAST(N'1998-03-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10933, N'ISLAT', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 3, 1, CAST(N'1998-03-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10934, N'LEHMS', CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'Magazinweg 7', 1, 1, CAST(N'1998-03-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10935, N'WELLI', CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 4, 1, CAST(N'1998-03-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10936, N'GREAL', CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 0, 1, CAST(N'1998-03-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10937, N'CACTU', CAST(N'1998-03-10T00:00:00.000' AS DateTime), N'Cerrito 333', 0, 1, CAST(N'1998-03-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10938, N'QUICK', CAST(N'1998-03-10T00:00:00.000' AS DateTime), N'Taucherstraße 10', 0, 1, CAST(N'1998-03-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10939, N'MAGAA', CAST(N'1998-03-10T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 3, 1, CAST(N'1998-03-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10940, N'BONAP', CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 4, 1, CAST(N'1998-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10941, N'SAVEA', CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 0, 1, CAST(N'1998-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10942, N'REGGC', CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 3, 1, CAST(N'1998-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10943, N'BSBEV', CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 1, 1, CAST(N'1998-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10944, N'BOTTM', CAST(N'1998-03-12T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 3, 1, CAST(N'1998-03-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10945, N'MORGK', CAST(N'1998-03-12T00:00:00.000' AS DateTime), N'Heerstr. 22', 0, 1, CAST(N'1998-03-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10946, N'VAFFE', CAST(N'1998-03-12T00:00:00.000' AS DateTime), N'Smagsloget 45', 1, 1, CAST(N'1998-03-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10947, N'BSBEV', CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 4, 1, CAST(N'1998-03-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10948, N'GODOS', CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'C/ Romero, 33', 1, 1, CAST(N'1998-03-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10949, N'BOTTM', CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 1, 1, CAST(N'1998-03-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10950, N'MAGAA', CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 1, 1, CAST(N'1998-03-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10951, N'RICSU', CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'Starenweg 5', 4, 1, CAST(N'1998-03-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10952, N'ALFKI', CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'Obere Str. 57', 2, 1, CAST(N'1998-03-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10953, N'AROUT', CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 1, 1, CAST(N'1998-03-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10954, N'LINOD', CAST(N'1998-03-17T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 0, 1, CAST(N'1998-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10955, N'FOLKO', CAST(N'1998-03-17T00:00:00.000' AS DateTime), N'Åkergatan 24', 4, 1, CAST(N'1998-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10956, N'BLAUS', CAST(N'1998-03-17T00:00:00.000' AS DateTime), N'Forsterstr. 57', 4, 1, CAST(N'1998-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10957, N'HILAA', CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 2, 1, CAST(N'1998-03-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10958, N'OCEAN', CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A', 1, 1, CAST(N'1998-03-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10959, N'GOURL', CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 1, 1, CAST(N'1998-03-18' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10960, N'HILAA', CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 3, 1, CAST(N'1998-03-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10961, N'QUEEN', CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 1, 1, CAST(N'1998-03-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10962, N'QUICK', CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3, 1, CAST(N'1998-03-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10963, N'FURIB', CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 3, 1, CAST(N'1998-03-19' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10964, N'SPECD', CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'25, rue Lauriston', 4, 1, CAST(N'1998-03-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10965, N'OLDWO', CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'2743 Bering St.', 1, 1, CAST(N'1998-03-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10966, N'CHOPS', CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'Hauptstr. 31', 1, 1, CAST(N'1998-03-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10967, N'TOMSP', CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'Luisenstr. 48', 0, 1, CAST(N'1998-03-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10968, N'ERNSH', CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'Kirchgasse 6', 1, 1, CAST(N'1998-03-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10969, N'COMMI', CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23', 2, 1, CAST(N'1998-03-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10970, N'BOLID', CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'C/ Araquil, 67', 1, 1, CAST(N'1998-03-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10971, N'FRANR', CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'54, rue Royale', 2, 1, CAST(N'1998-03-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10972, N'LACOR', CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'67, avenue de l''Europe', 3, 1, CAST(N'1998-03-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10973, N'LACOR', CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'67, avenue de l''Europe', 4, 1, CAST(N'1998-03-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10974, N'SPLIR', CAST(N'1998-03-25T00:00:00.000' AS DateTime), N'P.O. Box 555', 2, 1, CAST(N'1998-03-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10975, N'BOTTM', CAST(N'1998-03-25T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 2, 1, CAST(N'1998-03-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10976, N'HILAA', CAST(N'1998-03-25T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 1, 1, CAST(N'1998-03-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10977, N'FOLKO', CAST(N'1998-03-26T00:00:00.000' AS DateTime), N'Åkergatan 24', 2, 1, CAST(N'1998-03-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10978, N'MAISD', CAST(N'1998-03-26T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532', 2, 1, CAST(N'1998-03-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10979, N'ERNSH', CAST(N'1998-03-26T00:00:00.000' AS DateTime), N'Kirchgasse 6', 1, 1, CAST(N'1998-03-26' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10980, N'FOLKO', CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'Åkergatan 24', 3, 1, CAST(N'1998-03-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10981, N'HANAR', CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 1, 1, CAST(N'1998-03-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10982, N'BOTTM', CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 2, 1, CAST(N'1998-03-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10983, N'SAVEA', CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 3, 1, CAST(N'1998-03-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10984, N'SAVEA', CAST(N'1998-03-30T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 4, 1, CAST(N'1998-03-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10985, N'HUNGO', CAST(N'1998-03-30T00:00:00.000' AS DateTime), N'8 Johnstown Road', 1, 1, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10986, N'OCEAN', CAST(N'1998-03-30T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A', 3, 1, CAST(N'1998-03-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10987, N'EASTC', CAST(N'1998-03-31T00:00:00.000' AS DateTime), N'35 King George', 3, 1, CAST(N'1998-03-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10988, N'RATTC', CAST(N'1998-03-31T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 0, 1, CAST(N'1998-03-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10989, N'QUEDE', CAST(N'1998-03-31T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 2, 1, CAST(N'1998-03-31' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10990, N'ERNSH', CAST(N'1998-04-01T00:00:00.000' AS DateTime), N'Kirchgasse 6', 0, 1, CAST(N'1998-04-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10991, N'QUICK', CAST(N'1998-04-01T00:00:00.000' AS DateTime), N'Taucherstraße 10', 1, 1, CAST(N'1998-04-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10992, N'THEBI', CAST(N'1998-04-01T00:00:00.000' AS DateTime), N'89 Jefferson Way Suite 2', 1, 1, CAST(N'1998-04-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10993, N'FOLKO', CAST(N'1998-04-01T00:00:00.000' AS DateTime), N'Åkergatan 24', 3, 1, CAST(N'1998-04-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10994, N'VAFFE', CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'Smagsloget 45', 2, 1, CAST(N'1998-04-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10995, N'PERIC', CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321', 2, 1, CAST(N'1998-04-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10996, N'QUICK', CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'Taucherstraße 10', 4, 1, CAST(N'1998-04-02' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10997, N'LILAS', CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 2, 1, CAST(N'1998-04-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10998, N'WOLZA', CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'ul. Filtrowa 68', 2, 1, CAST(N'1998-04-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (10999, N'OTTIK', CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 0, 1, CAST(N'1998-04-03' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11000, N'RATTC', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 2, 1, CAST(N'1998-04-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11001, N'FOLKO', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'Åkergatan 24', 2, 1, CAST(N'1998-04-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11002, N'SAVEA', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 1, 1, CAST(N'1998-04-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11003, N'THECR', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'55 Grizzly Peak Rd.', 1, 1, CAST(N'1998-04-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11004, N'MAISD', CAST(N'1998-04-07T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532', 1, 1, CAST(N'1998-04-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11005, N'WILMK', CAST(N'1998-04-07T00:00:00.000' AS DateTime), N'Keskuskatu 45', 2, 1, CAST(N'1998-04-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11006, N'GREAL', CAST(N'1998-04-07T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 2, 1, CAST(N'1998-04-07' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11007, N'PRINI', CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58', 3, 1, CAST(N'1998-04-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11008, N'ERNSH', CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'Kirchgasse 6', 1, 1, CAST(N'1998-04-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11009, N'GODOS', CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'C/ Romero, 33', 1, 1, CAST(N'1998-04-08' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11010, N'REGGC', CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 3, 1, CAST(N'1998-04-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11011, N'ALFKI', CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'Obere Str. 57', 3, 1, CAST(N'1998-04-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11012, N'FRANK', CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'Berliner Platz 43', 0, 1, CAST(N'1998-04-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11013, N'ROMEY', CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'Gran Vía, 1', 4, 1, CAST(N'1998-04-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11014, N'LINOD', CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 1, 1, CAST(N'1998-04-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11015, N'SANTG', CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78', 4, 1, CAST(N'1998-04-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11016, N'AROUT', CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 0, 1, CAST(N'1998-04-10' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11017, N'ERNSH', CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'Kirchgasse 6', 0, 1, CAST(N'1998-04-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11018, N'LONEP', CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 1, 1, CAST(N'1998-04-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11019, N'RANCH', CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'Av. del Libertador 900', 1, 1, CAST(N'1998-04-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11020, N'OTTIK', CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 2, 1, CAST(N'1998-04-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11021, N'QUICK', CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'Taucherstraße 10', 1, 1, CAST(N'1998-04-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11022, N'HANAR', CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 3, 1, CAST(N'1998-04-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11023, N'BSBEV', CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 2, 1, CAST(N'1998-04-14' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11024, N'EASTC', CAST(N'1998-04-15T00:00:00.000' AS DateTime), N'35 King George', 2, 1, CAST(N'1998-04-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11025, N'WARTH', CAST(N'1998-04-15T00:00:00.000' AS DateTime), N'Torikatu 38', 2, 1, CAST(N'1998-04-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11026, N'FRANS', CAST(N'1998-04-15T00:00:00.000' AS DateTime), N'Via Monte Bianco 34', 3, 1, CAST(N'1998-04-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11027, N'BOTTM', CAST(N'1998-04-16T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 2, 1, CAST(N'1998-04-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11028, N'KOENE', CAST(N'1998-04-16T00:00:00.000' AS DateTime), N'Maubelstr. 90', 4, 1, CAST(N'1998-04-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11029, N'CHOPS', CAST(N'1998-04-16T00:00:00.000' AS DateTime), N'Hauptstr. 31', 3, 1, CAST(N'1998-04-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11030, N'SAVEA', CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 4, 1, CAST(N'1998-04-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11031, N'SAVEA', CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 0, 1, CAST(N'1998-04-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11032, N'WHITC', CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 2, 1, CAST(N'1998-04-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11033, N'RICSU', CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'Starenweg 5', 0, 1, CAST(N'1998-04-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11034, N'OLDWO', CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'2743 Bering St.', 0, 1, CAST(N'1998-04-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11035, N'SUPRD', CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 4, 1, CAST(N'1998-04-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11036, N'DRACD', CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'Walserweg 21', 3, 1, CAST(N'1998-04-20' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11037, N'GODOS', CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'C/ Romero, 33', 1, 1, CAST(N'1998-04-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11038, N'SUPRD', CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 0, 1, CAST(N'1998-04-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11039, N'LINOD', CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 4, 1, CAST(N'1998-04-21' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11040, N'GREAL', CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 1, 1, CAST(N'1998-04-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11041, N'CHOPS', CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'Hauptstr. 31', 1, 1, CAST(N'1998-04-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11042, N'COMMI', CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23', 0, 1, CAST(N'1998-04-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11043, N'SPECD', CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'25, rue Lauriston', 2, 1, CAST(N'1998-04-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11044, N'WOLZA', CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'ul. Filtrowa 68', 2, 1, CAST(N'1998-04-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11045, N'BOTTM', CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 4, 1, CAST(N'1998-04-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11046, N'WANDK', CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'Adenauerallee 900', 4, 1, CAST(N'1998-04-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11047, N'EASTC', CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'35 King George', 4, 1, CAST(N'1998-04-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11048, N'BOTTM', CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 1, 1, CAST(N'1998-04-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11049, N'GOURL', CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 0, 1, CAST(N'1998-04-24' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11050, N'FOLKO', CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'Åkergatan 24', 2, 1, CAST(N'1998-04-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11051, N'LAMAI', CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 2, 1, CAST(N'1998-04-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11052, N'HANAR', CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 0, 1, CAST(N'1998-04-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11053, N'PICCO', CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'Geislweg 14', 2, 1, CAST(N'1998-04-27' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11054, N'CACTU', CAST(N'1998-04-28T00:00:00.000' AS DateTime), N'Cerrito 333', 2, 1, CAST(N'1998-04-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11055, N'HILAA', CAST(N'1998-04-28T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 3, 1, CAST(N'1998-04-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11056, N'EASTC', CAST(N'1998-04-28T00:00:00.000' AS DateTime), N'35 King George', 1, 1, CAST(N'1998-04-28' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11057, N'NORTS', CAST(N'1998-04-29T00:00:00.000' AS DateTime), N'South House 300 Queensbridge', 4, 1, CAST(N'1998-04-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11058, N'BLAUS', CAST(N'1998-04-29T00:00:00.000' AS DateTime), N'Forsterstr. 57', 2, 1, CAST(N'1998-04-29' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11059, N'RICAR', CAST(N'1998-04-29T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 3, 0, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11060, N'FRANS', CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'Via Monte Bianco 34', 4, 1, CAST(N'1998-04-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11061, N'GREAL', CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'2732 Baker Blvd.', 1, 1, CAST(N'1998-04-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11062, N'REGGC', CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 0, 1, CAST(N'1998-04-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11063, N'HUNGO', CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'8 Johnstown Road', 1, 1, CAST(N'1998-04-30' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11064, N'SAVEA', CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 0, 1, CAST(N'1998-05-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11065, N'LILAS', CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 0, 1, CAST(N'1998-05-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11066, N'WHITC', CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 1, 1, CAST(N'1998-05-01' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11067, N'DRACD', CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'Walserweg 21', 3, 1, CAST(N'1998-05-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11068, N'QUEEN', CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 1, 1, CAST(N'1998-05-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11069, N'TORTU', CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 4, 1, CAST(N'1998-05-04' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11070, N'LEHMS', CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'Magazinweg 7', 2, 1, CAST(N'1998-05-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11071, N'LILAS', CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 4, 1, CAST(N'1998-05-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11072, N'ERNSH', CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'Kirchgasse 6', 1, 1, CAST(N'1998-05-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11073, N'PERIC', CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321', 3, 1, CAST(N'1998-05-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11074, N'SIMOB', CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'Vinbæltet 34', 3, 1, CAST(N'1998-05-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11075, N'RICSU', CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'Starenweg 5', 3, 1, CAST(N'1998-05-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11076, N'BONAP', CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 0, 1, CAST(N'1998-05-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11077, N'RATTC', CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 1, 1, CAST(N'1998-05-06' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11200, N'director', CAST(N'2020-08-25T00:00:00.000' AS DateTime), N'Công cha như núi Thái sơn', 0, 1, CAST(N'2020-08-25' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11205, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:', 1, 1, CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11206, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:', 4, 1, CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11207, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:', 2, 1, CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11208, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:', 0, 1, CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11209, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:', 4, 1, CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11210, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'ORDER PURCHASING', 1, 1, CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11211, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'ORDER PURCHASING', 3, 1, CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11212, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:', 3, 1, CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (11213, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address: 123', 1, 1, CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (21205, N'staff', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'Shipping Address:', 3, 1, CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (21206, N'director', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'Shipping Address:', 2, 1, CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (21207, N'director', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'ORDER PURCHASING', 1, 1, CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (21208, N'director', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'Công cha như núi thái sơn
Nghĩa mẹ như nước trong nguồn chảy ra', 2, 1, CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (21209, N'director', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.', 4, 1, CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (31205, N'staff', CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'Shipping Address:', 3, 1, CAST(N'2021-03-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (31206, N'staff', CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'Mishi Kobe Niku', 4, 1, CAST(N'2021-03-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (31207, N'director', CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'Shipping Address:', 4, 1, CAST(N'2021-03-13' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (41205, N'staff', CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Shipping Address:', 2, 1, CAST(N'2021-03-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (41206, N'staff', CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Shipping Address:', 4, 1, CAST(N'2021-03-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (41208, N'staff', CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Shipping Address:', 2, 1, CAST(N'2021-03-15' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (51205, N'director', CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Shipping Address:', 2, 1, CAST(N'2021-03-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (61205, N'customer', CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Shipping Address:', 2, 1, CAST(N'2021-03-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (71205, N'customer', CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'778/B1 Nguyễn Kiệm, F.4 Q.Tân Phú, HCM', 3, 1, CAST(N'2021-03-16' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (71206, N'director', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.', 0, 1, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (81206, N'customer', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.', 3, 1, CAST(N'2021-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (81207, N'customer', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.', 1, 1, CAST(N'2021-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (81208, N'director', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'Shipping Address', 4, 1, CAST(N'2021-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (81209, N'director', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'Shipping Address:', 0, 1, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (81210, N'staff', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'Shipping Address:', 1, 1, CAST(N'2021-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (81211, N'staff', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.', 1, 1, CAST(N'2021-03-17' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (81212, N'staff', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.', 0, 1, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (91205, N'customer', CAST(N'2021-03-22T00:00:00.000' AS DateTime), N'Shipping Address:', 1, 1, CAST(N'2021-03-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (101205, N'customer', CAST(N'2021-03-22T00:00:00.000' AS DateTime), N'2021 by FPT Polytechnic. All rights reserved.', 4, 1, CAST(N'2021-03-22' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (111205, N'customer', CAST(N'2021-03-23T00:00:00.000' AS DateTime), N'FPT Polytechnic © 2021. All rights reserved.', 0, 1, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (111206, N'customer', CAST(N'2021-03-23T00:00:00.000' AS DateTime), N'FPT Polytechnic © 2021. All rights reserved.', 3, 1, CAST(N'2021-03-23' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (121205, N'staff', CAST(N'2021-04-05T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.', 3, 1, CAST(N'2021-04-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (121206, N'staff', CAST(N'2021-04-05T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.', 1, 1, CAST(N'2021-04-05' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (121218, N'director', CAST(N'2022-08-09T00:00:00.000' AS DateTime), N'abc', 3, 0, CAST(N'2022-08-09' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (121219, N'lucdtps17380@fpt.edu.vn', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'Cu chi', 4, 0, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (121230, N'lucdtps17380@fpt.edu.vn', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'HCM', 0, 0, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (121231, N'lucdtps17380@fpt.edu.vn', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'LA', 0, 0, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (121232, N'lucdtps17380@fpt.edu.vn', CAST(N'2022-08-11T00:00:00.000' AS DateTime), N'Ha Noi', 0, 0, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (121233, N'lucdtps17380@fpt.edu.vn', CAST(N'2022-08-11T00:00:00.000' AS DateTime), N'adwad', 0, 0, CAST(N'2022-08-11' AS Date))
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Status], [read1], [changedate]) VALUES (121234, N'lucdtps17380@fpt.edu.vn', CAST(N'2022-08-11T00:00:00.000' AS DateTime), N'dawd', 0, 0, CAST(N'2022-08-11' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1001, N'Iphone 13 mini 128GB', N'1001.jpg', 15990, CAST(N'1980-03-29' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1002, N'Iphone 13 256GB', N'1002.jpg', 19990, CAST(N'1982-12-18' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1003, N'Samsung Galaxy A14 4G', N'1003.jpg', 4190, CAST(N'1973-06-14' AS Date), 1, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1004, N'Samsung Galaxy A24', N'1004.jpg', 6090, CAST(N'1976-03-10' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1005, N'OPPO A76', N'1005.jpg', 5990, CAST(N'1978-12-06' AS Date), 1, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1006, N'Samsung Galaxy S21 FE 5G', N'1006.jpg', 9990, CAST(N'1981-09-03' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1007, N'Nokia 8210 4G', N'1007.jpg', 1590, CAST(N'1983-03-13' AS Date), 0, N'1006')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1008, N'Samsung Galaxy S23 Ultra 5G', N'1008.jpg', 25990, CAST(N'1972-02-26' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1009, N'Masstel FAMI 12 4G', N'1009.jpg', 620, CAST(N'1985-12-10' AS Date), 0, N'1005')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1010, N'Realme C55', N'1010.jpg', 4790, CAST(N'1994-03-23' AS Date), 0, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1011, N'Vivo Y36', N'1011.jpg', 5990, CAST(N'1985-11-28' AS Date), 0, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1012, N'Vivo Y02T', N'1012.jpg', 3290, CAST(N'1988-08-27' AS Date), 1, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1013, N'Realme C30s', N'1013.jpg', 2390, CAST(N'2002-07-01' AS Date), 0, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1014, N'Nokia 110 4G', N'1014.jpg', 660, CAST(N'2002-06-24' AS Date), 1, N'1006')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1015, N'Samsung Galaxy A34 5g', N'1015.jpg', 7490, CAST(N'1991-05-04' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1016, N'OPPO A77s', N'1016.jpg', 5990, CAST(N'1996-11-09' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1017, N'Masstel FAMI 60 4G', N'1017.jpg', 700, CAST(N'2007-12-15' AS Date), 1, N'1005')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1018, N'Realme 10', N'1018.jpg', 6890, CAST(N'2011-04-13' AS Date), 1, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1019, N'OPPO A78', N'1019.jpg', 6690, CAST(N'2005-02-02' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1020, N'OPPO A96', N'1020.jpg', 6190, CAST(N'2007-11-01' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1021, N'OPPO A98 5G', N'1021.jpg', 8990, CAST(N'2010-07-29' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1022, N'Vivo Y16', N'1022.jpg', 3590, CAST(N'2008-12-01' AS Date), 1, N'1004')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1023, N'Xiaomi 12T 5G 256GB', N'1023.jpg', 11990, CAST(N'2011-08-31' AS Date), 1, N'1004')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1024, N'Iphone 14 Plus', N'1024.jpg', 21790, CAST(N'2008-03-13' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1025, N'OPPO Find X5 Pro 5G', N'1025.jpg', 19990, CAST(N'2011-07-20' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1026, N'OPPO Find N2 Flip 5G', N'1026.jpg', 19990, CAST(N'2009-04-17' AS Date), 1, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1027, N'OPPO Find N2 Flip', N'1027.jpg', 15990, CAST(N'2007-01-14' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1028, N'Nokia 105 4G', N'1028.jpg', 650, CAST(N'2011-01-14' AS Date), 1, N'1006')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1029, N'Masstel IZI 10 4G', N'1029.jpg', 123, CAST(N'2010-12-21' AS Date), 0, N'1005')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1030, N'Realme 11 Pro+ 5G', N'1030.jpg', 25890, CAST(N'2011-05-14' AS Date), 0, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1031, N'Vivo Y22s', N'1031.jpg', 12500, CAST(N'2010-10-30' AS Date), 0, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1032, N'Vivo Y02s', N'1032.jpg', 32000, CAST(N'2011-07-30' AS Date), 0, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1033, N'OPPO Reno6 Pro 5G', N'1033.png', 25000, CAST(N'2010-04-29' AS Date), 0, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1034, N'Iphone 13', N'1034.jpg', 140000, CAST(N'2010-07-30' AS Date), 1, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1035, N'Iphone 14 Plus', N'1035.jpg', 180000, CAST(N'2011-04-25' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1036, N'Realme 11 Pro 5G', N'1036.jpg', 19000, CAST(N'1980-11-28' AS Date), 0, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1037, N'Realme 11', N'1037.jpg', 16000, CAST(N'1983-08-31' AS Date), 0, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1038, N'Iphone 14 Pro Max 1TB', N'1038.jpg', 263000, CAST(N'1981-07-12' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1039, N'Iphone 14 Pro Max', N'1039.jpg', 200000, CAST(N'1984-04-08' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1040, N'Realme 9i (6GB/128GB)', N'1040.jpg', 18000, CAST(N'1976-12-08' AS Date), 0, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1041, N'Realme C53', N'1041.jpg', 96000, CAST(N'1979-09-10' AS Date), 0, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1042, N'Xiaomi 12 5G', N'1042.jpg', 14000, CAST(N'1973-11-21' AS Date), 0, N'1004')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1043, N'Iphone 14 Pro', N'1043.jpg', 460000, CAST(N'1980-03-20' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1044, N'SamSung Galaxy S23+ 5G', N'1044.jpg', 19000, CAST(N'1970-10-25' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1045, N'Realme C33(3GB/32GB)', N'1045.jpg', 11000, CAST(N'1990-09-21' AS Date), 1, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1046, N'Realme C54', N'1046.jpg', 12000, CAST(N'1993-06-23' AS Date), 0, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1047, N'OPPO Reno7 series', N'1047.jpg', 90000, CAST(N'1981-11-25' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1048, N'OPPO Reno8 series', N'1048.jpg', 12000, CAST(N'1984-08-24' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1049, N'OPPO Reno 8T', N'1049.jpg', 20000, CAST(N'1987-05-23' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1050, N'OPPO Rono 8T 5G', N'1050.jpg', 16000, CAST(N'1990-02-17' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1051, N'Nokia 215 4G', N'1051.jpg', 53000, CAST(N'2004-05-22' AS Date), 0, N'1006')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1052, N'Xiaomi 13 series', N'1052.jpg', 70000, CAST(N'2001-05-20' AS Date), 0, N'1004')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1053, N'Masstel IZI 28', N'1053.jpg', 328, CAST(N'2007-01-06' AS Date), 0, N'1005')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1054, N'Masstel Lux 10 4G', N'1054.jpg', 745, CAST(N'2009-10-07' AS Date), 1, N'1005')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1055, N'Masstel Luc 20 4G', N'1055.jpg', 240, CAST(N'2007-07-08' AS Date), 0, N'1005')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1056, N'Xiaomi Redmi 12', N'1056.jpg', 380, CAST(N'2007-05-18' AS Date), 0, N'1004')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1057, N'Xiaomi Redmi 12c', N'1057.jpg', 400, CAST(N'2010-02-16' AS Date), 0, N'1004')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1058, N'Samsung Galaxy Z Fold4 5G', N'1058.jpg', 13250, CAST(N'2011-07-26' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1059, N'Vivo Y02A', N'1059.jpg', 5500, CAST(N'2007-09-22' AS Date), 0, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1060, N'Vivo V25 series', N'1060.jpg', 3400, CAST(N'2010-06-20' AS Date), 0, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1061, N'Samsung Galaxy A04s', N'1061.jpg', 28500, CAST(N'2007-05-29' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1062, N'OPPO Reno 10 5G', N'1062.jpg', 49300, CAST(N'2008-01-21' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1063, N'Samsung Galaxy Z Fold5 5G', N'1063.jpg', 43900, CAST(N'2007-11-21' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1064, N'Xiaomi Redmi Note 12 Pro', N'1064.jpg', 33250, CAST(N'2009-05-15' AS Date), 0, N'1004')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1065, N'Samsung Galaxy Z Flip5 5G', N'1065.jpg', 21050, CAST(N'2008-05-15' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1066, N'Samsung Galaxy s22 Ultra 5G 128GB', N'1066.jpg', 17000, CAST(N'2011-02-10' AS Date), 1, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1067, N'Iphone 14 pro max 128GB', N'1067.jpg', 140000, CAST(N'2010-12-05' AS Date), 1, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1068, N'OPPO Reno6 Pro 5G', N'1068.jpg', 12000, CAST(N'2009-07-08' AS Date), 0, N'1002')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1069, N'Vivo Y55', N'1069.jpg', 3600, CAST(N'2011-03-09' AS Date), 0, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1070, N'Iphone 14 Pro Max 256GB', N'1070.jpg', 150000, CAST(N'2009-02-21' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1071, N'Vivo T1x', N'1071.jpg', 21000, CAST(N'1980-09-04' AS Date), 1, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1072, N'Vivo Y21 series', N'1072.jpg', 34000, CAST(N'1983-06-03' AS Date), 0, N'1003')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1073, N'Realme C30s', N'1073.jpg', 15080, CAST(N'1982-12-03' AS Date), 0, N'1007')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1074, N'Nokia G22', N'1074.jpg', 100, CAST(N'1982-09-27' AS Date), 0, N'1006')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1075, N'Iphone 14 Pro 128GB', N'1075.jpg', 700000, CAST(N'1982-10-31' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1076, N'Iphone 14 Pro Max', N'1076.jpg', 180090, CAST(N'1970-07-28' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1077, N'Samsung A53 5G 128GB', N'1077.gif', 13790, CAST(N'1976-04-04' AS Date), 0, N'1001')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1081, N'Iphone 14 128GB', N'1081.jpg', 190789, CAST(N'1984-04-04' AS Date), 0, N'1000')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1083, N'Masstel Lux 10', N'1083.jpg', 979, CAST(N'1989-07-23' AS Date), 0, N'1005')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'anhntps10770@fpt.edu.vn', N'Nguyễn Tiến Anh', 10, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'chaulnnps10835@fpt.edu.vn', N'Lê Nguyễn Ngọc Châu', 7, 0, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'cuonglcps10817@fpt.edu.vn', N'Lý Chí Cường', 6, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'datnvps10930@fpt.edu.vn', N'Nguyễn Vũ Đạt', 6, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'dobps10723@fpt.edu.vn', N'Bùi Đỏ', 10, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'ducnpps10800@fpt.edu.vn', N'Nguyễn Phúc Đức', 7, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'duytkps10303@fpt.edu.vn', N'Trần Khánh Duy', 6, 1, N'US')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'huyntps10808@fpt.edu.vn', N'Nguyễn Thanh Huy', 4, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'khaihcps10763@fpt.edu.vn', N'Hoàng Cao Khải', 5, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'luudpps10344@fpt.edu.vn', N'Đào Phong Lưu', 8, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'manhbdps09585@fpt.edu.vn', N'Bùi Đức Mạnh', 5, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phatltps10691@fpt.edu.vn', N'Lê Tấn Phát', 9, 1, N'US')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phucpbps10710@fpt.edu.vn', N'Phạm Bá Phúc', 6, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phuongntdps09013@fpt.edu.vn', N'Nguyễn Thị Diễm Phương', 8, 0, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'quangnmps10741@fpt.edu.vn', N'Nguyễn Minh Quang', 6, 1, N'US')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'quangvvtps09851@fpt.edu.vn', N'Võ Văn Thanh Quang', 5, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sangntps10356@fpt.edu.vn', N'Nguyễn Tống Sang', 5, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sonntps10858@fpt.edu.vn', N'Nguyễn Thanh Sơn', 9, 1, N'US')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'suotlvmps10970@fpt.edu.vn', N'Lê Vương Minh Suốt', 7, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thachnhps10818@fpt.edu.vn', N'Nguyễn Hữu Thạch', 8, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thangtvps10394@fpt.edu.vn', N'Trằn Văn Thắng', 9, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'trangntpps10956@fpt.edu.vn', N'Nguyễn Thị Phương Trang', 4, 0, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'trungdvps10716@fpt.edu.vn', N'Đặng Văn Trung', 6, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'tuanncqps10850@fpt.edu.vn', N'Nguyễn Cửu Quang Tuấn', 6, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'tuannnps10819@fpt.edu.vn', N'Nguyễn Ngọc Tuấn', 10, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'vinhptps09842@fpt.edu.vn', N'Phạm Thế Vinh', 10, 1, N'VN')
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_gender]  DEFAULT ((1)) FOR [gender]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Available'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
