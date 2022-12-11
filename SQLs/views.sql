--VIEW 1
CREATE VIEW nomes_instituices AS(
    SELECT nome FROM instituicao_saude
);

--VIEW 2
CREATE VIEW servicos_e_instituicoes AS(
    SELECT instituicao_saude.nome as instituicao, servico.nome as nome_servico, servico.descricao, servico.preco
    FROM instituicao_saude JOIN servico ON instituicao_saude.cnpj = servico.cnpj_instituicao_saude
);

--VIEW 3
CREATE VIEW campanhas_vigentes AS (
    SELECT * FROM campanha WHERE data_final > now()
);

--VIEW 4
--está usando o mesmo do 2, porém com recursos de filtragem

--VIEW 5
CREATE VIEW medico_instituicao AS (
    SELECT m.nome AS medico, m.crm, m.especialidade, i.nome AS instituicao FROM medico m INNER JOIN instituicao_saude i ON i.cnpj = m.cnpj_instituicao
);

--VIEW 6
CREATE VIEW horario_instituicao AS (
    SELECT instituicao_saude.nome, horario_atendimento.dia_semana, horario_atendimento.hora_abertura, horario_atendimento.hora_fechamento FROM
           instituicao_saude INNER JOIN instituicao_saude_horario_atendimento ON instituicao_saude.cnpj = instituicao_saude_horario_atendimento.cnpj_instituicao_saude
           INNER JOIN horario_atendimento ON instituicao_saude_horario_atendimento.id_horario = horario_atendimento.id
);

--VIEW 7
CREATE VIEW qnt_campanhas AS (
    SELECT instituicao_saude.nome, instituicao_saude.qtd_campanhas FROM instituicao_saude
);

--VIEW 8
CREATE VIEW endereco_instituicao AS (
    SELECT instituicao_saude.nome, endereco.rua, bairro, numero
    FROM instituicao_saude INNER JOIN endereco ON instituicao_saude.id_endereco = endereco.id
);

--VIEW 9
CREATE VIEW contato_instituicao AS (
    SELECT i.cnpj, i.nome AS instituicao, it.telefone FROM instituicao_saude_telefone it INNER JOIN instituicao_saude i ON i.cnpj = it.cnpj_instituicao_saude
);

--VIEW 10
CREATE VIEW proximas_campanhas AS (
    SELECT * FROM campanha WHERE data_inicio > now()
);

