/* 1) Criar uma tabela de dados no MySQL para clientes de uma empresa de telecomunicações
		Esses clientes devem ser gerenciados pelos campos de CPF, Nome, Data de Nascimento, Endereço, CEP, Bairro, Cidade.
*/
create database telecomunicacao;
use telecomunicacao;

create table clientes (
id_cliente int auto_increment primary key,
cpf int,
nome varchar(50),
email varchar(100),
data_nasc date,
endereco varchar(100),
cep int,
bairro varchar(100),
cidade varchar(50)
);

-- 2) Após criar a tabela acima especificada, adicione um campo para armazenar a data da última compra
alter table clientes                            -- esse comando serve para alterar algo na tabela, como adicionar uma nova coluna.
add data_ultima_compra date after cidade;

alter table clientes                            
add uf varchar(2) after cidade;


alter table clientes                            
add sexo varchar(1) after nome;

alter table clientes
add cpf varchar(50) after id_cliente;

alter table clientes
add cep varchar(50) after endereco;

alter table clientes
drop column cep;

-- 3) inserir na tabela clientes, novos clientes com seus respectivos dados
insert into clientes (cpf, nome, sexo, email, data_nasc, endereco, cep, bairro, cidade, uf)
values 
( '529.982.247-25','Matthew G. Gubler', 'M', 'matthew_g_gubler@gmail.com', '1980-03-09', 'Rua Oscar Lima', '07113-100', 'Macedo', 'Guarulhos', 'SP'),
( '852.332.677-45','David Rossi', 'M', 'david_rossi@gmail.com', '1969-10-03','Rua Professor Amicis Brandi Bertolotti', '08390-560', 'Vila Gilda', 'Santo André', 'SP'),
( '100.974.230-55','Derek Morgan', 'M', 'derek_morgan@gmail.com', '1983-12-08', 'Rua das Caneleiras', '02637-090', 'Taboão da Serra', 'Santos', 'SP'),
( '522.874.147-15','Patrick Swayze', 'M', 'patrick_swayze@gmail.com', '1975-06-05', 'Rua Flamingo', '02789-745', 'Campo Verde', 'Jundiaí', 'SP'),
( '901.956.222-32','Robin Gibb', 'M', 'robin_gibb@gmail.com', '1949-12-12', 'Rua Dona Rosa', '24399-999', 'Santa Rosa', 'Niterói', 'RJ'),
( '882.562.557-25','Barry Gibb', 'M', 'barry_gibb@gmail.com', '1940-12-29', 'Rua Alameda Alto Astral',  '85789-999', 'Boa Vista', 'Ponta Grossa', 'PR'),
( '987.466.233-97','Gene Simmons', 'M', 'gene_simmons@gmail.com', '1939-01-07', 'Rua Antônio Dias Adorno',  '05469-005', 'Vila Nogueira', 'Alto de Pinheiros','SP'),
( '478.964.789-69','Paul Stanley', 'M', 'paul_stanley@gmail.com', '1945-01-19', 'Rua Domingos Da Fonseca', '24399-998', 'Fonseca', 'Niterói', 'RJ'),
( '584.896.465-78','Emily Prentiss', 'F', 'emily_prentiss@gmail.com', '1988-04-28', 'Rua Água-marinha', '85933-000', 'Parque Ouro Verde', 'Londrina', 'PR'),
( '315.123.365-45','Eric Singer', 'M', 'eric_singer@gmail.com',  '1970-06-08', 'Rua Brasil', '01442-902', 'Jardim América', 'São José dos Campos','SP'),
( '468.321.896-89','Bill Pulman', 'M', 'bill_pulman@gmail.com', '1960-11-09', 'Rua General Silvestre Rocha', '24399-299', 'Icaraí', 'Niterói', 'RJ'),
( '198.948.456-36','Sandra Bullock', 'F', 'sandra_bullock@gmail.com', '1989-10-24', 'Rua Vitória do Zaíra', '04405-280', 'Jardim Zaíra', 'Mauá', 'SP'),
( '763.852.789-47','John Travolta', 'M', 'john_travolta@gmail.com', '1940-11-01', ' Praça Padre Joaquim de Castro', '04425-8714', 'Caputera', 'Mogi das Cruzes','SP'),
( '469.459.789-88','James McAvoy', 'M', 'james_mcavoy@gmail.com', '1990-06-26', ' Rua Pimenta Bueno', '04578-874', 'Vila Bocaína', 'Mauá', 'SP'),
( '198.789.469-23','Olivia Newton John', 'F', 'olivia_newton_john@gmail.com',  '1969-11-01', 'Rua Iracema',  '05578-789', 'Vila Ema', 'São José dos Campos', 'SP'),
( '735.687.654-46','Cindy Lauper', 'F', 'cindy_lauper@gmail.com', '1952-03-14', 'Rua, Localidade', '04477-160', 'Eldorado', 'Rio Preto', 'SP'),
( '498.346.974-72','Taylor Swift', 'F', 'taylor_swift@gmail.com', '1990-02-07', 'Rua Carlos Alberto', '4895-254', 'Parque Fluminense', 'Duque de Caxias', 'RJ'),
( '364.497.654-67','Rita Lee', 'F', 'rita_lee@gmail.com', '1945-08-05', 'Rua Lago Azul',  '69099-997', 'Lago azul', 'Manaus', 'AM'),
( '784.164.167-15','Leoni', 'M', 'leoni@gmail.com', '1950-06-04', 'Rua Cinco A', '7418-547', 'Vila Barão', 'Sorocaba', 'SP'),
( '322.982.897-45','Elvis Presley', 'M', 'elvis_presley@gmail.com', '1930-01-05', 'Rua David Fabricius', '04864-900', 'Guanabara', 'Campinas', 'SP'),
( '987.987.365-98','Leo Jaime', 'M', 'leo_jaime@gmail.com', '1988-10-01', 'Rua Cidade de Deus', ' 69099-999', 'Cidade de Deus', 'Manaus', 'AM'),
( '547.164.985-13','Caetano Velozo', 'M', 'caetano_velozo@gmail.com', '2000-04-06', 'Rua G', '24399-989', 'Itaipu', 'Niterói', 'RJ'),
( '465.794.236-45','Renato Russo', 'M', 'renato_russo@gmail.com', '2001-12-26', 'Rua Santos Drumont', '4567-894', 'Cambuí', 'Campinas', 'SP'),
( '351.469.569-69','Mariah Carey', 'F', 'mariah_carey@gmail.com', '2000-10-30', ' Avenida San Martín', '28889-654', 'Valparaíso', 'Petrópolis', 'RJ'),
( '123.654.498-98','Billie Holiday', 'F', 'billie_holiday@gmail.com', '1960-05-09', 'Barão de Mauá', '28889-999', 'Casimiro de Abreu', 'Cabo Frio', 'RJ');

select* from clientes;

select count(*) from clientes;

-- 4) Selecionar todoso os clientes que residem na cidade de São Paulo
select * from clientes
where uf = 'RJ'; 

-- 5) Deletar um cliente que resida na cidade de Niterói
delete from clientes
where cpf = '468.321.896-89';


insert into clientes (id_cliente, data_ultima_compra) 
values ('2023-12-20');

insert into clientes (id_cliente)
	select '2023-10-23' 
    where exists (select 1 from clientes where id_cliente= 1);

-- atualiza os registro
update clientes 
set data_ultima_compra = '2020-04-25'
where id_cliente between 1 and 5;

DELIMITER //
begin 
DECLARE contador INT DEFAULT 1;
DECLARE data_ultima_compra DATETIME DEFAULT SYSDATE();
DECLARE registros INT;

    select count(*) into registros from clientes;
    while contador <= registros do
		update clientes 
		set data_ultima_compra = data_ultima_compra
		where id_cliente = contador;
        SET data_ultima_compra = DATE_ADD(data_ultima_compra, INTERVAL -1 DAY);
        SET contador = contador + 1;
    end while;
    commit;
end;
DELIMITER ;

-- exclui a procedure
drop procedure sp_atualiza_data_ultima_compra_cliente;
-- inicia um bloco de comandos
DELIMITER //
-- procedimento armazenado -> serve para executar um ou mais comandos dentro do bloco begin - end.
create procedure sp_atualiza_data_ultima_compra_cliente ()
begin
    -- declarando variáveis
	DECLARE contador INT DEFAULT 1;
    DECLARE data_atualizada DATETIME DEFAULT SYSDATE();
    DECLARE registros INT;
    -- iniciando variavel com total de registros da tabela
    select count(*) into registros from clientes;
    -- loop até atingir a quantidade de registros (clientes)
    while contador <= registros do
		-- executa atualização do campo data_ultima_compra filtrando pelo id_cliente através variavel contador
		update clientes 
		set data_ultima_compra = data_atualizada
		where id_cliente = contador;
        -- incremento da data 
        SET data_atualizada = DATE_ADD(data_atualizada, INTERVAL -1 DAY);
        -- incremento do contador
        SET contador = contador + 1;
    end while;
end // DELIMITER ;
-- finaliza um bloco de comandos

-- executa a stored procedure
CALL `telecomunicacao`.`sp_atualiza_data_ultima_compra_cliente`();

select * from clientes;
update clientes set data_ultima_compra = null; 

