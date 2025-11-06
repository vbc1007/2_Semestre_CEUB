SELECT categoria, round(AVG(preco),2) AS media_precos FROM loja.tb02_produto
GROUP BY categoria