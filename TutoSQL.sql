-- MYSQL

-- EXERCICE
DROP TABLE IF EXISTS recipes;

-- CREATION TABLE recettes
CREATE TABLE recipes (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    slug VARCHAR(50)NOT NULL UNIQUE,
    content TEXT,
    duration SMALLINT DEFAULT 10 NOT NULL,
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
        online,
        created_at
    ) VALUES (
        'Soupe1',
        'soupe',
        FALSE,
        NULL
    );

SELECT * FROM recipes WHERE content IS NULL;

-- DELETE FROM recipes WHERE id = 2;

-- UPDATE recipes SET content = NULL;
-- UPDATE recipes SET title = 'Soupe de légumes' WHERE title = 'soupe '; 