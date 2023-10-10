CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    recipes VARCHAR(60) NOT NULL,
    grocery_list VARCHAR(40) NOT NULL,
    occasions VARCHAR(100) NOT NULL
);

CREATE TABLE grocery_list (
    id SERIAL PRIMARY KEY,
    ingredients VARCHAR,
    user_id INT NOT NULL REFERENCES user(id)
);

CREATE TABLE occasions (
    id SERIAL PRIMARY KEY,
    occasion_name VARCHAR(60) UNIQUE NOT NULL,
    recipes VARCHAR(60) NOT NULL,
    ingredients VARCHAR NOT NULL,
    user_id INT NOT NULL REFERENCES user(id)
);

CREATE TABLE recipes (
    id SERIAL PRIMARY KEY,
    ingredients VARCHAR NOT NULL,
    instructions VARCHAR NOT NULL,
    private BOOLEAN NOT NULL,
    user_id INT NOT NULL REFERENCES user(id),
    occasions_id INT NOT NULL REFERENCES occasions(id)
);

INSERT INTO users (name, recipes, grocery_list, occasions) VALUES
('Olu', 'Cake', 'Flour and eggs', 'Birthday party')


SELECT * FROM users