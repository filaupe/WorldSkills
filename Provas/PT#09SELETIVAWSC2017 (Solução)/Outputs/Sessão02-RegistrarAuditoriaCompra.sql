use master
go
create database bdAbuDhabiTurS2E03
go
use bdAbuDhabiTurS2E03
go
create table AUDITORIACOMPRA(
	CODIGO int primary key identity(1,1),
	CODIGOCOMPRA int not null,
	TIPODEOPERACAO varchar(9) not null check(TIPODEOPERACAO in ('Inserir', 'atualizar', 'delete')),
	STATUSANTERIOR varchar(max) check(STATUSANTERIOR in (null, 'pré-reserva', 'aguardando pagamento', 'pago', 'Cancelada')),
	STATUSATUAL varchar(max) check(STATUSATUAL in (null, 'pré-reserva', 'aguardando pagamento', 'pago', 'cancelado')),
	DATAHORA varchar(max),
	DIA varchar(max),
	MES varchar(max),
	CHAVE varchar(max),
)
go
CREATE TRIGGER insert_AUDITORIACOMPRA
ON Compras
FOR INSERT
AS
BEGIN
	INSERT INTO AUDITORIACOMPRA (
		CODIGOCOMPRA, TIPODEOPERACAO, STATUSANTERIOR, STATUSATUAL, DATAHORA, DIA, MES, CHAVE)
		SELECT	
			i.COMCODIGO, 
			'Inserir', 
			NULL, 
			case i.COMSTATUS when 'Simulação' then null when 'Simulação Vendida' then null else i.COMSTATUS end, 
			CONVERT(varchar, GETDATE(), 103) + ' ' + CONVERT(varchar, GETDATE(), 108), 
			DATENAME(weekday, GETDATE()), 
			DATENAME(month, GETDATE()), 
			CONCAT ( i.COMCODIGO, 'i', DATEPART(minute,GETDATE()))
		FROM inserted i GROUP BY i.COMCODIGO, i.COMSTATUS;
END;
go
CREATE TRIGGER update_AUDITORIACOMPRA
ON Compras
AFTER UPDATE
AS
BEGIN
    DECLARE @valor_antigo varchar(max), @valor_novo varchar(max)
    
    SELECT @valor_antigo = i.COMSTATUS FROM deleted i
    SELECT @valor_novo = i.COMSTATUS FROM inserted i
    
	UPDATE AUDITORIACOMPRA 
		SET 
			TIPODEOPERACAO = 'atualizar',
			STATUSANTERIOR = case @valor_antigo when 'Simulação' then null when 'Simulação Vendida' then null else @valor_antigo end,
			STATUSATUAL = case @valor_novo when 'Simulação' then null when 'Simulação Vendida' then null else @valor_novo end,
			DATAHORA = CONVERT(varchar, GETDATE(), 103) + ' ' + CONVERT(varchar, GETDATE(), 108),
			DIA = DATENAME(DAY, GETDATE()),
			MES = DATENAME(MONTH, GETDATE()),
			CHAVE = CONCAT((select i.COMCODIGO from inserted i), 'a', DATEPART(minute, getdate()))
		where CODIGOCOMPRA = (select i.COMCODIGO from inserted i)
END
go
CREATE TRIGGER delete_AUDITORIACOMPRA
ON Compras
AFTER DELETE
AS
BEGIN
    DECLARE @valor_antigo varchar(max), @valor_novo varchar(max),@valor_codigo int
    
    SELECT @valor_antigo = i.COMSTATUS FROM deleted i
	SELECT @valor_codigo = i.COMCODIGO FROM deleted i
    SELECT @valor_novo = i.COMSTATUS FROM inserted i
    
	UPDATE AUDITORIACOMPRA 
		SET 
			TIPODEOPERACAO = 'delete',
			STATUSANTERIOR = case @valor_antigo when 'Simulação' then null when 'Simulação Vendida' then null else @valor_antigo end,
			STATUSATUAL = case @valor_novo when 'Simulação' then null when 'Simulação Vendida' then null else @valor_novo end,
			DATAHORA = CONVERT(varchar, GETDATE(), 103) + ' ' + CONVERT(varchar, GETDATE(), 108),
			DIA = DATENAME(DAY, GETDATE()),
			MES = DATENAME(MONTH, GETDATE()),
			CHAVE = CONCAT(@valor_codigo, 'd', DATEPART(minute, getdate()))
		where CODIGOCOMPRA = @valor_codigo
END

--select * from Compras
--select * from AUDITORIACOMPRA

--drop trigger insert_AUDITORIACOMPRA
--drop trigger update_AUDITORIACOMPRA
--drop trigger delete_AUDITORIACOMPRA
--drop table AUDITORIACOMPRA
--delete from Compras
--delete from AUDITORIACOMPRA
go

--teste

CREATE TRIGGER audit_AUDITORIACOMPRA
ON Compras
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
DECLARE @tipo_operacao varchar(50), @status_anterior varchar(max), @status_atual varchar(max), @codigo_compra int, @chave varchar(50)

SELECT @tipo_operacao = 
    CASE 
        WHEN EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) THEN 'update'
        WHEN EXISTS (SELECT * FROM inserted) THEN 'insert'
        WHEN EXISTS (SELECT * FROM deleted) THEN 'delete'
    END

IF (@tipo_operacao = 'insert')
BEGIN
    SELECT @codigo_compra = COMCODIGO, @status_atual = COMSTATUS FROM inserted
    SET @chave = CONCAT(@codigo_compra, 'i', DATEPART(minute, GETDATE()))
END
ELSE IF (@tipo_operacao = 'update')
BEGIN
    SELECT @codigo_compra = COMCODIGO FROM inserted
    SELECT @status_anterior = COMSTATUS FROM deleted
    SELECT @status_atual = COMSTATUS FROM inserted
    SET @chave = CONCAT(@codigo_compra, 'a', DATEPART(minute, GETDATE()))
END
ELSE IF (@tipo_operacao = 'delete')
BEGIN
    SELECT @codigo_compra = COMCODIGO, @status_anterior = COMSTATUS FROM deleted
    SET @chave = CONCAT(@codigo_compra, 'd', DATEPART(minute, GETDATE()))
END

IF (@status_atual = 'Simulação' OR @status_atual = 'Simulação Vendida')
    SET @status_atual = NULL
IF (@status_anterior = 'Simulação' OR @status_anterior = 'Simulação Vendida')
    SET @status_anterior = NULL

INSERT INTO AUDITORIACOMPRA (CODIGOCOMPRA, TIPODEOPERACAO, STATUSANTERIOR, STATUSATUAL, DATAHORA, DIA, MES, CHAVE)
VALUES (@codigo_compra, @tipo_operacao, @status_anterior, @status_atual, CONVERT(varchar, GETDATE(), 103) + ' ' + CONVERT(varchar, GETDATE(), 108), DATENAME(weekday, GETDATE()), DATENAME(month, GETDATE()), @chave)
END