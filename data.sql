INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', '2020/02/03', 0, TRUE, 10.23);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', '2018/11/15', 2, TRUE, 8);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', '2021/01/07', 1, FALSE, 15.04);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', '2017/05/12', 5, TRUE, 11);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', '2020/02/08', 0, FALSE, -11), ('Plantmon', '2022/11/15', 2, TRUE, -5.7), ('Squirtle', '1993/04/02', 3, FALSE, -12.13), ('Angemon', '2005/06/12', 1, TRUE, -45), ('Boarmon', '2005/06/07', 7, TRUE, 20.4), ('Blossom', '1998/10/13', 3, TRUE, 17);
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34), ('Jennifer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);
INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon') WHERE RIGHT(name, 3) = 'mon';
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Pokemon') WHERE species_id IS NULL;
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith') WHERE name = 'Agumon';
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester') WHERE name = 'Angemon' OR name = 'Boarmon';

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '2000/04/23'), ('Maisy Smith', 26, '2019/01/17'), ('Stephanie Mendez', 64, '1981/05/04'), ('Jack Harkness', 38, '2008/06/08');

INSERT INTO specializations (vet_id, species_id) VALUES (1, 1), (3, 1), (3, 1), (4, 2);

INSERT INTO visits(vet_id, animal_id, date_of_visit) VALUES (1, 1, '2020/05/24'), (3, 1, '2020/07/22'), (4, 2, '2021/02/02'), (2, 3, '2020/01/05'), (2, 3, '2020/03/08'), (2, 3, '2020/05/14'), (3, 4, '2021/05/04'), (4, 5, '2021/02/24'), (2, 6, '2019/12/21'), (1, 6, '2020/08/10'), (2, 6, '2021/04/07'),  (3, 7, '2019/09/29'), (4, 8, '2020/10/03'), (4, 8, '2020/11/04'), (2, 9, '2019/01/24'), (2, 9, '2019/05/15'), (2, 9, '2020/02/27'), (2, 9, '2020/08/03'), (3, 10, '2020/05/24'), (1, 10, '2021/01/11');