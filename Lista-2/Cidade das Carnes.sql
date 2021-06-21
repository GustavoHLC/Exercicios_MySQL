create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
disposicao boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, disposicao) values ("Ave",true);
insert into tb_categoria (descricao, disposicao) values ("bonvino",true);
insert into tb_categoria (descricao, disposicao) values ("suino",true);
insert into tb_categoria (descricao, disposicao) values ("Caprino",false);
insert into tb_categoria (descricao, disposicao) values ("Importado",true);

select * from tb_categoria;

create table tb_produtos(
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
estoque int not null,
encomendas int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, estoque, encomendas, categoria_id) values ("coxa da asa", 15.00, 45, 2, 1);
insert into tb_produtos (nome, preco, estoque, encomendas, categoria_id) values ("Peito de frango s/ osso", 21.00, 10, 0, 1);
insert into tb_produtos (nome, preco, estoque, encomendas, categoria_id) values ("Picanha", 68.00, 20, 8, 2);
insert into tb_produtos (nome, preco, estoque, encomendas, categoria_id) values ("filet mignon", 120.00, 2, 17, 2);
insert into tb_produtos (nome, preco, estoque, encomendas, categoria_id) values ("bacon", 8.00, 50, 0, 3);
insert into tb_produtos (nome, preco, estoque, encomendas, categoria_id) values ("carret", 62.00, 0, 2, 4);
insert into tb_produtos (nome, preco, estoque, encomendas, categoria_id) values ("bife ancho Wagyu", 630.00, 4, 25, 5);

select * from tb_produtos;

select * from tb_produtos where preco >= 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like 'C%';

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id order by preco;

select * from tb_produtos where categoria_id = 1;








