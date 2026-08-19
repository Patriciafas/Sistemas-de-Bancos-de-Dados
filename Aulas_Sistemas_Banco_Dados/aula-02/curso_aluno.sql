-- Active: 1787100679749@@127.0.0.1@5432@bd_aula@public
CREATE TABLE curso(
    id_curso INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE aluno(
    id_aluno INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    id_curso INTEGER NOT NULL REFERENCES curso(id_curso)
);

SELECT * FROM curso;
SELECT * FROM aluno;

INSERT INTO curso (nome) VALUES
('Sistemas de Informacao'),
('Administracao'),
('Direito'),
('Ciencia da Computacao');


INSERT INTO aluno (nome, id_curso) VALUES
('Ana Beatriz Souza', 1),
('Carlos Henrique Lima', 1),
('Daniela Martins', 2),
('Eduardo Pereira', 3),
('Fernanda Rocha', 1);

SELECT /*SELECIONAR QUAL*/
    id_aluno,
    nome,
    id_curso
FROM /*ONDE VAI BUSCAR*/
    aluno
ORDER BY
    id_aluno ASC;




SELECT table_name,
    column_name,
       data_type,
       character_maximum_length AS tamanho,
       is_nullable              AS aceita_nulo,
       is_identity              AS e_identidade
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name IN ('curso', 'aluno')
ORDER BY table_name, ordinal_position;


SELECT indexname, indexdef FROM pg_indexes WHERE tablename = 'curso'; /*CONFERIR SE ESTA TUDO OK*/

SELECT /*SELECIONAR*/
    nome,
    id_curso
FROM /*DE*/
    aluno
WHERE /*ONDE*/
    id_curso = 1  
ORDER BY /*ORDENE POR*/
    nome DESC; /*DECRESCENTE*/


SELECT
    c.nome AS curso,
    c.id_Curso
FROM
    curso c
WHERE
    nome = 'Sistemas de Informacao';


SELECT
    a.nome AS aluno, /*NA TABELA VAI TROCAR A PALAVRA NOME POR ALUNO*/
    c.nome AS curso
FROM
    aluno a
    JOIN /*RELACIONAMENTO DE ALUNO COM CURSO COMO REPRESENTADO NO GRAFICO DE DRAWIO (relaciona as tabelas)*/
        curso c 
    ON /*CRIANDO CONEXAO ENTRE O ID CURSO E ID ALUNO E O SELECT IRA FALAR OQUE ELE QUER QUE APARECA NA TABELA CONFORME O COMANDO DADO PELO FROM JOIN E ON (PRIMARYKEY E CHAVE ESTRANGEIRA)*/
        c.id_curso = a.id_curso; 
ORDER BY
    c.nome;

SELECT 
    c.nome AS curso,
    COUNT(a.id_aluno) AS qtd_alunos
FROM
    curso c 
    JOIN
        aluno a 
    ON
        a.id_curso = c.id_curso
GROUP BY
    c.nome;
ORDER BY
    qtd_alunos;


/*DEVIDO AO RELACIONAMENTO DE CURSO COM ALUNO FEITA PEPLO JOIN ELE PODERA NOS RETORNAR QUANTOS ALUNOS TEM EM CADA CURSO
"." METODO DE BUSCA
NESTE CASO ESTAMOS REFERENCIANDO AO COUNT(QUE FAZ O CALCULO) O CURSO, POIS VEDNOPELO ID CUROS QUE IREMOS SABER QUANTOS ALUNOS TEMOS EM CADA CURSO
ISTO E POSSIVEL DEVIDO AO RELACIONAMENTO CRIADO COM O COMANDO JOIN
O COUNT SO SABE QUE DEVE FAZER UMA CONTAGEM POR CAUSA DO GROUP BY PQ ELE PEDE PARA AGRUPAR O C (CURSO) AO NOME, ENTAO ELE IRA AGRUPAR TODOS OS NOMES EXISTENTES NO CURSO*/


