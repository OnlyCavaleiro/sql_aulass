describe candangos;

# Adicionar Coluna após uma coluna
alter table pessoas
add column profissao varchar(10) after nome;

# Adicionar coluna na frente de todas as outras
alter table pessoas
add column codigo int FIRST;

# Excluir Coluna
alter table pessoas
drop column profissao;

# Modificar propriedade da tabela
alter table pessoas
modify column profissao varchar(20) not null default '';

# Mudar nome de uma coluna
alter table pessoas
change column prof profissao varchar(20) not null default '';

# Renomear tabela
alter table candangos
rename to pessoas;

# Selecionar tudo
select * from pessoas;
