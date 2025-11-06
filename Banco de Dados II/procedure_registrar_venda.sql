CREATE OR REPLACE PROCEDURE loja.sp_registrar_venda_completa(
    p_id_cliente INT,
    p_id_produto INT,
    p_quantidade INT
)
AS $$
DECLARE
    v_estoque_atual INT;
    v_preco_unitario DECIMAL;
    v_id_pedido_novo INT;
    v_numero_pedido_novo VARCHAR(50);
BEGIN

	-- Passo 1: verificar se o cliente existe
    IF NOT EXISTS (SELECT 1 FROM loja.tb01_cliente WHERE id_cliente = p_id_cliente) THEN
        RAISE EXCEPTION 'Cliente com ID % não existe.', p_id_cliente;
    END IF;

	-- Passo 2: verificar se o produto desejado existe
	IF NOT EXISTS (SELECT 1 FROM loja.tb02_produto WHERE id_produto = p_id_produto) THEN
		RAISE EXCEPTION 'Produto com ID % não existe', p_id_produto;
	END IF;
		
	-- Passo 3: Selecionar dados necessário nas etapas seguintes
    SELECT estoque, preco
    INTO v_estoque_atual, v_preco_unitario
    FROM loja.tb02_produto
    WHERE id_produto = p_id_produto
    FOR UPDATE; -- bloqueio para travar atualização concorrente para a mesma tupla de dados
	
    -- Passo 4:  verificar se o produto desejado tem estoque disponível
    IF v_estoque_atual < p_quantidade THEN
        RAISE EXCEPTION 'Estoque insuficiente para o produto ID %. Disponível: %', p_id_produto, v_estoque_atual;
    END IF;
    
    -- Passo 5: Gerar o número do novo pedido
    SELECT 'PED-2025-' || LPAD((MAX(id_pedido) + 1)::TEXT, 5, '0') 
    INTO v_numero_pedido_novo 
    FROM loja.tb04_pedido;

    -- Passo 6: atualizar a tabela pedido, item_pedido e produto
    INSERT INTO loja.tb04_pedido (numero_pedido, data_pedido, id_cliente, id_status_pedido)
    VALUES (v_numero_pedido_novo, CURRENT_DATE, p_id_cliente, 2) -- Status 2 = Pagamento Aprovado
    RETURNING id_pedido INTO v_id_pedido_novo; -- Captura o ID do novo pedido

    INSERT INTO loja.tb05_item_pedido (id_pedido, id_produto, quantidade, valor_unitario)
    VALUES (v_id_pedido_novo, p_id_produto, p_quantidade, v_preco_unitario);

    UPDATE loja.tb02_produto
    SET estoque = estoque - p_quantidade
    WHERE id_produto = p_id_produto;

    -- Se tudo deu certo a transação é concretizada
    RAISE NOTICE 'Venda registrada com sucesso! Pedido Nº: %', v_numero_pedido_novo;

EXCEPTION
    -- Se alguma etapa anterior falhar, a execução entra neste bloco e é feito Rollback
    WHEN OTHERS THEN
        RAISE NOTICE 'Ocorreu um erro: %. A transação não foi concluída (ROLLBACK).', SQLERRM;
END;
$$ LANGUAGE plpgsql;
