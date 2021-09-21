# criando o banco de dados; depois usar USE para acessar o banco

CREATE DATABASE curso_sql;
USE curso_sql;
# criar tabela funcionario
CREATE TABLE funcionarios
(
 id int unsigned not null auto_increment, 
 nome varchar(45) not null,
 salario double not null default '0',
 departamento varchar(45) not null,
 primary key (id)
);

CREATE TABLE veiculos
(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar(45) not null default '',
    placa varchar(10) not null default '',
    PRIMARY KEY (id),
    CONSTRAINT fk_veiculos_funcionarios FOREIGN KEY (funcionario_id) references funcionarios (id)
);

CREATE TABLE salarios
(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    PRIMARY KEY (faixa)
);

# alterando dados nas tabelas - cuidado ao mudar campos de varchar para int e vice versa

ALTER TABLE funcionarios CHANGE COLUMN nome nome_func varchar(50) not null;
ALTER TABLE funcionarios CHANGE COLUMN nome_func nome varchar(50) not null;

# exclusao definitiva de tableas/bancos

DROP TABLE salarios;

# criacao de indices

CREATE INDEX departamentos ON funcionarios (departamento);
CREATE INDEX nomes ON funcionarios (nome(6));




