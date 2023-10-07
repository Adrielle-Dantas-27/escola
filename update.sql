 /*
 atualiza o dado da coluna valor para 2500 na tabela curso
 set -> indica a(s) coluna(s) que deve(rão) ser(em) atualizada(s)
 where -> filtra apenas o identificador unico do curso, para atualizar somente uma linha!!!!
 */
update curso 
set valor = '2500', data = '2023-10-10'
where id_curso = 4;    

