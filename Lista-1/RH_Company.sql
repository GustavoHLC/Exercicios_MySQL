create database RH_Company;

use RH_Company;

create table funcionarios(
id bigint auto_increment,
nome varchar (255) not null,
salario int not null,
excel varchar (255) not null,
calculo varchar (255) not null,
primary key (id)
);

insert into funcionarios(nome, salario, excel, calculo) value ("Afonso", 1250, "sim", "não");
insert into funcionarios(nome, salario, excel, calculo) value ("Paulo", 1750, "não", "sim");
insert into funcionarios(nome, salario, excel, calculo) value ("Ana", 2000, "sim", "sim");
insert into funcionarios(nome, salario, excel, calculo) value ("Maria", 2540, "sim", "sim");
insert into funcionarios(nome, salario, excel, calculo) value ("Aline", 7000, "sim", "sim");

select * from funcionarios;

select * from funcionarios where salario >= 2000;
select * from funcionarios where salario < 2000;

update funcionarios set salario = 1300 where id = 1;
select * from funcionarios;