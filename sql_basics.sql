# Select with Distinct and Top
SELECT DISTINCT(status_transacao) FROM transacoes 
LIMIT 4;  

# Where
SELECT id_empregado,
	   tp_transacao,
       valor_transacao,
       status_transacao
FROM transacoes
WHERE status_transacao = 'Pago' AND valor_transacao < 500;

SELECT * FROM empregados 
WHERE cargo = 'Desenvolvedor' OR cargo = 'Vendedor'
ORDER BY idade DESC;

SELECT id_empregado, dt_transacao, valor_transacao, status_transacao FROM transacoes
WHERE tp_transacao = 'Compra Passagem' AND valor_transacao < 1000
ORDER BY dt_transacao DESC;

# Order By
SELECT nome,
	   cargo,
       dt_entrada
FROM empregados
WHERE status_empregado = 0
ORDER BY dt_entrada DESC;

# Like
SELECT * from empregados
WHERE nome LIKE 'Ma%';

#IN
SELECT nome, cargo, idade
FROM empregados
WHERE cargo IN ('Coordenador', 'Gerente', 'Presidente')
ORDER BY idade;

# Case
SELECT id_transacao, tp_transacao, dt_transacao, valor_transacao,
CASE
    WHEN valor_transacao > 2000 THEN "Acima do Budget"
    WHEN valor_transacao BETWEEN 1000 AND 2000 THEN "Reconsiderar precificação"
    ELSE "Dentro do Budget"
END AS status_budget,
CASE WHEN dt_transacao > '2019-10-01' THEN 1 ELSE 0 END AS fl_transacao_recente
FROM transacoes; 

# Max, Min, Count, Avg, Sum
SELECT MAX(valor_transacao) AS maxima_transacao FROM transacoes;

SELECT MIN(dt_entrada) AS min_dt_entrada FROM empregados;

SELECT COUNT(*) AS transacoes_pendentes 
FROM transacoes
WHERE status_transacao = 'Pendente' AND dt_transacao <= '2018-12-12';

SELECT COUNT(DISTINCT id_empregado) AS num_empregados 
FROM transacoes
WHERE valor_transacao > 1000 AND status_transacao = 'Pago';

SELECT AVG(idade) AS idade_media from empregados
WHERE cargo = 'Vendedor';

SELECT SUM(valor_transacao) AS valor_gasto_2019 FROM transacoes
WHERE status_transacao = 'Pago' AND dt_transacao >= '2019-01-01';

SELECT CAST(SUM(valor_transacao) AS signed) AS valor_gasto_2019 FROM transacoes
WHERE status_transacao = 'Pago' AND dt_transacao >= '2019-01-01';

# Group By
SELECT tp_transacao, MAX(valor_transacao) AS maximo_gasto FROM transacoes
GROUP BY tp_transacao
ORDER BY maximo_gasto DESC;

SELECT cargo, COUNT(id_empregado) AS num_funcionarios 
FROM empregados
GROUP BY cargo
HAVING num_funcionarios > 10
ORDER BY num_funcionarios;

SELECT id_empregado, tp_transacao,
		COUNT(valor_transacao) AS num_transacoes,
		MAX(valor_transacao) AS maximo_gasto,
        MIN(valor_transacao) AS minimo_gasto,
        AVG(valor_transacao) AS media_gasto,
        STDDEV(valor_transacao) AS std_gasto
FROM transacoes
GROUP BY id_empregado, tp_transacao
ORDER BY id_empregado, num_transacoes DESC;

# Update Table
UPDATE transacoes
SET valor_transacao = 1000, status_transacao = 'Pendente'
WHERE id_transacao = 1;

# Inner Join
SELECT * FROM empregados e
JOIN transacoes t
ON e.id_empregado = t.id_empregado;

#SubSelect
SELECT COUNT(DISTINCT id_empregado) AS count_empregados FROM
(
SELECT e.id_empregado FROM empregados e
JOIN transacoes t
ON e.id_empregado = t.id_empregado
) AS a;

#CTAS (Create Table As Select)
CREATE TABLE emp_trans AS

SELECT e.id_empregado, e.nome, e.idade, e.dt_entrada,
e.cargo, e.status_empregado,
t.id_transacao, t.tp_transacao, t.dt_transacao, t.valor_transacao, t.status_transacao
FROM empregados e
JOIN transacoes t
ON e.id_empregado = t.id_empregado;

# Left Join
SELECT e.id_empregado, e.nome, t.dt_transacao, t.tp_transacao, t.valor_transacao FROM empregados e
LEFT JOIN transacoes t
ON e.id_empregado = t.id_empregado
ORDER BY e.id_empregado;

# Union
SELECT id_empregado, nome, cargo FROM empregados
WHERE cargo = 'Vendedor'
UNION
SELECT id_empregado, nome, cargo FROM empregados 
WHERE cargo = 'Atendente';

# Window Functions ---> instalar versao 8.0
SELECT id_transacao, cargo, valor_transacao, status_transacao,
SUM(valor_transacao) OVER(PARTITION BY cargo) AS soma_transacoes_cargo,
AVG(idade) OVER(PARTITION BY status_transacao) AS avg_idade_status
FROM emp_trans;

SELECT nome, cargo, dt_entrada,
ROW_NUMBER() OVER(PARTITION BY cargo ORDER BY dt_entrada) AS rank_cargo_entrada,
ROW_NUMBER() OVER(ORDER BY dt_entrada) AS rank_geral_entrada

FROM empregados;
