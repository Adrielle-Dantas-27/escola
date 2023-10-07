create database escola; --  cria um novo banco de dados do zero

use escola; -- entra no banco de dados ja criado

-- cria uma nova tabela   
create table cliente (             
id_cliente int primary key,        -- aqui são as especificações das colunas
nome varchar(100)
);

create table curso (
id_curso int primary key,          -- primary key = chave primária
nomecurso varchar(100),            -- varchar é para caracter/ string  ||  o char vai ocupar todos os espaços e o varchar so o tamanho q inserir
valor decimal(10,2)                -- numero decimal, o 10 é o default caso nao seja especificado
);


create table matricula (
id_matricula int primary key,     
id_cliente int,
id_curso int,
valor decimal(10,2),
data datetime                      -- aqui é a data e a hora
);
