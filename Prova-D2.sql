create database review
use review

-- Questão 1
create table Planeta(
cod_id int primary key,
Nome varchar(50),
Descrição varchar(50)
)

create table Sistema(
cod_id int primary key,
Descrição varchar(50)
)

create table Raça(
cod_id int primary key,
Nome varchar(50),
Data date,
Descrição varchar(50)
)

create table Planeta_Raça(
id_planeta INT NOT NULL,
id_raça INT NOT NULL

constraint pk_Planeta_Raça primary key (id_planeta, id_raça),

constraint fk_Planeta_Raça2 foreign key (id_planeta) references Planeta(cod_id),
constraint fk_Planeta_Raça3 foreign key (id_raça) references Raça(cod_id)
)

insert into planeta_raça values (1, 2), (2, 1)
select * from Planeta_Raça

-- Questão 2
insert into Planeta
values (1, 'Terra', 'Cheio de água'),
	   (2, 'Marte', 'Extraterrestre')
select * from Planeta

insert into Sistema
values (1, 'Sistema Solar'),
	   (2, 'Sistema Estelar')
select * from Sistema

insert into Raça
values (1, 'Brancos', '', 'Fenótipo de pele clara'),
	   (2, 'Negros', '', 'Fenótipo de pele escura')
select * from Raça

-- Questão 3
update Raça
set Data = '01-01-2001'

-- Questão 4
select r.nome, d.Descrição from Raça r
join Sistema d on r.nome = r.nome
where d.Descrição = 'Sistema Solar'

-- Questão 5
select distinct count(q.nome) q from Raça r
join Planeta q on r.nome = r.nome
--Deveria informar o número 2, mas não consegui fazer
