SELECT prestatarios.nombre, libros.titulo, prestamos.fecha_prestamo, multas.monto, multas.pagado
FROM prestamos
INNER JOIN prestatarios ON prestamos.idprestatario = prestatarios.idprestatario
INNER JOIN libros ON prestamos.idlibro = libros.idlibro
LEFT JOIN multas ON prestamos.idprestamo = multas.idprestamo
WHERE multas.pagado = FALSE;
