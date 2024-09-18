SELECT autores.nombre, libros.titulo
FROM autores
INNER JOIN libros ON autores.idautor = libros.idautor;


