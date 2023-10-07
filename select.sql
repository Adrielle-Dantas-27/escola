/*
seleciona todas as colunas da tabela aluno e exibe todos os registos da tabela
*/
select * from aluno;  

/*
seleciona apenas a coluna nome da tabela aluno e exibe todos os registos 
*/
select nome_aluno from aluno;  

/*
seleciona todas as colunas da tabela curso e exibe todos os registos da tabela
*/
select * from curso;     

/*
seleciona todas as colunas da tabela matricula e exibe todos os registos da tabela
*/
select * from matricula;

/*
seleciona todas as colunas da tabela matricula, aluno e curso, exibindo todos os registos destas tabelas
unindo através das chave primária(id_aluno) da tabela aluno com a chave estrangeira(id_aluno) da tabela matricula e
unindo através das chave primária(id_curso) da tabela curso com a chave estrangeira(id_curso) da tabela matricula
*/
select* from matricula
inner join aluno
on aluno.id_aluno = matricula.id_aluno 
inner join curso
on curso.id_curso = matricula.id_curso;

/*
exibe colunas especificas de cada tabela envolvida na query
*/
select id_matricula, nome_aluno, nome_curso, valor_matricula, data_matricula  from matricula m
inner join aluno a
on a.id_aluno = m.id_aluno 
inner join curso c
on c.id_curso = m.id_curso;


select id_matricula, nome_aluno, nome_curso, valor_matricula, data_matricula  from matricula m
inner join aluno a
on a.id_aluno = m.id_aluno 
inner join curso c
on c.id_curso = m.id_curso
order by nome_curso;

select id_matricula, nome_aluno, nome_curso, valor_matricula, data_matricula  
-- nome_aluno, count(*) as 'total de cursos', sum(valor_matricula) 'total pago'
from matricula m
inner join aluno a
on a.id_aluno = m.id_aluno 
inner join curso c
on c.id_curso = m.id_curso
-- group by nome_aluno
where m.id_curso = 2 -- nome_curso ='Excel'
order by nome_aluno;

/*
coringa % no inicio indica que ele quer filtrar a ULTIMA ocorrencia. (%A)
coringa % no final indica que ele quer filtrar a PRIMEIRA ocorrencia. (A%)
coringa % no inicio e no fim indica que ele quer filtrar QUALQUER ocorrencia. (%A%)

*/
select *  from aluno
where nome_aluno like '%%';

select * from matricula
where id_aluno = 1 and id_curso = 1;


select id_matricula, nome_aluno, valor_matricula, data_matricula  from matricula m
inner join aluno a;


select * from curso where id_curso in (1, 2);

select * from curso where id_curso between 1 and 5;
