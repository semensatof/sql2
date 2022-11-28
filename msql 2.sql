/**
eliminando base de dados 
só executa se existir
*/
Drop DATABASE if Exists aula_banco;

CREATE DATABASE aula_banco;--- criando a base de dados>

USE aula_banco;

DROP TABLE IF EXISTS Estados;

CREATE TABLE estado(		
id Int NOT nULL auto_increment
,nome varchar(200) NOT nULL UNIQUE -- CONSTRAINT INLINE
,SIGLA CHAR(2) NOT nULL UNIQUE
,Ativo char(1) NOT nULL default 'S'
 ,data_Cadastro DATETIME NOT nULL default current_timestamp
,CONSTRAINT pk_ESTADO PRIMARY KEY(ID)  -- deinimos um nome para a constraint pk
,COnstraint COLUNA_ATIVO_DEVE_SER_S_OU_N CHECK (ATIVO IN ('S','N') ) -- deinimos Um nome pra a constraint check (ATIVO IN ('s','n''
);


 INSERT INTO ESTADO (nome,sigla) VALUES ('parana','PR');
 INSERT INTO ESTADO (nome,sigla) VALUES ('SAO PAULO','SP');

SELECT * FROM estado;

CREATE TABLE cidade (
ID INT NOT NULL auto_increment
,NOME VARCHAR(200) NOT NULL
,ATIVO CHAR(1) NOT NULL DEFAULT 'S'
,DATA_CADASTRO DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
,ESTADO_id INT NOT NULL
,CONSTRAINT pk_cidade Primary key( id)
,CONSTRAINT fk_cidade_estado Foreign key (estado_id) References estado (id)
,CONSTRAINT cidade_ATIVO_DEVE_SER_S_OU_N CHECK (Ativo IN ('S','N'))
,CONSTRAINT cidade_unica UNIQUE (NOME,ESTADO_id)
);

 INSERT INTO cidade (Nome,estado_id) values ('CURITIBA',1);

select * FROM CIDADE;






