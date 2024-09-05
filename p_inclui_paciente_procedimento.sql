Create Procedure p_consulta_paciente_procedimento
(
	@nr_cnpj_cpf			varchar(20),
	@cd_especialidade		int,
	@nm_procedimento		varchar(200),
	@nr_telefone			varchar(50),
	@dt_agendamento			date,
	@hr_agendamento			time,
	@nr_senha				varchar(50)
)

As

Declare 
@id_pessoa int,
@id_especialidade int

select @id_pessoa = p.id_pessoa
from t_pessoas p
where @id_pessoa = @nr_cnpj_cpf

select @id_especialidade = e.id_especialidade
from t_especialidade e
where @id_especialidade = @cd_especialidade


Insert Into t_procedimento
(
	id_pessoa,
	cd_especialidade,
	nm_procedimento	,
	nr_telefone,
	dt_agendamento	,
	hr_agendamento	,
	nr_senha	
)

Values
(
	@id_pessoa,
	@cd_especialidade,
	@nm_procedimento	,
	@nr_telefone,
	@dt_agendamento	,
	@hr_agendamento	,
	@nr_senha	
)