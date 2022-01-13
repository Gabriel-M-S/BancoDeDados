create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id int(2) auto_increment,
    nomeclasse varchar(20) NOT NULL,
    vida int NOT NULL,
    primary key(id)
    
    );
create table tb_personagem(
	id int auto_increment,
    nome varchar(20) NOT NULL,
	poderataque int(4) NOT NULL,
    poderdefesa int(4) NOT NULL,
    classe int(4) NOT NULL,
    primary key(id),
    foreign key(classe) references tb_classe (id)
);


insert into tb_classe(nomeclasse, vida) values ("Mago", 120);
insert into tb_classe(nomeclasse, vida) values ("Arqueiro", 90);
insert into tb_classe(nomeclasse, vida) values ("Assassino", 80);
insert into tb_classe(nomeclasse, vida) values ("Guerreiro", 110);
insert into tb_classe(nomeclasse, vida) values ("Druida", 140);


insert into tb_personagem(nome, poderataque, poderdefesa, classe) values ("Catarina", 1000,400,1);
insert into tb_personagem(nome, poderataque, poderdefesa, classe) values ("Carmilla", 2010,700,1);
insert into tb_personagem(nome, poderataque, poderdefesa, classe) values ("Marl", 1200,1500,2);
insert into tb_personagem(nome, poderataque, poderdefesa, classe) values ("LP",800,400,3);
insert into tb_personagem(nome, poderataque, poderdefesa, classe) values ("Sena", 1100,1200,4);
insert into tb_personagem(nome, poderataque, poderdefesa, classe) values ("Lad",1500,500,5);
insert into tb_personagem(nome, poderataque, poderdefesa, classe) values ("Merlin",2010,800,1);
insert into tb_personagem(nome, poderataque, poderdefesa, classe) values ("Ava", 2500,2000,3);

SELECT * FROM tb_personagem where poderataque>2000;
SELECT * FROM tb_personagem where poderdefesa<2000 and poderdefesa>1000;
SELECT * FROM tb_personagem where nome like '%c%';

Select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe;

Select * from tb_personagem where classe =1;

