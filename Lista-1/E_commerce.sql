create database E_commerce;
use E_commerce;
create table Produtos(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal(5,2) not null,
codigo int not null,
estoque varchar(255) not null,
primary key(id)
);

insert into Produtos(nome, valor, codigo, estoque) value ("Teclado", 485.75, 210001, "sim");
insert into Produtos(nome, valor, codigo, estoque) value ("caixa de som", 500.00, 210002, "sim");
insert into Produtos(nome, valor, codigo, estoque) value ("Mouse", 235.50, 210003, "sim");
insert into Produtos(nome, valor, codigo, estoque) value ("Mesa digitalizadora", 735.75, 210004, "sim");
insert into Produtos(nome, valor, codigo, estoque) value ("monitor", 998.00, 210005, "sim");
insert into Produtos(nome, valor, codigo, estoque) value ("carregador de celular", 59.99, 210006, "sim");
insert into Produtos(nome, valor, codigo, estoque) value ("fone de ouvido", 90.00, 210007, "não");
insert into Produtos(nome, valor, codigo, estoque) value ("microfone", 350.99, 210008, "sim");

select * from Produtos;

select * from Produtos where valor >= 500.00;
select * from Produtos where valor < 500.00;


update Produtos set valor = 420.99 where id = 2;
select * from Produtos;