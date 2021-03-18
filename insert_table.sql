INSERT INTO 
    empregados(nome, idade, dt_entrada, cargo, status_empregado)
VALUES
    ('João da Silva', 25, '2018-12-20', 'Desenvolvedor', FALSE),
    ('Marcos Oliveira', 22, '2016-11-02', 'Atendente', TRUE),
    ('Juliana Ferreira', 34, '2018-06-15', 'Vendedor', TRUE),
    ('Marcelo Zwarg', 42, '2018-01-31', 'Gerente', TRUE),
    ('Thiago Varzani', 37, '2018-10-05', 'Desenvolvedor', TRUE),
    ('Neymar Valadares', 22, '2019-01-07', 'Atendente', FALSE),
    ('Kayque Santos', 35, '2018-12-12', 'Atendente', TRUE),
    ('Maikon Souza', 28, '2017-04-22', 'Desenvolvedor', FALSE),
    ('Vania Wilks', 24, '2018-05-03', 'Desenvolvedor', TRUE),
    ('Wanda Ferrari', 40, '2009-02-22', 'Vendedor', TRUE),
    ('Carlos Hüller', 58, '2015-03-29', 'Gerente', TRUE),
    ('Lucas Rodrigues', 35, '2017-11-06', 'Vendedor', TRUE),
    ('Marta Cegarini', 39, '2014-07-30', 'Desenvolvedor', TRUE),
    ('João das Neves', 20, '2019-06-26', 'Vendedor', TRUE),
    ('Arthur Herzog', 42, '2014-07-13', 'Desenvolvedor', FALSE),
    ('Tobias Nébias', 34, '2014-07-13', 'Desenvolvedor', TRUE),
    ('Cláudia Braga', 37, '2018-09-17', 'Atendente', TRUE),
    ('Roberto Caudini', 24, '2018-10-26', 'Vendedor', FALSE),
    ('Julia Jorgina', 29, '2016-11-15', 'Atendente', TRUE),
    ('Heliandro Karnal', 38, '2013-10-22', 'Atendente', TRUE),
    ('Martin Gonçalves', 21, '2018-05-26', 'Desenvolvedor', TRUE),
    ('Carolina Almeida', 38, '2015-10-23', 'Vendedor', TRUE),
    ('Marcos Neto', 26, '2018-12-14', 'Desenvolvedor', TRUE),
    ('Lilliane Andrade', 44, '2019-10-22', 'Atendente', TRUE),
    ('Ingrid Orleans e Bragança', 28, '2016-01-12', 'Vendedor', TRUE),
    ('Mariana Nielsen', 27, '2015-10-21', 'Desenvolvedor', FALSE),
    ('William Thomaz', 50, '2010-03-03', 'Gerente', FALSE),
    ('Diego Abreu', 46, '2012-08-19', 'Vendedor', TRUE),
    ('Josué Lacerda', 53, '2016-08-04', 'Vendedor', TRUE),
    ('Hélio Franco', 46, '2019-05-05', 'Desenvolvedor', TRUE),
    ('Carlos Queiroz', 23, '2017-04-08', 'Vendedor', FALSE),
    ('Jefferson Resende', 28, '2016-07-22', 'Atendente', TRUE),
    ('Mariana Paniolo', 20, '2019-09-08', 'Desenvolvedor', TRUE),
    ('Felipe Motta', 22, '2018-07-25', 'Atendente', TRUE),
    ('Herg Kreugzeug', 43, '2015-05-12', 'Desenvolvedor', TRUE),
    ('Juan Pereyra', 30, '2018-06-06', 'Vendedor', FALSE),
    ('Vinicius Fioretti', 26, '2017-04-22', 'Vendedor', TRUE),
    ('Luka Hazic', 39, '2014-07-23', 'Atendente', FALSE),
    ('Katia Espinoza', 41, '2012-03-23', 'Vendedor', TRUE),
    ('Felipe Moura', 60, '2000-01-01', 'Presidente', TRUE),
    ('Edna Teixeira', 34, '2013-07-22', 'Desenvolvedor', TRUE),
    ('Juliano Schneider', 33, '2015-10-10', 'Desenvolvedor', TRUE),
    ('Rodrigo Buzzato', 32, '2019-12-01', 'Atendente', TRUE),
    ('Beatriz Miranda', 28, '2019-02-06', 'Atendente', TRUE),
    ('Mauro Feitosa', 40, '2014-03-02', 'Gerente', FALSE),
    ('Luciana Camargo', 39, '2016-10-03', 'Vendedor', TRUE),
    ('Carlos Pereira', 41, '2018-08-20', 'Coordenador', FALSE),
    ('Juliana Costa', 29, '2019-11-21', 'Coordenador', TRUE),
    ('Auremir Moreira', 55, '2011-03-04', 'Coordenador', TRUE),
    ('Vanessa Soares', 36, '2019-07-09', 'Coordenador', TRUE)
    ;
    
INSERT INTO 
    transacoes(id_empregado, tp_transacao, dt_transacao, valor_transacao, status_transacao)
VALUES 
    (8, 'Compra Passagem', '2019-11-05', 844.57, 'Pago'),
    (12, 'Reembolso', '2019-10-24', 40, 'Pendente'),
	(21, 'Melhoria Patrimônio', '2019-05-04', 500, 'Pendente'),
    (11, 'Compra Passagem', '2017-06-06', 1000.32, 'Pago'),
    (14, 'Reembolso', '2018-07-22', 20, 'Pendente'),
	(25, 'Melhoria Patrimônio', '2017-07-07', 354.24, 'Pendente'),
    (33, 'Compra Passagem', '2019-10-17', 322.24, 'Pago'),
    (36, 'Reembolso', '2018-07-10', 60, 'Pendente'),
	(40, 'Melhoria Patrimônio', '2019-06-10', 663, 'Pendente'),
    (2, 'Compra Passagem', '2016-12-09', 1200.50, 'Pago'),
    (3, 'Reembolso', '2019-06-10', 100, 'Pendente'),
	(5, 'Compra Passagem', '2018-06-10', 900, 'Pendente'),
	(8, 'Compra Passagem', '2018-08-08', 4003.62, 'Pago'),
    (9, 'Reembolso', '2019-03-12', 25, 'Pendente'),
	(10, 'Melhoria Patrimônio', '2018-04-24', 421, 'Pendente'),
	(12, 'Compra Passagem', '2018-11-11', 270.57, 'Pago'),
    (13, 'Reembolso', '2017-12-10', 35, 'Pendente'),
	(27, 'Melhoria Patrimônio', '2018-10-01', 186, 'Pendente'),
	(29, 'Compra Passagem', '2019-06-30', 952.37, 'Pago'),
    (35, 'Compra Passagem', '2018-05-28', 90, 'Pendente'),
	(39, 'Melhoria Patrimônio', '2019-02-21', 66, 'Pendente'),    
	(40, 'Compra Passagem', '2018-06-13', 1400.32, 'Pago'),
    (25, 'Reembolso', '2018-07-23', 55, 'Pendente'),
	(24, 'Melhoria Patrimônio', '2018-06-06', 336, 'Pendente'),    
	(29, 'Compra Passagem', '2017-10-09', 1359.05, 'Pago'),
    (11, 'Compra Passagem', '2019-01-20', 62, 'Pendente'),
	(18, 'Melhoria Patrimônio', '2019-03-12', 45.25, 'Pendente'),      
	(17, 'Compra Passagem', '2019-09-07', 1500, 'Pago'),
    (12, 'Compra Passagem', '2018-04-21', 400, 'Pendente'),
	(21, 'Melhoria Patrimônio', '2018-07-07', 350, 'Pendente'),      
    (9, 'Compra Passagem', '2017-12-10', 662.36, 'Pago'),
    (8, 'Reembolso', '2018-07-21', 560, 'Pendente'),
	(18, 'Melhoria Patrimônio', '2018-07-12', 1500, 'Pendente'),
    (37, 'Compra Passagem', '2019-06-12', 3200.23, 'Pago'),
    (24, 'Reembolso', '2019-04-09', 45, 'Pendente'),
	(29, 'Melhoria Patrimônio', '2018-08-12', 350, 'Pendente'),
	(19, 'Compra Passagem', '2018-11-17', 800.30, 'Pago'),
    (10, 'Reembolso', '2019-12-06', 100, 'Pendente'),
	(6, 'Melhoria Patrimônio', '2019-07-09', 1600, 'Pendente'),
	(5, 'Compra Passagem', '2017-12-19', 742.75, 'Pago'),
    (7, 'Reembolso', '2018-11-20', 200, 'Pendente'),
	(1, 'Melhoria Patrimônio', '2019-12-08', 650, 'Pendente'),
	(8, 'Compra Passagem', '2018-01-23', 567.42, 'Pago'),
    (10, 'Reembolso', '2019-10-24', 260, 'Pendente'),
	(33, 'Melhoria Patrimônio', '2019-05-04', 770, 'Pendente'),    
	(39, 'Compra Passagem', '2018-12-07', 367.22, 'Pago'),
    (27, 'Reembolso', '2019-12-24', 2500, 'Pendente'),
	(30, 'Compra Passagem', '2018-06-07', 500, 'Pendente'),    
	(42, 'Compra Passagem', '2019-12-08', 680.27, 'Pago'),
    (32, 'Reembolso', '2019-10-12', 25, 'Pendente'),
	(23, 'Melhoria Patrimônio', '2019-03-12', 1006, 'Pendente'),      
	(18, 'Compra Passagem', '2017-02-06', 1096.21, 'Pago'),
    (17, 'Reembolso', '2019-12-01', 40, 'Pendente'),
	(20, 'Melhoria Patrimônio', '2017-08-11', 2900, 'Pago'),       
    (41, 'Compra Passagem', '2018-10-07', 1000.50, 'Pago'),
    (30, 'Reembolso', '2017-12-03', 40, 'Pendente'),
	(19, 'Melhoria Patrimônio', '2019-09-20', 950, 'Pago'),
    (13, 'Compra Passagem', '2017-06-04', 270.25, 'Pago'),
    (1, 'Reembolso', '2019-11-23', 35, 'Pendente'),
	(4, 'Melhoria Patrimônio', '2019-09-10', 200, 'Pendente'),
	(41, 'Compra Passagem', '2018-05-09', 370.26, 'Pago'),
    (32, 'Reembolso', '2019-11-22', 40, 'Pendente'),
	(24, 'Melhoria Patrimônio', '2019-02-25', 200, 'Pago'),
	(27, 'Compra Passagem', '2018-05-02', 860.45, 'Pago'),
    (29, 'Reembolso', '2018-06-22', 50, 'Pendente'),
	(4, 'Compra Passagem', '2019-12-28', 500, 'Pendente'),
	(6, 'Compra Passagem', '2019-01-20', 780.26, 'Pago'),
    (27, 'Reembolso', '2019-07-20', 40, 'Pendente'),
	(36, 'Melhoria Patrimônio', '2019-09-04', 300, 'Pago'),    
	(20, 'Compra Passagem', '2017-06-07', 642.19, 'Pago'),
    (23, 'Reembolso', '2019-11-21', 80, 'Pendente'),
	(17, 'Melhoria Patrimônio', '2019-10-10', 1679, 'Pendente'),    
	(19, 'Compra Passagem', '2018-09-13', 579.12, 'Pago'),
    (26, 'Reembolso', '2019-08-22', 40, 'Pendente'),
	(14, 'Compra Passagem', '2019-12-30', 500, 'Pendente'),      
	(10, 'Compra Passagem', '2019-07-05', 6536.12, 'Pago'),
    (13, 'Reembolso', '2018-03-22', 100, 'Pendente'),
	(14, 'Melhoria Patrimônio', '2019-01-01', 942, 'Pago'),       
    (19, 'Compra Passagem', '2019-01-09', 2053.09, 'Pago'),
    (12, 'Reembolso', '2019-09-20', 500, 'Pendente'),
	(8, 'Melhoria Patrimônio', '2018-07-03', 1650, 'Pago'),
    (3, 'Compra Passagem', '2018-12-11', 456.20, 'Pago'),
    (7, 'Reembolso', '2019-06-10', 35, 'Pendente'),
	(29, 'Compra Passagem', '2019-10-20', 500, 'Pendente'),
	(10, 'Compra Passagem', '2019-07-02', 1658.44, 'Pago'),
    (42, 'Reembolso', '2019-03-28', 150, 'Pendente'),
	(37, 'Melhoria Patrimônio', '2018-07-04', 560, 'Pago'),
	(25, 'Compra Passagem', '2019-03-09', 1200.27, 'Pago'),
    (18, 'Reembolso', '2019-02-06', 20, 'Pendente'),
	(21, 'Melhoria Patrimônio', '2018-06-09', 350, 'Pago'),
	(22, 'Compra Passagem', '2018-09-06', 540.23, 'Pago'),
    (9, 'Reembolso', '2018-01-22', 15, 'Pago'),
	(14, 'Melhoria Patrimônio', '2018-06-06', 344, 'Pago'),    
	(2, 'Compra Passagem', '2018-10-06', 669.25, 'Pago'),
    (22, 'Compra Passagem', '2019-12-30', 300, 'Pendente'),
	(28, 'Melhoria Patrimônio', '2019-05-05', 1364, 'Pago'),    
	(30, 'Compra Passagem', '2019-04-07', 1774.25, 'Pago'),
    (43, 'Reembolso', '2019-09-23', 50, 'Pendente'),
	(23, 'Compra Passagem', '2019-11-09', 500, 'Pendente'),      
	(16, 'Compra Passagem', '2018-07-07', 700.95, 'Pago'),
    (17, 'Reembolso', '2019-12-10', 150, 'Pendente'),
	(29, 'Melhoria Patrimônio', '2019-12-04', 580, 'Pendente')  
    ;
