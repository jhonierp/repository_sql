SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR, prestatarios.fecha_nacimiento, CURDATE())), 1) AS promedio_edad, departamentos.departamento
FROM prestatarios
INNER JOIN municipios ON prestatarios.idmunicipio = municipios.idmunicipio
INNER JOIN departamentos ON municipios.iddepartamento = departamentos.iddepartamento
GROUP BY departamentos.iddepartamento;
