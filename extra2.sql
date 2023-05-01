CREATE TABLE trainer (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(80),
    last_name VARCHAR(80)
);

CREATE TABLE favorite_pokemon_type (
    id INTEGER PRIMARY KEY,
    type_name VARCHAR(80),
    trainer_id INTEGER REFERENCES trainer(id)
);

CREATE TABLE pokemon_team (
    id INTEGER PRIMARY KEY,
    team_name VARCHAR(80),
    trainer_id INTEGER REFERENCES trainer(id)
);

CREATE TABLE pokemon_team_member (
    id INTEGER PRIMARY KEY,
    pokemon_id INTEGER REFERENCES pokemon(pokedex_number),
    pokemon_team_id INTEGER REFERENCES pokemon_team(id)
);

INSERT INTO trainer (first_name, last_name) VALUES ('Thomas', 'Ma');
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Electric', 1);
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Water', 1);

INSERT INTO trainer (first_name, last_name) VALUES ('Justin', 'Dong');
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Grass', 2);
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Fire', 2);

INSERT INTO trainer (first_name, last_name) VALUES ('Mary', 'Smith');
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Psychic', 3);
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Fairy', 3);

INSERT INTO trainer (first_name, last_name) VALUES ('Ted', 'Neward');
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Dragon', 4);
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Ghost', 4);

-- adding pokemon team members for the trainers
INSERT INTO pokemon_team (team_name, trainer_id) VALUES ('Electric Squad', 1);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (25, 1);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (26, 1);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (6, 1);

INSERT INTO pokemon_team (team_name, trainer_id) VALUES ('Grass Gang', 2);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (1, 2);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (2, 2);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (3, 2);

INSERT INTO pokemon_team (team_name, trainer_id) VALUES ('Psychic Powers', 3);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (150, 3);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (151, 3);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (122, 3);

INSERT INTO pokemon_team (team_name, trainer_id) VALUES ('Ghostly Horde', 4);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (94, 4);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (92, 4);
INSERT INTO pokemon_team_member (pokemon_id, pokemon_team_id) VALUES (105, 4);
