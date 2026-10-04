use carros;


SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS inventario;
DROP TABLE IF EXISTS marcas;
DROP TABLE IF EXISTS clientes;
SET FOREIGN_KEY_CHECKS = 1;

create table marcas (
	id int not null auto_increment,
    nome_marca varchar(255) not null,
    origem varchar(255) not null,
    primary key (id)
);

create table inventario (
	id int not null auto_increment,
    modelo varchar(255) not null,
    transmissão varchar(255) not null,
    motor varchar(255) not null,
    combustivel varchar(255) not null,
    marcas_id int not null,
	primary key (id),
    foreign key (marcas_id) references marcas(id)
);

create table clientes(
	id int not null auto_increment,
	nome varchar(255) not null,
	sobrenome varchar(255) not null,
    endereço varchar(255) not null,
    primary key (id)
);

insert into clientes (nome, sobrenome, endereço)
values ('lucas', 'oliveira', 'rua 2'),
	   ('Lanna', 'lopes','rua 22'),
       ('matheus', 'azevedo', 'rua 10a'),
       ('ana', 'souza', 'quadra 4'),
       ('pedro', 'lima', 'rua 7'),
       ('julia', 'costa', 'lote 15');
       
insert into marcas (nome_marca, origem)
values 
	('toyota','japonia'),
    ('Honda','japonia'),
    ('ferrari','italia '),
    ('Volkswagen','alemanha');
    
insert into inventario (modelo, transmissão, motor, combustivel, marcas_id)
values
	('corolla xre', 'manual', '2.0', 'gasolina', 1 ),
    ('Civic JKL', 'manual', '2.8', 'flex', 2),
    ('vantori', 'manual', '5.0', 'gasolina', 3),
    ('Golf GTI', 'automatico', '2.2', 'gasolina', 4);
