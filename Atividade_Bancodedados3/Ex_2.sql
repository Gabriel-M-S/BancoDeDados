create database db_produtos;

use db_produtos;

create table tb_produtos(
			id bigint auto_increment,
            nome varchar(20) not null,
            preco decimal(15,2),
            quantidadenoestoque int not null,
            marca varchar(20) not null,
            primary key(id)
            );
            
            
            insert into tb_produtos (nome,preco,quantidadenoestoque,marca) values ("Celular",4000,60,"Samsug");
            insert into tb_produtos (nome,preco,quantidadenoestoque,marca) values ("Notebook",2500,99,"Del");
			insert into tb_produtos (nome,preco,quantidadenoestoque,marca) values ("Celular",7000,14,"Ifon");
			insert into tb_produtos (nome,preco,quantidadenoestoque,marca) values ("Batedeira",350,2,"Arc");
			insert into tb_produtos (nome,preco,quantidadenoestoque,marca) values ("Calculadora",40,53,"Casi");
			insert into tb_produtos (nome,preco,quantidadenoestoque,marca) values ("Caderno",30,34,"Espiral");
			insert into tb_produtos (nome,preco,quantidadenoestoque,marca) values ("Caneta",2,209,"Bico");
			insert into tb_produtos (nome,preco,quantidadenoestoque,marca) values ("Computador",2050,80,"Lenove");
             
            select * from tb_produtos where preco>500;
            
            select * from tb_produtos where preco<500;
            
            update tb_produtos set preco = 6000 where id=3;
            
            