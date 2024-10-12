CREATE DATABASE IF NOT EXISTS bd_bruno01;
USE db_bruno01;
CREATE TABLE perfis_acesso(
	perfil_id INT auto_increment primary key,
	nome varchar(50) not null
);
CREATE TABLE usuarios(
	usuario_id int auto_increment primary key,
    nome varchar(80) not null,
    email varchar(100) not null,
    senha varchar(255) not null, 
    img_url varchar(255),
    created_at datetime timestamp current,
    ativo boolean default true,
    perfil_id int,
    foreign key (perfil_id) references perfis_acesso(perfil_id)
);
CREATE TABLE carro(
	modelo varchar(50) not null,
    marca varchar(50) not null,
    ano int not null,
    categoria varchar(50) not null,
    foreign key (fornecedor_id) references fornecedor(fornecedor_id)
 );
CREATE TABLE fornecedor(
	fornecedor_id int auto_increment primary key,
	nome varchar(100) not null,
    telefone int,
    email varchar(100) not null,
    foreign key (representante_id) references representante(representante_id)
);  
CREATE TABLE representante(
	representante_id int auto_increment primary key,
    nome varchar(100) not null,
    telefone int,
    email varchar(100) not null
 );   
CREATE TABLE funcionario(
	nome varchar(50) not null,
    cpf int,
    telefone int,
    cargo varchar(50) not null,
    foreign key (cep_funcionarioid) references cep_funcionario(cep_funcionarioid)
 );
 CREATE TABLE cep_funcionario(
	cep_funcionarioid int auto_increment primary key, 
	logradouro varchar(50) not null,
    numero int,
    complemento varchar(50) not null,
    bairro varchar(50) not null,
    cidade varchar(50) not null   
);   
CREATE TABLE cliente(
	nome varchar(50) not null,
    cpf int,
    cnpj int,
    telefone int,
    email varchar(50),
    foreign key (endereco_cliente_id) references endereco_cliente(endereco_cliente_id)
);
CREATE TABLE endereco_cliente(
	endereco_cliente_id int auto_increment primary key,
    cidade varchar(50) not null,
    estado varchar(50) not null,
    foreign key (cep_clienteid) references cep_cliente(cep_clienteid)
);
CREATE TABLE cep_cliente(
	logradouro varchar(50) not null,
    numero int,
    complemento varchar(10) not null,
    bairro varchar(50) not null
);   
CREATE TABLE seguradora(
	nome varchar(50) not null,
	cnpj int,
    telefone int,
    email varchar(50)
);   
    