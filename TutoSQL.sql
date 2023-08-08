-- MYSQL

-- EXERCICE
DROP TABLE IF EXISTS recipes;

-- CREATION TABLE recettes
CREATE TABLE recipes (
    title VARCHAR(150) NOT NULL,
    slug VARCHAR(50) NOT NULL UNIQUE,
    content TEXT,
    duration SMALLINT,
    online BOOLEAN,
    created_at TIMESTAMP  
) ENGINE=InnoDB;


SET time_zone='+00:00'; -- Nécéssaire pour insérer une date.
INSERT INTO recipes (
        title,
        slug,
        content,
        duration,
        online,
        created_at
    ) VALUES (
        'Salade de fruits',
        'salade-de-fruit',
        'Contenu du test',
        30,
        TRUE,
        '1970-01-01 00:00:01'
    ),(
        'Soupe',
        'Soupe',
        'Contenu du test',
        30,
        FALSE,
        '1970-01-01 00:00:02'
    );

-- RECUPERER DES DONNEES
SELECT title, duration 
FROM recipes
WHERE slug IN ('Soupe') AND duration < 20;

SELECT title, duration 
FROM recipes
WHERE slug LIKE 'salade%' AND duration < 20;

-- SUPPRIMER DES CHAMPS
DELETE FROM recipes WHERE title = 'Soupe3';

-- METTE A JOUR DES CHAMPS
UPDATE recipes SET title = 'Soupe de légumes' WHERE title = 'soupe '; 