CREATE OR REPLACE FUNCTION add_servico()
RETURNS TRIGGER AS
$$
DECLARE
	
BEGIN
	update instituicao_saude set qtd_servicos = qtd_servicos + 1 where cnpj = NEW.cnpj_instituicao_saude;
	RETURN NEW;
END
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION delete_servico()
RETURNS TRIGGER AS
$$
DECLARE
	
BEGIN
	update instituicao_saude set qtd_servicos = qtd_servicos - 1 where cnpj = OLD.cnpj_instituicao_saude;
	RETURN NEW;
END
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION add_campanha()
RETURNS TRIGGER AS
$$
DECLARE
	
BEGIN
	update instituicao_saude set qtd_campanhas = qtd_campanhas + 1 where cnpj = NEW.cnpj_instituicao;
	RETURN NEW;
END
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION delete_campanha()
RETURNS TRIGGER AS
$$
DECLARE
	
BEGIN
	update instituicao_saude set qtd_campanhas = qtd_campanhas - 1 where cnpj = OLD.cnpj_instituicao;
	RETURN NEW;
END
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER insert_servico
after insert on servico
for each row
execute procedure add_servico();

CREATE TRIGGER delete_servico
after delete on servico
for each row
execute procedure delete_servico();

CREATE TRIGGER insert_campanha
after insert on campanha
for each row
execute procedure add_campanha();

CREATE TRIGGER delete_campanha
after delete on campanha
for each row
execute procedure delete_campanha();


