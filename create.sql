-- cria um novo banco de dados do zero
create database escola; 

-- entra no banco de dados ja criado
use escola; 

/*
cria a tabela aluno
define as colunas id_aluno e nome_aluno.
id_aluno -> tipo inteiro e chave primária
nome_aluno -> tipo varchar de 100 posiçoes
OBS: varchar é do tipo caracter. Durante a gravação ele so grava a quantidade de caracteres informada no comando. 
	o char vai ocupar todos os espaços enviados no comando.
*/
create table aluno (             
id_aluno int primary key,       
nome_aluno varchar(100)
);

/*
cria a tabela curso
define as colunas id_curso, nome_curso e valor_curso.
id_curso -> tipo inteiro e chave primária
nome_curso -> tipo varchar de 100 posiçoes
valor_curso ->  tipo numero decimal, o 10 é o default caso nao seja especificado
*/
create table curso (
id_curso int primary key,          
nome_curso varchar(100),           
valor_curso decimal(10,2)                 
);

/*
cria a tabela matricula
define as colunas id_matricula, id_aluno, id_curso, valor_curso e data.
id_matricula -> tipo inteiro e chave primária
id_aluno -> tipo inteiro e chave estrangeira
id_curso -> tipo inteiro e chave estrangeira
valor_matricula ->  tipo numero decimal, o 10 é o default caso nao seja especificado
data_matricula -> tipo datetime (data e a hora)
*/
create table matricula (
id_matricula int primary key,     
id_aluno int,
id_curso int,
valor_matricula decimal(10,2),
data_matricula datetime                      
);

/*
altera a tabela matricula adicionando uma chave estrangeira fk, referenciando a tabela aluno, campo id_aluno
OBS: tem o objetivo de criar uma restrição onde apenas é permitido incluir ou atualizar matricula através de um aluno existente
Error Code: 1452. Cannot add or update a child row: 
a foreign key constraint fails (`escola`.`matricula`, CONSTRAINT `fk_matricula_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`))

integridade referencial -> impede que uma tabela filha seja modificada caso nao exista o registro na tabela pai.
*/
alter table matricula 
add constraint fk_matricula_aluno
foreign key (id_aluno) references aluno(id_aluno);

/*
altera a tabela matricula adicionando uma chave estrangeira fk, referenciando a tabela curso, campo id_curso
*/
alter table matricula 
add constraint fk_matricula_curso
foreign key (id_curso) references curso(id_curso);
