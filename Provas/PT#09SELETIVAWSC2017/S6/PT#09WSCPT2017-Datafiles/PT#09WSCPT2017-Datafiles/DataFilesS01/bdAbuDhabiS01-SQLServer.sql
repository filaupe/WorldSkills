Use master
GO
Create DataBase [bdAbuDhabi01]
GO
Create DataBase [bdAbuDhabi02]
GO
Create DataBase [bdAbuDhabi03]
GO

USE [bdAbuDhabi01]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/02/2016 18:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[USUCODIGO] [int] IDENTITY(1,1) NOT NULL,
	[USUNOME] [varchar](250) NOT NULL,
	[USULOGIN] [varchar](100) NOT NULL,
	[USUSENHA] [varchar](100) NOT NULL,
	[USUAMIGOS] [varchar](max) NULL,
	[USUCONTINENTE] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[USUCODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (1, N'Maicon', N'maiconsantana@gmail.com', N'maicon@#$', N'Null', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (2, N'Tatiana', N'tati@katana.com.br', N'ti@nne', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (3, N'Kailanne', N'kakau@master.com.br', N'k@k@u', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (5, N'vivi an Thaís', N'vivian.louise27@gmail.com', N'79981339375', N'Null', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (6, N'Daniela  feitosa macedo de aquino', N'cleodani@outlook.com', N'7988299533', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (7, N'Luiz Levy Pandini Figueiredo', N'Levy_pandini@hotmail.com', N'71996043543', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (8, N'jacqueline barbosa andrade', N'pedidos-vitoria@bol.com.br', N'79999655114', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (9, N'jacqueline barbosa andrade', N'pedidos-vitoria@bol.com.br', N'79999655114', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (10, N'matheus soares massotti soares', N'matheuszoares@yahoo.com.br', N'79998560092', N'Taiane;14-02-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (11, N'matheus soares massotti soares', N'matheuszoares@yahoo.com.br', N'79998560092', N'MArcele;02-03-1998|Cassianne;12-12-1992', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (12, N'Dayana  França', N'Daianaclf@hotmail.com', N'82999251529', N'Taiane;14-02-1999', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (13, N'Juliane  Reis dos Santos ', N'juliane2009@gmail.com ', N'79991370007', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (14, N'david rodrigues da silva  rodrigues', N'david.entrega@hotmail.com', N'07996741957', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (15, N'david rodrigues da silva  rodrigues', N'david.entrega@hotmail.com', N'7996741957', N'Null', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (16, N'david  rodrigues da silva  rodrigues ', N'david.entrega@hotmail.com', N'7996741957', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (17, N'Edivania  Ramos', N'ftaedivania_ramos@live.com', N'71999312039', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (18, N'Tania Sousa', N'taniamottas@gmail.com', N'71999839150', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (19, N'Devison   Cerqueira do Nascimento', N'devioncn@gmail.com', N'71986735609', N'Null', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (20, N'Taiane Pereira', N'Taiane.ppereira@hotmail.com', N'7591813395', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (21, N'Mylane de Holanda Marques', N'mylanehm@hotmail.com', N'82999281757', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (22, N'TARCISIO SANTOS', N'tarcisiosilva.santos1@gmail.com', N'71996556744', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (23, N'TARCISIO SANTOS', N'tarcisiosilva.santos1@gmail.com', N'71996556744', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (24, N'Fabiana Da Cruzv', N'Fabianamaia2411@hotmail.com', N'71997208380', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (25, N'Alexandre José Brandão Cupertino de Mello', N'alexandrejbcdemello@hotmail.com', N'79988232250', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (26, N'Alexandre de Mello', N'alexandrejbcdemello@hotmail.com', N'79988232250', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (27, N'ANDERSON JOSÉ CABRAL DE MEDEIROS', N'anderson.medeirosjpa@gmail.com', N'83986457339', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (28, N'RUI BRANDAO FILHO', N'ruibrandaofilho@yahoo.com', N'71999964785', N'Juliana;14-05-1999|Silvana;13-03-1996', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (29, N'Tais  Cruz de Oliveira', N'Taisbellla@hotmail. Com', N'79999077698', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (30, N'RUI BRANDAO FILHO', N'ruibrandaofilho@yahoo.com', N'71999964785', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (31, N'RUI BRANDAO FILHO', N'ruibrandaofilho@yahoo.com', N'71999964785', N'Tatiane;14-02-1956|Silvano;18-01-1945|Santana;12-12-1949', N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (32, N'david rodrigues da silva  rodrigues', N'david.entrega@hotmail.com', N'7996741957', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (33, N'Marco Antônio Teixeira França', N'geremarco@hotmail.com', N'32999764083', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (34, N'Alexandre de Mello', N'alexandrejbcdemello@hotmail.com', N'79988232250', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (35, N'Yanne Peixoto', N'yannempra@hotmail.com', N'82999205092', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (36, N'Jose Carlos Afonso', N'josecarlosafonso@hotmail.com', N'21983983956', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (37, N'cristiane santana  afonso', N'cristianesasantana@hotmail.com', N'21983385808', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (38, N'Juliana Barbosa Santos Vaz da SIlva', N'cruzvaz@hotmail.com', N'71999592643', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (39, N'Juliana Barbosa Santos Vaz da Silva', N'ulybarbosa@hotmail.com', N'71999592643', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (40, N'Liliane Matos', N'Lbmsilva@hotmail.com', N'75998276976', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (41, N'Gabriel Santana Araujo', N'gabrielpaaje@yahoo.com', N'79999065767', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (42, N'Gabriel Santana Araujo', N'gabrielpaaje@yahoo.com', N'79999065767', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (43, N'Jaquel Ferreira de Moraes', N'jaquelmoraes@ig.com.br', N'82996614201', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (44, N'shirley  menezes de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (45, N'cleide mary  Silveira', N'cleidemarysilveira@gmail.com', N'71992674853', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (46, N'Felix Tadeu Santana de Farias', N'ftfarias6@gmail.com', N'7181792600', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (47, N'Neilma  Macêdo', N'neilmamacedo@hotmail.com', N'7192710805', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (48, N'Neilma Macedo', N'neilmamacedo@hotmail.com', N'7192710805', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (49, N'Amanda Cristina Ignacio Moraes', N'amanda_20_ignacio@hotmail.com', N'1178775956', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (50, N'Ednaldo  Fraga', N'Ednaldo.fraga@hotmail.com ', N'71987498995', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (51, N'TARCISIO SANTOS', N'tarcisiosilva.santos1@gmail.com', N'71986811243', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (52, N'Alisson Freire', N'alifrebat@gmail.com', N'79999999999', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (53, N'Lais  Café da Silva Sampaio ', N'laisscafe@gmail.com', N'75992252124', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (54, N'Taila Guimarães ', N'Tailaguimaraes@hotmail.com', N'79999936524', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (55, N'MADIA RISHEA NASCIMENTO  COSTA', N'costa.madia@gmail.com', N'82999204444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (56, N'Daniel  Moura', N'danielhl.moura@gmail.com', N'71987247347', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (57, N'Jesimiel Pinheiro Cavalcante pinheiro', N'jpengcivil@ig.com.br', N'82999195180', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (58, N'Emília  Cervino Nogueira ', N'ecervino.n@ig.com.br ', N'79999874642', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (59, N'Patricia  Lima', N'pslima02@gmail.com', N'82988841178', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (60, N'patricia  lima', N'pslima02@gmail.com', N'82988831178', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (61, N'LEONARDO MAGALHÃES RIGATO', N'leorigato84@gmail.com', N'71988126037', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (62, N'madia rishea nascimento  costa', N'costa.madia@gmail.com', N'82999204444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (63, N'ROSALINA  GUEDES DONATO SANTOS', N'rosaguedes2000@yahoo.com.br', N'7186421717', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (64, N'Érica Mendes Costa  Vicenzi ', N'emcten@hotmail.com ', N'71999545950', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (65, N'Érica Mendes Costa  Vicenzi ', N'emcten@hotmail.com ', N'71999545950', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (66, N'Diego  Souza', N'diego_souza85@yahoo.com.br', N'71992126762', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (67, N'Karina Santana Cruz Cruz', N'kacruz@uol.com.br', N'79991460123', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (68, N'Jose Danilo Nascimento Souza', N'danilonascsouza@gmail.com', N'75998157486', N'Null', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (69, N'Fabiola  Feitosa ', N'seracadadia@yahoo.com.br', N'7999967200', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (70, N'VERA LUCIA DA SILVA  MARTINS', N'vemartins72@gmail.com', N'71999131074', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (71, N'VERA LUCIA DA SILVA MARTINS', N'vemartins72@gmail.com', N'71999131074', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (72, N'VERA LUCIA MARTINS', N'vemartins72@gmail.com', N'71999131074', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (73, N'Lilian  Costa Braga de Sena', N'lilicbsena@hotmail.com', N'71996045444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (74, N'Lilian Costa Braga de Sena ', N'lilicbsena@hotmail.com', N'71996045444', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (75, N'Elanio Mota de Melo', N'elaiomota@oi.com.br', N'79998932448', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (76, N'Lilian Costa Braga de Sena', N'lilicbsena@hotmail.com', N'71996045444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (77, N'Lilian Costa Braga de Sena', N'lilicbsena@hotmail.com', N'71996045444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (78, N'Carlos Fernandes Fernandes', N'gerencia@contcompany.com.br', N'7191251666', N'Null', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (79, N'antonio carlos santos ferreira antonio', N'acservicos@hotmail.com.br', N'7996441005', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (80, N'antonio carlos santos ferreira carlos', N'acservicos@hotmail.com.br', N'79996441005', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (81, N'EVANILDE MARTINS', N'IVAF5@OUTLOOK.COM', N'79999384431', N'Tamiel;15-01-1996', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (82, N'Carlos Fernandes Fernandes', N'carlosfernandes@contcompany.com.br', N'7191251666', N'Null', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (83, N'Josenaldo  martins', N'fabian8002@hotmail.com', N'79998212125', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (84, N'Josenaldo  martins', N'fabian8002@hotmail.com', N'79998212125', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (85, N'Jsjsjsjsjsk Jsjsjsjsjsk ', N'idiejejeje@jejsjej.com', N'83738383838', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (86, N'Alcilene Correia', N'adamcesarcunha@gmail.com', N'79998620054', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (87, N'Maria Nívia Carmo santos', N'marianivia.carmo@gmail.com', N'79998127196', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (88, N'Luis  António ', N'luisanto13@hotmail.com', N'71988290412', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (89, N'CRISTINA ZILDA GONÇALVES DULTRA', N'cristina@terrafortetoyota.com.br', N'71996176186', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (90, N'Camila Helen', N'camila.helen95@gmail.com', N'66582828828', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (91, N'LARISSA CAROZO ARZE', N'laicarozo@gmail.com', N'79988199773', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (92, N'Rafael  De jesus Alves', N'Rafael.vitorhugo@gmail.com', N'79988779700', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (93, N'Marcella Oliveira', N'marcella.n.ce@hotmail.com', N'7998094250', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (94, N'Carlos Wirti', N'barzotto.carlos@gmail.com', N'79981221797', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (95, N'Carla  Freitas da Silveira', N'cf_silveira17@hotmail.com', N'7199483355', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (96, N'Carla  Freitas da Silveira', N'cf_silveira17@hotmail,com', N'71999483355', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (97, N'Margareth Lima', N'gallmh@yahoo.com.br', N'71999989116', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (98, N'ticiana  santos', N'ticiferreira@hotmail.com', N'21971561215', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (99, N'Samara oliveira lopes Oliveira lopes ', N'samarha_sol@hotmail.com', N'79999574675', N'Marcos;08-04-1996|Carlos;14-02-1997|MArcelo;30-09-1990|Silvia;15-05-1994', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (100, N'Carlos Fortes', N'tombqfortes@yahoo.com.br', N'71987875358', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (101, N'neviton dos santos  junior', N'nevitintojunior_corretor@hotmail.com', N'7998902708', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (102, N'neviton  junior', N'nevitonjunior_corretor@hotmail.com', N'7998902708', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (103, N'TIAGO FERREIRA', N'tiago_ferreira10@hotmail.com', N'71987357858', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (104, N'Samara oliveira lopes Oliveira lopes ', N'samarha_sol@hotmail.com', N'79999574675', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (105, N'Carlos Santos', N'homemnaturalse@hotmail.com', N'99999999999', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (106, N'Evanise Tosta Santos Santos', N'evanise@ufba.br', N'71988225606', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (107, N'THÁBATA MARIELLE SILVA DE SANTANA GEAMBASTIANI', N'marielleanjo@hotmail.com', N'75999001477', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (108, N'nadyja lima', N'nl_m@msn.com', N'79996461173', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (109, N'Mônica Cristina  Cavalcante', N'monica@gabriocomunicacao.com.br', N'82999897287', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (110, N'Mônica Cristina Cavalcante Gomes', N'jornalista2002@hotmail.com', N'82999897287', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (111, N'MARIANA CACILDA ALMEIDA DE ARAUJO', N'mariaraujossa@uol.com.br', N'71991466047', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (112, N'Maria Nívia Carmo santos', N'marianivia.carmo@gmail.com', N'79998127196', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (113, N'luis washington marinho costa', N'marinhocosta@ig.com.br', N'71991878081', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (114, N'Eryca Rayanne  Ramos Silva', N'erycaray@hotmail.com', N'79999167204', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (115, N'CLAUDIANE  GOMES DA SILVA', N'claudianegsilva@yahoo.com.br', N'82999406187', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (116, N'claudiane gomes da silva', N'claudianegsilva@yahoo.com.br', N'82999406187', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (117, N'Gileno Pereira', N'prgileno.pereira@gmail.com', N'71993232530', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (118, N'Gileno Pereira', N'prgileno.pereira@gmail.com', N'71993232530', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (119, N'jose roberto dos santos roberto santos', N'joserobertodossantos31@gmail.com', N'79998061394', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (120, N'Érica  Cruz', N'ericacruz982@gmail.com', N'79999091331', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (121, N'DEMETRIUS P. MORILLA', N'demetriusmorilla@hotmail.com', N'82999384108', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (122, N'Eni Devay de Freitas', N'enifreitas@hotmail.com', N'71981954065', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (123, N'ANTONIO CAROLINO ARAUJO FILHO CAROLINO', N'carolinoaraujo@bol.com.br', N'71988005249', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (124, N'ANAILMA DA SILVA JESUS ARAUJO SILVA', N'anailmasilva@yahoo.com.br', N'71986371522', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (125, N'Morganna Rebelo', N'morgannarebelo@hotmail.com', N'82981873737', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (126, N'maria  soares', N'sossoares.ba@hotmail.com', N'75988719033', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (127, N'Fábio Murilo Tieghi Moreira', N'fabtieghi@yahoo.com.br', N'71986982048', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (128, N'Vanessa  oliveira', N'nessa.oliveira@hotmail.com', N'71984261523', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (129, N'Ana Cláudia  Oliveira', N'anaclaudia@doisaarquitetura.com.br', N'71992476567', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (130, N'Adonis Brasil', N'adoniscontato@gmail.com', N'73988141914', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (131, N'Fernanda Bomfim Alves', N'NANDAALVES87@HOTMAIL.COM', N'71986702061', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (132, N'Histéfani  Almeida Alves', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (133, N'Histéfani  Almeida Alves', N'histefanialmeida@gmail.com', N'79998341071', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (134, N'Histéfani Almeida Alves', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (135, N'Josefa Dilma dos Santos Santos', N'jd.caetano@hotmail.com', N'79999419373', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (136, N'JAILSON MENDES', N'jailsonmendes2010@hotmail.com', N'71986638517', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (137, N'Itamar Rosado Ferreira Ferreira', N'itamarrosado@gmail.com', N'71987420971', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (138, N'Itamar Rosado Ferreira Ferreira', N'itamarrosado@gmail.com', N'71987420971', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (139, N'LUAN DE lima SANTOS', N'luanlima6178@gmail.com', N'7988553059', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (140, N'Wennedy Santos', N'wennedy_endy@hotmail.com', N'7998086959', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (141, N'JAILSON  DE SANTANA MENDES', N'jailsonmendes2010@hotmail.com', N'71986638517', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (142, N'JAILSON DE SANTANA MENDES', N'jailsonmendes2010@hotmail.com', N'71986638517', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (143, N'artur  bispo dos santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (144, N'artur bispo dos santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (145, N'Demétrio Almeida Almeida', N'demetrioalmeida@hotmail.com', N'82987263166', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (146, N'ANA LARISSA SOUZA DE OLIVEIRA  SOUZA DE OLIVEIRA ', N'larysouza19@gmail.com', N'7999250038', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (147, N'IRANILDO FERREIRA DE  SOUZA', N'iranildo2005al@gmail.com', N'8288844015', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (148, N'EDENY  NASCIMENTO', N'EDENY_OLIVEIRA@HOTMAIL.COM', N'82987228414', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (149, N'RONES TOLEDO', N'RONESTOLEDO@HOTMAIL.COM', N'82981318664', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (150, N'ROBERTO FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (151, N'ROBERTO  FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (152, N'ROBERTO FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (153, N'Márcio  Fernando', N'marcio_fernando_89@hotmail.com', N'82987251760', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (154, N'Marcio Fernando', N'marcio_fernando_89@hotmail.com', N'82987251760', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (155, N'IRANILDO SOUZA', N'iranildo2005al@gmail.com', N'82988844015', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (156, N'Maxwell Seixas Luz Luz', N'max.sluz33@gmail.com', N'71992138487', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (157, N'Camila Evangelista Araujo', N'divaneilopes@hotmail.com', N'75982197611', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (158, N'Dulce  Moreira', N'dceliamoreira@hotmail.com', N'79999218931', N'Juliana;14-05-1999|Silvana;13-03-1996', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (159, N'ROBERTO FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (160, N'MARCIO  PATURY', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (161, N'MARCIO PATURY', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (162, N'MARCIO  PATURY', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (163, N'marcio patury', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (164, N'iviny Mariane  Costa santos', N'ivinycosta29@hotmail.com', N'79996074734', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (165, N'iviny Mariane  Costa santos', N'ivinycosta29@hotmail.com', N'79996074734', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (166, N'Marcio  Patury', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (167, N'Marcio Patury', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (168, N'Mônica  Cavalcante', N'jornalista2002@hotmail.com', N'82999897287', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (169, N'BARBARA Menezes', N'bamenezes@hotmail.com', N'7182559344', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (170, N'Eduardo Braga', N'elbraga@ig.com.br', N'71982179729', NULL, N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (171, N'Márcio  Fernandes ', N'silvia_sf18@hotmail.com', N'71988391291', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (172, N'Elício Amado', N'elicioamado@hotmail.com', N'71999851036', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (173, N'Elício Amado', N'elicioamado@hotmail.com', N'71999851036', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (174, N'artur  bispo santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (175, N'Histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', NULL, N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (176, N'histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (177, N'histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (178, N'givaneide  lima do nascimento', N'givaneide.lima@bol.com.br', N'82987069157', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (179, N'artur  bispo dos santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (180, N'francisco  lourenço nascimento', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (181, N'Giovane  Gomes Nascimento', N'giovanegnascimento@gmail.com', N'71999999997', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (182, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (183, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', NULL, N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (184, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (185, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (186, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (187, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (188, N'MARCIO IVALDO  FERNANDES', N'silvia_sf12@hotmail.com', N'71988391291', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (189, N'Silvia cristina Santana', N'silvia_sf18@hotmail.com', N'71992700842', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (190, N'Silvia cristina  Santana', N'silvia_sf18@hotmail.com', N'71992700842', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (191, N'Silvia Cristina  Santana', N'silvia_sf18@hotmail.com', N'71992700842', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (192, N'HUGO LEONARDO SACRAMENTO LOPES LOPES', N'hugoleonardo2008@hotmail.com', N'75988234737', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (193, N'MANOEL AUGUSTO DOS SANTOS NETO SANTOS NETO', N'augustoneto78@hotmail.com', N'79998384971', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (194, N'histefani alves', N'histefanialmeida@gmail.com', N'79999047370', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (195, N'Histefani alves', N'histefanialmeida@gmail.com', N'79998341071', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (196, N'SHIRLEY  MENEZES DE ANDRADE', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (197, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (198, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (199, N'histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (200, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'17986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (201, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (202, N'Karla  Camacam', N'kcamacam@hotmail.com', N'71991422017', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (203, N'Edmilson  araujo', N'd.edy@hotmail.com', N'71992071477', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (204, N'edimilsom araujo', N'd.edy@hotmail.com', N'7136277678', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (205, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (206, N'Josenne Mark Freitas de Sousa', N'josennemark@gmail.com', N'71992520997', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (207, N'Hélcio Perin', N'helciomoreira@yahoo.com.br', N'71988158221', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (208, N'Rosemary  Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (209, N'Rosemary  Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (210, N'Rosemary Rufina S.  Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (211, N'Rosemary Rufina Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (212, N'Rosemary Rufina Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (213, N'Rosemary Rufina Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (214, N'Aguinaldo  Ventura', N'agvent@hotmail.com', N'81999753451', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (215, N'Aguinaldo Ventura', N'agvent@hotmail.com', N'81999753451', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (216, N'cristina  bochicchio', N'cristinabochicchio@hotmail.com', N'7192776691', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (217, N'SHIRLEY MENEZES DE ANDRADE', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (218, N'cristina bochicchio', N'cristinabochicchio@hotmail.com', N'71992776691', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (219, N'PATRICIO   DA SILVA  LIMA  ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (220, N'PATRICIO  DA SILVA LIMA ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (221, N'PATRICIO   DA SILVA  LIMA', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (222, N'PATRICIO  DA SILVA LIMA ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (223, N'Ana Paula Soares', N'anapaulasoaresstar@yahoo.com.br', N'81999730629', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (224, N'Jomar Benvindo dos Santos Benvindo dos Santos', N'lua.negrapr@hotmail.com', N'7488070347', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (225, N'Williane Lima santos', N'williane_1985@hotmail.com', N'82999671919', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (226, N'manoelson  carneiro firmo', N'mano_elson@hotmail.com', N'75992226869', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (227, N'manoelson carneiro firmo', N'mano_elson@hotmail.com', N'75992226869', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (228, N'PATRICIO   DA SILVA LIMA ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (229, N'Viviane Ferreira dos Santos freire Freire', N'Adagilson10@bol.com.br', N'75999212526', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (230, N'Daisy Cristina Correia de Jesus', N'aju.ba@hotmail.com', N'79991353364', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (231, N'Amom Lemos', N'amom_182@hotmail.com', N'71993830400', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (232, N'Natanael Lessa Santos', N'santos_lessa@hotmail.com', N'79999836233', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (233, N'RICARDO  ALONSO CATELA', N'rcatela@gmail.com', N'71996088881', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (234, N'Vanda Tavares dos Santos', N'vandinhatavares@yahoo.com.br', N'79998803408', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (235, N'Jamerson Flavio', N'jamerson.flavio@hotmail.com', N'79996818128', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (236, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'71993374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (237, N'Mathias Nunes dos Santos Santana Junior Nunes', N'mathiasnunessantana@hotmail.com', N'79988917960', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (238, N'Elisangela  Barbosa ', N'lisferreira2009@hotmail.com', N'71991836087', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (239, N'Nathalie Moraes', N'nathaliemoraes@gmail.com', N'71999795768', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (240, N'Clayton  Santos', N'clayton.stos@gmail.com', N'82999911517', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (241, N'rosangela soares da cruz soares', N'rosasores12@HOtmail.com', N'71991329726', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (242, N'DAVID MARTINEZ', N'dartanhajr@hotmail.com', N'71988515665', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (243, N'WASHINGTON  LUIZ RAMOS CRUZ ', N'washingtoncontabilidade@hotmail.com', N'79999872929', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (244, N'João  Pereira Neto', N'joaoevaldelene@hotmail.com', N'83986003362', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (245, N'FABIANO SAMPAIO CONCEIÇÃO', N'fabiano.sampaio@tjse.jus.br', N'79991414703', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (246, N'Érico  de Melo Xavier', N'emxestudir@yahoo.com.br', N'75999699954', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (247, N'Fernando Carvalho Junior Carvalho', N'nandoelala@hotmail.com', N'7996604511', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (248, N'LILIAN RITA DE SOUZA MEIRELES', N'li_meireles@hotmail.com', N'73988711926', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (249, N'Denise Oliveira', N'denise@usetaxisalvador.com.br', N'71996384546', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (250, N'Tarciane Maria', N'tarciane.maria@yahoo.com.br', N'7998797585', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (251, N'tassis prata', N'tassischarayne@hotmail.com', N'79999373606', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (252, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (253, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (254, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (255, N'Jaline  Passos', N'jalpassos@hotmail.com', N'71987546293', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (256, N'Jaline  passos', N'jalpassos@hotmail.com', N'71987546293', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (257, N'Milla Borges', N'millinha_borges@hotmail.com', N'75992702260', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (258, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (259, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'71993374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (260, N'camila Goes', N'camila@goesdecarvalho.adv.br', N'71993374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (261, N'Cláudio  Leite', N'claudiosampaio_ba@hotmail.com', N'75991386550', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (262, N'MARIA AUXILIADORA OLIVA RIBEIRO OLIVA RIBEIRO', N'dora.oliva@ig.com.br', N'71991574576', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (263, N'Marlucia  Leite', N'marluciaestrela@hotmail.com', N'75991144027', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (264, N'francisjane  Aragão', N'francisejunior@hotmail.com', N'79999896714', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (265, N'QUENYA FERNANDA TEIXEIRA BARRETO BARRETO', N'nana-teixeira5552hotmail.com', N'71986515156', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (266, N'flavia mota de alencar', N'alencarflaviam@gmail.com', N'82999255756', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (267, N'Juliana Silva Campos Farias', N'julicampos2@hotmail.com', N'71991776900', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (268, N'FLAVIA MOTA DE ALENCAR', N'f.malencar@ig.com.br', N'82999255756', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (269, N'Michele  Tavares Gaspar', N'chell.gaspar@gmail.com', N'71987360499', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (270, N'ANDRÉA  VILLA FLÔR SAMPAIO', N'ANDREAVILLAADV@OUTLOOK.COM.BR', N'71993291602', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (271, N'Ana Lúcia  Cerqueira dos Santos silva', N'analuz373@hotmail.com', N'75991917759', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (272, N'Karen Simone  Dias', N'kdias@ford.com', N'71991351004', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (273, N'Karen Dias', N'kdias@ford.com', N'71991351004', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (274, N'Alexandre  Paes dos Santos', N'alexandre.paes.santos@gmail.com', N'82988928115', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (275, N'Patricia  José dos Santos ', N'miguelestruturas@hotmail.com', N'79999639533', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (276, N'CLEIDE ANA PINTO DOS SANTOS', N'CSANTOS_CONTABIL@HOTMAIL.COM', N'71999212243', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (277, N'Dorinilda Bezerra Silva Rocha ', N'dori_silva@yahoo.com.br', N'82999254737', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (278, N'CLAUDIO VICENTE SANTOS', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (279, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (280, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (281, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (282, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8298297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (283, N'VALDILENE SANTOS DA SILVA SANTOS SILVA', N'VALGATA26@hotmail.com', N'7193080338', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (284, N'Isaias  Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (285, N'Isaias Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (286, N'Isaias  Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (287, N'Isaias Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (288, N'Beatriz Machado', N'biaoutback@hotmail.com', N'82996944157', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (289, N'Marina  Anunciação ', N'marinafar26.ma@gmail.com', N'71981765656', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (290, N'Alexandre Paes', N'alexandre.paes.santos@gmail.com', N'82988928115', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (291, N'Claudio Ferreira', N'cmartins.ferreira@uol.com.br', N'71991391442', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (292, N'Claudio Ferreira', N'cmartins.ferreira@uol.com.br', N'71991391442', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (293, N'CLAUDIO  FERREIRA', N'cmartins.ferreira@uol.com.br', N'71991939144', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (294, N'Welton Barbosa', N'welton_c_barbosa@msn.com', N'82988034786', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (295, N'Camila  Monteiro', N'ca.mila.monteiro@hotmail.com', N'79999302767', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (296, N'Tatiana Reis  Santana Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (297, N'Tatiana Reis  Santos Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (298, N'Tatiana Reis  Santos Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (299, N'Tatiana  Reis ', N'tatytjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (300, N'Giovanna  Maldonado Vieira', N'giovanna.maldonado@conti.com.br', N'71996114964', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (301, N'Giovanna Maldonado Vieira', N'giovanna.maldonado@conti.com.br', N'71996114964', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (302, N'Tatiana  Reis ', N'tatyrj@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (303, N'Tatiana  Reis ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (304, N'Ronaldo Moraes', N'ronaldo.mda@gmail.com', N'82996246560', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (305, N'mary hellen  monteiro ', N'maryjeninha@gmail.com', N'79996342012', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (306, N'mary hellen monteiro', N'maryjeninha@gmail.com', N'79996342012', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (307, N'Lucas  Santos', N'lukas_lsa@hotmail.com', N'79991212113', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (308, N'Lucas Santos', N'lukas_lsa@hotmail.com', N'79991212113', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (309, N'ANDRE MARCHETTO', N'andre.marchetto@gmail.com', N'7199949817', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (310, N'ELSON ALVES DOS SANTOS', N'elson.pa@bol.com.br', N'75991703500', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (311, N'ROBERTO  MOURA MORAES', N'betormm59@gmail.com', N'79988131806', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (312, N'ROBERTO MOURA MORAES', N'betormm59@gmail.com', N'79988131806', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (313, N'THIAGO  RIBEIRO', N'thiagoribeiro-22@hotmail.com', N'79998777104', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (314, N'THIAGO RIBEIRO', N'thiagoribeiro-22@hotmail.com', N'79998777104', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (315, N'verena senra ', N'vesenra@hotmail.com', N'71996611990', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (316, N'Tatiana  Reis Santos Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (317, N'Paulo Carvalho', N'paulosergio.carvalho@gmail.com', N'82999710350', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (318, N'ADRIANA ANDRADE REICHL', N'ADRIANA.TUR@HOTMAIL.COM', N'71991857942', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (319, N'GEOVANA  SILVA DE SOUZA SOARES', N'geovanasouza@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (320, N'FABIOLA PIMENTEL DIOGENES LETIER DE ALMEIDA', N'fabiolaletier@gmail.com', N'71988828509', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (321, N'GEOVANA  SILVA DE SOUZA SOARES', N'geovanasouza@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (322, N'Aline  Rodrigues', N'alinecrodrigues@gmail.com', N'71988824687', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (323, N'KATYUSCIA KARINE VIEIRA DOS SANTOS', N'bentocruz@yahoo.com', N'21986626882', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (324, N'MARCIA MARIA  RAMOS BRAS', N'mmoramos@yahoo.com.br', N'71991902132', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (325, N'MARCIA MARIA  RAMOS BRAS', N'mmoramos@yahoo.com.br', N'71991902132', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (326, N'Geovana Silva de Souza Soares', N'geovanasouza@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (327, N'Geovana Silva de Souza Soares', N'leandro@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (329, N'joao bastos', N'jm-bastos@uol.com.br', N'11970810425', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (330, N'Paulo Carvalho ', N'paulosergio.carvalho@gmail.com', N'82999710350', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (331, N'ELSON ALVES DOS SANTOS', N'elson.pa@bol.com.br', N'75991703500', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (332, N'Katyuscia Karine  Santos', N'karinesadala@yahoo.com.br', N'82987378982', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (333, N'Katyuscia  Karine', N'karinesadala@yahoo.com.br', N'82987378982', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (334, N'karine sadala', N'karinesadala@yahoo.com.br', N'82987378982', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (335, N'loide cristiane Mendonça', N'loydinha2@hotmail.com', N'71991448163', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (336, N'Luziane Parente', N'luzianeparente4@gmail.com', N'88999998087', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (337, N'nildson barboza de melo', N'nildsonbdm1@gmail.com', N'79999002771', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (338, N'wellyane   Rosier', N'tec.planejamento@yahoo.com.br', N'71992715624', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (339, N'wellyane rosier', N'tec.planejamento@yahoo.com.br', N'71992715624', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (340, N'Joelma Floriza Quaranta Santos', N'joelmafloriza@ig.com.br', N'7988461514', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (341, N'Joelma Floriza Quaranta Santos', N'joelmafloriza@ig.com.br', N'7988461514', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (342, N'Andre  Duraes', N'andrerduraes@gmail.com', N'71991888399', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (343, N'thaina  freire santos', N'thainasantos1998.ts@gmail.com', N'79998087876', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (344, N'antonio maron agle filho', N'amafilho@tjba.jus.br', N'71991043100', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (345, N'antonio maron agle filho', N'amafilho@tjba.jus.br', N'71991043200', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (346, N'Ana Therezinha Santos Rodrigues', N'anahoo.ar@gmail.com', N'79998825228', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (347, N'Ana Therezinha Santos Rodrigues', N'anahoo.ar@gmail.com', N'79998825228', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (348, N'leilane araujo', N'leilacyna@hotmail.com', N'82988861297', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (349, N'Marco Antonio  Santos', N'marcobaiano@globo.com', N'82993023272', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (350, N'IRANILDO FERREIRA DE SOUZA', N'iranildo2005al@gmail.com', N'82988844015', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (351, N'Marianna Freire', N'mari_freire_@hotmail.com', N'79999621765', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (352, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (353, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (354, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (355, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (356, N'SILVANETE  DOS SANTOS GARCIA', N'SILVIAHONDA15@GMAIL.COM', N'79999414565', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (357, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (358, N'Marianna Freire', N'mari_freire_@hotmail.com', N'79999621765', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (359, N'antonio maron agle filho', N'amafilho@tjba.jus.br', N'71991043200', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (360, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (361, N'Ygor Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (362, N'Marcia  Rodrigues do nascimento', N'rodrigues.nascimento.marcia@gmail.com', N'7196383449', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (363, N'LUCIVAL  LUZ DE SOUZA', N'lucivalsouza@hotmail.com', N'71999943331', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (364, N'Alddevan Santos  Nascimento Junior ', N'aldevan.pirambu@hotmail.com', N'79998484824', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (365, N'Aldevan Santos  Nascimento Junior ', N'aldevan.pirambu@hotmail.com', N'79998484824', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (366, N'Juliane Santos', N'juliane.ssantana@gmail.com', N'7988359603', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (367, N'Karine  Santos da Costa Ramos', N'karilef10@hotmail.com', N'75981070106', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (368, N'Karine Ramos', N'karilef10@hotmail.com', N'75981070106', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (369, N'Marco Aurélio  de Figueiredo Quintieri', N'marcoaurelio0303@yahoo.com.br', N'79988580065', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (370, N'Marco Aurélio  de Figueiredo Quintieri', N'marcoaurelio0303@yahoo.com.br', N'79988580065', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (371, N'Valdemir Marques Bomfim Bomfim', N'vevbomfim@yahoo.com.br', N'79999719769', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (372, N'IRANILDO FERREIRA DE SOUZA', N'iranildo2005al@gmail.com', N'82988844015', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (373, N'julio cesar simoes dos santos', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (374, N'JULIO CESAR  SIMÕES DOS SANTOS', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (375, N'JULIO CESAR  SIMÕES DOS SANTOS', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (376, N'julio cesar  simoes dos santos', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (377, N'JULIO CESAR SIMOES DOS SANTOS', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (378, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (379, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (380, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (381, N'Leonardo  Rodrigues Urrutigaray', N'l.urrutigaray@gmail.com', N'71992938110', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (382, N'Leonardo Rodrigues Urrutigaray', N'l.urrutigaray@gmail.com', N'71992938110', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (383, N'Uriel dos Santos Barbosa', N'uriel_sb@hotmail.com', N'71996041147', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (384, N'Uriel  dos Santos Barbosa', N'uriel_sb@hotmail.com', N'71996041147', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (385, N'Uriel dos Santos Barbosa', N'uriel_sb@hotmail.com', N'71996041147', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (386, N'PEDRO  SILVA', N'pedrofbas0@gmail.com', N'8299242609', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (387, N'valfran jose', N'valfra-2026@hotmail.com', N'79998316367', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (388, N'Ednete da Silva  Santos', N'ednetetavares@hotmail.com', N'8234350678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (389, N'Ednete da Silva Santos', N'ednetetavares@hotmail.com', N'8234350678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (390, N'Ednete da Silva Santos', N'ednetetavares@hotmail.com', N'8234350678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (391, N'DANIELA  MENEZES', N'danieejonathan4@gmail.com', N'79999163172', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (392, N'JERFFESON SIDNIS SILVA DOS SANTOS', N'jerffesonsophia@hotmail.com', N'82981220678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (393, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (394, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (395, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (396, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (397, N'Jessica Ferreira dos Santos Alemão ', N'jessikaallemao@hotmail.com', N'79998270034', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (398, N'DAURI PEZZUTO PEZZUTO', N'DAURI@PEZZUTOTELECOM.COM.BR', N'16981266434', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (399, N'Lucileide Andrade', N'lucileide_cavadas@hotmail.com', N'71987914021', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (400, N'Lucileide Andrade', N'lucileide_cavadas@hotmail.com', N'71987914021', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (401, N'Lucileide Cavadas', N'lucileide_cavadas@hotmail.com', N'71987914021', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (402, N'WESLEY SORES SOARES', N'ADMWESLEY@HOTMAIL.COM', N'82998068818', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (403, N'Rubenilton Andrade', N'rubenylton@gmail.com', N'71991042076', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (404, N'Rômulo  Bispo', N'romulo.bispo@hotmail.com', N'71981483400', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (406, N'Edeny Nascimento', N'edeny_oliveira@hotmail.com', N'82991365454', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (407, N'Acassia  BORGES ', N'acassialima@hotmail.com', N'82999326922', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (408, N'Acassia  BORGES ', N'acassialima@hotmail.com', N'82999326922', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (409, N'ANISIO CAVALCANTE JUNIOR JUNIOR', N'anisio.junior@tjpe.jus.br', N'8781267142', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (410, N'MARIO LUIZ DIAS FERREIRA', N'marioldferreira@hotmail.com', N'71992734482', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (411, N'JAQUELINE  MOREIRA', N'jamoreiraenfer@gmail.com', N'7187436637', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (412, N'alielson santos', N'antonio_04_carlos1966@hotmail.com', N'71981413096', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (413, N'JULIANA RODRIGUES BRAIT  RODRIGUES BRAIT', N'julianabrait@gmail.com', N'75988997604', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (414, N'Juliana Rodrigues Brait', N'julianabrait@gmail.com', N'75988997604', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (415, N'Élio  Dias', N'eliodiasimoveis@hotmail.com', N'82999706290', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (416, N'Sebastiao  Cardoso Neto', N'neto@rodaleveveiculos.com.br', N'77988092000', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (417, N'Heribaldo Leite', N'heribaldoc@yahoo.com.br', N'11980823051', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (418, N'Wiguina  Silva', N'wiguina.silva@bol.com.br', N'79999379980', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (419, N'Thaine  Dias', N'thaine.dias@hotmail.com', N'75999739405', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (420, N'sadasdas dasasdsa', N'asdasdasdas@gmail.com', N'91823918239', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (421, N'Rafael GOnçalves', N'rafael.stavale@cozinhandoadois.com.br', N'71981866969', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (422, N'JACIARA DIAS DOS ANJOS', N'marioldferreira@hotmail.com', N'71999653243', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (423, N'Eustorgio reseda Reseda ', N'eustorgio_reseda@hotmail.com', N'75981100226', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (424, N'João Adriano  de Andrade Sobral', N'jaasobral@gmail.com', N'71992179244', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (425, N'João Adriano  de Andrade Sobral', N'jaasobral@gmail.com', N'71992179244', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (426, N'karina lima', N'karina.apolonio@yahoo.com.br', N'79999771414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (427, N'DANIELA MORAES SANTOS', N'danimoraees@hotmail.com', N'77991224802', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (428, N'wesley Araújo', N'wesleyvcw@hotmail.com', N'79981272213', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (429, N'michelle martins', N'michelyrockstar@outlook.com', N'79999036405', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (430, N'João Paulo Ferreira Santos', N'xandinhan@gmail.com', N'79998680642', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (431, N'maria jose   santana araujo', N'marysantanaaraujo@hotmail.com', N'71996073433', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (432, N'maria santana araujo', N'marysantanaaraujo@hotmail.com', N'71996073433', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (433, N'Daniel Reis', N'daniel@bahiatecnologia.com.br', N'71997173003', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (434, N'Felipe Hayne', N'felipehayne@hotmail.com', N'71993810200', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (435, N'Wellington  Dias', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (436, N'Wellington  Dias', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (437, N'Wellington Dias Viana', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (438, N'Wellington Dias Viana', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (439, N'Carolayne   carvalho santos', N'carolaynecarvalho19@gmail.com', N'79991161881', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (440, N'ERICK SILVA', N'SILVA-PE@HOTMAIL.COM', N'8399080623', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (441, N'Wellington Dias', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (442, N'ALBERTO LUDUVICE ALVES', N'alberto_luduvice@hotmail.com', N'79999642532', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (443, N'ALBERTO ALVES', N'alberto_luduvice@hotmail.com', N'79999642532', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (444, N'Marcio dos Santos Karpyn', N'marciokarpyn@yahoo.com.br', N'21988651071', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (445, N'carolayne carvalho santos', N'carol_agatinha123@hotmail.com', N'79991161881', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (446, N'Jorge Santana', N'jlss27@gmail.com', N'71993170405', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (447, N'Fernanda  dç Espírito  santo', N'nandinhacpm22@hotmail.com', N'79991518629', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (448, N'Diogenes dos Santos Rocha', N'diogenesrocha2015@outlook.com', N'79999078100', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (449, N'thaiza  falcao', N'thaiza.falco@gmail.com', N'71987998686', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (450, N'thaiza  falcao', N'thaiza.falco@gmail.com', N'71987998686', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (451, N'RUBEM VIEIRA', N'cecrl@bol.com.br', N'71977011943', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (452, N'Erivani  Santos de campos', N'erivani.silva@lojasguaibim.com.br', N'71986791703', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (453, N'leisiane Santana', N'leisianesantana@bol.com.br', N'7499256151', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (454, N'Samuel  Seixas de Lucena', N'sslucena@hotmail.com', N'71998351550', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (455, N'Samuel  Seixas de lucena', N'sslucena@hotmail.com', N'71998351550', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (456, N'Daiane Mendes', N'daianemendes.adv@hormail.com', N'75999478822', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (457, N'Marcos Henrique Nunes de Carvalho Carvalho', N'nunesdecarvalhomrick@yahoo.com.br', N'79999842029', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (458, N'airton  teles', N'airtonteles1970@gmail.com', N'7988071389', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (459, N'Carlos André  Nunes ', N'hozanita@hotmail.com', N'75991113761', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (460, N'Gabriel Pimentel Machado dos Santos', N'gab_pimentel@hotmail.com', N'71999952604', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (461, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (462, N'Waldilene Cristina ', N'waldilenecristina@gmail.com', N'7998846180', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (463, N'FRANCISCO LEANDRO COSTA PIRES PIRES', N'fleandrocpmj@hotmail.com', N'71986044823', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (464, N'otavio nunes', N'aracajucompras.web@gmail.com', N'7998644523', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (465, N'aline  andrade de freitas', N'alineafreitas@hotmail.com', N'71991455073', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (466, N'aline andrade de freitas', N'alineafreitas@hotmail.com', N'71991455073', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (467, N'valnei duarte', N'valneiguitar@hotmail.com', N'71992921893', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (468, N'ANDRE LUIZ ANDRADE MACIEL', N'andremaciel.adv@gmail.com', N'79999747472', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (469, N'ANDRE LUIZ  ANDRADE MACIEL', N'andremaciel.adv@gmail.com', N'79999747472', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (470, N'andre luiz andrade maciel', N'andremaciel.adv@gmail.com', N'79999747472', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (471, N'Sebastião  dos Santos Lima', N'sebastiaolimaconsultoria@gmail.com', N'75988748632', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (472, N'andrea messias costa barbosa barbosa', N'andreabarb_1@hotmail.com', N'7187402938', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (473, N'Andrea Barbosa', N'andreabarb_1@hotmail.com', N'7187402938', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (474, N'Edmilson nascimento', N'edmilson.c.n@hotmail.com', N'7191518681', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (475, N'Carlos Henrique  Santos Santana ', N'carloshenriquesteffens@gmail.com', N'79996282801', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (476, N'Pauço Henrique', N'paulo-se1@hotmail.com', N'79999594351', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (477, N'Senclair Galvão', N'sgvpb@hotmail.com', N'71992953316', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (478, N'Lorrayna  Franco Figueiredo ', N'lorraynafranco@gmail.com', N'79981440101', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (479, N'Alexsandra Silva Santos de melo melo', N'roselita.silva01@hotmail.com', N'79999071907', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (480, N'Ana Paula Doria', N'pauladoria2006@yahoo.com.br', N'71988794360', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (481, N'Lorrayna Franco Figueiredo', N'lorraynafranco@gmail.com', N'79981440101', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (482, N'andrea messias costa barbosa barbosa', N'andreabarb_1@hotmail.com', N'7187402938', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (483, N'Daiane  leal ', N'daianefalcao.biz@gmail.com', N'7188515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (484, N'Simone  Calheiros', N'simone.rezende@uol.com.br', N'82999736791', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (485, N'Marlos  Prado', N'marlosprado@hotmail.com', N'75991317288', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (486, N'JAQUELINE MENEZES DOS REIS MENEZES', N'jaquelinerihanna@hotmail.com', N'79999187209', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (487, N'Daiane  Leal', N'daianefalcao.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (488, N'Manoela  Macedo rios', N'manoelarios@gmail.com', N'71986236546', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (489, N'Cristiane  almeida rocha ', N'zion_loja@hotmail.com', N'71988151088', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (490, N'Cristiane almeida rocha', N'zion_loja@hotmail.com', N'71988151088', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (491, N'Daiane Leal', N'jmarcos.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (492, N'daiane  leal', N'daianefalcao.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (493, N'Cristina  Gama Matos Pereira', N'crisgama@bol.com.br', N'79999200402', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (494, N'Cristina  Gama Matos Pereira', N'crisgama@bol.com.br', N'79999200402', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (495, N'Débora Sandes de oliveira Sandes', N'vcivel26@tjal.jus.br', N'82988579598', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (496, N'Cristiane Maria CÂngelo Lopes landulfo de sousa Sousa', N'kristamma@hotmail.com', N'71991163726', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (497, N'Richard Pinto do Nascimento', N'richard.nascimento@gmail.com', N'71983051000', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (498, N'GEORGE NASCIMENTO', N'georgeprefeitoparis@hotmail.com', N'75999999793', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (499, N'Graziela  de Araujo Santos Lima', N'graziela.a.s@hotmail.com', N'71992642574', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (500, N'Allan  Alves', N'allanlimaalves91@gmail.com', N'71997218300', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (501, N'ELISANGELA ABREU NASCIMENTO', N'elly_abreu@hotmail.com', N'75998942979', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (502, N'ELISANGELA ABREU NASCIMENTO', N'elly_abreu@hotmail.com', N'75998942979', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (503, N'Maura  Fernandes', N'mauradfernandes@hotmail.com', N'71991320915', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (504, N'Lívia  Queiroz', N'liviasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (505, N'Lívia  Queiroz ', N'libiasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (506, N'Lívia  Queiroz ', N'liviasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (507, N'Lívia  Silva de Queiroz ', N'liviasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (508, N'Alan NixoN', N'lanzinho_sd@hotmail.com', N'7581805985', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (509, N'livia  silva de queiroz', N'liviasilvaq@gmail.com', N'71992447175', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (510, N'BRUNA ANDRADE ', N'BRUNAANDRADE.VIVO@HOTMAIL.COM', N'79999986306', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (511, N'FRANCISCO LEANDRO COSTA PIRES COSTA PIRES', N'fleandrocpmj@hotmail.com', N'71986044823', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (512, N'Daniel  Marques', N'danieltst2@gmail.com', N'79988596853', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (513, N'Geraldo Silva', N'geraldosilva@hotmail.com', N'78456456456', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (514, N'Miguel teste Teste', N'juniorspse@gmail.com', N'79991237646', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (515, N'Eugenio Teste', N'eugenio_camilo10@hotmail.com', N'78946845646', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (517, N'DAIANE  LEAL ', N'jmarcos.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (519, N'Iduyna  Nascimento', N'jl_manutencao_@hotmail.com', N'71983294566', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (520, N'Iduyna Nascimento', N'jl_manutencao_@hotmail.com', N'71983294566', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (521, N'Iduyna Nascimento', N'jl_manutencao_@hotmail.com', N'71983294566', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (523, N'Ramiro  Cerdeira Suarez', N'ramirocerdeira@hotmail.com', N'71997045667', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (524, N'José Ronaldo Costa Soares', N'Jrcsoares@Yahoo.com.br', N'79996460808', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (525, N'José Dantas ', N'abreussodre2@hotmail.com', N'79991037900', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (526, N'LEONES DE LIMA GOMES', N'leonestchebos@hotmail.com', N'79999093498', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (527, N'Maxtelva Bispo Souza ', N'maxmbs@bol.com.br', N'71986647605', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (528, N'Jonathas  Ramos Costa', N'Jota.rc1@hotmail.com', N'71996335789', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (529, N'Jonathas Ramos Costa', N'Jota.rc1@hotmail.com', N'71996335789', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (530, N'isis carvalho', N'isisgentil@gmail.com', N'71996668491', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (531, N'SERGE REHEM', N'serge.rehem@gmail.com', N'71981069246', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (532, N'Ana Paula Andrade Trajano Barros', N'apsa1901@hotmail.com', N'71999032645', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO


USE [bdAbuDhabi02]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/02/2016 18:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[USUCODIGO] [int] IDENTITY(1,1) NOT NULL,
	[USUNOME] [varchar](250) NOT NULL,
	[USULOGIN] [varchar](100) NOT NULL,
	[USUSENHA] [varchar](100) NOT NULL,
	[USUAMIGOS] [varchar](max) NULL,
	[USUCONTINENTE] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[USUCODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (1, N'Maicon', N'maiconsantana@gmail.com', N'maicon@#$', N'Null', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (2, N'Tatiana', N'tati@katana.com.br', N'ti@nne', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (3, N'Kailanne', N'kakau@master.com.br', N'k@k@u', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (5, N'vivi an Thaís', N'vivian.louise27@gmail.com', N'79981339375', N'Null', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (6, N'Daniela  feitosa macedo de aquino', N'cleodani@outlook.com', N'7988299533', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (7, N'Luiz Levy Pandini Figueiredo', N'Levy_pandini@hotmail.com', N'71996043543', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (8, N'jacqueline barbosa andrade', N'pedidos-vitoria@bol.com.br', N'79999655114', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (9, N'jacqueline barbosa andrade', N'pedidos-vitoria@bol.com.br', N'79999655114', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (10, N'matheus soares massotti soares', N'matheuszoares@yahoo.com.br', N'79998560092', N'Taiane;14-02-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (11, N'matheus soares massotti soares', N'matheuszoares@yahoo.com.br', N'79998560092', N'MArcele;02-03-1998|Cassianne;12-12-1992', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (12, N'Dayana  França', N'Daianaclf@hotmail.com', N'82999251529', N'Taiane;14-02-1999', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (13, N'Juliane  Reis dos Santos ', N'juliane2009@gmail.com ', N'79991370007', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (14, N'david rodrigues da silva  rodrigues', N'david.entrega@hotmail.com', N'07996741957', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (15, N'david rodrigues da silva  rodrigues', N'david.entrega@hotmail.com', N'7996741957', N'Null', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (16, N'david  rodrigues da silva  rodrigues ', N'david.entrega@hotmail.com', N'7996741957', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (17, N'Edivania  Ramos', N'ftaedivania_ramos@live.com', N'71999312039', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (18, N'Tania Sousa', N'taniamottas@gmail.com', N'71999839150', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (19, N'Devison   Cerqueira do Nascimento', N'devioncn@gmail.com', N'71986735609', N'Null', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (20, N'Taiane Pereira', N'Taiane.ppereira@hotmail.com', N'7591813395', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (21, N'Mylane de Holanda Marques', N'mylanehm@hotmail.com', N'82999281757', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (22, N'TARCISIO SANTOS', N'tarcisiosilva.santos1@gmail.com', N'71996556744', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (23, N'TARCISIO SANTOS', N'tarcisiosilva.santos1@gmail.com', N'71996556744', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (24, N'Fabiana Da Cruzv', N'Fabianamaia2411@hotmail.com', N'71997208380', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (25, N'Alexandre José Brandão Cupertino de Mello', N'alexandrejbcdemello@hotmail.com', N'79988232250', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (26, N'Alexandre de Mello', N'alexandrejbcdemello@hotmail.com', N'79988232250', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (27, N'ANDERSON JOSÉ CABRAL DE MEDEIROS', N'anderson.medeirosjpa@gmail.com', N'83986457339', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (28, N'RUI BRANDAO FILHO', N'ruibrandaofilho@yahoo.com', N'71999964785', N'Juliana;14-05-1999|Silvana;13-03-1996', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (29, N'Tais  Cruz de Oliveira', N'Taisbellla@hotmail. Com', N'79999077698', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (30, N'RUI BRANDAO FILHO', N'ruibrandaofilho@yahoo.com', N'71999964785', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (31, N'RUI BRANDAO FILHO', N'ruibrandaofilho@yahoo.com', N'71999964785', N'Tatiane;14-02-1956|Silvano;18-01-1945|Santana;12-12-1949', N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (32, N'david rodrigues da silva  rodrigues', N'david.entrega@hotmail.com', N'7996741957', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (33, N'Marco Antônio Teixeira França', N'geremarco@hotmail.com', N'32999764083', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (34, N'Alexandre de Mello', N'alexandrejbcdemello@hotmail.com', N'79988232250', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (35, N'Yanne Peixoto', N'yannempra@hotmail.com', N'82999205092', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (36, N'Jose Carlos Afonso', N'josecarlosafonso@hotmail.com', N'21983983956', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (37, N'cristiane santana  afonso', N'cristianesasantana@hotmail.com', N'21983385808', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (38, N'Juliana Barbosa Santos Vaz da SIlva', N'cruzvaz@hotmail.com', N'71999592643', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (39, N'Juliana Barbosa Santos Vaz da Silva', N'ulybarbosa@hotmail.com', N'71999592643', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (40, N'Liliane Matos', N'Lbmsilva@hotmail.com', N'75998276976', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (41, N'Gabriel Santana Araujo', N'gabrielpaaje@yahoo.com', N'79999065767', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (42, N'Gabriel Santana Araujo', N'gabrielpaaje@yahoo.com', N'79999065767', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (43, N'Jaquel Ferreira de Moraes', N'jaquelmoraes@ig.com.br', N'82996614201', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (44, N'shirley  menezes de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (45, N'cleide mary  Silveira', N'cleidemarysilveira@gmail.com', N'71992674853', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (46, N'Felix Tadeu Santana de Farias', N'ftfarias6@gmail.com', N'7181792600', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (47, N'Neilma  Macêdo', N'neilmamacedo@hotmail.com', N'7192710805', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (48, N'Neilma Macedo', N'neilmamacedo@hotmail.com', N'7192710805', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (49, N'Amanda Cristina Ignacio Moraes', N'amanda_20_ignacio@hotmail.com', N'1178775956', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (50, N'Ednaldo  Fraga', N'Ednaldo.fraga@hotmail.com ', N'71987498995', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (51, N'TARCISIO SANTOS', N'tarcisiosilva.santos1@gmail.com', N'71986811243', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (52, N'Alisson Freire', N'alifrebat@gmail.com', N'79999999999', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (53, N'Lais  Café da Silva Sampaio ', N'laisscafe@gmail.com', N'75992252124', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (54, N'Taila Guimarães ', N'Tailaguimaraes@hotmail.com', N'79999936524', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (55, N'MADIA RISHEA NASCIMENTO  COSTA', N'costa.madia@gmail.com', N'82999204444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (56, N'Daniel  Moura', N'danielhl.moura@gmail.com', N'71987247347', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (57, N'Jesimiel Pinheiro Cavalcante pinheiro', N'jpengcivil@ig.com.br', N'82999195180', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (58, N'Emília  Cervino Nogueira ', N'ecervino.n@ig.com.br ', N'79999874642', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (59, N'Patricia  Lima', N'pslima02@gmail.com', N'82988841178', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (60, N'patricia  lima', N'pslima02@gmail.com', N'82988831178', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (61, N'LEONARDO MAGALHÃES RIGATO', N'leorigato84@gmail.com', N'71988126037', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (62, N'madia rishea nascimento  costa', N'costa.madia@gmail.com', N'82999204444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (63, N'ROSALINA  GUEDES DONATO SANTOS', N'rosaguedes2000@yahoo.com.br', N'7186421717', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (64, N'Érica Mendes Costa  Vicenzi ', N'emcten@hotmail.com ', N'71999545950', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (65, N'Érica Mendes Costa  Vicenzi ', N'emcten@hotmail.com ', N'71999545950', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (66, N'Diego  Souza', N'diego_souza85@yahoo.com.br', N'71992126762', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (67, N'Karina Santana Cruz Cruz', N'kacruz@uol.com.br', N'79991460123', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (68, N'Jose Danilo Nascimento Souza', N'danilonascsouza@gmail.com', N'75998157486', N'Null', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (69, N'Fabiola  Feitosa ', N'seracadadia@yahoo.com.br', N'7999967200', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (70, N'VERA LUCIA DA SILVA  MARTINS', N'vemartins72@gmail.com', N'71999131074', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (71, N'VERA LUCIA DA SILVA MARTINS', N'vemartins72@gmail.com', N'71999131074', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (72, N'VERA LUCIA MARTINS', N'vemartins72@gmail.com', N'71999131074', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (73, N'Lilian  Costa Braga de Sena', N'lilicbsena@hotmail.com', N'71996045444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (74, N'Lilian Costa Braga de Sena ', N'lilicbsena@hotmail.com', N'71996045444', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (75, N'Elanio Mota de Melo', N'elaiomota@oi.com.br', N'79998932448', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (76, N'Lilian Costa Braga de Sena', N'lilicbsena@hotmail.com', N'71996045444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (77, N'Lilian Costa Braga de Sena', N'lilicbsena@hotmail.com', N'71996045444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (78, N'Carlos Fernandes Fernandes', N'gerencia@contcompany.com.br', N'7191251666', N'Null', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (79, N'antonio carlos santos ferreira antonio', N'acservicos@hotmail.com.br', N'7996441005', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (80, N'antonio carlos santos ferreira carlos', N'acservicos@hotmail.com.br', N'79996441005', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (81, N'EVANILDE MARTINS', N'IVAF5@OUTLOOK.COM', N'79999384431', N'Tamiel;15-01-1996', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (82, N'Carlos Fernandes Fernandes', N'carlosfernandes@contcompany.com.br', N'7191251666', N'Null', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (83, N'Josenaldo  martins', N'fabian8002@hotmail.com', N'79998212125', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (84, N'Josenaldo  martins', N'fabian8002@hotmail.com', N'79998212125', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (85, N'Jsjsjsjsjsk Jsjsjsjsjsk ', N'idiejejeje@jejsjej.com', N'83738383838', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (86, N'Alcilene Correia', N'adamcesarcunha@gmail.com', N'79998620054', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (87, N'Maria Nívia Carmo santos', N'marianivia.carmo@gmail.com', N'79998127196', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (88, N'Luis  António ', N'luisanto13@hotmail.com', N'71988290412', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (89, N'CRISTINA ZILDA GONÇALVES DULTRA', N'cristina@terrafortetoyota.com.br', N'71996176186', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (90, N'Camila Helen', N'camila.helen95@gmail.com', N'66582828828', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (91, N'LARISSA CAROZO ARZE', N'laicarozo@gmail.com', N'79988199773', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (92, N'Rafael  De jesus Alves', N'Rafael.vitorhugo@gmail.com', N'79988779700', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (93, N'Marcella Oliveira', N'marcella.n.ce@hotmail.com', N'7998094250', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (94, N'Carlos Wirti', N'barzotto.carlos@gmail.com', N'79981221797', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (95, N'Carla  Freitas da Silveira', N'cf_silveira17@hotmail.com', N'7199483355', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (96, N'Carla  Freitas da Silveira', N'cf_silveira17@hotmail,com', N'71999483355', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (97, N'Margareth Lima', N'gallmh@yahoo.com.br', N'71999989116', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (98, N'ticiana  santos', N'ticiferreira@hotmail.com', N'21971561215', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (99, N'Samara oliveira lopes Oliveira lopes ', N'samarha_sol@hotmail.com', N'79999574675', N'Marcos;08-04-1996|Carlos;14-02-1997|MArcelo;30-09-1990|Silvia;15-05-1994', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (100, N'Carlos Fortes', N'tombqfortes@yahoo.com.br', N'71987875358', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (101, N'neviton dos santos  junior', N'nevitintojunior_corretor@hotmail.com', N'7998902708', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (102, N'neviton  junior', N'nevitonjunior_corretor@hotmail.com', N'7998902708', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (103, N'TIAGO FERREIRA', N'tiago_ferreira10@hotmail.com', N'71987357858', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (104, N'Samara oliveira lopes Oliveira lopes ', N'samarha_sol@hotmail.com', N'79999574675', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (105, N'Carlos Santos', N'homemnaturalse@hotmail.com', N'99999999999', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (106, N'Evanise Tosta Santos Santos', N'evanise@ufba.br', N'71988225606', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (107, N'THÁBATA MARIELLE SILVA DE SANTANA GEAMBASTIANI', N'marielleanjo@hotmail.com', N'75999001477', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (108, N'nadyja lima', N'nl_m@msn.com', N'79996461173', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (109, N'Mônica Cristina  Cavalcante', N'monica@gabriocomunicacao.com.br', N'82999897287', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (110, N'Mônica Cristina Cavalcante Gomes', N'jornalista2002@hotmail.com', N'82999897287', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (111, N'MARIANA CACILDA ALMEIDA DE ARAUJO', N'mariaraujossa@uol.com.br', N'71991466047', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (112, N'Maria Nívia Carmo santos', N'marianivia.carmo@gmail.com', N'79998127196', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (113, N'luis washington marinho costa', N'marinhocosta@ig.com.br', N'71991878081', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (114, N'Eryca Rayanne  Ramos Silva', N'erycaray@hotmail.com', N'79999167204', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (115, N'CLAUDIANE  GOMES DA SILVA', N'claudianegsilva@yahoo.com.br', N'82999406187', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (116, N'claudiane gomes da silva', N'claudianegsilva@yahoo.com.br', N'82999406187', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (117, N'Gileno Pereira', N'prgileno.pereira@gmail.com', N'71993232530', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (118, N'Gileno Pereira', N'prgileno.pereira@gmail.com', N'71993232530', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (119, N'jose roberto dos santos roberto santos', N'joserobertodossantos31@gmail.com', N'79998061394', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (120, N'Érica  Cruz', N'ericacruz982@gmail.com', N'79999091331', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (121, N'DEMETRIUS P. MORILLA', N'demetriusmorilla@hotmail.com', N'82999384108', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (122, N'Eni Devay de Freitas', N'enifreitas@hotmail.com', N'71981954065', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (123, N'ANTONIO CAROLINO ARAUJO FILHO CAROLINO', N'carolinoaraujo@bol.com.br', N'71988005249', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (124, N'ANAILMA DA SILVA JESUS ARAUJO SILVA', N'anailmasilva@yahoo.com.br', N'71986371522', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (125, N'Morganna Rebelo', N'morgannarebelo@hotmail.com', N'82981873737', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (126, N'maria  soares', N'sossoares.ba@hotmail.com', N'75988719033', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (127, N'Fábio Murilo Tieghi Moreira', N'fabtieghi@yahoo.com.br', N'71986982048', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (128, N'Vanessa  oliveira', N'nessa.oliveira@hotmail.com', N'71984261523', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (129, N'Ana Cláudia  Oliveira', N'anaclaudia@doisaarquitetura.com.br', N'71992476567', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (130, N'Adonis Brasil', N'adoniscontato@gmail.com', N'73988141914', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (131, N'Fernanda Bomfim Alves', N'NANDAALVES87@HOTMAIL.COM', N'71986702061', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (132, N'Histéfani  Almeida Alves', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (133, N'Histéfani  Almeida Alves', N'histefanialmeida@gmail.com', N'79998341071', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (134, N'Histéfani Almeida Alves', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (135, N'Josefa Dilma dos Santos Santos', N'jd.caetano@hotmail.com', N'79999419373', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (136, N'JAILSON MENDES', N'jailsonmendes2010@hotmail.com', N'71986638517', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (137, N'Itamar Rosado Ferreira Ferreira', N'itamarrosado@gmail.com', N'71987420971', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (138, N'Itamar Rosado Ferreira Ferreira', N'itamarrosado@gmail.com', N'71987420971', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (139, N'LUAN DE lima SANTOS', N'luanlima6178@gmail.com', N'7988553059', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (140, N'Wennedy Santos', N'wennedy_endy@hotmail.com', N'7998086959', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (141, N'JAILSON  DE SANTANA MENDES', N'jailsonmendes2010@hotmail.com', N'71986638517', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (142, N'JAILSON DE SANTANA MENDES', N'jailsonmendes2010@hotmail.com', N'71986638517', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (143, N'artur  bispo dos santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (144, N'artur bispo dos santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (145, N'Demétrio Almeida Almeida', N'demetrioalmeida@hotmail.com', N'82987263166', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (146, N'ANA LARISSA SOUZA DE OLIVEIRA  SOUZA DE OLIVEIRA ', N'larysouza19@gmail.com', N'7999250038', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (147, N'IRANILDO FERREIRA DE  SOUZA', N'iranildo2005al@gmail.com', N'8288844015', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (148, N'EDENY  NASCIMENTO', N'EDENY_OLIVEIRA@HOTMAIL.COM', N'82987228414', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (149, N'RONES TOLEDO', N'RONESTOLEDO@HOTMAIL.COM', N'82981318664', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (150, N'ROBERTO FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (151, N'ROBERTO  FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (152, N'ROBERTO FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (153, N'Márcio  Fernando', N'marcio_fernando_89@hotmail.com', N'82987251760', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (154, N'Marcio Fernando', N'marcio_fernando_89@hotmail.com', N'82987251760', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (155, N'IRANILDO SOUZA', N'iranildo2005al@gmail.com', N'82988844015', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (156, N'Maxwell Seixas Luz Luz', N'max.sluz33@gmail.com', N'71992138487', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (157, N'Camila Evangelista Araujo', N'divaneilopes@hotmail.com', N'75982197611', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (158, N'Dulce  Moreira', N'dceliamoreira@hotmail.com', N'79999218931', N'Juliana;14-05-1999|Silvana;13-03-1996', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (159, N'ROBERTO FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (160, N'MARCIO  PATURY', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (161, N'MARCIO PATURY', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (162, N'MARCIO  PATURY', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (163, N'marcio patury', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (164, N'iviny Mariane  Costa santos', N'ivinycosta29@hotmail.com', N'79996074734', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (165, N'iviny Mariane  Costa santos', N'ivinycosta29@hotmail.com', N'79996074734', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (166, N'Marcio  Patury', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (167, N'Marcio Patury', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (168, N'Mônica  Cavalcante', N'jornalista2002@hotmail.com', N'82999897287', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (169, N'BARBARA Menezes', N'bamenezes@hotmail.com', N'7182559344', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (170, N'Eduardo Braga', N'elbraga@ig.com.br', N'71982179729', NULL, N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (171, N'Márcio  Fernandes ', N'silvia_sf18@hotmail.com', N'71988391291', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (172, N'Elício Amado', N'elicioamado@hotmail.com', N'71999851036', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (173, N'Elício Amado', N'elicioamado@hotmail.com', N'71999851036', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (174, N'artur  bispo santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (175, N'Histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', NULL, N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (176, N'histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (177, N'histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (178, N'givaneide  lima do nascimento', N'givaneide.lima@bol.com.br', N'82987069157', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (179, N'artur  bispo dos santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (180, N'francisco  lourenço nascimento', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (181, N'Giovane  Gomes Nascimento', N'giovanegnascimento@gmail.com', N'71999999997', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (182, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (183, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', NULL, N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (184, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (185, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (186, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (187, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (188, N'MARCIO IVALDO  FERNANDES', N'silvia_sf12@hotmail.com', N'71988391291', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (189, N'Silvia cristina Santana', N'silvia_sf18@hotmail.com', N'71992700842', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (190, N'Silvia cristina  Santana', N'silvia_sf18@hotmail.com', N'71992700842', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (191, N'Silvia Cristina  Santana', N'silvia_sf18@hotmail.com', N'71992700842', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (192, N'HUGO LEONARDO SACRAMENTO LOPES LOPES', N'hugoleonardo2008@hotmail.com', N'75988234737', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (193, N'MANOEL AUGUSTO DOS SANTOS NETO SANTOS NETO', N'augustoneto78@hotmail.com', N'79998384971', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (194, N'histefani alves', N'histefanialmeida@gmail.com', N'79999047370', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (195, N'Histefani alves', N'histefanialmeida@gmail.com', N'79998341071', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (196, N'SHIRLEY  MENEZES DE ANDRADE', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (197, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (198, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (199, N'histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (200, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'17986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (201, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (202, N'Karla  Camacam', N'kcamacam@hotmail.com', N'71991422017', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (203, N'Edmilson  araujo', N'd.edy@hotmail.com', N'71992071477', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (204, N'edimilsom araujo', N'd.edy@hotmail.com', N'7136277678', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (205, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (206, N'Josenne Mark Freitas de Sousa', N'josennemark@gmail.com', N'71992520997', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (207, N'Hélcio Perin', N'helciomoreira@yahoo.com.br', N'71988158221', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (208, N'Rosemary  Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (209, N'Rosemary  Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (210, N'Rosemary Rufina S.  Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (211, N'Rosemary Rufina Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (212, N'Rosemary Rufina Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (213, N'Rosemary Rufina Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (214, N'Aguinaldo  Ventura', N'agvent@hotmail.com', N'81999753451', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (215, N'Aguinaldo Ventura', N'agvent@hotmail.com', N'81999753451', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (216, N'cristina  bochicchio', N'cristinabochicchio@hotmail.com', N'7192776691', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (217, N'SHIRLEY MENEZES DE ANDRADE', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (218, N'cristina bochicchio', N'cristinabochicchio@hotmail.com', N'71992776691', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (219, N'PATRICIO   DA SILVA  LIMA  ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (220, N'PATRICIO  DA SILVA LIMA ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (221, N'PATRICIO   DA SILVA  LIMA', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (222, N'PATRICIO  DA SILVA LIMA ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (223, N'Ana Paula Soares', N'anapaulasoaresstar@yahoo.com.br', N'81999730629', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (224, N'Jomar Benvindo dos Santos Benvindo dos Santos', N'lua.negrapr@hotmail.com', N'7488070347', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (225, N'Williane Lima santos', N'williane_1985@hotmail.com', N'82999671919', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (226, N'manoelson  carneiro firmo', N'mano_elson@hotmail.com', N'75992226869', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (227, N'manoelson carneiro firmo', N'mano_elson@hotmail.com', N'75992226869', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (228, N'PATRICIO   DA SILVA LIMA ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (229, N'Viviane Ferreira dos Santos freire Freire', N'Adagilson10@bol.com.br', N'75999212526', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (230, N'Daisy Cristina Correia de Jesus', N'aju.ba@hotmail.com', N'79991353364', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (231, N'Amom Lemos', N'amom_182@hotmail.com', N'71993830400', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (232, N'Natanael Lessa Santos', N'santos_lessa@hotmail.com', N'79999836233', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (233, N'RICARDO  ALONSO CATELA', N'rcatela@gmail.com', N'71996088881', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (234, N'Vanda Tavares dos Santos', N'vandinhatavares@yahoo.com.br', N'79998803408', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (235, N'Jamerson Flavio', N'jamerson.flavio@hotmail.com', N'79996818128', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (236, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'71993374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (237, N'Mathias Nunes dos Santos Santana Junior Nunes', N'mathiasnunessantana@hotmail.com', N'79988917960', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (238, N'Elisangela  Barbosa ', N'lisferreira2009@hotmail.com', N'71991836087', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (239, N'Nathalie Moraes', N'nathaliemoraes@gmail.com', N'71999795768', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (240, N'Clayton  Santos', N'clayton.stos@gmail.com', N'82999911517', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (241, N'rosangela soares da cruz soares', N'rosasores12@HOtmail.com', N'71991329726', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (242, N'DAVID MARTINEZ', N'dartanhajr@hotmail.com', N'71988515665', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (243, N'WASHINGTON  LUIZ RAMOS CRUZ ', N'washingtoncontabilidade@hotmail.com', N'79999872929', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (244, N'João  Pereira Neto', N'joaoevaldelene@hotmail.com', N'83986003362', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (245, N'FABIANO SAMPAIO CONCEIÇÃO', N'fabiano.sampaio@tjse.jus.br', N'79991414703', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (246, N'Érico  de Melo Xavier', N'emxestudir@yahoo.com.br', N'75999699954', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (247, N'Fernando Carvalho Junior Carvalho', N'nandoelala@hotmail.com', N'7996604511', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (248, N'LILIAN RITA DE SOUZA MEIRELES', N'li_meireles@hotmail.com', N'73988711926', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (249, N'Denise Oliveira', N'denise@usetaxisalvador.com.br', N'71996384546', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (250, N'Tarciane Maria', N'tarciane.maria@yahoo.com.br', N'7998797585', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (251, N'tassis prata', N'tassischarayne@hotmail.com', N'79999373606', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (252, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (253, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (254, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (255, N'Jaline  Passos', N'jalpassos@hotmail.com', N'71987546293', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (256, N'Jaline  passos', N'jalpassos@hotmail.com', N'71987546293', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (257, N'Milla Borges', N'millinha_borges@hotmail.com', N'75992702260', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (258, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (259, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'71993374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (260, N'camila Goes', N'camila@goesdecarvalho.adv.br', N'71993374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (261, N'Cláudio  Leite', N'claudiosampaio_ba@hotmail.com', N'75991386550', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (262, N'MARIA AUXILIADORA OLIVA RIBEIRO OLIVA RIBEIRO', N'dora.oliva@ig.com.br', N'71991574576', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (263, N'Marlucia  Leite', N'marluciaestrela@hotmail.com', N'75991144027', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (264, N'francisjane  Aragão', N'francisejunior@hotmail.com', N'79999896714', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (265, N'QUENYA FERNANDA TEIXEIRA BARRETO BARRETO', N'nana-teixeira5552hotmail.com', N'71986515156', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (266, N'flavia mota de alencar', N'alencarflaviam@gmail.com', N'82999255756', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (267, N'Juliana Silva Campos Farias', N'julicampos2@hotmail.com', N'71991776900', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (268, N'FLAVIA MOTA DE ALENCAR', N'f.malencar@ig.com.br', N'82999255756', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (269, N'Michele  Tavares Gaspar', N'chell.gaspar@gmail.com', N'71987360499', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (270, N'ANDRÉA  VILLA FLÔR SAMPAIO', N'ANDREAVILLAADV@OUTLOOK.COM.BR', N'71993291602', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (271, N'Ana Lúcia  Cerqueira dos Santos silva', N'analuz373@hotmail.com', N'75991917759', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (272, N'Karen Simone  Dias', N'kdias@ford.com', N'71991351004', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (273, N'Karen Dias', N'kdias@ford.com', N'71991351004', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (274, N'Alexandre  Paes dos Santos', N'alexandre.paes.santos@gmail.com', N'82988928115', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (275, N'Patricia  José dos Santos ', N'miguelestruturas@hotmail.com', N'79999639533', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (276, N'CLEIDE ANA PINTO DOS SANTOS', N'CSANTOS_CONTABIL@HOTMAIL.COM', N'71999212243', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (277, N'Dorinilda Bezerra Silva Rocha ', N'dori_silva@yahoo.com.br', N'82999254737', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (278, N'CLAUDIO VICENTE SANTOS', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (279, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (280, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (281, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (282, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8298297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (283, N'VALDILENE SANTOS DA SILVA SANTOS SILVA', N'VALGATA26@hotmail.com', N'7193080338', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (284, N'Isaias  Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (285, N'Isaias Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (286, N'Isaias  Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (287, N'Isaias Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (288, N'Beatriz Machado', N'biaoutback@hotmail.com', N'82996944157', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (289, N'Marina  Anunciação ', N'marinafar26.ma@gmail.com', N'71981765656', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (290, N'Alexandre Paes', N'alexandre.paes.santos@gmail.com', N'82988928115', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (291, N'Claudio Ferreira', N'cmartins.ferreira@uol.com.br', N'71991391442', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (292, N'Claudio Ferreira', N'cmartins.ferreira@uol.com.br', N'71991391442', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (293, N'CLAUDIO  FERREIRA', N'cmartins.ferreira@uol.com.br', N'71991939144', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (294, N'Welton Barbosa', N'welton_c_barbosa@msn.com', N'82988034786', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (295, N'Camila  Monteiro', N'ca.mila.monteiro@hotmail.com', N'79999302767', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (296, N'Tatiana Reis  Santana Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (297, N'Tatiana Reis  Santos Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (298, N'Tatiana Reis  Santos Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (299, N'Tatiana  Reis ', N'tatytjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (300, N'Giovanna  Maldonado Vieira', N'giovanna.maldonado@conti.com.br', N'71996114964', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (301, N'Giovanna Maldonado Vieira', N'giovanna.maldonado@conti.com.br', N'71996114964', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (302, N'Tatiana  Reis ', N'tatyrj@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (303, N'Tatiana  Reis ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (304, N'Ronaldo Moraes', N'ronaldo.mda@gmail.com', N'82996246560', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (305, N'mary hellen  monteiro ', N'maryjeninha@gmail.com', N'79996342012', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (306, N'mary hellen monteiro', N'maryjeninha@gmail.com', N'79996342012', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (307, N'Lucas  Santos', N'lukas_lsa@hotmail.com', N'79991212113', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (308, N'Lucas Santos', N'lukas_lsa@hotmail.com', N'79991212113', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (309, N'ANDRE MARCHETTO', N'andre.marchetto@gmail.com', N'7199949817', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (310, N'ELSON ALVES DOS SANTOS', N'elson.pa@bol.com.br', N'75991703500', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (311, N'ROBERTO  MOURA MORAES', N'betormm59@gmail.com', N'79988131806', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (312, N'ROBERTO MOURA MORAES', N'betormm59@gmail.com', N'79988131806', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (313, N'THIAGO  RIBEIRO', N'thiagoribeiro-22@hotmail.com', N'79998777104', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (314, N'THIAGO RIBEIRO', N'thiagoribeiro-22@hotmail.com', N'79998777104', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (315, N'verena senra ', N'vesenra@hotmail.com', N'71996611990', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (316, N'Tatiana  Reis Santos Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (317, N'Paulo Carvalho', N'paulosergio.carvalho@gmail.com', N'82999710350', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (318, N'ADRIANA ANDRADE REICHL', N'ADRIANA.TUR@HOTMAIL.COM', N'71991857942', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (319, N'GEOVANA  SILVA DE SOUZA SOARES', N'geovanasouza@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (320, N'FABIOLA PIMENTEL DIOGENES LETIER DE ALMEIDA', N'fabiolaletier@gmail.com', N'71988828509', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (321, N'GEOVANA  SILVA DE SOUZA SOARES', N'geovanasouza@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (322, N'Aline  Rodrigues', N'alinecrodrigues@gmail.com', N'71988824687', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (323, N'KATYUSCIA KARINE VIEIRA DOS SANTOS', N'bentocruz@yahoo.com', N'21986626882', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (324, N'MARCIA MARIA  RAMOS BRAS', N'mmoramos@yahoo.com.br', N'71991902132', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (325, N'MARCIA MARIA  RAMOS BRAS', N'mmoramos@yahoo.com.br', N'71991902132', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (326, N'Geovana Silva de Souza Soares', N'geovanasouza@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (327, N'Geovana Silva de Souza Soares', N'leandro@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (329, N'joao bastos', N'jm-bastos@uol.com.br', N'11970810425', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (330, N'Paulo Carvalho ', N'paulosergio.carvalho@gmail.com', N'82999710350', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (331, N'ELSON ALVES DOS SANTOS', N'elson.pa@bol.com.br', N'75991703500', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (332, N'Katyuscia Karine  Santos', N'karinesadala@yahoo.com.br', N'82987378982', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (333, N'Katyuscia  Karine', N'karinesadala@yahoo.com.br', N'82987378982', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (334, N'karine sadala', N'karinesadala@yahoo.com.br', N'82987378982', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (335, N'loide cristiane Mendonça', N'loydinha2@hotmail.com', N'71991448163', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (336, N'Luziane Parente', N'luzianeparente4@gmail.com', N'88999998087', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (337, N'nildson barboza de melo', N'nildsonbdm1@gmail.com', N'79999002771', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (338, N'wellyane   Rosier', N'tec.planejamento@yahoo.com.br', N'71992715624', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (339, N'wellyane rosier', N'tec.planejamento@yahoo.com.br', N'71992715624', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (340, N'Joelma Floriza Quaranta Santos', N'joelmafloriza@ig.com.br', N'7988461514', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (341, N'Joelma Floriza Quaranta Santos', N'joelmafloriza@ig.com.br', N'7988461514', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (342, N'Andre  Duraes', N'andrerduraes@gmail.com', N'71991888399', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (343, N'thaina  freire santos', N'thainasantos1998.ts@gmail.com', N'79998087876', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (344, N'antonio maron agle filho', N'amafilho@tjba.jus.br', N'71991043100', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (345, N'antonio maron agle filho', N'amafilho@tjba.jus.br', N'71991043200', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (346, N'Ana Therezinha Santos Rodrigues', N'anahoo.ar@gmail.com', N'79998825228', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (347, N'Ana Therezinha Santos Rodrigues', N'anahoo.ar@gmail.com', N'79998825228', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (348, N'leilane araujo', N'leilacyna@hotmail.com', N'82988861297', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (349, N'Marco Antonio  Santos', N'marcobaiano@globo.com', N'82993023272', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (350, N'IRANILDO FERREIRA DE SOUZA', N'iranildo2005al@gmail.com', N'82988844015', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (351, N'Marianna Freire', N'mari_freire_@hotmail.com', N'79999621765', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (352, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (353, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (354, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (355, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (356, N'SILVANETE  DOS SANTOS GARCIA', N'SILVIAHONDA15@GMAIL.COM', N'79999414565', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (357, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (358, N'Marianna Freire', N'mari_freire_@hotmail.com', N'79999621765', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (359, N'antonio maron agle filho', N'amafilho@tjba.jus.br', N'71991043200', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (360, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (361, N'Ygor Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (362, N'Marcia  Rodrigues do nascimento', N'rodrigues.nascimento.marcia@gmail.com', N'7196383449', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (363, N'LUCIVAL  LUZ DE SOUZA', N'lucivalsouza@hotmail.com', N'71999943331', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (364, N'Alddevan Santos  Nascimento Junior ', N'aldevan.pirambu@hotmail.com', N'79998484824', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (365, N'Aldevan Santos  Nascimento Junior ', N'aldevan.pirambu@hotmail.com', N'79998484824', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (366, N'Juliane Santos', N'juliane.ssantana@gmail.com', N'7988359603', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (367, N'Karine  Santos da Costa Ramos', N'karilef10@hotmail.com', N'75981070106', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (368, N'Karine Ramos', N'karilef10@hotmail.com', N'75981070106', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (369, N'Marco Aurélio  de Figueiredo Quintieri', N'marcoaurelio0303@yahoo.com.br', N'79988580065', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (370, N'Marco Aurélio  de Figueiredo Quintieri', N'marcoaurelio0303@yahoo.com.br', N'79988580065', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (371, N'Valdemir Marques Bomfim Bomfim', N'vevbomfim@yahoo.com.br', N'79999719769', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (372, N'IRANILDO FERREIRA DE SOUZA', N'iranildo2005al@gmail.com', N'82988844015', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (373, N'julio cesar simoes dos santos', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (374, N'JULIO CESAR  SIMÕES DOS SANTOS', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (375, N'JULIO CESAR  SIMÕES DOS SANTOS', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (376, N'julio cesar  simoes dos santos', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (377, N'JULIO CESAR SIMOES DOS SANTOS', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (378, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (379, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (380, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (381, N'Leonardo  Rodrigues Urrutigaray', N'l.urrutigaray@gmail.com', N'71992938110', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (382, N'Leonardo Rodrigues Urrutigaray', N'l.urrutigaray@gmail.com', N'71992938110', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (383, N'Uriel dos Santos Barbosa', N'uriel_sb@hotmail.com', N'71996041147', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (384, N'Uriel  dos Santos Barbosa', N'uriel_sb@hotmail.com', N'71996041147', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (385, N'Uriel dos Santos Barbosa', N'uriel_sb@hotmail.com', N'71996041147', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (386, N'PEDRO  SILVA', N'pedrofbas0@gmail.com', N'8299242609', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (387, N'valfran jose', N'valfra-2026@hotmail.com', N'79998316367', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (388, N'Ednete da Silva  Santos', N'ednetetavares@hotmail.com', N'8234350678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (389, N'Ednete da Silva Santos', N'ednetetavares@hotmail.com', N'8234350678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (390, N'Ednete da Silva Santos', N'ednetetavares@hotmail.com', N'8234350678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (391, N'DANIELA  MENEZES', N'danieejonathan4@gmail.com', N'79999163172', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (392, N'JERFFESON SIDNIS SILVA DOS SANTOS', N'jerffesonsophia@hotmail.com', N'82981220678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (393, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (394, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (395, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (396, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (397, N'Jessica Ferreira dos Santos Alemão ', N'jessikaallemao@hotmail.com', N'79998270034', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (398, N'DAURI PEZZUTO PEZZUTO', N'DAURI@PEZZUTOTELECOM.COM.BR', N'16981266434', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (399, N'Lucileide Andrade', N'lucileide_cavadas@hotmail.com', N'71987914021', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (400, N'Lucileide Andrade', N'lucileide_cavadas@hotmail.com', N'71987914021', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (401, N'Lucileide Cavadas', N'lucileide_cavadas@hotmail.com', N'71987914021', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (402, N'WESLEY SORES SOARES', N'ADMWESLEY@HOTMAIL.COM', N'82998068818', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (403, N'Rubenilton Andrade', N'rubenylton@gmail.com', N'71991042076', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (404, N'Rômulo  Bispo', N'romulo.bispo@hotmail.com', N'71981483400', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (406, N'Edeny Nascimento', N'edeny_oliveira@hotmail.com', N'82991365454', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (407, N'Acassia  BORGES ', N'acassialima@hotmail.com', N'82999326922', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (408, N'Acassia  BORGES ', N'acassialima@hotmail.com', N'82999326922', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (409, N'ANISIO CAVALCANTE JUNIOR JUNIOR', N'anisio.junior@tjpe.jus.br', N'8781267142', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (410, N'MARIO LUIZ DIAS FERREIRA', N'marioldferreira@hotmail.com', N'71992734482', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (411, N'JAQUELINE  MOREIRA', N'jamoreiraenfer@gmail.com', N'7187436637', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (412, N'alielson santos', N'antonio_04_carlos1966@hotmail.com', N'71981413096', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (413, N'JULIANA RODRIGUES BRAIT  RODRIGUES BRAIT', N'julianabrait@gmail.com', N'75988997604', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (414, N'Juliana Rodrigues Brait', N'julianabrait@gmail.com', N'75988997604', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (415, N'Élio  Dias', N'eliodiasimoveis@hotmail.com', N'82999706290', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (416, N'Sebastiao  Cardoso Neto', N'neto@rodaleveveiculos.com.br', N'77988092000', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (417, N'Heribaldo Leite', N'heribaldoc@yahoo.com.br', N'11980823051', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (418, N'Wiguina  Silva', N'wiguina.silva@bol.com.br', N'79999379980', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (419, N'Thaine  Dias', N'thaine.dias@hotmail.com', N'75999739405', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (420, N'sadasdas dasasdsa', N'asdasdasdas@gmail.com', N'91823918239', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (421, N'Rafael GOnçalves', N'rafael.stavale@cozinhandoadois.com.br', N'71981866969', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (422, N'JACIARA DIAS DOS ANJOS', N'marioldferreira@hotmail.com', N'71999653243', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (423, N'Eustorgio reseda Reseda ', N'eustorgio_reseda@hotmail.com', N'75981100226', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (424, N'João Adriano  de Andrade Sobral', N'jaasobral@gmail.com', N'71992179244', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (425, N'João Adriano  de Andrade Sobral', N'jaasobral@gmail.com', N'71992179244', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (426, N'karina lima', N'karina.apolonio@yahoo.com.br', N'79999771414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (427, N'DANIELA MORAES SANTOS', N'danimoraees@hotmail.com', N'77991224802', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (428, N'wesley Araújo', N'wesleyvcw@hotmail.com', N'79981272213', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (429, N'michelle martins', N'michelyrockstar@outlook.com', N'79999036405', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (430, N'João Paulo Ferreira Santos', N'xandinhan@gmail.com', N'79998680642', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (431, N'maria jose   santana araujo', N'marysantanaaraujo@hotmail.com', N'71996073433', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (432, N'maria santana araujo', N'marysantanaaraujo@hotmail.com', N'71996073433', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (433, N'Daniel Reis', N'daniel@bahiatecnologia.com.br', N'71997173003', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (434, N'Felipe Hayne', N'felipehayne@hotmail.com', N'71993810200', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (435, N'Wellington  Dias', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (436, N'Wellington  Dias', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (437, N'Wellington Dias Viana', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (438, N'Wellington Dias Viana', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (439, N'Carolayne   carvalho santos', N'carolaynecarvalho19@gmail.com', N'79991161881', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (440, N'ERICK SILVA', N'SILVA-PE@HOTMAIL.COM', N'8399080623', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (441, N'Wellington Dias', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (442, N'ALBERTO LUDUVICE ALVES', N'alberto_luduvice@hotmail.com', N'79999642532', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (443, N'ALBERTO ALVES', N'alberto_luduvice@hotmail.com', N'79999642532', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (444, N'Marcio dos Santos Karpyn', N'marciokarpyn@yahoo.com.br', N'21988651071', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (445, N'carolayne carvalho santos', N'carol_agatinha123@hotmail.com', N'79991161881', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (446, N'Jorge Santana', N'jlss27@gmail.com', N'71993170405', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (447, N'Fernanda  dç Espírito  santo', N'nandinhacpm22@hotmail.com', N'79991518629', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (448, N'Diogenes dos Santos Rocha', N'diogenesrocha2015@outlook.com', N'79999078100', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (449, N'thaiza  falcao', N'thaiza.falco@gmail.com', N'71987998686', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (450, N'thaiza  falcao', N'thaiza.falco@gmail.com', N'71987998686', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (451, N'RUBEM VIEIRA', N'cecrl@bol.com.br', N'71977011943', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (452, N'Erivani  Santos de campos', N'erivani.silva@lojasguaibim.com.br', N'71986791703', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (453, N'leisiane Santana', N'leisianesantana@bol.com.br', N'7499256151', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (454, N'Samuel  Seixas de Lucena', N'sslucena@hotmail.com', N'71998351550', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (455, N'Samuel  Seixas de lucena', N'sslucena@hotmail.com', N'71998351550', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (456, N'Daiane Mendes', N'daianemendes.adv@hormail.com', N'75999478822', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (457, N'Marcos Henrique Nunes de Carvalho Carvalho', N'nunesdecarvalhomrick@yahoo.com.br', N'79999842029', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (458, N'airton  teles', N'airtonteles1970@gmail.com', N'7988071389', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (459, N'Carlos André  Nunes ', N'hozanita@hotmail.com', N'75991113761', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (460, N'Gabriel Pimentel Machado dos Santos', N'gab_pimentel@hotmail.com', N'71999952604', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (461, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (462, N'Waldilene Cristina ', N'waldilenecristina@gmail.com', N'7998846180', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (463, N'FRANCISCO LEANDRO COSTA PIRES PIRES', N'fleandrocpmj@hotmail.com', N'71986044823', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (464, N'otavio nunes', N'aracajucompras.web@gmail.com', N'7998644523', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (465, N'aline  andrade de freitas', N'alineafreitas@hotmail.com', N'71991455073', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (466, N'aline andrade de freitas', N'alineafreitas@hotmail.com', N'71991455073', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (467, N'valnei duarte', N'valneiguitar@hotmail.com', N'71992921893', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (468, N'ANDRE LUIZ ANDRADE MACIEL', N'andremaciel.adv@gmail.com', N'79999747472', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (469, N'ANDRE LUIZ  ANDRADE MACIEL', N'andremaciel.adv@gmail.com', N'79999747472', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (470, N'andre luiz andrade maciel', N'andremaciel.adv@gmail.com', N'79999747472', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (471, N'Sebastião  dos Santos Lima', N'sebastiaolimaconsultoria@gmail.com', N'75988748632', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (472, N'andrea messias costa barbosa barbosa', N'andreabarb_1@hotmail.com', N'7187402938', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (473, N'Andrea Barbosa', N'andreabarb_1@hotmail.com', N'7187402938', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (474, N'Edmilson nascimento', N'edmilson.c.n@hotmail.com', N'7191518681', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (475, N'Carlos Henrique  Santos Santana ', N'carloshenriquesteffens@gmail.com', N'79996282801', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (476, N'Pauço Henrique', N'paulo-se1@hotmail.com', N'79999594351', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (477, N'Senclair Galvão', N'sgvpb@hotmail.com', N'71992953316', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (478, N'Lorrayna  Franco Figueiredo ', N'lorraynafranco@gmail.com', N'79981440101', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (479, N'Alexsandra Silva Santos de melo melo', N'roselita.silva01@hotmail.com', N'79999071907', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (480, N'Ana Paula Doria', N'pauladoria2006@yahoo.com.br', N'71988794360', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (481, N'Lorrayna Franco Figueiredo', N'lorraynafranco@gmail.com', N'79981440101', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (482, N'andrea messias costa barbosa barbosa', N'andreabarb_1@hotmail.com', N'7187402938', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (483, N'Daiane  leal ', N'daianefalcao.biz@gmail.com', N'7188515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (484, N'Simone  Calheiros', N'simone.rezende@uol.com.br', N'82999736791', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (485, N'Marlos  Prado', N'marlosprado@hotmail.com', N'75991317288', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (486, N'JAQUELINE MENEZES DOS REIS MENEZES', N'jaquelinerihanna@hotmail.com', N'79999187209', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (487, N'Daiane  Leal', N'daianefalcao.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (488, N'Manoela  Macedo rios', N'manoelarios@gmail.com', N'71986236546', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (489, N'Cristiane  almeida rocha ', N'zion_loja@hotmail.com', N'71988151088', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (490, N'Cristiane almeida rocha', N'zion_loja@hotmail.com', N'71988151088', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (491, N'Daiane Leal', N'jmarcos.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (492, N'daiane  leal', N'daianefalcao.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (493, N'Cristina  Gama Matos Pereira', N'crisgama@bol.com.br', N'79999200402', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (494, N'Cristina  Gama Matos Pereira', N'crisgama@bol.com.br', N'79999200402', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (495, N'Débora Sandes de oliveira Sandes', N'vcivel26@tjal.jus.br', N'82988579598', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (496, N'Cristiane Maria CÂngelo Lopes landulfo de sousa Sousa', N'kristamma@hotmail.com', N'71991163726', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (497, N'Richard Pinto do Nascimento', N'richard.nascimento@gmail.com', N'71983051000', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (498, N'GEORGE NASCIMENTO', N'georgeprefeitoparis@hotmail.com', N'75999999793', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (499, N'Graziela  de Araujo Santos Lima', N'graziela.a.s@hotmail.com', N'71992642574', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (500, N'Allan  Alves', N'allanlimaalves91@gmail.com', N'71997218300', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (501, N'ELISANGELA ABREU NASCIMENTO', N'elly_abreu@hotmail.com', N'75998942979', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (502, N'ELISANGELA ABREU NASCIMENTO', N'elly_abreu@hotmail.com', N'75998942979', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (503, N'Maura  Fernandes', N'mauradfernandes@hotmail.com', N'71991320915', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (504, N'Lívia  Queiroz', N'liviasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (505, N'Lívia  Queiroz ', N'libiasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (506, N'Lívia  Queiroz ', N'liviasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (507, N'Lívia  Silva de Queiroz ', N'liviasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (508, N'Alan NixoN', N'lanzinho_sd@hotmail.com', N'7581805985', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (509, N'livia  silva de queiroz', N'liviasilvaq@gmail.com', N'71992447175', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (510, N'BRUNA ANDRADE ', N'BRUNAANDRADE.VIVO@HOTMAIL.COM', N'79999986306', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (511, N'FRANCISCO LEANDRO COSTA PIRES COSTA PIRES', N'fleandrocpmj@hotmail.com', N'71986044823', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (512, N'Daniel  Marques', N'danieltst2@gmail.com', N'79988596853', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (513, N'Geraldo Silva', N'geraldosilva@hotmail.com', N'78456456456', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (514, N'Miguel teste Teste', N'juniorspse@gmail.com', N'79991237646', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (515, N'Eugenio Teste', N'eugenio_camilo10@hotmail.com', N'78946845646', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (517, N'DAIANE  LEAL ', N'jmarcos.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (519, N'Iduyna  Nascimento', N'jl_manutencao_@hotmail.com', N'71983294566', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (520, N'Iduyna Nascimento', N'jl_manutencao_@hotmail.com', N'71983294566', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (521, N'Iduyna Nascimento', N'jl_manutencao_@hotmail.com', N'71983294566', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (523, N'Ramiro  Cerdeira Suarez', N'ramirocerdeira@hotmail.com', N'71997045667', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (524, N'José Ronaldo Costa Soares', N'Jrcsoares@Yahoo.com.br', N'79996460808', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (525, N'José Dantas ', N'abreussodre2@hotmail.com', N'79991037900', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (526, N'LEONES DE LIMA GOMES', N'leonestchebos@hotmail.com', N'79999093498', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (527, N'Maxtelva Bispo Souza ', N'maxmbs@bol.com.br', N'71986647605', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (528, N'Jonathas  Ramos Costa', N'Jota.rc1@hotmail.com', N'71996335789', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (529, N'Jonathas Ramos Costa', N'Jota.rc1@hotmail.com', N'71996335789', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (530, N'isis carvalho', N'isisgentil@gmail.com', N'71996668491', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (531, N'SERGE REHEM', N'serge.rehem@gmail.com', N'71981069246', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (532, N'Ana Paula Andrade Trajano Barros', N'apsa1901@hotmail.com', N'71999032645', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO

USE [bdAbuDhabi03]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/02/2016 18:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[USUCODIGO] [int] IDENTITY(1,1) NOT NULL,
	[USUNOME] [varchar](250) NOT NULL,
	[USULOGIN] [varchar](100) NOT NULL,
	[USUSENHA] [varchar](100) NOT NULL,
	[USUAMIGOS] [varchar](max) NULL,
	[USUCONTINENTE] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[USUCODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (1, N'Maicon', N'maiconsantana@gmail.com', N'maicon@#$', N'Null', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (2, N'Tatiana', N'tati@katana.com.br', N'ti@nne', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (3, N'Kailanne', N'kakau@master.com.br', N'k@k@u', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (5, N'vivi an Thaís', N'vivian.louise27@gmail.com', N'79981339375', N'Null', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (6, N'Daniela  feitosa macedo de aquino', N'cleodani@outlook.com', N'7988299533', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (7, N'Luiz Levy Pandini Figueiredo', N'Levy_pandini@hotmail.com', N'71996043543', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (8, N'jacqueline barbosa andrade', N'pedidos-vitoria@bol.com.br', N'79999655114', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (9, N'jacqueline barbosa andrade', N'pedidos-vitoria@bol.com.br', N'79999655114', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (10, N'matheus soares massotti soares', N'matheuszoares@yahoo.com.br', N'79998560092', N'Taiane;14-02-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (11, N'matheus soares massotti soares', N'matheuszoares@yahoo.com.br', N'79998560092', N'MArcele;02-03-1998|Cassianne;12-12-1992', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (12, N'Dayana  França', N'Daianaclf@hotmail.com', N'82999251529', N'Taiane;14-02-1999', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (13, N'Juliane  Reis dos Santos ', N'juliane2009@gmail.com ', N'79991370007', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (14, N'david rodrigues da silva  rodrigues', N'david.entrega@hotmail.com', N'07996741957', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (15, N'david rodrigues da silva  rodrigues', N'david.entrega@hotmail.com', N'7996741957', N'Null', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (16, N'david  rodrigues da silva  rodrigues ', N'david.entrega@hotmail.com', N'7996741957', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (17, N'Edivania  Ramos', N'ftaedivania_ramos@live.com', N'71999312039', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (18, N'Tania Sousa', N'taniamottas@gmail.com', N'71999839150', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (19, N'Devison   Cerqueira do Nascimento', N'devioncn@gmail.com', N'71986735609', N'Null', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (20, N'Taiane Pereira', N'Taiane.ppereira@hotmail.com', N'7591813395', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (21, N'Mylane de Holanda Marques', N'mylanehm@hotmail.com', N'82999281757', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (22, N'TARCISIO SANTOS', N'tarcisiosilva.santos1@gmail.com', N'71996556744', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (23, N'TARCISIO SANTOS', N'tarcisiosilva.santos1@gmail.com', N'71996556744', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (24, N'Fabiana Da Cruzv', N'Fabianamaia2411@hotmail.com', N'71997208380', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (25, N'Alexandre José Brandão Cupertino de Mello', N'alexandrejbcdemello@hotmail.com', N'79988232250', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (26, N'Alexandre de Mello', N'alexandrejbcdemello@hotmail.com', N'79988232250', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (27, N'ANDERSON JOSÉ CABRAL DE MEDEIROS', N'anderson.medeirosjpa@gmail.com', N'83986457339', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (28, N'RUI BRANDAO FILHO', N'ruibrandaofilho@yahoo.com', N'71999964785', N'Juliana;14-05-1999|Silvana;13-03-1996', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (29, N'Tais  Cruz de Oliveira', N'Taisbellla@hotmail. Com', N'79999077698', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (30, N'RUI BRANDAO FILHO', N'ruibrandaofilho@yahoo.com', N'71999964785', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (31, N'RUI BRANDAO FILHO', N'ruibrandaofilho@yahoo.com', N'71999964785', N'Tatiane;14-02-1956|Silvano;18-01-1945|Santana;12-12-1949', N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (32, N'david rodrigues da silva  rodrigues', N'david.entrega@hotmail.com', N'7996741957', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (33, N'Marco Antônio Teixeira França', N'geremarco@hotmail.com', N'32999764083', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (34, N'Alexandre de Mello', N'alexandrejbcdemello@hotmail.com', N'79988232250', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (35, N'Yanne Peixoto', N'yannempra@hotmail.com', N'82999205092', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (36, N'Jose Carlos Afonso', N'josecarlosafonso@hotmail.com', N'21983983956', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (37, N'cristiane santana  afonso', N'cristianesasantana@hotmail.com', N'21983385808', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (38, N'Juliana Barbosa Santos Vaz da SIlva', N'cruzvaz@hotmail.com', N'71999592643', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (39, N'Juliana Barbosa Santos Vaz da Silva', N'ulybarbosa@hotmail.com', N'71999592643', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (40, N'Liliane Matos', N'Lbmsilva@hotmail.com', N'75998276976', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (41, N'Gabriel Santana Araujo', N'gabrielpaaje@yahoo.com', N'79999065767', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (42, N'Gabriel Santana Araujo', N'gabrielpaaje@yahoo.com', N'79999065767', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (43, N'Jaquel Ferreira de Moraes', N'jaquelmoraes@ig.com.br', N'82996614201', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (44, N'shirley  menezes de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (45, N'cleide mary  Silveira', N'cleidemarysilveira@gmail.com', N'71992674853', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (46, N'Felix Tadeu Santana de Farias', N'ftfarias6@gmail.com', N'7181792600', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (47, N'Neilma  Macêdo', N'neilmamacedo@hotmail.com', N'7192710805', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (48, N'Neilma Macedo', N'neilmamacedo@hotmail.com', N'7192710805', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (49, N'Amanda Cristina Ignacio Moraes', N'amanda_20_ignacio@hotmail.com', N'1178775956', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (50, N'Ednaldo  Fraga', N'Ednaldo.fraga@hotmail.com ', N'71987498995', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (51, N'TARCISIO SANTOS', N'tarcisiosilva.santos1@gmail.com', N'71986811243', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (52, N'Alisson Freire', N'alifrebat@gmail.com', N'79999999999', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (53, N'Lais  Café da Silva Sampaio ', N'laisscafe@gmail.com', N'75992252124', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (54, N'Taila Guimarães ', N'Tailaguimaraes@hotmail.com', N'79999936524', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (55, N'MADIA RISHEA NASCIMENTO  COSTA', N'costa.madia@gmail.com', N'82999204444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (56, N'Daniel  Moura', N'danielhl.moura@gmail.com', N'71987247347', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (57, N'Jesimiel Pinheiro Cavalcante pinheiro', N'jpengcivil@ig.com.br', N'82999195180', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (58, N'Emília  Cervino Nogueira ', N'ecervino.n@ig.com.br ', N'79999874642', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (59, N'Patricia  Lima', N'pslima02@gmail.com', N'82988841178', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (60, N'patricia  lima', N'pslima02@gmail.com', N'82988831178', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (61, N'LEONARDO MAGALHÃES RIGATO', N'leorigato84@gmail.com', N'71988126037', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (62, N'madia rishea nascimento  costa', N'costa.madia@gmail.com', N'82999204444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (63, N'ROSALINA  GUEDES DONATO SANTOS', N'rosaguedes2000@yahoo.com.br', N'7186421717', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (64, N'Érica Mendes Costa  Vicenzi ', N'emcten@hotmail.com ', N'71999545950', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (65, N'Érica Mendes Costa  Vicenzi ', N'emcten@hotmail.com ', N'71999545950', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (66, N'Diego  Souza', N'diego_souza85@yahoo.com.br', N'71992126762', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (67, N'Karina Santana Cruz Cruz', N'kacruz@uol.com.br', N'79991460123', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (68, N'Jose Danilo Nascimento Souza', N'danilonascsouza@gmail.com', N'75998157486', N'Null', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (69, N'Fabiola  Feitosa ', N'seracadadia@yahoo.com.br', N'7999967200', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (70, N'VERA LUCIA DA SILVA  MARTINS', N'vemartins72@gmail.com', N'71999131074', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (71, N'VERA LUCIA DA SILVA MARTINS', N'vemartins72@gmail.com', N'71999131074', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (72, N'VERA LUCIA MARTINS', N'vemartins72@gmail.com', N'71999131074', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (73, N'Lilian  Costa Braga de Sena', N'lilicbsena@hotmail.com', N'71996045444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (74, N'Lilian Costa Braga de Sena ', N'lilicbsena@hotmail.com', N'71996045444', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (75, N'Elanio Mota de Melo', N'elaiomota@oi.com.br', N'79998932448', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (76, N'Lilian Costa Braga de Sena', N'lilicbsena@hotmail.com', N'71996045444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (77, N'Lilian Costa Braga de Sena', N'lilicbsena@hotmail.com', N'71996045444', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (78, N'Carlos Fernandes Fernandes', N'gerencia@contcompany.com.br', N'7191251666', N'Null', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (79, N'antonio carlos santos ferreira antonio', N'acservicos@hotmail.com.br', N'7996441005', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (80, N'antonio carlos santos ferreira carlos', N'acservicos@hotmail.com.br', N'79996441005', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (81, N'EVANILDE MARTINS', N'IVAF5@OUTLOOK.COM', N'79999384431', N'Tamiel;15-01-1996', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (82, N'Carlos Fernandes Fernandes', N'carlosfernandes@contcompany.com.br', N'7191251666', N'Null', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (83, N'Josenaldo  martins', N'fabian8002@hotmail.com', N'79998212125', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (84, N'Josenaldo  martins', N'fabian8002@hotmail.com', N'79998212125', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (85, N'Jsjsjsjsjsk Jsjsjsjsjsk ', N'idiejejeje@jejsjej.com', N'83738383838', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (86, N'Alcilene Correia', N'adamcesarcunha@gmail.com', N'79998620054', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (87, N'Maria Nívia Carmo santos', N'marianivia.carmo@gmail.com', N'79998127196', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (88, N'Luis  António ', N'luisanto13@hotmail.com', N'71988290412', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (89, N'CRISTINA ZILDA GONÇALVES DULTRA', N'cristina@terrafortetoyota.com.br', N'71996176186', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (90, N'Camila Helen', N'camila.helen95@gmail.com', N'66582828828', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (91, N'LARISSA CAROZO ARZE', N'laicarozo@gmail.com', N'79988199773', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (92, N'Rafael  De jesus Alves', N'Rafael.vitorhugo@gmail.com', N'79988779700', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (93, N'Marcella Oliveira', N'marcella.n.ce@hotmail.com', N'7998094250', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (94, N'Carlos Wirti', N'barzotto.carlos@gmail.com', N'79981221797', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (95, N'Carla  Freitas da Silveira', N'cf_silveira17@hotmail.com', N'7199483355', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (96, N'Carla  Freitas da Silveira', N'cf_silveira17@hotmail,com', N'71999483355', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (97, N'Margareth Lima', N'gallmh@yahoo.com.br', N'71999989116', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (98, N'ticiana  santos', N'ticiferreira@hotmail.com', N'21971561215', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (99, N'Samara oliveira lopes Oliveira lopes ', N'samarha_sol@hotmail.com', N'79999574675', N'Marcos;08-04-1996|Carlos;14-02-1997|MArcelo;30-09-1990|Silvia;15-05-1994', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (100, N'Carlos Fortes', N'tombqfortes@yahoo.com.br', N'71987875358', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (101, N'neviton dos santos  junior', N'nevitintojunior_corretor@hotmail.com', N'7998902708', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (102, N'neviton  junior', N'nevitonjunior_corretor@hotmail.com', N'7998902708', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (103, N'TIAGO FERREIRA', N'tiago_ferreira10@hotmail.com', N'71987357858', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (104, N'Samara oliveira lopes Oliveira lopes ', N'samarha_sol@hotmail.com', N'79999574675', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (105, N'Carlos Santos', N'homemnaturalse@hotmail.com', N'99999999999', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (106, N'Evanise Tosta Santos Santos', N'evanise@ufba.br', N'71988225606', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (107, N'THÁBATA MARIELLE SILVA DE SANTANA GEAMBASTIANI', N'marielleanjo@hotmail.com', N'75999001477', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (108, N'nadyja lima', N'nl_m@msn.com', N'79996461173', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (109, N'Mônica Cristina  Cavalcante', N'monica@gabriocomunicacao.com.br', N'82999897287', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (110, N'Mônica Cristina Cavalcante Gomes', N'jornalista2002@hotmail.com', N'82999897287', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (111, N'MARIANA CACILDA ALMEIDA DE ARAUJO', N'mariaraujossa@uol.com.br', N'71991466047', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (112, N'Maria Nívia Carmo santos', N'marianivia.carmo@gmail.com', N'79998127196', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (113, N'luis washington marinho costa', N'marinhocosta@ig.com.br', N'71991878081', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (114, N'Eryca Rayanne  Ramos Silva', N'erycaray@hotmail.com', N'79999167204', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (115, N'CLAUDIANE  GOMES DA SILVA', N'claudianegsilva@yahoo.com.br', N'82999406187', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (116, N'claudiane gomes da silva', N'claudianegsilva@yahoo.com.br', N'82999406187', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (117, N'Gileno Pereira', N'prgileno.pereira@gmail.com', N'71993232530', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (118, N'Gileno Pereira', N'prgileno.pereira@gmail.com', N'71993232530', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (119, N'jose roberto dos santos roberto santos', N'joserobertodossantos31@gmail.com', N'79998061394', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (120, N'Érica  Cruz', N'ericacruz982@gmail.com', N'79999091331', N'Rodrigo;18-07-1995', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (121, N'DEMETRIUS P. MORILLA', N'demetriusmorilla@hotmail.com', N'82999384108', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (122, N'Eni Devay de Freitas', N'enifreitas@hotmail.com', N'71981954065', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (123, N'ANTONIO CAROLINO ARAUJO FILHO CAROLINO', N'carolinoaraujo@bol.com.br', N'71988005249', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (124, N'ANAILMA DA SILVA JESUS ARAUJO SILVA', N'anailmasilva@yahoo.com.br', N'71986371522', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (125, N'Morganna Rebelo', N'morgannarebelo@hotmail.com', N'82981873737', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (126, N'maria  soares', N'sossoares.ba@hotmail.com', N'75988719033', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (127, N'Fábio Murilo Tieghi Moreira', N'fabtieghi@yahoo.com.br', N'71986982048', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (128, N'Vanessa  oliveira', N'nessa.oliveira@hotmail.com', N'71984261523', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (129, N'Ana Cláudia  Oliveira', N'anaclaudia@doisaarquitetura.com.br', N'71992476567', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (130, N'Adonis Brasil', N'adoniscontato@gmail.com', N'73988141914', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (131, N'Fernanda Bomfim Alves', N'NANDAALVES87@HOTMAIL.COM', N'71986702061', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (132, N'Histéfani  Almeida Alves', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (133, N'Histéfani  Almeida Alves', N'histefanialmeida@gmail.com', N'79998341071', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (134, N'Histéfani Almeida Alves', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (135, N'Josefa Dilma dos Santos Santos', N'jd.caetano@hotmail.com', N'79999419373', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (136, N'JAILSON MENDES', N'jailsonmendes2010@hotmail.com', N'71986638517', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (137, N'Itamar Rosado Ferreira Ferreira', N'itamarrosado@gmail.com', N'71987420971', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (138, N'Itamar Rosado Ferreira Ferreira', N'itamarrosado@gmail.com', N'71987420971', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (139, N'LUAN DE lima SANTOS', N'luanlima6178@gmail.com', N'7988553059', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (140, N'Wennedy Santos', N'wennedy_endy@hotmail.com', N'7998086959', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (141, N'JAILSON  DE SANTANA MENDES', N'jailsonmendes2010@hotmail.com', N'71986638517', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (142, N'JAILSON DE SANTANA MENDES', N'jailsonmendes2010@hotmail.com', N'71986638517', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (143, N'artur  bispo dos santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (144, N'artur bispo dos santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (145, N'Demétrio Almeida Almeida', N'demetrioalmeida@hotmail.com', N'82987263166', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (146, N'ANA LARISSA SOUZA DE OLIVEIRA  SOUZA DE OLIVEIRA ', N'larysouza19@gmail.com', N'7999250038', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (147, N'IRANILDO FERREIRA DE  SOUZA', N'iranildo2005al@gmail.com', N'8288844015', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (148, N'EDENY  NASCIMENTO', N'EDENY_OLIVEIRA@HOTMAIL.COM', N'82987228414', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (149, N'RONES TOLEDO', N'RONESTOLEDO@HOTMAIL.COM', N'82981318664', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (150, N'ROBERTO FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (151, N'ROBERTO  FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (152, N'ROBERTO FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (153, N'Márcio  Fernando', N'marcio_fernando_89@hotmail.com', N'82987251760', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (154, N'Marcio Fernando', N'marcio_fernando_89@hotmail.com', N'82987251760', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (155, N'IRANILDO SOUZA', N'iranildo2005al@gmail.com', N'82988844015', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (156, N'Maxwell Seixas Luz Luz', N'max.sluz33@gmail.com', N'71992138487', N'Rodrigo;18-07-1995', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (157, N'Camila Evangelista Araujo', N'divaneilopes@hotmail.com', N'75982197611', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (158, N'Dulce  Moreira', N'dceliamoreira@hotmail.com', N'79999218931', N'Juliana;14-05-1999|Silvana;13-03-1996', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (159, N'ROBERTO FERREIRA', N'rvf2386@gmail.com', N'71993074489', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (160, N'MARCIO  PATURY', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (161, N'MARCIO PATURY', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (162, N'MARCIO  PATURY', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (163, N'marcio patury', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (164, N'iviny Mariane  Costa santos', N'ivinycosta29@hotmail.com', N'79996074734', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (165, N'iviny Mariane  Costa santos', N'ivinycosta29@hotmail.com', N'79996074734', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (166, N'Marcio  Patury', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (167, N'Marcio Patury', N'marciopatury@gmail.com', N'71999190607', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (168, N'Mônica  Cavalcante', N'jornalista2002@hotmail.com', N'82999897287', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (169, N'BARBARA Menezes', N'bamenezes@hotmail.com', N'7182559344', N'Carvalho;14-12-1991|Samuel;01-02-1995|Samira;04-07-1992', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (170, N'Eduardo Braga', N'elbraga@ig.com.br', N'71982179729', NULL, N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (171, N'Márcio  Fernandes ', N'silvia_sf18@hotmail.com', N'71988391291', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (172, N'Elício Amado', N'elicioamado@hotmail.com', N'71999851036', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (173, N'Elício Amado', N'elicioamado@hotmail.com', N'71999851036', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (174, N'artur  bispo santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (175, N'Histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', NULL, N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (176, N'histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (177, N'histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (178, N'givaneide  lima do nascimento', N'givaneide.lima@bol.com.br', N'82987069157', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (179, N'artur  bispo dos santos neto', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (180, N'francisco  lourenço nascimento', N'arturbisponeto@gmail.com', N'82987422991', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (181, N'Giovane  Gomes Nascimento', N'giovanegnascimento@gmail.com', N'71999999997', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (182, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (183, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', NULL, N'África')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (184, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (185, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (186, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (187, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Manoela;15-01-1995|Cartoaldo;01-01-1990|Daniela Feitosa;13-12-1956|Mario;14-02-1994|Maroaldo;05-01-1999', N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (188, N'MARCIO IVALDO  FERNANDES', N'silvia_sf12@hotmail.com', N'71988391291', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (189, N'Silvia cristina Santana', N'silvia_sf18@hotmail.com', N'71992700842', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (190, N'Silvia cristina  Santana', N'silvia_sf18@hotmail.com', N'71992700842', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (191, N'Silvia Cristina  Santana', N'silvia_sf18@hotmail.com', N'71992700842', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (192, N'HUGO LEONARDO SACRAMENTO LOPES LOPES', N'hugoleonardo2008@hotmail.com', N'75988234737', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (193, N'MANOEL AUGUSTO DOS SANTOS NETO SANTOS NETO', N'augustoneto78@hotmail.com', N'79998384971', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (194, N'histefani alves', N'histefanialmeida@gmail.com', N'79999047370', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (195, N'Histefani alves', N'histefanialmeida@gmail.com', N'79998341071', N'Null', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (196, N'SHIRLEY  MENEZES DE ANDRADE', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (197, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (198, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Null', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (199, N'histefani almeida', N'histefanialmeida@gmail.com', N'79998341071', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (200, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'17986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (201, N'shirley de andrade', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (202, N'Karla  Camacam', N'kcamacam@hotmail.com', N'71991422017', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (203, N'Edmilson  araujo', N'd.edy@hotmail.com', N'71992071477', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (204, N'edimilsom araujo', N'd.edy@hotmail.com', N'7136277678', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (205, N'Edimilson  Araujo', N'd.edy@hotmail.com', N'7136277678', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (206, N'Josenne Mark Freitas de Sousa', N'josennemark@gmail.com', N'71992520997', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (207, N'Hélcio Perin', N'helciomoreira@yahoo.com.br', N'71988158221', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (208, N'Rosemary  Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (209, N'Rosemary  Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (210, N'Rosemary Rufina S.  Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (211, N'Rosemary Rufina Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (212, N'Rosemary Rufina Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (213, N'Rosemary Rufina Perin', N'rorufperin@yahoo.com.br', N'71988442006', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (214, N'Aguinaldo  Ventura', N'agvent@hotmail.com', N'81999753451', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (215, N'Aguinaldo Ventura', N'agvent@hotmail.com', N'81999753451', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (216, N'cristina  bochicchio', N'cristinabochicchio@hotmail.com', N'7192776691', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (217, N'SHIRLEY MENEZES DE ANDRADE', N'shirleymandrade@hotmail.com', N'71986092851', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (218, N'cristina bochicchio', N'cristinabochicchio@hotmail.com', N'71992776691', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (219, N'PATRICIO   DA SILVA  LIMA  ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (220, N'PATRICIO  DA SILVA LIMA ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (221, N'PATRICIO   DA SILVA  LIMA', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (222, N'PATRICIO  DA SILVA LIMA ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (223, N'Ana Paula Soares', N'anapaulasoaresstar@yahoo.com.br', N'81999730629', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (224, N'Jomar Benvindo dos Santos Benvindo dos Santos', N'lua.negrapr@hotmail.com', N'7488070347', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (225, N'Williane Lima santos', N'williane_1985@hotmail.com', N'82999671919', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (226, N'manoelson  carneiro firmo', N'mano_elson@hotmail.com', N'75992226869', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (227, N'manoelson carneiro firmo', N'mano_elson@hotmail.com', N'75992226869', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (228, N'PATRICIO   DA SILVA LIMA ', N'PATRICIOLIMA82@GMAIL.COM', N'7191619677', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (229, N'Viviane Ferreira dos Santos freire Freire', N'Adagilson10@bol.com.br', N'75999212526', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (230, N'Daisy Cristina Correia de Jesus', N'aju.ba@hotmail.com', N'79991353364', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (231, N'Amom Lemos', N'amom_182@hotmail.com', N'71993830400', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (232, N'Natanael Lessa Santos', N'santos_lessa@hotmail.com', N'79999836233', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (233, N'RICARDO  ALONSO CATELA', N'rcatela@gmail.com', N'71996088881', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (234, N'Vanda Tavares dos Santos', N'vandinhatavares@yahoo.com.br', N'79998803408', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (235, N'Jamerson Flavio', N'jamerson.flavio@hotmail.com', N'79996818128', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (236, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'71993374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (237, N'Mathias Nunes dos Santos Santana Junior Nunes', N'mathiasnunessantana@hotmail.com', N'79988917960', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (238, N'Elisangela  Barbosa ', N'lisferreira2009@hotmail.com', N'71991836087', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (239, N'Nathalie Moraes', N'nathaliemoraes@gmail.com', N'71999795768', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (240, N'Clayton  Santos', N'clayton.stos@gmail.com', N'82999911517', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (241, N'rosangela soares da cruz soares', N'rosasores12@HOtmail.com', N'71991329726', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (242, N'DAVID MARTINEZ', N'dartanhajr@hotmail.com', N'71988515665', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (243, N'WASHINGTON  LUIZ RAMOS CRUZ ', N'washingtoncontabilidade@hotmail.com', N'79999872929', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (244, N'João  Pereira Neto', N'joaoevaldelene@hotmail.com', N'83986003362', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (245, N'FABIANO SAMPAIO CONCEIÇÃO', N'fabiano.sampaio@tjse.jus.br', N'79991414703', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (246, N'Érico  de Melo Xavier', N'emxestudir@yahoo.com.br', N'75999699954', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (247, N'Fernando Carvalho Junior Carvalho', N'nandoelala@hotmail.com', N'7996604511', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (248, N'LILIAN RITA DE SOUZA MEIRELES', N'li_meireles@hotmail.com', N'73988711926', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (249, N'Denise Oliveira', N'denise@usetaxisalvador.com.br', N'71996384546', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (250, N'Tarciane Maria', N'tarciane.maria@yahoo.com.br', N'7998797585', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (251, N'tassis prata', N'tassischarayne@hotmail.com', N'79999373606', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (252, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (253, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (254, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (255, N'Jaline  Passos', N'jalpassos@hotmail.com', N'71987546293', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (256, N'Jaline  passos', N'jalpassos@hotmail.com', N'71987546293', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (257, N'Milla Borges', N'millinha_borges@hotmail.com', N'75992702260', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (258, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'7193374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (259, N'Camila  Carvalho', N'camila@goesdecarvalho.adv.br', N'71993374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (260, N'camila Goes', N'camila@goesdecarvalho.adv.br', N'71993374601', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (261, N'Cláudio  Leite', N'claudiosampaio_ba@hotmail.com', N'75991386550', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (262, N'MARIA AUXILIADORA OLIVA RIBEIRO OLIVA RIBEIRO', N'dora.oliva@ig.com.br', N'71991574576', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (263, N'Marlucia  Leite', N'marluciaestrela@hotmail.com', N'75991144027', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (264, N'francisjane  Aragão', N'francisejunior@hotmail.com', N'79999896714', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (265, N'QUENYA FERNANDA TEIXEIRA BARRETO BARRETO', N'nana-teixeira5552hotmail.com', N'71986515156', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (266, N'flavia mota de alencar', N'alencarflaviam@gmail.com', N'82999255756', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (267, N'Juliana Silva Campos Farias', N'julicampos2@hotmail.com', N'71991776900', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (268, N'FLAVIA MOTA DE ALENCAR', N'f.malencar@ig.com.br', N'82999255756', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (269, N'Michele  Tavares Gaspar', N'chell.gaspar@gmail.com', N'71987360499', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (270, N'ANDRÉA  VILLA FLÔR SAMPAIO', N'ANDREAVILLAADV@OUTLOOK.COM.BR', N'71993291602', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (271, N'Ana Lúcia  Cerqueira dos Santos silva', N'analuz373@hotmail.com', N'75991917759', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (272, N'Karen Simone  Dias', N'kdias@ford.com', N'71991351004', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (273, N'Karen Dias', N'kdias@ford.com', N'71991351004', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (274, N'Alexandre  Paes dos Santos', N'alexandre.paes.santos@gmail.com', N'82988928115', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (275, N'Patricia  José dos Santos ', N'miguelestruturas@hotmail.com', N'79999639533', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (276, N'CLEIDE ANA PINTO DOS SANTOS', N'CSANTOS_CONTABIL@HOTMAIL.COM', N'71999212243', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (277, N'Dorinilda Bezerra Silva Rocha ', N'dori_silva@yahoo.com.br', N'82999254737', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (278, N'CLAUDIO VICENTE SANTOS', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (279, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (280, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (281, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8294297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (282, N'claudio vicente santos', N'claudio.vicentesantos@hotmail.com', N'8298297878', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (283, N'VALDILENE SANTOS DA SILVA SANTOS SILVA', N'VALGATA26@hotmail.com', N'7193080338', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (284, N'Isaias  Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (285, N'Isaias Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (286, N'Isaias  Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (287, N'Isaias Peixoto da Costa', N'isaiaspeixoto@gmail.com', N'75988235263', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (288, N'Beatriz Machado', N'biaoutback@hotmail.com', N'82996944157', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (289, N'Marina  Anunciação ', N'marinafar26.ma@gmail.com', N'71981765656', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (290, N'Alexandre Paes', N'alexandre.paes.santos@gmail.com', N'82988928115', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (291, N'Claudio Ferreira', N'cmartins.ferreira@uol.com.br', N'71991391442', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (292, N'Claudio Ferreira', N'cmartins.ferreira@uol.com.br', N'71991391442', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (293, N'CLAUDIO  FERREIRA', N'cmartins.ferreira@uol.com.br', N'71991939144', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (294, N'Welton Barbosa', N'welton_c_barbosa@msn.com', N'82988034786', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (295, N'Camila  Monteiro', N'ca.mila.monteiro@hotmail.com', N'79999302767', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (296, N'Tatiana Reis  Santana Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (297, N'Tatiana Reis  Santos Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (298, N'Tatiana Reis  Santos Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (299, N'Tatiana  Reis ', N'tatytjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (300, N'Giovanna  Maldonado Vieira', N'giovanna.maldonado@conti.com.br', N'71996114964', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (301, N'Giovanna Maldonado Vieira', N'giovanna.maldonado@conti.com.br', N'71996114964', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (302, N'Tatiana  Reis ', N'tatyrj@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (303, N'Tatiana  Reis ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (304, N'Ronaldo Moraes', N'ronaldo.mda@gmail.com', N'82996246560', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (305, N'mary hellen  monteiro ', N'maryjeninha@gmail.com', N'79996342012', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (306, N'mary hellen monteiro', N'maryjeninha@gmail.com', N'79996342012', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (307, N'Lucas  Santos', N'lukas_lsa@hotmail.com', N'79991212113', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (308, N'Lucas Santos', N'lukas_lsa@hotmail.com', N'79991212113', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (309, N'ANDRE MARCHETTO', N'andre.marchetto@gmail.com', N'7199949817', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (310, N'ELSON ALVES DOS SANTOS', N'elson.pa@bol.com.br', N'75991703500', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (311, N'ROBERTO  MOURA MORAES', N'betormm59@gmail.com', N'79988131806', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (312, N'ROBERTO MOURA MORAES', N'betormm59@gmail.com', N'79988131806', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (313, N'THIAGO  RIBEIRO', N'thiagoribeiro-22@hotmail.com', N'79998777104', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (314, N'THIAGO RIBEIRO', N'thiagoribeiro-22@hotmail.com', N'79998777104', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (315, N'verena senra ', N'vesenra@hotmail.com', N'71996611990', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (316, N'Tatiana  Reis Santos Silva ', N'tatyrjs@uol.com.br', N'71987905091', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (317, N'Paulo Carvalho', N'paulosergio.carvalho@gmail.com', N'82999710350', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (318, N'ADRIANA ANDRADE REICHL', N'ADRIANA.TUR@HOTMAIL.COM', N'71991857942', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (319, N'GEOVANA  SILVA DE SOUZA SOARES', N'geovanasouza@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (320, N'FABIOLA PIMENTEL DIOGENES LETIER DE ALMEIDA', N'fabiolaletier@gmail.com', N'71988828509', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (321, N'GEOVANA  SILVA DE SOUZA SOARES', N'geovanasouza@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (322, N'Aline  Rodrigues', N'alinecrodrigues@gmail.com', N'71988824687', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (323, N'KATYUSCIA KARINE VIEIRA DOS SANTOS', N'bentocruz@yahoo.com', N'21986626882', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (324, N'MARCIA MARIA  RAMOS BRAS', N'mmoramos@yahoo.com.br', N'71991902132', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (325, N'MARCIA MARIA  RAMOS BRAS', N'mmoramos@yahoo.com.br', N'71991902132', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (326, N'Geovana Silva de Souza Soares', N'geovanasouza@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (327, N'Geovana Silva de Souza Soares', N'leandro@magazinejl.com.br', N'74981012117', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (329, N'joao bastos', N'jm-bastos@uol.com.br', N'11970810425', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (330, N'Paulo Carvalho ', N'paulosergio.carvalho@gmail.com', N'82999710350', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (331, N'ELSON ALVES DOS SANTOS', N'elson.pa@bol.com.br', N'75991703500', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (332, N'Katyuscia Karine  Santos', N'karinesadala@yahoo.com.br', N'82987378982', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (333, N'Katyuscia  Karine', N'karinesadala@yahoo.com.br', N'82987378982', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (334, N'karine sadala', N'karinesadala@yahoo.com.br', N'82987378982', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (335, N'loide cristiane Mendonça', N'loydinha2@hotmail.com', N'71991448163', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (336, N'Luziane Parente', N'luzianeparente4@gmail.com', N'88999998087', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (337, N'nildson barboza de melo', N'nildsonbdm1@gmail.com', N'79999002771', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (338, N'wellyane   Rosier', N'tec.planejamento@yahoo.com.br', N'71992715624', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (339, N'wellyane rosier', N'tec.planejamento@yahoo.com.br', N'71992715624', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (340, N'Joelma Floriza Quaranta Santos', N'joelmafloriza@ig.com.br', N'7988461514', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (341, N'Joelma Floriza Quaranta Santos', N'joelmafloriza@ig.com.br', N'7988461514', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (342, N'Andre  Duraes', N'andrerduraes@gmail.com', N'71991888399', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (343, N'thaina  freire santos', N'thainasantos1998.ts@gmail.com', N'79998087876', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (344, N'antonio maron agle filho', N'amafilho@tjba.jus.br', N'71991043100', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (345, N'antonio maron agle filho', N'amafilho@tjba.jus.br', N'71991043200', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (346, N'Ana Therezinha Santos Rodrigues', N'anahoo.ar@gmail.com', N'79998825228', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (347, N'Ana Therezinha Santos Rodrigues', N'anahoo.ar@gmail.com', N'79998825228', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (348, N'leilane araujo', N'leilacyna@hotmail.com', N'82988861297', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (349, N'Marco Antonio  Santos', N'marcobaiano@globo.com', N'82993023272', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (350, N'IRANILDO FERREIRA DE SOUZA', N'iranildo2005al@gmail.com', N'82988844015', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (351, N'Marianna Freire', N'mari_freire_@hotmail.com', N'79999621765', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (352, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (353, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (354, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (355, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (356, N'SILVANETE  DOS SANTOS GARCIA', N'SILVIAHONDA15@GMAIL.COM', N'79999414565', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (357, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (358, N'Marianna Freire', N'mari_freire_@hotmail.com', N'79999621765', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (359, N'antonio maron agle filho', N'amafilho@tjba.jus.br', N'71991043200', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (360, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (361, N'Ygor Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (362, N'Marcia  Rodrigues do nascimento', N'rodrigues.nascimento.marcia@gmail.com', N'7196383449', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (363, N'LUCIVAL  LUZ DE SOUZA', N'lucivalsouza@hotmail.com', N'71999943331', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (364, N'Alddevan Santos  Nascimento Junior ', N'aldevan.pirambu@hotmail.com', N'79998484824', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (365, N'Aldevan Santos  Nascimento Junior ', N'aldevan.pirambu@hotmail.com', N'79998484824', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (366, N'Juliane Santos', N'juliane.ssantana@gmail.com', N'7988359603', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (367, N'Karine  Santos da Costa Ramos', N'karilef10@hotmail.com', N'75981070106', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (368, N'Karine Ramos', N'karilef10@hotmail.com', N'75981070106', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (369, N'Marco Aurélio  de Figueiredo Quintieri', N'marcoaurelio0303@yahoo.com.br', N'79988580065', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (370, N'Marco Aurélio  de Figueiredo Quintieri', N'marcoaurelio0303@yahoo.com.br', N'79988580065', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (371, N'Valdemir Marques Bomfim Bomfim', N'vevbomfim@yahoo.com.br', N'79999719769', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (372, N'IRANILDO FERREIRA DE SOUZA', N'iranildo2005al@gmail.com', N'82988844015', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (373, N'julio cesar simoes dos santos', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (374, N'JULIO CESAR  SIMÕES DOS SANTOS', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (375, N'JULIO CESAR  SIMÕES DOS SANTOS', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (376, N'julio cesar  simoes dos santos', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (377, N'JULIO CESAR SIMOES DOS SANTOS', N'julio@andradesimoes.com.br', N'71999981154', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (378, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (379, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (380, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (381, N'Leonardo  Rodrigues Urrutigaray', N'l.urrutigaray@gmail.com', N'71992938110', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (382, N'Leonardo Rodrigues Urrutigaray', N'l.urrutigaray@gmail.com', N'71992938110', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (383, N'Uriel dos Santos Barbosa', N'uriel_sb@hotmail.com', N'71996041147', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (384, N'Uriel  dos Santos Barbosa', N'uriel_sb@hotmail.com', N'71996041147', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (385, N'Uriel dos Santos Barbosa', N'uriel_sb@hotmail.com', N'71996041147', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (386, N'PEDRO  SILVA', N'pedrofbas0@gmail.com', N'8299242609', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (387, N'valfran jose', N'valfra-2026@hotmail.com', N'79998316367', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (388, N'Ednete da Silva  Santos', N'ednetetavares@hotmail.com', N'8234350678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (389, N'Ednete da Silva Santos', N'ednetetavares@hotmail.com', N'8234350678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (390, N'Ednete da Silva Santos', N'ednetetavares@hotmail.com', N'8234350678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (391, N'DANIELA  MENEZES', N'danieejonathan4@gmail.com', N'79999163172', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (392, N'JERFFESON SIDNIS SILVA DOS SANTOS', N'jerffesonsophia@hotmail.com', N'82981220678', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (393, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (394, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (395, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (396, N'Ygor  Fernandes', N'ygorfandrade@gmail.com', N'82999535587', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (397, N'Jessica Ferreira dos Santos Alemão ', N'jessikaallemao@hotmail.com', N'79998270034', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (398, N'DAURI PEZZUTO PEZZUTO', N'DAURI@PEZZUTOTELECOM.COM.BR', N'16981266434', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (399, N'Lucileide Andrade', N'lucileide_cavadas@hotmail.com', N'71987914021', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (400, N'Lucileide Andrade', N'lucileide_cavadas@hotmail.com', N'71987914021', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (401, N'Lucileide Cavadas', N'lucileide_cavadas@hotmail.com', N'71987914021', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (402, N'WESLEY SORES SOARES', N'ADMWESLEY@HOTMAIL.COM', N'82998068818', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (403, N'Rubenilton Andrade', N'rubenylton@gmail.com', N'71991042076', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (404, N'Rômulo  Bispo', N'romulo.bispo@hotmail.com', N'71981483400', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (406, N'Edeny Nascimento', N'edeny_oliveira@hotmail.com', N'82991365454', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (407, N'Acassia  BORGES ', N'acassialima@hotmail.com', N'82999326922', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (408, N'Acassia  BORGES ', N'acassialima@hotmail.com', N'82999326922', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (409, N'ANISIO CAVALCANTE JUNIOR JUNIOR', N'anisio.junior@tjpe.jus.br', N'8781267142', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (410, N'MARIO LUIZ DIAS FERREIRA', N'marioldferreira@hotmail.com', N'71992734482', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (411, N'JAQUELINE  MOREIRA', N'jamoreiraenfer@gmail.com', N'7187436637', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (412, N'alielson santos', N'antonio_04_carlos1966@hotmail.com', N'71981413096', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (413, N'JULIANA RODRIGUES BRAIT  RODRIGUES BRAIT', N'julianabrait@gmail.com', N'75988997604', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (414, N'Juliana Rodrigues Brait', N'julianabrait@gmail.com', N'75988997604', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (415, N'Élio  Dias', N'eliodiasimoveis@hotmail.com', N'82999706290', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (416, N'Sebastiao  Cardoso Neto', N'neto@rodaleveveiculos.com.br', N'77988092000', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (417, N'Heribaldo Leite', N'heribaldoc@yahoo.com.br', N'11980823051', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (418, N'Wiguina  Silva', N'wiguina.silva@bol.com.br', N'79999379980', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (419, N'Thaine  Dias', N'thaine.dias@hotmail.com', N'75999739405', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (420, N'sadasdas dasasdsa', N'asdasdasdas@gmail.com', N'91823918239', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (421, N'Rafael GOnçalves', N'rafael.stavale@cozinhandoadois.com.br', N'71981866969', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (422, N'JACIARA DIAS DOS ANJOS', N'marioldferreira@hotmail.com', N'71999653243', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (423, N'Eustorgio reseda Reseda ', N'eustorgio_reseda@hotmail.com', N'75981100226', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (424, N'João Adriano  de Andrade Sobral', N'jaasobral@gmail.com', N'71992179244', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (425, N'João Adriano  de Andrade Sobral', N'jaasobral@gmail.com', N'71992179244', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (426, N'karina lima', N'karina.apolonio@yahoo.com.br', N'79999771414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (427, N'DANIELA MORAES SANTOS', N'danimoraees@hotmail.com', N'77991224802', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (428, N'wesley Araújo', N'wesleyvcw@hotmail.com', N'79981272213', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (429, N'michelle martins', N'michelyrockstar@outlook.com', N'79999036405', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (430, N'João Paulo Ferreira Santos', N'xandinhan@gmail.com', N'79998680642', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (431, N'maria jose   santana araujo', N'marysantanaaraujo@hotmail.com', N'71996073433', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (432, N'maria santana araujo', N'marysantanaaraujo@hotmail.com', N'71996073433', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (433, N'Daniel Reis', N'daniel@bahiatecnologia.com.br', N'71997173003', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (434, N'Felipe Hayne', N'felipehayne@hotmail.com', N'71993810200', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (435, N'Wellington  Dias', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (436, N'Wellington  Dias', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (437, N'Wellington Dias Viana', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (438, N'Wellington Dias Viana', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (439, N'Carolayne   carvalho santos', N'carolaynecarvalho19@gmail.com', N'79991161881', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (440, N'ERICK SILVA', N'SILVA-PE@HOTMAIL.COM', N'8399080623', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (441, N'Wellington Dias', N'diasviana79@gmail.com', N'79988323056', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (442, N'ALBERTO LUDUVICE ALVES', N'alberto_luduvice@hotmail.com', N'79999642532', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (443, N'ALBERTO ALVES', N'alberto_luduvice@hotmail.com', N'79999642532', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (444, N'Marcio dos Santos Karpyn', N'marciokarpyn@yahoo.com.br', N'21988651071', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (445, N'carolayne carvalho santos', N'carol_agatinha123@hotmail.com', N'79991161881', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (446, N'Jorge Santana', N'jlss27@gmail.com', N'71993170405', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (447, N'Fernanda  dç Espírito  santo', N'nandinhacpm22@hotmail.com', N'79991518629', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (448, N'Diogenes dos Santos Rocha', N'diogenesrocha2015@outlook.com', N'79999078100', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (449, N'thaiza  falcao', N'thaiza.falco@gmail.com', N'71987998686', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (450, N'thaiza  falcao', N'thaiza.falco@gmail.com', N'71987998686', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (451, N'RUBEM VIEIRA', N'cecrl@bol.com.br', N'71977011943', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (452, N'Erivani  Santos de campos', N'erivani.silva@lojasguaibim.com.br', N'71986791703', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (453, N'leisiane Santana', N'leisianesantana@bol.com.br', N'7499256151', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (454, N'Samuel  Seixas de Lucena', N'sslucena@hotmail.com', N'71998351550', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (455, N'Samuel  Seixas de lucena', N'sslucena@hotmail.com', N'71998351550', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (456, N'Daiane Mendes', N'daianemendes.adv@hormail.com', N'75999478822', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (457, N'Marcos Henrique Nunes de Carvalho Carvalho', N'nunesdecarvalhomrick@yahoo.com.br', N'79999842029', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (458, N'airton  teles', N'airtonteles1970@gmail.com', N'7988071389', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (459, N'Carlos André  Nunes ', N'hozanita@hotmail.com', N'75991113761', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (460, N'Gabriel Pimentel Machado dos Santos', N'gab_pimentel@hotmail.com', N'71999952604', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (461, N'Claudia  Lima Bacelar de Souza ', N'claudiadesouza73@gmail.com', N'71997001414', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (462, N'Waldilene Cristina ', N'waldilenecristina@gmail.com', N'7998846180', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (463, N'FRANCISCO LEANDRO COSTA PIRES PIRES', N'fleandrocpmj@hotmail.com', N'71986044823', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (464, N'otavio nunes', N'aracajucompras.web@gmail.com', N'7998644523', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (465, N'aline  andrade de freitas', N'alineafreitas@hotmail.com', N'71991455073', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (466, N'aline andrade de freitas', N'alineafreitas@hotmail.com', N'71991455073', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (467, N'valnei duarte', N'valneiguitar@hotmail.com', N'71992921893', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (468, N'ANDRE LUIZ ANDRADE MACIEL', N'andremaciel.adv@gmail.com', N'79999747472', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (469, N'ANDRE LUIZ  ANDRADE MACIEL', N'andremaciel.adv@gmail.com', N'79999747472', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (470, N'andre luiz andrade maciel', N'andremaciel.adv@gmail.com', N'79999747472', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (471, N'Sebastião  dos Santos Lima', N'sebastiaolimaconsultoria@gmail.com', N'75988748632', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (472, N'andrea messias costa barbosa barbosa', N'andreabarb_1@hotmail.com', N'7187402938', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (473, N'Andrea Barbosa', N'andreabarb_1@hotmail.com', N'7187402938', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (474, N'Edmilson nascimento', N'edmilson.c.n@hotmail.com', N'7191518681', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (475, N'Carlos Henrique  Santos Santana ', N'carloshenriquesteffens@gmail.com', N'79996282801', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (476, N'Pauço Henrique', N'paulo-se1@hotmail.com', N'79999594351', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (477, N'Senclair Galvão', N'sgvpb@hotmail.com', N'71992953316', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (478, N'Lorrayna  Franco Figueiredo ', N'lorraynafranco@gmail.com', N'79981440101', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (479, N'Alexsandra Silva Santos de melo melo', N'roselita.silva01@hotmail.com', N'79999071907', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (480, N'Ana Paula Doria', N'pauladoria2006@yahoo.com.br', N'71988794360', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (481, N'Lorrayna Franco Figueiredo', N'lorraynafranco@gmail.com', N'79981440101', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (482, N'andrea messias costa barbosa barbosa', N'andreabarb_1@hotmail.com', N'7187402938', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (483, N'Daiane  leal ', N'daianefalcao.biz@gmail.com', N'7188515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (484, N'Simone  Calheiros', N'simone.rezende@uol.com.br', N'82999736791', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (485, N'Marlos  Prado', N'marlosprado@hotmail.com', N'75991317288', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (486, N'JAQUELINE MENEZES DOS REIS MENEZES', N'jaquelinerihanna@hotmail.com', N'79999187209', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (487, N'Daiane  Leal', N'daianefalcao.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (488, N'Manoela  Macedo rios', N'manoelarios@gmail.com', N'71986236546', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (489, N'Cristiane  almeida rocha ', N'zion_loja@hotmail.com', N'71988151088', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (490, N'Cristiane almeida rocha', N'zion_loja@hotmail.com', N'71988151088', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (491, N'Daiane Leal', N'jmarcos.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (492, N'daiane  leal', N'daianefalcao.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (493, N'Cristina  Gama Matos Pereira', N'crisgama@bol.com.br', N'79999200402', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (494, N'Cristina  Gama Matos Pereira', N'crisgama@bol.com.br', N'79999200402', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (495, N'Débora Sandes de oliveira Sandes', N'vcivel26@tjal.jus.br', N'82988579598', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (496, N'Cristiane Maria CÂngelo Lopes landulfo de sousa Sousa', N'kristamma@hotmail.com', N'71991163726', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (497, N'Richard Pinto do Nascimento', N'richard.nascimento@gmail.com', N'71983051000', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (498, N'GEORGE NASCIMENTO', N'georgeprefeitoparis@hotmail.com', N'75999999793', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (499, N'Graziela  de Araujo Santos Lima', N'graziela.a.s@hotmail.com', N'71992642574', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (500, N'Allan  Alves', N'allanlimaalves91@gmail.com', N'71997218300', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (501, N'ELISANGELA ABREU NASCIMENTO', N'elly_abreu@hotmail.com', N'75998942979', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (502, N'ELISANGELA ABREU NASCIMENTO', N'elly_abreu@hotmail.com', N'75998942979', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (503, N'Maura  Fernandes', N'mauradfernandes@hotmail.com', N'71991320915', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (504, N'Lívia  Queiroz', N'liviasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (505, N'Lívia  Queiroz ', N'libiasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (506, N'Lívia  Queiroz ', N'liviasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (507, N'Lívia  Silva de Queiroz ', N'liviasilvaq@gmail.com', N'71992447175', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (508, N'Alan NixoN', N'lanzinho_sd@hotmail.com', N'7581805985', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (509, N'livia  silva de queiroz', N'liviasilvaq@gmail.com', N'71992447175', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (510, N'BRUNA ANDRADE ', N'BRUNAANDRADE.VIVO@HOTMAIL.COM', N'79999986306', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (511, N'FRANCISCO LEANDRO COSTA PIRES COSTA PIRES', N'fleandrocpmj@hotmail.com', N'71986044823', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (512, N'Daniel  Marques', N'danieltst2@gmail.com', N'79988596853', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (513, N'Geraldo Silva', N'geraldosilva@hotmail.com', N'78456456456', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (514, N'Miguel teste Teste', N'juniorspse@gmail.com', N'79991237646', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (515, N'Eugenio Teste', N'eugenio_camilo10@hotmail.com', N'78946845646', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (517, N'DAIANE  LEAL ', N'jmarcos.biz@gmail.com', N'71988515141', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (519, N'Iduyna  Nascimento', N'jl_manutencao_@hotmail.com', N'71983294566', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (520, N'Iduyna Nascimento', N'jl_manutencao_@hotmail.com', N'71983294566', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (521, N'Iduyna Nascimento', N'jl_manutencao_@hotmail.com', N'71983294566', NULL, N'America do Sul')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (523, N'Ramiro  Cerdeira Suarez', N'ramirocerdeira@hotmail.com', N'71997045667', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (524, N'José Ronaldo Costa Soares', N'Jrcsoares@Yahoo.com.br', N'79996460808', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (525, N'José Dantas ', N'abreussodre2@hotmail.com', N'79991037900', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (526, N'LEONES DE LIMA GOMES', N'leonestchebos@hotmail.com', N'79999093498', N'Tayna;01-01-1990|Kamila;13-06-1991', N'Ásia')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (527, N'Maxtelva Bispo Souza ', N'maxmbs@bol.com.br', N'71986647605', NULL, N'America do Norte')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (528, N'Jonathas  Ramos Costa', N'Jota.rc1@hotmail.com', N'71996335789', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (529, N'Jonathas Ramos Costa', N'Jota.rc1@hotmail.com', N'71996335789', N'Rodrigo;18-07-1995|Tayna;01-01-1990|Kamila;13-06-1991', N'Oceania')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (530, N'isis carvalho', N'isisgentil@gmail.com', N'71996668491', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (531, N'SERGE REHEM', N'serge.rehem@gmail.com', N'71981069246', N'Marcos;08-04-1996|MArcelo;30-09-1990|Silvia;15-05-1994', N'Antártida')
GO
INSERT [dbo].[Usuario] ([USUCODIGO], [USUNOME], [USULOGIN], [USUSENHA], [USUAMIGOS], [USUCONTINENTE]) VALUES (532, N'Ana Paula Andrade Trajano Barros', N'apsa1901@hotmail.com', N'71999032645', N'Daniela;15-05-1996|Samuel;13-06-1994|Rafael;17-09-2000|Tayna;01-01-1990|Kamila;13-06-1991', N'Europa')
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO