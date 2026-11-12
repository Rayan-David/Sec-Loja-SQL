-- CRIANDO BANCO DE DADOS
CREATE DATABASE loja_online_seg;

-- USANDO O BANCO
USE loja_online_seg;

CREATE TABLE produto(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(7,2) NOT NULL,
estoque INT NOT NULL
);

-- DADOS DOS CLIENTES
CREATE TABLE cliente(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
cidade VARCHAR(40) NOT NULL
);

-- PEDIDOS: LIGA CLIENTES A PRODUTOS
CREATE TABLE pedido(
id INT PRIMARY KEY AUTO_INCREMENT,
cliente_id INT NOT NULL,
produto_id INT NOT NULL,
quantidade INT NOT NULL,
status VARCHAR(20) NOT NULL,
FOREIGN KEY (cliente_id) REFERENCES cliente(id),
FOREIGN KEY (produto_id) REFERENCES produto(id)
);

INSERT INTO produto(nome, preco, estoque) VALUES
('Fone Bluetooth', 149.90, 25),
('Mouse sem fio', 79.90, 40),
('Teclado mecânico', 289.00, 12),
('Webcam HD', 199.00, 9);

INSERT INTO cliente (nome, email, cidade) VALUES
('Larissa Prado', 'larissa.prado@email.com', 'Recife'),
('Otávio Cunha', 'otavio.cunha@email.com', 'Curitiba'),
('Sabrina Melo', 'sabrina.melo@email.com', 'Belém');

INSERT INTO pedido (cliente_id, produto_id, quantidade, status) VALUES
(1, 1, 1, 'Entregue'),
(2, 3, 1, 'Pago'),
(3, 2, 2, 'Pago'),
(1, 4, 1, 'Novo');

-- 1.Liste os usuários que já existem no servidor.
SELECT user, host FROM mysql.user;

-- 2.Crie os 3 usuários, todos em localhost, com as senhas da tabela.
CREATE USER 'site_loja'@'localhost' IDENTIFIED BY 'Site@Loja2026';
CREATE USER 'suporte'@'localhost' IDENTIFIED BY 'Suporte@2026';
CREATE USER 'financeiro'@'localhost' IDENTIFIED BY 'Financ@2026';

-- 3.PERMISSOES
GRANT SELECT ON produto TO 'site_loja'@'localhost';
GRANT INSERT ON pedido TO 'site_loja'@'localhost';

GRANT SELECT ON cliente TO 'suporte'@'localhost';
GRANT SELECT ON pedido TO 'suporte'@'localhost';
GRANT UPDATE ON cliente TO 'suporte'@'localhost';

-- 4. Mostre o SHOW GRANTS de cada usuário e confira com a tabela de perfis.
SHOW GRANTS FOR 'site_loja'@'localhost';
SHOW GRANTS FOR 'suporte'@'localhost';

-- 5.Criar a conexão do site_loja e testar
SELECT * FROM produto;