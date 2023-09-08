CREATE DATABASE EMPRESA;

USE EMPRESA;


CREATE TABLE Departamentos (
    DepartamentoID INT AUTO_INCREMENT PRIMARY KEY,
    NomeDepartamento VARCHAR(255) NOT NULL
);


CREATE TABLE Funcionarios (
    FuncionarioID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(255) NOT NULL,
    Salario FLOAT NOT NULL,
    DepartamentoID INT NOT NULL,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);


INSERT INTO Departamentos (NomeDepartamento)
VALUES
    ('Recursos Humanos'),
    ('TI'),
    ('Marketing'),
    ('Finanças'),
    ('Vendas');


INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID)
VALUES
    ('Ana Silva', 'Analista de RH', 7500.00, 1),
    ('Carlos Santos', 'Programador', 15600.00, 2),
    ('Mariana Oliveira', 'Designer Gráfico', 3650.60, 3),
    ('Pedro Sousa', 'Contador', 11000.00, 4),
    ('Luis Fernandes', 'Vendedor', 3500.00, 5);
    
SELECT * FROM DEPARTAMENTOS;

SELECT * FROM FUNCIONARIOS;