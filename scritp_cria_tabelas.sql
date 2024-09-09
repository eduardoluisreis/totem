Create Table t_procedimento
(
	id_procedimento		int identity primary key,
	id_pessoa			int,
	id_especialidade	int,
	nm_procedimento		varchar(200),
	dt_agendamento		date,
	hr_agendamento		time,
	nr_senha			varchar(50)
)


Create Table t_especialidade
(
	id_especialidade	int identity primary key,
	cd_especialidade	int,
	nm_especialidade	varchar(200)
)

Create Table t_tipo_pessoa
(
	id_tipo_pessoa		int identity primary key,
	cd_tipo_pessoa		int,
	nm_tipo_pessoa		varchar(50),
)

Create Table t_pessoas
(
	id_pessoa			int identity primary key,
	id_tipo_pessoa		int,
	id_especialidade	int,
	nr_telefone			varchar(50),
	nr_cnpj_cpf			varchar(20),
	nm_pessoa			varchar(150)
	
)


ALTER TABLE t_pessoas add CONSTRAINT [FK_t_pessoas_x_t_tipo_pessoa(id_tipo_pessoa)] FOREIGN KEY ([id_tipo_pessoa]) REFERENCES [dbo].[t_tipo_pessoa] ([id_tipo_pessoa])
ALTER TABLE t_procedimento add CONSTRAINT [FK_t_procedimento_x_t_pessoas(id_pessoa)] FOREIGN KEY ([id_pessoa]) REFERENCES [dbo].[t_pessoas] ([id_pessoa])
ALTER TABLE t_procedimento add CONSTRAINT [FK_t_procedimento_x_t_especialidade(id_especialidade)] FOREIGN KEY ([id_especialidade]) REFERENCES [dbo].[t_especialidade] ([id_especialidade])

