CREATE TABLE animals(
  id INT GENERATED ALWAYS AS IDENTITY,
  name CHAR(50),
  date_of_birth DATE,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL,
  PRIMARY KEY(id)
);