-- insere dados na tabela aluno
insert into aluno(id_aluno, nome_aluno) values  
 (1, 'Adrielle'),
 (2, 'Victor'),
 (3, 'Adriano');
 
-- insere dados na tabela curso
-- todos esses dados precisam estar em ordem conforme foi criado as coluna da tabela q queira add os dados
 insert into curso(id_curso, nome_curso, valor_curso) values  
 (1, 'Java', 1000),    
 (2, 'Excel', 500),
 (3, 'Python', 1500),
 (4, 'SQL', 2000);
 
 -- insere dados na tabela matricula
 insert into matricula(id_matricula, id_aluno, id_curso, data_matricula, valor_matricula) values     
 (1, 1, 1, '2023-10-06 10:12:01', '1000'),
 (2, 3, 2, '2023-10-06 12:17:01', 500.00),
 (3, 2, 3, '2023-10-06 12:20:01', 1500),
 (4, 1, 4, '2023-10-06 13:30:20', 2000);

/* 
insere uma nova matricula, porem utilizando um comando de select para obter o valor do curso(avançado)
(select valor from curso where id_curso = 4)
*/
 insert into matricula(id_matricula, id_aluno, id_curso, data_matricula, valor_matricula) values 
 (5, 3, 4, '2023-10-07 19:30:20', (select valor_curso from curso where id_curso = 4));
 -- serve atualizar um novo dado da tabela

/*
esse insert vai barrar qualquer campo que não esteja de acordo com a tabela pai
*/
 insert into matricula(id_matricula, id_aluno, id_curso, data_matricula, valor_matricula) values 
 (6, 1, 2, '2023-10-07 19:30:20', 5);
 
 
