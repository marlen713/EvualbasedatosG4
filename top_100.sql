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
)




