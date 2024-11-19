CREATE DATABASE pratica_mira;
USE pratica_mira;

CREATE TABLE clientes(
id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR(200) NOT NULL,
email_cliente VARCHAR(64) NOT NULL,
telefone_cliente VARCHAR(11) NOT NULL
);

CREATE TABLE colaboradores(
id_colaborador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_colaborador VARCHAR(200) NOT NULL,
email_colaborador VARCHAR(64) NOT NULL,
telefone_colaborador VARCHAR(11) NOT NULL
);

CREATE TABLE chamados(
id_chamado INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
descricao_problema VARCHAR(500) NOT NULL,
criticidade VARCHAR(5) NOT NULL,
status VARCHAR(12) NOT NULL,
data_abertura DATE NOT NULL,
id_cliente INT NOT NULL,
id_colaborador INT NOT NULL,
foreign key (id_cliente) references clientes(id_cliente),
foreign key (id_colaborador) references colaboradores(id_colaborador)
);
