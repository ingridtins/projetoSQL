
USE Biblioteca;

CREATE TABLE Autores (
	autor_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR (100) NOT NULL,
    Nacionalidade VARCHAR (50));
    
    CREATE TABLE Livros (
    livro_ID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Autor_ID INT,
    Ano_Publicacao YEAR,
    Genero VARCHAR(50),
    FOREIGN KEY (autor_ID) REFERENCES Autores(autor_ID));
    
    CREATE TABLE Clientes (
    cliente_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(200),
    Email VARCHAR(100));

    
    CREATE TABLE Emprestimos (
    Emprestimo_ID INT AUTO_INCREMENT PRIMARY KEY,
    livro_ID INT,
    cliente_ID INT,
    Data_Emprestimo DATE,
    Data_Devolucao DATE,
    FOREIGN KEY (livro_ID) REFERENCES Livros (livro_ID),
    FOREIGN KEY (cliente_ID) REFERENCES Clientes (cliente_ID));
    
 
    

    
    
    