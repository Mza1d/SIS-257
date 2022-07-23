CREATE DATABASE parcial2_anarata_diaz_mario;
use  parcial2_anarata_diaz_mario;

CREATE TABLE series
(id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(250) NOT NULL,
sinopsis VARCHAR(500) NOT NULL,
director VARCHAR(100) NOT NULL,
duracion INT NOT NULL,
anio_estreno INT NOT NULL);

CREATE TABLE usuarios (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  usuario VARCHAR(10) NOT NULL,
  clave VARCHAR(120) NOT NULL,
  email VARCHAR(60) NOT NULL,
  rol VARCHAR(20) NOT NULL,
  premium BOOLEAN NOT NULL DEFAULT false
);

CREATE TABLE interpretes
(id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(125),
nacionalidad VARCHAR(120));

select *from interpretes