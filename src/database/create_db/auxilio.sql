-- Comandos para excluir todas as tabelas
DROP TABLE IF EXISTS OCORRENCIAS;
DROP TABLE IF EXISTS TRANSACOES;
DROP TABLE IF EXISTS SKINS;
DROP TABLE IF EXISTS AVALIACOES;
DROP TABLE IF EXISTS USUARIOS;

-- Listagem de todos os itens de cada tabela
SELECT * FROM USUARIOS;
SELECT * FROM SKINS;
SELECT * FROM TRANSACOES;
SELECT * FROM OCORRENCIAS;
SELECT * FROM AVALIACOES;

-- Listagem com INNER JOIN para tabelas com chave estrangeira
-- Skins com nome do usuário
SELECT s.skin_id, s.skin_nome, s.skin_cond, s.skin_preco, s.skin_data, s.skin_img, s.skin_status, s.skin_float, u.usu_nome AS usuario
FROM SKINS s
INNER JOIN USUARIOS u ON s.usu_id = u.usu_id;

-- Transações com nome do usuário e nome da skin
SELECT t.trans_id, u.usu_nome AS usuario, s.skin_nome AS skin, t.trans_valor, t.trans_status, t.trans_data
FROM TRANSACOES t
INNER JOIN USUARIOS u ON t.usu_id = u.usu_id
INNER JOIN SKINS s ON t.skin_id = s.skin_id;

-- Ocorrências com dados da transação, usuário e skin
SELECT o.oco_id, t.trans_id, u.usu_nome AS usuario, s.skin_nome AS skin, o.oco_valor, o.oco_situacao, o.oco_data
FROM OCORRENCIAS o
INNER JOIN TRANSACOES t ON o.trans_id = t.trans_id
INNER JOIN USUARIOS u ON t.usu_id = u.usu_id
INNER JOIN SKINS s ON t.skin_id = s.skin_id;

-- Avaliações com nome do usuário
SELECT a.av_id, u.usu_nome AS usuario, a.av_nota, a.av_comentario, a.av_moderacao
FROM AVALIACOES a
INNER JOIN USUARIOS u ON a.usu_id = u.usu_id;
