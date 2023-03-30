Use bdAbuDhabiTurS05
go
Alter table Produto alter column Estoque numeric(18,2) null
go
CREATE TRIGGER audit_AUDITORIACOMPRA
ON Consumo
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
DECLARE @tipo_operacao varchar(50), @status_anterior varchar(max), @status_atual varchar(max)

SELECT @tipo_operacao = 
    CASE 
        WHEN EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) THEN 'update'
        WHEN EXISTS (SELECT * FROM inserted) THEN 'insert'
        WHEN EXISTS (SELECT * FROM deleted) THEN 'delete'
    END

IF (@tipo_operacao = 'insert')
 Select * from Consumo
ELSE IF (@tipo_operacao = 'update')
 Select * from Consumo
ELSE IF (@tipo_operacao = 'delete')
 Select * from Consumo
END