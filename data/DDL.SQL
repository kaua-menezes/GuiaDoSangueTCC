use railway;

DROP DATABASE IF EXISTS TCC;
CREATE DATABASE TCC;
USE TCC;

-- ===================== --
--  CRIAÇÃO DE TABELAS   --
-- ===================== --

-- Tabela Cadastro --
CREATE TABLE Cadastro(
    id_cadastro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    cpf DECIMAL(11,0),
    rg DECIMAL(9,0),
    numero_telefone DECIMAL(13,0),
    data_nascimento DATE,
    nome_do_responsavel VARCHAR(200),
    endereco_completo VARCHAR(200),
    sexo_biologico VARCHAR(200),
    tipo_sanguineo VARCHAR(200),
    email VARCHAR(200),
    senha VARCHAR(255)
);

-- Tabela Contatos --
CREATE TABLE Contatos(
    id_contatos INT PRIMARY KEY AUTO_INCREMENT,
    id_cadastro INT,
    mensagem VARCHAR(500),
    FOREIGN KEY (id_cadastro) REFERENCES Cadastro(id_cadastro) ON DELETE CASCADE
);

-- Tabela Agendamento --
CREATE TABLE Agendamento(
    id_agendamento INT PRIMARY KEY AUTO_INCREMENT,
    primeira_doacao BOOLEAN,
    ultima_doacao DATE,
    doenca_ultima_semana BOOLEAN,
    data_da_doenca DATE,
    uso_medicamento BOOLEAN,
    condicao VARCHAR(100),
    tem_doenca_cronica BOOLEAN,
    qual_doenca_cronica VARCHAR(100),
    esta_controlada BOOLEAN,
    viajou_nos_ultimos_meses BOOLEAN,
    qual_pais VARCHAR(100),
    data_viagem DATE,
    tem_ist BOOLEAN,
    relacao_nos_ultimos_meses BOOLEAN,
    data_relacao DATE,
    contato_com_pessoaIST BOOLEAN,
    data_contato DATE,
    usou_drogas BOOLEAN,
    data_usada DATE,
    recebeu_transfusao BOOLEAN,
    data_transfusao DATE,
    ta_gravida BOOLEAN,
    quantos_meses INT,
    esta_amamentando BOOLEAN,
    bebe_tem_menos_de_12 BOOLEAN,
    aceita_mensagen BOOLEAN
);

-- Tabela ADM --
CREATE TABLE ADM(
    id_admin INT PRIMARY KEY AUTO_INCREMENT,
    id_cadastro INT,
    id_agendamento INT,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    cargo VARCHAR(100),
    FOREIGN KEY (id_cadastro) REFERENCES Cadastro(id_cadastro) ON DELETE CASCADE,
    FOREIGN KEY (id_agendamento) REFERENCES Agendamento(id_agendamento) ON DELETE CASCADE
);
