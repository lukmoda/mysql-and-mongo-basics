CREATE database curso_ds;
USE curso_ds;

CREATE TABLE empregados (
    id_empregado int AUTO_INCREMENT,
    nome varchar(255) UNIQUE NOT NULL,
    idade tinyint DEFAULT 30,
    dt_entrada date,
    cargo varchar(255),
    status_empregado boolean,
    PRIMARY KEY(id_empregado)
);

CREATE TABLE transacoes (
	id_transacao int AUTO_INCREMENT,
    id_empregado int,
    tp_transacao varchar(255),
    dt_transacao date,
    valor_transacao float,
    status_transacao varchar(30),
    PRIMARY KEY (id_transacao),
    FOREIGN KEY (id_empregado) REFERENCES empregados(id_empregado)
);

ALTER TABLE empregados
ADD email varchar(255),
DROP COLUMN cargo,
MODIFY idade int;

DROP TABLE transacoes;
DROP TABLE empregados;
