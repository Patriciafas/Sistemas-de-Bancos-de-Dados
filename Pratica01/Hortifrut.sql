-- Active: 1790003922555@@127.0.0.1@5432@bd_hortifruit@public
t@public
--CREATE DATA BATABASE bd_hortifruit
DROP TABLE IF EXISTS itens_venda;

CREATE TABLE itens_venda (
  
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    venda_id INTEGER NOT NULL,
    data_venda DATE NOT NULL,
    bairro_entrega TEXT,
    produto_id INTEGER NOT NULL,
    produto_nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    unidade TEXT NOT NULL,
    quantidade NUMERIC(10,3) NOT NULL,
    valor_unitario NUMERIC(10,2) NOT NULL
);

SELECT * FROM itens_venda;

INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
-- 2026-08-03, segunda-feira
(3001, '2026-08-03', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 1.235, 5.99),
(3001, '2026-08-03', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.874, 7.49),
(3001, '2026-08-03', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 2.99),
(3001, '2026-08-03', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 2.000, 2.50),
(3002, '2026-08-03', NULL, 6, 'Batata', 'Legume', 'Kg', 2.140, 4.99),
(3002, '2026-08-03', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.965, 5.19),
(3003, '2026-08-03', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 2.000, 7.90),
(3003, '2026-08-03', 'Centro', 2, 'Laranja pera', 'Fruta', 'Kg', 3.180, 3.79),
(3003, '2026-08-03', 'Centro', 8, 'Cenoura', 'Legume', 'Kg', 1.020, 4.29),
-- 2026-08-04, terca-feira
(3004, '2026-08-04', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.460, 7.49),
(3004, '2026-08-04', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.785, 4.49),
(3004, '2026-08-04', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.00),
(3005, '2026-08-04', NULL, 4, 'Morango', 'Fruta', 'UN', 2.000, 9.90),
(3006, '2026-08-04', 'Lagoinha', 1, 'Banana prata', 'Fruta', 'Kg', 2.310, 5.99),
(3006, '2026-08-04', 'Lagoinha', 6, 'Batata', 'Legume', 'Kg', 1.505, 4.99),
(3006, '2026-08-04', 'Lagoinha', 10, 'Alface crespa', 'Verdura', 'UN', 2.000, 2.99),
(3006, '2026-08-04', 'Lagoinha', 12, 'Cheiro-verde', 'Verdura', 'UN', 1.000, 2.50),
-- 2026-08-05, quarta-feira
(3007, '2026-08-05', NULL, 2, 'Laranja pera', 'Fruta', 'Kg', 2.450, 3.49),
(3007, '2026-08-05', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.635, 7.99),
(3008, '2026-08-05', NULL, 8, 'Cenoura', 'Legume', 'Kg', 0.780, 4.39),
(3008, '2026-08-05', NULL, 9, 'Cebola', 'Legume', 'Kg', 1.215, 5.19),
(3008, '2026-08-05', NULL, 11, 'Couve', 'Verdura', 'UN', 2.000, 3.00),
(3009, '2026-08-05', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 7.50),
(3009, '2026-08-05', 'Centro', 4, 'Morango', 'Fruta', 'UN', 1.000, 9.49),
(3009, '2026-08-05', 'Centro', 1, 'Banana prata', 'Fruta', 'Kg', 1.890, 6.29),
-- 2026-08-06, quinta-feira
(3010, '2026-08-06', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 0.925, 4.79),
(3010, '2026-08-06', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 3.29),
(3011, '2026-08-06', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.975, 8.49),
(3011, '2026-08-06', NULL, 6, 'Batata', 'Legume', 'Kg', 3.020, 5.29),
(3011, '2026-08-06', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 3.000, 2.50),
(3012, '2026-08-06', 'Planalto', 2, 'Laranja pera', 'Fruta', 'Kg', 4.060, 3.49),
(3012, '2026-08-06', 'Planalto', 8, 'Cenoura', 'Legume', 'Kg', 1.340, 4.39),
-- 2026-08-07, sexta-feira
(3013, '2026-08-07', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 0.965, 6.49),
(3013, '2026-08-07', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.540, 5.49),
(3013, '2026-08-07', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.50),
(3014, '2026-08-07', 'Lagoinha', 4, 'Morango', 'Fruta', 'UN', 3.000, 8.90),
(3014, '2026-08-07', 'Lagoinha', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 6.99),
-- 2026-08-08, sabado
(3015, '2026-08-08', NULL, 6, 'Batata', 'Legume', 'Kg', 1.250, 5.49),
(3016, '2026-08-08', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.115, 8.99),
(3016, '2026-08-08', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.360, 4.79);

INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
  categoria, unidade, quantidade, valor_unitario)
VALUES
(3017,'2026-08-08', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.340, 8.99),
(3017, '2026-08-08', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 2.000, 3.49),
(3017, '2026-08-08', NULL, 4, 'Morango', 'Fruta', 'UN', 1.000, 9.90);

SELECT * FROM itens_venda;

SELECT COUNT(*) AS total_linhas FROM itens_venda;

SELECT DISTINCT /*Lista os produtos sem repetição (DISTINCT), ordenados por categoria e nome.*/
    produto_id,
    produto_nome,
    categoria,
    unidade
FROM
    itens_venda
ORDER BY
    categoria,
    produto_nome;

SELECT
    venda_id,
    produto_nome,
    valor_unitario
FROM
    itens_venda
WHERE
    categoria IN ('Legume', 'Verdura')
    AND valor_unitario BETWEEN 3.00 AND 5.00 /*Filtra legumes e verduras com preço entre 3 e 5 (IN e BETWEEN).*/
ORDER BY
    valor_unitario DESC,
    venda_id ASC;

SELECT
    venda_id,
    data_venda,
    produto_nome,
    quantidade
FROM
    itens_venda
WHERE
    produto_nome LIKE /*COMO*/ 'Batata%' /*Busca produtos que começam com "Batata" (LIKE 'Batata%').*/
ORDER BY
    data_venda,
    venda_id;

SELECT DISTINCT 
    venda_id,
    data_venda,
    bairro_entrega
FROM
    itens_venda
WHERE
    bairro_entrega IS NOT NULL /*Lista as vendas com entrega (IS NOT NULL), sem repetição.*/
ORDER BY
    venda_id;


SELECT
    venda_id,
    produto_nome,
    quantidade,
    unidade,
    valor_unitario,
    ROUND(quantidade * valor_unitario, 2) AS valor_item 
FROM
    itens_venda
ORDER BY
    valor_item DESC,
    venda_id ASC,
    produto_id ASC
LIMIT 5 OFFSET 5; /*Calcula o valor de cada item e mostra as linhas 6 a 10 (LIMIT 5 OFFSET 5).*/


-- Consulta 6
-- Resumo por venda: destino, quantidade de itens e valor total.
SELECT
    venda_id,
    data_venda,
    COALESCE(bairro_entrega, 'Retirada no balcao') AS destino,
    COUNT(*) AS itens, /*CMostra por venda o destino, a quantidade de itens e o total. 
    O COALESCE troca NULL por "Retirada no balcao".*/
    ROUND(SUM(quantidade * valor_unitario), 2) AS valor_total
FROM
    itens_venda
GROUP BY
    venda_id,
    data_venda,
    bairro_entrega
ORDER BY
    valor_total DESC;

-- Resumo por dia.
SELECT
    data_venda,
    COUNT(DISTINCT venda_id) AS vendas,
    COUNT(*) AS itens,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM
    itens_venda
GROUP BY
    data_venda
ORDER BY
    data_venda;

-- Resumo por produto.
SELECT
    produto_id,
    produto_nome,
    unidade,
    SUM(quantidade) AS qtd_total,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento,
    ROUND(AVG(valor_unitario), 2) AS media_simples,
    ROUND(SUM(quantidade * valor_unitario) / SUM(quantidade), 2) AS media_ponderada
FROM
    itens_venda
GROUP BY
    produto_id,
    produto_nome,
    unidade
ORDER BY
    faturamento DESC;

-- Resumo por categoria. 
SELECT /*Mostra por categoria e unidade os itens, a quantidade e o faturamento. 
Separa Kg de UN para não somar unidades diferentes.*/
    categoria,
    unidade,
    COUNT(*) AS itens,
    SUM(quantidade)  AS qtd_total,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM
    itens_venda
GROUP BY
    categoria,
    unidade
ORDER BY
    categoria,
    unidade;


-- Bairros (somente vendas com entrega) com faturamento acima de 40.00.
SELECT /*Mostra por bairro as entregas e o faturamento, só dos bairros acima de R$ 40 
(WHERE filtra linhas, HAVING filtra grupos).*/
    bairro_entrega,
    COUNT(DISTINCT venda_id) AS entregas,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM
    itens_venda
WHERE
    bairro_entrega IS NOT NULL
GROUP BY
    bairro_entrega
HAVING
    SUM(quantidade * valor_unitario) > 40.00
ORDER BY
    faturamento DESC;


-- Vendas em que arredondar o total difere de somar os itens*/
SELECT
    venda_id,
    ROUND(SUM(quantidade * valor_unitario), 2) AS total_arredondado,
    SUM(ROUND(quantidade * valor_unitario, 2)) AS soma_dos_itens_arredondados
FROM
    itens_venda
GROUP BY
    venda_id
HAVING
    ROUND(SUM(quantidade * valor_unitario), 2)
    <> SUM(ROUND(quantidade * valor_unitario, 2))
ORDER BY
    venda_id;


--SCRIPT:
/*BANCO DE DADOS:

A tabela itens_venda representa os itens de cada venda.

- id:
  Identificador único. Usa IDENTITY para gerar o valor
  automaticamente e PRIMARY KEY para garantir unicidade.

- venda_id:
  Identifica a venda à qual o item pertence. É NOT NULL porque todo item
  precisa estar associado a uma venda.

- data_venda:
  Armazena a data da venda. DATE é suficiente porque não foi informado
  horário. É NOT NULL porque toda venda precisa ter uma data.

- bairro_entrega:
  Armazena o bairro quando existe entrega. Pode ser NULL porque algumas
  vendas são retiradas no balcão.

- produto_id:
  Identifica o produto. É NOT NULL porque todo item vendido precisa ter
  um produto associado.

- produto_nome:
  Armazena o nome do produto. É NOT NULL porque o produto precisa ser
  identificado no registro.

- categoria:
  Identifica se o produto é Fruta, Legume ou Verdura. É NOT NULL.

- unidade:
  Informa a unidade de venda, como Kg ou UN. É NOT NULL e é importante
  para interpretar corretamente a quantidade.

- quantidade:
  Armazena a quantidade vendida. NUMERIC(10,3) permite até três casas
  decimais, necessárias para produtos vendidos por peso. É NOT NULL.

- valor_unitario:
  Armazena o preço unitário. NUMERIC(10,2) é adequado para valores
  monetários com duas casas decimais. É NOT NULL;

-- Limpa a tabela caso ela já exista.
DROP TABLE IF EXISTS itens_venda;

CREATE TABLE itens_venda (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    venda_id INTEGER NOT NULL,
    data_venda DATE NOT NULL,
    bairro_entrega TEXT,
    produto_id INTEGER NOT NULL,
    produto_nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    unidade TEXT NOT NULL,
    quantidade NUMERIC(10,3) NOT NULL,
    valor_unitario NUMERIC(10,2) NOT NULL
);

2. CARGA INICIAL DOS DADOS

INSERT INTO itens_venda
    (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
     categoria, unidade, quantidade, valor_unitario)
VALUES definidos na atividade

3. CONFERÊNCIA DA CARGA

-- Conferência visual:
SELECT * FROM itens_venda;

-- Conferência da quantidade de linhas:
SELECT COUNT(*) AS total_linhas FROM itens_venda;
-- Resultado esperado: 40 linhas antes da venda 3017.

4. INSERÇÃO DA VENDA 3017

INSERT INTO itens_venda
    (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
     categoria, unidade, quantidade, valor_unitario)
VALUES da venda 3017

-- Nova conferência:
SELECT * FROM itens_venda WHERE venda_id = 3017;

SELECT COUNT(*) AS total_linhas_apos_3017
FROM itens_venda;
-- Resultado esperado: 43 linhas.

5. AS ONZE CONSULTAS

-- CONSULTA 1
-- Lista os produtos sem repetição, ordenados por categoria e nome.
SELECT DISTINCT
    produto_id,
    produto_nome,
    categoria,
    unidade
FROM itens_venda
ORDER BY categoria, produto_nome;

-- RESPOSTA 1:
-- São encontrados 12 produtos distintos:
-- Frutas: Abacaxi, Banana prata, Laranja pera e Morango.
-- Legumes: Batata, Batata-doce, Cebola, Cenoura e Tomate.
-- Verduras: Alface crespa, Cheiro-verde e Couve.


-- CONSULTA 2
-- Filtra legumes e verduras com preço entre R$ 3,00 e R$ 5,00.
SELECT
    venda_id,
    produto_nome,
    valor_unitario
FROM itens_venda
WHERE categoria IN ('Legume', 'Verdura')
  AND valor_unitario BETWEEN 3.00 AND 5.00
ORDER BY valor_unitario DESC, venda_id ASC;

-- RESPOSTA 2:
-- A consulta retorna os registros de legumes e verduras cujo preço
-- unitário está entre R$ 3,00 e R$ 5,00, inclusive.


-- CONSULTA 3
-- Busca produtos que começam com "Batata".
SELECT
    venda_id,
    data_venda,
    produto_nome,
    quantidade
FROM itens_venda
WHERE produto_nome LIKE 'Batata%'
ORDER BY data_venda, venda_id;

-- RESPOSTA 3:
-- Aparecem os produtos Batata e Batata-doce.
-- A consulta retorna 7 registros.


-- CONSULTA 4
-- Lista as vendas que possuem entrega, sem repetir a venda.
SELECT DISTINCT
    venda_id,
    data_venda,
    bairro_entrega
FROM itens_venda
WHERE bairro_entrega IS NOT NULL
ORDER BY venda_id;

-- RESPOSTA 4:
-- Há 5 vendas com entrega:
-- 3003 Centro
-- 3006 Lagoinha
-- 3009 Centro
-- 3012 Planalto
-- 3014 Lagoinha


-- CONSULTA 5
-- Calcula o valor de cada item e mostra as linhas 6 a 10 do ranking.
SELECT
    venda_id,
    produto_nome,
    quantidade,
    unidade,
    valor_unitario,
    ROUND(quantidade * valor_unitario, 2) AS valor_item
FROM itens_venda
ORDER BY valor_item DESC, venda_id ASC, produto_id ASC
LIMIT 5 OFFSET 5;

-- RESPOSTA 5:
-- As cinco linhas retornadas são:
-- 3012 Laranja pera     R$ 14,17
-- 3006 Banana prata     R$ 13,84
-- 3003 Laranja pera     R$ 12,05
-- 3017 Tomate           R$ 12,05
-- 3009 Banana prata     R$ 11,89


-- CONSULTA 6
-- Resumo por venda: destino, quantidade de itens e valor total.
SELECT
    venda_id,
    data_venda,
    COALESCE(bairro_entrega, 'Retirada no balcao') AS destino,
    COUNT(*) AS itens,
    ROUND(SUM(quantidade * valor_unitario), 2) AS valor_total
FROM itens_venda
GROUP BY venda_id, data_venda, bairro_entrega
ORDER BY valor_total DESC;

-- RESPOSTA 6:
-- A maior venda é a 3011, com 3 itens e total de R$ 40,24.
-- A venda 3017 possui 3 itens e total de R$ 28,93, com retirada no balcão.


-- CONSULTA 7
-- Resumo por dia.
SELECT
    data_venda,
    COUNT(DISTINCT venda_id) AS vendas,
    COUNT(*) AS itens,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM itens_venda
GROUP BY data_venda
ORDER BY data_venda;

-- RESPOSTA 7:
-- 2026-08-03: 3 vendas, 9 itens, R$ 69,85
-- 2026-08-04: 3 vendas, 8 itens, R$ 71,58
-- 2026-08-05: 3 vendas, 8 itens, R$ 58,23
-- 2026-08-06: 3 vendas, 7 itens, R$ 68,02
-- 2026-08-07: 2 vendas, 5 itens, R$ 46,42
-- 2026-08-08: 3 vendas, 6 itens, R$ 52,33


-- CONSULTA 8
-- Resumo por produto.
SELECT
    produto_id,
    produto_nome,
    unidade,
    SUM(quantidade) AS qtd_total,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento,
    ROUND(AVG(valor_unitario), 2) AS media_simples,
    ROUND(SUM(quantidade * valor_unitario) / SUM(quantidade), 2) AS media_ponderada
FROM itens_venda
GROUP BY produto_id, produto_nome, unidade
ORDER BY faturamento DESC;

-- RESPOSTA 8:
-- O produto com maior faturamento é Morango: R$ 65,89.
-- Depois aparecem Tomate: R$ 61,39 e Batata: R$ 41,03.


-- CONSULTA 9
-- Resumo por categoria e unidade.
SELECT
    categoria,
    unidade,
    COUNT(*) AS itens,
    SUM(quantidade) AS qtd_total,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM itens_venda
GROUP BY categoria, unidade
ORDER BY categoria, unidade;

-- RESPOSTA 9:
-- Fruta/Kg: 7 itens, 16,09 Kg, R$ 74,16
-- Fruta/UN: 7 itens, 11 UN, R$ 96,18
-- Legume/Kg: 19 itens, 25,244 Kg, R$ 149,34
-- Verdura/UN: 10 itens, 16 UN, R$ 46,74


-- CONSULTA 10
-- Bairros com entrega e faturamento acima de R$ 40,00.
SELECT
    bairro_entrega,
    COUNT(DISTINCT venda_id) AS entregas,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM itens_venda
WHERE bairro_entrega IS NOT NULL
GROUP BY bairro_entrega
HAVING SUM(quantidade * valor_unitario) > 40.00
ORDER BY faturamento DESC;

-- RESPOSTA 10:
-- Lagoinha: 2 entregas, R$ 63,52
-- Centro: 2 entregas, R$ 61,11
-- Planalto não aparece porque seu faturamento não ultrapassa R$ 40,00.


-- CONSULTA 11
-- Identifica vendas em que arredondar o total é diferente de somar
-- os valores dos itens já arredondados.
SELECT
    venda_id,
    ROUND(SUM(quantidade * valor_unitario), 2) AS total_arredondado,
    SUM(ROUND(quantidade * valor_unitario, 2)) AS soma_dos_itens_arredondados
FROM itens_venda
GROUP BY venda_id
HAVING ROUND(SUM(quantidade * valor_unitario), 2)
       <> SUM(ROUND(quantidade * valor_unitario, 2))
ORDER BY venda_id;

-- RESPOSTA 11:
-- As vendas que apresentam diferença são:
-- 3001: total arredondado R$ 21,93; soma dos itens arredondados R$ 21,94
-- 3011: total arredondado R$ 40,24; soma dos itens arredondados R$ 40,25
-- 3013: total arredondado R$ 12,73; soma dos itens arredondados R$ 12,72
-- 3016: total arredondado R$ 16,54; soma dos itens arredondados R$ 16,53*/