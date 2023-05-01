CREATE TABLE pokemon (
  pokedex_number INTEGER PRIMARY KEY,
  name TEXT,
  type_1 TEXT,
  type_2 TEXT,
  total INTEGER,
  hp INTEGER,
  attack INTEGER,
  defense INTEGER,
  sp_atk INTEGER,
  sp_def INTEGER,
  speed INTEGER,
  generation INTEGER,
  legendary BOOLEAN
);

CREATE TABLE ability (
  ability_id INTEGER PRIMARY KEY,
  ability_name TEXT,
  description TEXT
);

CREATE TABLE pokemon_ability (
  pokedex_number INTEGER,
  ability_id INTEGER,
  ability_number INTEGER,
  PRIMARY KEY (pokedex_number, ability_number),
  FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number),
  FOREIGN KEY (ability_id) REFERENCES ability(ability_id)
);

