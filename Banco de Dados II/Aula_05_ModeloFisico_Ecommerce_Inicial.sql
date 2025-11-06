/*
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
*/

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