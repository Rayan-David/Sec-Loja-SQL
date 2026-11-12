SELECT * FROM produto;
INSERT INTO pedido (cliente_id, produto_id, quantidade, status) VALUES
(2, 1, 1, "Novo");
SELECT * FROM cliente;
DELETE FROM pedido WHERE id = 1;