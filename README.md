# SQL_ESTUDOS
 
CREATE DATABASE nomeBanco; # cria banco de dados

CREATE TABLE IF NOT EXISTS nomeTabela;

CREATE TABLE nomeTabela(
    nome_campo tipoCampo
); # cria uma tabela

Tipos primitivos:
    - Numéricos: Inteiros, Real, Logico;
    - Data/Tempo;
    - Literal: Caractere, texto, binário, coleção;
    - Espacial;

DESCRIBE nomeTabela; ou DESC nomeTabela; #descreve as colunas da tabela

INSERT INTO nomeTabela
(nome_campos)
VALUES
(valores); #insere as infos nos campos

ou 

INSERT INTO nomeTabela VALUES
(valores); #tem que estar na ordem correta

SELECT * FROM nomeTabela; #returna os valores dos campos

ALTER TABLE nomeTabela
ADD COLUMN nome_coluna tipo campo; #adicionar uma coluna, da pra adicionar AFTER nome_coluna antes do ponto e virgula para mudar a posição da coluna.

ALTER TABLE nomeTabela
DROP COLUMN nome_coluna

ALTER TABLE nomeTabela
MODIFY COLUMN nome_coluna alteração;

DROP nomeTabela;

DROP TABLE IF EXISTS nomeTabela;

UPDATE nomeTabela
SET campo = ''
WHERE coluna = ''; #Encontra e modifica dados
LIMIT quantaslinhas; #limita a quantidade de linhas que serão manipuladas

DELETE FROM nomeTabela
WHERE campo = '';
LIMIT quantaslinhas;

TRUNCATE TABLE nomeTabela;

SELECT * FROM nomeTabela
ORDER BY campo; #asc -> traz de forma crescente; desc -> traz de forma decrescente
