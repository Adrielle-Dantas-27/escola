 /*
 atualiza o dado da coluna valor para 2500 na tabela curso
 set -> indica a(s) coluna(s) que deve(rão) ser(em) atualizada(s)
 where -> filtra apenas o identificador unico do curso, para atualizar somente uma linha!!!!
 */
update curso 
set valor_curso = '2500', nome_curso = 'MySQL'
where id_curso = 4;    

