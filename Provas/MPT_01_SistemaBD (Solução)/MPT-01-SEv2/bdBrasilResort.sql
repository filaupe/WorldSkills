CREATE TABLE Nascimentos 
( 
 Id INT PRIMARY KEY identity(1,1),  
 DataNascimento DATE NOT NULL,  
 DataContrato DATE NOT NULL,  
 FuncionarioId INT UNIQUE NOT NULL,  
); 
go
CREATE TABLE Funcionarios 
( 
 Id INT PRIMARY KEY identity(1,1),  
 GerenteId INT,  
 Nome VARCHAR(max) NOT NULL,  
 Salario REAL NOT NULL,  
); 
go
CREATE TABLE Logins 
( 
 Id INT PRIMARY KEY identity(1,1),  
 FuncionarioId INT UNIQUE NOT NULL,  
 Quantidade INT NOT NULL,  
); 
go
CREATE TABLE FuncionariosDepartamentos 
( 
 Id INT PRIMARY KEY identity(1,1),  
 FuncionarioId INT NOT NULL,  
 DepartamentoId INT NOT NULL,  
); 
go
CREATE TABLE Departamentos 
( 
 Id INT PRIMARY KEY identity(1,1),  
 Nome VARCHAR(max) NOT NULL,  
 GerenteId INT UNIQUE,  
); 
go
ALTER TABLE Nascimentos ADD FOREIGN KEY(FuncionarioId) REFERENCES Funcionarios (Id)
ALTER TABLE Funcionarios ADD FOREIGN KEY(GerenteId) REFERENCES Funcionarios (Id)
ALTER TABLE Logins ADD FOREIGN KEY(FuncionarioId) REFERENCES Funcionarios (Id)
ALTER TABLE FuncionariosDepartamentos ADD FOREIGN KEY(FuncionarioId) REFERENCES Funcionarios (Id)
ALTER TABLE FuncionariosDepartamentos ADD FOREIGN KEY(DepartamentoId) REFERENCES Departamentos (Id)
ALTER TABLE Departamentos ADD FOREIGN KEY(GerenteId) REFERENCES Funcionarios (Id)