
 --------------raccourci----------------
-- \c initialise le dossier
-- \dt voir les tables 
-- \dv voir les vues
-- \d liste les relations
 --\l liste toute les table de données
-- \? helper de commande
-- * = l'ensemble des éléments
-- \! cls pour vider la console
--------------------------------------



CREATE DATABASE my_fast_food;
CREATE TABLE
    familly (
        id INT GENERATED ALWAYS AS IDENTITY,
        nom VARCHAR(255) NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    category (
        id INT GENERATED ALWAYS AS IDENTITY,
        nom VARCHAR(255) NOT NULL,
        familly_id INT,
        PRIMARY KEY (id),
        CONSTRAINT fk_familly FOREIGN KEY (familly_id) REFERENCES familly (id)
    );

CREATE TABLE
    product (
        id INT GENERATED ALWAYS AS IDENTITY,
        nom VARCHAR(255) NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    category_product (
        category_id INT NOT NULL,
        product_id INT NOT NULL,
        CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category (id),
        CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product (id),
    );

--------------------------------------------------------------------------------------------
CREATE TABLE family(
id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE category(
id INT GENERATED ALWAYS AS IDENTITY,			
name VARCHAR(255) NOT NULL,
family_id INT NOT NULL,			|
PRIMARY KEY(id),			|    ONE TO MANY
  CONSTRAINT fk_family			|	pas de table intermédiaire nécessaire
  FOREIGN KEY(family_id)		|
  REFERENCES family(id)			|
);

CREATE TABLE product(
id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);


CREATE TABLE size(
id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

============= tables intermediaires pour les MANY TO MANY=============

CREATE TABLE category_product(
category_id INT NOT NULL,
product_id INT NOT NULL,
CONSTRAINT fk_category
   FOREIGN KEY(category_id)
   REFERENCES category(id),
CONSTRAINT fk_product
   FOREIGN KEY(product_id)
   REFERENCES product(id)
);

CREATE TABLE product_size(
product_id INT NOT NULL,
size_id INT NOT NULL,
CONSTRAINT fk_product
   FOREIGN KEY(product_id)
   REFERENCES product(id),
CONSTRAINT fk_size
   FOREIGN KEY(size_id)
   REFERENCES size(id)
);


CREATE TABLE family_product(
family_id INT NOT NULL,
product_id INT NOT NULL,
CONSTRAINT fk_family
   FOREIGN KEY(family_id)
   REFERENCES family(id),
CONSTRAINT fk_product
   FOREIGN KEY(product_id)
   REFERENCES product(id)
);


INSERT INTO category (name, family_id) VALUES ('Menu Maxi Best Of', 1), ('Menu Mc First', 1), ('Happy Meal', 1), ('Nos boissons froides', 2), ('Nos boissons chaudes', 2), ('Nos Burgers', NULL);

========= Créer un VIEW ===========

CREATE VIEW add_all_products AS
SELECT f.id, f.name AS family, c.name AS category, p.name AS product, s.name AS size
FROM family f
RIGHT JOIN category c
ON f.id = c.family_id
INNER JOIN category_product cp
ON cp.category_id = c.id
INNER JOIN product p
ON p.id = cp.product_id
LEFT JOIN product_size ps
ON ps.product_id = p.id
LEFT JOIN size s
ON s.id = ps.size_id;

======== afficher VIEW =========
 SELECT * FROM add_all_products;

== relier les size du Coca (table : size) , au Coca (table : product) =========

SELECT * FROM product;



 id |   name
----+-----------
  1 | Big Mac
  2 | Mc First
  3 | Hamburger
  4 | Cheese
  5 | Coca	<=============
  6 | Café
(6 lignes)


my_food_truck=# SELECT * FROM size;
 id | name
----+------
  1 | 25cL	| <===========
  2 | 40cL	|
  3 | 50cL	|
(3 lignes)

INSERT INTO product_size (product_id, size_id) VALUES
(5, 1),
(5, 2),
(5, 3);

INSERT 0 3


=== mettre à jour un élément, ici renommer: Café en Café allongé =========

UPDATE product
SET name = 'Café allongé'
WHERE id = 6;

UPDATE 1

my_food_truck=# SELECT * FROM product;

 id |     name
----+--------------
  1 | Big Mac
  2 | Mc First
  3 | Hamburger
  4 | Cheese
  5 | Coca
  6 | Café allongé
(6 lignes)

-- Mettre à jour plusieurs valeurs d'une même colonne dans une table ---

UPDATE nom_table
SET nom_colonne =
CASE 
    WHEN condition1 THEN  nouvelle_valeur1
    WHEN condition2 THEN  nouvelle_valeur2
    -- (ELSE si nécessaire) --
END
WHERE (condition pour cloturer le UPDATE, ex: 1 + 1 = 2) <-- ici condition toujours vraie



---------CREATE VIEW---------------
CREATE VIEW menu AS
SELECT f.id, f.nom AS familly, c.nom AS category
FROM familly f
INNER JOIN category c
ON f.id = c.familly_id
LEFT JOIN  category_product cp
ON cp.product_id = c.id;



-------------------purge de la console----------
\! cls
--------------------------------------------------
INSERT INTO product_size (product_id, size_id) VALUES
(5, 1),
(5, 2),
(5, 3);


---------------------------insertion de plusieurs produit en 1 ligne
WITH								
    inserted_product AS (
        INSERT INTO product (nom)
        VALUES ('coca light') RETURNING id)
INSERT INTO
    category_product (product_id, category_id)
SELECT
    id,
    10
FROM
    inserted_product;
--------------------------------------------

WITH 
    new_product AS (
        INSERT INTO product (nom) VALUES ('coca light') RETURNING id),   --insert dans la gamme produit un nouveau produit---
    size_id AS (
        SELECT id FROM size WHERE nom = '25cl'),                          -- 
    category_id AS (
        SELECT id FROM category WHERE nom = 'Nos boissons froides'),
    familly_id AS (
        SELECT id FROM familly WHERE nom = 'Nos boissons')
SELECT 
    (SELECT id FROM category_id) AS category_id,
    (SELECT id FROM new_product) AS product_id
UNION ALL
SELECT 
    (SELECT id FROM size_id) AS category_id,
    (SELECT id FROM new_product) AS product_id
UNION ALL
SELECT 
    (SELECT id FROM familly_id) AS category_id,
    (SELECT id FROM new_product) AS product_id;

 --------------raccourci----------------
-- \c initialise le dossier
-- \dt voir les tables 
-- \dv voir les vues
-- \d liste les relations
 --\l liste toute les table de données
-- \? helper de commande
-- *= l'ensemble des éléments
-- \! cls pour vider la console
-- \o 'C:/Workspaces/sql/result.txt
-- \i
-- \H permet de passer format HTML pour en sortir \H
-- \s affiche l'historique
--------------------------------------

INSERT INTO size(nom) VALUES ('XL');
DELETE FROM size
WHERE name = 'XL';

SELECT p.*, ps.*, s.id AS sizeId, s.name AS sizeName
FROM product p
INNER JOIN product_size ps
ON p.id = ps.product_id
INNER JOIN size s
ON s.id = ps.size_id;

DELETE FROM product_size
WHERE size_id = 3 AND product_id = 5;

------------------------------------RAJOUT de 1 élément

WITH 
    new_size AS (
        INSERT INTO size (nom) VALUES ('50cl') RETURNING id)   --insert dans la gamme size une nouvelle taille---
        INSERT INTO product_size(product_id, size_id)
        SELECT 5, id FROM new_size;



ALTER TABLE product_size
DROP CONSTRAINT fk_size;
---------------------------------Delete en cascade si non nullable-----------------
ALTER TABLE product_size
ADD CONSTRAINT fk_size 
FOREIGN KEY(size_id)
REFERENCES size(id)
ON DELETE SET NULL;
----------------------------------Delete si nullable------------------------------
ALTER TABLE product_size
ADD CONSTRAINT fk_size 
FOREIGN KEY(size_id)
REFERENCES size(id)
ON DELETE CASCADE;


----------------------------------------------------------creation d'une table en vérifiant si elle existe------------
CREATE TABLE IF NOT EXISTS size_product (
    size_id INTEGER ,
    product_id INTEGER,
    PRIMARY KEY (size_id, product_id),
    FOREIGN KEY (size_id) REFERENCES size(id) ON DELETE SET NULL,
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE SET NULL
);
-------------------------------------------------------------------

SELECT
    f.id,
    f.nom AS familly,
    c.nom AS category,
    p.nom AS product,
    s.nom AS size

FROM
    familly f
    RIGHT JOIN category c ON f.id = c.familly_id
    INNER JOIN category_product cp ON c.id = cp.category_id
    INNER JOIN product p ON p.id = cp.product_id
    LEFT JOIN product_size ps ON p.id = ps.product_id
    LEFT JOIN size s ON s.id = ps.size_id;


 \o 'C:/Workspaces/sql/result.txt';  --creer un txt du tableau

\H
 \o 'C:/Workspaces/sql/tableau.html'; --transforme le fichier en HTML, pour en sortir il faudra \H 
 -- pour le lire il faudra faire SELECT FROM 

