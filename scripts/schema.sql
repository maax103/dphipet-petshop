DROP SCHEMA IF EXISTS `servicoescutacidadao_sec`; 

CREATE SCHEMA `servicoescutacidadao_sec`;

USE `servicoescutacidadao_sec`;

CREATE TABLE usuario 
( 
 id INT PRIMARY KEY AUTO_INCREMENT,
 tipoUsuario ENUM('user', 'adm') NOT NULL,
 nome VARCHAR(60) NOT NULL,   
 telefone VARCHAR(13) NOT NULL,  
 bairro VARCHAR(30) NOT NULL, 
 email VARCHAR(80) NOT NULL,
 cpf VARCHAR(11) NOT NULL, 
 senha VARCHAR(50) NOT NULL,    
 UNIQUE (cpf)
); 

CREATE TABLE ocorrencia 
( 
 id INT PRIMARY KEY AUTO_INCREMENT, 
 dataInicial DATETIME NOT NULL,  
 urgencia TINYINT,  
 descricao VARCHAR(255),  
 qntApoio INT default 0,
 dataFinal DATETIME,
 dataAlteracao DATETIME, 
 idusuario INT,  
 idtipoProblema INT,  
 idstatus INT,  
 idendereco INT  
); 

CREATE TABLE status 
( 
 id INT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(50) NOT NULL  
); 

CREATE TABLE tipoProblema 
( 
 id INT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(30) NOT NULL  
); 

CREATE TABLE endereco 
( 
 id INT PRIMARY KEY AUTO_INCREMENT,  
 cep VARCHAR(8),  
 bairro VARCHAR(30),  
 numero INT,  
 logradouro VARCHAR(100),  
 complemento VARCHAR(30)  
); 

CREATE TABLE apoio 
( 
 id INT PRIMARY KEY AUTO_INCREMENT,  
 idusuario INT,  
 idocorrencia INT  
); 

ALTER TABLE servicoescutacidadao_sec.ocorrencia ADD FOREIGN KEY(idusuario) REFERENCES usuario (id);
ALTER TABLE servicoescutacidadao_sec.ocorrencia ADD FOREIGN KEY(idtipoProblema) REFERENCES tipoProblema (id);
ALTER TABLE servicoescutacidadao_sec.ocorrencia ADD FOREIGN KEY(idstatus) REFERENCES status (id);
ALTER TABLE servicoescutacidadao_sec.ocorrencia ADD FOREIGN KEY(idendereco) REFERENCES endereco (id);
ALTER TABLE servicoescutacidadao_sec.apoio ADD FOREIGN KEY(idusuario) REFERENCES usuario (id);
ALTER TABLE servicoescutacidadao_sec.apoio ADD FOREIGN KEY(idocorrencia) REFERENCES ocorrencia (id);
