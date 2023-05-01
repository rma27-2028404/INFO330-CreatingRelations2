CREATE TABLE pokemon (
    id INTEGER PRIMARY KEY,
    name TEXT,
    type1 TEXT,
    type2 TEXT,
    total INTEGER,
    generation INTEGER,
    legendary INTEGER,
    height_m REAL,
    weight_kg REAL
);

CREATE TABLE pokemon_stats (
    id INTEGER,
    hp INTEGER,
    attack INTEGER,
    defense INTEGER,
    sp_atk INTEGER,
    sp_def INTEGER,
    speed INTEGER,
    FOREIGN KEY (id) REFERENCES pokemon(id)
);

CREATE TABLE pokemon_abilities (
    id INTEGER,
    ability TEXT,
    is_hidden INTEGER,
    FOREIGN KEY (id) REFERENCES pokemon(id)
);
