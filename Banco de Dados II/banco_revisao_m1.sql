--CREATE DATABASE revisao_m1;

CREATE SCHEMA loja;

CREATE TABLE loja.tb01_cliente (
    id_cliente SERIAL PRIMARY KEY,
    cpf CHAR(11) UNIQUE NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100) UNIQUE NOT NULL,
    cep CHAR(8) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL
);

CREATE TABLE loja.tb02_produto (
    id_produto SERIAL PRIMARY KEY,
    codigo_produto VARCHAR(50) UNIQUE NOT NULL,
    nome_produto VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE loja.tb03_status_pedido (
    id_status_pedido SERIAL PRIMARY KEY,
    descricao VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE loja.tb04_pedido (
    id_pedido SERIAL PRIMARY KEY,
    numero_pedido VARCHAR(50) UNIQUE NOT NULL,
    data_pedido DATE NOT NULL DEFAULT CURRENT_DATE,
	id_cliente INT NOT NULL,
    id_status_pedido INT NOT NULL,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES loja.tb01_cliente(id_cliente) ON DELETE RESTRICT,
    CONSTRAINT fk_pedido_status FOREIGN KEY (id_status_pedido) REFERENCES loja.tb03_status_pedido(id_status_pedido) ON DELETE RESTRICT
);

CREATE TABLE loja.tb05_item_pedido (
    id_item_pedido SERIAL PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT uk_item_pedido UNIQUE (id_pedido, id_produto),
    CONSTRAINT fk_itempedido_pedido FOREIGN KEY (id_pedido) REFERENCES loja.tb04_pedido(id_pedido) ON DELETE RESTRICT,
    CONSTRAINT fk_itempedido_produto FOREIGN KEY (id_produto) REFERENCES loja.tb02_produto(id_produto) ON DELETE RESTRICT
);

CREATE TABLE loja.tb06_leads_newsletter (
    id_lead SERIAL PRIMARY KEY,
    nome_lead VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro DATE DEFAULT CURRENT_DATE
);

INSERT INTO loja.tb03_status_pedido (descricao) VALUES
('Processando'),
('Pagamento Aprovado'),
('Enviado'),
('Entregue'),
('Cancelado');

-- 2. Inserindo 15 clientes
INSERT INTO loja.tb01_cliente (cpf, nome_cliente, data_nascimento, email, cep, endereco, cidade, estado) VALUES
('11122233344', 'Ana Carolina Souza', '1990-05-15', 'ana.carolina@email.com', '01001000', 'Rua da Consolação, 1500', 'São Paulo', 'SP'),
('22233344455', 'Bruno Alves', '1985-11-20', 'bruno.alves@email.com', '20040030', 'Avenida Rio Branco, 100', 'Rio de Janeiro', 'RJ'),
('33344455566', 'Carla Dias', '1992-02-10', 'carla.dias@email.com', '30110005', 'Avenida Afonso Pena, 500', 'Belo Horizonte', 'MG'),
('44455566677', 'Daniel Costa', '2000-07-30', 'daniel.costa@email.com', '70070150', 'SCS Quadra 5, Bloco A', 'Brasília', 'DF'),
('55566677788', 'Eduarda Ferreira', '1998-09-05', 'eduarda.f@email.com', '40026010', 'Avenida Sete de Setembro, 200', 'Salvador', 'BA'),
('66677788899', 'Fábio Martins', '1982-12-12', 'fabio.martins@email.com', '80010010', 'Rua XV de Novembro, 300', 'Curitiba', 'PR'),
('77788899900', 'Gabriela Lima', '1995-03-25', 'gabi.lima@email.com', '90010150', 'Rua dos Andradas, 800', 'Porto Alegre', 'RS'),
('88899900011', 'Heitor Ribeiro', '1979-06-18', 'heitor.r@email.com', '69010001', 'Avenida Eduardo Ribeiro, 1000', 'Manaus', 'AM'),
('99900011122', 'Isabela Santos', '2001-01-01', 'isabela.santos@email.com', '66010020', 'Avenida Presidente Vargas, 400', 'Belém', 'PA'),
('00011122233', 'João Pedro Gomes', '1993-04-14', 'jp.gomes@email.com', '50030000', 'Avenida Marquês de Olinda, 150', 'Recife', 'PE'),
('12312312312', 'Larissa Mendes', '1999-08-22', 'larissa.mendes@email.com', '01001000', 'Avenida Paulista, 2000', 'São Paulo', 'SP'),
('23423423423', 'Marcos Andrade', '1988-10-10', 'marcos.andrade@email.com', '20040030', 'Rua do Ouvidor, 50', 'Rio de Janeiro', 'RJ'),
('34534534534', 'Natália Rocha', '1991-05-19', 'natalia.rocha@email.com', '30110005', 'Rua da Bahia, 1200', 'Belo Horizonte', 'MG'),
('45645645645', 'Otávio Nunes', '1997-11-02', 'otavio.nunes@email.com', '70070150', 'Asa Norte, Quadra 205', 'Brasília', 'DF'),
('56756756756', 'Patrícia Azevedo', '1980-02-28', 'patricia.azevedo@email.com', '40026010', 'Largo do Pelourinho, 10', 'Salvador', 'BA'),
('67867867867', 'Ricardo Farias', '1987-07-21', 'ricardo.farias@email.com', '01001000', 'Rua Augusta, 900', 'São Paulo', 'SP'),
('78978978978', 'Sofia Cavalcanti', '1996-01-30', 'sofia.c@email.com', '20040030', 'Avenida Presidente Vargas, 500', 'Rio de Janeiro', 'RJ'),
('89089089089', 'Thiago Moreira', '1994-06-11', 'thiago.moreira@email.com', '30110005', 'Rua dos Guajajaras, 150', 'Belo Horizonte', 'MG'),
('90190190190', 'Úrsula Medeiros', '2002-10-09', 'ursula.m@email.com', '70070150', 'SQS 105, Bloco C', 'Brasília', 'DF'),
('01201201201', 'Vanessa Pinto', '1999-12-25', 'vanessa.pinto@email.com', '40026010', 'Rua Chile, 50', 'Salvador', 'BA'),
('12345678901', 'William Borges', '1983-05-03', 'william.b@email.com', '80010010', 'Avenida Marechal Deodoro, 800', 'Curitiba', 'PR'),
('23456789012', 'Xavier Almeida', '1980-08-17', 'xavier.a@email.com', '90010150', 'Avenida Borges de Medeiros, 200', 'Porto Alegre', 'RS'),
('34567890123', 'Yasmin Correia', '1995-09-14', 'yasmin.c@email.com', '69010001', 'Rua Henrique Martins, 350', 'Manaus', 'AM'),
('45678901234', 'Zilda Teixeira', '1978-04-29', 'zilda.t@email.com', '66010020', 'Travessa Padre Eutíquio, 1078', 'Belém', 'PA'),
('56789012345', 'Arthur Bernardes', '2003-03-03', 'arthur.b@email.com', '50030000', 'Rua da Moeda, 70', 'Recife', 'PE'),
('67890123456', 'Beatriz Nogueira', '1992-07-07', 'beatriz.n@email.com', '01001000', 'Praça da Sé, 100', 'São Paulo', 'SP'),
('78901234567', 'Caio Drummond', '1986-11-13', 'caio.d@email.com', '20040030', 'Largo da Carioca, 5', 'Rio de Janeiro', 'RJ'),
('89012345678', 'Débora Quintela', '1993-02-18', 'debora.q@email.com', '30110005', 'Praça Sete de Setembro, 180', 'Belo Horizonte', 'MG'),
('90123456789', 'Elisa Barroso', '2000-09-22', 'elisa.b@email.com', '70070150', 'Eixo Monumental, Praça dos Três Poderes', 'Brasília', 'DF'),
('01234567890', 'Fernando Viana', '1981-12-01', 'fernando.v@email.com', '40026010', 'Avenida Oceânica, 2400', 'Salvador', 'BA'),
('11223344556', 'Juliana Paes Leme', '1991-03-15', 'juliana.leme@email.com', '70390100', 'SCS Quadra 1, Bloco A', 'Brasília', 'DF');


-- 3. Inserindo 20 produtos de categorias variadas
INSERT INTO loja.tb02_produto (codigo_produto, nome_produto, preco, categoria, estoque) VALUES
('NTB-GMR-001', 'Notebook Gamer Predator', 7599.90, 'Eletrônicos', 15),
('MSE-LOG-203', 'Mouse Logitech MX Master 3', 499.90, 'Eletrônicos', 50),
('TEC-RED-K55', 'Teclado Mecânico Redragon Kumara', 289.00, 'Eletrônicos', 30),
('MON-DELL-U24', 'Monitor Dell UltraSharp 24"', 1899.00, 'Eletrônicos', 25),
('SSD-KNG-1TB', 'SSD Kingston NV2 1TB', 450.00, 'Eletrônicos', 80),
('CAM-NIK-D75', 'Câmera Nikon D7500', 6500.00, 'Eletrônicos', 10),
('LIV-SDA-001', 'Livro: O Senhor dos Anéis - Trilogia', 159.90, 'Livros', 100),
('LIV-CRN-001', 'Livro: As Crônicas de Nárnia', 89.90, 'Livros', 120),
('LIV-COD-CLN', 'Livro: Código Limpo', 75.50, 'Livros', 200),
('LIV-ARQ-LIM', 'Livro: Arquitetura Limpa', 85.00, 'Livros', 150),
('CAF-NES-DGU', 'Cafeteira Nespresso Dolce Gusto', 399.00, 'Casa e Cozinha', 40),
('LIQ-OST-MAX', 'Liquidificador Oster Clássico', 249.90, 'Casa e Cozinha', 60),
('TEN-NIK-PEG', 'Tênis Nike Pegasus 40', 799.90, 'Esportes', 70),
('CAM-FLA-2025', 'Camisa Oficial Flamengo 2025', 349.90, 'Esportes', 250),
('CAM-PAL-2025', 'Camisa Oficial Palmeiras 2025', 349.90, 'Esportes', 250),
('BOL-BSK-SPALD', 'Bola de Basquete Spalding', 199.90, 'Esportes', 90),
('CAL-JEA-LEV', 'Calça Jeans Levis 501', 450.00, 'Roupas', 180),
('CAM-POL-LAC', 'Camisa Polo Lacoste', 389.00, 'Roupas', 120),
('ASP-ROB-ROOM', 'Aspirador Robô Roomba', 2199.00, 'Casa e Cozinha', 20),
('FONE-SONY-XM5', 'Fone Sony WH-1000XM5', 2599.00, 'Eletrônicos', 35),
('FUR-MAK-001', 'Furadeira de Impacto Makita', 499.90, 'Ferramentas', 45),
('SER-DEW-001', 'Serra Circular DeWalt', 899.00, 'Ferramentas', 25),
('KIT-TRM-001', 'Kit de Ferramentas Tramontina 110 peças', 350.50, 'Ferramentas', 60),
('MAN-REG-001', 'Mangueira de Jardim Tramontina 20m', 89.90, 'Jardinagem', 150),
('TES-JAR-001', 'Tesoura de Poda para Jardim', 45.00, 'Jardinagem', 200),
('LEG-CLS-001', 'Lego Classic Caixa Grande', 299.90, 'Brinquedos', 80),
('BRB-DRM-001', 'Barbie Dreamhouse', 850.00, 'Brinquedos', 30),
('HW-PST-001', 'Pista Hot Wheels Ataque do Tubarão', 199.50, 'Brinquedos', 100),
('CEL-SAM-S25', 'Celular Samsung Galaxy S25', 8500.00, 'Eletrônicos', 50),
('SMT-APP-W10', 'Smartwatch Apple Watch Series 10', 4500.00, 'Eletrônicos', 70),
('LIV-HP-PEDRA', 'Livro: Harry Potter e a Pedra Filosofal', 49.90, 'Livros', 300),
('PAN-PRE-CLK', 'Panela de Pressão Clock 4.5L', 159.90, 'Casa e Cozinha', 90),
('JGO-PRT-OXF', 'Jogo de Pratos Oxford 20 peças', 250.00, 'Casa e Cozinha', 110),
('CHU-TEN-ADI', 'Chuteira Adidas Predator', 599.90, 'Esportes', 85),
('BOLA-VLE-MIK', 'Bola de Vôlei Mikasa', 249.90, 'Esportes', 130),
('VEST-FEM-ZAR', 'Vestido Feminino Zara', 299.00, 'Roupas', 200),
('SAP-MAS-DEM', 'Sapato Masculino Democrata', 349.90, 'Roupas', 150),
('PAR-LIX-BOS', 'Parafusadeira/Lixadeira Bosch', 650.00, 'Ferramentas', 40),
('CAR-IRR-STI', 'Carrinho de Mão com Irrigador', 180.00, 'Jardinagem', 75),
('JOGO-BNK-EST', 'Jogo Banco Imobiliário Estrela', 129.90, 'Brinquedos', 120),
('TAB-SAM-A9', 'Tablet Samsung Galaxy Tab A9', 1299.00, 'Eletrônicos', 60),
('JAQ-COU-01', 'Jaqueta de Couro Sintético', 399.90, 'Roupas', 110),
('CHA-FEN-BCH', 'Chave de Fenda Elétrica Bosch', 189.50, 'Ferramentas', 75),
('LIV-MIT-NOR', 'Livro: Mitologia Nórdica', 65.00, 'Livros', 250);

-- 4. Inserindo 25 pedidos
INSERT INTO loja.tb04_pedido (numero_pedido, data_pedido, id_cliente, id_status_pedido) VALUES
('PED-2025-00001', '2025-01-15', 1, 4), 
('PED-2025-00010', '2025-03-22', 1, 4), 
('PED-2025-00025', '2025-08-10', 1, 3),
('PED-2025-00002', '2025-01-18', 2, 4), 
('PED-2025-00011', '2025-04-01', 2, 5),
('PED-2025-00003', '2025-02-01', 3, 4),
('PED-2025-00004', '2025-02-05', 4, 4), 
('PED-2025-00012', '2025-04-10', 4, 4), 
('PED-2025-00018', '2025-06-15', 4, 4), 
('PED-2025-00024', '2025-08-05', 4, 2),
('PED-2025-00005', '2025-02-20', 5, 3),
('PED-2025-00006', '2025-03-02', 6, 4),
('PED-2025-00007', '2025-03-10', 7, 4), 
('PED-2025-00013', '2025-05-05', 7, 4),
('PED-2025-00008', '2025-03-11', 8, 5),
('PED-2025-00009', '2025-03-20', 9, 4), 
('PED-2025-00014', '2025-05-12', 9, 3),
('PED-2025-00015', '2025-05-18', 10, 4), 
('PED-2025-00019', '2025-06-20', 10, 4), 
('PED-2025-00023', '2025-07-30', 10, 1),
('PED-2025-00016', '2025-05-25', 11, 4),
('PED-2025-00017', '2025-06-01', 12, 4),
('PED-2025-00020', '2025-07-05', 13, 4),
('PED-2025-00021', '2025-07-15', 14, 2),
('PED-2025-00022', '2025-07-22', 15, 1),
('PED-2025-00026', '2025-09-01', 16, 4), 
('PED-2025-00027', '2025-09-02', 17, 4), 
('PED-2025-00028', '2025-09-03', 18, 3),
('PED-2025-00029', '2025-09-04', 19, 4), 
('PED-2025-00030', '2025-09-05', 20, 5), 
('PED-2025-00031', '2025-09-06', 21, 4),
('PED-2025-00032', '2025-09-07', 22, 4), 
('PED-2025-00033', '2025-09-08', 23, 4), 
('PED-2025-00034', '2025-09-09', 24, 2),
('PED-2025-00035', '2025-09-10', 25, 4), 
('PED-2025-00036', '2025-09-11', 26, 3), 
('PED-2025-00037', '2025-09-12', 27, 4),
('PED-2025-00038', '2025-09-13', 28, 4), 
('PED-2025-00039', '2025-09-14', 29, 4), 
('PED-2025-00040', '2025-09-15', 30, 1),
('PED-2025-00041', '2025-09-16', 1, 4), 
('PED-2025-00042', '2025-09-17', 2, 4), 
('PED-2025-00043', '2025-09-18', 3, 4),
('PED-2025-00044', '2025-09-19', 4, 4), 
('PED-2025-00045', '2025-09-20', 5, 2), 
('PED-2025-00046', '2025-09-21', 6, 4),
('PED-2025-00047', '2025-09-22', 7, 4), 
('PED-2025-00048', '2025-09-23', 8, 4), 
('PED-2025-00049', '2025-09-24', 9, 3),
('PED-2025-00050', '2025-09-25', 10, 1);

-- 5. Inserindo os itens dos pedidos
INSERT INTO loja.tb05_item_pedido (id_pedido, id_produto, quantidade, valor_unitario) VALUES
(1, 1, 1, 7599.90), 
(1, 2, 1, 499.90),
(2, 7, 1, 159.90),
(3, 13, 1, 799.90), 
(3, 16, 1, 199.90),
(4, 5, 2, 450.00),
(5, 18, 1, 389.00),
(6, 11, 1, 399.00),
(7, 9, 1, 75.50), 
(7, 10, 1, 85.00),
(8, 20, 1, 2599.00),
(9, 17, 2, 450.00),
(10, 3, 1, 289.00), 
(10, 4, 1, 1899.00),
(11, 14, 1, 349.90),
(12, 19, 1, 2199.00),
(13, 8, 1, 89.90),
(14, 1, 1, 7599.90), 
(14, 5, 2, 450.00), 
(14, 20, 1, 2599.00),
(15, 2, 1, 499.90),
(16, 15, 1, 349.90),
(17, 6, 1, 6500.00),
(18, 12, 1, 249.90),
(19, 7, 2, 159.90), 
(19, 8, 2, 89.90),
(20, 9, 5, 75.50),
(21, 13, 2, 799.90),
(22, 18, 3, 389.00),
(23, 1, 1, 7599.90),
(24, 2, 2, 499.90), 
(24, 3, 1, 289.00),
(25, 4, 1, 1899.00),
(26, 21, 1, 499.90), 
(26, 23, 1, 350.50),
(27, 26, 2, 299.90),
(28, 30, 1, 4500.00),
(29, 31, 3, 49.90),
(30, 27, 1, 850.00),
(31, 24, 1, 89.90), 
(31, 25, 2, 45.00),
(32, 1, 1, 7599.90),
(33, 29, 1, 8500.00), 
(33, 30, 1, 4500.00),
(34, 34, 1, 599.90),
(35, 40, 2, 129.90),
(36, 37, 1, 349.90),
(37, 22, 1, 899.00),
(38, 39, 1, 180.00),
(39, 28, 1, 199.50),
(40, 32, 1, 159.90),
(41, 10, 2, 85.00),
(42, 20, 1, 2599.00),
(43, 35, 1, 249.90), 
(43, 36, 1, 299.00),
(44, 21, 2, 499.90),
(45, 33, 1, 250.00),
(46, 5, 4, 450.00),
(47, 15, 2, 349.90),
(48, 38, 1, 650.00),
(49, 7, 1, 159.90), 
(49, 8, 1, 89.90), 
(49, 31, 1, 49.90),
(50, 26, 1, 299.90);

INSERT INTO loja.tb06_leads_newsletter (nome_lead, email) VALUES
('Ana Carolina Souza', 'ana.carolina@email.com'),
('Bruno Alves', 'bruno.alves@email.com'),
('Roberto Gomes', 'roberto.gomes@email.com'),
('Lucia Perez', 'lucia.perez@email.com'),
('Mariana Costa', 'mariana.costa@email.com'),
('Pedro Rocha', 'pedro.rocha@email.com'),
('Juliana Ferreira', 'juliana.f@email.com'),
('Ricardo Nobre', 'ricardo.nobre@email.com'),
('Sofia Almeida', 'sofia.almeida@email.com'),
('Ricardo Farias', 'ricardo.farias@email.com'),
('Sofia Cavalcanti', 'sofia.c@email.com'),
('Vanessa Pinto', 'vanessa.pinto@email.com'),
('Gustavo Henrique', 'gustavo.henrique@email.com'),
('Helena Moura', 'helena.moura@email.com'),
('Igor Vasconcelos', 'igor.vasconcelos@email.com'),
('Júlia Drummond', 'julia.drummond@email.com'),
('Kevin Lopes', 'kevin.lopes@email.com'),
('Lívia Sampaio', 'livia.sampaio@email.com'),
('Miguel Costa', 'miguel.costa@email.com');

CREATE VIEW loja.vw_dim_cliente
 AS
 SELECT id_cliente,
    nome_cliente,
    cidade,
    estado,
    EXTRACT(year FROM age(CURRENT_DATE::timestamp with time zone, data_nascimento::timestamp with time zone)) AS idade,
        CASE
            WHEN EXTRACT(year FROM age(CURRENT_DATE::timestamp with time zone, data_nascimento::timestamp with time zone)) < 25::numeric THEN '18-24 anos'::text
            WHEN EXTRACT(year FROM age(CURRENT_DATE::timestamp with time zone, data_nascimento::timestamp with time zone)) >= 25::numeric AND EXTRACT(year FROM age(CURRENT_DATE::timestamp with time zone, data_nascimento::timestamp with time zone)) <= 34::numeric THEN '25-34 anos'::text
            WHEN EXTRACT(year FROM age(CURRENT_DATE::timestamp with time zone, data_nascimento::timestamp with time zone)) >= 35::numeric AND EXTRACT(year FROM age(CURRENT_DATE::timestamp with time zone, data_nascimento::timestamp with time zone)) <= 44::numeric THEN '35-44 anos'::text
            ELSE '45+ anos'::text
        END AS faixa_etaria
   FROM loja.tb01_cliente;

CREATE VIEW loja.vw_dim_produto
 AS
 SELECT id_produto,
    nome_produto,
    categoria,
    preco,
        CASE
            WHEN preco < 100::numeric THEN 'Acessível'::text
            WHEN preco >= 100::numeric AND preco <= 500::numeric THEN 'Intermediário'::text
            WHEN preco > 500::numeric THEN 'Premium'::text
            ELSE 'Não classificado'::text
        END AS faixa_de_preco,
        CASE
            WHEN estoque > 0 THEN 'Disponível'::text
            ELSE 'Indisponível'::text
        END AS status_estoque
   FROM loja.tb02_produto;

CREATE VIEW loja.vw_dim_tempo
 AS
 SELECT DISTINCT data_pedido,
    EXTRACT(year FROM data_pedido) AS ano,
    EXTRACT(month FROM data_pedido) AS mes,
    EXTRACT(quarter FROM data_pedido) AS trimestre
   FROM loja.tb04_pedido;

CREATE VIEW loja.vw_fato_vendas
 AS
 SELECT p.id_cliente,
    ip.id_produto,
    p.data_pedido,
    p.id_status_pedido,
    ip.quantidade AS fato_quantidade_vendida,
    ip.valor_unitario AS fato_valor_unitario_venda,
    ip.quantidade::numeric * ip.valor_unitario AS fato_faturamento_total
   FROM loja.tb05_item_pedido ip
     JOIN loja.tb04_pedido p ON ip.id_pedido = p.id_pedido;