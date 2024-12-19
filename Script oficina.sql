CREATE DATABASE Oficina;
USE Oficina;

CREATE TABLE Pessoa(
	idpessoa INT AUTO_INCREMENT PRIMARY KEY,
    CPF CHAR(11) NOT NULL,
    Pnome VARCHAR(20) NOT NULL,
    Sobrenome VARCHAR(30) NOT NULL,
    Telefone DECIMAL(11) NOT NULL,
    Endereço VARCHAR(50) NOT NULL,
    CONSTRAINT Unique_CPF UNIQUE (CPF)
);

CREATE TABLE Pagamento(
	idpagamento INT AUTO_INCREMENT PRIMARY KEY,
    Formadepagamento ENUM('Debito','Credito','PIX','Dinheiro'),
    Pagamento_pessoa INT,
    CONSTRAINT fk_pagamento_pessoa FOREIGN KEY(Pagamento_pessoa) REFERENCES Pessoa(idpessoa)
);

CREATE TABLE Veiculo(
	idveiculo INT AUTO_INCREMENT PRIMARY KEY,
    Placa CHAR(7) NOT NULL,
    Defeito VARCHAR(20) NOT NULL,
    Veiculo_pessoa INT,
    CONSTRAINT Unique_placa UNIQUE(Placa),
    CONSTRAINT fk_veiculo_pessoa FOREIGN KEY(Veiculo_pessoa) REFERENCES Pessoa(idpessoa)
);

CREATE TABLE Equipe_de_mecanicos(
	idequipemecanicos INT AUTO_INCREMENT PRIMARY KEY,
    Especialidade VARCHAR(30) NOT NULL
);

CREATE TABLE Peça(
	idpeça INT AUTO_INCREMENT PRIMARY KEY,
    Nome_da_peça VARCHAR(20) NOT NULL,
    Valor VARCHAR(10) NOT NULL
);

CREATE TABLE Tabela_mao_de_obra(
	idmaodeobra INT AUTO_INCREMENT PRIMARY KEY,
    Nome_do_serviço VARCHAR(20) NOT NULL,
    Valor VARCHAR(10) NOT NULL
);

CREATE TABLE Serviços_realizados(
	Valor_total VARCHAR(50) NOT NULL,
    Prazo_de_entrega VARCHAR(30) NOT NULL,
    Id_veiculo INT,
    Tabela_mao_de_obra INT,
    id_pagamento INT,
    id_equipe_mecanicos INT,
    id_peça INT,
    CONSTRAINT fk_idveiculo_serviços FOREIGN KEY(Id_veiculo) REFERENCES Veiculo(idveiculo),
    CONSTRAINT fk_mao_de_obra_serviços FOREIGN KEY(Tabela_mao_de_obra) REFERENCES Tabela_mao_de_obra(idmaodeobra),
    CONSTRAINT fk_idpagamento_serviços FOREIGN KEY(id_pagamento) REFERENCES Pagamento(idpagamento),
    CONSTRAINT fk_idequipemecanicos_serviços FOREIGN KEY(id_equipe_mecanicos) REFERENCES Equipe_de_mecanicos(idequipemecanicos),
    CONSTRAINT fk_idpeça_serviços FOREIGN KEY(id_peça) REFERENCES Peça(idpeça)
);

DESC Serviços_realizados;