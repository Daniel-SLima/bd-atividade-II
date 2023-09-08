CREATE DATABASE BLOG;

USE BLOG;

CREATE TABLE Artigos (
    ArtigoID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL UNIQUE,
    Conteudo TEXT NOT NULL,
    DataPublicacao VARCHAR(10) NOT NULL
);

CREATE TABLE Comentarios (
    ComentarioID INT AUTO_INCREMENT PRIMARY KEY,
    ArtigoID INT NOT NULL,
    Autor VARCHAR(255) NOT NULL,
    Texto TEXT NOT NULL,
    DataComentario VARCHAR(10) NOT NULL,
    FOREIGN KEY (ArtigoID) REFERENCES Artigos(ArtigoID)
);

INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao)
VALUES
    ('Desenvolvimento Web', 'HTML, CSS, JavaScript', '20/02/2023'),
    ('Introdução à Programação', 'Algoritmos, Lógica', '02/06/2015'),
    ('Desenvolvimento de Aplicativos', 'Mobile, Android, iOS', '30/07/2012'),
    ('Banco de Dados', 'SQL, Modelagem', '25/02/2022'),
    ('Segurança da Informação', 'Criptografia, Firewall','10/01/2021');

INSERT INTO Comentarios (ArtigoID, Autor, Texto, DataComentario)
VALUES
    (1, 'Laura', 'Ótimo artigo.', '08/02/2023'),
    (2, 'Lucas', 'Muito informativo!', '06/04/2023'),
    (3, 'pedro', 'Interessante tópico.', '23/09/2023'),
    (4, 'Carlos', 'Excelente conteúdo!', '15/07/2023'),
    (5, 'Pedro', 'Gostei muito.', '11/05/2023');
    
SELECT * FROM Artigos;
SELECT * FROM Comentarios