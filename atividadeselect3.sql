/*Uma lista com as profissões dos gafanhotos e seus quantitativos*/
SELECT prof, COUNT(*) FROM gafanhotos
GROUP BY prof;

/*Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/1992*/
SELECT sexo, COUNT(*) FROM gafanhotos
WHERE nascimento > '1992-01-01'
GROUP BY sexo;

/*Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o
país de origem e o total de pessoas nascidas lá. Só nos interessam
os países que tiveram mais de 3 gafanhotos com essa nacionalidade.*/
SELECT DISTINCT nacionalidade, COUNT(*) FROM gafanhotos
WHERE nacionalidade NOT IN ('Brasileiro', 'Brasileira')
GROUP BY nacionalidade
HAVING COUNT(*) > 3;

/*Uma lista agrupada pela altura dos gafanhotos, mostrando
quantas pessoas pesam mais de 80kg e que estão acima da média
de altura de todos os cadastrados.*/
SELECT nome, peso, altura FROM gafanhotos
WHERE peso > 80
GROUP BY nome, peso, altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos);