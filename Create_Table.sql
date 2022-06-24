CREATE DATABASE teste_ses;
USE teste_ses;

CREATE TABLE funcionario(

codigo bigint unsigned not null auto_increment,
primeiro_nome varchar(45) not null,
segundo_nome varchar(45) not null,
ultimo_nome varchar(45) not null,
data_nasci date,
cpf varchar(14),
rg varchar(14),
endereco varchar(14),
cep varchar(14),
cidade varchar(14),
fone varchar(14),
funcao varchar(14),
salario decimal(10,2),
primary key (codigo)

);

CREATE TABLE departamento(

codigo bigint unsigned not null auto_increment,
nome varchar(45) not null,
localizacao varchar(45) not null,
primary key (codigo)

);

/*Adicionar gerente na tabela Funcionarios*/

ALTER TABLE funcionario
ADD  codigo_departamento bigint unsigned;
ALTER TABLE funcionario
ADD constraint fk_codigo_departamento foreign key (codigo_departamento) references departamento (codigo);

ALTER TABLE departamento
ADD  codigo_gerente bigint unsigned not null;
ALTER TABLE departamento
ADD constraint fk_codigo_gerente foreign key (codigo_gerente) references funcionario (codigo);