-- Inserindo Usuários
INSERT INTO USUARIOS (usu_nome, usu_email, usu_senha, usu_steamid, usu_saldo, usu_pix, usu_cpf, usu_adm) VALUES
('João Silva', 'joao@email.com', 'senha123', 'STEAM_123456', 100.00, 'joao@pix.com', '123.456.789-01', FALSE),
('Maria Oliveira', 'maria@email.com', 'senha456', 'STEAM_654321', 250.50, 'maria@pix.com', '987.654.321-00', FALSE),
('Admin Master', 'admin@email.com', 'admin123', 'STEAM_111111', 500.00, 'admin@pix.com', '111.222.333-44', TRUE);

-- Inserindo Skins
INSERT INTO SKINS (usu_id, skin_nome, skin_cond, skin_preco, skin_img, skin_status, skin_float) VALUES
(1, 'AK-47 | Redline', 'Field-Tested', 75.00, 'ak_redline.png', 'disponível', 0.256),
(1, 'AWP | Asiimov', 'Battle-Scarred', 150.00, 'awp_asiimov.png', 'disponível', 0.750),
(2, 'M4A4 | Howl', 'Minimal Wear', 1000.00, 'm4a4_howl.png', 'reservado', 0.120),
(2, 'Glock-18 | Fade', 'Factory New', 500.00, 'glock_fade.png', 'vendido', 0.010);

-- Inserindo Transações
INSERT INTO TRANSACOES (usu_id, skin_id, trans_valor, trans_status) VALUES
(2, 1, 75.00, 'pendente'),   -- Maria comprando skin do João
(1, 3, 1000.00, 'concluído'), -- João comprando skin da Maria
(3, 2, 150.00, 'cancelado');  -- Admin tentou comprar AWP

-- Inserindo Ocorrências
INSERT INTO OCORRENCIAS (trans_id, oco_valor, oco_situacao) VALUES
(1, 75.00, 'Aguardando pagamento PIX'),
(2, 1000.00, 'Pagamento confirmado'),
(3, 150.00, 'Transação cancelada por falta de saldo');

-- Inserindo Avaliações
INSERT INTO AVALIACOES (usu_id, av_nota, av_comentario, av_moderacao) VALUES
(1, 5, 'Ótima experiência, vendedor rápido!', FALSE),
(2, 4, 'Boa negociação, mas demorou um pouco.', FALSE),
(3, 3, 'Sistema precisa melhorar.', TRUE);
