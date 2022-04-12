\c marlen 
DROP DATABASE peliculas;
CREATE DATABASE peliculas;
\c peliculas

--Cargar ambos archivos a su tabla correspondiente.
CREATE TABLE peliculas(
    id SERIAL, --Es el campo principal de la tabla, es el que le va dar el orden
    pelicula VARCHAR(70), --Es un campo de texto Varchar y tiene un largo 
    agnoEstreno SMALLINT, 
    director VARCHAR(30),
    PRIMARY KEY(id)
);
\copy peliculas FROM 'peliculas.csv' csv header; --Esto me quiere decir que copie desde mi otro archivo pel.csv el titulo.

CREATE TABLE reparto(
    peliculasId INT,
    reparto VARCHAR(40),
    FOREIGN KEY(peliculasId) REFERENCES peliculas(id) --Une esta tabla con la  que hice en la parte de arriba llamada peliculas.
);
\copy reparto FROM 'reparto.csv' csv;
SELECT COUNT(id) AS Nropeliculas FROM peliculas; --
SELECT COUNT(peliculasId) AS Nroreparto FROM reparto; 

