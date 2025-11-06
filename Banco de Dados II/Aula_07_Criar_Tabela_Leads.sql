--Criar nova tabela de potenciais clientes
CREATE TABLE loja.tb06_leads_newsletter (
    id_lead SERIAL PRIMARY KEY,
    nome_lead VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro DATE DEFAULT CURRENT_DATE
);

--Inserindo potenciais clientes na tabela leads
INSERT INTO loja.tb06_leads_newsletter (nome_lead, email) VALUES
-- 2 Leads que JÁ SÃO CLIENTES na tabela tb01_cliente
('Ana Carolina Souza', 'ana.carolina@email.com'),
('Bruno Alves', 'bruno.alves@email.com'),

-- 7 Leads novos que NÃO SÃO CLIENTES
('Roberto Gomes', 'roberto.gomes@email.com'),
('Lucia Perez', 'lucia.perez@email.com'),
('Mariana Costa', 'mariana.costa@email.com'),
('Pedro Rocha', 'pedro.rocha@email.com'),
('Juliana Ferreira', 'juliana.f@email.com'),
('Ricardo Nobre', 'ricardo.nobre@email.com'),
('Sofia Almeida', 'sofia.almeida@email.com');


-- Inserindo novos clientes na tabela clientes
INSERT INTO loja.tb01_cliente (cpf, nome_cliente, data_nascimento, email, cep, endereco, cidade, estado) VALUES
('21145236587','Augusto Dias','1995-12-19','augusto.dias@email.com','71951240','Avenida da Ciência','São José dos Campos','SP'),
('45215874695','Marta Vilela','2001-09-10','marta.vilela@email.com','34526874','Travessa do Lago','Belo Horizonte','MG'),
('12324354654','Raul Prado','1980-04-21','raul.prado@email.com','38400850','Rua João Gomes','Goiânia','GO');