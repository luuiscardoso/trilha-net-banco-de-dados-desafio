-- 1 

SELECT Nome, Ano
FROM Filmes

-- 2

SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano

-- 3 

SELECT Nome, Ano, Duracao
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

-- 4

SELECT *
FROM Filmes
WHERE Ano = 1997

-- 5 

SELECT *
FROM Filmes
WHERE Ano > 2000

-- 6

SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao 

-- 7

SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC

-- 8 

SELECT * 
FROM Atores

-- 9 
SELECT * 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10

SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11


SELECT Filmes.Nome, Generos.Genero
FROM Filmes 
JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id 
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- 12

select * from Filmes
select * from ElencoFilme
SELECT * FROM Atores

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor



