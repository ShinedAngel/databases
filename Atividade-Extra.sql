create database at_extra
use at_extra

create table Estádio(
id int primary key,
Nome varchar(50),
UF char (2),
Capacidade int
)

create table Time(
id int primary key,
Nome varchar(50),
fk_estádio int
)

create table Vencedor(
id int primary key,
Data date,
fk_time int,
fk_campeonato int
)

create table Time_Campeonato(
id_time int,
id_campeonato int,
Data date,
primary key (id_time, id_campeonato, Data)
)

create table Campeonato(
id int primary key,
Nome varchar(50)
)

create table Jogador(
id int primary key,
Nome varchar(50),
CPF varchar(11),
fk_time int
)

alter table Time
add constraint fk_estádio foreign key (id)
references Estádio (id)

alter table Jogador
add constraint fk_time foreign key (id)
references Time (id)

alter table Vencedor
add constraint fk_campeonato foreign key (id)
references Campeonato (id)

alter table Vencedor
add foreign key (fk_time)
references Time (id)

alter table Time_Campeonato
add foreign key (id_time)
references Time (id)

alter table Time_Campeonato
add foreign key (id_campeonato)
references Campeonato (id)

insert into Estádio
values (1, 'Mineirão', 'MG', '50000'),
	   (2, 'Horto', 'MG', '10000'),
	   (3, 'Pacaembú', 'SP', '14000'),
	   (4, 'Maracanã', 'RJ', '70000'),
	   (5, 'Morumbi', 'SP', '69000')

insert into Time
values (1, 'Atlético', 2),
	   (2, 'Cruzeiro', 4),
	   (3, 'Palmeiras', 1),
	   (4, 'Corinthians', 3),
	   (5, 'Vasco', 5)

insert into Jogador
values (1, 'Cristiano Ronaldo', '13456789012', 4),
	   (2, 'Neymar Junior', '13456745609', 1),
	   (3, 'Leonel Messi', '13456789344', 2),
	   (4, 'Ronaldinho Nazário', '13456789333', 3),
	   (5, 'Pelé', '13456789012', 5)

insert into Vencedor
values (1, '', 1, 4),
	   (2, '', 3, 2),
	   (3, '', 5, 5),
	   (4, '', 2, 3),
	   (5, '', 4, 1)
update Vencedor
set Data = '22/10/2014'
	   
insert into Campeonato
values (1, 'Mundial'),
	   (2, 'Libertadores'),
	   (3, 'Premier League'),
	   (4, 'Brasileirão'),
	   (5, 'Super Lig')

select * from Estádio
select * from Time
select * from jogador
select * from Vencedor
select * from Campeonato   
