USE curso_sql;

# inner join

SELECT * FROM funcionarios;
SELECT * FROM veiculos;

# uso de apelido nas tabelas para detalhar os relacionamentos.

SELECT * FROM funcionarios INNER JOIN veiculos ON funcionario_id = funcionarios.id;

# variações do join

SELECT * FROM funcionarios LEFT JOIN veiculos ON funcionario_id = funcionarios.id;
SELECT * FROM funcionarios RIGHT JOIN veiculos ON funcionario_id = funcionarios.id;

INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (null, 'Moto', 'SB-0003');

# cxhecando left, right e inner juntos, ALL

SELECT * FROM funcionarios LEFT JOIN veiculos ON funcionario_id = funcionarios.id
UNION
SELECT * FROM funcionarios RIGHT JOIN veiculos ON funcionario_id = funcionarios.id;

CREATE TABLE cpfs
(
	id int unsigned not null,
    cpf varchar(14) not null,
    PRIMARY KEY (id),
    CONSTRAINT fk_cpf FOREIGN KEY (id) REFERENCES funcionarios (id)
);

INSERT INTO cpfs (id, cpf) VALUES (1, '111.111.111-11');
INSERT INTO cpfs (id, cpf) VALUES (2, '222.222.222-22');
INSERT INTO cpfs (id, cpf) VALUES (3, '333.333.333-33');
INSERT INTO cpfs (id, cpf) VALUES (5, '555.555.555-55');

SELECT * FROM cpfs;

SELECT * FROM funcionarios INNER JOIN cpfs ON funcionarios.id = cpfs.id;

# outra forma de exnergar o mesmo resultado abaixo;

SELECT * FROM funcionarios INNER JOIN cpfs USING (id);

CREATE TABLE clientes
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    quem_indicou int unsigned,
    PRIMARY KEY (id),
    CONSTRAINT fk_quem_indicou FOREIGN KEY (quem_indicou) REFERENCES clientes (id)
);

INSERT INTO clientes (id, nome, quem_indicou) VALUES (1, 'André', NULL);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (2, 'Samuel', 1);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (3, 'Carlos', 2);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (4, 'Rafael', 1);

SELECT * FROM clientes;

SELECT a.nome AS CLIENTE, b.nome AS "QUEM INDICOU" FROM clientes a JOIN clientes b ON a.quem_indicou = b.id;

# FAZENDO RELACIONAMENTO ENTRE 3 TABELAS;

SELECT * FROM funcionarios
INNER JOIN veiculos ON veiculos.funcionario_id = funcionarios.id
INNER JOIN cpfs ON cpfs.id = funcionarios.id;

# CRIANDO VISAO

CREATE VIEW funcionarios_a AS
SELECT * FROM funcionarios WHERE salario >= 1700;

SELECT * FROM funcionarios_a;


