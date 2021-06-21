create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
classificacao int not null,
telepresencial varchar (255) not null,
gravacao varchar (255) not null,
primary key (id)
);

insert into tb_categoria ( classificacao, telepresencial, gravacao) value (18, "sim", "não");
insert into tb_categoria ( classificacao, telepresencial, gravacao) value (18, "não", "sim");
insert into tb_categoria ( classificacao, telepresencial, gravacao) value (15, "sim", "não");
insert into tb_categoria ( classificacao, telepresencial, gravacao) value (15, "não", "sim");
insert into tb_categoria ( classificacao, telepresencial, gravacao) value (10, "não", "sim");

select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
nome varchar(255) not null,
duracaohr int not null,
certificado boolean not null,
limiteclass int not null,
valor decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso (nome, duracaohr, certificado, limiteclass, categoria_id, valor) value ("Ferramentas pesadas", 48, true, 15, 2, 100.00);
insert into tb_curso (nome, duracaohr, certificado, limiteclass, categoria_id, valor) value ("Logica da programação Java", 72, true, 25, 1, 71.00);
insert into tb_curso (nome, duracaohr, certificado, limiteclass, categoria_id, valor) value ("Possiveis carreiras apos a formação", 48, false, 40, 4, 19.00);
insert into tb_curso (nome, duracaohr, certificado, limiteclass, categoria_id, valor) value ("Programação basica", 30, true, 25, 3, 35.00);
insert into tb_curso (nome, duracaohr, certificado, limiteclass, categoria_id, valor) value ("Reforço de inglês", 48, false, 10, 5, 15.00);
insert into tb_curso (nome, duracaohr, certificado, limiteclass, categoria_id, valor) value ("Reforço de matematica", 48, false, 10, 5, 15.00);
insert into tb_curso (nome, duracaohr, certificado, limiteclass, categoria_id, valor) value ("Adm basica", 100, true, 20, 1, 87.00);

select * from tb_curso;

select * from tb_curso where valor >= 50;
select * from tb_curso where valor between 3 and 60;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso where certificado like true;










