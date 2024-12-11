-- Explorando os comandos DDL

CREATE DATABASE IF NOT EXISTS manipulation;

USE manipulation;

CREATE TABLE bankAccounts (
	Id_account INT auto_increment PRIMARY KEY,
	Ag_num INT NOT NULL,
	Ac_num INT NOT NULL,
	Saldo FLOAT,
	CONSTRAINT identification_account_constraint UNIQUE (Ag_num, Ac_num)
);

CREATE TABLE bankClient(
	Id_client INT auto_increment,
	ClientAccount INT,
	CPF VARCHAR(11) NOT NULL,
	RG VARCHAR(9) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Endereço VARCHAR(100) NOT NULL,
	Renda_mensal FLOAT,
    PRIMARY KEY (Id_client, ClientAccount),
	CONSTRAINT fk_acconut_client foreign key (ClientAccount) REFERENCES bankAccounts(Id_account) 
	ON UPDATE CASCADE
);

CREATE TABLE bankTransactions(
	Id_transcation INT auto_increment PRIMARY KEY,
	Ocorrencia datetime,
	Status_transaction VARCHAR(20),
	Valor_transferido FLOAT,
	Source_account INT,
	Destination_account INT,
	CONSTRAINT fk_source_transaction foreign key (Source_account) REFERENCES
	bankAccounts(id_Account),
	CONSTRAINT fk_destionation_transaction foreign key (destination_account) REFERENCES
	bankAccounts(id_Account)
);

ALTER TABLE bankAccounts ADD LimiteCredito FLOAT NOT NULL DEFAULT 500.00;

-- Adicionando e removendo atributo

ALTER TABLE bankAccounts ADD email VARCHAR(60);

ALTER TABLE bankAccounts DROP email;

-- ALTER TABLE nome_tabela MODIFY column_table tipo_dados condição;

-- ALTER TABLE bankClient ADD UFF CHAR(2) NOT NULL DEFAULT 'RJ';

-- UPDATE bankClient SET UFF = 'MG' WHERE Nome = 'Fulano';