-- MYSQL

DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS categories;

CREATE TABLE IF NOT EXISTS categories (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    description TEXT
) ENGINE=InnoDB;

CREATE TABLE recipes (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title VARCHAR(150) NOT NULL,
    slug VARCHAR(50) NOT NULL UNIQUE,
    content TEXT,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES categories(id)
        ON DELETE SET NULL
) ENGINE=InnoDB;

-- ALTER TABLE recipes 
--     ADD FOREIGN KEY (category_id) REFERENCES categories(id)
--     ON DELETE SET NULL;

INSERT INTO categories (title) 
VALUES ('Plat'), ('Dessert');

INSERT INTO recipes (title, slug, category_id) 
VALUES 
    ('Crème anglaise','creme-anglaise',2),
    ('Soupe', 'soupe', 1),
    ('Salade de fruits', 'salade-de-fruits', NULL);

-- DELETE FROM categories WHERE id = 2;

SELECT r.id, r.title, slug, content, c.title AS category 
FROM recipes r
-- LEFT JOIN categories c ON category_id = c.id; /* AVEC les champs avec category_id a NULL */
JOIN categories c ON category_id = c.id /* SANS les champs avec category_id a NULL */
WHERE c.title = 'Dessert';



-- DELETE FROM recipes WHERE id = 2;
-- UPDATE recipes SET content = NULL;
-- UPDATE recipes SET title = 'Soupe de légumes' WHERE title = 'soupe '; 