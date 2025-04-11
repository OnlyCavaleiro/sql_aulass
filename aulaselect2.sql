SELECT DISTINCT carga FROM cursos
ORDER BY carga;

SELECT idcurso, nome, ano FROM cursos
ORDER BY nome, ano ASC;

UPDATE gafanhotos SET nacionalidade = 'Argentino'
WHERE id > 40;

SELECT * FROM cursos
WHERE nome NOT LIKE 'p%p';

SELECT * FROM gafanhotos
WHERE nacionalidade = 'Brasileiro';

DESC gafanhotos;

INSERT INTO gafanhotos (codigo, nome, prof, nascimento, sexo, peso, altura) 
VALUES (47, 'Samuel Pinho de Jesus', 'Fotógrafo', '2006-06-08', 'M', 65, 1.65);

SELECT COUNT(*) FROM cursos;

SELECT COUNT(*) FROM cursos WHERE carga > 40;

SELECT nome, MIN(totalaulas) FROM cursos
WHERE ano = '2023';

SELECT SUM(totalaulas) FROM cursos
WHERE ano = '2023';

SELECT COUNT(*) FROM cursos
WHERE ano = '2014';

SELECT AVG(totalaulas) FROM cursos
WHERE ano = '2023';

SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01'
AND '2015-12-31';

SELECT * FROM gafanhotos
WHERE sexo = 'F' AND prof = 'Psicóloga';

SELECT DISTINCT nacionalidade FROM gafanhotos;

SELECT nacionalidade FROM gafanhotos;

/*Selecione mulheres com nomes terminados com a letra E*/
SELECT * FROM gafanhotos
WHERE sexo = 'F' AND nome LIKE '%E';

/*Selecione nome e nacionalidade onde o nome contenha Silva, não seja brasileiro, pese menos de 100kg e seja de sexo feminino*/
SELECT nome, nacionalidade FROM gafanhotos
WHERE nome LIKE '%Silva%' 
AND nacionalidade NOT LIKE 'Brasileiro'
AND sexo = 'F'
AND peso < 100;


/*Selecione todos os nomes únicos*/
SELECT 
DISTINCT COUNT(nome) AS 'nomesunicos' 
FROM gafanhotos;


/*Selecione a maior altura entre todos os homens*/
SELECT MAX(altura), nome FROM gafanhotos
WHERE sexo = 'M';

/*Selecione a média de peso de todos os homens*/
SELECT AVG(peso) FROM gafanhotos
WHERE sexo = 'M';

/*Selecionar o menor peso entre todas as mulheres não brasileiras nascidas entre as datas referidas*/
SELECT MIN(peso) FROM gafanhotos
WHERE sexo = 'F' 
AND nacionalidade NOT LIKE 'Brasileiro'
AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';

/*Selecionar todas as mulheres com mais de 1,90 de altura--*/
SELECT COUNT(altura) FROM gafanhotos
WHERE altura > '1.90'
AND sexo = 'F';
