CREATE DATABASE my_catalog;

CREATE TABLE MusicAlbum(
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  publish_date DATE,
  archived BOOLEAN,
  on_spotify BOOLEAN,
  item_id INT,
  FOREIGN KEY (item_id) REFERENCES Item(id)
);

CREATE TABLE Genre(
  id SERIAL PRIMARY KEY,
  name VARCHAR(250)
);
