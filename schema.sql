CREATE DATABASE catalog;

CREATE TABLE item (
    id  INT GENERATED ALWAYS AS IDENTITY,
    label_id INT,
    publish_date DATE,
    archived BOOLEAN,
    PRIMARY KEY(id),
    FOREIGN KEY (label_id) REFERENCES labels (id)
);

CREATE TABLE labels (
    id  INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(100),
    color VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE books (
    id  INT,
    title VARCHAR(100),
    publisher VARCHAR(100),
    cover_state VARCHAR(100),
    item_id INT,
    FOREIGN KEY(item_id) REFERENCES item(id)
);

CREATE TABLE MusicAlbum(
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  publish_date DATE,
  archived BOOLEAN,
  on_spotify BOOLEAN,
  item_id INT,
  FOREIGN KEY (item_id) REFERENCES Item(id)
);
