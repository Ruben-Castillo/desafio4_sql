CREATE DATABASE biblioteca;
\c biblioteca

CREATE TABLE lectores(
    id SERIAL,
    nombre VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE libros(
    id SERIAL,
    titulo VARCHAR(50),
    PRIMARY KEY (id)
);
CREATE TABLE autores(
    id SERIAL,
    nombre VARCHAR(50),
    PRIMARY KEY (id)
);
CREATE TABLE editoriales(
    id SERIAL,
    nombre VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE prestamos (
    fecha_devolucion DATE NOT NULL,
    lector_id INT NOT NULL,
    libro_id INT NOT NULL,
    FOREIGN KEY (lector_id) REFERENCES lectores(id),
    FOREIGN KEY (libro_id) REFERENCES libros(id) 
);

CREATE TABLE editoriales_libros(
    libro_id INT NOT NULL,
    editorial_id INT NOT NULL,
    FOREIGN KEY (libro_id) REFERENCES libros(id),
    FOREIGN KEY (editorial_id) REFERENCES editoriales(id)
);

CREATE TABLE libros_autores (
    libro_id INT NOT NULL,
    autor_id INT NOT NULL,
    FOREIGN KEY (libro_id) REFERENCES libros(id),
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);
