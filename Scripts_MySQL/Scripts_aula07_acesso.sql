# não é necessário fazer comando de use para criar acesso aos bancos

# criando usuários a partir de um IP de uma maquina ou da propria maquina, a versão com o % dá acesso a qualquer máquina

/* CREATE USER 'jose'@'200.200.190.190' IDENTIFIED BY 'paschoal123'; */

CREATE USER 'jose'@'localhost' IDENTIFIED BY 'paschoal123';

/* CREATE USER 'jose'@'%' IDENTIFIED BY 'paschoal123'; */

# DAR ACESSO ao usuário para localhost:

# usuário terá acesso ALL ou seja, pode fazer de tudo no banco

GRANT ALL ON curso_sql.* TO 'jose'@'localhost';

# criando um novo acesso ao usuário que agora, por estar em outro computador terá apenas um acesso limitado ao SELECT - INSERT

CREATE USER 'jose'@'%' IDENTIFIED BY 'joseviagem';
GRANT SELECT ON curso_sql.* TO 'jose'@'%';


## REMOVENDO ACESSOS

REVOKE INSERT ON curso_sql.* FROM 'jose'@'%';

REVOKE ALL ON curso_sql.* FROM 'jose'@'localhost';

## Excluindo o usuário após ter o acesso retirado.

DROP USER 'jose'@'%';

## CHECANDO/LISTANDO OS USUÁRIOS

SELECT User FROM mysql.user;
SHOW GRANTS FOR 'jose'@'%';

