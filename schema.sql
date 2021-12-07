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

ALTER TABLE animals ADD species_id INT REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT REFERENCES owners(id);

CREATE TABLE vets(
  id INT GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1),
  name CHAR(50),
  age INT,
  date_of_graduation DATE,
  PRIMARY KEY(id)
);

CREATE TABLE specializations(
  species_id INT REFERENCES species(id),
  vet_id INT REFERENCES vets(id)
);

CREATE TABLE visits(
  vet_id INT REFERENCES vets(id),
  animal_id INT REFERENCES animals(id),
  date_of_visit DATE
);