use master
go
create database AbuDhabiTurS2E01
go
create table CLIENTE(
	CODIGO int,
	NOME varchar(max) not null,
	CPF varchar(14) not null,
	EMAIL varchar(max) null,
)
create table COMPRA(
	CODIGO int,
	CPFDOCLIENTE varchar(14),
	DATACOMPRA date,
	STATUS varchar(max),
)
create table ITENSCOMPRA(
	CODIGO int,
	TIPOQUARTO int null,
	VALORITEM decimal null,
	CODIGOCOMPRA int null,
	TIPOCOMPRA varchar(12) null,
	_dataInicio date,
	_dataFim date,
);
go
CREATE FUNCTION calcular_diferenca(@data1 DATETIME, @data2 DATETIME)
RETURNS DECIMAL
AS
BEGIN
    DECLARE @diferenca INT = DATEDIFF(DAY, @data1, @data2)

    IF (@diferenca <= 30)
    BEGIN
        RETURN 'coluna1'
    END0
    ELSE IF (@diferenca <= 60)
    BEGIN
        RETURN 'coluna2'
    END
    ELSE
    BEGIN
        RETURN 'coluna3'
    END
END
go
CREATE TRIGGER CalcValor ON ITENSCOMPRA
AFTER INSERT
AS
BEGIN
	UPDATE ITENSCOMPRA
	SET VALORITEM = calcular_diferenca()
END
go
insert into CLIENTE (CODIGO, NOME, CPF, EMAIL) select codigoCliente, nome, cpf, email from Normalizacao
insert into COMPRA (CODIGO, CPFDOCLIENTE, DATACOMPRA, STATUS) select codigoCompra, cpf, data, status from Normalizacao
insert into ITENSCOMPRA (CODIGO, TIPOQUARTO, CODIGOCOMPRA, _dataFim, _dataInicio) select codigoReserva, tipoQuarto, codigoCompra, dataFim, dataInicio from Normalizacao
go


--select * from Normalizacao
--select * from TIPOACOMODACAO
--select * from ValoresDiarias
--select * from CLIENTE
--select * from COMPRA
--select * from ITENSCOMPRA

--drop table Normalizacao
--drop table TIPOACOMODACAO
--drop table ValoresDiarias
--drop table CLIENTE
--drop table COMPRA
--drop table ITENSCOMPRA

