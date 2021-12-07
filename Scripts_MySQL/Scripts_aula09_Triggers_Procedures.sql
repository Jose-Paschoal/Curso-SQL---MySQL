USE curso_sql;

# CRIANDO TABELA DE EXEMPLO

create table pedidos
(
	id int unsigned not null auto_increment,
    descricao varchar(100) not null,
    valor double not null default'0',
    pago varchar(3) not null default 'não',
    primary key (id)
);

# INSERINDO PEDIDOS NA TABELA

insert into pedidos (descricao, valor) values ('tv', 3000);
insert into pedidos (descricao, valor) values ('geladeira', 1400);
insert into pedidos (descricao, valor) values ('dvd', 300);

# CRIANDO STORED PROCEDURES - QUE EXCLUE NO CASO OS PEDIDOS NÃO PAGOS

select * from pedidos;
call limpa_pedidos();

## TRIGGERS








