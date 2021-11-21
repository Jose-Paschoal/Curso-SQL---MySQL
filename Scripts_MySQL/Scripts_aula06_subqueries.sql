use curso_sql;
select * from funcionarios;

# contagem + select de condições

select count(*) from funcionarios;
select count(*) from funcionarios where salario > 1600;
select count(*) from funcionarios where salario > 1600 and departamento = 'Jurídico';

# soma

select sum(salario) from funcionarios where departamento = 'TI';

# média = avg

select avg(salario) from funcionarios where departamento = 'TI';

# max/min

select max(salario) from funcionarios;

# listar os departamentos da empresa - distinct

select distinct(departamento) from funcionarios;

# ordenando

select * from funcionarios order by nome;

# ordenando ascendente ou decrescente - asc/desc

select * from funcionarios order by salario desc;

# para pular alguns registros do banco - offset ou com virgulas e limit

select * from funcionarios limit 1,2;

# funções de agrupamento

select departamento,avg(salario) from funcionarios group by departamento;

# complementando a função de group by com a função having

select departamento, avg(salario) from funcionarios group by departamento having avg(salario) > 2000;

## Subqueries

select nome from funcionarios
 where departamento in
	(
		select departamento from funcionarios group by departamento having avg(salario) > 2000
	);

## "!=" - diferente de




