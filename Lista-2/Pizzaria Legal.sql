create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
massa varchar (255) not null,
borda varchar (255) not null,
primary key (id)
);

insert into tb_categoria(massa, borda) value ("fina", "recheada");
insert into tb_categoria(massa, borda) value ("fina", "sem recheio");
insert into tb_categoria(massa, borda) value ("grossa", "recheada");
insert into tb_categoria(massa, borda) value ("grossa", "sem recheio");
insert into tb_categoria(massa, borda) value ("intermediaria", "recheada");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar (255) not null,
azeitona varchar (255) not null,
plusQueijo varchar (255) not null,
categoria_id bigint,
valor decimal (5,2) not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza(sabor, azeitona, plusQueijo, categoria_id, valor) value ("Mussarela", "sim", "não", 1, 29.00);
insert into tb_pizza(sabor, azeitona, plusQueijo, categoria_id, valor) value ("Mussarela de bufala com tomate seco e rúcula", "não", "sim", 1, 49.00);
insert into tb_pizza(sabor, azeitona, plusQueijo, categoria_id, valor) value ("Calabresa acebolada", "sim", "sim", 5, 34.00);
insert into tb_pizza(sabor, azeitona, plusQueijo, categoria_id, valor) value ("Atum", "sim", "não", 2, 32.00);
insert into tb_pizza(sabor, azeitona, plusQueijo, categoria_id, valor) value ("Baiana", "não", "não", 3, 39.00);
insert into tb_pizza(sabor, azeitona, plusQueijo, categoria_id, valor) value ("Cogumelo funghi secchi", "não", "sim", 4, 55.00);
insert into tb_pizza(sabor, azeitona, plusQueijo, categoria_id, valor) value ("Brocolis", "sim", "não", 2, 25.00);
insert into tb_pizza(sabor, azeitona, plusQueijo, categoria_id, valor) value ("beringela", "sim", "sim", 1, 29.00);

select * from tb_pizza;

select * from tb_pizza where valor >= 45;
select * from tb_pizza where valor between 29 and 60;
select * from tb_pizza where sabor like 'C%';

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select * from tb_pizza where plusQueijo like 'S%';

