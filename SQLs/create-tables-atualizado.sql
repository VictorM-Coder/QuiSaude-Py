
CREATE TABLE endereco(
    rua VARCHAR(100) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    id SERIAL PRIMARY KEY
);

CREATE TABLE horario_atendimento(
    dia_semana CHAR(3) NOT NULL,
	hora_abertura TIME NOT NULL,
	hora_fechamento TIME NOT NULL,
	id SERIAL PRIMARY KEY
);

CREATE TABLE instituicao_saude(
	cnpj VARCHAR(18) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	id_endereco INT NOT NULL,
	qtd_servicos INT DEFAULT 0,
	qtd_campanhas INT DEFAULT 0,
	FOREIGN KEY(id_endereco) REFERENCES endereco(id)
);

CREATE TABLE instituicao_saude_telefone(
	cnpj_instituicao_saude VARCHAR(18) NOT NULL,
	telefone VARCHAR(20),
	PRIMARY KEY(cnpj_instituicao_saude, telefone),
	FOREIGN KEY(cnpj_instituicao_saude) REFERENCES instituicao_saude(cnpj)
);

CREATE TABLE instituicao_saude_horario_atendimento(
    id SERIAL PRIMARY KEY,
	id_horario INT NOT NULL,
	cnpj_instituicao_saude VARCHAR(18),
	FOREIGN KEY(cnpj_instituicao_saude) REFERENCES instituicao_saude(cnpj),
	FOREIGN KEY(id_horario) REFERENCES horario_atendimento(id)
);

CREATE TABLE medico(
	crm VARCHAR(9) PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	especialidade VARCHAR(100) NOT NULL,
	cnpj_instituicao VARCHAR(18) NOT NULL,
	FOREIGN KEY(cnpj_instituicao) REFERENCES instituicao_saude(cnpj)
);

CREATE TABLE servico(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	descricao TEXT,
	preco REAL,
	cnpj_instituicao_saude VARCHAR(18) NOT NULL,
	FOREIGN KEY(cnpj_instituicao_saude) REFERENCES instituicao_saude(cnpj)
);

CREATE TABLE medico_presta_servico(
    id SERIAL PRIMARY KEY,
	crm_medico VARCHAR(9) NOT NULL,
	id_servico INT NOT NULL,
	FOREIGN KEY(crm_medico) REFERENCES medico(crm),
	FOREIGN KEY(id_servico) REFERENCES servico(id)
);

CREATE TABLE medico_presta_servico_horario(
    id SERIAL PRIMARY KEY,
    id_medico_presta_servico INT NOT NULL,
    id_horario_atendimento INT NOT NULL,
    FOREIGN KEY(id_horario_atendimento) REFERENCES horario_atendimento(id),
    FOREIGN KEY(id_medico_presta_servico) REFERENCES medico_presta_servico(id)
);

CREATE TABLE Campanha(
    titulo VARCHAR(50),
    descricao VARCHAR(255),
    id SERIAL PRIMARY KEY,
    id_endereco INT NOT NULL,
    cnpj_instituicao VARCHAR(18) NOT NULL,
    data_inicio DATE NOT NULL,
    data_final DATE NOT NULL,
    FOREIGN KEY(cnpj_instituicao) REFERENCES instituicao_saude(cnpj),
    FOREIGN KEY(id_endereco) REFERENCES endereco(id)
);

CREATE TABLE campanha_horario_atendimento(
    id SERIAL PRIMARY KEY,
    id_campanha INT NOT NULL,
    id_horario_atendimento INT NOT NULL,
    FOREIGN KEY(id_campanha) REFERENCES Campanha(id),
    FOREIGN KEY(id_horario_atendimento) REFERENCES horario_atendimento(id)
);

CREATE TABLE campanha_vacinacao(
    dose VARCHAR(20),
    id INT NOT NULL PRIMARY KEY,
    FOREIGN KEY(id) REFERENCES Campanha(id)
);

CREATE TABLE faixaetaria(
  idade_minima INT NOT NULL,
  idade_maxima INT NOT NULL,
  id_campanha_vanicao INT PRIMARY KEY,
  FOREIGN KEY(id_campanha_vanicao) REFERENCES campanha_vacinacao(id)
);