SELECT ano, nome, carga FROM cursos
ORDER BY ano, nome;

SELECT nome, descrição, ano FROM cursos
WHERE ano <> '2015'
ORDER BY ano, nome;

SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2014 AND 2016
ORDER BY ano DESC, nome ASC;

SELECT idcurso, nome, ano FROM cursos
WHERE ano IN ('2014', '2018')
ORDER BY nome;

SELECT nome, carga, totalaulas FROM cursos
WHERE carga > 35 AND totalaulas <= 30
ORDER BY totalaulas;

SELECT * FROM cursos;