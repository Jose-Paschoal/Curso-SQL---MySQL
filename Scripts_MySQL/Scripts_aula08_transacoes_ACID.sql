USE curso_sql;

# CRIAR TABELA QUE SUPORTAM TRANSAÇÕES

SHOW ENGINES;

CREATE TABLE contas_bancarias
(
	id int unsigned not null auto_increment,
    titular varchar(45) not null,
    saldo double not null,
    primary key(id)
) engine=InnoDB;

# INSERINDO REGISTROS

INSERT INTO contas_bancarias (titular, saldo) VALUES ('jose', 1000);
INSERT INTO contas_bancarias (titular, saldo) VALUES ('carlos', 2000);

SELECT * FROM contas_bancarias;

# FAZENDO TRANSAÇÕES - usando start transaction e rollback para confirmar ou cancelar as transações.

start transaction;
UPDATE contas_bancarias SET saldo = saldo - 100 WHERE id = 1;
UPDATE contas_bancarias SET saldo = saldo + 100 WHERE id = 2;
rollback;

# commit confirma as transações

start transaction;
UPDATE contas_bancarias SET saldo = saldo - 100 WHERE id = 1;
UPDATE contas_bancarias SET saldo = saldo + 100 WHERE id = 2;
commit;

SELECT * FROM contas_bancarias;


