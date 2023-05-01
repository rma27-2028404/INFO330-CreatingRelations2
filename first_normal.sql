
WITH split(pokedex_number, abilities, nextabilities) AS (
    SELECT pokedex_number, '' AS abilities, abilities || ',' AS nextabilities
    FROM imported_pokemon_data
    UNION ALL
    SELECT pokedex_number,
    substr(nextabilities, 0, instr(nextabilities, ',')) AS abilities,
    substr(nextabilities, instr(nextabilities, ',')+1) AS nextabilities
    FROM split
    WHERE nextabilities !=''
)
SELECT pokedex_number, abilities
FROM split
WHERE abilities !=''
ORDER BY pokedex_number;

CREATE TABLE tablename AS
REPLACE(col, pattern, replacement)
TRIM(col)
