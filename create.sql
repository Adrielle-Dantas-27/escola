-- cria um novo banco de dados do zero
create database escola; 

-- entra no banco de dados ja criado
use escola; 

/*
cria a tabela cliente
define as colunas id_cliente e nome.
id_cliente -> tipo inteiro e chave primária
nome -> tipo varchar de 100 posiçoes
OBS: varchar é do tipo caracter. Durante a gravação ele so grava a quantidade de caracteres informada no comando. 
	o char vai ocupar todos os espaços enviados no comando.
*/
create table cliente (             
id_cliente int primary key,       
nome varchar(100)
);

/*
cria a tabela curso
define as colunas id_curso, nomecurso e valor.
id_curso -> tipo inteiro e chave primária
nomecurso -> tipo varchar de 100 posiçoes
valor ->  tipo numero decimal, o 10 é o default caso nao seja especificado
*/
create table curso (
id_curso int primary key,          
nomecurso varchar(100),           
valor decimal(10,2)                 
);

/*
cria a tabela matricula
define as colunas id_matricula, id_cliente, id_curso, valor e data.
id_matricula -> tipo inteiro e chave primária
nomecurso -> tipo varchar de 100 posiçoes
valor ->  tipo numero decimal, o 10 é o default caso nao seja especificado
data -> tipo datetime (data e a hora)
*/
create table matricula (
id_matricula int primary key,     
id_cliente int,
id_curso int,
valor decimal(10,2),
data datetime                      
);
