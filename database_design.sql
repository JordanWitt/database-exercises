USE database_codeup_test_db;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name  VARCHAR(100) NOT NULL,
    username   VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO users (first_name, last_name, username)
VALUES
('Jordan', 'Witt', 'Cimarron'),
('Kiley', 'Hector', 'Chopup'),
('Hailey', 'Shimansky', 'SejuIndigo');

CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content TEXT NOT NULL,
    users_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);

INSERT INTO roles (users_id, content)
VALUES ((SELECT id FROM users WHERE first_name = 'Jordan' AND last_name = 'Witt'),
        'Owner');
INSERT INTO roles (users_id, content)
VALUES ((SELECT id FROM users WHERE first_name = 'Kiley' AND last_name = 'Hector'),
        'Mod');
INSERT INTO roles (users_id, content)
VALUES ((SELECT id FROM users WHERE first_name = 'Hailey' AND last_name = 'Shimansky'),
        'Member');

DESCRIBE users;
DESCRIBE roles;
SELECT * FROM users;
SELECT * FROM roles;