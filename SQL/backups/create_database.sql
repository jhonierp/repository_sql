create schema biblioteca;

use biblioteca;
-- Tabla de Autores
CREATE TABLE autores (
    idautor int PRIMARY KEY auto_increment,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE
);

-- Tabla de Categorías
CREATE TABLE categorias (
    idcategoria int PRIMARY KEY auto_increment,
    nombre_categoria VARCHAR(100) NOT NULL
);

-- Tabla de Libros
CREATE TABLE libros (
    idlibro SERIAL PRIMARY KEY auto_increment,
    titulo VARCHAR(200) NOT NULL,
    idautor INT REFERENCES autores(idautor),
    idcategoria INT REFERENCES categorias(idcategoria),
    fecha_publicacion DATE,
    isbn VARCHAR(20) UNIQUE
);

-- Tabla de Prestatarios (Usuarios que toman libros prestados)
CREATE TABLE prestatarios (
    idprestatario int PRIMARY KEY auto_increment,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    direccion VARCHAR(200),
    idmunicipio INT REFERENCES municipios(idmunicipio)
);

-- Tabla de Municipios (ciudades)
CREATE TABLE municipios (
    idmunicipio int PRIMARY KEY auto_increment,
    nombre_municipio VARCHAR(100) NOT NULL,
    iddepartamento INT REFERENCES departamentos(iddepartamento)
);

-- Tabla de Departamentos (provincias o estados)
CREATE TABLE departamentos (
    iddepartamento SERIAL PRIMARY KEY auto_increment,
    departamento VARCHAR(100) NOT NULL
);

-- Tabla de Préstamos (relaciona libros y prestatarios)
CREATE TABLE prestamos (
    idprestamo int PRIMARY KEY auto_increment,
    idlibro INT REFERENCES libros(idlibro),
    idprestatario INT REFERENCES prestatarios(idprestatario),
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE
);

-- Tabla de Multas (relacionada con los préstamos)
CREATE TABLE multas (
    idmulta int PRIMARY KEY auto_increment,
    idprestamo INT REFERENCES prestamos(idprestamo),
    monto DECIMAL(10, 2) NOT NULL,
    pagado BOOLEAN DEFAULT FALSE
);

-- Tabla de Empleados (trabajadores de la biblioteca)
CREATE TABLE empleados (
    idempleado int PRIMARY KEY auto_increment,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    puesto VARCHAR(100),
    fecha_contratacion DATE
);

-- Tabla de Recursos Digitales (como ebooks, audiolibros)
CREATE TABLE recursos_digitales (
    idrecurso int PRIMARY KEY auto_increment,
    titulo VARCHAR(200) NOT NULL,
    tipo_recurso VARCHAR(50), -- Ejemplo: 'ebook', 'audiolibro'
    enlace VARCHAR(200) -- URL o enlace al recurso
);
