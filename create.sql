create database escola;

use escola;

create table cliente (
id_cliente int primary key,
nome varchar(100)
);

create table curso (
id_curso int primary key,
nomecurso varchar(100),
valor decimal(10,2)
);


create table matricula (
id_matricula int primary key,
id_cliente int,
id_curso int,
valor decimal(10,2),
data datetime
);
