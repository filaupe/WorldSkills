USE [master]
--GO
--DROP DATABASE  [bdAbuDhabiTurS05]
GO
/****** Object:  Database [bdAbuDhabiSessao05]    Script Date: 10/03/2016 17:32:32 ******/
CREATE DATABASE [bdAbuDhabiTurS05]
GO
USE [bdAbuDhabiTurS05]
GO
SET LANGUAGE 'English'
GO
/****** Object:  Table [dbo].[Apartamento]    Script Date: 10/03/2016 17:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartamento](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoTipo] [int] NOT NULL,
	[Ativo] [bit] NOT NULL,
	[Leitos] [int] NOT NULL,
	[Andar] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/03/2016 17:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[CPF] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 10/03/2016 17:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compra](
	[COMCODIGO] [int] IDENTITY(1,1) NOT NULL,
	[COMSTATUS] [char](2) NOT NULL,
	[CLICODIGO] [int] NULL,
	[COMVALORBRUTO] [numeric](18, 2) NULL,
	[COMDESCONTOS] [numeric](18, 2) NULL,
	[COMVALORLIQUIDO] [numeric](18, 2) NULL,
	[COMACOMPANHANTES] [varchar](max) NULL,
	[COMTRANSACAOID] [varchar](max) NULL,
	[COMDATA] [datetime] NOT NULL,
	[COMDATAATUALIZACAO] [datetime] NULL,
	[COMSTATUSPAGSEGURO] [varchar](300) NULL,
	[COMFEEDBACKCLIENTE] [varchar](500) NULL,
	[COMVENDIDO] [bit] NULL,
	[COMLANCADA] [bit] NOT NULL,
 CONSTRAINT [PK_Pacote] PRIMARY KEY CLUSTERED 
(
	[COMCODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Consumo]    Script Date: 10/03/2016 17:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumo](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoReserva] [int] NOT NULL,
	[CodigoProduto] [int] NOT NULL,
	[Valor] [numeric](18, 2) NOT NULL,
	[Quantidade] [int] NOT NULL,
	[DataHora] [datetime] NOT NULL,
 CONSTRAINT [PK_Consumo] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produto]    Script Date: 10/03/2016 17:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](250) NULL,
	[Valor] [numeric](18, 2) NULL,
	[Estoque] [numeric](18,2) null default 20 
 CONSTRAINT [PK_PRoduto] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 10/03/2016 17:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCliente] [int] NOT NULL,
	[CodigoApartamento] [int] NOT NULL,
	[Inicio] [date] NOT NULL,
	[Fim] [date] NOT NULL,
	[DataCadastro] [datetime] NOT NULL,
	[Valor] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 10/03/2016 17:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](250) NULL,
	[Imagem] [image] NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Apartamento] ON 

GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (1, 5, 1, 3, 1)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (2, 6, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (3, 3, 1, 1, 1)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (4, 2, 0, 3, 1)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (6, 6, 0, 4, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (7, 3, 0, 2, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (8, 3, 1, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (9, 6, 1, 1, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (10, 1, 0, 4, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (11, 1, 0, 2, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (12, 5, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (13, 3, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (14, 2, 0, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (15, 4, 0, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (16, 4, 1, 3, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (17, 3, 0, 3, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (18, 4, 0, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (19, 6, 0, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (20, 3, 1, 3, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (21, 1, 0, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (22, 4, 1, 3, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (23, 5, 0, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (24, 1, 1, 3, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (25, 4, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (26, 4, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (27, 3, 0, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (28, 4, 1, 3, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (29, 5, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (30, 2, 0, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (31, 4, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (32, 3, 1, 3, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (33, 6, 0, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (34, 4, 0, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (35, 1, 0, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (36, 3, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (37, 2, 1, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (38, 4, 1, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (39, 3, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (40, 5, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (41, 1, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (42, 3, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (43, 5, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (44, 6, 0, 3, 9)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (45, 4, 0, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (46, 4, 1, 3, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (47, 2, 0, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (48, 2, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (49, 4, 0, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (50, 5, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (51, 4, 1, 3, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (52, 3, 0, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (53, 2, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (54, 4, 0, 3, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (55, 2, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (56, 4, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (57, 1, 1, 3, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (58, 5, 1, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (59, 4, 0, 3, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (60, 1, 0, 3, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (61, 6, 1, 3, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (62, 1, 0, 3, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (63, 4, 1, 4, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (64, 2, 0, 4, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (65, 4, 1, 4, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (66, 6, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (67, 4, 1, 4, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (68, 3, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (69, 5, 1, 4, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (70, 4, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (71, 2, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (72, 4, 0, 4, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (73, 2, 1, 4, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (74, 6, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (75, 1, 0, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (76, 2, 1, 4, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (77, 4, 0, 4, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (78, 3, 1, 4, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (79, 6, 1, 4, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (80, 2, 0, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (81, 2, 1, 4, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (82, 2, 0, 4, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (83, 2, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (84, 5, 1, 4, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (85, 2, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (86, 6, 1, 4, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (87, 1, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (88, 2, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (89, 3, 1, 4, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (90, 6, 1, 4, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (91, 2, 1, 4, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (92, 3, 1, 4, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (93, 1, 0, 1, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (94, 6, 1, 5, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (95, 3, 0, 2, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (96, 2, 0, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (97, 2, 1, 4, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (98, 5, 1, 3, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (99, 4, 0, 2, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (100, 2, 1, 4, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (101, 4, 1, 4, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (102, 6, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (103, 2, 0, 1, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (104, 4, 1, 4, 1)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (105, 5, 1, 2, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (106, 2, 1, 1, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (107, 3, 0, 2, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (108, 4, 1, 4, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (109, 4, 1, 4, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (110, 1, 1, 1, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (111, 5, 0, 2, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (112, 6, 1, 4, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (113, 4, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (114, 2, 1, 1, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (115, 3, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (116, 2, 1, 5, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (117, 4, 1, 2, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (118, 2, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (119, 4, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (120, 2, 1, 1, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (121, 2, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (122, 6, 1, 2, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (123, 5, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (124, 1, 1, 5, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (125, 6, 1, 5, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (126, 2, 1, 5, 7)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (127, 1, 1, 5, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (128, 3, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (129, 4, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (130, 1, 1, 5, 1)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (131, 3, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (132, 4, 1, 5, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (133, 1, 1, 5, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (134, 3, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (135, 6, 1, 5, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (136, 6, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (137, 2, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (138, 1, 1, 5, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (139, 6, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (140, 2, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (141, 4, 1, 5, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (142, 3, 1, 5, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (143, 1, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (144, 3, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (145, 6, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (146, 2, 1, 5, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (147, 3, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (148, 1, 1, 5, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (149, 6, 1, 5, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (150, 4, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (151, 1, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (152, 2, 1, 5, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (153, 6, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (154, 1, 1, 5, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (155, 4, 1, 5, 3)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (156, 3, 1, 5, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (157, 3, 1, 5, 2)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (158, 4, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (159, 3, 1, 5, 4)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (160, 6, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (161, 4, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (162, 4, 1, 5, 8)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (163, 4, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (164, 6, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (165, 4, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (166, 6, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (167, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (168, 3, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (169, 4, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (170, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (171, 4, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (172, 6, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (173, 1, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (174, 3, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (175, 1, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (176, 3, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (177, 4, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (178, 1, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (179, 1, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (180, 3, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (181, 1, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (182, 3, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (183, 6, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (184, 3, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (185, 1, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (186, 4, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (187, 1, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (188, 3, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (189, 3, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (190, 6, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (191, 3, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (192, 1, 0, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (193, 4, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (194, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (195, 6, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (196, 4, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (197, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (198, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (199, 3, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (200, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (201, 3, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (202, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (203, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (204, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (205, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (206, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (207, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (208, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (209, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (210, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (211, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (212, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (213, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (214, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (215, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (216, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (217, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (218, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (219, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (220, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (221, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (222, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (223, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (224, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (225, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (226, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (227, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (228, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (229, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (230, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (231, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (232, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (233, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (234, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (235, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (236, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (237, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (238, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (239, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (240, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (241, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (242, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (243, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (244, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (245, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (246, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (247, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (248, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (249, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (250, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (251, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (252, 2, 1, 1, 5)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (253, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (254, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (255, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (256, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (257, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (258, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (259, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (260, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (261, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (262, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (263, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (264, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (265, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (266, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (267, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (268, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (269, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (270, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (271, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (272, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (273, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (274, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (275, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (276, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (277, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (278, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (279, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (280, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (281, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (282, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (283, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (284, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (285, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (286, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (287, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (288, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (289, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (290, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (291, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (292, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (293, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (294, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (295, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (296, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (297, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (298, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (299, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (300, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (301, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (302, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (303, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (304, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (305, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (306, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (307, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (308, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (309, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (310, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (311, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (312, 2, 1, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (313, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (314, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (315, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (316, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (317, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (318, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (319, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (320, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (321, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (322, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (323, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (324, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (325, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (326, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (327, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (328, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (329, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (330, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (331, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (332, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (333, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (334, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (335, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (336, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (337, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (338, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (339, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (340, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (341, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (342, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (343, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (344, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (345, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (346, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (347, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (348, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (349, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (350, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (351, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (352, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (353, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (354, 1, 0, 1, 6)
GO
INSERT [dbo].[Apartamento] ([Codigo], [CodigoTipo], [Ativo], [Leitos], [Andar]) VALUES (355, 1, 0, 1, 6)
GO
SET IDENTITY_INSERT [dbo].[Apartamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (1, N'vivi an Thaís', N'04523716510')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (2, N'Daniela  feitosa macedo de aquino', N'01565260503')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (3, N'Luiz Levy Pandini Figueiredo', N'04446229508')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (4, N'jacqueline barbosa andrade', N'88310680597')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (5, N'jacqueline barbosa andrade', N'88310680597')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (6, N'matheus soares massotti soares', N'95741674534')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (7, N'matheus soares massotti soares', N'95741674534')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (8, N'Dayana  França', N'10631787461')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (9, N'Juliane  Reis dos Santos ', N'01058763563')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (10, N'david rodrigues da silva  rodrigues', N'04900209503')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (11, N'david rodrigues da silva  rodrigues', N'04900209503')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (12, N'david  rodrigues da silva  rodrigues ', N'04900209503')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (13, N'Edivania  Ramos', N'02155077548')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (14, N'Tania Sousa', N'75935546515')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (15, N'Devison   Cerqueira do Nascimento', N'82576653553')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (16, N'Taiane Pereira', N'03876297508')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (17, N'Mylane de Holanda Marques', N'60486813487')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (18, N'TARCISIO SANTOS', N'94610436515')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (19, N'TARCISIO SANTOS', N'94610436515')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (20, N'Fabiana Da Cruzv', N'01070136573')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (21, N'Alexandre José Brandão Cupertino de Mello', N'01261044509')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (22, N'Alexandre de Mello', N'01261044509')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (23, N'ANDERSON JOSÉ CABRAL DE MEDEIROS', N'05106504490')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (24, N'RUI BRANDAO FILHO', N'38201186591')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (25, N'Tais  Cruz de Oliveira', N'06207924509')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (26, N'RUI BRANDAO FILHO', N'38201186591')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (27, N'RUI BRANDAO FILHO', N'38201186591')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (28, N'david rodrigues da silva  rodrigues', N'04900209503')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (29, N'Marco Antônio Teixeira França', N'38195488668')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (30, N'Alexandre de Mello', N'01261044509')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (31, N'Yanne Peixoto', N'08504589439')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (32, N'Jose Carlos Afonso', N'42965136568')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (33, N'cristiane santana  afonso', N'79423027504')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (34, N'Juliana Barbosa Santos Vaz da SIlva', N'01387741535')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (35, N'Juliana Barbosa Santos Vaz da Silva', N'01387741535')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (36, N'Liliane Matos', N'02513565584')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (37, N'Gabriel Santana Araujo', N'05376160556')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (38, N'Gabriel Santana Araujo', N'05376160556')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (39, N'Jaquel Ferreira de Moraes', N'06424924418')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (40, N'shirley  menezes de andrade', N'01169829503')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (41, N'cleide mary  Silveira', N'01752374509')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (42, N'Felix Tadeu Santana de Farias', N'03345342596')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (43, N'Neilma  Macêdo', N'82729298568')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (44, N'Neilma Macedo', N'82729298568')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (45, N'Amanda Cristina Ignacio Moraes', N'07936565833')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (46, N'Ednaldo  Fraga', N'81320019587')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (47, N'TARCISIO SANTOS', N'94610436515')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (48, N'Alisson Freire', N'92589634587')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (49, N'Lais  Café da Silva Sampaio ', N'02040144501')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (50, N'Taila Guimarães ', N'04875563566')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (51, N'MADIA RISHEA NASCIMENTO  COSTA', N'00100043437')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (52, N'Daniel  Moura', N'00986014400')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (53, N'Jesimiel Pinheiro Cavalcante pinheiro', N'02068769476')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (54, N'Emília  Cervino Nogueira ', N'33548838553')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (55, N'Patricia  Lima', N'04504036452')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (56, N'patricia  lima', N'04504036452')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (57, N'LEONARDO MAGALHÃES RIGATO', N'82680647572')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (58, N'madia rishea nascimento  costa', N'00100043437')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (59, N'ROSALINA  GUEDES DONATO SANTOS', N'00903492539')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (60, N'Érica Mendes Costa  Vicenzi ', N'94230749520')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (61, N'Érica Mendes Costa  Vicenzi ', N'94230749520')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (62, N'Diego  Souza', N'01460570588')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (63, N'Karina Santana Cruz Cruz', N'59011904591')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (64, N'Jose Danilo Nascimento Souza', N'02085056520')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (65, N'Fabiola  Feitosa ', N'65383532587')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (66, N'VERA LUCIA DA SILVA  MARTINS', N'508.785.491-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (67, N'VERA LUCIA DA SILVA MARTINS', N'508.785.491-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (68, N'VERA LUCIA MARTINS', N'508.785.491-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (69, N'Lilian  Costa Braga de Sena', N'781.905.415-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (70, N'Lilian Costa Braga de Sena ', N'781.905.415-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (71, N'Elanio Mota de Melo', N'933.582.535-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (72, N'Lilian Costa Braga de Sena', N'781.905.415-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (73, N'Lilian Costa Braga de Sena', N'781.905.415-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (74, N'Carlos Fernandes Fernandes', N'741.076.155-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (75, N'antonio carlos santos ferreira antonio', N'911.620.095-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (76, N'antonio carlos santos ferreira carlos', N'911.620.095-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (77, N'EVANILDE MARTINS', N'329.435.178-01')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (78, N'Carlos Fernandes Fernandes', N'741.076.155-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (79, N'Josenaldo  martins', N'030.948.815-05')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (80, N'Josenaldo  martins', N'030.948.815-05')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (81, N'Jsjsjsjsjsk Jsjsjsjsjsk ', N'412.435.844-08')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (82, N'Alcilene Correia', N'493.778.845-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (83, N'Maria Nívia Carmo santos', N'062.086.155-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (84, N'Luis  António ', N'645.203.665-34')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (85, N'CRISTINA ZILDA GONÇALVES DULTRA', N'671.368.775-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (86, N'Camila Helen', N'067.127.075-36')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (87, N'LARISSA CAROZO ARZE', N'011.565.095-48')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (88, N'Rafael  De jesus Alves', N'040.107.025-59')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (89, N'Marcella Oliveira', N'048.017.275-73')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (90, N'Carlos Wirti', N'839.889.205-68')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (91, N'Carla  Freitas da Silveira', N'292.672.005-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (92, N'Carla  Freitas da Silveira', N'292.672.005-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (93, N'Margareth Lima', N'008.454.995-56')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (94, N'ticiana  santos', N'950.597.925-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (95, N'Samara oliveira lopes Oliveira lopes ', N'069.064.594-57')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (96, N'Carlos Fortes', N'579.794.486-34')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (97, N'neviton dos santos  junior', N'016.707.535-73')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (98, N'neviton  junior', N'016.707.535-73')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (99, N'TIAGO FERREIRA', N'025.145.115-18')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (100, N'Samara oliveira lopes Oliveira lopes ', N'069.064.594-57')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (101, N'Carlos Santos', N'720.575.135-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (102, N'Evanise Tosta Santos Santos', N'677.904.105-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (103, N'THÁBATA MARIELLE SILVA DE SANTANA GEAMBASTIANI', N'957.442.401-44')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (104, N'nadyja lima', N'029.048.655-60')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (105, N'Mônica Cristina  Cavalcante', N'034.498.544-02')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (106, N'Mônica Cristina Cavalcante Gomes', N'034.498.544-02')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (107, N'MARIANA CACILDA ALMEIDA DE ARAUJO', N'899.462.605-06')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (108, N'Maria Nívia Carmo santos', N'062.086.155-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (109, N'luis washington marinho costa', N'008.217.845-36')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (110, N'Eryca Rayanne  Ramos Silva', N'034.514.135-07')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (111, N'CLAUDIANE  GOMES DA SILVA', N'012.010.514-44')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (112, N'claudiane gomes da silva', N'012.010.514-44')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (113, N'Gileno Pereira', N'780.829.435-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (114, N'Gileno Pereira', N'780.829.435-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (115, N'jose roberto dos santos roberto santos', N'014.280.915-21')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (116, N'Érica  Cruz', N'038.176.925-95')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (117, N'DEMETRIUS P. MORILLA', N'007.825.194-07')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (118, N'Eni Devay de Freitas', N'916.600.765-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (119, N'ANTONIO CAROLINO ARAUJO FILHO CAROLINO', N'334.372.115-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (120, N'ANAILMA DA SILVA JESUS ARAUJO SILVA', N'924.888.625-68')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (121, N'Morganna Rebelo', N'007.479.574-01')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (122, N'maria  soares', N'428.003.745-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (123, N'Fábio Murilo Tieghi Moreira', N'256.137.008-93')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (124, N'Vanessa  oliveira', N'052.213.025-94')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (125, N'Ana Cláudia  Oliveira', N'013.208.125-38')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (126, N'Adonis Brasil', N'002.185.075-50')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (127, N'Fernanda Bomfim Alves', N'033.742.835-27')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (128, N'Histéfani  Almeida Alves', N'030.985.815-14')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (129, N'Histéfani  Almeida Alves', N'030.985.815-14')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (130, N'Histéfani Almeida Alves', N'030.985.815-14')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (131, N'Josefa Dilma dos Santos Santos', N'662.654.365-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (132, N'JAILSON MENDES', N'615.649.075-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (133, N'Itamar Rosado Ferreira Ferreira', N'482.903.865-91')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (134, N'Itamar Rosado Ferreira Ferreira', N'482.903.865-91')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (135, N'LUAN DE lima SANTOS', N'053.921.205-98')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (136, N'Wennedy Santos', N'062.210.535-36')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (137, N'JAILSON  DE SANTANA MENDES', N'615.649.075-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (138, N'JAILSON DE SANTANA MENDES', N'615.649.075-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (139, N'artur  bispo dos santos neto', N'200.741.155-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (140, N'artur bispo dos santos neto', N'200.741.155-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (141, N'Demétrio Almeida Almeida', N'699.175.154-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (142, N'ANA LARISSA SOUZA DE OLIVEIRA  SOUZA DE OLIVEIRA ', N'038.899.575-01')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (143, N'IRANILDO FERREIRA DE  SOUZA', N'033.565.204-23')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (144, N'EDENY  NASCIMENTO', N'724.290.624-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (145, N'RONES TOLEDO', N'041.033.674-23')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (146, N'ROBERTO FERREIRA', N'649.231.424-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (147, N'ROBERTO  FERREIRA', N'649.231.424-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (148, N'ROBERTO FERREIRA', N'649.231.424-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (149, N'Márcio  Fernando', N'068.245.004-96')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (150, N'Marcio Fernando', N'068.245.004-96')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (151, N'IRANILDO SOUZA', N'033.565.204-23')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (152, N'Maxwell Seixas Luz Luz', N'951.763.305-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (153, N'Camila Evangelista Araujo', N'048.840.825-32')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (154, N'Dulce  Moreira', N'987.523.755-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (155, N'ROBERTO FERREIRA', N'649.231.424-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (156, N'MARCIO  PATURY', N'875.269.805-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (157, N'MARCIO PATURY', N'875.269.805-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (158, N'MARCIO  PATURY', N'875.269.805-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (159, N'marcio patury', N'875.269.805-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (160, N'iviny Mariane  Costa santos', N'784.022.125-49')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (161, N'iviny Mariane  Costa santos', N'784.022.125-49')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (162, N'Marcio  Patury', N'875.269.805-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (163, N'Marcio Patury', N'875.269.805-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (164, N'Mônica  Cavalcante', N'034.498.544-02')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (165, N'BARBARA Menezes', N'922.118.365-34')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (166, N'Eduardo Braga', N'647.369.625-34')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (167, N'Márcio  Fernandes ', N'668.583.215-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (168, N'Elício Amado', N'513.006.805-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (169, N'Elício Amado', N'513.006.805-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (170, N'artur  bispo santos neto', N'200.741.155-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (171, N'Histefani almeida', N'030.985.815-14')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (172, N'histefani almeida', N'030.985.815-14')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (173, N'histefani almeida', N'030.985.815-14')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (174, N'givaneide  lima do nascimento', N'029.003.104-40')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (175, N'artur  bispo dos santos neto', N'200.741.155-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (176, N'francisco  lourenço nascimento', N'155.541.553-91')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (177, N'Giovane  Gomes Nascimento', N'780.048.965-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (178, N'Edimilson  Araujo', N'530.652.125-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (179, N'Edimilson  Araujo', N'530.652.125-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (180, N'Edimilson  Araujo', N'530.652.125-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (181, N'Edimilson  Araujo', N'530.652.125-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (182, N'Edimilson  Araujo', N'530.652.125-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (183, N'Edimilson  Araujo', N'530.652.125-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (184, N'MARCIO IVALDO  FERNANDES', N'668.583.215-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (185, N'Silvia cristina Santana', N'958.147.795-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (186, N'Silvia cristina  Santana', N'958.147.795-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (187, N'Silvia Cristina  Santana', N'958.147.795-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (188, N'HUGO LEONARDO SACRAMENTO LOPES LOPES', N'916.686.115-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (189, N'MANOEL AUGUSTO DOS SANTOS NETO SANTOS NETO', N'921.437.335-34')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (190, N'histefani alves', N'030.985.815-14')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (191, N'Histefani alves', N'030.985.815-14')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (192, N'SHIRLEY  MENEZES DE ANDRADE', N'011.698.295-03')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (193, N'shirley de andrade', N'011.698.295-03')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (194, N'shirley de andrade', N'011.698.295-03')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (195, N'histefani almeida', N'030.985.815-14')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (196, N'shirley de andrade', N'011.698.295-03')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (197, N'shirley de andrade', N'011.698.295-03')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (198, N'Karla  Camacam', N'855.840.705-30')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (199, N'Edmilson  araujo', N'530.652.125-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (200, N'edimilsom araujo', N'530.652.125-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (201, N'Edimilson  Araujo', N'530.652.125-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (202, N'Josenne Mark Freitas de Sousa', N'009.829.865-80')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (203, N'Hélcio Perin', N'612.865.835-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (204, N'Rosemary  Perin', N'874.189.325-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (205, N'Rosemary  Perin', N'874.189.325-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (206, N'Rosemary Rufina S.  Perin', N'874.189.325-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (207, N'Rosemary Rufina Perin', N'874.189.325-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (208, N'Rosemary Rufina Perin', N'874.189.325-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (209, N'Rosemary Rufina Perin', N'874.189.325-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (210, N'Aguinaldo  Ventura', N'745.119.634-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (211, N'Aguinaldo Ventura', N'745.119.634-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (212, N'cristina  bochicchio', N'576.220.195-34')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (213, N'SHIRLEY MENEZES DE ANDRADE', N'011.698.295-03')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (214, N'cristina bochicchio', N'576.220.195-34')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (215, N'PATRICIO   DA SILVA  LIMA  ', N'831.096.685-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (216, N'PATRICIO  DA SILVA LIMA ', N'831.096.685-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (217, N'PATRICIO   DA SILVA  LIMA', N'831.096.685-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (218, N'PATRICIO  DA SILVA LIMA ', N'831.096.685-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (219, N'Ana Paula Soares', N'043.311.284-07')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (220, N'Jomar Benvindo dos Santos Benvindo dos Santos', N'358.851.221-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (221, N'Williane Lima santos', N'052.414.794-90')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (222, N'manoelson  carneiro firmo', N'019.217.445-29')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (223, N'manoelson carneiro firmo', N'019.217.445-29')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (224, N'PATRICIO   DA SILVA LIMA ', N'831.096.685-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (225, N'Viviane Ferreira dos Santos freire Freire', N'294.400.268-63')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (226, N'Daisy Cristina Correia de Jesus', N'779.553.405-82')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (227, N'Amom Lemos', N'039.246.545-06')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (228, N'Natanael Lessa Santos', N'369.820.245-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (229, N'RICARDO  ALONSO CATELA', N'884.813.285-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (230, N'Vanda Tavares dos Santos', N'776.905.165-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (231, N'Jamerson Flavio', N'056.026.665-08')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (232, N'Camila  Carvalho', N'015.543.115-35')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (233, N'Mathias Nunes dos Santos Santana Junior Nunes', N'052.384.035-77')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (234, N'Elisangela  Barbosa ', N'786.449.685-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (235, N'Nathalie Moraes', N'830.614.955-68')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (236, N'Clayton  Santos', N'924.377.704-10')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (237, N'rosangela soares da cruz soares', N'788.140.655-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (238, N'DAVID MARTINEZ', N'779.777.775-68')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (239, N'WASHINGTON  LUIZ RAMOS CRUZ ', N'034.787.455-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (240, N'João  Pereira Neto', N'567.922.124-15')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (241, N'FABIANO SAMPAIO CONCEIÇÃO', N'989.941.665-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (242, N'Érico  de Melo Xavier', N'725.615.645-68')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (243, N'Fernando Carvalho Junior Carvalho', N'007.927.875-28')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (244, N'LILIAN RITA DE SOUZA MEIRELES', N'903.939.025-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (245, N'Denise Oliveira', N'782.042.835-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (246, N'Tarciane Maria', N'040.689.855-37')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (247, N'tassis prata', N'036.742.535-18')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (248, N'Camila  Carvalho', N'015.543.115-35')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (249, N'Camila  Carvalho', N'015.543.115-35')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (250, N'Camila  Carvalho', N'015.543.115-35')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (251, N'Jaline  Passos', N'991.640.605-78')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (252, N'Jaline  passos', N'991.640.605-78')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (253, N'Milla Borges', N'033.791.855-40')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (254, N'Camila  Carvalho', N'015.543.115-35')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (255, N'Camila  Carvalho', N'015.543.115-35')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (256, N'camila Goes', N'015.543.115-35')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (257, N'Cláudio  Leite', N'003.267.375-29')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (258, N'MARIA AUXILIADORA OLIVA RIBEIRO OLIVA RIBEIRO', N'157.570.215-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (259, N'Marlucia  Leite', N'824.360.885-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (260, N'francisjane  Aragão', N'796.703.505-49')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (261, N'QUENYA FERNANDA TEIXEIRA BARRETO BARRETO', N'046.547.045-90')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (262, N'flavia mota de alencar', N'011.790.214-44')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (263, N'Juliana Silva Campos Farias', N'314.076.978-46')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (264, N'FLAVIA MOTA DE ALENCAR', N'011.790.214-44')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (265, N'Michele  Tavares Gaspar', N'907.023.105-06')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (266, N'ANDRÉA  VILLA FLÔR SAMPAIO', N'045.072.645-29')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (267, N'Ana Lúcia  Cerqueira dos Santos silva', N'938.818.515-34')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (268, N'Karen Simone  Dias', N'267.261.518-70')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (269, N'Karen Dias', N'267.261.518-70')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (270, N'Alexandre  Paes dos Santos', N'024.634.164-59')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (271, N'Patricia  José dos Santos ', N'014.817.145-11')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (272, N'CLEIDE ANA PINTO DOS SANTOS', N'802.342.915-91')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (273, N'Dorinilda Bezerra Silva Rocha ', N'043.644.914-54')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (274, N'CLAUDIO VICENTE SANTOS', N'614.819.558-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (275, N'claudio vicente santos', N'614.819.558-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (276, N'claudio vicente santos', N'614.819.558-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (277, N'claudio vicente santos', N'614.819.558-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (278, N'claudio vicente santos', N'614.819.558-53')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (279, N'VALDILENE SANTOS DA SILVA SANTOS SILVA', N'782.732.005-82')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (280, N'Isaias  Peixoto da Costa', N'388.381.175-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (281, N'Isaias Peixoto da Costa', N'388.381.175-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (282, N'Isaias  Peixoto da Costa', N'388.381.175-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (283, N'Isaias Peixoto da Costa', N'388.381.175-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (284, N'Beatriz Machado', N'095.960.984-97')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (285, N'Marina  Anunciação ', N'908.641.905-49')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (286, N'Alexandre Paes', N'024.634.164-59')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (287, N'Claudio Ferreira', N'857.040.245-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (288, N'Claudio Ferreira', N'857.040.245-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (289, N'CLAUDIO  FERREIRA', N'857.040.245-72')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (290, N'Welton Barbosa', N'052.610.804-52')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (291, N'Camila  Monteiro', N'066.596.775-69')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (292, N'Tatiana Reis  Santana Silva ', N'828.266.765-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (293, N'Tatiana Reis  Santos Silva ', N'828.266.765-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (294, N'Tatiana Reis  Santos Silva ', N'828.266.765-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (295, N'Tatiana  Reis ', N'828.266.765-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (296, N'Giovanna  Maldonado Vieira', N'262.480.598-29')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (297, N'Giovanna Maldonado Vieira', N'262.480.598-29')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (298, N'Tatiana  Reis ', N'828.266.765-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (299, N'Tatiana  Reis ', N'828.266.765-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (300, N'Ronaldo Moraes', N'064.484.814-60')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (301, N'mary hellen  monteiro ', N'991.965.905-30')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (302, N'mary hellen monteiro', N'991.965.905-30')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (303, N'Lucas  Santos', N'045.354.225-59')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (304, N'Lucas Santos', N'045.354.225-59')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (305, N'ANDRE MARCHETTO', N'148.299.078-43')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (306, N'ELSON ALVES DOS SANTOS', N'876.553.905-25')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (307, N'ROBERTO  MOURA MORAES', N'171.004.025-49')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (308, N'ROBERTO MOURA MORAES', N'171.004.025-49')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (309, N'THIAGO  RIBEIRO', N'061.553.145-86')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (310, N'THIAGO RIBEIRO', N'061.553.145-86')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (311, N'verena senra ', N'825.084.375-49')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (312, N'Tatiana  Reis Santos Silva ', N'828.266.765-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (313, N'Paulo Carvalho', N'382.631.574-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (314, N'ADRIANA ANDRADE REICHL', N'811.812.135-68')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (315, N'GEOVANA  SILVA DE SOUZA SOARES', N'002.987.465-30')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (316, N'FABIOLA PIMENTEL DIOGENES LETIER DE ALMEIDA', N'010.069.044-09')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (317, N'GEOVANA  SILVA DE SOUZA SOARES', N'002.987.465-30')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (318, N'Aline  Rodrigues', N'022.445.975-98')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (319, N'KATYUSCIA KARINE VIEIRA DOS SANTOS', N'263.151.968-02')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (320, N'MARCIA MARIA  RAMOS BRAS', N'924.158.655-91')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (321, N'MARCIA MARIA  RAMOS BRAS', N'924.158.655-91')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (322, N'Geovana Silva de Souza Soares', N'002.987.465-30')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (323, N'Geovana Silva de Souza Soares', N'002.987.465-30')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (324, N'Sergio Teste', N'059.915.005-09')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (325, N'joao bastos', N'126.842.428-52')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (326, N'Paulo Carvalho ', N'686.651.486-04')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (327, N'ELSON ALVES DOS SANTOS', N'876.553.905-25')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (328, N'Katyuscia Karine  Santos', N'263.151.968-02')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (329, N'Katyuscia  Karine', N'263.151.968-02')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (330, N'karine sadala', N'263.151.968-02')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (331, N'loide cristiane Mendonça', N'094.180.798-36')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (332, N'Luziane Parente', N'068.558.583-25')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (333, N'nildson barboza de melo', N'004.019.755-76')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (334, N'wellyane   Rosier', N'015.174.625-76')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (335, N'wellyane rosier', N'015.174.625-76')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (336, N'Joelma Floriza Quaranta Santos', N'662.272.595-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (337, N'Joelma Floriza Quaranta Santos', N'662.272.595-00')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (338, N'Andre  Duraes', N'934.082.935-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (339, N'thaina  freire santos', N'071.495.755-01')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (340, N'antonio maron agle filho', N'331.778.725-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (341, N'antonio maron agle filho', N'331.778.725-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (342, N'Ana Therezinha Santos Rodrigues', N'080.481.125-31')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (343, N'Ana Therezinha Santos Rodrigues', N'080.481.125-31')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (344, N'leilane araujo', N'011.050.424-05')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (345, N'Marco Antonio  Santos', N'379.420.005-59')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (346, N'IRANILDO FERREIRA DE SOUZA', N'033.565.204-23')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (347, N'Marianna Freire', N'840.872.425-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (348, N'Claudia  Lima Bacelar de Souza ', N'597.302.935-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (349, N'Claudia  Lima Bacelar de Souza ', N'597.302.935-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (350, N'Claudia  Lima Bacelar de Souza ', N'597.302.935-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (351, N'Claudia  Lima Bacelar de Souza ', N'597.302.935-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (352, N'SILVANETE  DOS SANTOS GARCIA', N'021.994.635-32')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (353, N'Claudia  Lima Bacelar de Souza ', N'597.302.935-20')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (354, N'Marianna Freire', N'840.872.425-87')
GO
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF]) VALUES (355, N'antonio maron agle filho', N'331.778.725-20')
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Consumo] ON 

GO
INSERT [dbo].[Consumo] ([Codigo], [CodigoReserva], [CodigoProduto], [Valor], [Quantidade], [DataHora]) VALUES (4, 222, 568, CAST(12.00 AS Numeric(18, 2)), 2, CAST(N'2016-03-10 17:12:00.000' AS DateTime))
GO
INSERT [dbo].[Consumo] ([Codigo], [CodigoReserva], [CodigoProduto], [Valor], [Quantidade], [DataHora]) VALUES (15, 191, 567, CAST(13.00 AS Numeric(18, 2)), 3, CAST(N'2016-03-10 17:12:00.000' AS DateTime))
GO
INSERT [dbo].[Consumo] ([Codigo], [CodigoReserva], [CodigoProduto], [Valor], [Quantidade], [DataHora]) VALUES (20, 2, 551, CAST(33.56 AS Numeric(18, 2)), 3, CAST(N'2016-03-10 17:00:00.000' AS DateTime))
GO
INSERT [dbo].[Consumo] ([Codigo], [CodigoReserva], [CodigoProduto], [Valor], [Quantidade], [DataHora]) VALUES (22, 6, 553, CAST(12.00 AS Numeric(18, 2)), 1, CAST(N'2016-03-10 17:30:00.000' AS DateTime))
GO
INSERT [dbo].[Consumo] ([Codigo], [CodigoReserva], [CodigoProduto], [Valor], [Quantidade], [DataHora]) VALUES (24, 8, 625, CAST(14.00 AS Numeric(18, 2)), 4, CAST(N'2016-03-10 17:50:00.000' AS DateTime))
GO
INSERT [dbo].[Consumo] ([Codigo], [CodigoReserva], [CodigoProduto], [Valor], [Quantidade], [DataHora]) VALUES (27, 23, 620, CAST(1.00 AS Numeric(18, 2)), 23, CAST(N'2016-03-10 17:56:00.000' AS DateTime))
GO
INSERT [dbo].[Consumo] ([Codigo], [CodigoReserva], [CodigoProduto], [Valor], [Quantidade], [DataHora]) VALUES (28, 47, 614, CAST(78.33 AS Numeric(18, 2)), 2, CAST(N'2016-03-10 17:56:00.000' AS DateTime))
GO
INSERT [dbo].[Consumo] ([Codigo], [CodigoReserva], [CodigoProduto], [Valor], [Quantidade], [DataHora]) VALUES (31, 48, 756, CAST(66.00 AS Numeric(18, 2)), 3, CAST(N'2016-03-10 17:12:00.000' AS DateTime))
GO
INSERT [dbo].[Consumo] ([Codigo], [CodigoReserva], [CodigoProduto], [Valor], [Quantidade], [DataHora]) VALUES (34, 56, 756, CAST(59.21 AS Numeric(18, 2)), 1, CAST(N'2016-03-10 17:58:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Consumo] OFF
GO
SET IDENTITY_INSERT [dbo].[Produto] ON 

GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (547, N'DIARIA ZERADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (548, N'TEL:', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (549, N'DIF DIARIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (550, N'ROOM TAX FACULTATIVO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (551, N'TAXA DE SERVICO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (552, N'TAXA DE ISS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (553, N'INGR - ADULTO (001 A 700)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (554, N'CONHAQUE DREHER', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (555, N'COCORICÓ', NULL, CAST(18.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (556, N'CERV.HEINEKEN LONG NECK 355ML', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (557, N'GIN NACIONAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (558, N'CAMARÃO AO MOLHO MANGA', NULL, CAST(32.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (559, N'CERV. SKOL LATA 350ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (560, N'CAMARAO A MODA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (561, N'AGUA MINERAL  ( GRUPO RIACHAO DANTAS)', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (562, N'REFRIGERANTE PET C/ 2 LTS', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (563, N'FETUCCINE A BOA LUZ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (564, N'FESTIVAL DE INVERNO RESTAURANTE CHEZ BERNARD', NULL, CAST(99.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (565, N'SPAGHETTI NA MANTEIGA DE ERVAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (566, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (567, N'DIARIA ABERTA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (568, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (569, N'FRANGO ARROZ FEIJAO E PURÉ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (570, N'SOBREMESA CREME DE PAPAIA C/CASSIS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (571, N'CAMARAO CARTOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (572, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (573, N'LAVAR/PASSAR ROUPÃO BANHO FEM.', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (574, N'DOCES CASEIROS', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (575, N'SOBREMESA TAÇA DE SORVETE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (576, N'PETISCO BROCHETE DE BOI', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (577, N'PETISCO BROCHETE DE FRANGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (578, N'CACHAÇA TAIO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (579, N'AGUARDENTE SALINEIRA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (580, N'BOLINHO DE CHARQUE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (581, N'QUEIJO DA FAZENDA( FUNCIONARIO )', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (582, N'PRESTACAO DE SERVICO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (583, N'DVD PAIXÃO DE CRISTO BOA LUZ', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (585, N'NULL', NULL, NULL)
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (586, N'BOOK FOTOGRAFICO', NULL, CAST(300.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (587, N'ESPUMANTE SALTON BRUT', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (588, N'LAVAR/PASSAR CAMISA MANGA CURTA MAS.', NULL, CAST(8.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (589, N'FOLHADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (591, N'SO PASSAR VESTIDO FINO', NULL, CAST(12.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (593, N'CALDINHO DE SURURU', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (594, N'CALDINHO DE FEIJÃO', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (595, N'CALDINHO DE CAMARÃO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (596, N'LAVAR/PASSAR VESTIDO FINO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (597, N'SANDUICHE MISTO QUENTE', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (600, N'SANDUICHE -  CHEESE SALADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (601, N'LAVAR/PASSAR VESTIDO LONGO', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (602, N'REFRIGERANTE DIVERSOS LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (603, N'REFRI. COCA COLA LIGHT LATA 350ML', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (604, N'REFRI. GUARANÁ ANTARTICA LATA 350ML', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (605, N'GUARANÁ ANTARCTICA LIGHT LATA 350ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (606, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (607, N'SPRITE LATA 350ML', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (608, N'ZPRODUTO INEXISTENTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (609, N'AGUA MINERAL C/GAS 330ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (610, N'COCO VERDE', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (611, N'AGUA DE COCO JARRA PEQUENA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (613, N'SUCO JARRA PEQUENA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (614, N'SUCO (COPO)', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (616, N'CALDO DE CANA', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (617, N'ENERGETICO RED BULL', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (619, N'COMBO BOA LUZ+REF+FRITAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (620, N'DRINK--HAVAI', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (621, N'TELEFONE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (622, N'AGUARDENTE FLOR DE MINAS', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (623, N'CERV.  S/ALCOOL LATA 350ML', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (624, N'WHISKY BALLANTINNES 08 ANOS', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (625, N'JANTAR EVENTO NAMORADOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (626, N'SALGADO  PASTEL DE CARNE', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (627, N'AGUARDENTE IZAURA C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (628, N'PACOTE ESCOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (629, N'DANOS MATERIAIS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (631, N'BOLINHO DE MACAXEIRA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (633, N'CREME DE AMENDOIM', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (634, N'COFFE BREAK BOA LUZ', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (635, N'CONSUMO (AG.1674)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (636, N'COMERCIAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (637, N'CACHAÇA CRISTALINA DO ENGENHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (639, N'AGUARDENTE LISBOA 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (641, N'AGUARDENTE DA PRATA 700 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (644, N'FRIGOBAR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (649, N'DECISAO', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (651, N'CURRAL VELHO', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (652, N'NAO UTILIZADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (653, N'CAVALGADA PARA LARANJEIRAS (NOTURNO)', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (654, N'MESA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (656, N'INGRESSO (OAB)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (657, N'ZZQUEIJO DA FAZENDA COM MELADO DE CANA', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (658, N'VINHO SANTA RITA', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (659, N'COQUETEL DE FRUTAS C/ ALCOOL', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (660, N'SALICANA', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (663, N'DAY USE - ECO PQ - CRIANÇA <7 ANOS (701 A 1000)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (664, N'BUFFET PROJETO ESCOLA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (666, N'LASER POINT', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (668, N'CAPUCCINO ITALIANO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (669, N'CASA DA CACHAÇA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (670, N'CINZEIRO DE LOUÇA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (671, N'BUFFET RANCHO FUNDO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (672, N'CATUNI', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (673, N'CONHECENDO O ZOO (CHARRETE / TRENZINHO)', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (674, N'CAMINHO REAL', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (675, N'ENTRADA PROJETO ESCOLA DE 02 A 10 ANOS (5ª E 6ª', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (677, N'CERVEJA SKOL', NULL, CAST(1.59 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (678, N'FUNDADOR', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (679, N'ISQUEIRO', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (680, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (681, N'DESTILADO GIN IMPORTADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (682, N'RUM BACARDI CARTA OURO', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (683, N'DEST RUN BACARDI LIMAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (685, N'CONHAQUE DOMECQ', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (686, N'AGUARDENTE CARNAVAL & CANA', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (688, N'WHISKY TEACHER´S', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (689, N'WHISKY BELLS', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (692, N'WHISKY RED LABEL', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (693, N'INGRESSO TURISMO RURAL - CHD', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (694, N'CAFE DA MANHÃ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (695, N'ISCA DE PEIXE', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (696, N'PACOTE ESCOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (697, N'CANA VERDE & CIA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (699, N'PACOTE ESCOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (700, N'PEDALINHO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (702, N'RECEREACAO CAVALGADA AO VALE DOS DINO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (703, N'PACOTE ESCOLA (PROFESSORES)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (704, N'PACOTE ESCOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (706, N'CRIANÇAS', NULL, CAST(24.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (707, N'CAMARÃO LARANJEIRAS', NULL, CAST(34.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (708, N'GEL DE DUCHA TÔNIFICANTE 75ML', NULL, CAST(23.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (709, N'PROFESSORES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (710, N'COPO DESCARTAVEL (PACOTE)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (711, N'PEIXE FRITO (TAMBAQUI/TILAPIA/PACÚ/TRAIRA]', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (712, N'PACOTE CHD', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (713, N'CACHAÇA SEM RESSACA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (715, N'PACOTE ESCOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (717, N'SABONETEIRA ', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (718, N'PACOTE ESCOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (719, N'REFRIGERANTE GUARANÁ 2L', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (720, N'NAO UTILIZADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (721, N'CRISTALINA DO PICAO', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (722, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (723, N'PETISCO CREME DE PALMITO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (724, N'PACOTE DESO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (725, N'PACOTE DESO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (726, N'PACOTE UNIFICADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (727, N'CENTRO DE CONVENSOES', NULL, CAST(280.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (729, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (730, N'VINHO DO PORTO EXTRA DRY C/ 750 ML', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (731, N'CREDITO DEVOLVIDO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (732, N'VINHO BARBERA DOC', NULL, CAST(86.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (733, N'VINHO CANTADOR COLLECION', NULL, CAST(50.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (734, N'MESA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (735, N'PACOTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (736, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (737, N'INGRESSO - CORTESIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (738, N'CACHORRO QUENTE (ANIVERSARIO)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (739, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (740, N'COENTRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (741, N'REF. COCA COLA EM LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (742, N'COCA COLA KS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (743, N'FANTA LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (744, N'FANTA KS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (745, N'KUAT LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (746, N'REFRI. GUARANÁ KUAT ZERO LATA 350ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (747, N'WHISKY BLACK LABEL', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (748, N'CONDICIONADOR BABY', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (749, N'LEITE CORPORAL VERBENA 75ML', NULL, CAST(28.60 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (750, N'WHISKY GOLD LABEL', NULL, CAST(49.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (754, N'TAXA DE ROLHA VINHO', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (755, N'WHISKY GREEN LABEL', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (756, N'TAÇA DE VINHO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (757, N'VINHO ALMADEN TINTO', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (758, N'VINHO CASA MIRIAM CHARDONNAY', NULL, CAST(43.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (759, N'PEDALINHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (760, N'CONSUMO (AG.REGIONAL)', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (762, N'TIROLESA (01 DESCIDA)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (763, N'GIRO MASTER', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (764, N'PASSEIO DE CHARRETE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (765, N'BOIA (ALUGUEL DE 40 MIN)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (766, N'CAIAQUE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (767, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (768, N'MALEX - GUARDA VOLUMES', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (769, N'TOURO MECANICO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (770, N'CARROSSEL', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (771, N'MEL DE MINAS', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (772, N'KART (DURACAO 05 MIN)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (773, N'CAVALGADA GRUTA DA PEDRA FURADA (DIURNA)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (774, N'PASSEIO A CAVALO', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (775, N'TRENZINHO GRUTA DA PEDRA FURADA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (776, N'TRENZINHO VALE/CACHAÇARIA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (777, N'PONEI', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (778, N'RAPEL', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (779, N'PAREDE DE ESCALADA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (780, N'ALUGUEL DE BICICLETA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (781, N'TRENZINHO VALE DOS DINOSSAURO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (782, N'BOLO SIMBOLICO', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (783, N'BUFFET - RANCHO FUNDO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (784, N'BUFFET ARACAJU', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (785, N'CONSUMO (AG.1589)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (786, N'CONSUMO (AG.1590)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (787, N'CONSUMO(AG.1591)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (788, N'SALGADO- JOELHINHO DE FRANGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (789, N'CONSUMO(AG.1592)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (790, N'CONSUMO (AG.1657)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (791, N'LANCHONETE R.FUNDO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (792, N'VINHO MIRADPR SELECTION', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (793, N'RUCULA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (795, N'MAXIXE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (796, N'AGUA DE COCO COPO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (798, N'GALINHA AO MOLHO PARDO', NULL, CAST(8.72 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (801, N'LICOR AMARETTO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (802, N'VINHO CASA MIRIAM MALBEC', NULL, CAST(43.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (803, N'DISPONÍVEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (804, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (805, N'TAXA DE ROLHA WHISKY', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (806, N'PERIQUITA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (808, N'PIMENTAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (809, N'NAO UTILIZADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (810, N'CONSUMO LOJA COUNTRY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (813, N'CONSUMO O CARANGUEJO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (814, N'CONSUMO FRIGOBAR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (815, N'VINHO SANTA HELENA TINTO CHARDONAY', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (816, N'VINHO SANTA HELENA CHANDONNAY', NULL, CAST(34.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (817, N'VINHO VALPOLICELLA BOLLA', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (819, N'VINHO SYRAR SYBEL', NULL, CAST(125.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (820, N'VINHO TUNICHE CHARDONNAY375', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (822, N'RISOTO DE TOMATE SECO', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (824, N'VINHO ANGARO', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (825, N'LOJA COUNTRY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (827, N'VINHO SALTON BCO.FLOWERS 750 ML', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (828, N'BIFE DE TIRA', NULL, CAST(42.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (829, N'RUM MALIBU', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (830, N'VINHO CHATEAU LACAVE MOSCATO', NULL, CAST(96.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (832, N'VINHO BARON LANTIER', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (834, N'VINHO TUNICHE CABERNET SAUV 750ML', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (835, N'TOSO (BRA)', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (836, N'VINHO QUINTA DO MORGADO', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (837, N'LICOR DE KUYPER C/ 1000ML', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (839, N'WHISKY CHIVAS REGAL', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (840, N'VINHO PIZZATO MERLOT', NULL, CAST(54.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (841, N'QUIABO PARA DAY USE', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (842, N'COMBO CHEESE SALADA+REF+FRITAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (843, N'CERV. S/ALCOOL LONG NECK 355ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (844, N'MOTINHA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (845, N'RECREACAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (846, N'COMBO CLUBE SANDUICHE+REF+FRITAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (847, N'COSTELA DE CARNEIRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (848, N'CARNE DO SOL  ( MACAXEIRA OU FAROFA E VINAGRETE)', NULL, CAST(27.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (849, N'FILE APERITIVO COM FRITAS', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (850, N'AGUARDENTE CACHOEIRA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (851, N'AGUA TONICA LATA C/350ML', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (852, N'COCA COLA ZERO COPO 300ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (854, N'CAPELINHA DE MINAS', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (855, N'SUCO JARRA GRANDE', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (856, N'KUAT LIGHT LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (857, N'SALGADO -  COXINHA DE FRANGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (858, N'DESTILADO GILBEYLS DRY GIN', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (859, N'PORCAO DE PURÊ', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (860, N'PORÇAO DE ARROZ/PURE/MASSA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (863, N'ZPRODUTO INEXISTENTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (864, N'CAMARAO NA MANTEIGA DE PARIS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (865, N'MINHAS DEUSAS', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (866, N'KAPO MORANGO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (868, N'PURE DE INHAME', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (869, N'COSTELETAS SUINAS AO BARBECUE', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (872, N'SALGADO DE PRESUNTO E QUEIJO', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (873, N'DOCE DA FAZENDA (BANANA)', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (874, N'CD RW VIRGEM', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (875, N'PURICANA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (876, N'ENROLADINHO DE PRESUNTO E QUEIJO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (879, N'ENROLADAO DE PRESUNTO E QUEIJO S/ MOLHO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (880, N'PAO  DE QUEIJO', NULL, CAST(0.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (881, N'PAO DELICIA SEM RECHEIO', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (883, N'CALDOS E CREMES (INFANTIL)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (884, N'FETUCCINE AO MOLHO DE CAMARÕES', NULL, CAST(20.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (885, N'QUEIJO MAE LINDA ( PEÇA )', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (886, N'ENROLADINHO DE SALSICHA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (887, N'PORÇÃO MACAXEIRA FRITA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (890, N'ZZQUEIJO DE BUFALA', NULL, CAST(37.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (891, N'QUEIJO DA FAZENDA APIMENTADO ( PEÇA )', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (893, N'QUEIJO CREMOSO', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (895, N'LUCAS BATISTA GARRAFA', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (896, N'TRADIÇÃO ( GARRAFA )', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (897, N'PÉ DE SERRA GARRAFA', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (899, N'ESPETINHO -  QUEIJO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (900, N'AGUA DE COCO JARRA GRANDE', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (901, N'ESPETINHO_CAMARÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (902, N'ESPETINHO- QUEIJO C/ MEL DE ENGENHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (903, N'COMBO QUEIJO QUENTE+FRITAS+REFRI', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (904, N'COMBO MISTO QUENTE+FRITAS+REFRI', NULL, CAST(13.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (905, N'COMBO HAMBURGUER+REF+FRITAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (906, N'COMBO CHEESE BURGUER+FRITAS+REFRI', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (907, N'FILETES  DE PICANHA', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (908, N'MOLHO PICATA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (909, N'MAX PREMIUM FLOCOS C/ CHOCOLATE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (910, N'COMBO EGGS BURGUER+FRITAS+REFRI', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (911, N'COMBO BAURU+REF+FRITAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (913, N'VINHO SANTA RITA 120 SAUV. BLANC 375 ML', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (914, N'VINHO SANTA RITA RESERVA CABER. SAUVIG', NULL, CAST(116.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (915, N'VINHO TTO CHATEU SIGNAC CUVÉE TRADIT', NULL, CAST(137.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (916, N'VINHO TTO GRAND BATEAU BORDEAUX 750 ML', NULL, CAST(116.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (917, N'VINHO SYRAH KANKURA', NULL, CAST(89.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (918, N'VINHO LA CONSULTA MALBEC TTO 750 ML', NULL, CAST(70.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (919, N'VINHO LA FLOR MALBEC TTO750 ML', NULL, CAST(83.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (920, N'PROSSECO ANELA (BRA)', NULL, CAST(93.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (921, N'VINHO BCO CONVENTO DA VILA 750 ML', NULL, CAST(56.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (922, N'VINHO BCO STA RITA 120 CHARDONAY 750 ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (923, N'VINHO BCO QUARA TORRONTES 750 ML', NULL, CAST(56.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (924, N'VINHO STA RITA SAUVIGNON BLANC 750', NULL, CAST(109.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (925, N'VINHO CASA VALDUGA PREMIUM BRANCO 750 ML', NULL, CAST(58.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (926, N'VINHO BCO TABALI SAUVIGNON BLANC 750 ML', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (927, N'VINHO STA RITA TTO GRAN HACIENDA 750', NULL, CAST(91.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (928, N'VINHO STA RITA TTO GRAN HACIENDA', NULL, CAST(91.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (929, N'VINHO TABALI RESERVA ESP. PINOT NOIR 750', NULL, CAST(139.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (930, N'VINHO TTO VALDUGA PREMIVM CABER.', NULL, CAST(86.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (931, N'VINHO FUNDAÇAO EA TTO 750 ML', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (932, N'VINHO TTO PAULA SYRAH 750 ML', NULL, CAST(83.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (933, N'VINHO TTO STA CRISTINA 750 ML', NULL, CAST(83.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (934, N'VINHO VALPOLICELLA TTO750 ML', NULL, CAST(67.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (935, N'VINHO VENTISQUEIRO CLASSICO TTO 750 ML', NULL, CAST(84.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (936, N'VINHO VENTISQUEIRO SYRAH TTO750 ML', NULL, CAST(102.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (937, N'FANDANGOS', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (938, N'PATINHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (940, N'CAVALO PEQUENO', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (941, N'ESPUMANTE NOVECENTOS EXTRA BRUT', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (942, N'VINHO BRANCO TRILOGIE', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (943, N'BUFFET DAS NAÇÕES', NULL, CAST(44.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (944, N'VINHO SELECTOR CABERNET', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (945, N'AQUARIUS FRESCH 450ML', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (947, N'CARTAO PERDIDO HOTEL', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (948, N'SURUBIM DA FAZENDA', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (951, N'CERV. CARACU LONG NECK 355ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (952, N'RESERVA DO BARÃO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (953, N'CERV. SUMMER DRIFT LONG NECK 355ML', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (954, N'TUR RURAL', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (956, N'VALE DO SOL', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (957, N'MONTE ALTO', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (959, N'DECISAO', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (960, N'DO SERRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (961, N'CONTRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (962, N'PINGO VERDE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (963, N'SALIMONTES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (965, N'RISOTO DE FRUTOS DO MAR', NULL, CAST(33.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (967, N'QUEIJO DE CABRA ( FUNCIONÁRIO )', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (968, N'RECREACAO TRENZINHO LARANJEIRAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (969, N'ESCOVA DENTAL MEDIA', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (970, N'CANETA PAPAI NOEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (971, N'ENFEITE PAPAI NOEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (972, N'VELA PAPAI NOEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (973, N'BOLA ENFEITE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (974, N'CAIXA ENFEITE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (975, N'CAMISA BABY LOOCK', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (976, N'TAPIOCA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (977, N'ESPUMANTE CHANDON BRUT 375 ML (BRA)', NULL, CAST(69.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (978, N'ESPUMANTE CHANDON BRUT 750 ML', NULL, CAST(102.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (979, N'VINHO TUNICHE SYRAH 375 ML', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (980, N'VINHO BOURGOGNE BLANC 750 ML', NULL, CAST(142.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (981, N'VINHO BCO SAINT CLAIR SAUVIGNON 750 ML', NULL, CAST(164.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (982, N'VINHO DONA PAULA ESTANTE MALBEC 750 ML', NULL, CAST(117.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (983, N'VINHO CASA MIRIAM MALBEC ROSE', NULL, CAST(43.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (984, N'VINHO DOMAINE DES LANQUIERES ROSE', NULL, CAST(83.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (985, N'EXAGERADO FLOCOS 400ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (986, N'VINHO SANTA RITA 120 CABER. SAUV. 375 ML', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (987, N'SANTA RITA 120 MERLOT 750 ML', NULL, CAST(74.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (988, N'REFRI. COCA COLA 2 LTS', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (990, N'QUEIJO MUSSARELA ( KG )', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (992, N'ESPELHO', NULL, CAST(100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (993, N'DISPLAY', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (999, N'CARPACCI DE CARNE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1000, N'FILET MINGNON LIGHT', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1002, N'PEIXE GRELHADO', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1003, N'TOURNEADOS DE FILE C/ RECHEIO DE PARMA E CHAMPIGN', NULL, CAST(39.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1004, N'PEITO DE FRANGO MATUTO DO NORDESTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1006, N'BRINQUEDOS', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1007, N'TOALHINHA - BOA LUZ', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1009, N'CHA NESTEA LIMÃO 350ML', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1010, N'INGRESSO - DIA DOS PAIS INFANTIL', NULL, CAST(32.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1011, N'RESERVA DO BARÃO (GARRAFA)', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1020, N'RECREACAO TREM VALE DINOSSAURO  PRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1022, N'PONTO DE ENERGIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1023, N'PAPILOT DE SALMÃO', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1024, N'CHATEAUBRIAN COM RISOTO DE ASPARGOS', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1025, N'AGUARDENTE KOKIM C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1026, N'CAFE DA MANHÃ GRUPO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1027, N'MAP KUAT', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1028, N'COINTREAU', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1029, N'AMARETO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1030, N'AMARULA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1031, N'TIA MARIA', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1032, N'STAGNARI VIOGNIER', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1033, N'STAGNARI CABERNET PREMIER', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1034, N'PERIQUITA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1035, N'MANTEIGA 700 GR', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1036, N'LAVAR/PASSAR  CAMISA MANG.CURTA FEM.', NULL, CAST(8.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1037, N'LAVAR/PASSAR CAMISA M. COMPRIDA FEM.', NULL, CAST(9.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1038, N'LAVAR/PASSAR  CALCINHA', NULL, CAST(5.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1039, N'LAVAR/PASSAR CALÇA JEANS FEM.', NULL, CAST(14.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1040, N'LEITE LA SERENISSIMA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1042, N'MAP COCA LIGHT LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1046, N'MAP - KUAT ZERO LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1047, N'LAGOA AZUL', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1048, N'MAP - SPRIT LATA', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1049, N'MAP- ÁGUA TÔNICA LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1050, N'CALDINHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1051, N'SOBREMESA DOCE DE MANGA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1053, N'MULTA - CARTAO DE CONSUMO 2ª VIA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1058, N'LAVAR /PASSAR BERMUDA FEM.', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1059, N'LAVAR/PASSAR SHORT FEM.', NULL, CAST(6.10 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1060, N'VINHO MIOLO BRUT TTO SECO', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1064, N'CARNE DO SOL', NULL, CAST(22.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1065, N'CHIP JAMON', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1066, N'SALADA DE FRUTAS', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1067, N'COCA COLA 2000', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1068, N'MANTEIGA 500GR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1069, N'MIOLO RESERVA TINTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1070, N'ANÚBIS MALBEC', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1071, N'CRIOS DE BALBO MALBEC', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1072, N'CRIOS DE SUSANA BALBO SYRAH BONARDA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1073, N'DONA PAULA 2005--MALBEC BODEGAS E ESTART', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1074, N'STAGNARI TANNAT PREMIER', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1075, N'VENTISQUERO CABERNET TANTCHUE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1076, N'VENTISQUERO CLASSICO CABERNET', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1077, N'VENTISQUERO RESERVA CARMENERE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1078, N'VENTISQUERO GRAN RESERVA SYRAK', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1079, N'VENTISQUERO GRAN RESERVA PINOT NOIR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1080, N'SANTA HELENA SYRAK', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1081, N'MEDALHA REAL 2004 VINÃ SANTA RITA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1082, N'CONO CARBENET SAUVIGNON', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1083, N'DOCE AMBROSIA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1084, N'HECULA 2004 BODEGAS CASTANO YECLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1085, N'BEAUJOLAIS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1087, N'SEDARA NERO DÁVOLA IGT 2005 DONNA FULG', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1088, N'PRIMITIVO SALENTO (CALEO)2004', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1089, N'PERIQUITA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1090, N'ESPORÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1091, N'MONCHAO 2005 ALENTEJO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1092, N'MOET CHANDON', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1093, N'MOET CLIQUOT', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1094, N'SALTON BRUT BRASIL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1095, N'PROSSECCO SALTON BRASIL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1096, N'CHANDON- BRASIL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1097, N'TOSO- ARGENTINA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1098, N'SPERONE ITÁLIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1099, N'VINHO CASA VALDUGA CARBENET FRANC.', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1100, N'VALDUGA CHARDONNAY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1101, N'MIOLO SELECAO BRANCO E TINTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1102, N'VINHO RESERVA SYRAR', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1103, N'CACHAÇA 3 PRAIAS OURO 3LT', NULL, CAST(37.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1105, N'POLVO PAPRICA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1106, N'VINAGRETE', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1107, N'BANANA LIQUEAR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1108, N'FRANGELICO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1109, N'COCA COLA LATA 350ML', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1111, N'CERV. BAVARIA PREMIUM LONG NECK', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1114, N'CERV. KAISER  LATA 350ML', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1115, N'CERV. BAVARIA PREMIUM LATA 350ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1116, N'EDUCAÇÃO AMBIENTAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1117, N'BOLO DE CASAMENTO', NULL, CAST(120.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1119, N'SALTON BRUT - 750 ML', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1123, N'TAXA DE ROLHA - VINHO NACIONAL', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1124, N'OPERADOR (1-PESSOA)', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1125, N'TOALHAS - ALUGUEL', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1126, N'TAXA DE ROLHA -  VINHO IMPORTADO', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1127, N'TAXA DE ROLHA - WHISKY IMPORTADO', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1128, N'CRIOS DE SUSANA BALBO TORRONTÉS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1129, N'VENTISQUERO TANTCHUE CHARDONAY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1130, N'MIOLO RESERVA BRANCO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1131, N'CASA VALDUGA PREMIUM SANVINGNON BLANC', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1132, N'ALMADEN RIESLING DEMI SEC', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1133, N'VENTISQUERO CLASSICO CHARDONNAY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1134, N'VENTISQUERO RESERVA SAUVIGNON BLANC', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1135, N'SANTA RITA GRAND HACIENDA 2004 RIESLING', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1136, N'SANTA RITA RESERVA SAUVIGNON BLANC', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1138, N'CHABLIS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1139, N'BOUGOGNE CHARDONNAY 2005 LAVIGNE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1140, N'CONVENTO DA VILA 2005', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1141, N'CHAMINÉ 2003 ALENTEJO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1142, N'CRIOS DE SUSANA ROSÉ OF MALBEC', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1143, N'SALTON CLASSIC RESERVA CABERNET SAUVIGN', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1144, N'SUPREMO DE FRANGO', NULL, CAST(19.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1146, N'SANDUICHE EGGS BURGUER', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1147, N'REFRI. PET DIVERSOS C/ 2 LTS', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1148, N'SALTON VOLPI CABERNET SAUVIGNON', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1149, N'CASA VALDUGA PREMIUM CABERNET SAUVIGN', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1150, N'PORÇÃO DE AZEITONAS', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1151, N'DOCE CASEIRO C/ 1 KILO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1153, N'FRANGO AO MOLHO MADEIRA E CHAMPIGNON', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1154, N'ESPAGUETE AO SUGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1158, N'COQUETEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1159, N'BOLINHO DE CAMARÃO', NULL, CAST(13.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1164, N'ZPRODUTO INEXISTENTE', NULL, CAST(21.02 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1165, N'DIFERENÇA DE COMANDA PROD - 610', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1167, N'SALMAO AO MOLHO DE MARACUJÁ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1168, N'MAP FRICASSE DE FRANGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1169, N'MAP TALHARIM A BOLONHESA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1170, N'CARTELA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1171, N'MAP - SUCO DE LARANJA  JARRA GRD', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1173, N'BOLO DE CASAMENTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1177, N'COCA COLA COPO 300ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1178, N'REFRIGERANTE LATA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1179, N'REF KUAT 2000ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1180, N'ZPRODUTO INEXISTENTE', NULL, CAST(7.10 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1181, N'KUAT LATA 350ML', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1183, N'FANTA UVA LATA', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1184, N'FANTA LARANJA LATA 350ML', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1185, N'SALGADO TROXINHA DE CAMARAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1186, N'SALGADO-RISOLE DE CAMARAO', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1187, N'RISOTO A MILANESA', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1188, N'COCA ZERO LATA 350ML', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1189, N'REF.COCA COLA LIGHT LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1190, N'STAIK POIVRE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1191, N'SONORIZAÇÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1193, N'ISCA DE FRANGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1194, N'VODKA WIBOROWA - IMPORTADA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1196, N'MAP REFRIGERANTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1197, N'MAP - SUCO DE LARANJA', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1199, N'VERAS D''ALMA  - GARRAFA', NULL, CAST(38.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1200, N'SOBREMESA DOCE LEITE CREMOSO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1201, N'SOBREMESA DOCE DE BANANA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1202, N'DOCES POTE 1000GR', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1203, N'SOBREMESA DOCE DE ABACAXI', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1204, N'SOBREMESA DOCE DE GOIABA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1205, N'CAIPIRINHA FROZEN', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1206, N'MINEIRA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1207, N'PONTO DE INTERNET', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1208, N'JANTAR MANGALARGA', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1211, N'BRUSCHETA DO CHEFE', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1212, N'PICANHA NA CHAPA PARA UMA PESSOA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1213, N'PICANHA PARA DUAS PESSOAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1214, N'GRELHADO MISTO PARA UMA PESSOA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1215, N'GRELHADO MISTO PARA DUAS PESSOAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1216, N'CARNE DO SOL DE FILÉ', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1217, N'SUGESTAO DE FRUTOS DO MAR JANTAR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1221, N'FILE DE SURUBIM DA FAZENDA', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1223, N'FILET DE PEIXE AO MOLHO FLORENTINA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1224, N'SALADA VERDE C/PALMITO E TOMATE CAQUI', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1225, N'SIMBA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1228, N'MAP BUFFET SEXTA FEIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1229, N'BUFFET QUINTA FEIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1231, N'GASTOS EXTRAS (EVENTO CAPELA)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1233, N'GELO CUBO E ESCAMA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1234, N'DOCE DE LEITE PASTA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1235, N'FILE DE PESCADA DA TERRA', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1236, N'FRANGO DA FAZENDA', NULL, CAST(21.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1237, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1239, N'MEDALHAO DE FILE RANCHO ALEGRE', NULL, CAST(38.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1240, N'BUFFET  INFANTIL RANCHO FUNDO', NULL, CAST(12.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1241, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1242, N'FILÉ DE FRANGO AO MOLHO DE MOST. E MEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1243, N'DOCE EM COMP. DE ABACAXI DA FAZENDA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1244, N'FILE DE SURUBIM A MODA BOA LUZ', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1245, N'GELO CUBO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1246, N'ALMOÇO FREE GRUPO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1247, N'INGR - VOUCHER (1701 A 1750)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1248, N'WHISKY BUCHANAN''S GARRAFA', NULL, CAST(210.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1249, N'ZZQUEIJO NOZINHO', NULL, CAST(26.07 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1250, N'GUARDANAPO 30X31', NULL, CAST(0.77 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1251, N'QUEIJO NOZINHO 1 KG(FUNCIONÁRIO)', NULL, CAST(13.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1252, N'COCA COLA 2 LTS', NULL, CAST(6.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1253, N'GUARANA ANTARTICA ZERO 2 LTS', NULL, CAST(5.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1254, N'MANTEIGA DA FAZENDA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1255, N'CAVALGADA TRILHA DO BUFALO E DO INDIO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1256, N'COCA COLA ZERO 2 LTS', NULL, CAST(5.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1257, N'WHISKY BLACK LABEL (GARRAFA)', NULL, CAST(210.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1258, N'PORCAO DE MACAXEIRA FRITA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1259, N'CANJA DE GALINHA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1260, N'KUAT 2 LTS', NULL, CAST(5.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1261, N'CONHAQUE DE MACIEIRA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1262, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1263, N'AGUA MINERAL EVENTOS', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1264, N'ALMOÇO ( GRUPO ITABAIANA )', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1265, N'INGRESSO - GRUPO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1266, N'CARPACCIO CAPRESE', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1267, N'FUSILLI  A  LA CREME', NULL, CAST(21.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1268, N'AGUA MINERAL S/ GAS (EVENTO)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1269, N'AGUA MINERAL C/ GAS 1,5 LTS', NULL, CAST(1.93 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1270, N'AGUARDENTE XXV', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1271, N'SUNGA INFANTIL', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1272, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1273, N'INGRESSO GRUPO MEIA CRIANÇA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1274, N'REQUEIJÃO', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1275, N'QUEIJO MUSSARELA (EVENTOS)', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1276, N'MAP JANTAR BUFFET SABADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1277, N'BATATA FRITA TURBINADA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1278, N'JANTAR BUFFET DOMINGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1279, N'QUEIJO DE BUFALA (EVENTOS)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1280, N'DIVERSOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1281, N'QUEIJO FRESCAL', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1282, N'QUEIJO COALHO (EVENTOS)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1283, N'M & M CHOCOLATE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1284, N'M & M AMENDOIM', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1285, N'REFRIGERANTE FREE GRUPO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1286, N'TABUA DE FRIOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1287, N'MAP JANTAR BUFFET SEGUNDA FEIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1288, N'REFRIGERANTES 2 LTS', NULL, CAST(3.19 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1289, N'CERVEJA SCHIN', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1290, N'PAPEL ALUMINIO', NULL, CAST(1.98 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1291, N'SALIMONTES', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1292, N'COPO DESCARTAVEL 200 ML', NULL, CAST(2.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1293, N'FILÉ DE PIRAMUTABA FLANBADO COM LICOR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1294, N'PALITOS DE DENTES', NULL, CAST(0.45 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1295, N'MAP JANTAR BUFFET TERÇA FEIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1296, N'MAP JANTAR BUFFET QUARTA FEIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1297, N'SACO DE LIXO DE 50 LTS', NULL, CAST(0.10 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1298, N'FILÉ DE FRANGO AO MOLHO DE MARACUJÁ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1299, N'LUCAS BATISTA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1300, N'FILÉ DE FRANGO GRELHADO', NULL, CAST(19.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1301, N'PATO BOA LUZ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1302, N'QUEIJO MAE LINDA (FUNCIONARIO)', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1303, N'QUEIJO NOZINHO (EVENTOS)', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1304, N'FILE SALMÃO AO MOLHO DE MARACUJA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1305, N'CREME PALMITO', NULL, CAST(16.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1306, N'GRILATA DO MAR', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1307, N'QUEIJO CABACINHA (EVENTOS)', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1308, N'MALIBU', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1309, N'SALMAO A BOA LUZ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1310, N'CACHAÇA TREM DE MINAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1311, N'COQUETEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1312, N'QUEIJO C/ OREGANO (EVENTOS)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1313, N'WHISKY RED LABEL', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1314, N'WHISKY CUT SARK', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1315, N'PORCAO FAROFA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1316, N'QUINDIM', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1317, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1318, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1319, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1320, N'CODIGO LIVRE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1321, N'SOBREMESA QUINDIM', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1322, N'SOBREMESA MOUSSE DE MARACUJÁ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1323, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1324, N'SALGADO MANIX', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1326, N'BOLINHO DE PEIXE', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1328, N'MAIO INFANTIL', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1329, N'SALGADINHO PARA FESTA (CENTO)', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1330, N'BIQUINI SUQUINI', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1332, N'PROTETOR SOLAR FPS 30', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1333, N'VINHO LABRANZA TORRONTES', NULL, CAST(28.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1334, N'GRAV NO ARROZ TERM NIQUEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1335, N'GRAV NO ARROZ TERM PRATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1336, N'GRAV NO AROZ TERMI OURO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1337, N'PENNE A BOA LUZ', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1338, N'PETISCO TILÁPIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1339, N'BOLINHO  DE  QUEIJO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1340, N'PETISCO ISCA DE FRANGO C/MOLHO ROSÉ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1341, N'FILÉ COM FRITAS', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1342, N'EMPADINHA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1343, N'FRANGO AO BACON', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1345, N'POSTA DE SALMAO NA CHAPA', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1346, N'PASSEIO CARRO DE BOI', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1347, N'SHAMPOO RELAXANTE ANGELIQUE 75ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1348, N'LEITE CORPORAL RELAXANTE 75ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1349, N'GRAV EM ARROZ CORDAO EM COURO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1350, N'GRAV.EM ARROZ CORDAO DE ALGODAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1351, N'RELOGIO DESPERTADOR PERSONALIZADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1352, N'ROMEU E JULIETA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1353, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1354, N'SOBREMESA GRUPO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1355, N'QUEIJO NOZINHO INTERNO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1357, N'FRANGO AO GORGONZOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1359, N'FILÉ AO GORGONZOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1360, N'SALADA BOA LUZ', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1361, N'SALADA SIMPLES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1362, N'MAIONESE DE CAMARAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1363, N'TOALHA DE PISCINA', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1364, N'MINAS BRASIL', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1365, N'FILME POR IMAGEM 200 C/ 36 POSES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1370, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1371, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1372, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1373, N'LICOR AMARULA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1374, N'MINI COXINHA (ANIVERSARIO)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1375, N'SOBREMESA DOCE CASEIRO (POTE)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1376, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1377, N'VILA DOS MACHADOS', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1380, N'JANTAR INFANTIL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1381, N'CAIPIRINHA - CACHAÇA E LIMÃO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1382, N'CAIPIRISSIMA - LIMÃO E RUM', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1383, N'DRINK - BATIDA DE ENGENHO', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1384, N'SALADA MIX VERDE C/ EMDIVAS E PALMITO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1385, N'COQUETEL DE FRUTA S/ ALCOOL', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1386, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1387, N'CONDICIONADOR VERBENA 75ML', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1388, N'CIGARRILHA MINI COLTS ORIGINAL', NULL, CAST(14.54 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1389, N'CARPACCIO DE SURUBIM', NULL, CAST(19.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1390, N'CONSUMO (AG.1624)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1391, N'LICOR TIA MARIA', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1392, N'AGUA MINERAL C/ GAS 500ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1393, N'PETISCO BRUSQUETA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1394, N'AGUA MINERAL S/ GAS 500ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1395, N'CHAPEU REVELION 2011', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1396, N'COPOS DE VIDRO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1397, N'APARELHO DE BARBEAR (SIMPLES)', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1398, N'PRESERVATIVO C/ 03 UNI', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1399, N'SANDALIA HAVAIANA ADULTO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1400, N'ZZKIT DENTAL', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1401, N'CAMARAO A MODA DO CHEFE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1402, N'CASQUINHA DE SIRI', NULL, CAST(16.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1403, N'CONSUMO RANCHO ALEGRE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1404, N'VINHO SAUVIGNON BLANC VARIETAL', NULL, CAST(50.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1405, N'LEITE BOVINO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1408, N'DRINK PINA COLADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1409, N'RETROPROJETOR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1412, N'TV', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1413, N'PERSONAL TRAINER', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1414, N'BOLO DE ANIVERSÁRIO (GRANDE)', NULL, CAST(150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1415, N'ARRANJO DE MESA FLORAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1416, N'RECEPCIONISTA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1417, N'ENTRADA-- LULA MILANESA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1418, N'ENTRADA- CALDINHO DE POLVO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1420, N'SALGADO - PASTEL DE CAMARÃO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1422, N'PASSEIO CAVALO MANGALARGA', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1423, N'REFRIG FREE LATA GRUPO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1425, N'TELEFONE', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1427, N'CHARUTO TALVIS', NULL, CAST(44.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1428, N'ARROZ PESCADOR', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1429, N'CAFE INFANTIL', NULL, CAST(7.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1433, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1436, N'BRIGADEIRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1437, N'INGRESSO - IDOSO', NULL, CAST(17.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1438, N'JOIA DE MINAS', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1439, N'INGRESSO ADULTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1440, N'CAIPIROSKA - FRUTAS DA ESTAÇÃO E VODKA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1441, N'DRINK - FRUTAROSKA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1442, N'MAP - SUCO DE FRUTAS DA EPOCA', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1443, N'ESPETINHO DE FRANGO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1444, N'MAP - SUCO  JARRA PEQUENA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1445, N'ESPETINHO DE CARNE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1446, N'GUARANA KUAT COPO 300ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1447, N'ESPETINHO MISTO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1449, N'CARPACCIO DE FILÉ', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1450, N'PASSEIO A CAVALO PEDRA (GRUPO)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1451, N'PORTA-BUNNERS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1452, N'PETISCO - QUEIJO NOZINHO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1453, N'CAMARAO AO ALHO E SALSA', NULL, CAST(24.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1455, N'PUDIM DE LEITE CONDENSADO', NULL, CAST(5.58 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1456, N'DEST CONHAQUE COM LIMAO E MEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1458, N'COMPUTADOR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1459, N'DRINK TEQUILA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1460, N'COPIA', NULL, CAST(0.02 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1462, N'DATA SHOW', NULL, CAST(100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1463, N'DVD - RW MINE 1.4 GB SONY', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1465, N'DESTILADO GIN TONICA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1467, N'PENNE CARBONARA', NULL, CAST(22.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1468, N'FILE AO BORGNONE', NULL, CAST(34.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1470, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1471, N'FLIP SHART', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1473, N'MICRO-SYSTEM', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1474, N'CAFE - SALA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1475, N'MICROFONE', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1476, N'MICROFONE SEM FIO', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1477, N'DRINK BOA LUZ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1478, N'DRINK MARGARITA', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1480, N'KYR ROIAL', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1481, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1482, N'CAMARAO AO CATUPIRY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1483, N'SALGADO - PASTEL DE CARNE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1485, N'BUFFET RANCHO FUNDO', NULL, CAST(39.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1486, N'FEIJOADA INFANTIL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1487, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1488, N'ARRANJO DE VELAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1489, N'VINHO TAÇA - ALTO VALE  SECO', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1491, N'SALGADO FATIA DE BOLO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1493, N'CAMARAO AO VINHO DO PORTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1494, N'VISTA ALEGRE', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1499, N'LANCHE PASTEL DE SIRI', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1500, N'LANCHE PAO DE QUEIJO MINEIRO NA CHAPA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1501, N'LANCHE BATATA FRITA C/ QUEIJO OPCIONAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1502, N'PORCAO DE ARROZ A GREGA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1503, N'PORCAO FAROFA DE BANANA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1505, N'SALADA TROPICAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1506, N'PORCAO MANGA FATIADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1507, N'CACHAÇA 3 PRAIAS OURO C 700ML', NULL, CAST(37.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1508, N'CREME DE PALMITO', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1509, N'AGUARDENTE AMBURANA C/ 700 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1510, N'PAILARD RANCHO ALEGRE', NULL, CAST(29.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1511, N'CAMARAO A GREGA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1513, N'TOALHA DE ROSTO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1515, N'LEITE CLIENTE INTERNO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1517, N'CAIXA DE SOM AMPLIFICADA', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1518, N'COLCHONETES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1519, N'MAP- AGUA COM GAS', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1522, N'RECREACAO PASSEIO FAZENDA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1523, N'COIOTE', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1526, N'CONTROLE REMOTO', NULL, CAST(200.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1527, N'PREMIUM PE DE MOLEQUE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1530, N'BROCHE - LOJA COUNTRY', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1531, N'ENTRADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1532, N'BARRA DE CEREAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1534, N'TV,DVD,MICRO SISTEM', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1535, N'CAMISA FORRÓ DA SERGIPANA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1537, N'GRAV NO ARROZ TREM PRATA PROM', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1538, N'LICOR DRAMBUIE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1539, N'SANDUICHE QUEIJO QUENTE', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1541, N'CHAVE DO CHALÉ', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1542, N'TRADIÇÃO', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1543, N'SANDUICHE CHEESE BURGUER', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1545, N'SALINISSIMA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1546, N'SALGADO COXINHA DE FRANGO C/CATUPIRY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1548, N'SALADA DO VALE', NULL, CAST(18.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1549, N'RAVIOLE AO POMODORO', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1551, N'SALGADO EMPADA DE PALMITO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1554, N'SALGADO BOLINHO DE QUEIJO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1555, N'PETISCO COXA DE FRANGO EMPANADA C/CA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1557, N'SALGADO CROQUETE DE CARNE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1558, N'ENTRADA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1565, N'SALGADO - CAMARAO EMPANADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1567, N'CODIGO INUTIL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1569, N'CAFE PETIT - FOUR', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1570, N'CENTRO DE CONVENÇÕES', NULL, CAST(350.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1571, N'ZZQUEIJO DA FAZENDA', NULL, CAST(25.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1575, N'ABSORVENTE S/ ABAS', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1576, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1577, N'QUEIJO COALHO (FUNCIONARIO)', NULL, CAST(8.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1578, N'BULE  CAFE OU LEITE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1579, N'PINGO  VERDE', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1580, N'AGUARDENTE RUMO CERTO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1581, N'PAMONHA', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1582, N'QUENTAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1583, N'TORTA ( CHOCOLATE, COCO, BRIGADEIRO...)', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1585, N'BOLO DE MACAXEIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1587, N'LINGUIÇA ACEBOLADA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1588, N'CACHAÇA VALE VERDE', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1589, N'OMELETE DA FAZENDA', NULL, CAST(14.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1590, N'SOBREMESA DOCE DE ABOBORA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1591, N'MUNGUNZA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1592, N'PAÇOCA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1593, N'QUADRADINHO DE AMENDOIM', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1594, N'MILHO  COZIDO', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1596, N'QUEIJADINHA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1597, N'PIRAPORA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1598, N'BISTECA SUINA AO LIMAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1599, N'PICANHA NA CHAPA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1600, N'VINHO CARMINERE 750ML', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1604, N'ALUGUEL DE REDE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1605, N'DAY USE', NULL, CAST(29.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1606, N'COLUNINHA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1607, N'CÓDIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1608, N'CERV. 600 ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1610, N'RANCHO FUNDO 1', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1611, N'BAR DA PISCINA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1612, N'RANCHO ALEGRE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1613, N'QUIOSQUE PQ AQUATICO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1614, N'LANC PQ. AQUATICO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1615, N'BAR BOA VISTA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1616, N'LANCHONETE HARAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1618, N'RECEPÇAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1619, N'CAIXA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1620, N'DISPONÍVEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1621, N'DAY USE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1622, N'ENTRADA NO COMPLEXO', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1623, N'PASSEIO DO CAVALO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1624, N'REFRIGERANTE LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1625, N'SOBREMESA DOCE DE MAMAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1626, N'LANCHE GRUPO ANCOLOGIA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1627, N'ABSORVENTE', NULL, CAST(6.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1629, N'ROBALO AO RISOTO DE MANGA', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1630, N'MIX DE PEIXES E FRUTOS DO MAR', NULL, CAST(44.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1631, N'TIRAS DE PICANHA ACEBOLADA E FAROFA AMARELA', NULL, CAST(29.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1632, N'RECREACAO TRENZINHO VALE DINOSSAUROS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1633, N'SANDUICHE CHEESE CALABRESA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1635, N'CHAVE DO APARTAMENTO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1636, N'BUFFET RANCHO ALEGRE (GRAMA)', NULL, CAST(0.03 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1637, N'INGRESSO - GRUPO IDOSO', NULL, CAST(21.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1638, N'CHICLETE BABALOO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1639, N'MAZILE', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1640, N'ESPUMANTE DE GREVILLE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1641, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1642, N'TURISMO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1643, N'LAVANDERIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1645, N'FILÉ NA MORTADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1647, N'FILÉ DE SALMÃO', NULL, CAST(27.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1648, N'VAL FLOR', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1649, N'CAMARAO A LA CREME', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1650, N'CAFE DA MANHA PASSANTE', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1653, N'VINHO LOS CARDOS', NULL, CAST(77.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1655, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1656, N'VINHO TAÇA - ALTO VALE - SUAVE', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1657, N'REFRIGERANTE COPO 300 ML ( GRUPO RIACHAO DANTAS)', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1658, N'GALINHA GABIDELA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1659, N'CONTRA FILET', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1664, N'ZPRODUTO INEXISTENTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1665, N'VINHO DA CASA GARRAFA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1666, N'VINHO BOSCADO TINTO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1667, N'SALINENSE', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1668, N'PARATY CRUCK', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1669, N'CANJA BRASILEIRA', NULL, CAST(9.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1671, N'SALGADO-MINE ROCANBOLE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1672, N'PORCAO QUEIJO COALHO', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1675, N'COSTELA SUINA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1676, N'VINHO DONA PAULA MALBEC', NULL, CAST(117.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1678, N'VINHO MARCUS JAMES BRANCO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1679, N'CHANDON BRUT BABY 187ML (BR)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1681, N'LICOR FRANGELICO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1685, N'CEBOLA EM CONSERVA P', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1686, N'CEBOLA EM CONSERVA G', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1687, N'SOBREMESA COMPOTA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1688, N'POSTAL BOA LUZ', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1689, N'VINHO FINCA TORRONTES', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1690, N'SOBREMESA TORTA GELADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1691, N'SOPA DE LEGUMES', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1692, N'SALAO DE EVENTOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1693, N'BUFFET JARDIM DAS LARANJEIRAS', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1694, N'R. FUNDO 3', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1695, N'SOBREMESA SORVETE COM FRUTAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1696, N'SUNGA DE PRAIA ADULTO LARGA', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1697, N'CREMOSINHO NO PALITO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1699, N'NOTEBOOK COM LEITURA DVD', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1703, N'TERRA FORTE', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1705, N'SOBREMESA COCADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1706, N'R.FUNDO 4', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1707, N'BOLO DE CENOURA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1708, N'ESPETINHOS DIVERSOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1710, N'PASSEIO GRUPO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1712, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1713, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1714, N'COFFE-BREAK (GRUPO ART LINE)', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1715, N'ISCA DE PEIXE', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1716, N'R. FUNDO 2', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1718, N'QUINELES DE BACALHAU', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1719, N'QUINELES DE MACACHEIRA C/ CHARQUE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1720, N'CUBOS DE QUEIJO BUFALO TEMPERADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1721, N'SARAPATEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1722, N'ESPUMANTE VEUVE CLICQUOT ROSE', NULL, CAST(298.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1723, N'VINHO PAMPILHO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1724, N'SANGUE DE VIRGEM', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1727, N'DAY USE 25/06/05', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1728, N'KIBE', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1729, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1730, N'TAXA EXTRA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1731, N'MINAS DE OURO', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1732, N'CHICLETE TRIDENT', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1733, N'VODKA ORLOFF', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1734, N'DINAMITE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1735, N'ESPANHOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1738, N'PORTA-RETRATO', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1739, N'RECREACAO TRENZINHO NOTURNO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1740, N'SANDUICHE - CHURRASCO DA FAZENDA', NULL, CAST(13.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1741, N'LICOR CASEIRO (PRODUÇAO DA CASA)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1743, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1744, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1745, N'ESPETINHO DIVERSOS C/ ACOMPANHAMENTOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1746, N'SOBREMESA MOUSSE DE CHOCOLATE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1747, N'TOALHA DE BANHO ', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1748, N'BUMBA MEU BOI', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1750, N'CITRUS BUCAL COOL', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1751, N'SALADA CAMPESTRE', NULL, CAST(17.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1752, N'CREME RACHEL', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1753, N'CIGARRO DERBY', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1754, N'CIGARRO FREE', NULL, CAST(6.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1755, N'DERBY', NULL, CAST(2.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1756, N'CIGARRO HOLLYOOD', NULL, CAST(5.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1757, N'VARETA DE CAVALO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1758, N'PORTA FOSFORO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1759, N'COBRE BOLO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1760, N'VINHO FINCA DE ALTURA TORRENTES', NULL, CAST(49.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1761, N'CAMISA BOA LUZ ADULTO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1763, N'CAMISA  INFANTIL', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1764, N'SINOS MENSAGEIROS (MEDIO)', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1765, N'SINOS MENSAGEIROS (GRANDE)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1766, N'PILÃO ( PEQUENO )', NULL, CAST(15.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1767, N'PILÃO ( MEDIO )', NULL, CAST(25.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1768, N'PILÃO (GRANDE)', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1769, N'PENTE DE MADEIRA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1770, N'PULSEIRA VARIADA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1771, N'PRENDEDOR CANGA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1772, N'PLACA DE JARDIM (PEQUENA)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1773, N'PLACA DE JARDIM (GRANDE)', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1774, N'VIOLÃO INFANTIL', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1775, N'MOBILE', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1776, N'QUIOSQUE DE COCO OU MADEIRA (GRANDE)', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1777, N'QUIOSQUE DE COCO OU MADEIRA (MEDIO)', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1778, N'QUEBRA CABEÇAS DE MADEIRA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1779, N'JOGO RESTA 1 DE MADEIRA (PEQUENO)', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1780, N'JOGO RESTA 1 DE MADEIRA (GRANDE)', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1781, N'PORTA CHAVES (CABEÇA DE CAVALO)', NULL, CAST(70.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1782, N'PORTA CHAVE PEIXE SIMPLES', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1783, N'APARELHO DE BARBEAR ESPECIAL', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1784, N'COLA SUPER BOND', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1785, N'CREME DENTAL', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1786, N'SUNGA ADULTO FINA', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1787, N'ARARA TETO (MADEIRA PEQUENA)', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1788, N'ARARA TETO (MADEIRA GRANDE)', NULL, CAST(58.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1789, N'CARRANCAS MEDIA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1790, N'CARRANCAS GRANDE', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1791, N'ELEFANTE DE MADEIRA (MEDIO)', NULL, CAST(26.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1792, N'ELEFANTE DE MADEIRA (GRANDE)', NULL, CAST(70.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1793, N'BONECA NEGA MALUCA (BARRO MEDIA)', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1794, N'TUCANO DE MADEIRA (MEDIO)', NULL, CAST(19.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1795, N'TUCANO DE MADEIRA (GRANDE)', NULL, CAST(25.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1796, N'PROTETOR SOLAR FPS 15', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1797, N'BOLSA CRUA (GRANDE)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1798, N'BOBY LONG (BISQUI)', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1799, N'BOBY SURF (BISQUI)', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1800, N'BOBY CINZEIRO (BISQUI)', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1801, N'TURMA DO CHAVES (UNIDADE)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1802, N'PORTA INCENSO BOBY', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1803, N'DAMA BISQUI (GRANDE)', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1804, N'DAMA BISQUI PEQUENA)', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1805, N'SAPA (BISQUI)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1806, N'DONDOCA NEGA MALUCA (PEQUENA)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1807, N'DONDOCA NEGA MALUCA (MEDIA)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1808, N'TIGELA DE MADEIRA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1809, N'KIT CAIPIRINHA', NULL, CAST(33.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1810, N'ESCRAVO MARIA BONITA', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1811, N'FARINHEIRA (MADEIRA)', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1812, N'ACUCAREIRA (MADEIRA)', NULL, CAST(20.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1813, N'CORDAO MENINO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1814, N'PETECA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1815, N'TALHA DE MADEIRA (PEQUENA)', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1816, N'TALHA DE MADEIRA (GRANDE)', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1817, N'PETISQUEIRA (3 PEÇAS)', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1818, N'PORTA GUARDANAPOS (PEIXE)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1819, N'REDE CASAL', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1820, N'REDE CADEIRA', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1821, N'SANTA DE MADEIRA', NULL, CAST(48.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1822, N'MAQUINA DESCARTAVEL', NULL, CAST(48.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1823, N'CHA DIVERSOS', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1824, N'CAFE COLONIAL', NULL, CAST(24.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1825, N'PETISQUEIRA DE TUCANO (MADEIRA)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1826, N'TRIO DE PEIXE MADEIRA (GRANDE)', NULL, CAST(43.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1827, N'PORTA CANETA COCO ARARA', NULL, CAST(6.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1828, N'VELHO NORDESTINO (MADEIRA)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1829, N'SOPA (BISQUI)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1830, N'MENSAGEIRO (PEQUENO)', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1831, N'MENSAGEIRO (MEDIO)', NULL, CAST(28.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1832, N'MENSAGEIRO (GRANDE)', NULL, CAST(38.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1833, N'CUMBUCA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1834, N'CAJU DE BARRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1835, N'BIQUINI ADULTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1836, N'TALHA DE MADEIRA (MEDIA)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1837, N'APRESENTAÇÃO MUSICAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1838, N'CESAR SALAD', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1839, N'SALADA DE LULA', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1840, N'ARROZ DE POLVO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1841, N'ARROZ DE BACALHAU', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1842, N'MOQUEQUINHA', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1843, N'CALÇA CAPOEIRA (ADULTO)', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1844, N'TALHA BICHO', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1845, N'CRISTO DE MADEIRA (PEQUENO)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1846, N'CRISTO DE MADEIRA (MEDIO)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1847, N'CRISTO DE MADEIRA (GRANDE)', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1848, N'FILME KODAK 100/36', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1849, N'FILME KODAK 400/36', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1850, N'LAPIS DE COR', NULL, CAST(8.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1851, N'SANTA CEIA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1852, N'VESTIDO FILÉ (INFANTIL)', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1853, N'VESTIDO FILÉ (ADULTO)', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1854, N'TELHA BARRO (GRANDE)', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1855, N'VESTIDO INDIANO (CROCHÊ)', NULL, CAST(88.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1856, N'SABONETE LUXO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1857, N'TOALHA DE BANHO', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1858, N'BOIA REDONDA (GRANDE)', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1859, N'SUCO COPO DIVERSOS SABORES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1860, N'DAY USE - AUT GERENTE', NULL, CAST(34.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1861, N'SANDUICHE BAURÚ COM QUEIJO DA FAZENDA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1862, N'TRENZINHO GRUPO ( VALE/MUNDO )', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1863, N'DROPS HALLS', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1864, N'DROPS VITA C', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1865, N'CHICLETE FLICS', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1866, N'BUBBALOO', NULL, CAST(0.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1867, N'CHICLETE TRIDENT', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1868, N'GOMA DE MASCAR CHICLETS STICK', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1869, N'CHICLETE SPISH', NULL, CAST(0.10 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1870, N'RESMA DE PAPEL A4', NULL, CAST(27.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1871, N'BUFFET', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1872, N'ALUGUEL DE ESPAÇO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1873, N'ALUGUEL DE SOM E EQUIPAMENTOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1874, N'ALUGUEL DE CADEIRAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1875, N'GARRAFA DE CAFÉ', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1876, N'QUEIJO MUSSARELA (FUNCIONARIO)', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1877, N'QUEIJO BUFALA (FUNCIONARIO)', NULL, CAST(9.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1878, N'VINHO PENEDO CABERNET SAUVIGNON', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1879, N'VINHO PENEDO BORGES CHARDONNAY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1880, N'ESPUMANTE RIO SOL ROSE', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1881, N'VINHO ADOLFO LONA BRANCO NATURAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1882, N'MACAXEIRA', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1883, N'CHEETOS QUEIJO CHEDDAR', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1884, N'ESCALOPE DEFILÉ MIGNON', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1885, N'ESCONDIDINHO DE CARNE SECA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1886, N'RODIZIO DE PIZZA (INFANTIL)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1887, N'BUFETT DAS NAÇÕES (INFANTIL)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1888, N'SORVETE SEM PARAR', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1889, N'AGUARDENTE 21', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1890, N'PORÇOES DE SALGADOS', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1891, N'AGUA DE COCO', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1892, N'COFFE BREAK RANCHO ALEGRE', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1893, N'AGUARDENTE GERMANA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1894, N'PRATO DE QUEIJO C/ AZEITONA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1895, N'TRANSFER', NULL, CAST(136.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1896, N'GUARANA ANTARTICA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1897, N'CEIA REVEILLON', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1898, N'2ª VIA DO CLUBE', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1899, N'FAZENDINHA SHOPPING RIOMAR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1900, N'CERV. BRAHMA FRESH LATA', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1901, N'TAXA DE VARA DE PESCA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1902, N'COCA-COLA PET', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1903, N'ESFIRRA DE CARNE', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1904, N'AGUA MINERAL', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1905, N'CALDOS E CREMES', NULL, CAST(28.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1906, N'PICOLE GAROTO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1907, N'COXINHA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1908, N'CHAPEU COUTRY BOA LUZ', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1909, N'MANTEIGA 700GR', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1910, N'TRANSFER', NULL, CAST(200.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1911, N'TAÇA DE CASA VALDUGA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1912, N'RUM MONTILA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1913, N'PASSEIO DA GAMELEIRA (RECREAÇAO)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1914, N'ESPUMANTE GLAMOUR ROSE', NULL, CAST(78.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1915, N'IMA DIVERSOS', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1916, N'PORTA GUARDANAPO (CAJU)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1917, N'SABONETE ROSA E JASMIM', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1918, N'CHOCOLATE', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1919, N'SUGESTAO 1 (AVES)', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1920, N'VINHO MONTES ALPHA CAB.SAUVIGNON', NULL, CAST(210.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1921, N'VINHO CASA MIRIAM RESERVA CAB. SAUV', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1922, N'VINHO ALAMOS BONARDA 2008', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1923, N'VINHO UXNAL CABERNET SAUVIGNON', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1924, N'VINHO CATENA MALBEC 2007', NULL, CAST(145.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1925, N'VINHO MONTEPULCCIANO D''ABRUZO', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1926, N'ESPUMANTE CASA VALDUGA ARTE BRUT 2008', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1927, N'ESPUMANTE RIO SOL BURT', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1928, N'PROSECO A. ADAMI 750 ML', NULL, CAST(130.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1929, N'VINHO GILLMORE CABERNET SAUV', NULL, CAST(144.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1930, N'VINHO CASA MIRIAM RESERVA MALBEC', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1931, N'VINHO VILLA MONTES SAUVIGNON BLANC', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1932, N'VINHO TORRONTES EL CIPRES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1933, N'VINHO ALAMOS VIOGNIER', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1934, N'VINHO ADEGA DO VALE CAB. SAUV', NULL, CAST(53.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1935, N'VINHO RIO SOL CABERNET SAUV TINTO', NULL, CAST(53.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1936, N'VINHO CARMENE VARIETAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1937, N'SANTA ALVARA SAUVIGNON BLANC ,', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1938, N'VINHO RIO SOL RESERVA', NULL, CAST(73.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1939, N'QUEIJO COALHO C/ OREGANO ( PEÇA )', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1940, N'MACULELÉ (PEQUENO)', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1941, N'CHAPEU MADAME', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1942, N'QUIOSQUE COCO PORTA CANETA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1943, N'CAMISA PINTADA', NULL, CAST(19.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1944, N'BOLSA PALHA SIMPLES', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1945, N'BOLSA PALHA FORRADA', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1946, N'BONE BRIM BORDADO', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1947, N'BATA BRANCA', NULL, CAST(48.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1948, N'SAIA CURTA FINA', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1949, N'BOLO DE ANIVERSARIO (PEQUENO)', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1950, N'BOLO DE ANIVERSARIO (MEDIO)', NULL, CAST(70.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1951, N'DOCINHOS VARIADOS (CENTO)', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1952, N'SALGADINHO PARA FESTA (MEIO CENTO)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1953, N'DOCES DA FAZENDA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1954, N'DOCE DE LEITE COM CHOCOLATE 1 KG', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1955, N'DOCE AMBROSIA DAY USE C/ 2 KG', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1956, N'DOCE CASEIRO C/700GR', NULL, CAST(13.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1957, N'QUEIJO CABACINHA (UNIDADE)', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1958, N'VINHO MONTE ANDINO CARBENERE', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1959, N'BUFFET GRUPO BNB', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1960, N'REFRIGERANTE LATA (DIV)  GRUPO SESC', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1961, N'DAY USE - ECO PARQUE IDOSO (QUI/SEX)', NULL, CAST(24.95 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1962, N'DOCES VARIADOS 700 G (CLIENTE INTERNO)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1963, N'ESPUMANTE VEUVE ELISE - LANDIRRAS 750 ML', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1965, N'VINHO CASA VALDUGA BLUSH BRUT 2006', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1966, N'VINHO CASA VALDUGA PREMIUM', NULL, CAST(58.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1967, N'VINHO ENCIERRA 2006', NULL, CAST(197.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1968, N'VINHO ALAMOS VIOGNIER 2007', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1969, N'VINHO MONTES SAUV. BLANC 2008', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1970, N'RIO SOL CABERNET/SYRAH', NULL, CAST(47.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1971, N'VINHO GILLMORE MERLOT 750ML', NULL, CAST(144.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1972, N'VINHO MIOLO TERRA NOVA RESERVA CABERNET', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1973, N'VINHO CASA VALDUGA TINTO ARTE TRIVARIETAL 2008', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1974, N'VINHO EL CIPRES MALBEC 2007', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1975, N'ESPUMANTE UXMAL CHARDONNAY', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1976, N'VINHO GLAMOUR BRUT', NULL, CAST(83.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1977, N'VINHO FINCA LA CELIA RESERVA FRANC 2004', NULL, CAST(68.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1978, N'VINHO ABEL PINCHARD 2007', NULL, CAST(69.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1979, N'MIOLO SELECAO CHADORNNAY/RIESL (TAÇA)', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1980, N'TANTEHUE CHARDONNAY 2007 (TAÇA)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1981, N'LEON DE TARAPACA CHARDONNAY (TAÇA)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1982, N'MIOLO SELECAO CABERNET/MERLOT (TAÇA)', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1983, N'VINHO ALAMOS MALBEC (TAÇA)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1984, N'LOS VASCOS CABERNET SAUVIGNON (TAÇA)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1985, N'CHATEAU LACAVE MOSCATO (TAÇA)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1986, N'VINHO DO PORTO EXTRA DRY WHITE (TAÇA)', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1987, N'MANTEIGA PARA FUNCIONÁRIO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1988, N'CHICLETE CHICLETS', NULL, CAST(0.25 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1989, N'WHISKY BLACK & WHITE (GARRAFA)', NULL, CAST(120.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1990, N'GARRAFA DE AREIA (MD)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1991, N'VINHO DO PORTO', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1992, N'BUFFET GRUPO SAO JOSE', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1993, N'BEN 10 AVENTURA ALIEN FORCE', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1994, N'BEBIDA NAO ALCOOLICA (GRUPO SAO JOSE)', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1995, N'CAFÉ DA MANHA PASSANTE', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1996, N'FILE DE SALMÃO', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1997, N'LEGUMES NO VAPOR', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1998, N'MACAXEIRA FRITA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (1999, N'PORÇÃO BATATA FRITA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2000, N'SALGADINHOS VARIADOS (PORÇÃO C/ 06 UNIDADE)', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2001, N'TODYNHO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2002, N'PRATO EXECUTIVO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2003, N'PILHA ALCALINA PALITO AAA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2004, N'FOSFORO CX C/ UND', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2005, N'PROETOR SOLAR FPS 40', NULL, NULL)
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2006, N'PROTETOR SOLAR FPS 40', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2007, N'PROTETOR SOLAR  FPS 40', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2008, N'PROTETOR DIARIO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2009, N'XUXA P/ CABELO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2010, N'XUXA P/ CABELO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2011, N'XUXA', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2012, N'PROTETOR SOLAR FPS 40', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2013, N'AGUARDENTE SABOR DA CANA 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2014, N'AGUARDENTE VALIOSA 600 ML', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2015, N'AGUARDENTE TABUA FLOR DE PRATA C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2016, N'AGUARDENTE TERRA DE OURO C/ 600 ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2017, N'AGUARDENTE TERRA DE OURO PRATA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2018, N'AGUARDENTE SABOR DA CANA C/ 600 ML', NULL, CAST(1.60 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2019, N'AGUARDENTE ARTISTA C/ 600 ML', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2020, N'AGUARDENTE CHICO MINEIRO PRATA C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2021, N'AGUARDENTE ERVA DOCE C/ 600 ML', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2022, N'AGUARDENTE FLOR DE SALINAS C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2023, N'AGUARDENTE HANAVILHANA C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2024, N'AGUARDENTE LUA CHEIA C/ 600 ML', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2025, N'AGUARDENTE MEIA LUA PRATA C/ 600 ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2026, N'AGUARDENTE NATIVA DE SALINAS C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2027, N'AGUARDENTE PALADAR C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2028, N'AGUARDENTE SABOR DE MINAS C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2029, N'AGUARDENTE SOBRADINHA C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2030, N'AGUARDENTE TABUA FLOR DE OURO C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2031, N'CACHAÇA XINGÓ E BOA LUZ (DOSE)', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2032, N'HAPPY HOUR', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2033, N'APRESENTACAO CULTURAL', NULL, CAST(700.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2034, N'REFORMA PISTA POUSO', NULL, NULL)
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2035, N'SERVICO DE SALA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2036, N'AGUARDENTE CUBANA C/ 700 ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2037, N'AGUARDENTE BRINCO DE OURO', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2038, N'AGUARDENTE BOAZINHA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2039, N'AGUARDENTE BELEZA DE MINAS C/ 600ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2040, N'AGUARDENTE BEIJA FLOR C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2041, N'AGUARDENTE MARIA DA CRUZ 700 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2042, N'AGUARDENTE ASA BRANCA C/ 700 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2043, N'AGUARDENTE TERRA DE MINAS', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2044, N'AGUARDENTE CANARDENTE C/ 600 ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2045, N'AGUARDENTE SERRA DAS ALMAS C/ 700 ML', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2046, N'PICOLE CREMOSINHO', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2047, N'AGUARDENTE SELETA C/ 600 ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2048, N'AGUARDENTE SALIMEL C/ 600ML', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2049, N'AGUARDENTE SALINENSE C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2050, N'AGUARDENTE SALINENSE C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2051, N'AGUARDENTE SALINAS C/ 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2052, N'AGUARDENTE SALICANA 600 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2053, N'AGUARDENTE BRINCO DE PRATA 600 ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2054, N'CINE PIPOCA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2055, N'REFRIGERANTE COPO (GRUPO)', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2056, N'CARNE DO SOL COM PIRAO DE LEITE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2057, N'SALADA', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2058, N'DOCES PARA FESTA - MEIO CENTO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2059, N'PICOLE 001', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2060, N'AGUA TONICA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2061, N'TORTA DE BULGARA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2062, N'TRINCA DE CHOCOLATE', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2063, N'PAVE DE CHOCOLATE E CUPUAÇU', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2064, N'MARGARITA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2065, N'BLOODY MARY', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2066, N'DRINK ALEXANDER', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2067, N'GIN TONICA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2068, N'PINA COLADA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2069, N'DAIKIRI', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2070, N'KIR ROYALE', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2071, N'SUNRISER', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2072, N'ARROZ COM CASTANHA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2073, N'CARNE DE SOL DA FAZENDA', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2074, N'MIX DE CASTANHAS', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2075, N'ZZQUEIJO DE CABRA NO AZEITE COM TORRADA', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2076, N'WHISKY JOHNNIE WALKER SWING', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2077, N'CARNEIRO ENSOPADO', NULL, CAST(14.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2078, N'COSTELINHA COM QUIABO', NULL, CAST(10.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2079, N'EMPADÃO DE FRANGO', NULL, CAST(14.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2080, N'GALINHA CAIPIRA COM MILHO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2081, N'LEITÃO A PURURUCA', NULL, CAST(93.68 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2082, N'MARIA BONITA E LAMPIÃO', NULL, CAST(15.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2083, N'ROBALO COM AGRIÃO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2084, N'RABADA COM AGRIÃO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2085, N'CARNE SECA COM NATA', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2086, N'OVOS FRITO/COZIDO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2087, N'COSTELINHA COM MAMÃO VERDE', NULL, CAST(19.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2088, N'DOBRADINHA COM FEIJÃO BRANCO', NULL, CAST(7.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2089, N'FRANGO AO CREME DE ERVAS', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2090, N'CAFE DA MANHA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2091, N'BEBEDOURO COM GARAFAO DE 20 LTS', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2092, N'GARRAFA TERMICA DE LEITE 2 LTS', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2093, N'COFFEE BREAK', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2094, N'CERV. LATA 350ML (COMPRAS NET)', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2095, N'REFIL AGUA MINERAL 20 LTS', NULL, NULL)
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2096, N'PORÇÃO DE AZEITONAS', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2097, N'COCKTAIL DE FRUTAS', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2098, N'AGUA MINERAL COM E SEM GAS (COMPRAS NET)', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2099, N'REFRIGERANTE PET 600ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2100, N'REFRIGERANTE COPO C/300ML', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2101, N'PIPOCA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2102, N'CHURROS', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2103, N'ALGODAO DOCE', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2104, N'PIZZA BROTINHO', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2105, N'CACHORRO QUENTE', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2106, N'CREPE', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2107, N'CHOPP BRAHMA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2108, N'REQUEIJÃO  P/ FUNCIONARIO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2109, N'PEIXE TUCUNARE - PESCADO (100 GR)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2110, N'PEIXE TUCUNARE - PREPARADO (100 GR)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2111, N'PEIXE PESCADO (LIMPO)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2112, N'PEIXE FRITO (APAIRI/TUCUNARE)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2113, N'PASSEIO DE HELICOPTERO (PESSOA)', NULL, CAST(69.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2114, N'PASSEIO HELICOPTERO 30 MINT', NULL, CAST(450.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2115, N'SALADA CRUA RALADA', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2116, N'TABULE', NULL, CAST(6.66 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2117, N'MIX DE FOLHAS COM TOMATE CEREJA', NULL, CAST(13.96 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2118, N'PIRÃO DE CAPÃO', NULL, CAST(8.69 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2119, N'SURUBIM AO MOLHO DE ERVAS', NULL, CAST(27.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2120, N'ESCONDIDINHO DE CAMARÃO COM MACAXEIRA', NULL, CAST(24.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2121, N'POLENTA CAIPIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2122, N'POLENTA COM QUEIJO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2123, N'MACAXEIRA COM QUEIJO', NULL, CAST(5.63 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2124, N'SALADA DE FEIJÃO FRADINHO', NULL, CAST(8.39 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2125, N'ABOBRINHA E BERINJELAS ASSADAS', NULL, CAST(4.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2126, N'SALADA DE LEGUMES COZIDOS', NULL, CAST(5.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2127, N'BODE NO ABACAXI', NULL, CAST(37.73 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2128, N'FRANGO SURPRESA COM QUEIJO DA FAZENDA', NULL, CAST(9.11 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2129, N'FILET DE TILAPIA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2130, N'SADALA CAPRESE', NULL, CAST(21.84 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2131, N'SALADA DE BATATAS', NULL, CAST(1.45 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2132, N'COUVE CRUA COM BACOM', NULL, CAST(20.26 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2133, N'VINAGRETE', NULL, CAST(6.05 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2134, N'ABOBRINHA EMPANADA', NULL, CAST(5.47 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2135, N'FAROFA RICA', NULL, CAST(8.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2136, N'PIRÃO DE LEITE', NULL, CAST(10.64 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2137, N'ANGU', NULL, CAST(0.89 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2138, N'FEIJÃO TROPEIRO', NULL, CAST(6.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2139, N'PURÊ DE ABÓBORA', NULL, CAST(1.63 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2140, N'ARROZ BRANCO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2141, N'TUTU DE FEIJÃO', NULL, CAST(5.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2142, N'FEIJOADA', NULL, CAST(53.64 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2143, N'FAROFA DE CUSCUZ', NULL, CAST(3.38 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2144, N'MEXIDÃO', NULL, CAST(16.15 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2145, N'MUQUECA DE PEIXE', NULL, CAST(36.25 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2146, N'BOBO DE CAMARÃO', NULL, CAST(49.86 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2147, N'CALDO DE MOCOTÓ', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2148, N'BOLO NEGA MALUCA', NULL, CAST(3.92 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2149, N'CARTOLA', NULL, CAST(9.64 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2150, N'MUSSE DE MARACUJÁ', NULL, CAST(11.63 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2151, N'DOCE DE ABÓBORA EM PEDAÇOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2152, N'MOUSSE DE MARACUJA', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2153, N'TORTA DE LIMÃO', NULL, CAST(14.77 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2154, N'CARNE SECA COM NATA', NULL, CAST(14.88 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2155, N'LAGARTO AO MOLHO DE LARANJA RECHEADO COM PRESUNTO', NULL, CAST(32.89 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2156, N'LÍNGUA AO MOLHO MADEIRA', NULL, CAST(45.56 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2157, N'SALADA COM FEIJÃO FRADINHO', NULL, CAST(8.39 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2158, N'LENÇOS UMIDECIDOS', NULL, CAST(12.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2159, N'SHAMPOO JOHNSORNS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2160, N'RELÓGIO DISPERTADOR', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2161, N'REFRIGERANTES LATA À VENCER', NULL, CAST(0.60 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2162, N'PORÇÃO DE FRIOS: QUEIJO, SALAME, AZEITONA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2163, N'PIMENTAO (KG) FUNCIONARIO', NULL, NULL)
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2164, N'QUIABO (KG) VENDA FUNCIONARIO', NULL, CAST(1.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2165, N'VOUCHER ALIMENTACAO', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2166, N'COFFE BREAK RANCHITO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2167, N'BONE BRIM FUNCIONARIO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2168, N'CHÁ NESTEA 350ML', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2169, N'DAY USE - CLUBE DA FAZENDA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2170, N'TIROLEZA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2171, N'CAVA NEGRA CHARDONAY ( TAÇA)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2172, N'QUEIJO COALHO C/ OREGANO FUNCIONARIO', NULL, NULL)
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2173, N'CERV. ANTARTICA LONG NECK 355ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2174, N'MANTEIGA P/ FUNCIONARIO KG', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2175, N'VINHO LANDELIA MERLOT', NULL, CAST(93.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2176, N'PEIXE TAMBAQUI -PESCADO (100GR)', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2177, N'TRENZINHO INSETO/DINO/LARANJEIRAS (GRUPO)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2178, N'PASSEIO CIDADE LARANJEIRAS(GRUPO)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2179, N'PASSEIO A CAVALO GRUTA (GRUPO)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2180, N'AGUARDENTE FLOR DE SALINAS', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2181, N'PORÇÃO DE FEIJÃO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2182, N'CAFÉ COLONIAL', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2183, N'JANTAR (ESTAÇÃO DE CALDOS E GRELHADOS) ADULTO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2184, N'CERV. SKOL LONG NECK 355ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2185, N'BUFFET', NULL, CAST(29.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2186, N'TICKET RECREACAO (R$3,00)', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2187, N'TICKET RECREACAO (R$5,00)', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2188, N'TICKET RECREACAO (R$10,00)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2189, N'TICKET RECREACAO (R$15,00)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2190, N'TICKET RECREACAO (R$20,00)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2191, N'TICKET RECREACAO (R$40,00)', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2192, N'PASSAPORTE FAMILIA/AMIGOS', NULL, CAST(21.75 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2193, N'INGRESSO INDIVIDUAL ANTECIPADO', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2194, N'CAMISETAS C/ FOTOS INFANTIL', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2195, N'BUFFET DIA DOS NAMORADOS', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2196, N'ALMOCO SEXTANEJA', NULL, CAST(24.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2197, N'HAPY HOUR SEXTANEJA', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2198, N'CAMARÕES NA CHAPA', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2199, N'DOCES DA FAZENDA VARIADOS SEXTANEJA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2200, N'CAMISA BOA LUZ  (INFANTIL)', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2201, N'CAMISA BOA LUZ  (ADULTO)', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2202, N'CAMISA AMARELA (FUNCIONARIO)', NULL, CAST(12.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2203, N'CAMISA C/ SUA FOTOS ADULTA', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2204, N'ZSORVETE DUBOM', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2205, N'FOGOS DE R$3,00', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2206, N'FOGOS DE R$5,00', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2207, N'FOGOS DE R$7,00', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2208, N'FOGOS DE R$8,00', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2209, N'FOGOS DE R$15,00', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2210, N'FOGOS DE R$20,00', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2211, N'FOGOS DE R$25,00', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2212, N'FOGOS DE R$30,00', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2213, N'FOGOS DE R$40,00', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2214, N'SAO JOAO DA BOA LUZ (CRIANCA 06 A 12)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2215, N'BOLINHO DE TILAPIA C/06 UND.', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2216, N'ZZZSPRITE ZERO LATA 350ML', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2217, N'CONHAQUE MACIEIRA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2218, N'GELEIA DA FAZENDA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2219, N'ISCA DE FRANGO', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2220, N'DOCE CASEIRO C/3OO GR', NULL, CAST(6.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2221, N'REFLEXOLOGIA PODAL', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2222, N'VINHO DADIVAS MOSCATEL', NULL, CAST(45.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2223, N'REFLEXOLOGIA', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2224, N'CROQUETE', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2225, N'EMPADA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2226, N'PASTEL DE FORNO FRANGO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2227, N'CHOKITO', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2228, N'ZZBOLINHA DE NESCAU', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2229, N'WHISKYS IMPORTADO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2230, N'CHICO MINEIRO 300ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2231, N'COUVERT PETISCO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2232, N'VINHO DADIVAS CHARDONNAY', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2233, N'VINHO LIDIO CARRARO SINGULAR NEBBIOLO', NULL, CAST(220.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2234, N'QUEIJO CABACINHA (FUNCIONARIO)', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2235, N'GOIABADA CASCÃO( FUNCIONARIO )', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2236, N'CONE NESTLE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2237, N'CREME DE GIRIMUM LEGUMES', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2238, N'AMAMENTAÇAO DE CABRITINHA (MAMADEIRA)', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2239, N'BUFFET INFANTIL (EVENTOS)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2240, N'BOLINHO DE CHARQUE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2241, N'SAO JOAO DA BOA LUZ (ADULTO)', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2242, N'SAO JOAO DA BOA LUZ (CRIANCA DE 0 A 6)', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2243, N'CONHAQUE MACIEIRA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2244, N'PASSAPORTE FAMILIA AMIGOS (BALCAO)', NULL, CAST(26.25 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2245, N'CAIPIROSKA', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2246, N'PEIXE FRITO ACOMP (TAMBAQUI/TILAPIA)', NULL, CAST(29.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2247, N'POSTA DE PEIXE FRITO', NULL, CAST(33.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2248, N'MEIA PORCAO DE BATATA FRITAS', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2249, N'MEIA PORCAO DE MACAXEIRA FRITA', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2250, N'PASSEIO A CAVALO (GRUTA DA PEDRA FURADA)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2251, N'DOCE DA FAZENDA 300 GR FUNCIONARIO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2252, N'DOCE DA FAZENDA POTE 700 GR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2253, N'LICOR DA FAZENDA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2254, N'CAVALGADA GRUTA DA PEDRA FURADA (NOTURNO)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2255, N'LEGUMES REFOGADOS NA MANTEIGA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2256, N'LANCHE BAGUETE DE PEITO DE PERU', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2257, N'CONHECENDO A FAZENDA (CHARRETE/TRENZINHO)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2258, N'VINHO DADIVAS MERLOT CABERNET 750 ML', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2259, N'PICOLE MUNDY', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2260, N'PICOLE BATOM', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2261, N'PICOLE LA FRUTA', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2262, N'PICOLE COCO LA FRUTA', NULL, CAST(2.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2263, N'CREME DE ABOBORA COM CARNE SECA DESFIADA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2264, N'SANDUICHE NATURAL DE ATUM( ROOM SERV. )', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2265, N'MINI CHARRETE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2266, N'AQUARIUS P/ FUNCIONÁRIOS', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2267, N'COFFE BREAK FAZENDA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2268, N'GUARANA ZERO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2269, N'CEIA NATAL', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2270, N'PEPINO PARA FUNCONARIO', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2271, N'PREMIUM (MIX, FLOCOS, NAPOLITANO)', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2272, N'BALDINHO BOA LUZ', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2273, N'PICOLE 002', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2274, N'ZZQUEIJO APERITIVO DE BUFALA', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2275, N'PIQUENIQUE DA GAMELEIRA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2276, N'COPINHO DE LEMBRANÇA ARACAJU', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2277, N'ACARAJE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2278, N'DOCES VARIADOS PORÇAO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2279, N'LICOR CASEIRO (FUNCIONARIO)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2280, N'CERVEJA SEM ALCOOL', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2281, N'CONTONETE JOHNSON', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2282, N'CAVALGADA P/ LARANJEIRAS (DIURNO)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2283, N'PIRULITO POP', NULL, CAST(0.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2284, N'BALAS DIVERSAS', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2285, N'CHICLETE BIG BIG', NULL, CAST(0.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2286, N'CHEETOS', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2287, N'BOLINHO DE CHOCOLATE BAUDUCO', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2288, N'DAY USE - ECO PARQUE (QUI/SEX)', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2289, N'WHISKYS NACIONAL', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2290, N'VINHO DADIVAS BRUT', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2291, N'VINHO DADIVAS ROSE', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2292, N'QUEIJO DE CABRA 500GR', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2293, N'MINI SANDUICHE', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2294, N'REFRIGERANTE COPO 300 ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2295, N'QUEIJO JERSEY ( FUNCIONÁRIO )', NULL, CAST(11.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2296, N'PICOLE 003', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2297, N'CREME DE CEBOLA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2298, N'CAMARAO AO ALHO E OLEO', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2299, N'COFFEN BREAK JARDINS DA LARANJEIRAS', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2300, N'H2O', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2301, N'COLONIA DE FERIAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2302, N'BERINGELA PARA FUNCIONARIO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2303, N'QUEIJO JERSEY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2304, N'PICOLE ALPINO NESTLE', NULL, CAST(3.25 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2305, N'VINHO GRANDE VINDIMA MERLOT', NULL, CAST(110.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2306, N'VINHO ELOS TOURIGA NACIONAL TANNAT', NULL, CAST(79.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2307, N'DOCE DA FAZENDA COM QUEIJO DA FAZENDA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2308, N'PROJETO ESCOLA (LANCHES)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2309, N'VINHO ELOS MALBEC CABERNET', NULL, CAST(79.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2310, N'SANDUICHE NATURAL DE SALPIÇAO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2311, N'RODÍZIO DE PIZZA', NULL, CAST(28.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2312, N'SALGADOS', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2313, N'QUEIJO PICANTE (FUNCIONARIO)', NULL, CAST(11.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2314, N'ZZQUEIJO NOZINHO DE BUFALA', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2315, N'VINHO DADIVAS PINOR', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2316, N'CANETAS CAIPIRA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2317, N'INGRESSO TURISMO RURAL - SEMANA', NULL, CAST(29.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2318, N'ROLHA DE VINHO IMPORTADO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2319, N'VINHO DFE SIGNATURE CLASSIC RED', NULL, CAST(74.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2320, N'SORVETE NESTLE', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2321, N'CANJA DE GALINHA DA FAZENDA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2322, N'LANCHES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2323, N'SALGADO STIKSY', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2324, N'ZQUEIJO APIMENTADO', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2325, N'CONE GAROTO', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2326, N'PICOLE NESCAU', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2327, N'SANDUICHE CHEESE BURGUER', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2328, N'PICOLE CHAMYTO E CHAMBINHO', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2329, N'LISTERINE 60 ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2330, N'BOLINHO DE FRANGO', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2331, N'PORÇAO DE CAMARAO C/ FRITAS', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2332, N'SUGESTAO 2 (CARNES)', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2333, N'VINHO DADIVAS BRUT', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2334, N'VINHO DADIVAS CHARDONNAY ROSE', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2335, N'GRANDE VINDIMA CABERNET SAUVIGNIOM', NULL, CAST(110.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2336, N'VINHO GLAMOUR ROSE', NULL, CAST(85.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2337, N'PROSSECO SPERONE', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2338, N'ESPUMANTE MUMM BRUT', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2339, N'VINHO DOMAINE DES BLANQUIERES', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2340, N'VINHO CATENA CABERNET MALBEC', NULL, CAST(105.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2341, N'CHATEAU CANTELOUP', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2342, N'VINHO NERO DAVOLA', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2343, N'VINHO SANTA ALVARA SAUVION BLANC', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2344, N'OLHO ZUMBI', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2345, N'MANDALA MEDIA', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2346, N'MOBILIE BORBOLETA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2347, N'MOBILIE LIBELULA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2348, N'BANDEJA GRANDE PERSONALIZADA', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2349, N'VINHO CARMINERE CLASSIC', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2350, N'VINHO ROSE D ANJOU', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2351, N'SALGADINHO BACONZITOS', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2352, N'VACA GIROLANDO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2353, N'VACA JERSEY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2354, N'NOVILHA NELORE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2355, N'ZZKUAT ZERO LATA', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2356, N'.', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2357, N'.', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2358, N'.', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2359, N'CAVALGADA POR DO SOL (VESPERTINO)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2360, N'QUEIJO DE CABRA', NULL, CAST(84.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2361, N'SORVETE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2362, N'ZZESPUMANETE BABY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2363, N'PICOLE HORTELA C/ CHOCOLATE', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2364, N'ROLHA DE VINHO NACIONAL', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2365, N'REPELENTE LOÇÃO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2366, N'FRALDA JOHNSON M', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2367, N'CALABRESA COM BATATA FRITAS', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2368, N'BENDEIJA DE MAD GRANDE', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2369, N'FONTE RUSTICA', NULL, CAST(160.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2370, N'VASO PERSONALIZADO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2371, N'VEUVE CLICQUAT', NULL, CAST(350.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2372, N'VINHO LUIS PATO', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2373, N'.', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2374, N'LICOR PEACHTREE', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2375, N'MOUSSSES', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2376, N'BUFFET FRANGO (04 PESSOAS)', NULL, CAST(71.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2377, N'SERVIÇO DE GARÇOM', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2378, N'SERVIÇO DE MONITORES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2379, N'WHISKY OLD PAR', NULL, CAST(140.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2380, N'CALDINHO SURURU', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2381, N'TRANSFER', NULL, CAST(62.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2382, N'QUENTINHA REFEITORIO', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2383, N'CIGARRO MALBORO', NULL, CAST(6.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2384, N'CIGARRO CARLTON', NULL, CAST(6.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2385, N'PEIXE PESCADO PELO CLIENTE', NULL, CAST(24.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2386, N'PICOLE MOLICO', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2387, N'VINHO GRANDE VINDIMA QUORUM', NULL, CAST(120.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2388, N'ZZSUCO DE UVA LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2389, N'JOGO AMERICANO', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2390, N'SUNDOWN KIDS', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2391, N'ABSORVENTE OB', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2392, N'BONECO DE IMÃ', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2393, N'BAND-AID', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2394, N'VINHO DADIVAS MERLOT CABERNET 750ML', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2395, N'VINHO DADIVAS PINOT NAIR', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2396, N'GRANDE VINDIMA TANNAT', NULL, CAST(220.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2397, N'SUL BRASIL DADIVAS PINOT NOIR', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2398, N'VINHO VILA MONTES SUAVIGNON BLANC', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2399, N'VINHON WILLIAN COLLE WINEMARKERS', NULL, CAST(130.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2400, N'VINHO LAMBRUSCO DELL''EMILIA TINTO', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2401, N'VINHO CH BEL PIR', NULL, CAST(78.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2402, N'BISCOITO BAUDUCCO', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2403, N'BANDEIJA DE MAD PEQUENA', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2404, N'FONTE', NULL, CAST(185.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2405, N'QUADRO DE VIDRO PERSONALIZADO', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2406, N'LAMBRUSCO', NULL, CAST(100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2407, N'VINHO ALAMOS CABERNET SAUVIGNON', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2408, N'VINHO COLONIA LAS LIEBRES', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2409, N'VINHO CHATEAU CANTE LOUP', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2410, N'VINHO CATENA CABERNET MALBEC', NULL, CAST(105.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2411, N'BUFFET FRANGO (02 PESSOAS)', NULL, CAST(36.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2412, N'BUFFET CHURRASCO MISTO (02 PESSOAS)', NULL, CAST(36.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2413, N'ARROZ TEMPERADO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2414, N'FEIJÃO EM CALDA (PORÇÃO)', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2415, N'SERVIÇO DE COZINHA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2416, N'APRESENTAÇÃO ARTISTICA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2417, N'SERVIÇO DE MANOBRISTA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2418, N'BEZERRA BUFULA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2419, N'VACA MESTIÇA GIROLANDO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2420, N'QUENTINHA AQUÁTICA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2421, N'MICROFONE HEAD( SHURE )', NULL, CAST(200.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2422, N'MICROFONE P/ EVENTOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2423, N'FIO DENTAL', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2424, N'ZPICOLE PINTA LINGUA', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2425, N'CAVALGADA LUAU BOA LUZ (NOTURNO)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2426, N'TRENZINHO TRILHA DO BUFALO E DO INDIO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2427, N'VISITA A HORTA ORGANICA E HIDROPONICA (TRENZINHO)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2428, N'DOCE DA FAZENDA PORÇAO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2429, N'HALLS', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2430, N'PIZZA CALABRESA', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2431, N'PICOLE GALACTEA', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2432, N'BUFFET PROJETO ESCOLA (1)', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2433, N'PICOLE MEGA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2434, N'NEGA FLO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2435, N'VINHO GRANDE VINDIMA TANNAT', NULL, CAST(220.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2436, N'PICOLE NESTLE CHOKITO E  PRESTIGIO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2437, N'ALUGUEL DE QUIOSQUE INDIVIDUAL', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2438, N'VINHO DADIVAS MERLOT CABERNET 375 ML', NULL, CAST(26.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2439, N'VINHO GRANDE VINDIMA CABERNET SAUVIGNON', NULL, CAST(110.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2440, N'VINHO SINGULAR TEROLDEGO', NULL, CAST(140.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2441, N'BOLINHO DE BACALHAU', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2442, N'VINHO AGNUS CABERNET SAUVION', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2443, N'ERO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2444, N'VINHO ELOS TOURINGA NACIONAL/ TANNAT', NULL, CAST(79.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2445, N'VINHO SINGULAR NEBIOLO', NULL, CAST(220.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2446, N'ESPUMANTE VEUVE ELISE BRUT', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2447, N'WILLIAM COLE SAUVION BLANC', NULL, CAST(78.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2448, N'VINHO BARDEAUX CHARTRON LA FLEUR BLANC', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2449, N'MONTES ALPHA CABERNET SAUVIGNON', NULL, CAST(100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2450, N'SANDELIA MERLOT', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2451, N'WILLIAN COLE ALBAMAR', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2452, N'VINHO TUNICHE CARMENERE', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2453, N'CH.BEL PIR', NULL, CAST(78.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2454, N'CAMISA PAIXAO DE CRISTO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2455, N'GUARDA CHUVA', NULL, CAST(12.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2456, N'NOVILHA BUFALO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2457, N'VACA BUFALA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2458, N'TOALHA DE PISO', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2459, N'MENU DEGUSTAÇÃO', NULL, CAST(39.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2460, N'MASSAGEM SUECA RELAXANTE', NULL, CAST(100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2461, N'SHIATSU', NULL, CAST(70.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2462, N'MASSAGEM PARA GESTANTES', NULL, CAST(70.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2463, N'DVD BOA LUZ', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2464, N'AMENDOIM TORADO', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2465, N'CAVALGADA MANGALARGA MACHADOR', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2466, N'.', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2467, N'BATON GAROTO', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2468, N'SUCO DIVERSOS MARATA 200ML', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2469, N'ZZMM''S', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2470, N'VINHO DFE SIGNATURE CLASSIC WHITE', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2471, N'QUEIJO APERITIVO DE CABRA', NULL, CAST(110.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2472, N'PICOLE TALENTO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2473, N'PICOLE ABRA CADABRA', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2474, N'SOPA DE CARNE COM LEGUMES DA NOSSA HORTA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2475, N'PIZZA DE PRESUNTO', NULL, CAST(13.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2476, N'COMIDA A KG', NULL, CAST(34.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2477, N'SALGADOS CEBOLITOS', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2478, N'RECARGA DE BOTIJAO (FUNCIONARIO)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2479, N'DOCES VARIADOS P/ FESTA (CENTO)', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2480, N'PICOLE CHOCOLATE NESTLE CLASSIC', NULL, CAST(2.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2481, N'SANDUICHE CHESE FILÉ MIGNON', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2482, N'SORVETE GAROTO', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2483, N'ESCOVA DENTAL BATMAN', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2484, N'REPELENTE SPRAY 200ML', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2485, N'SUGESTAO 3 (PEIXES)', NULL, CAST(26.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2486, N'SUGESTAO 4 (MASSAS)', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2487, N'VINHO DADIVAS CHARDONNAY', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2488, N'SINGULAR TEROLDEGO', NULL, CAST(140.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2489, N'NOVECENTOS EXTRA BRUT', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2490, N'VINHO CHACANA MALBEC ROSE', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2491, N'VINHO LUIS PATO BAGA', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2492, N'SALGADINHO CHEETOS', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2493, N'VASO PEQUENO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2494, N'QUADRO EM VIDRO', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2495, N'BANDEJA PERSONALIZADA PEQUENA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2496, N'FONTES PERSONALIZADA', NULL, CAST(185.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2497, N'FONTE RUSTICA', NULL, CAST(155.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2498, N'IMA DE VIDRO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2499, N'VINHO LANDELIA MALBEC', NULL, CAST(95.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2500, N'CAPA P/ CHUVA', NULL, CAST(16.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2501, N'SANDUICHE CHEESE BURGER ( ROOM )', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2502, N'SANDUICHE MIXTO FRIO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2503, N'CREME DENTAL', NULL, CAST(2.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2504, N'PICOLE NESTLE LA FRUTA KIDS', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2505, N'PICOLE NESTLE LA FRUTTA YOGO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2506, N'PORÇÃO DE GILÓ EMPANADO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2507, N'ALMONDEGA RECHEADA OU COMUM PORÇÃO', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2508, N'CALDINHO DE MANDIOCA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2509, N'PORÇÃO DEGUSTE', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2510, N'FILE MIGNOM AO MOLHO MADEIRA', NULL, CAST(37.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2511, N'CHEESE BURGUER', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2512, N'TOMADA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2513, N'FERRO', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2514, N'ESTOJO LAPIS', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2515, N'MARIA CHIQUINHA', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2516, N'CABELO COLORIDO', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2517, N'BIQUINI SEM BOJO', NULL, CAST(65.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2518, N'INGRESSO PAIXÃO DE CRISTO', NULL, CAST(21.25 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2519, N'AGUA DE COCO GARRAFA 300ML', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2520, N'BIQUINI INFANTIL', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2521, N'FAXINA', NULL, CAST(70.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2522, N'RECARGA PARA EXTINTOR', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2523, N'CACHAÇA BOA LUZ OURO - EVENTOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2524, N'CACHAÇA XINGO EVENTOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2525, N'BARRÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2526, N'BUFFET CHURRASCO ADULTO', NULL, CAST(27.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2527, N'VINHO VILLA ROMANU 750ML', NULL, CAST(89.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2528, N'VINHO VILLA ROMANU 375ML', NULL, CAST(43.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2529, N'VINHO W. COLE ALTO VUELO SAUV. BLANC', NULL, CAST(96.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2530, N'VINHO W. COLE ALTO VUELO PINOT NOIR', NULL, CAST(98.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2531, N'VINHO W. COLE MIRADOR CARMENERE 375ML', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2532, N'VINHO CHARDONNAY', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2533, N'BEN 10', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2534, N'QUEIJO RICOTA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2535, N'VINHO W. COLE ALBAMAR CARMENERE 750ML', NULL, CAST(52.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2536, N'VINHO W. COLE ALBAMAR SAUV. BLANC', NULL, CAST(53.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2537, N'VINHO W. COLE MIRADOR CARMENERE', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2538, N'VINHO W. COLE COLUMBINE CAB. SAUV', NULL, CAST(150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2539, N'VINHO W. COLE MIRADOR SAUV.BLANC 375ML', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2540, N'VINHO LANDELIA CABERNET', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2541, N'VINHO CHARDONNAY', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2542, N'TRUFA DIVERSAS', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2543, N'SERVIÇO DE PALESTRANTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2544, N'SPRAIT 2LTS', NULL, CAST(5.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2545, N'FANTA 2 LTS', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2546, N'ABSORVETE C/ ABAS', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2547, N'LOÇAO HIDRATANTE VANILA 200ML', NULL, CAST(12.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2548, N'GARRAFINHA CERAMICA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2549, N'GUINE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2550, N'ENSOPADO DE ARATU', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2551, N'CREME DE CAMARÃO', NULL, CAST(33.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2552, N'MOQUECA DE CAMARÃO', NULL, CAST(41.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2553, N'ENTRADA PROJETO ESCOLA DE 11 A 18 ANOS (5ª E 6ª)', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2554, N'SANDUICHE NATURAL DE FRANGO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2555, N'SOBREMESA PROJETO ESCOLA', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2556, N'SUCO (JARRA)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2557, N'PORCO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2558, N'BISCOITO DIVERSOS AMORI', NULL, CAST(1.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2559, N'CAIPIRINHA BOA LUZ / NEVADA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2560, N'CAIPIRINHA JARDINS DAS LARANJEIRAS', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2561, N'DRINK  ALEGRIA DA ROÇA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2562, N'DRINK DO BARTOLOMEU', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2563, N'COQUETEL DA FAZENDA', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2564, N'DRINK DELICIA DA TERRA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2565, N'CACHAÇA BOA LUZ COM MEL', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2566, N'CACHAÇA  XINGO OURO (GARRAFA)', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2567, N'CACHAÇA XINGO OURO (GAR 670ML)', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2568, N'SALGADO VARIADOS', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2569, N'WHISKY FAMOUS GROUSE 12 ANOS (DOSE)', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2570, N'WHISKY FAMOUS GLOUSE 8 ANOS (DOSE)', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2571, N'GARROTE NELORE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2572, N'ANEL', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2573, N'PORTA CELULAR', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2574, N'MASCARA CARNAVAL GRANDE', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2575, N'MASCARA CARNAVAL PEQUENA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2576, N'SUNGA ADULTO(M G)', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2577, N'INGRESSO PAIXÃO DE CRISTO', NULL, CAST(22.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2578, N'CARNE DO SOL', NULL, CAST(33.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2579, N'FILET MIGNON', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2580, N'PICANHA GRELHADA', NULL, CAST(43.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2581, N'CONTRA FILET', NULL, CAST(26.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2582, N'FILE DE BADEIJO GRELHADO', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2583, N'FRANGO Á MILANESA', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2584, N'BUFFET CHURRASCO INFANTIL', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2585, N'ENTRADA PROJETO ESCOLA DE 03 A 10 ANOS (SAB E DOM)', NULL, CAST(44.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2586, N'ENTRADA PROJETO ESCOLA DE 11 A 18 ANOS (SAB E DOM)', NULL, CAST(54.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2587, N'SALADA DA FAZENDA', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2588, N'SALADA CAPRESE', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2589, N'CAMARÃO Á GREGA', NULL, CAST(46.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2590, N'FETTUCCINE COM MOLHO BOLONHESA', NULL, CAST(26.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2591, N'BROXETE DE CAMARÃO COM QUEIJO', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2592, N'ESPAGUETE Á BOLONHESA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2593, N'FARFALLE RAGU CARNEIRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2594, N' PENNE COM MEDALHÃO LAGOSTA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2595, N'FARFALLE FRANGO LEGUMES E SHOYO', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2596, N'MUQUECA DE PEIXE ARROZ E PIRÃO', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2597, N'FILE DE PEIXE AO ABELLE- MEUNIERE', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2598, N' SALMÃO GRELHADO AO MOLHO DE LARANJA', NULL, CAST(42.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2599, N'FRANGO GRELHADO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2600, N'PEITO DE FRANGO A FINE CHAMPANGNE', NULL, CAST(33.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2601, N'CONFIT DE PATO COM BATATA AO PROVENÇAL', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2602, N'CARRE DE CORDEIRO COM PURE INHAME E M. DE HORTELÃ', NULL, CAST(37.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2603, N'CONVITE PLANO VIP (AQUATICA)', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2604, N'VINHO CHAMADOURO RESERVA 750ML', NULL, CAST(69.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2605, N'SUNGA ADULTO(GG)', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2606, N'FAROFA A BRASILEIRA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2607, N'PIRÃO DE LEITE DA FAZENDA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2608, N'SALADA JARDIM DAS LARANJEIRAS', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2609, N'SALADA MIXTA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2610, N'SALADA BABY', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2611, N'TABOA DE QUEIJOS DA FAZENDA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2612, N'CALDINHO DE FRANGO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2613, N'CALDINHO DE CAMARÃO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2614, N'CALDOS VERDES', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2615, N'LOCAÇÃO DE ANIMAIS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2616, N'BALADINHA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2617, N'PALESTRA AMBIENTAL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2618, N'DIFERENÇA DE PACOTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2619, N'INGRESSO GRIPON (C/50% DESC)', NULL, CAST(34.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2620, N'INGRESSO GRIPON (C/51% DESC)', NULL, CAST(33.95 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2621, N'MEDALHÃO DE FILE C/ ROASTY DE BATATAS E M. DE V.', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2622, N'CARNE DE SOL BOA LUZ', NULL, CAST(33.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2623, N'RISOTO CARNE SECA COM ABÓBORA', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2624, N'PARMESÃO C/ FILE MIGNON E VINHO TINTO', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2625, N'TOMATE SECO E VEG. C/ PEITO DE PATO AO POIVRE-VERT', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2626, N'LOMBO SUINO À MODA MINEIRA', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2627, N'BIFE A PARMEGIANA', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2628, N'CAMARÃO TERMIDOR', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2629, N'LAZANHA AO FORNO', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2630, N'QUEIJO DE BUFALA', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2631, N'QUEIJO JERSEY ( PEÇA )', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2632, N'QUEIJO COALHO ( PEÇA )', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2633, N'CACHAÇA BOA LUZ (DOSE)', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2634, N'CACHAÇA BOA LUZ PRATA (GARRAFA 670)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2635, N'CACHAÇA XINGO PRATA (DOSE)', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2636, N'CACHAÇA  XINGO PRATA (GARRAFA 670)', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2637, N'COFFE BREAK', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2638, N'COFRE (LEÃO)', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2639, N'COFRE (ELEFANTE)', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2640, N'VODKA  FINLANDIA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2641, N'VODKA LIQUID TRIDESTILADA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2642, N'ESPUMANTE BUBBLE', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2643, N'INGRESSO ( REVEILLON 2012 )', NULL, CAST(100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2644, N'VINHO CALEO NERO DAVOLA SICILIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2645, N'SIRICAIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2646, N'VINHO CAVA NEGRA CHARDONAY', NULL, CAST(42.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2647, N'JANTAR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2648, N'WHISKY RED LABEL (GARRAFA)', NULL, CAST(180.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2649, N'BOOK', NULL, CAST(200.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2650, N'SALADA DE ROBALO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2651, N'SALADA DO CHEFF', NULL, CAST(24.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2652, N'VALE DO SOL', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2653, N'SALMAO AO LIMAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2655, N'CAMARAO AO MARACUJÁ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2656, N'FRANGO GRELHADO COM FRITAS INFANTIL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2657, N'CARPACCIO  DE CARNE LAGARTO', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2660, N'CHAVEIRO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2662, N'PETISCO - QUEIJO COLAHO Á MILANESA', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2665, N'VERAS D''ALMA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2666, N'CHAPEU DE LONA', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2667, N'CHAPEU AUSTRALIANO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2668, N'BONE INFANTIL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2669, N'VISEIRA ', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2670, N'BONE BRIM ( FUNCIONARIO )', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2671, N'SHAMPOO VERBENA 75ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2672, N'AGUARDENTE ATLETICANA C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2673, N'BONE NELORE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2674, N'FILME FOTOGRAFICO', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2675, N'CODIGO ABERTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2676, N'CANETAS PERSONALIZADA BL', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2677, N'PILHA PEQUENA AA', NULL, CAST(9.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2678, N'PILHA PEQUENQ AA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2679, N'BRINCO DE PRATA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2680, N'PULSEIRA DE COCO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2681, N'COLAR DE SEMENTES', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2682, N'COTONETES PERSONALIZADOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2683, N'PENTE', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2684, N'BIQUINI INFANTIL', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2685, N'BIQUINI DE LAÇO', NULL, CAST(27.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2686, N'BIQUINI ASA DELTA', NULL, CAST(33.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2687, N'MAIO ADULTO', NULL, CAST(77.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2688, N'HOTEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2689, N'BRONZEADOR', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2690, N'FRALDA JOHNSON G', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2691, N'FIVELA', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2692, N'TRAVESSA DE PALHA G', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2693, N'TRAVESSA DE PALHA M', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2694, N'TRAVESSA DE PALHA P', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2695, N'BANDEJA DE PALHA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2696, N'SANDALIA HAVAIANA BRANCA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2697, N'JOGO AMERICANO PALHA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2698, N'JOGO AMERICANO BORDADO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2699, N'BANDA DE CHAPEU COURO', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2700, N'BANDA DE CHAPEU CRINA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2701, N'PROTETOR DE CHAPEU', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2702, N'JAQUETA DE COURO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2703, N'PORTA CHAVE', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2704, N'MULHER CERAMICA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2705, N'JARRA CERAMICA', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2706, N'FRUTEIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2707, N'SOBREMESA FRUTAS DA ESTAÇAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2708, N'DALAGE', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2710, N'BALAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2711, N'TIRA MAGUA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2713, N'MONTE ALTO', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2714, N'FRANGO A PASSARINHA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2717, N'SHAMPOO CONDICIONADOR', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2718, N'CAMA ELASTICA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2719, N'SABONETE ERVA DOCE', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2722, N'BARBEADOR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2724, N'FRANGO GRELHADO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2725, N'PEIXE PESCADO (TILAPIA/TAMBAQUI/PACU/TRAIRA]', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2726, N'CAIPIROSCA NEVADA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2727, N'DRINK DAIKIRI', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2728, N'DRINK -SUCO DE TOMATE TEMPERADO', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2731, N'DRINK SANGRIA -JARRA 750 ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2732, N'ENTRADA -CAMARÕES AO MOLHO C/ PÃES FRE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2733, N'VINHO HARVEST 375 ML', NULL, CAST(50.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2734, N'VINHO FATASIA MALBE SYRAR', NULL, CAST(57.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2735, N'VINHO FANTAZIA CABERNT SALVING', NULL, CAST(57.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2736, N'VINHO FANTASIA LORCA TORRONES', NULL, CAST(79.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2737, N'CONSUMO HOTEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2738, N'VINHO CHATEAU  LESCART PRESTIG', NULL, CAST(172.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2739, N'CHAPEU DE LÃ', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2740, N'VINHO CANTADOR COLLECION MALBEC', NULL, CAST(63.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2741, N'VINHO GRAN RESERVA MALBEC', NULL, CAST(68.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2742, N'CHAPEU DE COURO', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2745, N'FRANGO COM QUIABO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2750, N'VODKA SMIRNOF ICE', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2751, N'SALGADO CROQUETE DE BACALHAU', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2752, N'AGUARDENTE AROEIRINHA C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2753, N'BALDE DE PALHA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2754, N'PORTA MOEDA EM PALHA', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2755, N'PORTA REVISTA EM PALHA', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2756, N'SALVA DE PÃO E M PALHA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2757, N'CARTEIRA EM PALHA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2758, N'BOLSA EM PALHA QUADRADA GRANDE', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2759, N'BOLSA EM PALHA QUADRADA PEQUENA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2760, N'BOLSA TINGIDA C/ ALÇA EM MADEIRA', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2761, N'BOLSA EM PALHA COM FLOR', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2762, N'PASTA EM PALHAN', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2763, N'BOLSA EM PALAHA DE MÃO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2764, N'BOLSA EM PALHA QUADRADA MEDIA', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2765, N'CARTEIRA TINGIDA FORRADA', NULL, CAST(13.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2766, N'CARTEIRA FORRADA CRUA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2767, N'CARTEIRA PEQUENA DETALHE EM FLOR', NULL, CAST(13.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2768, N'PORTA MOEDAS EM PALHA', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2769, N'PORTA MOEDA MAIOR', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2770, N'BOLSA DE TRANÇA VAZADA', NULL, CAST(46.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2771, N'BOLSA DE TRANÇADA  BORDADA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2772, N'BOLSA DE TRANÇA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2773, N'ROUPEIRO E M PALHA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2774, N'BOLSA GRANDE MEIA LUA COM DETALHE', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2775, N'BOLSA OVAL DE TRANÇA', NULL, CAST(42.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2776, N'BOLSA OVAL MEDIA DE TRANÇA', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2777, N'BOLSA OVAL DE PALHA', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2778, N'PASTA EM PALHA GARNDE', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2779, N'CARTEIRA EM PALHA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2780, N'BOLSA GRANDE ALÇA MADEIRA', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2781, N'BOLSA MEDIA VASADA DE TRANÇA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2782, N'BOLSA COM ALÇA E MADEIRA PEQUENA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2783, N'BOLSA PEQUENA COM ALÇA E M MADEIRA DETALHADA', NULL, CAST(26.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2784, N'BOLSA VASADA EM TRANÇA', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2785, N'BOLSA DE PALHA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2786, N'CAVALAO EM PORCELANA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2787, N'CHA NESTEA PESSEGO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2788, N'FERRADURA EM BROZE', NULL, CAST(110.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2789, N'VODKA ABSOLUT', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2790, N'POETICA (BRA)', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2791, N'GIN TANGUERAY', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2792, N'WHISKY JACK DAINELLS', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2793, N'LICOR BAILEYS C/ 1000 ML', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2795, N'WHISKY RED LABEL', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2796, N'RUM BACARDI CARTA BRANCA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2800, N'RAINHA DO VALE', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2801, N'TIA JOAQUINA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2802, N'AGUARDENTE SAGARANA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2804, N'CACHAÇA CANA VERDE E CIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2805, N'CACHAÇA CRISTALINA DO PICAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2806, N'VINHO NORTON MALBEC', NULL, CAST(59.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2807, N'VINHO COTES DU  RHONE', NULL, CAST(98.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2809, N'CRISTALINHA DO ENGENHO', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2810, N'JOIA DE MINAS', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2811, N'RECREACAO KARTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2812, N'RECREACAO BOIA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2813, N'RECREACAO CAMA ELASTICA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2814, N'RECREACAO CARROCEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2815, N'CAVALGADA PISTA DE POUSO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2816, N'CHARRETE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2817, N'GIRO MASTER', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2818, N'RECREACAO MALEX', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2819, N'CAVALGADA VALE DOS DINOSSAURO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2820, N'RECREACAO LARANJEIRAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2822, N'RECREACAO PEDALINHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2824, N'ALUGUEL DE ONIBUS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2826, N'MAP- SOL LATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2827, N'VODKA SMIRNOFF', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2828, N'PAVE BASE', NULL, CAST(6.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2829, N'SALGADO  PASTEL FRANGO / CATUPIRI', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2833, N'DOCE DE COCO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2834, N'MACASADO', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2835, N'ESPETINHO- CAMARÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2837, N'BEIJU MOLHADO', NULL, CAST(1.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2839, N'VODKA ABSOLUT CITRUS', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2840, N'AGUA MINERAL S/GAS 500ML', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2841, N'COCADA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2843, N'INGRESSO - DIA DOS PAIS', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2845, N'QUIABADA', NULL, CAST(20.44 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2846, N'TRENZINHO  (PROJETO ESCOLA)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2847, N'QUEIJO CABACINHA DAY USE', NULL, CAST(27.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2850, N'VINHO FRONTEIRA', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2851, N'ESPETINHO DE CORAÇÃO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2852, N'ESPUMANTE MUMM CUVÉE BRUT', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2853, N'DRINK GIN TÔNICA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2854, N'ESPUMANTE VEUVE ELISE BRUT', NULL, CAST(58.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2855, N'LABRANZA CARBET SALVIGNON', NULL, CAST(28.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2856, N'LABRANZA CHARDONAY', NULL, CAST(28.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2857, N'LABRANZA MALBEC', NULL, CAST(28.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2858, N'PROSSECO GEORGE ALBERT (BRA)', NULL, CAST(53.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2859, N'NOVECENTO EXTRA BRUT (BRA)', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2860, N'PROSSECO SPERONE 750 ML', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2861, N'VINHO CHATEAU LACAVE RESLING', NULL, CAST(48.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2862, N'DRINK - CAIPIROSKA C/ ABSOLUT', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2868, N'BOLINHO DE  BACALHAU', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2869, N'TABUA GARRAFA', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2871, N'KAPO CHOCOLATE', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2872, N'KAPO UVA', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2874, N'WHISKY BLUE LABEL', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2875, N'INGRESSO TURISMO RURAL - CHD', NULL, CAST(0.01 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2876, N'CACTUS PEQUENO - VASO METAL BRANCO', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2877, N'ORQUÍDEAS LILÁS - VASO CERÂMICA', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2878, N'BROMÉLIA VERDE - VASO MADEIRA', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2879, N'ORQUIDEA BRANCA - VASO MADEIRA', NULL, CAST(84.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2880, N'TULIPA LARANJA - VASO MADEIRA', NULL, CAST(93.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2881, N'ORQUIDEA BRANCA SILICONADA - VASO MADEIRA', NULL, CAST(130.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2882, N'BROMELIA MARRON - PRATO MADEIRA', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2885, N'KRONEMBIER LONG NECK', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2886, N'CERV. BOHEMIA LATA 350ML', NULL, CAST(3.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2887, N'MULTA MALEX - PERDA DA CHAVE', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2888, N'MULTA MALEX', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2889, N'MULTA MALEX', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2890, N'CESTO DE PALHA PEQ', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2891, N'AGUA MINERAL 20LT', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2893, N'GELO CUBO PARA WHISKY', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2894, N'GELO PARA ISOPOR', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2895, N'ESPETINHO DE QUEIJO COALHO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2896, N'LICOR BOLS CHERRY BRANDY C/ 700ML', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2897, N'LICOR DRAMBUIE', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2898, N'COXINHA EVENTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2900, N'BOQUET DE FLORES', NULL, CAST(81.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2902, N'INGRESSO GRUPO I (1101 A 1700)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2903, N'INGR - IDOSO (1001 A 1099)', NULL, CAST(34.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2904, N'INGRESSO VOUCHE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2905, N'VODKA SMIRNOFF', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2906, N'VODKA ABSOLUT MANDRIN', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2907, N'WHISKY BLACK LABEL ANNIVERSARY', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2908, N'VODKA BELVEDERE', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2909, N'CACHAÇA 3 PRAIAS BRAZILIAN SPIRIT', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2910, N'WHISKY BLACK LABEL GARRAFÃO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2911, N'WHISKYS CHIVAS REGAL GARRAFÃO', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2912, N'VODKA ABSOLUT VANILA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2913, N'VODKA ABSOLUT CITRUS', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2914, N'INGR - GRUPO', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2915, N'INGRESSO IDOSO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2916, N'WHISKY GREEN LABEL 15 ANOS ( GARRAFA )', NULL, CAST(300.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2917, N'JOGO DE POKER CASINO STYLE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2918, N'JOGO MIRTCA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2919, N'JOGO DE GAMÃO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2920, N'JOGO ENCICLOPÉDIA TRILHA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2921, N'VINHO TUNICHE CARMINERE', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2922, N'VINHO TUNICHE SAUVIGNON BLANC', NULL, CAST(69.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2923, N'VINHO WILLIAN COLE CABERNET SAUVIGNON', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2924, N'CERV. BAVARIA PREMIUM LONG NECK 355ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2925, N'POPLITO MAÇA VERDE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2926, N'PREMIUM NAPOLITANO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2927, N'BRIGADEIRO EXAGERADO 230 ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2928, N'EXAGERADO NAPOLITANO 400ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2930, N'SUNDAE MORANGO 86 GR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2932, N'INGRESSO ( REVEILLON 2012 )', NULL, CAST(200.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2934, N'GEL DENTAL ACTION', NULL, CAST(3.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2935, N'FIO DENTAL', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2936, N'LENÇOS UMIDECIDOS', NULL, CAST(12.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2937, N'COTONETES', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2938, N'PROTETOR SOLAR FPS 60', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2939, N'DESODORANTE ROLL-ON', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2940, N'PROTETOR SOLAR FPS 50', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2941, N'PREMIUM BRIGADEIRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2943, N'PREMIUM CHOCOCO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2944, N'CREMOSINHO CHOCOLATE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2945, N'CREMOSINHO COCO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2946, N'PREMIUM FLOCOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2947, N'POPLITO FRUTAS VERMELHAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2949, N'CREMOSINHO LEITE CONDENSADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2950, N'CREMOSINHO MORANGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2951, N'SUNDAE CHOCOLATE 86 GR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2952, N'POPLITO NAPOLITANO PREMIUM', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2953, N'POPLITO MORANGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2954, N'ZPREMIUM PÉ-DE-MOLEQUE', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2955, N'POPLITO PINTA LÍNGUA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2956, N'FLOCOS COPO 100ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2958, N'CERV. BOHEMIA LONG NECK 355ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2959, N'ANTIQUISSIMA - CACHAÇA DE VINHO', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2960, N'SAGATIBA PRECIOSA ENVELHECIDA', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2961, N'SAGATIBA PURA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2962, N'SAGATIBA VELHA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2963, N'ALUGUEL DE PALCO - RANCHO FUNDO', NULL, CAST(200.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2964, N'MOUSSE DE FRUTAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2968, N'CALDINHO DE MACAXEIRA COM CARNE SECA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2969, N'CHARUTO PHILLIES TITAN', NULL, CAST(8.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2970, N'CHARUTO BAIANINHO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2971, N'CHARUTO INDIANA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2972, N'CHARUTO COHIBA MINI', NULL, CAST(141.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2973, N'CHARUTO ROMEU E JULIETA PURITOS', NULL, CAST(108.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2974, N'CHARUTO MONTE CRISTO', NULL, CAST(105.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2975, N'CHARUTO CUBANO ROMEU E JULIETA', NULL, CAST(109.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2976, N'CHARUTO PARTAGAS', NULL, CAST(68.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2977, N'CHARUTO DONA FLOR CHURCHILL', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2978, N'CHARUTO ALONSO MENENDEZ', NULL, CAST(41.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2979, N'INGRESSO REVEILLON (2009 - GP BOMFIM)', NULL, CAST(150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2981, N'INHO CREVELIM BRANCO SUAVE 750ML', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2982, N'VINHO CREVELIM TINTO SUAVE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2983, N'SALTON DEMI SECO FLOWERS BRANCO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2984, N'SALTON TINTO ASSEMBLAGE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2985, N'VINHO CREVELIM BRANCO SECO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2986, N'CICLONE FLOCOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2988, N'CICLONE DE BRIGADEIRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2989, N'EXAGERADO NAPOLITANO 230ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2990, N'EXAGERADO BRIGADEIRO 400ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2991, N'EXAGERADO BRIGADEIRO 230ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2992, N'EXAGERADO CAJA C/ GRAVIOLA 400ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2993, N'AGUARDENTE EXTRA ANTIQUISSIMA', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2994, N'COUVERT', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2995, N'RISOTO NEGRO', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2996, N'OMELETE DE CAMARÃO', NULL, CAST(17.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2997, N'FRANGO LEITE', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2998, N'BATATA PICANTE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (2999, N'BATATA FRITA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3000, N'LULA A´DORE', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3001, N'FILET GORGONZOLA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3002, N'BERINGELA AO ALHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3003, N'MOLHO CAMARÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3004, N'FRUTAS NO PALITO', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3005, N'FETUCCINE GAMBERET', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3006, N'PICATA DE FILET', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3007, N'MAX PREMIUM CHOCOLATE C/ AVELÃ', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3008, N'EXAGERADO DE PAVÊ 400ML', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3009, N'CHEESE CAKE EM CALDA GOIABA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3010, N'BOLO DE MAÇA', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3011, N'MUSSE MARACUJÁ', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3012, N'CALDO VEGETAL', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3013, N'CALDO PEIXE', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3014, N'RISOTO DE MANGA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3015, N'PAO DE BATATA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3016, N'BOLO CENOURA', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3017, N'MOLHO POMODORO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3018, N'MOLHO BRANCO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3019, N'SALGADO  COXINHA CARNE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3020, N'MOLHO DEMI GLACE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3021, N'VINHO NERO DADIVAS', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3022, N'SUL BRASIL MOSCATEL', NULL, CAST(49.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3023, N'GRANDE VIDIMA MERLOT', NULL, CAST(110.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3024, N'GRANDE VINDIMA QUORUM', NULL, CAST(120.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3025, N'VINHO CASA MIRIAM CABERNET SYRAH', NULL, CAST(53.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3026, N'WILLIAN COLE CABERNET SAUVIGNON', NULL, CAST(52.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3027, N'CACHAÇA  XINGO PRATA MINI 50ML', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3028, N'FEIJOADA CARIOCA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3029, N'CACHAÇA XINGO OURO MINE 50ML', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3030, N'INGRESSO BLVC', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3031, N'INGRESSO (ANTECIPADO)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3032, N'SORVETE MILK SHAKE 300 ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3033, N'SORVETE MILK SHAKE 500 ML', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3034, N'PASSEIO DE TRENZINHO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3035, N'QUEIJO PARMESÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3036, N'TAXA DE MANUTENÇÃO BLVC', NULL, CAST(100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3037, N'TAXA DE MANUTENÇÃO VAC', NULL, CAST(150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3038, N'GARROTE JERSEY', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3039, N'CERVEJA LATA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3040, N'PIRULITO DE BISCOITO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3041, N'BRIGADEIRO DE COPINHO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3042, N'BOLO DE CHOCOLATE/ BRIGADEIRO', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3043, N'SANDUICHE CHESE SALADA DA FAZENDA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3044, N'PROJETO ESCOLA (LANCHE)', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3045, N'LANCHE BAGUETE DE QUEIJO E PRESUNTO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3046, N'COQUETEL EVENTOS', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3047, N'ACARAJE EVENTO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3048, N'CACHAÇA BOA LUZ OURO 670 ML', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3049, N'CACHAÇA BOA LUZ OURO (DOSE)', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3050, N'MONITOR DE LAZER', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3051, N'COCKTAIL DE FRUTAS SEM ALCOOL', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3052, N'ALIMENTAÇAO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3053, N'PILHA ALCALINA PALITO AAA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3054, N'GALINHA GRANDE CERAMICA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3055, N'GARRAFINHA DE LICOR CERAMICA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3056, N'BONECA NAMORADEIRA', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3057, N'CACHAÇA BOA LUZ OURO MINE 50ML', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3058, N'PASSEIO À CACHAÇARIA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3059, N'BEZERRO NELORE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3060, N'VACA NELORE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3061, N'BEZERRO MESTIÇO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3062, N'CABRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3063, N'BODE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3064, N'COLONIA JOHNSONS BABY200ML', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3065, N'BLOQUEADOR SOLAR 200ML', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3066, N'BLOQUEADOR SOLAR 120ML', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3067, N'DECORAÇÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3068, N'BOOK FOTOGRAFICO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3069, N'CACHAÇA BOA LUZ OURO PARA FUNCIONARIO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3070, N'PORÇÃO - PETISCO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3071, N'VINHO COUSINO MACUL', NULL, CAST(46.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3072, N'VINHO PORCA DE MUUÇA', NULL, CAST(74.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3073, N'VINHO BOUCHARD AINE', NULL, CAST(96.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3074, N'VINHO YVES CUILLERON', NULL, CAST(98.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3075, N'      VINHO MONTEPUCIANO D''ABRUZZO', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3076, N'VINHO PINOT GRIGIO', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3077, N'VINHO ADELASIA D.O.C.', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3078, N'ESPUMANTE ADOLFO LONA', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3079, N'ESPUMANTE DUC BRUT', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3080, N'ESPUMANTE CAVALIER BRUT 375 ML', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3081, N'ESPUMANTE CAVALIER BRUT 200 ML', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3082, N'EBRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3083, N'INGRESSO GROUPON', NULL, CAST(19.95 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3084, N'INGRESSO FORROZENDA', NULL, CAST(19.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3085, N'VINHO TUNICHE CHARDONNAY 750ML', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3086, N'VINHO LIDIO CARRARO QUORUM', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3087, N'VINHO LIDIO CARRARO ELOS', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3088, N'VINHO DAL PIZZOL', NULL, CAST(49.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3089, N'CARNE ACEBOLADA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3090, N'PROVOLONE À MILANESA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3091, N'BATATA MIX', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3092, N'VEICULO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3093, N'FEIJAO RICO (C/CARNES), ARROZ E FAROFA C/COUVE', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3094, N'CARNEIRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3095, N'ACEPRAN UNIVET', NULL, CAST(27.14 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3096, N'CERVEJA BOHEMIA LATA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3097, N'VARA DE PESCA BAMBU', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3098, N'CANETA P. BOALUZ', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3099, N'CHAVEIRO P. BOA LUZ', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3100, N'CARTÃO TOALHA', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3101, N'CARTÃO DE CONSUMO HOTEL', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3102, N'INGRESSO - DIA DAS MAES', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3103, N'VINHO CASA VALDUGA NATURELLE', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3104, N'ESPUMANTE GLAMOUR BRUT', NULL, CAST(78.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3105, N'CACHAÇA BOA LUZ OURO 1L', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3106, N'CERVEJA ESPECIAL', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3107, N'TORTA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3108, N'ALUGUEL DE PASTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3109, N'BASTOES PERSONALIZADOS', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3110, N'COMBO CREDITO 30 DIAS', NULL, CAST(54.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3111, N'DIARIA CHALE FINAL', NULL, CAST(392.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3112, N'DIARIA SUITE SEMANA', NULL, CAST(379.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3113, N'DIARIA SUITE FINAL', NULL, CAST(686.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3114, N'TRIPLO APTO SEMANA', NULL, CAST(229.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3115, N'TRIPLO APTO FINAL', NULL, CAST(425.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3116, N'TRIPLO CHALE SEMANA', NULL, CAST(279.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3117, N'TRIPLO CHALE FINAL', NULL, CAST(510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3118, N'TRIPLO SUITE SEMANA', NULL, CAST(489.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3119, N'TRIPLO SUITE FINAL', NULL, CAST(892.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3120, N'DIARIA APTO SEMANA', NULL, CAST(179.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3121, N'DIARIA APTO FINAL', NULL, CAST(327.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3122, N'AMENDOIM COZIDO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3123, N'PAMONHA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3124, N'SAROIO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3125, N'PÉ DE MOLEQUE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3126, N'CANJICA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3127, N'ZZQUEIJO DE BUFALA', NULL, CAST(37.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3128, N'QUEIJO CABACINHA', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3129, N'ZZQUEIJO DE CABRA', NULL, CAST(84.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3130, N'QUEIJO DA FAZENDA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3131, N'ZZQUEIJO DA FAZENDA APIMENTADO', NULL, CAST(26.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3132, N'QUEIJO DA FAZENDA C/ OREGANO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3133, N'ZZQUEIJO JERSEY', NULL, CAST(25.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3134, N'QUEIJO MAE LINDA', NULL, CAST(28.53 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3135, N'QUEIJO NOZINHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3136, N'REQUEIJAO ( PEÇA )', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3137, N'ZZQUEIJO NOZINHO A MILANEZA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3138, N'CERVEJA LATA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3139, N'SANDUICHE NATURAL', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3140, N'COMBO XINGO INDIVIDUAL', NULL, CAST(74.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3141, N'COMBO LARANJEIRAS INDIVIDUAL', NULL, CAST(99.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3142, N'COMBO BOA LUZ INDIVIDUAL', NULL, CAST(109.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3143, N'INGRESSO DAY USE INDIVIDUAL', NULL, CAST(69.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3144, N'COMBO XINGO CASAL', NULL, CAST(139.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3145, N'COMBO LARANJEIRAS CASAL', NULL, CAST(189.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3146, N'COMBO BOA LUZ CASAL', NULL, CAST(209.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3147, N'COMBO XINGO FAMILIA 3 PESSOAS', NULL, CAST(199.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3148, N'COMBO LARANJEIRAS FAMILIA 3 PESSSOAS', NULL, CAST(269.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3149, N'COMBO BOA LUZ FAMILIA 3 PESSOAS', NULL, CAST(299.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3150, N'COMBO XINGO SUPER FAMILIA 4 PESSOAS', NULL, CAST(249.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3151, N'COMBO LARANJEIRAS SUPER FAMILIA 4 PES', NULL, CAST(339.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3152, N'COMBO BOA LUZ SUPER FAMILIA 4 PESSOAS', NULL, CAST(369.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3153, N'COMBO XINGO ADICIONAL', NULL, CAST(63.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3154, N'COMBO LARANJEIRAS ADICIONAL', NULL, CAST(84.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3155, N'COMBO BOA LUZ ADICIONAL', NULL, CAST(93.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3156, N'INGRESSO CASAL', NULL, CAST(129.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3157, N'INGRESSO FAMILIA 3 PESSOAS', NULL, CAST(189.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3158, N'QUEIJO MUSSARELA DA FAZENDA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3159, N'CREME CASSIS', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3160, N'ASIETE DE FRUTAS DA ESTAÇÃO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3161, N'VINHO CASILLERO DEL DIABLO', NULL, CAST(88.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3162, N'VINHO LAMBRUSCO DELL''EMILIA BRANCO', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3163, N'VINHO LIEBFRAUMILCH NACONAL BRANCO', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3164, N'VINHO PERIQUITA TINTO', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3165, N'VINHO SALTON MERLOT', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3166, N'VINHO SANTA HELENA C. SAUVIGNON', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3167, N'INGRESSO SUPER FAMILIA 4 PESSOAS', NULL, CAST(239.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3168, N'INGRESSO ADICIONAL', NULL, CAST(59.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3169, N'BOLINHO DA FAZENDA', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3170, N'COCADA BRANCA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3171, N'MILHO COZIDO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3172, N'PAÇOCA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3173, N'BEIJU MOLHADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3174, N'OPICIONAL SITE 1 ( JANTAR SUGESTÃO DO CHEFE)', NULL, CAST(170.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3175, N'OPICIONAL SITE 2 ( TABUA DE FRIOS, CHAMPAGNE OU VI', NULL, CAST(170.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3176, N'CAMA EXTRA', NULL, CAST(95.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3177, N'OVOS DA FAZENDA', NULL, CAST(9.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3178, N'VINHO FRONTEIRA PORTO RUBY', NULL, CAST(8.68 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3179, N'VINHO GATO NEGRO MALBEC', NULL, CAST(38.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3180, N'VINHO APALTAGUA CABERNET SAUVIGNON', NULL, CAST(53.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3181, N'VINHO FRONTERA', NULL, CAST(38.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3182, N'VINHO QUINTA DO MORGADO', NULL, CAST(17.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3183, N'VINHO SANTA HELENA 395ML', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3184, N'SANDUICHE NATURAL C/ MANTEIGA E MUSSARELA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3185, N'SANDUICHE NATURAL C/ MANTEIGA DA FAZENDA, MUSSAREL', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3186, N'SANDUICHE NATURAL C/ QUEIJO. MANTEIGA DA FAZENDA E', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3187, N'PEIXADA DE TILAPIA', NULL, CAST(34.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3188, N'PEIXE PESCADO PELO CLIENTE (IN NATURA)', NULL, CAST(14.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3189, N'CERVEJA BOHEMIA LONG NECK', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3190, N'NEVADA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3191, N'CAIPIROSKA COM ABSOLUT', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3192, N'DRAY MARTINE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3193, N'MEIA DE SEDA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3194, N'WHISKY WHITE HORSE - DOSE', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3195, N'CORAÇÃO DE GALINHA - PORÇÃO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3196, N'MOELA DE GALINHA - PORÇÃO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3197, N'PILOMBETA - PORÇÃO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3198, N'QUEIJO NOZINHO ( KG )', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3199, N'FILE DE TILAPIA', NULL, CAST(29.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3200, N'ISCA DE PEIXE TILAPIA', NULL, CAST(14.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3201, N'TABOA DE QUEIJOS DA FAZENDA', NULL, CAST(14.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3202, N'SALGADOS (PORÇAO)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3203, N'PEIXE GRELHADO', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3204, N'ESPUMANTE ARTE DEMI-SEC', NULL, CAST(69.65 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3205, N'BIFE AO MOLHO', NULL, CAST(29.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3206, N'FRANGO AO MOLHO', NULL, CAST(29.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3207, N'PETISCOS', NULL, CAST(12.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3208, N'ISCA DE TILAPIA', NULL, CAST(12.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3209, N'MADROQUINHA FRITA', NULL, CAST(12.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3210, N'PRATO DE QUEIJO TEMPERADO DA FAZENDA', NULL, CAST(12.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3211, N'COMIDA A KG', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3212, N'QUEIJO COALHO ( PEÇA ) FUNCIONARIO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3213, N'CARNE DE SOL COM FRITAS', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3214, N'QUEIJO COM MELACO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3215, N'QUEIJO APIMENTADO NA CHAPA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3216, N'PENSAO COMPLETA ADULTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3217, N'PENSAO COMPLETA / APARTIR DE 11 ANOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3218, N'ALMOÇO DAYUSE', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3219, N'SUCO DEL VALE', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3220, N'AMENDOIM TORRADO(QUERO MAIS)', NULL, CAST(1.75 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3221, N'PRESTIGIO(QUERO MAIS)', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3222, N'CHOKITOS(QUERO MAIS)', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3223, N'PIRULITOS POP(QUERO MAIS)', NULL, CAST(0.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3224, N'JUJUBA(QUERO MAIS)', NULL, CAST(1.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3225, N'DISKETE(QUERO MAIS)', NULL, CAST(1.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3226, N'BATOM(QUERO MAIS)', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3227, N'BIS(QUERO MAIS)', NULL, CAST(1.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3228, N'CHICLETES (PRETO) (QUERO MAIS)', NULL, CAST(0.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3229, N'CHICHETE(ROSA)(QUERO MAIS)', NULL, CAST(0.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3230, N'CHICHETE(AMARELO)(QUERO MAIS)', NULL, CAST(0.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3231, N'CARAMELOS(QUERO MAIS)', NULL, CAST(0.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3232, N'KIT OURO', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3233, N'PICOLÉ(QUERO MAIS)', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3234, N'CACHAÇA FUSCA BOA LUZ', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3235, N'BOOK FOTOGRAFICO', NULL, CAST(150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3236, N'SOBREMESA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3237, N'CAUÇÃO MALEX', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3238, N'VINHO W. COLLE MIRADOR MERLOT', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3239, N'ESPUMANTE ALTO VALE DEMI SEC', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3240, N'VINHO ACCLAME CABERNET SAUVIGNON', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3241, N'SMINORF ICE LATA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3242, N'TOMATE CEREJA', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3243, N'SHREC', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3244, N'VINHO SYRAH GRAND RESERVA', NULL, CAST(140.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3245, N'VINHO TUNICHE SYRAH 2008', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3246, N'VINHO VILLA ROMANU BLANC', NULL, CAST(78.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3247, N'VINHO W. COLE ALBAMAR CABERNET SAUV', NULL, CAST(52.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3248, N'VINHO W. COLE MIRADOR SAUV. BLANC', NULL, CAST(90.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3249, N'RAPADURA 90GR', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3250, N'RAPADURA 180GR', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3251, N'REPELENTE SPRAY 100ML', NULL, CAST(12.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3252, N'GUARANA 2LTS', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3253, N'CAPA DE EDREDOM', NULL, CAST(241.14 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3254, N'GARRAFAO MESCLADO', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3255, N'GARRAFA MEDIA', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3256, N'GARRAFA CERVEJA CERAMICA', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3257, N'BOLAS/PRATO', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3258, N'SAPO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3259, N'POTE C/ TAMPA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3260, N'POTE GRANDE C/TAMPA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3261, N'POLTRO MANGALARGA MACHADOR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3262, N'CARTOES SORTIDOS', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3263, N'CAMISA COM ESTAMPAS SORTIDAS', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3264, N'PARA SOL', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3265, N'SOPA DE LEGUMES COM FRANGO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3266, N'MOQUECA DE OSTRA', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3267, N'MOQUECA DE SURURU', NULL, CAST(34.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3268, N'MOQUECA DE PEIXE', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3269, N'PIRÃO DE PEIXE', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3270, N'PENNE COM CAMARÃO E PESTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3271, N'BOA LUZ CARD', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3272, N'MACAXEIRA FRITA', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3273, N'PIPOCA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3274, N'FILET AO FUNGHY', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3275, N'CANAVIAL', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3276, N'CARTOLA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3277, N'COXINHA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3278, N'VACA NELORE MOCHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3279, N'NOVILHA GIROLANDO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3280, N'ALMOÇO DIA DAS MAES (INGRESSO)', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3281, N'ALMOÇO DIA DAS MAES CHD (INGRESSO)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3282, N'ALMOÇO DIA DAS MAES (SITE)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3283, N'PACOTE DIA DOS PAIS', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3284, N'CAVALO MESTIÇO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3285, N'CREME DE CACAU', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3286, N'CREME CURUAÇAU BLUE', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3287, N'ESTAÇÃO DE MASSAS (INFANTIL)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3288, N'BUFFET CARNEIRO (04 PESSOAS)', NULL, CAST(71.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3289, N'BUFFET CHURRASCO MISTO (04 PESSOAS)', NULL, CAST(71.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3290, N'VINAGRETE (PORÇÃO)', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3291, N'FAROFA DE BANANA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3292, N'MAIONESE (PORÇÃO)', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3293, N'FEIJÃO TROPEIRO (PORÇÃO)', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3294, N'CLICOM', NULL, CAST(184.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3295, N'BEZERRO NELORE MOCHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3296, N'PAO DE QUEIJO MINEIRO (PORÇAO)', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3297, N'REST. RANCHO FUNDO (ALUGUEL DO ESPAÇO)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3298, N'PISTA DE POUSO (ALUGUEL DO ESPAÇO)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3299, N'SERVIÇO DE RECEPCIONISTA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3300, N'PASSEIO A CACHAÇARIA (EVENTOS)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3301, N'BEZERRO GIROLANDO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3302, N'BOI MESTICO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3303, N'WHISKY OLD PAR', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3304, N'GARROTE NELORE MOCHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3305, N'INGRESSO DAY USE', NULL, CAST(39.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3306, N'CARNE DO SOL APERETIVO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3307, N'CALDO DE FEIJÃO PRETO COM TORRESMINHO', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3308, N'CALDINHO PEIXE', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3309, N'BEZERRA NELORE MOCHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3310, N'BEZERRA MESTIÇA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3311, N'BEZERRO BUFALO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3312, N'RISOLE DE FRANGO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3313, N'IMPRESSORA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3314, N'JANTAR', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3315, N'H2O', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3316, N'CERVEJA (BUDWAISE/HENEKEN/STELLA)', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3317, N'ORDENHA DA MINI VACA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3318, N'FOTO COM O BUFALO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3319, N'FOTO COM A ZEBRA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3320, N'FOTO COM O CAVALO ANDALUZ', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3321, N'EMBALAGEM', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3322, N'KIT OURO/PRATA', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3323, N'JANTAR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3324, N'BOLO DE CHOCOLATE', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3325, N'BOLO DE BANANA', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3326, N'RISOLE DE FRANGO C/ CATUPIRI', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3327, N'RISOLE DE QUEIJO C/ PRESUNTO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3328, N'RISOLE DE CAMARÃO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3330, N'BATATA  GRELHADA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3332, N'BROWNIE DE CHOCOLATE', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3333, N'STROGONOFF DE BANANA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3334, N'MUSSE CHOCOLATE', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3335, N'VINHO AGNUS MERLOT TINTO', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3336, N'VINHO ELOS MALBEC CABERNET', NULL, CAST(79.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3337, N'BRINCO COUNTRY', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3338, N'VINHO EL CIPRES TORRONTES', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3339, N'YVES CUILLERAN SYRAH ROSE', NULL, CAST(130.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3340, N'VINHO AGUARIBAY MALBEC', NULL, CAST(95.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3341, N'DRINKYS BELEZA TROPICAL', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3342, N'VINHO ALAMOS EXTRA BRUT', NULL, CAST(78.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3343, N'VINHO RAWSONS RETREAT SEMILLON CHARDONAY', NULL, CAST(100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3344, N'SANDUICHE NATURAL', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3345, N'BARRA CEREAL', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3346, N'CHAVEIRO POP PRINCESA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3347, N'FRANGRITO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3348, N'GIRO TOY STORY', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3349, N'RECHEADINHO BAUDUCCO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3350, N'AGUARDENTE CLAUDIONOR C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3351, N'AGUARDENTE SALINAS DE PRATA', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3352, N'MANDALA PEQUENA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3353, N'CAIXA DE MADEIRA', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3354, N'BUFFET PROJETO ESCOLA (2)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3355, N'INGRESSO PAIXÃO DE CRISTO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3356, N'COFRE CAVALINHO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3357, N'COFRE PALHAÇO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3358, N'CAIXA DE MADEIRA PERSONALIZADA', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3359, N'VINHO ALAMOS EXTA BRUT', NULL, CAST(78.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3360, N'VINHO BORDEAX CHARTRON', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3361, N'BACALHAU JEREZ', NULL, CAST(34.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3362, N'PETIT GATEAU', NULL, CAST(14.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3364, N'PAELA MARINHEIRA', NULL, CAST(62.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3365, N'NEVE ARTIFICIAL', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3366, N'VINHO TANTEHUE CHARDONNAY 750 ML', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3367, N'VINHO VENTISQUERO CARMENERE RESERVA  750 ML', NULL, CAST(89.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3368, N'VINHO CRIOS S. BALBO - SYRAH BORNADA', NULL, CAST(92.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3369, N'VINHO CRIOS S. BALBO - CABERNET SAUVIGNON', NULL, CAST(89.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3370, N'VINHO DUCA DI CAMASTRA NERO DAVOLA 750ML', NULL, CAST(98.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3371, N'VINHO BOSCATO MERLOT RESERVA 750 ML', NULL, CAST(68.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3372, N'VINHO BOSCATO CABERNET SAUVIGNON 750 ML', NULL, CAST(69.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3373, N'ESPUMANTE CASA PEDRUCCI ROSE 750 ML', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3374, N'ROSSO DI  MONTALCINO CAPARZO 750ML', NULL, CAST(145.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3375, N'VINHO CHATEAU CANTELOUP 750ML', NULL, CAST(96.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3376, N'VINHO LA JOIA CARMENERE 375 ML', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3377, N'VINHO LA JOIA CABERNET SAUVIGNON 375 ML', NULL, CAST(39.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3378, N'VINHO LA JOIA CARMENERE 750 ML', NULL, CAST(89.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3379, N'VINHO SANTA DIGNA CARMENERE 750 ML', NULL, CAST(99.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3380, N'VINHO DELICATO SYRAH - RED 750 ML', NULL, CAST(91.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3381, N'VINHO  DEL FIN  DEL MUNDO - ESPECIAL', NULL, CAST(238.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3382, N'VINHO CHAKANA  MALBEC  ROSE 750 ML', NULL, CAST(74.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3383, N'VINHO CAVALIER BRUT BABY', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3384, N'VINHO DOM LAURINDO 500 ML', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3385, N'VINHO GRAND THEATRE BORDEAUX TINTO 750 ML', NULL, CAST(109.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3386, N'VINHO CAVALIER BRUT', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3387, N'TELA DE PROJEÇÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3388, N'MOET & CHANDOM', NULL, CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3389, N'VEUVE CLIQUOT 750 ML', NULL, CAST(395.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3390, N'SALMAO MARINADO', NULL, CAST(26.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3391, N'MEXILHÕES AO JEREZ', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3397, N'WHISKY BUCHANNAN''S DE LUXE C/1000ML', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3416, N'SUCO COPO 300ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3417, N'SHAMPOO JOHNSONS BABY 200 ML', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3418, N'DVD-R MAX MAX', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3419, N'AGUARDENTE 51 C/965 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3420, N'CAMPARI', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3421, N'MARTINE BIANCO', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3436, N'CAFE EXPRESSO COM LEITE', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3437, N'REFRI. FANTA LARANJA  2 LTS', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3438, N'REFRI. GUARANA KUAT 2 LTS', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3439, N'CERV. BRAHMA LONG NECK 355ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3441, N'CANOEIRA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3442, N'MARTINE ROSE', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3443, N'ENERGETICO BURN', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3444, N'LICOR COINTREAU', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3445, N'VODKA STOLICHNAYA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3446, N'FRUTAS DA ESTAÇÃO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3447, N'SALADA DA TERRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3448, N'RISOTO DE BACALHAU', NULL, CAST(33.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3449, N'RISOTO DE CAPOEIRA COM COCO FRESCO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3450, N'RISOTO DE RUCULA E TOMATE SECO', NULL, CAST(26.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3451, N'FILET A BOMFIM', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3452, N'FILET COM LEGUMES AROMATIZADOS', NULL, CAST(27.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3453, N'CARNE DO SOL A MODA NORDESTINA', NULL, CAST(29.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3454, N'ESPAGUETE AO CREME DE CAMARAO E GORGONZOLA', NULL, CAST(22.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3455, N'ESPAGUETE AO FRUTOS DO MAR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3456, N'BIFE DE TIRAS A JARD.DAS LARANJEIRAS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3457, N'PICANHA BOA LUZ', NULL, CAST(31.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3458, N'FRANGO DE CAPOEIRA A MODA SERTANEJO', NULL, CAST(39.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3459, N'CREME DE ASPARGOS', NULL, CAST(21.60 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3460, N'CREME DE LEGUMES', NULL, CAST(14.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3461, N'SOPA DE VEGETAIS DA FAZENDA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3462, N'CANJA A MODA CAIPIRA', NULL, CAST(14.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3463, N'COSTELETA DE CARNEIRO A MAX MOTA', NULL, CAST(43.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3464, N'ROBALO EM CROSTA DE GERGELIN', NULL, CAST(31.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3465, N'FETUCCINE AO POMODORO FRESCO E BASILIC', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3466, N'AGUARDENTE BORA C/600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3467, N'AGUARDENTE BRANQUINHA C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3468, N'AGUARDENTE CANINHA DO PACA C/ 600ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3469, N'AGUARDENTE CARCARA C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3470, N'AGUARDENTE CASA GRANDE C/ 700 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3471, N'AGUARDENTE CASA VELHA C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3472, N'AGUARDENTE CENTRAL DO BRASIL C/700ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3473, N'AGUARDENTE CLANDESTINA C/ 600ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3474, N'AGUARDENTE CONTRA VENENO C/600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3475, N'AGUARDENTE DAMIO C/ 700ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3476, N'AGUARDENTE DIVINA C/ 700 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3477, N'AGUARDENTE DO SERRO C/700 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3478, N'AGUARDENTE DOMINANTE C/ 600ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3479, N'AGUARDENTE ILHA GRANDE C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3480, N'AGUARDENTE INSINUANTE', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3481, N'AGUARDENTE LUA & CANA C/ 700 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3482, N'AGUARDENTE MACAUBANA C/ 900 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3483, N'AGUARDENTE MARCAM C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3484, N'AGUARDENTE MATO DENTRO C/ 700 ML', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3485, N'AGUARDENTE RIO RANCHO C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3486, N'AGUARDENTE SAPEZINHA C/ 970 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3487, N'BACALHAU A MODA RÚSTICA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3488, N'MIX DE PICANHA,LINGUIÇA,LOMBINHO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3489, N'BOLINHO DE ABOBORA COM  CAMARÕES', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3490, N'BOLINHO DE CARNE DO SOL C/MANDIOCA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3491, N'CARNE DO SOL COM MACAXEIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3492, N'ISCA DE FILÉ DO GORGONZOLA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3493, N'MEDALHÃO AO RANCHO FUNDO', NULL, CAST(31.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3494, N'AGUARDENTE DOIDINHA C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3495, N'AGUARDENTE LISBOA C/ 600 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3497, N'GIN SEAGER´S C/1000 ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3498, N'LICOR DE AMENDOA AMARGUINHA C/ 700ML', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3499, N'LICOR GRAN MANIERE C/ 1000ML', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3501, N'WHISKY PINWINNIE ROYALE 12 ANOS C/ 1000ML', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3502, N'WHISKY LOGHAN C/ 750ML', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3503, N'RELÓGIO TRIO PÉ DE SERRA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3504, N'AGUARDENTE DALAGE C/ 1000 ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3505, N'BACALHAU GRELHADO C/ RED.DE ERVAS', NULL, CAST(39.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3506, N'CAMARÃO ATALAIA', NULL, CAST(46.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3507, N'SALADA A MODA DA COLONIA', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3508, N'REFRI. DIVERSOS LATA 350ML', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3509, N'ZZZZCERV. BAVARIA PREMIUM LATA 350ML', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3510, N'CERV. DIVERSAS ( LONG NECK )', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3512, N'OVOS ESTRELADOS DE CAPOEIRA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3513, N'CACHAÇA 3 PRAIA PRATA C/ 700 ML', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3515, N'KAPO ABACAXI', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3516, N'CREME BRULEÉ', NULL, CAST(16.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3517, N'DOCE DA FAZENDA COM QUEIJO', NULL, CAST(7.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3518, N'CROQUETE DE CARNE DO SOL PICANTE', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3519, N'QU DA FAZENDA AO AZEITE', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3520, N'LICOR CREME DE CASSIS C/700 ML', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3521, N'LICOR CREME DE MENTA 700 ML', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3522, N'BATIDA DE FRUTAS', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3523, N'MOJITO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3524, N'CUBA LIBRE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3525, N'SALAMINHO ITALIANO C/ AZEITONA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3526, N'AGUA MINERAL COM / E SEM  GÄS', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3527, N'CALÇA JEANS COUNTRY', NULL, CAST(63.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3528, N'CAMISA POLO BRANCA/AZUL/PRETA', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3529, N'CAFE EXPRESSO', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3530, N'CAFE CARIOCA', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3531, N'CAFE CURTO', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3532, N'REQUEIJAO CREMOSO', NULL, CAST(30.78 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3533, N'QUADRICICLO TRILHA ECOLOGICA', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3534, N'SUGESTAO DO CHEF', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3535, N'PORÇÃO DE FRIOS', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3537, N'CHOCOLATE QUENTE', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3538, N'TRENZINHO PARA LARANJEIRAS (NOTURNO)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3539, N'INGRESSO CURSO EMBOCADURA MANGALARGA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3540, N'CERVEJA SCHIN  LATA 350ML', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3541, N'INGRESSO CURSO EMBOCADURA MANGALARGA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3542, N'ESTAÇÃO DE MASSAS (ADULTO)', NULL, CAST(28.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3543, N'COMISSÃO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3544, N'REFRIGERANTE DIVERSOS', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3545, N'ALUGUEL DE MINI PONEI', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3546, N'INGRESSO ( REVEILLON 2012 )', NULL, CAST(180.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3547, N'INGRESSO ( REVEILLON 2012 )', NULL, CAST(160.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3548, N'INGRESSO ( REVEILLON 2012 )', NULL, CAST(140.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3549, N'DIARIA CHALE SEMANA', NULL, CAST(209.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3550, N'PREMIUM (BRIGAD, PE DE MOL, CHOCOCO)', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3551, N'ZPICOLE MAX PREMIUM', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3552, N'PICOLE FRUTBOM', NULL, CAST(1.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3553, N'ZPICOLE CREMOSINHO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3554, N'ZPICOLE POPLITO', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3555, N'ZSORVETE SUNDAE', NULL, CAST(6.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3556, N'ZSORVETE CICLONE', NULL, CAST(5.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3557, N'COUVERT ARTISTICO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3558, N'BUFFET', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3559, N'EMPRATADO DA FAZENDA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3560, N'INGR BOI PRETO', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3561, N'JANTAR (ESTAÇAO DE C. E GRELHAOS) (C. 5A10 ANOS', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3562, N'TEQUILA JOSE CUERVO ESPECIAL 750 ML', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3563, N'EVENTOS ROÇA ROÇA NA ROÇA', NULL, CAST(75.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3564, N'LAVAR/PASSAR BLUSA FEM.', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3565, N'LAVAR/PASSAR CAMISETA FEM.', NULL, CAST(6.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3566, N'LAVAR/PASSAR CAMISOLA', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3567, N'LAVAR/PASSAR MACACÃO FEM.', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3568, N'LAVAR/PASSAR PIJAMA FEM.', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3569, N'LAVAR/PASSAR SAIA', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3570, N'LAVAR/PASSAR SOUTIEN', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3571, N'LAVAR/PASSAR VESTIDO LONGO', NULL, CAST(18.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3572, N'LAVAR/PASSAR VESTIDO SIMPLES', NULL, CAST(12.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3573, N'LAVAR/PASSAR CALÇA CUMPRIDA FEM.', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3574, N'LAVAR/PASSAR CASACO FEM.', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3575, N'LAVAR/PASSAR ROBE FEM.', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3576, N'LAVAR/PASSAR TERNO FEM.', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3577, N'LAVAR/PASSAR BERMUDA MASC.', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3578, N'LAVAR/PASSAR CALÇA MASC.', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3579, N'LAVAR/PASSAR CAMISETA MASC.', NULL, CAST(6.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3580, N'LAVAR/PASSAR GRAVATA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3581, N'LAVAR/PASSAR MACACÃO MASC.', NULL, CAST(19.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3582, N'LAVAR/PASSAR MEIA MASC.', NULL, CAST(2.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3583, N'LAVAR/PASSAR PALETÓ MASC.', NULL, CAST(16.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3584, N'LAVAR/PASSAR PIJAMA MASC.', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3585, N'LAVAR/PASSAR ROUPÃO BANHO MASC.', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3586, N'LAVAR TÊNIS MASC.OU FEM', NULL, CAST(8.60 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3587, N'SO PASSAR BIQUINI', NULL, CAST(3.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3588, N'SO PASSAR BLUSA FEM.', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3589, N'SO PASSAR CALCINHA', NULL, CAST(3.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3590, N'SO PASSAR CAMISETA FEM.', NULL, CAST(4.10 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3591, N'SO PASSAR CAMISOLA FEM.', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3592, N'SO PASSAR MACACÃO FEM.', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3593, N'SO PASSAR PIJAMA FEM.', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3594, N'SO PASSAR SAIA', NULL, CAST(6.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3595, N'SO PASSAR SOUTIEN', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3596, N'SO PASSAR VESTIDO LONGO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3597, N'SO PASSAR VESTIDO SIMPLES FEM.', NULL, CAST(7.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3598, N'SO PASSAR BERMUDA FEM.', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3599, N'SO PASSAR CALÇA CUMPRIDA FEM.', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3600, N'SO PASSAR CASACO FEM.', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3601, N'SO PASSAR ROBE', NULL, CAST(9.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3602, N'SO PASSAR TERNO FEM.', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3603, N'SO PASSAR BERMUDA MASC.', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3604, N'SO PASSAR CALÇA MASC.', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3605, N'SO PASSAR CAMISETA MASC.', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3606, N'ZZZSO PASSAR CUECA', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3607, N'SO PASSAR GRAVATA MASC.', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3608, N'ZZSO PASSAR LENÇO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3609, N'SO PASSAR MACACÃO MASC.', NULL, CAST(11.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3610, N'SO PASSAR MEIA', NULL, CAST(1.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3611, N'SO PASSAR PALETÓ MASC.', NULL, CAST(9.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3612, N'SO PASSAR PIJAMA MASC.', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3613, N'SO PASSAR ROUPÃO BANHO MASC./FEM.', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3614, N'SO PASSAR SHORT MASC.', NULL, CAST(3.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3615, N'SO PASSAR CAMISA MAN.CURTA MASC.', NULL, CAST(4.30 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3616, N'ZZZZSO PASSAR CAMISA MAN.LONGA MASC.', NULL, CAST(6.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3617, N'SO PASSAR CALÇA JEANS MASC.', NULL, CAST(9.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3618, N'BISCOITO CASEIRO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3619, N'LAVAR/PASSAR CALÇA JEANS MASC.', NULL, CAST(14.70 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3620, N'LAVAR/PASSAR CUECA', NULL, CAST(5.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3621, N'SO PASSAR CUECA', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3622, N'ZZZZSO PASSAR CALÇA JEANS MASC.', NULL, CAST(9.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3623, N'LAVAR/PASSAR LENÇO', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3624, N'SO PASSAR LENÇO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3625, N'LAVAR/PASSAR SHORT MASC.', NULL, CAST(6.10 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3626, N'SO PASSAR SHORT FEM.', NULL, CAST(3.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3627, N'LAVAR/PASSAR CAMISA M.LONGA MASC.', NULL, CAST(9.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3628, N'SO PASSAR CAMISA M.LONGA MASC.', NULL, CAST(6.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3629, N'EVENTO ROÇA ROÇA NA ROÇA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3630, N'PIZZA JARDIM DAS LARANJEIRAS', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3631, N'TAMPA DE VASO SANITÁRIO', NULL, CAST(168.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3632, N'GRUPO MUSICAL', NULL, CAST(350.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3633, N'MENU FORNERIA', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3634, N'ALUGUEL DE BARALHO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3635, N'ALUGUEL DE DOMINÓ', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3636, N'ALUGUEL KIT PING PONG', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3637, N'ALUGUEL KIT SINUCA', NULL, CAST(100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3638, N'ALUGUEL BOLA PEBOLIM', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3639, N'WHISKY BLACK & WHITE', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3640, N'GELÁGUA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3641, N'QUADRICICLO TOUR RURAL (02 PESSOAS)', NULL, CAST(50.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3642, N'DAY USE - HOTEL', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3643, N'DAY USE/IDOSO - HOTEL', NULL, CAST(17.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3644, N'DAY USE - ECO PARQUE', NULL, CAST(69.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3645, N'VINHO RIO SOL VALE DO SÃO FRANCISCO CABERNET', NULL, CAST(47.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3646, N'VINHO RIO SOL SYRAH', NULL, CAST(53.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3647, N'ALAMOS MALBEC 2007', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3648, N'VINHO LACELIA RESERVA CABERNET FRANCES 2004', NULL, CAST(68.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3649, N'VINHO LOS VASCOS CABERNET SAUVIGNON', NULL, CAST(65.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3650, N'VINHO LATITUD 33 CHARDONNAY', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3651, N'ESPUMANTE RIO SOL BRUT 2007 (BRA)', NULL, CAST(62.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3652, N'VINHO GRAFFIGNA CHARDONNAY', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3653, N'VINHO LEON DE TARAPACA CHARDONNAY (CHILE)', NULL, CAST(49.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3654, N'INGRESSO AMOROSA CANTA ROBERTO (ADL)', NULL, CAST(99.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3655, N'BIQUINI COM BOJO TOMARA QUE CAIA', NULL, CAST(69.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3656, N'BIQUINI COM BOJO SIMPLES', NULL, CAST(69.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3657, N'INGRESSO AMOROSA CANTA ROBERTO (CHD)', NULL, CAST(49.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3658, N'BUFFET -RANCHO FUNDO DOMINGO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3659, N'BUFFET RIACHAO DO DANTAS', NULL, CAST(21.53 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3660, N'INGR - AMOROSA CANTA ROBERTO - ADL (JUR)', NULL, CAST(74.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3661, N'INGR - AMOROSA CANTA ROBERTO - CHD (JUR)', NULL, CAST(37.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3662, N'INGRESSO PAIXÃO DE CRISTO', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3663, N'INGRESSO PAIXÃO DE CRISTO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3664, N'ESPETINHO DE LINGUIÇA', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3665, N'PATROCINIO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3666, N'OMELETE DE ARATU', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3667, N'INGRESSO PAIXAO DE CRISTO (FUNCIONARIO)', NULL, CAST(12.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3668, N'CANJA DE GALINHA', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3669, N'PRATO PRINCIPAL SEXTA FEIRA SANTA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3670, N'COMUTADOR', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3671, N'SECADOR', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3672, N'BOLSINHA BICHINHO', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3673, N'CACHAÇA XINGÓ PRATA 670ML', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3674, N'FILÉ DE TILÁPIA', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3675, N'MAIO ADULTO', NULL, CAST(79.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3676, N'PUDIM', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3677, N'GARROTE MESTIÇO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3678, N'PASSEIO TRENZINHO VALE/CACHAÇARIA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3679, N'PROMOÇÃO GROUPON CACHAÇA BOA LUZ', NULL, CAST(27.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3680, N'DESPESAS COM IRREGULARIDADES', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3681, N'EDREDOM', NULL, CAST(296.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3682, N'LENÇOL', NULL, CAST(60.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3683, N'FRONHA', NULL, CAST(16.47 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3684, N'QUEIJO CURADO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3685, N'SORVETE CASQUINHA', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3686, N'SORVETE COPINHO', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3687, N'SORVETE SANDAE', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3688, N'PORÇÃO DE QUEIJOS', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3689, N'CARPACCIO SICILIANO', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3690, N'CARPACCIO DE SALMAO', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3691, N'SALADA SIMPLES', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3692, N'BRANDADE DE BACALHAU', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3693, N'SALADA DA NOSSA HORTA', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3694, N'PETIT GATEAU DE DOCE DE LEITE', NULL, CAST(13.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3695, N'ABACAXI FLAMBADO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3696, N'BEIJINHO DOCE', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3697, N'DOCE TÍPICOS DA FAZENDA C/QUEIJO BRQNCO', NULL, CAST(13.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3698, N'CREME DE AIPIM', NULL, CAST(17.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3699, N'ESPAGUETE NA MANTEIGA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3700, N'FETUCCINE AO FRUTOS DO MAR', NULL, CAST(26.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3701, N'PENNE AO ALHO E ÓLEO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3702, N'ARROZ DE PATO', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3703, N'RISOTO DE CAMARÃO', NULL, CAST(27.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3704, N'RISOTO  VEGETARIANO', NULL, CAST(24.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3705, N'POLENTA CAIPIRA', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3706, N'CREME DE MACAXEIRA COM CARNE DE SOL', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3707, N'PEIXE DO DIA COM LEGUMES', NULL, CAST(37.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3708, N'SALMAO A LARANJEIRAS', NULL, CAST(42.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3709, N'CAMARAO AO PERFUME DE ALHO', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3710, N'GRELHADO MAR E TERRA', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3711, N'POSTA DE BACALHAU GRELHADO', NULL, CAST(55.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3712, N'MEDALHAO DE FILET MIGNON', NULL, CAST(33.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3713, N'ESCALOPE DE FILE', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3714, N'CARNE DO SOL PUXADA COM CEBOLA', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3715, N'PUDIM DE LEITE', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3716, N'MEDALHÃO DE FRANGO À MODA DO CHEFE', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3717, N'NEMO', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3718, N'COCORICO', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3719, N'SIMBA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3720, N'MACARRAOZINHO DAS CRIANÇAS', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3721, N'PRATO DE QUEIJOS DA FAZENDA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3722, N'CEVICHE DE TILÁPIA', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3723, N'ROLINHOS DE PRIMAVERA', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3724, N'BRUSQUETA', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3725, N'MIX DE PASTEIS C/ 06 UNIDADES', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3726, N'FILÉ GORGONZOLA', NULL, CAST(30.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3727, N'SANDUICHE DE CARPACCIO', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3728, N'MINI - BURGUER', NULL, CAST(13.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3729, N'SALAMITO', NULL, CAST(14.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3730, N'SANDUICHE VEGETARIANO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3731, N'SANDUICHE NOSSO MISTO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3732, N'FILE FRANCES', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3733, N'CUPIM DE PANELA', NULL, CAST(42.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3734, N'CARNE DO SOL COM PIRAO DE LEITE', NULL, CAST(27.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3735, N'BUFFET GRUPO FHS ( REFEIÇÕES )', NULL, CAST(28.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3736, N'COFFE-BREAK (GRUPO IPESAUDE)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3737, N'BUFFET ANIVERSARIO ( AMOROSA )', NULL, CAST(19.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3738, N'TORTA DE LIMÃO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3739, N'TORTA SALGADA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3740, N'EMPANADO DE CAMARAO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3741, N'BARBEADOR', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3742, N'BOLSA CACHAÇA BOA LUZ', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3743, N'PICOLE NESTLE MOÇA', NULL, CAST(2.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3744, N'PICOLE NESTLE GALAK', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3745, N'PICOLE NESTLE MOÇA FIESTA', NULL, CAST(3.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3746, N'BOLINHO DE MANDIOCA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3747, N'CASULO DE QUEIJO', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3748, N'KIBINHO', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3749, N'TORRESMO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3750, N'FIGADO COM GILÓ ACEBOLADO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3751, N'MACARRONADA A BOLONHESA', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3752, N'DOBRADINHA PURA COM PÃES', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3753, N'CALDINHO DE FRUTOS DO MAR', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3754, N'ARROZ TEMPERADO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3755, N'ARROZ COM BROCOLIS', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3756, N'VINAGRETE', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3757, N'PURÊ DE BATATAS', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3758, N'CHAPEUZINHO VERMELHO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3759, N'ESPETINHO DE BACON COM FRANGO', NULL, CAST(5.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3760, N'PASTEL DE FORNO CAMARÃO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3761, N'PASTEL FRITO DE QUEIJO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3762, N'PASTEL FRITO MISTO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3763, N'PASTEL DE FORNO', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3764, N'FRANGO A PASSARINHA COM VINAGRETE', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3765, N'SALGADO-QUIBE', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3766, N'TRIO PE DE SERRA (MACAXEIRA/LING/TORRES)', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3767, N'SALGADO-ENROLADINHO DE SALSICHAS', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3768, N'SALGADO-PASTEL DE QUEIJO', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3769, N'SANDUICHE-CHEESE  PICANHA', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3770, N'CARNE DO SOL COM MACAXEIRA FRITA ACEBOLADA', NULL, CAST(29.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3771, N'CAFE CONTINENTAL', NULL, CAST(19.90 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3772, N'CAFE DA MANHA (GRUPO PRESCOL)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3773, N'FOLHEADO DE FRANGO', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3774, N'MOUSSE VARIADOS', NULL, CAST(3.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3775, N'DOCE DE LEITE DA  FAZENDA', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3776, N'DAY USE (OFERTA)', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3777, N'CORUJA DE MADEIRA (PEQUENA)', NULL, CAST(10.20 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3778, N'CORUJA DE MADEIRA (MÉDIA)', NULL, CAST(16.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3779, N'CORUJA DE MADEIRA (GRANDE)', NULL, CAST(36.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3780, N'CANTÍL DE BURITI', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3781, N'CAVALO DE MADEIRA (PEQUENO)', NULL, CAST(12.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3782, N'CAVALO DE MADEIRA (MÉDIO)', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3783, N'CAVALO DE MADEIRA (GRANDE)', NULL, CAST(80.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3784, N'CANGA', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3785, N'BLUSÃO', NULL, CAST(40.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3786, N'CHAPEU DE COURO SERTANEJO', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3787, N'CHAPEU CROCHÊ', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3788, N'CHAPEU CUMBUCA', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3789, N'VISEIRA TACTEL', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3790, N'CAMISA ADULTO BRANCA', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3791, N'CAMISA DE COTON', NULL, CAST(21.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3792, N'VESTIDO TORCIDO CURTO', NULL, CAST(38.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3793, N'VESTIDO TORCIDO LONGO', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3794, N'BOLA DE FUTEBOL', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3795, N'ANEL', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3796, N'RELOGIO AZULEJO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3797, N'RELOGIO PRANCHA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3798, N'PORTA MOEDA (COCO)', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3799, N'PRATO LOUÇA (ARACAJU SE)', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3800, N'PORTA CANETA INDIO/TUCANO', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3801, N'SHORT TACTEL MASCULINO ADULTO', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3802, N'SHORT INFANTIL FEMININO', NULL, CAST(12.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3803, N'PORTA JÓIA (MADEIRA)', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3804, N'BONECA NEGA MALUCA (CERAMICA PEQUENA)', NULL, CAST(11.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3805, N'TRIO ARARA PAREDE (PEQUENA)', NULL, CAST(25.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3806, N'FOLHA DE MADEIRA', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3807, N'SHORT FEMININO ADULTO', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3808, N'ANEIS DE COCO', NULL, CAST(1.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3809, N'TARTARUGA DE MADEIRA', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3810, N'PORTA RETRATO (MADEIRA)', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3811, N'TIARA (CABELO)', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3812, N'TRIO INDIA (MADEIRA)', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3813, N'TRIO PEIXE MADEIRA (PEQUENO)', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3814, N'TRIO TUCANO', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3815, N'TRIO NORDESTINO BISQUI', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3816, N'TRIO DE FLOR', NULL, CAST(32.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3817, N'TUCANO DE MADEIRA (PEQUENO)', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3818, N'MANÉ GOSTOSO DE MADEIRA', NULL, CAST(4.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3819, N'MACARRÃO PARA PISCINA', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3820, N'BOIA BRAÇO', NULL, CAST(13.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3821, N'BOIA REDONDA (BICHOS)', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3822, N'BOIA REDONDA SIMPLES', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3823, N'BOTE PEZINHO', NULL, CAST(38.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3824, N'COLETE INFANTIL', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3825, N'CORDÃO MENINO (MADEIRA)', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3826, N'JACARÉ GRANDE', NULL, CAST(89.60 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3827, N'PISCINA INFANTIL PEQUENA', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3828, N'TARTARUGA GRANDE', NULL, CAST(115.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3829, N'ARARA TETO (MADEIRA MEDIA)', NULL, CAST(48.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3830, N'AGENDA BURITI', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3831, N'BRINCO COCO', NULL, CAST(6.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3832, N'BONECO BARRO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3833, N'BIQUINI ADULTO', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3834, N'BONE BOA LUZ', NULL, CAST(18.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3835, N'BONE TACTEL SIMPLES( CORTESIA )', NULL, CAST(14.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3836, N'BIQUINI FIO DENTAL', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3837, N'BONE DORDADO', NULL, CAST(0.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3838, N'BOLSA CRUA (PEQUENA)', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3839, N'BOLSA PLASTICA', NULL, CAST(23.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3840, N'BOI DE MADEIRA (PEQUENO)', NULL, CAST(15.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3841, N'BOI DE MADEIRA (MEDIO)', NULL, CAST(26.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3842, N'BARCO GRANDE', NULL, CAST(35.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3843, N'CAIXA MAGICA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3844, N'CAJÚ DE BARRO', NULL, CAST(5.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3845, N'CACHAÇA DE MACACO', NULL, CAST(28.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3846, N'COFRE (CAJU PEQUENO)', NULL, CAST(7.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3847, N'COFRE (CAJU MEDIO)', NULL, CAST(10.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3848, N'COLAR SIMPLES', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3849, N'CARRANCAS PEQUENA', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3850, N'CINZEIRO PÉ SIMPLES', NULL, CAST(20.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3851, N'ELEFANTE DE MADEIRA (PEQUENO)', NULL, CAST(10.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3852, N'BOI DE MADEIRA (GRANDE)', NULL, CAST(72.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3853, N'GARRAFA DE AREIA (PQ)', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3854, N'PISCINA INFANTIL MEDIA', NULL, CAST(28.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3855, N'PISCINA INFANTIL GRANDE', NULL, CAST(45.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3856, N'IMA RESINA', NULL, CAST(2.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3857, N'IMA MADEIRA', NULL, CAST(4.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3858, N'IMA ESPECIAL', NULL, CAST(8.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3859, N'LAPIS DECORADO', NULL, CAST(5.50 AS Numeric(18, 2)))
GO
INSERT [dbo].[Produto] ([Codigo], [Nome], [Descricao], [Valor]) VALUES (3860, N'SINOS MENSAGEIROS (PEQUENO)', NULL, CAST(22.00 AS Numeric(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Produto] OFF
GO
delete from Produto
where nome like '%Boa%luz%';
GO

SET IDENTITY_INSERT [dbo].[Reserva] ON 



GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (1, 1, 84, CAST(N'2015-12-12' AS Date), CAST(N'2015-12-13' AS Date), CAST(N'2015-11-09 21:31:42.637' AS DateTime), CAST(600.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (2, 14, 97, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-13 13:22:19.980' AS DateTime), CAST(630.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (3, 15, 98, CAST(N'2015-12-05' AS Date), CAST(N'2015-12-07' AS Date), CAST(N'2015-11-16 10:24:32.460' AS DateTime), CAST(905.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (4, 16, 99, CAST(N'2015-12-25' AS Date), CAST(N'2015-12-27' AS Date), CAST(N'2015-11-16 10:31:12.310' AS DateTime), CAST(2520.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (5, 16, 99, CAST(N'2015-12-25' AS Date), CAST(N'2015-12-27' AS Date), CAST(N'2015-11-16 10:31:12.310' AS DateTime), CAST(2520.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (6, 17, 100, CAST(N'2015-12-25' AS Date), CAST(N'2015-12-27' AS Date), CAST(N'2015-11-16 10:44:15.343' AS DateTime), CAST(1260.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (7, 18, 101, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-23' AS Date), CAST(N'2015-11-16 21:09:04.597' AS DateTime), CAST(1890.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (8, 18, 101, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-16 21:09:04.597' AS DateTime), CAST(1890.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (9, 19, 102, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-16 21:12:32.407' AS DateTime), CAST(630.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (10, 20, 103, CAST(N'2015-12-04' AS Date), CAST(N'2015-12-08' AS Date), CAST(N'2015-11-16 23:18:57.237' AS DateTime), CAST(1810.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (11, 21, 104, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-17 08:24:43.057' AS DateTime), CAST(600.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (12, 22, 105, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-18 12:59:06.847' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (13, 23, 106, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-18 13:01:04.753' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (14, 24, 107, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-18 13:07:09.530' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (15, 24, 107, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-18 13:07:09.530' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (16, 24, 107, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-18 13:07:09.530' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (17, 24, 107, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-18 13:07:09.530' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (18, 24, 107, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-18 13:07:09.530' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (19, 24, 107, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-18 13:07:09.530' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (20, 25, 108, CAST(N'2015-12-16' AS Date), CAST(N'2015-12-18' AS Date), CAST(N'2015-11-18 15:14:38.917' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (21, 26, 109, CAST(N'2015-12-29' AS Date), CAST(N'2015-12-30' AS Date), CAST(N'2015-11-18 16:33:00.590' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (22, 27, 110, CAST(N'2015-11-28' AS Date), CAST(N'2015-11-30' AS Date), CAST(N'2015-11-18 18:58:29.527' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (23, 28, 111, CAST(N'2015-11-27' AS Date), CAST(N'2015-11-28' AS Date), CAST(N'2015-11-18 21:11:48.917' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (24, 29, 112, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-07' AS Date), CAST(N'2015-11-18 23:32:34.647' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (25, 30, 113, CAST(N'2015-12-24' AS Date), CAST(N'2015-12-27' AS Date), CAST(N'2015-11-19 09:12:40.983' AS DateTime), CAST(2268.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (26, 31, 114, CAST(N'2015-12-24' AS Date), CAST(N'2015-12-27' AS Date), CAST(N'2015-11-19 09:21:49.687' AS DateTime), CAST(2268.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (27, 32, 115, CAST(N'2016-01-07' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2015-11-19 10:04:39.783' AS DateTime), CAST(1235.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (28, 33, 116, CAST(N'2015-11-23' AS Date), CAST(N'2015-11-24' AS Date), CAST(N'2015-11-19 12:02:03.820' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (29, 34, 117, CAST(N'2015-11-23' AS Date), CAST(N'2015-11-24' AS Date), CAST(N'2015-11-19 12:06:35.217' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (30, 35, 118, CAST(N'2015-12-26' AS Date), CAST(N'2015-12-30' AS Date), CAST(N'2015-11-19 19:09:11.203' AS DateTime), CAST(1306.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (31, 36, 119, CAST(N'2015-11-24' AS Date), CAST(N'2015-11-25' AS Date), CAST(N'2015-11-19 19:18:44.557' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (32, 37, 120, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-07' AS Date), CAST(N'2015-11-19 21:06:02.683' AS DateTime), CAST(720.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (33, 38, 121, CAST(N'2015-11-24' AS Date), CAST(N'2015-11-25' AS Date), CAST(N'2015-11-20 09:26:42.903' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (34, 39, 122, CAST(N'2015-11-24' AS Date), CAST(N'2015-11-25' AS Date), CAST(N'2015-11-20 09:31:31.427' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (35, 40, 123, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-20 11:01:31.910' AS DateTime), CAST(960.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (36, 40, 123, CAST(N'2015-11-21' AS Date), CAST(N'2015-11-22' AS Date), CAST(N'2015-11-20 11:01:31.910' AS DateTime), CAST(960.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (37, 41, 124, CAST(N'2015-11-26' AS Date), CAST(N'2015-11-28' AS Date), CAST(N'2015-11-20 11:58:59.737' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (38, 42, 125, CAST(N'2015-11-23' AS Date), CAST(N'2015-11-24' AS Date), CAST(N'2015-11-20 14:08:32.053' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (39, 43, 126, CAST(N'2015-12-15' AS Date), CAST(N'2015-12-17' AS Date), CAST(N'2015-11-20 16:15:53.107' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (40, 44, 127, CAST(N'2015-12-20' AS Date), CAST(N'2015-12-23' AS Date), CAST(N'2015-11-21 20:15:37.677' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (41, 44, 127, CAST(N'2015-12-20' AS Date), CAST(N'2015-12-23' AS Date), CAST(N'2015-11-21 20:15:37.677' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (42, 45, 128, CAST(N'2015-12-20' AS Date), CAST(N'2015-12-23' AS Date), CAST(N'2015-11-22 14:24:55.290' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (43, 45, 128, CAST(N'2015-12-20' AS Date), CAST(N'2015-12-23' AS Date), CAST(N'2015-11-22 14:24:55.290' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (44, 46, 129, CAST(N'2016-01-02' AS Date), CAST(N'2016-01-06' AS Date), CAST(N'2015-11-22 23:22:42.043' AS DateTime), CAST(1581.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (45, 47, 130, CAST(N'2016-01-02' AS Date), CAST(N'2016-01-06' AS Date), CAST(N'2015-11-22 23:32:06.097' AS DateTime), CAST(1581.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (46, 48, 131, CAST(N'2016-02-12' AS Date), CAST(N'2016-02-15' AS Date), CAST(N'2015-11-22 23:38:07.367' AS DateTime), CAST(825.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (47, 49, 132, CAST(N'2015-11-25' AS Date), CAST(N'2015-11-26' AS Date), CAST(N'2015-11-23 17:31:24.493' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (48, 50, 133, CAST(N'2015-11-25' AS Date), CAST(N'2015-11-26' AS Date), CAST(N'2015-11-23 17:45:30.067' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (49, 51, 134, CAST(N'2015-12-28' AS Date), CAST(N'2015-12-30' AS Date), CAST(N'2015-11-23 23:19:41.327' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (50, 52, 135, CAST(N'2016-02-07' AS Date), CAST(N'2016-02-09' AS Date), CAST(N'2015-11-24 10:09:13.077' AS DateTime), CAST(700.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (51, 53, 136, CAST(N'2016-03-04' AS Date), CAST(N'2016-03-08' AS Date), CAST(N'2015-11-24 14:42:18.417' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (52, 54, 137, CAST(N'2016-02-20' AS Date), CAST(N'2016-02-21' AS Date), CAST(N'2015-11-24 19:05:27.520' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (53, 55, 138, CAST(N'2015-12-06' AS Date), CAST(N'2015-12-08' AS Date), CAST(N'2015-11-25 07:01:12.307' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (54, 56, 139, CAST(N'2015-12-06' AS Date), CAST(N'2015-12-08' AS Date), CAST(N'2015-11-25 07:03:07.627' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (55, 57, 140, CAST(N'2016-03-18' AS Date), CAST(N'2016-03-20' AS Date), CAST(N'2015-11-25 16:35:30.853' AS DateTime), CAST(960.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (56, 58, 141, CAST(N'2015-12-02' AS Date), CAST(N'2015-12-04' AS Date), CAST(N'2015-11-25 19:01:35.557' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (57, 59, 142, CAST(N'2015-12-24' AS Date), CAST(N'2015-12-27' AS Date), CAST(N'2015-11-25 19:01:56.010' AS DateTime), CAST(3420.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (58, 60, 143, CAST(N'2015-12-22' AS Date), CAST(N'2015-12-25' AS Date), CAST(N'2015-11-26 09:25:25.953' AS DateTime), CAST(1787.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (59, 61, 144, CAST(N'2015-12-15' AS Date), CAST(N'2015-12-18' AS Date), CAST(N'2015-11-26 13:04:07.597' AS DateTime), CAST(825.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (60, 62, 145, CAST(N'2015-12-12' AS Date), CAST(N'2015-12-13' AS Date), CAST(N'2015-11-26 17:06:40.637' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (61, 63, 146, CAST(N'2016-01-02' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-11-27 00:24:44.270' AS DateTime), CAST(1031.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (62, 64, 147, CAST(N'2016-01-11' AS Date), CAST(N'2016-01-14' AS Date), CAST(N'2015-11-27 17:16:19.400' AS DateTime), CAST(825.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (63, 65, 148, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2015-11-27 21:31:02.450' AS DateTime), CAST(1785.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (64, 66, 149, CAST(N'2016-01-11' AS Date), CAST(N'2016-01-14' AS Date), CAST(N'2015-11-27 21:51:49.247' AS DateTime), CAST(2100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (65, 66, 149, CAST(N'2016-01-11' AS Date), CAST(N'2016-01-14' AS Date), CAST(N'2015-11-27 21:51:49.247' AS DateTime), CAST(2100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (66, 67, 150, CAST(N'2016-01-04' AS Date), CAST(N'2016-01-06' AS Date), CAST(N'2015-11-28 17:06:41.297' AS DateTime), CAST(700.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (67, 68, 151, CAST(N'2016-01-04' AS Date), CAST(N'2016-01-06' AS Date), CAST(N'2015-11-28 17:10:16.937' AS DateTime), CAST(700.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (68, 69, 152, CAST(N'2016-01-15' AS Date), CAST(N'2016-01-18' AS Date), CAST(N'2015-11-28 19:22:32.353' AS DateTime), CAST(1235.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (69, 70, 153, CAST(N'2016-01-02' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-11-29 00:43:01.200' AS DateTime), CAST(1031.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (70, 71, 154, CAST(N'2016-01-10' AS Date), CAST(N'2016-01-14' AS Date), CAST(N'2015-11-29 10:04:42.713' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (71, 72, 155, CAST(N'2016-01-10' AS Date), CAST(N'2016-01-14' AS Date), CAST(N'2015-11-29 15:30:55.920' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (72, 73, 156, CAST(N'2016-01-10' AS Date), CAST(N'2016-01-14' AS Date), CAST(N'2015-11-29 15:33:28.257' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (73, 74, 157, CAST(N'2015-12-07' AS Date), CAST(N'2015-12-10' AS Date), CAST(N'2015-11-30 00:11:59.253' AS DateTime), CAST(825.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (74, 75, 158, CAST(N'2015-12-05' AS Date), CAST(N'2015-12-07' AS Date), CAST(N'2015-11-30 07:28:18.130' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (75, 76, 159, CAST(N'2015-12-04' AS Date), CAST(N'2015-12-07' AS Date), CAST(N'2015-11-30 11:50:00.667' AS DateTime), CAST(1235.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (76, 77, 160, CAST(N'2016-01-03' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-01 06:54:49.633' AS DateTime), CAST(975.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (77, 77, 160, CAST(N'2016-01-04' AS Date), CAST(N'2016-01-06' AS Date), CAST(N'2015-12-01 06:54:49.633' AS DateTime), CAST(975.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (78, 80, 163, CAST(N'2015-12-06' AS Date), CAST(N'2015-12-09' AS Date), CAST(N'2015-12-01 12:43:55.047' AS DateTime), CAST(1050.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (79, 81, 164, CAST(N'2015-12-06' AS Date), CAST(N'2015-12-09' AS Date), CAST(N'2015-12-01 12:45:54.107' AS DateTime), CAST(1050.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (80, 82, 165, CAST(N'2015-12-06' AS Date), CAST(N'2015-12-09' AS Date), CAST(N'2015-12-01 12:47:39.750' AS DateTime), CAST(1050.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (81, 85, 168, CAST(N'2015-12-05' AS Date), CAST(N'2015-12-08' AS Date), CAST(N'2015-12-02 10:50:12.323' AS DateTime), CAST(1030.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (82, 86, 169, CAST(N'2015-12-05' AS Date), CAST(N'2015-12-08' AS Date), CAST(N'2015-12-02 10:52:29.527' AS DateTime), CAST(1030.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (83, 87, 170, CAST(N'2015-12-08' AS Date), CAST(N'2015-12-09' AS Date), CAST(N'2015-12-03 10:44:03.077' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (84, 88, 171, CAST(N'2015-12-05' AS Date), CAST(N'2015-12-08' AS Date), CAST(N'2015-12-03 10:50:43.160' AS DateTime), CAST(1030.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (85, 89, 172, CAST(N'2015-12-05' AS Date), CAST(N'2015-12-08' AS Date), CAST(N'2015-12-03 11:05:11.323' AS DateTime), CAST(1030.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (86, 90, 173, CAST(N'2015-12-05' AS Date), CAST(N'2015-12-08' AS Date), CAST(N'2015-12-03 17:36:12.637' AS DateTime), CAST(1030.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (87, 91, 174, CAST(N'2015-12-04' AS Date), CAST(N'2015-12-06' AS Date), CAST(N'2015-12-04 01:58:00.450' AS DateTime), CAST(4920.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (88, 91, 174, CAST(N'2015-12-04' AS Date), CAST(N'2015-12-06' AS Date), CAST(N'2015-12-04 01:58:00.450' AS DateTime), CAST(4920.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (89, 91, 174, CAST(N'2015-12-04' AS Date), CAST(N'2015-12-06' AS Date), CAST(N'2015-12-04 01:58:00.450' AS DateTime), CAST(4920.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (90, 91, 174, CAST(N'2015-12-04' AS Date), CAST(N'2015-12-06' AS Date), CAST(N'2015-12-04 01:58:00.450' AS DateTime), CAST(4920.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (91, 91, 174, CAST(N'2015-12-04' AS Date), CAST(N'2015-12-06' AS Date), CAST(N'2015-12-04 01:58:00.450' AS DateTime), CAST(4920.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (92, 92, 175, CAST(N'2015-12-04' AS Date), CAST(N'2015-12-06' AS Date), CAST(N'2015-12-04 02:08:58.433' AS DateTime), CAST(960.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (93, 93, 176, CAST(N'2016-01-24' AS Date), CAST(N'2016-01-27' AS Date), CAST(N'2015-12-04 10:54:37.453' AS DateTime), CAST(825.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (94, 94, 177, CAST(N'2015-12-05' AS Date), CAST(N'2015-12-08' AS Date), CAST(N'2015-12-04 11:46:59.483' AS DateTime), CAST(1030.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (95, 95, 178, CAST(N'2016-02-27' AS Date), CAST(N'2016-02-29' AS Date), CAST(N'2015-12-04 13:55:08.153' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (96, 96, 179, CAST(N'2016-02-27' AS Date), CAST(N'2016-02-29' AS Date), CAST(N'2015-12-04 14:26:20.157' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (97, 97, 180, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-04 21:17:52.697' AS DateTime), CAST(3849.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (98, 97, 180, CAST(N'2015-12-14' AS Date), CAST(N'2015-12-17' AS Date), CAST(N'2015-12-04 21:17:52.697' AS DateTime), CAST(3849.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (99, 98, 181, CAST(N'2015-12-16' AS Date), CAST(N'2015-12-18' AS Date), CAST(N'2015-12-06 08:45:02.070' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (100, 99, 182, CAST(N'2015-12-16' AS Date), CAST(N'2015-12-18' AS Date), CAST(N'2015-12-06 12:19:24.723' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (101, 100, 183, CAST(N'2015-12-18' AS Date), CAST(N'2015-12-20' AS Date), CAST(N'2015-12-06 13:46:04.227' AS DateTime), CAST(960.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (102, 101, 184, CAST(N'2016-01-10' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2015-12-06 14:30:35.133' AS DateTime), CAST(1375.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (103, 102, 185, CAST(N'2016-01-04' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-06 20:25:12.750' AS DateTime), CAST(1581.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (104, 103, 186, CAST(N'2015-12-28' AS Date), CAST(N'2015-12-29' AS Date), CAST(N'2015-12-06 21:33:18.730' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (105, 105, 188, CAST(N'2015-12-08' AS Date), CAST(N'2015-12-09' AS Date), CAST(N'2015-12-07 13:27:25.893' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (106, 106, 189, CAST(N'2015-12-27' AS Date), CAST(N'2015-12-28' AS Date), CAST(N'2015-12-07 15:30:20.530' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (107, 107, 190, CAST(N'2016-01-07' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-08 10:07:01.607' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (108, 108, 191, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-08 10:37:02.723' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (109, 109, 192, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-08 10:38:59.587' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (110, 110, 193, CAST(N'2015-12-09' AS Date), CAST(N'2015-12-12' AS Date), CAST(N'2015-12-08 14:11:34.533' AS DateTime), CAST(1030.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (111, 111, 194, CAST(N'2016-03-11' AS Date), CAST(N'2016-03-14' AS Date), CAST(N'2015-12-08 17:51:35.897' AS DateTime), CAST(3705.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (112, 111, 194, CAST(N'2016-03-11' AS Date), CAST(N'2016-03-14' AS Date), CAST(N'2015-12-08 17:51:35.897' AS DateTime), CAST(3705.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (113, 111, 194, CAST(N'2016-03-11' AS Date), CAST(N'2016-03-14' AS Date), CAST(N'2015-12-08 17:51:35.897' AS DateTime), CAST(3705.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (114, 112, 195, CAST(N'2015-12-12' AS Date), CAST(N'2015-12-13' AS Date), CAST(N'2015-12-08 21:58:58.787' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (115, 113, 196, CAST(N'2016-01-04' AS Date), CAST(N'2016-01-05' AS Date), CAST(N'2015-12-09 15:37:51.867' AS DateTime), CAST(1140.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (116, 114, 197, CAST(N'2015-12-12' AS Date), CAST(N'2015-12-13' AS Date), CAST(N'2015-12-09 17:47:58.590' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (117, 115, 198, CAST(N'2015-12-12' AS Date), CAST(N'2015-12-13' AS Date), CAST(N'2015-12-09 17:49:53.097' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (118, 116, 199, CAST(N'2016-01-15' AS Date), CAST(N'2016-01-18' AS Date), CAST(N'2015-12-11 08:57:42.550' AS DateTime), CAST(1235.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (119, 117, 200, CAST(N'2015-12-12' AS Date), CAST(N'2015-12-13' AS Date), CAST(N'2015-12-11 11:05:32.577' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (120, 118, 201, CAST(N'2015-12-27' AS Date), CAST(N'2015-12-29' AS Date), CAST(N'2015-12-12 07:30:53.943' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (121, 119, 202, CAST(N'2016-01-20' AS Date), CAST(N'2016-01-24' AS Date), CAST(N'2015-12-12 10:36:51.233' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (122, 120, 203, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-12 10:54:58.797' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (123, 121, 204, CAST(N'2015-12-17' AS Date), CAST(N'2015-12-19' AS Date), CAST(N'2015-12-12 20:41:51.813' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (124, 122, 205, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-12 21:50:35.657' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (125, 123, 206, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-13 11:05:32.363' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (126, 124, 207, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-21' AS Date), CAST(N'2015-12-13 15:50:21.477' AS DateTime), CAST(825.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (127, 125, 208, CAST(N'2015-12-16' AS Date), CAST(N'2015-12-18' AS Date), CAST(N'2015-12-14 07:09:01.243' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (128, 126, 209, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-14 11:21:14.360' AS DateTime), CAST(5500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (129, 126, 209, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-14 11:21:14.360' AS DateTime), CAST(5500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (130, 126, 209, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-14 11:21:14.360' AS DateTime), CAST(5500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (131, 126, 209, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-14 11:21:14.360' AS DateTime), CAST(5500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (132, 126, 209, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-14 11:21:14.360' AS DateTime), CAST(5500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (133, 127, 210, CAST(N'2016-01-16' AS Date), CAST(N'2016-01-17' AS Date), CAST(N'2015-12-14 13:10:03.623' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (134, 128, 211, CAST(N'2016-01-15' AS Date), CAST(N'2016-01-18' AS Date), CAST(N'2015-12-14 14:51:45.740' AS DateTime), CAST(1890.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (135, 129, 212, CAST(N'2016-01-15' AS Date), CAST(N'2016-01-18' AS Date), CAST(N'2015-12-14 14:55:09.773' AS DateTime), CAST(1890.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (136, 130, 213, CAST(N'2015-12-17' AS Date), CAST(N'2015-12-19' AS Date), CAST(N'2015-12-14 16:42:44.563' AS DateTime), CAST(4490.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (137, 130, 213, CAST(N'2015-12-17' AS Date), CAST(N'2015-12-19' AS Date), CAST(N'2015-12-14 16:42:44.563' AS DateTime), CAST(4490.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (138, 130, 213, CAST(N'2015-12-17' AS Date), CAST(N'2015-12-19' AS Date), CAST(N'2015-12-14 16:42:44.563' AS DateTime), CAST(4490.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (139, 130, 213, CAST(N'2015-12-17' AS Date), CAST(N'2015-12-19' AS Date), CAST(N'2015-12-14 16:42:44.563' AS DateTime), CAST(4490.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (140, 130, 213, CAST(N'2015-12-16' AS Date), CAST(N'2015-12-19' AS Date), CAST(N'2015-12-14 16:42:44.563' AS DateTime), CAST(4490.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (141, 131, 214, CAST(N'2015-12-16' AS Date), CAST(N'2015-12-19' AS Date), CAST(N'2015-12-14 16:48:06.457' AS DateTime), CAST(1030.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (142, 132, 215, CAST(N'2015-12-18' AS Date), CAST(N'2015-12-20' AS Date), CAST(N'2015-12-14 20:54:11.113' AS DateTime), CAST(960.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (143, 133, 216, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2015-12-15 11:04:34.167' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (144, 134, 217, CAST(N'2016-01-15' AS Date), CAST(N'2016-01-18' AS Date), CAST(N'2015-12-15 11:22:13.340' AS DateTime), CAST(1235.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (145, 135, 218, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-07' AS Date), CAST(N'2015-12-15 20:53:58.580' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (146, 136, 219, CAST(N'2016-01-29' AS Date), CAST(N'2016-01-31' AS Date), CAST(N'2015-12-15 21:38:09.317' AS DateTime), CAST(1540.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (147, 137, 220, CAST(N'2016-01-29' AS Date), CAST(N'2016-01-31' AS Date), CAST(N'2015-12-15 21:56:46.740' AS DateTime), CAST(960.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (148, 138, 221, CAST(N'2015-12-18' AS Date), CAST(N'2015-12-20' AS Date), CAST(N'2015-12-16 00:20:51.200' AS DateTime), CAST(960.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (149, 139, 222, CAST(N'2015-12-23' AS Date), CAST(N'2015-12-27' AS Date), CAST(N'2015-12-16 12:30:08.600' AS DateTime), CAST(3024.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (150, 144, 227, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-11' AS Date), CAST(N'2015-12-16 14:25:32.533' AS DateTime), CAST(2060.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (151, 145, 228, CAST(N'2016-01-15' AS Date), CAST(N'2016-01-19' AS Date), CAST(N'2015-12-16 19:43:54.377' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (152, 146, 229, CAST(N'2015-12-19' AS Date), CAST(N'2015-12-21' AS Date), CAST(N'2015-12-16 20:35:09.983' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (153, 147, 230, CAST(N'2015-12-19' AS Date), CAST(N'2015-12-20' AS Date), CAST(N'2015-12-17 06:12:34.293' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (154, 148, 231, CAST(N'2016-01-22' AS Date), CAST(N'2016-01-25' AS Date), CAST(N'2015-12-17 11:34:39.253' AS DateTime), CAST(1235.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (155, 149, 232, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-17 16:32:07.173' AS DateTime), CAST(1512.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (156, 150, 233, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-17 16:36:35.980' AS DateTime), CAST(1512.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (157, 151, 234, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-17 16:44:23.143' AS DateTime), CAST(1512.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (158, 152, 235, CAST(N'2016-01-06' AS Date), CAST(N'2016-01-07' AS Date), CAST(N'2015-12-18 19:43:11.423' AS DateTime), CAST(350.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (159, 153, 236, CAST(N'2016-02-12' AS Date), CAST(N'2016-02-15' AS Date), CAST(N'2015-12-19 03:27:59.597' AS DateTime), CAST(1050.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (160, 154, 237, CAST(N'2016-01-14' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2015-12-19 10:41:10.367' AS DateTime), CAST(975.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (161, 154, 237, CAST(N'2016-01-14' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2015-12-19 10:41:10.367' AS DateTime), CAST(975.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (162, 154, 237, CAST(N'2016-01-14' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2015-12-19 10:41:10.367' AS DateTime), CAST(975.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (163, 155, 238, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-19 10:45:42.560' AS DateTime), CAST(5185.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (164, 155, 238, CAST(N'2016-01-14' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2015-12-19 10:45:42.560' AS DateTime), CAST(5185.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (165, 155, 238, CAST(N'2016-01-14' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2015-12-19 10:45:42.560' AS DateTime), CAST(5185.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (166, 156, 239, CAST(N'2016-01-26' AS Date), CAST(N'2016-01-29' AS Date), CAST(N'2015-12-19 23:05:49.487' AS DateTime), CAST(825.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (167, 157, 240, CAST(N'2015-12-23' AS Date), CAST(N'2015-12-27' AS Date), CAST(N'2015-12-20 20:53:03.663' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (168, 158, 241, CAST(N'2016-02-12' AS Date), CAST(N'2016-02-15' AS Date), CAST(N'2015-12-20 21:20:59.260' AS DateTime), CAST(1050.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (169, 159, 242, CAST(N'2016-02-12' AS Date), CAST(N'2016-02-15' AS Date), CAST(N'2015-12-20 21:33:33.233' AS DateTime), CAST(1050.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (170, 160, 243, CAST(N'2016-01-04' AS Date), CAST(N'2016-01-07' AS Date), CAST(N'2015-12-20 22:19:28.677' AS DateTime), CAST(6121.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (171, 160, 243, CAST(N'2016-01-04' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-20 22:19:28.677' AS DateTime), CAST(6121.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (172, 160, 243, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-20 22:19:28.677' AS DateTime), CAST(6121.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (173, 160, 243, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-20 22:19:28.677' AS DateTime), CAST(6121.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (174, 160, 243, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-20 22:19:28.677' AS DateTime), CAST(6121.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (175, 161, 244, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-20 22:22:47.657' AS DateTime), CAST(1050.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (176, 162, 245, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-21' AS Date), CAST(N'2015-12-21 00:45:56.063' AS DateTime), CAST(1050.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (177, 163, 246, CAST(N'2016-02-19' AS Date), CAST(N'2016-02-20' AS Date), CAST(N'2015-12-21 09:50:46.187' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (178, 164, 247, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-21 12:08:37.523' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (179, 165, 248, CAST(N'2016-02-05' AS Date), CAST(N'2016-02-10' AS Date), CAST(N'2015-12-21 15:32:35.840' AS DateTime), CAST(3780.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (180, 166, 249, CAST(N'2016-01-13' AS Date), CAST(N'2016-01-16' AS Date), CAST(N'2015-12-21 20:57:14.010' AS DateTime), CAST(1470.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (181, 167, 250, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-06' AS Date), CAST(N'2015-12-23 03:49:34.520' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (182, 168, 251, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-06' AS Date), CAST(N'2015-12-23 04:51:39.730' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (183, 169, 252, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-06' AS Date), CAST(N'2015-12-23 04:53:08.573' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (184, 170, 253, CAST(N'2016-01-06' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2015-12-23 09:07:56.147' AS DateTime), CAST(3020.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (185, 171, 254, CAST(N'2016-01-06' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2015-12-23 09:09:47.143' AS DateTime), CAST(3020.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (186, 172, 255, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-23 22:18:11.707' AS DateTime), CAST(2200.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (187, 173, 256, CAST(N'2016-01-23' AS Date), CAST(N'2016-01-24' AS Date), CAST(N'2015-12-24 13:47:22.457' AS DateTime), CAST(960.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (188, 174, 257, CAST(N'2016-01-17' AS Date), CAST(N'2016-01-20' AS Date), CAST(N'2015-12-24 16:55:41.567' AS DateTime), CAST(3150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (189, 175, 258, CAST(N'2016-01-07' AS Date), CAST(N'2016-01-09' AS Date), CAST(N'2015-12-25 22:06:47.850' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (190, 176, 259, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-06' AS Date), CAST(N'2015-12-26 06:02:18.517' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (191, 177, 260, CAST(N'2016-01-19' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-26 10:09:54.793' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (192, 178, 261, CAST(N'2016-01-19' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-26 10:12:38.143' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (193, 179, 262, CAST(N'2016-01-19' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-26 10:15:06.313' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (194, 180, 263, CAST(N'2016-01-19' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-26 10:16:34.360' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (195, 181, 264, CAST(N'2016-01-20' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-26 10:56:12.187' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (196, 182, 265, CAST(N'2016-01-19' AS Date), CAST(N'2016-01-21' AS Date), CAST(N'2015-12-26 11:01:19.913' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (197, 183, 266, CAST(N'2016-01-19' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-27 12:42:31.090' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (198, 184, 267, CAST(N'2016-01-19' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2015-12-27 12:46:21.647' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (199, 185, 268, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-27 13:09:56.347' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (200, 186, 269, CAST(N'2016-01-06' AS Date), CAST(N'2016-01-09' AS Date), CAST(N'2015-12-27 16:52:25.380' AS DateTime), CAST(1030.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (201, 187, 270, CAST(N'2016-01-06' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-27 17:57:24.517' AS DateTime), CAST(2100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (202, 188, 271, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-20' AS Date), CAST(N'2015-12-27 22:30:41.980' AS DateTime), CAST(2100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (203, 189, 272, CAST(N'2016-01-07' AS Date), CAST(N'2016-01-09' AS Date), CAST(N'2015-12-28 00:02:16.143' AS DateTime), CAST(3360.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (204, 190, 273, CAST(N'2016-01-07' AS Date), CAST(N'2016-01-09' AS Date), CAST(N'2015-12-28 00:07:25.650' AS DateTime), CAST(3360.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (205, 191, 274, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-28 12:18:08.850' AS DateTime), CAST(3150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (206, 192, 275, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-28 17:00:21.040' AS DateTime), CAST(3024.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (207, 193, 276, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-28 17:01:56.637' AS DateTime), CAST(3024.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (208, 194, 277, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-28 17:12:56.807' AS DateTime), CAST(3024.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (209, 195, 278, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-28 19:20:22.777' AS DateTime), CAST(3150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (210, 196, 279, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-28 19:46:36.053' AS DateTime), CAST(3150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (211, 197, 280, CAST(N'2016-01-05' AS Date), CAST(N'2016-01-08' AS Date), CAST(N'2015-12-28 20:20:51.033' AS DateTime), CAST(3150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (212, 198, 281, CAST(N'2016-02-14' AS Date), CAST(N'2016-02-16' AS Date), CAST(N'2015-12-28 20:22:25.307' AS DateTime), CAST(2100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (213, 199, 282, CAST(N'2016-01-16' AS Date), CAST(N'2016-01-18' AS Date), CAST(N'2015-12-28 22:34:10.583' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (214, 200, 283, CAST(N'2016-01-16' AS Date), CAST(N'2016-01-18' AS Date), CAST(N'2015-12-28 22:35:30.457' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (215, 201, 284, CAST(N'2016-01-23' AS Date), CAST(N'2016-01-25' AS Date), CAST(N'2015-12-28 22:38:52.897' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (216, 202, 285, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-11' AS Date), CAST(N'2015-12-28 22:40:05.033' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (217, 203, 286, CAST(N'2016-01-17' AS Date), CAST(N'2016-01-19' AS Date), CAST(N'2015-12-28 22:41:38.463' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (218, 204, 287, CAST(N'2016-01-23' AS Date), CAST(N'2016-01-25' AS Date), CAST(N'2015-12-28 22:49:59.417' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (219, 205, 288, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-21' AS Date), CAST(N'2015-12-29 10:29:19.053' AS DateTime), CAST(3150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (220, 206, 289, CAST(N'2016-01-17' AS Date), CAST(N'2016-01-20' AS Date), CAST(N'2015-12-29 13:16:27.870' AS DateTime), CAST(3150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (221, 207, 290, CAST(N'2016-01-17' AS Date), CAST(N'2016-01-20' AS Date), CAST(N'2015-12-29 13:20:09.707' AS DateTime), CAST(3150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (222, 208, 291, CAST(N'2016-01-17' AS Date), CAST(N'2016-01-20' AS Date), CAST(N'2015-12-29 13:21:36.380' AS DateTime), CAST(3150.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (223, 209, 292, CAST(N'2016-01-13' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2015-12-29 17:48:26.240' AS DateTime), CAST(4200.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (224, 209, 292, CAST(N'2016-01-13' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2015-12-29 17:48:26.240' AS DateTime), CAST(4200.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (225, 210, 293, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-29 18:37:04.347' AS DateTime), CAST(6048.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (226, 211, 294, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-30 11:15:05.877' AS DateTime), CAST(3024.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (227, 212, 295, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-30 11:21:28.550' AS DateTime), CAST(2880.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (228, 213, 296, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-07' AS Date), CAST(N'2015-12-30 11:21:54.353' AS DateTime), CAST(3420.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (229, 214, 297, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-07' AS Date), CAST(N'2015-12-30 11:23:30.607' AS DateTime), CAST(3420.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (230, 215, 298, CAST(N'2016-02-06' AS Date), CAST(N'2016-02-07' AS Date), CAST(N'2015-12-30 11:35:25.563' AS DateTime), CAST(3420.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (231, 216, 299, CAST(N'2016-02-12' AS Date), CAST(N'2016-02-14' AS Date), CAST(N'2015-12-30 11:36:53.220' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (232, 217, 300, CAST(N'2016-02-07' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-30 11:47:15.540' AS DateTime), CAST(3420.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (233, 218, 301, CAST(N'2016-02-07' AS Date), CAST(N'2016-02-08' AS Date), CAST(N'2015-12-30 11:48:34.853' AS DateTime), CAST(3420.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (234, 219, 302, CAST(N'2015-12-31' AS Date), CAST(N'2016-01-04' AS Date), CAST(N'2015-12-30 23:48:31.927' AS DateTime), CAST(6048.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (235, 223, 306, CAST(N'2016-01-23' AS Date), CAST(N'2016-01-25' AS Date), CAST(N'2015-12-31 22:28:58.330' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (236, 224, 307, CAST(N'2016-01-23' AS Date), CAST(N'2016-01-25' AS Date), CAST(N'2015-12-31 23:42:18.377' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (237, 225, 308, CAST(N'2016-01-24' AS Date), CAST(N'2016-01-26' AS Date), CAST(N'2015-12-31 23:44:42.723' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (238, 226, 309, CAST(N'2016-01-15' AS Date), CAST(N'2016-01-17' AS Date), CAST(N'2016-01-01 22:52:42.997' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (239, 227, 310, CAST(N'2016-01-10' AS Date), CAST(N'2016-01-14' AS Date), CAST(N'2016-01-01 23:52:07.200' AS DateTime), CAST(3525.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (240, 228, 311, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-13' AS Date), CAST(N'2016-01-01 23:56:38.610' AS DateTime), CAST(3300.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (241, 229, 312, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-13' AS Date), CAST(N'2016-01-01 23:58:15.347' AS DateTime), CAST(3300.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (242, 230, 313, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-13' AS Date), CAST(N'2016-01-02 00:01:54.797' AS DateTime), CAST(3300.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (243, 231, 314, CAST(N'2016-01-10' AS Date), CAST(N'2016-01-14' AS Date), CAST(N'2016-01-02 00:05:15.850' AS DateTime), CAST(3525.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (244, 232, 315, CAST(N'2016-01-11' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2016-01-02 00:09:28.667' AS DateTime), CAST(3525.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (245, 233, 316, CAST(N'2016-01-07' AS Date), CAST(N'2016-01-11' AS Date), CAST(N'2016-01-02 00:12:12.890' AS DateTime), CAST(4785.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (246, 234, 317, CAST(N'2016-01-13' AS Date), CAST(N'2016-01-18' AS Date), CAST(N'2016-01-02 01:39:17.603' AS DateTime), CAST(4350.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (247, 235, 318, CAST(N'2016-01-13' AS Date), CAST(N'2016-01-17' AS Date), CAST(N'2016-01-02 01:41:18.130' AS DateTime), CAST(3525.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (248, 236, 319, CAST(N'2016-01-06' AS Date), CAST(N'2016-01-09' AS Date), CAST(N'2016-01-02 08:53:29.233' AS DateTime), CAST(2475.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (249, 237, 320, CAST(N'2016-03-25' AS Date), CAST(N'2016-03-27' AS Date), CAST(N'2016-01-02 08:56:20.320' AS DateTime), CAST(5160.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (250, 238, 321, CAST(N'2016-01-06' AS Date), CAST(N'2016-01-09' AS Date), CAST(N'2016-01-02 08:59:10.377' AS DateTime), CAST(825.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (251, 239, 322, CAST(N'2016-01-08' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-02 10:17:08.617' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (252, 240, 323, CAST(N'2016-01-08' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-02 10:19:44.637' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (253, 241, 324, CAST(N'2016-01-08' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-02 10:22:42.743' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (254, 242, 325, CAST(N'2016-01-08' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-02 10:26:45.917' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (255, 243, 326, CAST(N'2016-01-11' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2016-01-02 11:54:31.523' AS DateTime), CAST(3300.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (256, 244, 327, CAST(N'2016-01-12' AS Date), CAST(N'2016-01-15' AS Date), CAST(N'2016-01-02 13:03:24.770' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (257, 245, 328, CAST(N'2016-01-08' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-02 14:16:58.120' AS DateTime), CAST(1650.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (258, 246, 329, CAST(N'2016-03-12' AS Date), CAST(N'2016-03-14' AS Date), CAST(N'2016-01-02 14:41:22.633' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (259, 247, 330, CAST(N'2016-03-12' AS Date), CAST(N'2016-03-14' AS Date), CAST(N'2016-01-02 14:43:54.393' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (260, 248, 331, CAST(N'2016-01-08' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-02 15:05:53.637' AS DateTime), CAST(1510.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (261, 253, 336, CAST(N'2016-01-23' AS Date), CAST(N'2016-01-24' AS Date), CAST(N'2016-01-02 21:43:29.213' AS DateTime), CAST(770.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (262, 254, 337, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-03 00:12:11.373' AS DateTime), CAST(350.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (263, 255, 338, CAST(N'2016-03-13' AS Date), CAST(N'2016-03-18' AS Date), CAST(N'2016-01-03 08:46:38.680' AS DateTime), CAST(1375.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (264, 256, 339, CAST(N'2016-01-08' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-03 11:27:49.550' AS DateTime), CAST(1020.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (265, 257, 340, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-20' AS Date), CAST(N'2016-01-03 12:04:49.627' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (266, 258, 341, CAST(N'2016-02-05' AS Date), CAST(N'2016-02-10' AS Date), CAST(N'2016-01-03 13:39:20.197' AS DateTime), CAST(3780.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (267, 259, 342, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-03 14:47:31.043' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (268, 260, 343, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-03 15:31:45.553' AS DateTime), CAST(250.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (269, 261, 344, CAST(N'2016-02-27' AS Date), CAST(N'2016-02-28' AS Date), CAST(N'2016-01-03 17:19:12.790' AS DateTime), CAST(480.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (270, 262, 345, CAST(N'2016-02-12' AS Date), CAST(N'2016-02-14' AS Date), CAST(N'2016-01-04 07:30:03.800' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (271, 263, 346, CAST(N'2016-01-18' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2016-01-04 11:44:40.640' AS DateTime), CAST(1100.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (272, 264, 347, CAST(N'2016-01-20' AS Date), CAST(N'2016-01-22' AS Date), CAST(N'2016-01-04 14:45:53.443' AS DateTime), CAST(550.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (273, 265, 348, CAST(N'2016-02-05' AS Date), CAST(N'2016-02-10' AS Date), CAST(N'2016-01-04 16:27:24.467' AS DateTime), CAST(3780.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (274, 266, 349, CAST(N'2016-04-02' AS Date), CAST(N'2016-04-04' AS Date), CAST(N'2016-01-04 18:31:19.650' AS DateTime), CAST(755.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (275, 267, 350, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-04 19:05:58.653' AS DateTime), CAST(275.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (276, 268, 351, CAST(N'2016-02-11' AS Date), CAST(N'2016-02-14' AS Date), CAST(N'2016-01-04 22:08:28.007' AS DateTime), CAST(1875.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (277, 268, 351, CAST(N'2016-02-11' AS Date), CAST(N'2016-02-14' AS Date), CAST(N'2016-01-04 22:08:28.007' AS DateTime), CAST(1875.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (278, 269, 352, CAST(N'2016-01-09' AS Date), CAST(N'2016-01-10' AS Date), CAST(N'2016-01-05 09:00:28.787' AS DateTime), CAST(250.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[Reserva] ([Codigo], [CodigoCliente], [CodigoApartamento], [Inicio], [Fim], [DataCadastro], [Valor]) VALUES (279, 270, 353, CAST(N'2016-01-07' AS Date), CAST(N'2016-01-11' AS Date), CAST(N'2016-01-05 10:04:54.493' AS DateTime), CAST(1570.00 AS Numeric(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Reserva] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipo] ON 

GO
INSERT [dbo].[Tipo] ([Codigo], [Nome], [Descricao], [Imagem]) VALUES (1, N'Chalé', N'Chalé composto por frigobar, ar condicionado, Tv, cama king e super king. Café da manhã incluso. 01 Criança até 05 anos acomodada com os pais é cortesia. Havendo uma segunda criança, imediatamente, considerar como adulto.', NULL)
GO
INSERT [dbo].[Tipo] ([Codigo], [Nome], [Descricao], [Imagem]) VALUES (2, N'Apartamento', N'Apartamento composto por frigobar, ar-condicionado, cama twins e / ou casal, tv, cortina. Café da manhã incluso. 01 Criança até 05 anos acomodada com os pais é cortesia. Havendo uma segunda criança, imediatamente, considerar como adulto. ', NULL)
GO
INSERT [dbo].[Tipo] ([Codigo], [Nome], [Descricao], [Imagem]) VALUES (3, N'Castelo', N'Acomodção composto por frigobar, ar condicionado, Tv, cama king e super king. Café da manhã incluso. 01 Criança até 05 anos acomodada com os pais é cortesia. Havendo uma segunda criança, imediatamente, considerar como adulto.', NULL)
GO
INSERT [dbo].[Tipo] ([Codigo], [Nome], [Descricao], [Imagem]) VALUES (4, N'Master', N'Apartamento composto por frigobar, ar-condicionado, cama twins e / ou casal, tv, cortina. Café da manhã incluso. 01 Criança até 05 anos acomodada com os pais é cortesia. Havendo uma segunda criança, imediatamente, considerar como adulto. ', NULL)
GO
INSERT [dbo].[Tipo] ([Codigo], [Nome], [Descricao], [Imagem]) VALUES (5, N'Stardart', N'Apartamento composto por frigobar, ar-condicionado, cama twins e / ou casal, tv, cortina. Café da manhã incluso. 01 Criança até 05 anos acomodada com os pais é cortesia. Havendo uma segunda criança, imediatamente, considerar como adulto. ', NULL)
GO
INSERT [dbo].[Tipo] ([Codigo], [Nome], [Descricao], [Imagem]) VALUES (6, N'Premium', N'Apartamento composto por frigobar, ar-condicionado, cama twins e / ou casal, tv, cortina. Café da manhã incluso. 01 Criança até 05 anos acomodada com os pais é cortesia. Havendo uma segunda criança, imediatamente, considerar como adulto. ', NULL)
GO
SET IDENTITY_INSERT [dbo].[Tipo] OFF
GO
ALTER TABLE [dbo].[Compra] ADD  CONSTRAINT [DF_Pacote_PACSTATUS]  DEFAULT ('AG') FOR [COMSTATUS]
GO
ALTER TABLE [dbo].[Compra] ADD  CONSTRAINT [DF_Pacote_PACDESCONTOS]  DEFAULT ((0)) FOR [COMDESCONTOS]
GO
ALTER TABLE [dbo].[Compra] ADD  CONSTRAINT [DF_Compra_COMDATA]  DEFAULT (getdate()) FOR [COMDATA]
GO
ALTER TABLE [dbo].[Compra] ADD  CONSTRAINT [defaultDataAtualizacao]  DEFAULT (getdate()) FOR [COMDATAATUALIZACAO]
GO
ALTER TABLE [dbo].[Compra] ADD  DEFAULT ((0)) FOR [COMLANCADA]
GO
ALTER TABLE [dbo].[Apartamento]  WITH CHECK ADD  CONSTRAINT [FK_Apartamento_Tipo] FOREIGN KEY([CodigoTipo])
REFERENCES [dbo].[Tipo] ([Codigo])
GO
ALTER TABLE [dbo].[Apartamento] CHECK CONSTRAINT [FK_Apartamento_Tipo]
GO
ALTER TABLE [dbo].[Consumo]  WITH CHECK ADD  CONSTRAINT [FK_Consumo_Produto] FOREIGN KEY([CodigoProduto])
REFERENCES [dbo].[Produto] ([Codigo])
GO
ALTER TABLE [dbo].[Consumo] CHECK CONSTRAINT [FK_Consumo_Produto]
GO
ALTER TABLE [dbo].[Consumo]  WITH CHECK ADD  CONSTRAINT [FK_Consumo_Reserva] FOREIGN KEY([CodigoReserva])
REFERENCES [dbo].[Reserva] ([Codigo])
GO
ALTER TABLE [dbo].[Consumo] CHECK CONSTRAINT [FK_Consumo_Reserva]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Apartamento] FOREIGN KEY([CodigoApartamento])
REFERENCES [dbo].[Apartamento] ([Codigo])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Apartamento]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Cliente] FOREIGN KEY([CodigoCliente])
REFERENCES [dbo].[Cliente] ([Codigo])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Cliente]
GO
USE [master]
GO
ALTER DATABASE [bdAbuDhabiTurS05] SET  READ_WRITE 
GO
use  [bdAbuDhabiTurS05]
go
alter table reserva add  QtdHospedes int DEFAULT 1;
go
update reserva set QtdHospedes = 1;