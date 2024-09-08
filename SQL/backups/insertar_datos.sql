-- Insertar datos en la tabla de Departamentos
INSERT INTO departamentos (departamento) VALUES
('Antioquia'),
('Cundinamarca'),
('Valle del Cauca');

-- Insertar datos en la tabla de Municipios
INSERT INTO municipios (nombre_municipio, iddepartamento) VALUES
( 
'Medellín', 1),
('Bogotá', 2),
('Cali', 3);

-- Insertar datos en la tabla de Autores
INSERT INTO autores (nombre, apellido, fecha_nacimiento) VALUES
('Gabriel', 'García Márquez', '1927-03-06'),
('Mario', 'Vargas Llosa', '1936-03-28'),
('Isabel', 'Allende', '1942-08-02');

-- Insertar datos en la tabla de Categorías
INSERT INTO categorias (nombre_categoria) VALUES
('Ficción'),
('Ciencia'),
('Historia');

-- Insertar datos en la tabla de Libros
INSERT INTO libros (titulo, idautor, idcategoria, fecha_publicacion, isbn) VALUES
('Cien años de soledad', 1, 1, '1967-05-30', '9788437604947'),
('La ciudad y los perros', 2, 1, '1963-01-01', '9780345806113'),
('La casa de los espíritus', 3, 1, '1982-01-01', '9788408004347');

-- Insertar datos en la tabla de Prestatarios
INSERT INTO prestatarios (nombre, apellido, fecha_nacimiento, direccion, idmunicipio) VALUES
('Juan', 'Pérez', '1985-04-10', 'Calle 123 #45-67', 1),
('María', 'González', '1990-07-21', 'Carrera 10 #8-96', 2),
('Carlos', 'López', '1978-09-14', 'Avenida Siempre Viva #123', 3);

-- Insertar datos en la tabla de Préstamos
INSERT INTO prestamos (idlibro, idprestatario, fecha_prestamo, fecha_devolucion) VALUES
(1, 1, '2024-08-01', '2024-08-15'),
(2, 2, '2024-08-05', '2024-08-20'),
(3, 3, '2024-08-10', '2024-08-25');

-- Insertar datos en la tabla de Multas
INSERT INTO multas (idprestamo, monto, pagado) VALUES
(1, 5000, FALSE),
(2, 10000, TRUE),
(3, 8000, FALSE);

-- Insertar datos en la tabla de Empleados
INSERT INTO empleados (nombre, apellido, puesto, fecha_contratacion) VALUES
('Ana', 'Martínez', 'Bibliotecaria', '2020-01-15'),
('Luis', 'Gómez', 'Encargado de préstamos', '2019-06-20');

-- Insertar datos en la tabla de Recursos Digitales
INSERT INTO recursos_digitales (titulo, tipo_recurso, enlace) VALUES
('Cien años de soledad - Audiolibro', 'audiolibro', 'https://ejemplo.com/cien_anos_soledad_audio'),
('La ciudad y los perros - Ebook', 'ebook', 'https://ejemplo.com/la_ciudad_ebook'),
('La casa de los espíritus - Ebook', 'ebook', 'https://ejemplo.com/casa_espiritus_ebook');
