-- Active: 1691504355894@@127.0.0.1@3306

CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL, 
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    created_at NOT NULL
);

INSERT INTO users (id, name, email, password, created_at)
VALUES
    ('u001', 'larissa', 'lari20@gmail.com','jardimlari','2023-07-13'),
    ('u002', 'lucas', 'fernades2003@gmail.com', 'zero61', '2023-08-13'),
    ('u003', 'amanda', 'leitemm@gmail.com', 'veiol4', '2023-06-13');

CREATE TABLE products (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    description TEXT NOT NULL,
    image_url TEXT NOT NULL
);

INSERT INTO products (id, name, price, description, image_url)
VALUES ('p1', 'Smartphone', 799.99, 'Celular Xiaomi nova geração', 'data:image/jpeg;base64,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');

INSERT INTO products (id, name, price, description, image_url)
VALUES ('p2', 'Notebook', 1299.99, 'Notebook Samsumg para trabalhar', 'data:image/jpeg;base64,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');

INSERT INTO products (id, name, price, description, image_url)
VALUES ('p3', 'Fone Wireless', 149.99, 'Fones sem fio mais duradouro', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSXeA0ADYy2qA9FXAQltVIVHXKEZ--Y_cxvWU0oqhqZg9YjoB78fPMfu2RpJKU12Wp8RBnaDxG4Swr-MuUQsNKQ-ELkaQH6i9O8xRT87_Q&usqp=CAc');

INSERT INTO products (id, name, price, description, image_url)
VALUES ('p4', 'Smart Watch', 299.99, 'Smart watch com funcionabilidades', 'data:image/webp;base64,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');

INSERT INTO products (id, name, price, description, image_url)
VALUES ('p5', 'Mouse', 39.99, 'Mouse gamer para jogabilidade', 'data:image/webp;base64,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');

SELECT * FROM users;
SELECT * FROM products;

SELECT * FROM products
WHERE name = 'Mouse';

INSERT INTO users (id, name, email, password, created_at)
VALUES ('u004', 'hubia', 'hubis21@gmail.com','laura772','2023-07-13');

INSERT INTO products (id, name, price, description, image_url)
VALUES ('p6', 'Whey', 99.99, 'Whey Protein concentrado fonte de proteina', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLof7eRcGTLAHE9rIk597SXx6vh5gKY8tg0g&usqp=CAU');

DELETE FROM users WHERE id = 'u004';

DELETE FROM products WHERE id = 'p6';

UPDATE products
SET 
    name = 'Mouse Gaming X',
    price = 99.99,
    description = 'Mais DPI e mais sensores',
    image_url = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-A8tT9OLkfuICAWeQ_Bz7U1n410wZGIEKvg&usqp=CAU'
WHERE id = 'p5';
