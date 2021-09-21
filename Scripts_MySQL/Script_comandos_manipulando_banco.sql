USE curso_sql;

# inserindo valores nas tabelas

INSERT INTO funcionarios (id, nome, salario, departamento) VALUES (1, 'Fernando', 1400, 'TI');
INSERT INTO funcionarios (id, nome, salario, departamento) VALUES (2, 'Guilherme', 2500, 'Juridico');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Fabio', 1700, 'TI');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Jose', 1800, 'Marketing');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Isabela', 2200, 'Juridico');

# testando primeiro select

SELECT * from funcionarios;

# incrementando o select com filtros

SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE nome = 'Jose';

/# para liberar atualizacao de tabela sem informar id , caso queira retornar o safe_updates colocar = 1 */

SET SQL_SAFE_UPDATES = 0;
UPDATE funcionarios SET salario = salario * 1.1;

select * from funcionarios;

# formatando os numeros e retirando excesso de zeros, duas casas decimais

UPDATE funcionarios SET salario = ROUND(salario * 1.1, 2);

select * from funcionarios;

# TESTANDO A OPÇÃO DELETE

DELETE FROM funcionarios WHERE id = 4;

select * from funcionarios;

# inserindo dados na tabela veiculos

INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES ( 1, 'Carro', 'SB-0001');
INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES ( 1, 'Carro', 'SB-0002');

UPDATE veiculos SET funcionario_id =5 WHERE id =2;

select * from veiculos;

# inserindo dados na tabel salarios

INSERT INTO salarios (faixa, inicio, fim) VALUES ('Analista Jr', 1000, 2000);
INSERT INTO salarios (faixa, inicio, fim) VALUES ('Analista Pleno', 2000, 4000);

select * from salarios;

# unindo duas consultas

SELECT * FROM funcionarios WHERE nome = 'Guilherme'
UNION
SELECT * FROM funcionarios WHERE id = 5;



