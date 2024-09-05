Create Table t_procedimento
(
	id_procedimento		int identity,
	id_pessoa			int,
	id_especialidade	int,
	nm_procedimento		varchar(200),
	dt_agendamento		date,
	hr_agendamento		time,
	nr_senha			varchar(50)
)

Create Table t_especialidade
(
	id_especialidade	int identity,
	cd_especialidade	int,
	nm_especialidade	varchar(200)
)

Create Table t_tipo_pessoa
(
	id_tipo_pessoa		int identity,
	cd_tipo_pessoa		int,
	nm_tipo_pessoa		varchar(50)
)

Create Table t_pessoas
(
	id_pessoa			int identity,
	id_tipo_pessoa		int,
	id_especialidade	int,
	nr_telefone			varchar(50),
	nr_cnpj_cpf			varchar(20),
	nm_pessoa			varchar(150)
	
)


