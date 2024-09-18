SELECT departamento, total_prestamos
FROM (
    SELECT departamentos.departamento, 
           COUNT(prestamos.idprestamo) AS total_prestamos
    FROM prestamos
    INNER JOIN prestatarios ON prestamos.idprestatario = prestatarios.idprestatario
    INNER JOIN municipios ON prestatarios.idmunicipio = municipios.idmunicipio
    INNER JOIN departamentos ON municipios.iddepartamento = departamentos.iddepartamento
    GROUP BY departamentos.departamento
) AS subconsulta
ORDER BY total_prestamos DESC LIMIT 1;
