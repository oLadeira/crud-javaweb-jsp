create database crud_jsp;

use crud_jsp;

create table usuario (
	id int auto_increment not null,
    nome varchar(100) not null,
    cpf varchar(100) not null,
    email varchar(100) not null,
    senha varchar(100) not null,
    datacadastro timestamp default current_timestamp,
    primary key (id)
);