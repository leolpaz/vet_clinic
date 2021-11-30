SELECT * FROM animals WHERE RIGHT(name, 3) = 'mon';
SELECT name FROM animals WHERE date_of_birth between '2016/01/01' and '2019/12/31';
SELECT name FROM animals WHERE neutered = TRUE and escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' or name = 'Pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg between 10.4 and 17.3;

BEGIN;
UPDATE animals
SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals WHERE species = 'unspecified';


BEGIN;
UPDATE animals
SET species = 'digimon'
WHERE RIGHT(name, 3) = 'mon';
UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL;
COMMIT;
SELECT * FROM animals;

BEGIN;
TRUNCATE TABLE animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals
WHERE date_of_birth > '2022/01/01';
SAVEPOINT SP1;
UPDATE animals
SET weight_kg = -weight_kg;
ROLLBACK TO SP1;
UPDATE animals
SET weight_kg = -weight_kg
WHERE weight_kg < 0;
COMMIT;
SELECT * FROM animals;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) "avg_weight" FROM animals;
SELECT neutered, AVG(escape_attempts) "avg_escape_attemps" FROM animals GROUP BY neutered;
SELECT MIN(weight_kg)  "min_weight", MAX(weight_kg) "max_weight", species FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) "avg_escape_attemps" FROM animals WHERE date_of_birth between '1990/01/01' and '2000/12/31' GROUP BY species;