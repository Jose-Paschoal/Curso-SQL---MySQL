USE curso_sql;

# relacionamentos

select * from funcionarios;
select * from veiculos;

select * from funcionarios inner join veiculos on funcionario_id = funcionarios.id;
select * from funcionarios f left join veiculos v on v.funcionario_id = f.id;
select * from funcionarios f right join veiculos v on v.funcionario_id = f.id;

# mesmo resultado que um full join:

select * from funcionarios f left join veiculos v on v.funcionario_id = f.id
union
select * from funcionarios f right join veiculos v on v.funcionario_id = f.id;

select * from cpfs;

select * from funcionarios inner join cpfs on funcionarios.id = cpfs.id;

select * from funcionarios inner join cpfs  using(id);

select * from clientes;

select a.nome, b.nome from clientes a join clientes b on a.quem_indicou = b.id;

# relacionamento triplo

select * from funcionarios
 inner join veiculos on funcionario_id = funcionarios.id 
 inner join cpfs on cpfs.id = funcionarios.id;

# visoes

drop view funcioarios_a;






