SELECT primeiro_nome, ultimo_nome FROM funcionario ORDER BY ultimo_nome;

SELECT * FROM funcionario WHERE salario > 1000 ORDER BY ultimo_nome, segundo_nome, primeiro_nome;

SELECT SUM(salario) AS 'Total Salario' FROM funcionario;

SELECT d.nome AS 'Departamento', f.primeiro_nome AS 'Gerente' FROM departamento d INNER JOIN funcionario f on d.codigo_gerente = f.codigo ORDER BY d.nome;

SELECT d.nome AS 'Departamento', SUM(f.salario) AS 'Total' FROM departamento d INNER JOIN funcionario f on d.codigo = f.codigo_departamento GROUP BY d.nome ORDER BY f.salario DESC;

SELECT f.primeiro_nome, f.funcao, f.salario, d.nome AS 'Departamento' FROM funcionario f INNER JOIN departamento d ON f.codigo_departamento = d.codigo WHERE f.salario > SOME
(SELECT salario FROM funcionario WHERE codigo IN (SELECT codigo_gerente FROM departamento)) ORDER BY f.salario ASC;