use master
go
create database bdAbuDhabiTurS2E03
go
use bdAbuDhabiTurS2E03
go
create table AUDITORIACOMPRA(
	CODIGO int primary key,
	CODIGOCOMPRA int,
	TIPODEOPERACAO varchar(9) not null check(TIPODEOPERACAO in ('Inserir', 'atualizar', 'delete')),
	STATUSANTERIOR varchar(max) null check(STATUSANTERIOR in (null, 'pré-reserva', 'aguardando pagamento', 'pago', 'cancelado')),
	STATUSATUAL varchar(max) null check(STATUSANTERIOR in (null, 'pré-reserva', 'aguardando pagamento', 'pago', 'cancelado')),
	DATAHORA datetime,
	DIA varchar(max),
	MES varchar(max),
	CHAVE varchar(max)
)

--select * from Compras
--select * from AUDITORIACOMPRA

--drop table AUDITORIACOMPRA