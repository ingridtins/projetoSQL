-- Listar todos os empréstimos mostrando o nome do cliente e titulo do livro
SELECT e.emprestimo_id, c.Nome AS Cliente, l.titulo AS Livro, e.Data_Emprestimo, e.Data_Devolucao
FROM emprestimos e 
JOIN clientes a ON e.cliente_ID = c.cliente_ID
JOIN livros b ON e.livro_ID = l.livro_ID  ORDER BY c.Nome;


--  Listar todos os livros junto com o nome do autor
SELECT l.livro_ID, l.Titulo, a.Nome AS Autor, l.Ano_Publicacao, l.Genero
FROM livros l
JOIN autores a ON l.Autor_ID = a.autor_ID;

-- Listar todos os livros que foram emprestados pelo menos uma vez
SELECT Titulo
FROM livros
WHERE livro_ID IN (SELECT DISTINCT livro_ID FROM emprestimos);

-- Listar os clientes que pegaram emprestado mais de 3 livros
SELECT Nome, COUNT(e.Emprestimo_ID) AS Total_Emprestimos
FROM clientes c
JOIN emprestimos e ON c.cliente_ID = e.cliente_ID
GROUP BY Nome
HAVING COUNT(e.Emprestimo_ID) = 1;

