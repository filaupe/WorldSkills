use master
go
create database MeetTheStartup
go
use MeetTheStartup
go
create table Empresa(
	Id int primary key identity(1,1),
	Nome varchar(max) not null,
	NomeFantasia varchar(max) not null,
	Senha varchar(max) not null,
	VisitaId int null,
	GaleriaId int not null,
)
go
create table Usuario(
	Id int primary key identity(1,1),
	Nome varchar(max) not null,
	NomeLogin varchar(max) not null,
	Senha varchar(max) not null,
	GaleriaId int not null,
)
go
create table GaleriaImagens(
	Id int primary key identity (1,1),
	UsuarioId int null,
	EmpresaId int null,
	Imagem varbinary(max) not null
)
go
create table Visita (
	Id int primary key identity(1,1),
	DiaHora datetime not null,
	Vagas int not null,
	ListaEspera tinyint default 0 not null,
	EmpresaId int not null,
	ListaEsperaId int null,
)
go
create table ListaEspera(
	Id int primary key identity(1,1),
	VisitaId int not null,
	UsuarioId int not null,
)
go
create table ListaParticipantes(
	Id int primary key identity(1,1),
	VisitaId int not null,
	UsuarioId int null
)
go
alter table Empresa add foreign key(GaleriaId) references GaleriaImagens (Id)
alter table Empresa add foreign key(VisitaId) references Visita (Id)

alter table Usuario add foreign key(GaleriaId) references GaleriaImagens (Id)

alter table GaleriaImagens add foreign key(UsuarioId) references Usuario (Id)
alter table GaleriaImagens add foreign key(EmpresaId) references Empresa (Id)

alter table Visita add foreign key(EmpresaId) references Empresa (Id)
alter table Visita add foreign key(ListaEsperaId) references ListaEspera (Id)

alter table ListaEspera add foreign key(VisitaId) references Visita (Id)
alter table ListaEspera add foreign key(UsuarioId) references Usuario (Id)

alter table ListaParticipantes add foreign key(VisitaId) references Visita (Id)
alter table ListaParticipantes add foreign key(UsuarioId) references Usuario (Id)