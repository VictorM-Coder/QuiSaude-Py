INSERT INTO endereco(rua, bairro, numero) VALUES
	('Av. Francisco Pinheiro de Almeida', 'Planalto Universitário', '2268'),
	('', 'Praça João Brasileiro Filho', ''),
	('Rua Epitácio Pessoa', 'Centro', '1131'),
	('Av. Francisco Pinheiro de Almeida', 'Planalto Universitário', '2340'),
	('Rua dos Voluntários', 'Planalto Renascer', ''),
	('CE-265', 'Alto São Franscisco', '727'),
	('Rua Peri Barbosa Barroca', 'COHAB', '492-584'),
	('Rua Benígno Bezerra', 'Alto São Francisco', '669'),
	('Rua José Enéas Monteiro Lessa', 'Planalto Universitário', ''),
	('Travessa Presidente Vargas', 'Campo Novo', ''),
	('Travessa João Cândido de Sousa', 'Planalto Universitário', '55');

INSERT INTO instituicao_saude(cnpj, nome, id_endereco) VALUES
	('51.240.931/0001-06', 'Hospital Maternidade Jesus Maria José', 1),
	('26.067.033/0001-42', 'Hospital Municipal Dr. Eudásio Barroso', 2),
	('04.685.375/0001-93', 'UAPS CENTRO', 3),
	('05.703.810/0001-28', 'Hemocentro Regional de Quixadá', 4),
	('88.806.377/0001-83', 'UPA Quixadá', 5),
	('27.771.002/0001-30', 'Policlínica de Quixadá', 6),
	('35.228.777/0001-92', 'UBS Campo Novo', 7),
	('92.559.120/0001-41', 'Posto de Saúde Dr. Everardo Silveira', 8),
	('98.857.092/0001-25', 'UBS Combate', 9),
	('62.422.492/0001-60', 'UBS PUTIU', 10),
	('24.786.414/0001-56', 'Clínica São Rafael - Unidade I', 11);


INSERT INTO instituicao_saude_telefone(cnpj_instituicao_saude, telefone) VALUES
	('51.240.931/0001-06', '(88) 55417-4972'),
	('26.067.033/0001-42', '(88) 61020-3902'),
	('04.685.375/0001-93', '(88) 73453-3919'),
	('05.703.810/0001-28', '(88) 18536-5029'),
	('88.806.377/0001-83', '(88) 76322-4156'),
	('27.771.002/0001-30', '(88) 62793-6739'),
	('35.228.777/0001-92', '(88) 51354-0388'),
	('92.559.120/0001-41', '(88) 49691-7273'),
	('98.857.092/0001-25', '(88) 47185-8851'),
	('62.422.492/0001-60', '(88) 55048-0393'),
	('24.786.414/0001-56', '(88) 75370-0206');

INSERT INTO horario_atendimento(dia_semana, hora_abertura, hora_fechamento) VALUES
	('DOM', '00:00', '24:00'),
	('SEG', '00:00', '24:00'),
	('TER', '00:00', '24:00'),
	('QUA', '00:00', '24:00'),
	('QUI', '00:00', '24:00'),
	('SEX', '00:00', '24:00'),
	('SAB', '00:00', '24:00'),
	('SEG', '07:00', '18:00'),
	('TER', '07:00', '18:00'),
	('QUA', '07:00', '18:00'),
	('QUI', '07:00', '18:00'),
	('SEX', '07:00', '18:00'),
	('SEX', '07:00', '18:00');



INSERT INTO instituicao_saude_horario_atendimento(id_horario, cnpj_instituicao_saude) VALUES
	(1, '51.240.931/0001-06'),
	(2, '51.240.931/0001-06'),
	(3, '51.240.931/0001-06'),
	(4, '51.240.931/0001-06'),
	(5, '51.240.931/0001-06'),
	(6, '51.240.931/0001-06'),
	(7, '51.240.931/0001-06'),
	(1, '26.067.033/0001-42'),
	(2, '26.067.033/0001-42'),
	(3, '26.067.033/0001-42'),
	(4, '26.067.033/0001-42'),
	(5, '26.067.033/0001-42'),
	(6, '26.067.033/0001-42'),
	(7, '26.067.033/0001-42'),
	(8, '04.685.375/0001-93'),
	(9, '04.685.375/0001-93'),
	(10, '04.685.375/0001-93'),
	(11, '04.685.375/0001-93'),
	(12, '04.685.375/0001-93'),
	(8, '05.703.810/0001-28'),
	(9, '05.703.810/0001-28'),
	(10, '05.703.810/0001-28'),
	(11, '05.703.810/0001-28'),
	(12, '05.703.810/0001-28'),
	(1, '88.806.377/0001-83'),
	(2, '88.806.377/0001-83'),
	(3, '88.806.377/0001-83'),
	(4, '88.806.377/0001-83'),
	(5, '88.806.377/0001-83'),
	(6, '88.806.377/0001-83'),
	(7, '88.806.377/0001-83'),
	(1, '27.771.002/0001-30'),
	(2, '27.771.002/0001-30'),
	(3, '27.771.002/0001-30'),
	(4, '27.771.002/0001-30'),
	(5, '27.771.002/0001-30'),
	(6, '27.771.002/0001-30'),
	(7, '27.771.002/0001-30'),
	(8, '35.228.777/0001-92'),
	(9, '35.228.777/0001-92'),
	(10, '35.228.777/0001-92'),
	(11, '35.228.777/0001-92'),
	(12, '35.228.777/0001-92'),
	(8, '92.559.120/0001-41'),
	(9, '92.559.120/0001-41'),
	(10, '92.559.120/0001-41'),
	(11, '92.559.120/0001-41'),
	(12, '92.559.120/0001-41'),
	(8, '98.857.092/0001-25'),
	(9, '98.857.092/0001-25'),
	(10, '98.857.092/0001-25'),
	(11, '98.857.092/0001-25'),
	(12, '98.857.092/0001-25'),
	(8, '62.422.492/0001-60'),
	(9, '62.422.492/0001-60'),
	(10, '62.422.492/0001-60'),
	(11, '62.422.492/0001-60'),
	(12, '62.422.492/0001-60'),
	(8, '24.786.414/0001-56'),
	(9, '24.786.414/0001-56'),
	(10, '24.786.414/0001-56'),
	(11, '24.786.414/0001-56'),
	(12, '24.786.414/0001-56');

INSERT INTO medico(crm, nome, especialidade, cnpj_instituicao) VALUES
	('52140-CE', 'Luís Erick Giovanni Rocha', 'CARDIOLOGIA', '35.228.777/0001-92'),
	('36220-CE', 'Débora Josefa Luzia Duarte', 'OFTALMOLOGIA', '24.786.414/0001-56'),
	('3145-CE', 'Marcos Nicolas Peixoto', 'CIRURGIA GERAL', '88.806.377/0001-83'),
	('48742-CE', 'Aurora Clarice Aragão', 'UROLOGIA', '88.806.377/0001-83'),
	('76434-CE', 'Guilherme Theo Caldeira', 'OTORRINOLARINGOLOGIA', '24.786.414/0001-56'),
	('2436-CE', 'Carlos Eduardo Sebastião da Cunha', 'SEM ESPECIALIDADE REGISTRADA', '35.228.777/0001-92'),
	('621-CE', 'Luan Thomas Cardoso', 'SEM ESPECIALIDADE REGISTRADA', '27.771.002/0001-30'),
	('32880-CE', 'Severino Alexandre da Cunha', 'DERMATOLOGIA', '27.771.002/0001-30'),
	('83118-CE', 'Alice Mariana Carolina Assunção', 'GINECOLOGIA E OBSTETRÍCIA', '98.857.092/0001-25'),
	('26377-CE', 'Bruna Cardoso Oliveira', 'ORTOPEDIA E TRAUMATOLOGIA', '88.806.377/0001-83');

INSERT INTO servico(nome, descricao, preco, cnpj_instituicao_saude) VALUES
	('Dermatologia', 'Diagnóstico, tratamento e prevenção de doenças na pele', 0, '27.771.002/0001-30'),
	('Consulta Geral', 'Diagnosticar doenças, prevenção de doenças e avaliações gerais', 0, '27.771.002/0001-30'),
	('Cardiologia', 'Diagnóstico das doenças e anormalidades existentes no coração. Solicitação e realização de exames', 0, '35.228.777/0001-92'),
	('Oftalmologia', 'Identificar e determinar tratamento tanto de problemas de visão hereditários ou adquiridos', 150.0, '24.786.414/0001-56'),
	('Otorrinolaringolosita', 'diagnóstico e tratamento, clínico e cirúrgico, das doenças dos ouvidos, nariz, garganta, laringe e pescoço', 200, '24.786.414/0001-56'),
	('Consulta com Cirurgião Geral', 'atua especialmente em cirurgias no abdômen, como a correção de hérnias, além de fazer pequenas cirurgias como biópsias, retirada de lesões e correção de unha encravada', 0, '88.806.377/0001-83'),
	('Urologista', 'diagnosticar e tratar doenças do sistema urinário, que inclui órgãos, como a bexiga e os rins, e canais, como a uretra e os ureteres', 0, '88.806.377/0001-83'),
	('Consulta Geral', 'Diagnosticar doenças, prevenção de doenças e avaliações gerais', 0, '35.228.777/0001-92'),
	('Ginecologia', 'Acompanhamento e tratamento do aparelho reprodutor feminino. Isso inclui o útero, ovários, trompas, vulva, vagina e mamas', 0, '98.857.092/0001-25'),
	('Ortopedia', 'Diagnóstico e tratamento de problemas mecânicos relacionados aos ossos (fraturas, luxações, lesões de menisco, de ligamentos, etc)', 0, '88.806.377/0001-83');

INSERT INTO medico_presta_servico(crm_medico, id_servico) VALUES
	('32880-CE', 1),
	('2436-CE', 2),
	('52140-CE', 3),
	('36220-CE', 4),
	('76434-CE', 5),
	('3145-CE', 6),
	('48742-CE', 7),
	('621-CE', 8),
	('83118-CE', 9),
	('26377-CE', 10);

INSERT INTO medico_presta_servico_horario(id_medico_presta_servico, id_horario_atendimento) VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 3),
    (6, 1),
    (7, 4),
    (8, 5),
    (9, 6),
    (10, 7);

INSERT INTO campanha(titulo, descricao, id_endereco, cnpj_instituicao, data_inicio, data_final) VALUES
    ('Combate ao Mosquito Aedes AEgypti', 'Campanha de conscientização sobre o combate ao Mosquito Aedes AEgypti', 1, '51.240.931/0001-06', '2022/11/27', '2022/12/20'),
    ('Combate à Varióla dos macacos', 'Campanha de conscientizção sobre o combate a varíola dos macacos', 2, '26.067.033/0001-42', '2022/11/29', '2022/12/24'),
    ('Combate à Raiva', 'Campanha de combate à raiva nos animais domésticos', 3, '04.685.375/0001-93', '2022/11/10', '2022/12/20'),
    ('Doação de sangue', 'Campanha de doação de sangue', 4, '04.685.375/0001-93', '2022/11/01', '2022/12/30'),
    ('Combate à gripe', 'Campanha de vacinação contra a gripe', 5, '88.806.377/0001-83', '2022/12/05', '2022/12/31'),--VACINAÇÃO
    ('Saúde da mulher', 'Do pré-natal à prevenção do câncer', 6, '24.786.414/0001-56', '2022/08/15', '2022/09/20'),
    ('Combate a doença de chagas', 'Campanha de combate a doença de chagas', 7, '24.786.414/0001-56', '2022/06/01', '2022/06/12'),
    ('Prevenção do Coronavírus', 'Campanha de conscientização sobre a proteção contra a covid-19', 8, '27.771.002/0001-30', '2022/01/30', '2022/02/28'),
    ('Novembro Azul', 'Mês da camapanha contra o câncer de próstata', 9, '35.228.777/0001-92', '2022/11/27', '2022/12/20'),
    ('Dia Mundial de luta contra a AIDS', 'Dia voltado para a conscientização sobre a prevenção da AIDS', 10, '62.422.492/0001-60', '2022/09/27', '2022/10/11'),

    ('Vacinação contra covid', 'Campanha de vacinação contra a Covid-19', 8, '92.559.120/0001-41', '2023/01/02', '2023/01/20'),
    ('Vacinação contra o sarampo', 'Campanha de vacinação contra o sarampo', 8, '92.559.120/0001-41', '2022/11/27', '2022/12/20'),
    ('Vacinação contra a poliomelite', 'Campanha de vacinação contra a poliomelite', 8, '92.559.120/0001-41', '2022/05/15', '2022/05/30'),
    ('Vacinação contra a H1N1', 'Campanha de vacinação contra a H1N1', 8, '92.559.120/0001-41', '2022/04/04', '2022/04/21'),
    ('Vacinação contra a tuberculose', 'Campanha de vacinação contra a tuberculose', 8, '92.559.120/0001-41', '2022/07/06', '2022/07/17'),
    ('Vacinação contra sarampo', 'Campanha de vacinação contra o sarampo', 8, '92.559.120/0001-41', '2022/11/25', '2022/12/02'),
    ('Vacinação contra a Hepatite', 'Campanha de vacinação contra a hepatite', 8, '92.559.120/0001-41', '2022/11/07', '2022/11/30'),
    ('Vacinação contra a febre amarela', 'Campanha de vacinação contra a febre amarela', 8, '92.559.120/0001-41', '2022/12/01', '2022/12/31'),
    ('Vacinação contra a Herpes', 'Campanha de vacinação contra a herpes', 8, '92.559.120/0001-41', '2022/02/01', '2022/02/20');

INSERT INTO campanha_horario_atendimento(id_campanha, id_horario_atendimento) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

INSERT INTO campanha_vacinacao(dose, id) VALUES
    ('Primeira', 11),
    ('Segunda', 12),
    ('Primeira', 13),
    ('Reforço', 14),
    ('Primeira', 15),
    ('Primeira', 16),
    ('Segunda', 17),
    ('Primeira', 18),
    ('Reforço', 19),
    ('Primeira', 5);

INSERT INTO faixaetaria(idade_minima, idade_maxima, id_campanha_vanicao) VALUES
    (18, 25, 11),
    (15, 30, 12),
    (20, 22, 13),
    (34, 36, 14),
    (40, 60, 15),
    (12, 18, 16),
    (8, 12, 17),
    (18, 25, 18),
    (55, 60, 19),
    (22, 25, 5);