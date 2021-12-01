CREATE TABLE animals(
  id INT GENERATED ALWAYS AS IDENTITY,
  name CHAR(50),
  date_of_birth DATE,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL,
  PRIMARY KEY(id)
);
ALTER TABLE animals ADD species char(50);

CREATE TABLE owners(
  id INT GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1),
  full_name CHAR(50),
  age INT,
  PRIMARY KEY(id)
);

CREATE TABLE species(
  id INT GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1),
  name CHAR(50),
  PRIMARY KEY(id)
);

ALTER TABLE animals DROP species;

ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals
ADD CONSTRAINT speciefk
FOREIGN KEY (species_id)
REFERENCES species (id);

ALTER TABLE animals ADD species_id INT REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT REFERENCES owners(id);