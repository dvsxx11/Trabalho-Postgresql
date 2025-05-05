--3)
-- DELETE FROM clientes
-- WHERE id_cliente NOT IN (
--     SELECT DISTINCT id_cliente FROM pedidos
-- );
-- UPDATE produtos
-- SET descricao = 'Notebook i5, SSD 512GB, 16GB RAM'
-- WHERE nome ILIKE 'Notebook i5, 12 gereção, 512gb e 16 ram';

--4)
--SELECT * FROM clientes
--WHERE (nome LIKE 'D%' OR telefone IS NOT NULL)
--AND cpf IS NOT NULL;

-- SELECT nome, preco FROM produtos
-- WHERE preco > 100 AND preco < 1000;

-- SELECT * FROM pedidos
-- WHERE id_forma_pagamento <> (
--     SELECT id_forma_pagamento FROM formas_pagamento
--     WHERE descricao = 'Pix'
-- );

-- SELECT nome, cpf FROM clientes
-- WHERE nome ILIKE '%a%' AND cpf IN ('06895347364', '08424623412');

-- SELECT p.id_pedido, c.nome AS cliente, f.descricao AS forma_pagamento, p.valor_total
-- FROM pedidos p
-- JOIN clientes c ON p.id_cliente = c.id_cliente
-- JOIN formas_pagamento f ON p.id_forma_pagamento = f.id_forma_pagamento;

-- SELECT ip.id_item, pr.nome AS produto, ip.quantidade, ip.preco_unitario, pd.data_pedido
-- FROM itens_pedido ip
-- JOIN produtos pr ON ip.id_produto = pr.id_produto
-- JOIN pedidos pd ON ip.id_pedido = pd.id_pedido;

-- SELECT c.nome, SUM(p.valor_total) AS total_gasto
-- FROM pedidos p
-- JOIN clientes c ON p.id_cliente = c.id_cliente
-- GROUP BY c.nome
-- HAVING SUM(p.valor_total) > 1000;

-- SELECT nome, preco FROM produtos
-- ORDER BY preco DESC;

-- SELECT
--     COUNT(*) AS total_produtos,
--     SUM(preco) AS soma_precos,
--     AVG(preco) AS preco_medio,
--     MAX(preco) AS preco_mais_caro,
--     MIN(preco) AS preco_mais_barato
-- FROM produtos;

-- SELECT pr.categoria, SUM(es.quantidade) AS total_em_estoque
-- FROM estoque es
-- JOIN produtos pr ON es.id_produto = pr.id_produto
-- GROUP BY pr.categoria;