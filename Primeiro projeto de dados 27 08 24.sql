create database atividade2;

use atividade2;

create table pessoas (
	Codigo integer (50), 
    nome varchar (75),
    cpf integer (11),
    rg integer (9),
    email varchar (50)
);

SELECT * FROM atividade2.pessoas;

RENAME TABLE pessoas TO funcionario;

SELECT * FROM atividade2.funcionario;

ALTER TABLE funcionario
ADD telefone integer(11);

ALTER TABLE funcionario
ADD data_nascimento date;

ALTER TABLE funcionario MODIFY COLUMN codigo integer(50) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN nome varchar (75) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN cpf varchar(11) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN rg integer(9) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN email varchar(50) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN telefone integer(11) NOT NULL;

ALTER TABLE funcionario
drop rg;

ALTER TABLE funcionario
    CHANGE telefone celular int(11) NOT NULL;
    
ALTER TABLE funcionario
    modify celular varchar(11) NOT NULL;
 
 INSERT INTO funcionario(codigo,nome,cpf,email,celular,data_nascimento) values (2,'victor',11122233399,'ovitoooo@gmail.com',11970644758,19980105);
 
 
 
 describe funcionario
 
 
