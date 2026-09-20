CREATE DATABASE store_practice;

USE store_practice;

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    price INT,
    category_id INT
);

INSERT INTO products (name, price, category_id)
VALUES ('Laptop', 2000, 1);

INSERT INTO products (name, price, category_id)
VALUES ('Mouse', 500, 2);

INSERT INTO products (name, price, category_id)
VALUES ('Keyboard', 800, 2);

INSERT INTO products (name, price, category_id)
VALUES ('Monitor', 1500, 1);

INSERT INTO products (name, price, category_id)
VALUES ('Headphone', 700, 3);

SELECT * FROM products
WHERE price BETWEEN 800 AND 2000;
SELECT * FROM products
WHERE name LIKE '%d';

SELECT * FROM products
WHERE category_id IN (1, 3);
SELECT * FROM products 
WHERE price BETWEEN 700 AND 1500;
SELECT * FROM products 
WHERE name LIKE '%o%';

CREATE TABLE customers (
 id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(50) NOT NULL,
 email VARCHAR(100) UNIQUE
);

ALTER TABLE customers
ADD age INT;

SELECT COUNT(*) FROM products;
SELECT AVG(price) FROM products;
SELECT MAX(price) FROM products;

SELECT category_id, AVG(price) AS height_price
FROM products
GROUP BY category_id
HAVING AVG(price) >= 1000;
CREATE TABLE categories (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO categories VALUES (1, 'Computer');
INSERT INTO categories VALUES (2, 'Accessory');
INSERT INTO categories VALUES (3, 'Audio');
INSERT INTO categories VALUES (4, 'Camera');
SELECT categories.name, products.name
FROM categories
LEFT JOIN products
ON categories.id = products.category_id;

SELECT * FROM products 
WHERE category_id IN (1, 3);
SELECT * FROM products
WHERE price BETWEEN 600 AND 1600;
SELECT * FROM products
WHERE name LIKE '%o%';
ALTER TABLE customers
ADD address VARCHAR(100);

SELECT category_id, COUNT(*) AS product_count
FROM products
GROUP BY category_id;
SELECT category_id, AVG(price) AS average_price
FROM products
GROUP BY category_id;

SELECT categories.name AS category_name, products.name AS product_name
FROM categories
LEFT JOIN products
ON categories.id = products.category_id;