create database db_escola;

use db_escola;

create table tb_alunos(
			id bigint auto_increment,
            nome varchar(20) not null,
            nota decimal(4,2),
            idade int not null,
            presencatotal int not null,
            primary key(id)
            );
            
            
            insert into tb_alunos (nome,nota,idade,presencatotal) values ("Pedro",8,15,54);
            insert into tb_alunos (nome,nota,idade,presencatotal) values ("Ana",6,12,48);
			insert into tb_alunos (nome,nota,idade,presencatotal) values ("Matheus",9,15,50);
			insert into tb_alunos (nome,nota,idade,presencatotal) values ("Luana",10,16,54);
			insert into tb_alunos (nome,nota,idade,presencatotal) values ("Maria",8,12,52);
			insert into tb_alunos (nome,nota,idade,presencatotal) values ("João",8,13,53);
			insert into tb_alunos (nome,nota,idade,presencatotal) values ("Pedro",4,15,40);
			insert into tb_alunos (nome,nota,idade,presencatotal) values ("Gabriel",10,15,46);
             
            select * from tb_alunos where nota>7;
            
            select * from tb_alunos where nota<7;
            
            update tb_alunos set presencatotal = 58 where id=7;