create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
empresa boolean not null,
pessoaf boolean not null,
desconto varchar (255) not null,
primary key (id)
);

insert into tb_categoria (empresa, pessoaf, desconto) value (true,false,true);
insert into tb_categoria (empresa, pessoaf, desconto) value (false,true,true);
insert into tb_categoria (empresa, pessoaf, desconto) value (true,false,false);
insert into tb_categoria (empresa, pessoaf, desconto) value (false,true,false);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
pesokg decimal (5,2) not null,
disposicaokg int not null,
categoria_id bigint,
preco decimal (5,2)  not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, pesokg, disposicaokg, categoria_id, preco) value ("cimento", 112, 12000, 2, 70.00);
insert into tb_produto (nome, pesokg, disposicaokg, categoria_id, preco) value ("areia fina", 300, 20000, 1, 25.00);
insert into tb_produto (nome, pesokg, disposicaokg, categoria_id, preco) value ("pedra", 300, 12000, 3, 121.00);
insert into tb_produto (nome, pesokg, disposicaokg, categoria_id, preco) value ("gesso", 500, 5000, 3, 841.00);
insert into tb_produto (nome, pesokg, disposicaokg, categoria_id, preco) value ("corrente", 40, 1200, 4, 145.00);
insert into tb_produto (nome, pesokg, disposicaokg, categoria_id, preco) value ("maçaneta", 7, 50, 2, 45.00);
insert into tb_produto (nome, pesokg, disposicaokg, categoria_id, preco) value ("cano de pvc", 32, 521, 4, 215.00);
insert into tb_produto (nome, pesokg, disposicaokg, categoria_id, preco) value ("registro", 3, 350, 2, 24.00);

select * from tb_produto;

select * from tb_produto where preco >= 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like 'C%';

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where disposicaokg >= 1000;


