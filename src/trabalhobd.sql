CREATE SCHEMA IF NOT EXISTS trabalhobd;
USE trabalhobd;

CREATE TABLE LABORATORIO (
    id_laboratorio INT NOT NULL AUTO_INCREMENT,
    nome_laboratorio VARCHAR(100) NOT NULL,
    localizacao VARCHAR(150) NOT NULL,
    PRIMARY KEY (id_laboratorio),
    UNIQUE (nome_laboratorio)
);

CREATE TABLE MODELO (
    id_modelo INT NOT NULL AUTO_INCREMENT,
    nome_modelo VARCHAR(100) NOT NULL,
    versao VARCHAR(50) NOT NULL,
    framework VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_modelo),
    UNIQUE (nome_modelo, versao, framework)
);

CREATE TABLE DATASET (
    id_dataset INT NOT NULL AUTO_INCREMENT,
    nome_dataset VARCHAR(100) NOT NULL,
    tamanho DECIMAL(10,2) NOT NULL CHECK (tamanho > 0),
    quantidade_instancias INT NOT NULL CHECK (quantidade_instancias > 0),
    PRIMARY KEY (id_dataset)
);

CREATE TABLE PESQUISADOR (
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL,
    sala VARCHAR(30) NOT NULL,
    id_laboratorio INT NOT NULL,
    PRIMARY KEY (cpf),
    UNIQUE (email),
    FOREIGN KEY (id_laboratorio) REFERENCES LABORATORIO(id_laboratorio)
        ON DELETE RESTRICT
);

CREATE TABLE PROJETO (
    id_projeto INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT NOT NULL,
    financiador VARCHAR(100) NOT NULL DEFAULT 'X',
    data_inicio DATE NOT NULL,
    id_laboratorio INT NOT NULL,
    PRIMARY KEY (id_projeto),
    FOREIGN KEY (id_laboratorio) REFERENCES LABORATORIO(id_laboratorio)
        ON DELETE RESTRICT
);

CREATE TABLE AREA_PESQUISA (
    cpf_pesquisador CHAR(11) NOT NULL,
    area_pesquisa VARCHAR(100) NOT NULL,
    PRIMARY KEY (cpf_pesquisador, area_pesquisa),
    FOREIGN KEY (cpf_pesquisador) REFERENCES PESQUISADOR(cpf)
        ON DELETE CASCADE
);

CREATE TABLE PARTICIPA (
    cpf CHAR(11) NOT NULL,
    id_projeto INT NOT NULL,
    funcao VARCHAR(30) NOT NULL,
    PRIMARY KEY (cpf, id_projeto),
    FOREIGN KEY (cpf) REFERENCES PESQUISADOR(cpf)
        ON DELETE CASCADE,
    FOREIGN KEY (id_projeto) REFERENCES PROJETO(id_projeto)
        ON DELETE RESTRICT
);

CREATE TABLE EXPERIMENTO (
    id_experimento INT NOT NULL AUTO_INCREMENT,
    hora_inicio DATETIME NOT NULL,
    hora_fim DATETIME NOT NULL,
    acuracia DECIMAL(5,2) NOT NULL CHECK (acuracia >= 0 AND acuracia <= 100),
    id_projeto INT NOT NULL,
    id_modelo INT NOT NULL,
    id_dataset INT NOT NULL,
    PRIMARY KEY (id_experimento),
    CHECK (hora_fim >= hora_inicio),
    FOREIGN KEY (id_projeto) REFERENCES PROJETO(id_projeto)
        ON DELETE CASCADE,
    FOREIGN KEY (id_modelo) REFERENCES MODELO(id_modelo)
        ON DELETE RESTRICT,
    FOREIGN KEY (id_dataset) REFERENCES DATASET(id_dataset)
        ON DELETE RESTRICT
);
