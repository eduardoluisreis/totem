Create Procedure p_consulta_paciente_procedimento
(
	@nr_senha			varchar(50)
)

As


select pe.nm_pessoa,
	   pe.nr_cnpj_cpf,
	   p.nm_procedimento,
	   e.nm_especialidade,
	   p.dt_agendamento,
	   p.hr_agendamento
from t_procedimento p
Join t_especialidade e
	On p.id_especialidade = e.id_especialidade
Join t_pessoas pe
	On pe.id_pessoa = p.id_pessoa
where p.nr_senha = @nr_senha

