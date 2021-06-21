create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
class varchar(255) not null,
raca varchar(255) not null,
primary key(id)
);

insert into tb_classe(class, raca) value ("arqueiro","humano"); 
insert into tb_classe(class, raca) value ("arqueiro","elfo"); 
insert into tb_classe(class, raca) value ("cavaleiro","humano"); 
insert into tb_classe(class, raca) value ("cavaleiro","elfo"); 
insert into tb_classe(class, raca) value ("Mago","elfo"); 

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
nivel int not null,
vida int not null,
ataque int not null,
defesa int not null,
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem(nome, vida, ataque, defesa, nivel, classe_id) value ("Cal81", 2000, 2203, 3432, 78, 3);
insert into tb_personagem(nome, vida, ataque, defesa, nivel, classe_id) value ("Shiro", 5000, 3563, 2623, 91, 4);
insert into tb_personagem(nome, vida, ataque, defesa, nivel, classe_id) value ("Mikizin", 1200, 1165, 1120, 90, 1);
insert into tb_personagem(nome, vida, ataque, defesa, nivel, classe_id) value ("Detonator", 2000, 1254, 1150, 68, 2);
insert into tb_personagem(nome, vida, ataque, defesa, nivel, classe_id) value ("Cevek", 2100, 2846, 2764, 48, 3);
insert into tb_personagem(nome, vida, ataque, defesa, nivel, classe_id) value ("Lucius", 1500, 7954, 1200, 120, 5);
insert into tb_personagem(nome, vida, ataque, defesa, nivel, classe_id) value ("Calandreal", 1200, 1248, 1512, 48, 1);
insert into tb_personagem(nome, vida, ataque, defesa, nivel, classe_id) value ("KIKI", 5000, 2732, 2000, 55, 4);

select * from tb_personagem where ataque >= 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like 'C%';

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem where classe_id = 1;


