use master
go
create database AbuDhabiTurS2E01
go
use bdAbuDhabiTurS2E01
go
create table CLIENTE(
	CODIGO int primary key IDENTITY(2,2),
	NOME varchar(max) not null,
	CPF varchar(14) unique,
	EMAIL varchar(max),
)
create table COMPRA(
	CODIGO int primary key,
	CPFDOCLIENTE varchar(14),
	DATACOMPRA date check(DATACOMPRA >= convert(date, '2016-01-06')) not null,
	STATUS varchar(max),
	foreign key (CPFDOCLIENTE) references CLIENTE(CPF)
)
create table ITENSCOMPRA(
	CODIGO int primary key,
	TIPOQUARTO int not null,
	VALORITEM decimal,
	CODIGOCOMPRA int,
	TIPOCOMPRA varchar(12) check(TIPOCOMPRA in ('individual', 'duplo', 'triplo', null)),
	foreign key (TIPOQUARTO) references TIPOACOMODACAO(TIPCODIGO),
	foreign key (CODIGOCOMPRA) references COMPRA(CODIGO)
);
go
set identity_insert CLIENTE on
go
insert into CLIENTE (CODIGO, NOME, CPF, EMAIL) 
	select codigoCliente, nome, cpf, email from Normalizacao 
		where REPLACE(REPLACE(cpf, '.', ''), '-', '') 
		not in (SELECT REPLACE(REPLACE(cpf, '.', ''), '-', '') FROM Normalizacao GROUP BY cpf HAVING COUNT(*) > 1)
		and cpf is not null and nome is not null
go
insert into COMPRA (CODIGO, CPFDOCLIENTE, DATACOMPRA, STATUS) 
	select codigoCompra, cpf, data, status from Normalizacao
		where codigoCompra in (select distinct codigoCompra from Normalizacao where codigoCompra is not null)
		and data in (select data from Normalizacao where data >= convert(date, '2016-01-06') and data is not null)
		and cpf in (select CPF from CLIENTE)
go
insert into ITENSCOMPRA (CODIGO, TIPOQUARTO, VALORITEM, CODIGOCOMPRA, TIPOCOMPRA)
	select 
		codigoReserva, 
		tipoQuarto, 
		((SELECT 
			CASE DATEDIFF(day, dataInicio, dataFim) 
				WHEN 1 THEN VALOR1 
				WHEN 2 THEN VALOR2 
				WHEN 3 THEN VALOR3 
				WHEN 4 THEN VALOR4 
				WHEN 5 THEN VALOR5 
				ELSE null
			END as resultado
		FROM ValoresDiarias where DISCODIGO in (select codigoReserva)) * adultos),
		case when codigoCompra in (select CODIGO from COMPRA) then codigoCompra else null end,
		CASE adultos WHEN 1 THEN 'individual' WHEN 2 THEN 'duplo' WHEN 3 THEN 'triplo' ELSE null END
	from Normalizacao 
		where codigoReserva is not null
		and tipoQuarto is not null
go
delete from ITENSCOMPRA 
	where CODIGO is null or
	TIPOQUARTO is null or
	VALORITEM is null or
	CODIGOCOMPRA is null or
	TIPOCOMPRA is null
go
alter table ITENSCOMPRA alter column CODIGOCOMPRA int not null
alter table ITENSCOMPRA alter column VALORITEM decimal not null
alter table ITENSCOMPRA alter column TIPOCOMPRA varchar(12) not null




--select * from Normalizacao
--select * from TIPOACOMODACAO
--select * from ValoresDiarias
--select * from CLIENTE
--select * from COMPRA
--select * from ITENSCOMPRA

--drop table CLIENTE
--drop table COMPRA
--drop table ITENSCOMPRA

