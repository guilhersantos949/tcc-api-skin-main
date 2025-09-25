INSERT INTO usuarios 
(usu_id, usu_nome, usu_email, usu_senha, usu_steamid, usu_saldo, usu_pix, usu_cpf, usu_adm, usu_img)
VALUES
(1, 'guilherme', 'guilherme@example.com', 'senha123', 'STEAM_111111111', 150.75, 'guilherme@pix.com', '12345678901', 1, 'img-perfil-1.jpeg'),
(2, 'gustavo', 'gustavo@example.com', 'senha456', 'STEAM_222222222', 300.00, 'gustavo@pix.com', '12345678902', 1, 'img-perfil-2.jpeg');


INSERT INTO skins
(skin_id, usu_id, skin_nome, skin_cond, skin_preco, skin_data, skin_img, skin_status, skin_float)
VALUES
(1, 1, 'AK-47 | Redline', 'Bem Usada', 129.99, '2025-09-23', '/skins/ak-red.png', 'disponível', 0.10),
(2, 2, 'AK-47 | Nightwish', 'Bem Usada', 129.99, '2025-09-23', '/skins/AK-47 Nightwish.png', 'disponível', 0.10),
(3, 1, 'AK-47 | Wild Lotus', 'Bem Usada', 129.99, '2025-09-23', '/skins/Wild Lotus.png', 'disponível', 0.10),
(4, 2, 'AK-47 | Frontside Misty', 'Bem Usada', 129.99, '2025-09-23', '/skins/Frontside Misty.png', 'disponível', 0.10),
(5, 1, 'AK-47 | Neon Rider', 'Bem Usada', 129.99, '2025-09-23', '/skins/Neon Rider.png', 'disponível', 0.10),
(6, 2, 'AK-47 | Neon Revolution', 'Bem Usada', 129.99, '2025-09-23', '/skins/Neon Revolution.png', 'disponível', 0.10),
(7, 1, 'AK-47 | Case Hardened', 'Bem Usada', 129.99, '2025-09-23', '/skins/Case Hardened.png', 'disponível', 0.10),
(8, 2, 'AK-47 | Gold Arabesque', 'Bem Usada', 129.99, '2025-09-23', '/skins/Gold Arabesque.png', 'disponível', 0.10),
(9, 1, 'AWP | Asiimov', 'Bem Usada', 349.90, '2025-09-23', '/skins/awp-assimov.png', 'disponível', 0.10),
(10, 2, 'AWP | Chromatic Aberration', 'Bem Usada', 349.90, '2025-09-23', '/skins/Chromatic Aberration.png', 'disponível', 0.10),
(11, 1, 'AWP | Atheris', 'Bem Usada', 349.90, '2025-09-23', '/skins/Atheris.png', 'disponível', 0.10),
(12, 2, 'AWP | CMYK', 'Bem Usada', 349.90, '2025-09-23', '/skins/CMYK.png', 'disponível', 0.10),
(13, 1, 'AWP | Hyper Beast', 'Bem Usada', 349.90, '2025-09-23', '/skins/Hyper Beast.png', 'disponível', 0.10),
(14, 2, 'AWP | Neo-Noir', 'Bem Usada', 349.90, '2025-09-23', '/skins/Neo-Noir.png', 'disponível', 0.10),
(15, 1, 'AWP | Fever Dream', 'Bem Usada', 349.90, '2025-09-23', '/skins/Fever Dream.png', 'disponível', 0.10),
(16, 2, 'AWP | Oni Taiji', 'Bem Usada', 349.90, '2025-09-23', '/skins/Oni Taiji.png', 'disponível', 0.10),
(17, 1, 'M4A1-S | Hyper Beast', 'Bem Usada', 229.50, '2025-09-23', '/skins/m4a1.png', 'disponível', 0.10),
(18, 2, 'M4A1-S | Stratosphere', 'Bem Usada', 229.50, '2025-09-23', '/skins/Stratosphere.png', 'disponível', 0.10),
(19, 1, 'M4A1-S | Decimator', 'Bem Usada', 229.50, '2025-09-23', '/skins/Decimator.png', 'disponível', 0.10),
(20, 2, 'M4A1-S | Black Lotus', 'Bem Usada', 229.50, '2025-09-23', '/skins/Black Lotus.png', 'disponível', 0.10),
(21, 1, 'M4A1-S | Vaporwave', 'Bem Usada', 229.50, '2025-09-23', '/skins/Vaporwave.png', 'disponível', 0.10),
(22, 2, 'M4A1-S | Solitude', 'Bem Usada', 229.50, '2025-09-23', '/skins/Solitude.png', 'disponível', 0.10),
(23, 1, 'M4A1-S | Icarus Fell', 'Bem Usada', 229.50, '2025-09-23', '/skins/Icarus Fell.png', 'disponível', 0.10),
(24, 2, 'M4A1-S | Moss Quartz', 'Bem Usada', 229.50, '2025-09-23', '/skins/Moss Quartz.png', 'disponível', 0.10),
(25, 1, 'M4A4 | Temukau', 'Bem Usada', 99.90, '2025-09-23', '/skins/M4A4-Temukau.png', 'disponível', 0.10),
(26, 2, 'M4A4 | In Living Color', 'Bem Usada', 99.90, '2025-09-23', '/skins/In Living Color.png', 'disponível', 0.10),
(27, 1, 'M4A4 | Bullet Rain', 'Bem Usada', 99.90, '2025-09-23', '/skins/Bullet Rain.png', 'disponível', 0.10),
(28, 2, 'M4A4 | Converter', 'Bem Usada', 99.90, '2025-09-23', '/skins/Converter.png', 'disponível', 0.10),
(29, 1, 'M4A4 | Desolate Space', 'Bem Usada', 99.90, '2025-09-23', '/skins/Desolate Space.png', 'disponível', 0.10),
(30, 2, 'M4A4 | Neo-Noir', 'Bem Usada', 99.90, '2025-09-23', '/skins/Neo-Noir2.png', 'disponível', 0.10),
(31, 1, 'M4A4 | Radiation Hazard', 'Bem Usada', 99.90, '2025-09-23', '/skins/Radiation Hazard.png', 'disponível', 0.10),
(32, 2, 'M4A4 | Howl', 'Bem Usada', 99.90, '2025-09-23', '/skins/Howl.png', 'disponível', 0.10),
(33, 1, 'MAC-10 | Sakkaku', 'Bem Usada', 149.00, '2025-09-23', '/skins/MAC-10-Sakkaku.png', 'disponível', 0.10),
(34, 2, 'MAC-10 | Light Box', 'Bem Usada', 149.00, '2025-09-23', '/skins/Light Box.png', 'disponível', 0.10),
(35, 1, 'MAC-10 | Heat', 'Bem Usada', 149.00, '2025-09-23', '/skins/Heat.png', 'disponível', 0.10),
(36, 2, 'MAC-10 | Pipe Down', 'Bem Usada', 149.00, '2025-09-23', '/skins/Pipe Down.png', 'disponível', 0.10),
(37, 1, 'MAC-10 | Ensnared', 'Bem Usada', 149.00, '2025-09-23', '/skins/Ensnared.png', 'disponível', 0.10),
(38, 2, 'MAC-10 | Disco Tech', 'Bem Usada', 149.00, '2025-09-23', '/skins/Disco Tech.png', 'disponível', 0.10),
(39, 1, 'MAC-10 | Candy Apple', 'Bem Usada', 149.00, '2025-09-23', '/skins/Candy Apple.png', 'disponível', 0.10),
(40, 2, 'MAC-10 | Ultraviolet', 'Bem Usada', 149.00, '2025-09-23', '/skins/Ultraviolet.png', 'disponível', 0.10),
(41, 1, 'Cano Curto | Kiss♥Love', 'Bem Usada', 199.99, '2025-09-23', '/skins/Cano-Curto-BEIJOS.png', 'disponível', 0.10),
(42, 2, 'Cano Curto | Apocalypto', 'Bem Usada', 199.99, '2025-09-23', '/skins/Apocalypto.png', 'disponível', 0.10),
(43, 1, 'Cano Curto | Devourer', 'Bem Usada', 199.99, '2025-09-23', '/skins/Devourer.png', 'disponível', 0.10),
(44, 2, 'Cano Curto | Analog Input', 'Bem Usada', 199.99, '2025-09-23', '/skins/Analog Input.png', 'disponível', 0.10),
(45, 1, 'Cano Curto | Fubar', 'Bem Usada', 199.99, '2025-09-23', '/skins/Fubar.png', 'disponível', 0.10),
(46, 2, 'Cano Curto | Limelight', 'Bem Usada', 199.99, '2025-09-23', '/skins/Limelight.png', 'disponível', 0.10),
(47, 1, 'Cano Curto | Origami', 'Bem Usada', 199.99, '2025-09-23', '/skins/Origami.png', 'disponível', 0.10),
(48, 2, 'Cano Curto | Wasteland Princess', 'Bem Usada', 199.99, '2025-09-23', '/skins/Wasteland Princess.png', 'disponível', 0.10),
(49, 1, 'AUG | Akihabara Accept', 'Bem Usada', 89.50, '2025-09-23', '/skins/AUG-Akihabara-Accept.png', 'disponível', 0.10),
(50, 2, 'AUG | Random Access', 'Bem Usada', 89.50, '2025-09-23', '/skins/Random Access.png', 'disponível', 0.10),
(51, 1, 'AUG | Carved Jade', 'Bem Usada', 89.50, '2025-09-23', '/skins/Carved Jade.png', 'disponível', 0.10),
(52, 2, 'AUG | Midnight Lily', 'Bem Usada', 89.50, '2025-09-23', '/skins/Midnight Lily.png', 'disponível', 0.10),
(53, 1, 'AUG | Storm', 'Bem Usada', 89.50, '2025-09-23', '/skins/Storm.png', 'disponível', 0.10),
(54, 2, 'AUG | Torque', 'Bem Usada', 89.50, '2025-09-23', '/skins/Torque.png', 'disponível', 0.10),
(55, 1, 'AUG | Anodized Navy', 'Bem Usada', 89.50, '2025-09-23', '/skins/Anodized Navy.png', 'disponível', 0.10),
(56, 2, 'AUG | Hot Rod', 'Bem Usada', 89.50, '2025-09-23', '/Hot Rod.png', 'disponível', 0.10);


INSERT INTO avaliacoes 
(av_id, usu_id, av_nota, av_comentario, av_moderacao) 
VALUES
(1, 1, 5, 'Ótimo usuário, negociação rápida e sem problemas.', 1),
(2, 2, 4, 'Boa experiência, apenas um pequeno atraso no pagamento.', 1);


INSERT INTO transacoes (trans_id, usu_id, skin_id, trans_valor, trans_status, trans_data)
VALUES
(201, 1, 1, 129.99, 'pendente', '2025-09-23 10:00:00'),
(202, 2, 2, 129.99, 'concluído', '2025-09-23 10:05:00');


INSERT INTO ocorrencias
(oco_id, trans_id, oco_valor, oco_situacao, oco_data)
VALUES
(1, 201, 129.99, 'pendente', '2025-09-23 10:01:00'),
(2, 202, 129.99, 'concluída', '2025-09-23 10:06:00');