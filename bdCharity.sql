drop database charity;
create database charity ;
use charity; 

CREATE TABLE doador (
  iddoador INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(30) NOT NULL,
  cpf VARCHAR(18) NOT NULL,
  email VARCHAR(50) NOT NULL,
  senha VARCHAR(20) NOT NULL,
  telefone INTEGER UNSIGNED NOT NULL,
  foto VARCHAR(50) ,
  tipo_usuario VARCHAR(5) NOT NULL,
  PRIMARY KEY(iddoador)
);

CREATE TABLE Ong (
  idOng INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  responsavel_idResponsavel INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(30) NOT NULL,
  cnpj VARCHAR(18) NOT NULL,
  email VARCHAR(50) NOT NULL,
  senha VARCHAR(20) NOT NULL,
  telefone INTEGER NOT NULL,
  foto VARCHAR(50) NULL,
  tipo_usuario VARCHAR(5) NOT NULL,
  PRIMARY KEY(idOng, responsavel_idResponsavel)
);

CREATE TABLE Publicacao (
  idPublicacao INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Ong_responsavel_idResponsavel INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(30) NULL,
  qtde DOUBLE NULL,
  descricao VARCHAR(100) NULL,
  foto VARCHAR(50) NULL,
  tipo_usuario VARCHAR(5) NULL,
  doador_idDoador INTEGER UNSIGNED NULL,
  ong_idOng INTEGER UNSIGNED NULL,
  PRIMARY KEY(idPublicacao),
  INDEX Publicacao_FKIndex1(Ong_responsavel_idResponsavel)
);

CREATE TABLE responsavel (
  idresponsavel INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(30) NOT NULL,
  cpf VARCHAR(14) NOT NULL,
  telefone INT NOT NULL,
  email VARCHAR(50) NULL,
  PRIMARY KEY(idresponsavel)
);
CREATE TABLE Denuncias (
  idDenuncias INTEGER  NOT NULL AUTO_INCREMENT,
  Usuario_idUsuario INTEGER  NOT NULL,
  doador_iddoador INTEGER  NOT NULL,
  Ong_responsavel_idResponsavel INTEGER  NOT NULL,
  Ong_idOng INTEGER  NOT NULL,
  TipoDenuncia VARCHAR(10) NOT NULL,
  Descricao VARCHAR(200) NOT NULL,
  TipoUsuario VARCHAR(7) NULL,
  PRIMARY KEY(idDenuncias, Usuario_idUsuario),
  INDEX Denuncias_FKIndex1(Ong_idOng, Ong_responsavel_idResponsavel),
  INDEX Denuncias_FKIndex2(doador_iddoador)
);


select  * from responsavel;
select  * from ong;
select  * from doador;
select  * from publicacao;