USE database_codeup_test_db;
CREATE TABLE authors (
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
PRIMARY KEY (id),
UNIQUE (first_name, last_name)
);

DESCRIBE authors;