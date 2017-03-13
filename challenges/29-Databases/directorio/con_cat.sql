DROP TABLE if exists contactos;
CREATE TABLE contactos (
  id       INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre   VARCHAR(10),
  apellido VARCHAR(10),
  compañia VARCHAR(20),
  telefono INTEGER,
  email   VARCHAR(20)
);

DROP TABLE if exists categorias;
CREATE TABLE categorias (
  id       INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre   VARCHAR(20)
);

DROP TABLE if exists contactos_categorias;

CREATE TABLE contactos_categorias (
  id       INTEGER PRIMARY KEY AUTOINCREMENT,
  contacto_id INTEGER,
  categoria_id INTEGER
);
