create database Escola;
use Escola;
create table Aluno(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
serie varchar(255) not null,
nota decimal(5,2) not null,
primary key(id)
);

insert into Aluno(nome, idade, serie, nota) value ("Geovana", 14,"primeiro ano do médio", 7.0);
insert into Aluno(nome, idade, serie, nota) value ("Sarah", 15,"primeiro ano do médio", 10.0);
insert into Aluno(nome, idade, serie, nota) value ("Victor", 16,"primeiro ano do médio", 7.0);
insert into Aluno(nome, idade, serie, nota) value ("Luis", 15,"primeiro ano do médio", 6.75);
insert into Aluno(nome, idade, serie, nota) value ("Lucas", 15,"primeiro ano do médio", 3.5);
insert into Aluno(nome, idade, serie, nota) value ("Leonardo", 15,"primeiro ano do médio", 8.5);
insert into Aluno(nome, idade, serie, nota) value ("Ana", 15,"primeiro ano do médio", 9.5);
insert into Aluno(nome, idade, serie, nota) value ("Lara", 14,"primeiro ano do médio", 7.5);

select * from Aluno;

select * from Aluno where nota >= 7.0;
select * from Aluno where nota <  7.0;

update Aluno set nota = 7.0 where id = 4;
select * from Aluno;
