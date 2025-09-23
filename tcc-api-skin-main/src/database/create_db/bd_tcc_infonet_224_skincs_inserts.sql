INSERT INTO usuarios 
(usu_id, usu_nome, usu_email, usu_senha, usu_steamid, usu_saldo, usu_pix, usu_cpf, usu_adm)
VALUES
(1, 'João Silva', 'joao.silva@example.com', 'senha123', 'STEAM_111111111', 150.75, 'joaosilva@pix.com', '12345678901', 0),
(2, 'Maria Oliveira', 'maria.oliveira@example.com', 'senha456', 'STEAM_222222222', 300.00, 'mariaoliveira@pix.com', '12345678902', 0),
(3, 'ADMIN', 'ADMIN.santos@example.com', '123', 'ADMIN_333333333', 50.00, 'ADMIN@pix.com', '12345678903', 1);


INSERT INTO skins
(skin_id, usu_id, skin_nome, skin_cond, skin_preco, skin_data, skin_img, skin_status, skin_float)
VALUES
(1, 1, 'AK-47 | Redline', 'Bem Usada', 25000, '2025-09-01', 'ak47_redline.jpg', 'disponível', 000.10),
(2, 2, 'M4A1-S | Hyper Beast', 'Nova de Caixa', 32050, '2025-09-03', 'm4a1_hyperbeast.jpg', 'vendido', 000.03),
(3, 3, 'AWP | Dragon Lore', 'Pouco Usada', 150000, '2025-09-05', 'awp_dragonlore.jpg', 'reservado', 000.08);

INSERT INTO avaliacoes 
(av_id, usu_id, av_nota, av_comentario, av_moderacao) 
VALUES
(1, 1, 5, 'Ótimo usuário, negociação rápida e sem problemas.', 1),
(2, 2, 4, 'Boa experiência, apenas um pequeno atraso no pagamento.', 1),
(3, 3, 3, 'Negociação razoável, poderia ter sido mais clara.', 0),
(4, 4, 5, 'Excelente! Tudo conforme combinado.', 1),
(5, 5, 2, 'Não recomendo, tive problemas durante a transação.', 0);


INSERT INTO transacoes (trans_id, usu_id, skin_id, trans_valor, trans_status, trans_data)
VALUES
(201, 1, 1, 150.00, 'Concluída', '2025-09-01 15:00:00'),
(202, 2, 2, 320.50, 'Pendente', '2025-09-03 10:20:00'),
(203, 3, 3, 75.25,  'Cancelada', '2025-09-05 18:45:00');



INSERT INTO ocorrencias
(oco_id, trans_id, oco_valor, oco_situacao, oco_data)
VALUES
(1, 201, 250.00, 'Pendente', '2025-09-01 14:32:00'),
(2, 202, 500.50, 'Concluída', '2025-09-05 09:10:00'),
(3, 203, 75.25, 'Cancelada', '2025-09-07 18:45:00');