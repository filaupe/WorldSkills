create database DBDelibery
drop database DBDelibery

CREATE TABLE Cidade 
( 
 Id INT PRIMARY KEY,  
 Nome VARCHAR(max) NOT NULL,  
);	


CREATE TABLE Bairro 
( 
 Id INT PRIMARY KEY,  
 Nome VARCHAR(max) NOT NULL, 
 CidadeId Int not null,
);

CREATE TABLE Restaurante 
( 
 Id INT PRIMARY KEY,  
 Nome VARCHAR(max) NOT NULL,  
 Endereco VARCHAR(max) NOT NULL,  
 Bairro VARCHAR(max) NOT NULL,  
 Contato VARCHAR(max) NOT NULL,  
 CidadeId INT NOT NULL,
 BairroId INT NOT NULL,
); 

CREATE TABLE Produto 
( 
 CodigoProduto INT PRIMARY KEY,  
 DescricaoProduto VARCHAR(100) NOT NULL DEFAULT 'Meu Produto',  
 PrecoProduto REAL NOT NULL,  
 CHECK (PrecoProduto >= 0)
); 

CREATE TABLE RestauranteProduto 
( 
 Id INT PRIMARY KEY,  
 RestauranteId INT NOT NULL,  
 ProdutoId INT,  
); 

CREATE TABLE Carrinho 
( 
 Id INT PRIMARY KEY,  
 UsuarioId INT NOT NULL,  
 RestauranteProdutoId INT Null,  
); 

CREATE TABLE Usuario 
( 
 Codigo INT PRIMARY KEY,  
 Nome VARCHAR(max) NOT NULL,  
 Telefone VARCHAR(max) NOT NULL,  
 Email VARCHAR(max) NOT NULL,  
 CarrinhoId INT NULL,
); 

CREATE TABLE Estabelecimento
(
Id INT PRIMARY KEY,
Nome varchar(max) NOT NULL,
CarrinhoId INT Not null,
)

ALTER TABLE Restaurante ADD FOREIGN KEY(CidadeId) REFERENCES Cidade (Id)
ALTER TABLE Restaurante ADD FOREIGN KEY(BairroId) REFERENCES Bairro (Id)
ALTER TABLE Usuario ADD FOREIGN KEY(CarrinhoId) REFERENCES Carrinho (Id)
ALTER TABLE Estabelecimento ADD FOREIGN KEY(CarrinhoId) REFERENCES Carrinho (Id)
ALTER TABLE RestauranteProduto ADD FOREIGN KEY(RestauranteId) REFERENCES Restaurante (Id)
ALTER TABLE RestauranteProduto ADD FOREIGN KEY(ProdutoId) REFERENCES Produto (CodigoProduto)
ALTER TABLE Carrinho ADD FOREIGN KEY(RestauranteProdutoId) REFERENCES RestauranteProduto (Id)
ALTER TABLE Carrinho ADD FOREIGN KEY(UsuarioId) REFERENCES Usuario (Codigo)
