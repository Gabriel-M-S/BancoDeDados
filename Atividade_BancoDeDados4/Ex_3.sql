create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id int(2) auto_increment,
    nome varchar(20) NOT NULL,
	ativo boolean NOT NULL,
    primary key(id)
    
    );
create table tb_produto(
	id int auto_increment,
    nome varchar(20) NOT NULL,
	disponivel boolean NOT NULL,
    preco decimal(6,2) NOT NULL,
    categoria int NOT NULL,
    primary key(id),
    foreign key(categoria) references tb_categoria (id)
);


insert into tb_categoria(nome, ativo) values ("Higiene", true);
insert into tb_categoria(nome, ativo) values ("Cosmético", true);
insert into tb_categoria(nome, ativo) values ("Remédio", true);



insert into tb_produto(nome, disponivel, preco, categoria) values ("Desodorante", true,15,1);
insert into tb_produto(nome, disponivel, preco, categoria) values ("Água Micelar", true,53,2);
insert into tb_produto(nome, disponivel, preco, categoria) values ("Buscopan", true,15,3);
insert into tb_produto(nome, disponivel, preco, categoria) values ("Dramin", true,20,3);
insert into tb_produto(nome, disponivel, preco, categoria) values ("Creme facial", true,25,2);
insert into tb_produto(nome, disponivel, preco, categoria) values ("Sabonete neutro", true,20,1);
insert into tb_produto(nome, disponivel, preco, categoria) values ("Cotonete", true,12,1);
insert into tb_produto(nome, disponivel, preco, categoria) values ("Amoxicilina", true,10,3);

SELECT * FROM tb_produto where preco>50;
SELECT * FROM tb_produto where preco>3 and preco<60;
SELECT * FROM tb_produto where nome like '%B%';

Select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria;

Select * from tb_produto where categoria = 2;