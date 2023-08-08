-- MYSQL

-- EXERCICE
DROP TABLE IF EXISTS recipes;

-- CREATION TABLE recettes
CREATE TABLE recipes (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150),
    slug VARCHAR(50),
    content TEXT,
    duration SMALLINT,
    online BOOLEAN,
    created_at TIMESTAMP  
) ENGINE=InnoDB;

-- INDEXER CERTAINS CHAMPS
-- SHOW INDEX FROM recipes;
-- CREATE UNIQUE INDEX idx_slug ON recipes (slug);
-- DROP INDEX idx_slug ON recipes;

-- UPDATE recipes SET slug = 'soupe-3' WHERE id = 3;

SET time_zone='+00:00'; -- Nécéssaire pour insérer une date.
INSERT INTO recipes (
        title,
        slug,
        content,
        duration,
        online,
        created_at
    ) VALUES (
        'Soupe1',
        'soupe',
        'Contenu du test',
        10,
        FALSE,
        '1970-01-01 00:00:01'
    );


-- DELETE FROM recipes WHERE id = 2;

-- UPDATE recipes SET title = 'Soupe de légumes' WHERE title = 'soupe '; 