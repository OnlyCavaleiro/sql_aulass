SELECT totalaulas, COUNT(*) AS 'Quantidade' FROM cursos
GROUP BY totalaulas;

SELECT DISTINCT carga FROM cursos
ORDER BY carga;

SELECT nome, carga FROM cursos
WHERE carga = 40;

SELECT carga, COUNT(nome) FROM cursos
WHERE totalaulas = 30
GROUP BY carga;

/*Selecionei os anos, fiz a contagem quantos cursos por ano e ordenei do maior para o menos*/
SELECT ano, COUNT(*) FROM cursos
GROUP BY ano
ORDER BY COUNT(*) DESC;

SELECT totalaulas, COUNT(*) FROM cursos
WHERE totalaulas = 12;

SELECT * FROM cursos 
WHERE totalaulas < 30;


SELECT ano, COUNT(*) FROM cursos
GROUP BY ano;

SELECT ano, COUNT(*) FROM cursos
GROUP BY ano
HAVING COUNT(ano) <= 5
ORDER BY COUNT(*) DESC;

SELECT nome,carga, COUNT(*) FROM cursos
WHERE ano > 2015
GROUP BY carga;

SELECT carga, COUNT(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG (carga) FROM cursos);