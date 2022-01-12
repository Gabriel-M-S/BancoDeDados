create database db_rh;

use db_rh;

create table tb_funcionarios(
			id bigint auto_increment,
            nome varchar(20) not null,
            salario decimal(15,2),
            idade int not null,
            cargo varchar(20) not null,
            primary key(id)
            );
            
            
            insert into tb_funcionarios (nome,salario,idade,cargo) values ("Rogerio",4000,37,"Gerente");
            insert into tb_funcionarios (nome,salario,idade,cargo) values ("Matheus",1900,34,"Cozinheiro");
            insert into tb_funcionarios (nome,salario,idade,cargo) values ("Flavia",1500,23,"Desenvolvedora Jr");
            insert into tb_funcionarios (nome,salario,idade,cargo) values ("Paula",30000,46,"CEO");
            insert into tb_funcionarios (nome,salario,idade,cargo) values ("Maria",5500,30,"Desenvolvedora plena");
            
            select * from tb_funcionarios where salario>2000;
            
            select * from tb_funcionarios where salario<2000;
            
            update tb_funcionarios set salario = 3000 where id=3;
            
            
            
            