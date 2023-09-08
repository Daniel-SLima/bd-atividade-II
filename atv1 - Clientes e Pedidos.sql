CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Telefone VARCHAR(14) NOT NULL
);

CREATE TABLE Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT NOT NULL,
    DataPedido VARCHAR(10) NOT NULL,
    ValorTotal DOUBLE NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

INSERT INTO Clientes (Nome, Email, Telefone)
VALUES
    ('Mariana Almeida', 'mariana.almeida@email.com', '(21)87654-0912'),
    ('Carlos Oliveira', 'carlos.oliveira@email.com', '(71)98123-4325'),
    ('Sandra Pereira', 'sandra.pereira@email.com', '(11)93456-7654'),
    ('Rafael Silva', 'rafael.silva@email.com', '(21)99123-6543'),
    ('Fernanda Santos', 'fernanda.santos@email.com', '(11)98365-9834');



INSERT INTO Pedidos (ClienteID, DataPedido, ValorTotal)
VALUES
    (1, '25/09/2023', 102.60),
    (2, '26/02/2022', 73.50),
    (1, '13/09/2023', 220.25),
    (3, '15/02/2021', 51.75),
    (4, '11/01/2022', 340.20);
    
SELECT * FROM Clientes;
SELECT * FROM Pedidos;