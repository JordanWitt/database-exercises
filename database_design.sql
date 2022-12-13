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
    FOREIGN KEY (users_id) REFERENCES users(id)
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

CREATE TABLE responsibility (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO responsibilities(name)
VALUES
    ('Kick Member'),
    ('Ban Member'),
    ('Create Invite'),
    ('Edit Username'),
    ('Edit Channels');

CREATE TABLE user_responsibility(
     user_id INTEGER UNSIGNED NOT NULL ,
     roles_id INTEGER UNSIGNED NOT NULL,
     responsibility_id INTEGER UNSIGNED NOT NULL,
     FOREIGN KEY (user_id) REFERENCES users(id),
     FOREIGN KEY (roles_id) REFERENCES roles(id),
     FOREIGN KEY (responsibility_id) REFERENCES responsibilities(id)
);

INSERT INTO user_responsibility(user_id, roles_id, responsibility_id)
VALUES
(1,1,1), (1,1,2), (1,1,3), (1,1,4), (1,1,5),
(2,2,1), (2,2,2), (2,2,3), (2,2,4),
(3,3,3), (3,3,4);


