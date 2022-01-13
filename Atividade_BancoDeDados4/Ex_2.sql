create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id int(2) auto_increment,
    nome varchar(20) NOT NULL,
	ativo boolean NOT NULL,
    primary key(id)
    
    );
create table tb_pizza(
	id int auto_increment,
    nome varchar(20) NOT NULL,
	borda boolean NOT NULL,
    preco decimal(6,2) NOT NULL,
    categoria int NOT NULL,
    primary key(id),
    foreign key(categoria) references tb_categoria (id)
);


insert into tb_categoria(nome, ativo) values ("Doce", true);
insert into tb_categoria(nome, ativo) values ("Salgada", true);
insert into tb_categoria(nome, ativo) values ("Especial", true);



insert into tb_pizza(nome, borda, preco, categoria) values ("Queijo", true,50,2);
insert into tb_pizza(nome, borda, preco, categoria) values ("Brigadeiro", true,53,1);
insert into tb_pizza(nome, borda, preco, categoria) values ("Calabresa", true,47,2);
insert into tb_pizza(nome, borda, preco, categoria) values ("Lam", true,90,3);
insert into tb_pizza(nome, borda, preco, categoria) values ("Ervilha", true,40,2);
insert into tb_pizza(nome, borda, preco, categoria) values ("Quatro Queijos", true,54,2);
insert into tb_pizza(nome, borda, preco, categoria) values ("Lat", true,70,3);
insert into tb_pizza(nome, borda, preco, categoria) values ("Mon", true,50,3);

SELECT * FROM tb_pizza where preco>45;
SELECT * FROM tb_pizza where preco<60 and preco>29;
SELECT * FROM tb_pizza where nome like '%c%';

Select * from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria;

Select * from tb_pizza where categoria = 2;