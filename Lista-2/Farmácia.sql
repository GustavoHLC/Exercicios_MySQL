create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
receita varchar (255) not null,
desconto varchar (255) not null,
conveniencia varchar (255) not null,
primary key (id)
);

insert into tb_categoria(receita, desconto, conveniencia) value ("sim", "não", "não");
insert into tb_categoria(receita, desconto, conveniencia) value ("não", "sim", "sim");
insert into tb_categoria(receita, desconto, conveniencia) value ("sim", "sim", "não");
insert into tb_categoria(receita, desconto, conveniencia) value ("não", "não", "sim");
insert into tb_categoria(receita, desconto, conveniencia) value ("sim", "não", "sim");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
controlado varchar (255) not null,
cosmetico varchar (255) not null,
generico varchar (255) not null,
valor decimal(5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome, controlado, cosmetico, generico, valor, categoria_id) value ("Cefalium","sim", "sim", "não", 34.00, 1);
insert into tb_produto(nome, controlado, cosmetico, generico, valor, categoria_id) value ("Kit hidratação total para cabelos","não", "sim", "não", 82.00, 2);
insert into tb_produto(nome, controlado, cosmetico, generico, valor, categoria_id) value ("Oleo para queda de cabelo","sim", "sim", "sim", 14.00, 3);
insert into tb_produto(nome, controlado, cosmetico, generico, valor, categoria_id) value ("balinha de menta","não", "não", "não", 1.00, 4);
insert into tb_produto(nome, controlado, cosmetico, generico, valor, categoria_id) value ("Nimesulida","sim", "sim", "sim", 34.00, 1);
insert into tb_produto(nome, controlado, cosmetico, generico, valor, categoria_id) value ("Leite Nan","não", "não", "não", 24.00, 4);
insert into tb_produto(nome, controlado, cosmetico, generico, valor, categoria_id) value ("Bolsa termica de gel","não", "sim", "não", 26.00, 2);
insert into tb_produto(nome, controlado, cosmetico, generico, valor, categoria_id) value ("Camisinha","não", "não", "não", 12.00, 2);

select * from tb_produto;
select * from tb_produto where valor >= 50;
select * from tb_produto where valor between 3 and 60 order by valor;
select * from tb_produto where nome like 'B%';

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where categoria_id like 1;
