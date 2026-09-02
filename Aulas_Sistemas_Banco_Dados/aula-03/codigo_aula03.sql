-- Active: 1788307539961@@127.0.0.1@5432@bd_vendas@public
DROP TABLE IF EXISTS vendas_itens;

CREATE TABLE vendas_itens(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    venda_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    valor_unitario NUMERIC(10, 2) NOT NULL,
    data_venda DATE NOT NULL,
    observacao TEXT 
);

SELECT * FROM vendas_itens;

-- Active: 1787177433004@@127.0.0.1@5432@bd_vendas@public
DROP TABLE IF EXISTS vendas_itens;

CREATE TABLE vendas_itens(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    venda_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    valor_unitario NUMERIC(10,2) NOT NULL,
    data_venda DATE NOT NULL,
    observacao TEXT
);

SELECT * FROM vendas_itens;

INSERT INTO vendas_itens (venda_id, produto_id, valor_unitario, data_venda, observacao) VALUES
(2001,  1, 150.55, '2025-09-01', 'Entrega expressa'),
(2001,  3,  45.00, '2025-09-01', NULL),
(2001,  5,  12.75, '2025-09-01', NULL),
(2001,  9,  88.78, '2025-09-01', 'Item em promocao'),
(2001, 10,  10.00, '2025-09-01', NULL),

(2002,  2,  99.90, '2025-09-02', NULL),
(2002,  4, 220.00, '2025-09-02', 'Entrega agendada'),
(2002,  6,  60.00, '2025-09-02', NULL),
(2002,  8,  34.50, '2025-09-02', NULL),
(2002,  1, 150.55, '2025-09-02', 'Retirada na loja'),

(2003,  7, 199.99, '2025-09-03', NULL),
(2003,  9,  88.78, '2025-09-03', 'Troca autorizada'),
(2003,  3,  45.00, '2025-09-03', NULL),
(2003,  2,  99.90, '2025-09-03', NULL),
(2003,  5,  12.75, '2025-09-03', NULL),

(2004,  4, 220.00, '2025-09-04', 'Entrega expressa'),
(2004,  6,  60.00, '2025-09-04', NULL),
(2004,  1, 150.55, '2025-09-04', NULL),
(2004,  7, 199.99, '2025-09-04', 'Cliente preferencial'),
(2004, 10,  10.00, '2025-09-04', NULL),

(2005,  8,  34.50, '2025-09-05', NULL),
(2005,  9,  88.78, '2025-09-05', 'Retirada na loja'),
(2005,  2,  99.90, '2025-09-05', NULL),
(2005,  3,  45.00, '2025-09-05', NULL),
(2005,  4, 220.00, '2025-09-05', 'Entrega agendada'),

(2006,  1, 150.55, '2025-09-06', NULL),
(2006,  5,  12.75, '2025-09-06', NULL),
(2006,  9,  88.78, '2025-09-06', NULL),
(2006, 10,  10.00, '2025-09-06', NULL),

(2007,  7, 199.99, '2025-09-07', 'Item em promocao'),
(2007,  6,  60.00, '2025-09-07', NULL),
(2007,  8,  34.50, '2025-09-07', NULL),
(2007,  2,  99.90, '2025-09-07', NULL),

(2008,  3,  45.00, '2025-09-08', NULL),
(2008,  4, 220.00, '2025-09-08', 'Entrega expressa'),
(2008,  1, 150.55, '2025-09-08', NULL),
(2008,  9,  88.78, '2025-09-08', NULL),

(2009,  5,  12.75, '2025-09-09', NULL),
(2009, 10,  10.00, '2025-09-09', NULL),
(2009,  6,  60.00, '2025-09-09', NULL),
(2009,  7, 199.99, '2025-09-09', 'Retirada na loja'),

(2010,  2,  99.90, '2025-09-10', NULL),
(2010,  3,  45.00, '2025-09-10', NULL),

(2011,  8,  34.50, '2025-09-11', NULL),
(2011,  9,  88.78, '2025-09-11', NULL),

(2012,  4, 220.00, '2025-09-12', 'Cliente preferencial'),
(2013,  1, 150.55, '2025-09-13', NULL),
(2014, 10,  10.00, '2025-09-14', NULL),
(2015,  5,  12.75, '2025-09-15', NULL),
(2016,  7, 199.99, '2025-09-16', 'Entrega agendada');


-- Busca (venda_id -> Id da Venda, produto_id -> ID Produto, valor_unitario -> Valor, data_venda -> Data)
SELECT
    venda_id AS "Id da Venda",
    produto_id AS "Id Produto",
    valor_unitario AS "Valor",
    data_venda AS "Data"
FROM
    vendas_itens;

-- Todos os itens da venda 2001 (venda_id / data_venda / produto_id / valor_unitario)

SELECT
    venda_id,
    data_venda,
    produto_id,
    valor_unitario
FROM
    vendas_itens
WHERE
    venda_id = 2001;



SELECT
    id,
    venda_id,
    produto_id,
    produto_id / 3 AS divisao_inteira,
    produto_id % 3 AS resto,
    produto_id / 3.0 AS divisao_decimal
FROM
    vendas_itens
WHERE
    produto_id = 10;

-- Apresentar coluna valor_venda contabilizando 10% a mais do valor de cada produto
SELECT
    venda_id,
    data_venda,
    produto_id,
    valor_unitario,
    valor_unitario * 1.1 AS valor_venda
FROM
    vendas_itens;


SELECT
    'Venda ' || venda_id || ', produto ' || produto_id AS "Descrição",
    valor_unitario
FROM
    vendas_itens
WHERE
    venda_id = 2001;


-- Precedências entre AND e OR
SELECT
    venda_id,
    produto_id,
    valor_unitario,
    data_venda
FROM
    vendas_itens
WHERE
    data_venda = '2025-09-01' OR data_venda = '2025-09-02' AND valor_unitario > 100;


SELECT
    venda_id,
    produto_id,
    valor_unitario,
    data_venda
FROM
    vendas_itens
WHERE
    (data_venda = '2025-09-01' OR data_venda = '2025-09-02') AND valor_unitario > 100;


SELECT
    venda_id,
    produto_id,
    valor_unitario,
    data_venda
FROM
    vendas_itens
WHERE
    --valor_unitario >= 50 AND valor_unitario <=100;
    valor_unitario BETWEEN 50 AND 100
ORDER BY
    valor_unitario DESC;

SELECT
    venda_id,
    produto_id,
    valor_unitario,
    data_venda
FROM
    vendas_itens
WHERE
    data_venda NOT BETWEEN '2025-09-01' AND '2025-09-03'
ORDER BY
    data_venda;

SELECT
    venda_id,
    produto_id,
    valor_unitario,
    data_venda
FROM
    vendas_itens
WHERE   
    produto_id IN (1, 3, 6) /*BUSCA POR INTERVALO*/
ORDER BY
    produto_id;

SELECT
    venda_id,
    produto_id,
    valor_unitario,
    data_venda
FROM
    vendas_itens
WHERE   
    produto_id NOT IN (1, 3, 6) /*BUSCA POR INTERVALO COMO SE FOSSE A SELECAO DE ARQUIVOS NA PASTA POR MEIO SO SHIFT*/
    --AND (data_venda = '2025-09-01' OR data_venda = '2025-09-10');
    AND (data_venda IN ('2025-09-01', '2025-09-10'));

SELECT
    venda_id,
    produto_id,
    valor_unitario,
    data_venda
FROM
    vendas_itens
WHERE   
    -- % QUALQUER SEQUENCIA DE CARACTERES 
    -- _ EXATAMENTE UM CARACTERE, QUALQUER QUE SEJA   
    --observacao LIKE 'entrega%';
    --observacao LIKE '%loja%';
    --observacao LIKE '_ntrega ex%'; --CARACTERE MAIUSCULO OU MINUSCULO
    --observacao LIKE '_entrega%';
    observacao NOT LIKE 'Entrega%';


--NULL 
SELECT 
    venda_id,
    observacao
FROM
    vendas_itens
WHERE
    --observacao IS NULL; --SELECIONA TODOS OS DADOS QUE SAO NULL 
    observacao NOT IN ('Entrega expressa') -- SELECIONA O INTERVALO Entrega expressa OU SEJA, NAO IRA MOSTRAR AS ENTREGAS EXPRESSAS
    OR observacao IS NULL; --TAMBEM BUSCARA TODOS OS VALORES NULL PARA QUE A PESQUISA SEJA MAIS COMPLETA

SELECT 
    venda_id,
    produto_id,
    COALESCE (observacao, 'Sua observacao') AS "observacao"
FROM 
    vendas_itens
WHERE 
    venda_id = 2001;

SELECT DISTINCT 
    valor_unitario
FROM
    vendas_itens
ORDER BY
    valor_unitario;

SELECT DISTINCT
    produto_id
FROM
    vendas_itens
ORDER BY
    produto_id;

SELECT
    venda_id,
    produto_id,
    valor_unitario
FROM
    vendas_itens
ORDER BY 
    valor_unitario DESC,
    venda_id ASC,
    produto_id ASC;

SELECT
    venda_id
    observacao
FROM
    vendas_itens
ORDER BY 
    observacao ASC NULLS FIRST;

SELECT
    venda_id,
    produto_id,
    valor_unitario
FROM
    vendas_itens
ORDER BY
    valor_unitario DESC,
    venda_id ASC,
    produto_id ASC
LIMIT 5 OFFSET 2; --LIMIT É O ATE QUANDO EU QUERO QUE APARECE E OFFSET E ATE QUAL EU NAO QUERO QUE APARECA

SELECT
    COUNT(*) AS itens,
    COUNT(observacao) AS itens_com_observacao,
    COUNT( DISTINCT venda_id) AS vendas,
    COUNT(DISTINCT produto_id) AS produtos,
    SUM(valor_unitario) AS soma,
    ROUND(AVG (valor_unitario), 2) AS "media", --ROUND COLOCA A QUANTIDADE DE CASAS DECIMAIS QUE VOCE QUISER 
    MIN(valor_unitario) AS menor_valor_unitario,
    MAX(valor_unitario) AS maior_valor_unitario
FROM
    vendas_itens;

SELECT
    venda_id,
    SUM(valor_unitario) AS valor_total,
    data_venda
FROM
    vendas_itens
GROUP BY
    venda_id, -- VAI SOMAR TODOS OS VALORES DE CADA VENDA
    data_venda

ORDER BY
    valor_total ASC; --VALOR TOTAL FOI CRIADO NO ALIAS 


SELECT
    produto_id,
    SUM(valor_unitario) AS valor_final, -- SUM = SOMA
    COUNT(*) AS vezes_vendido -- COUNT = QUANTOS PRODUTOS ELE DEVE OLHAR, (*) TODAS AS LINHAS
FROM
    vendas_itens
GROUP BY
    produto_id
ORDER BY
    valor_final DESC,
    vezes_vendido DESC; 

SELECT --QUARTO COMANDO REALIZANDO OQUE FOI PEDIDO
    venda_id,
    SUM(valor_unitario) AS valor_total,
    COUNT(*) AS itens

FROM -- COMECA NESTE COMANDO PROCURANDO A TABELA 
    vendas_itens

GROUP BY -- SEGUNDO COMANDO AGRUPANDO O GRUPO PEDIDO, NESTE CASO VENDA_ID
    venda_id

HAVING -- TERCEIRO FILTRANDO OQUE ESTA SENDO PEDIDO
    SUM(valor_unitario) > 400
ORDER BY 
    valor_total DESC; 

--WHERE FILTRA LINHAS HAVING FILTRA GRUPOS DE DADOS 

SELECT
    venda_id,
    COUNT(*) AS itens,
    SUM(valor_unitario) AS valor_total
FROM
    vendas_itens
GROUP BY
    venda_id
HAVING
    COUNT(*) >= 4
ORDER BY
    venda_id;