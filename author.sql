USE database_codeup_test_db;
CREATE TABLE authors (
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
PRIMARY KEY (id),
UNIQUE (first_name, last_name)
);

DESCRIBE authors;
ALTER TABLE authors
ADD UNIQUE (first_name, last_name);
DESCRIBE authors;
SELECT * FROM authors;
INSERT INTO authors (first_name, last_name)
VALUES ('John', 'Steinbeck');
SELECT * FROM authors;


ALTER TABLE authors
ADD UNIQUE (first_name, last_name);
DESCRIBE authors;
SELECT * FROM authors;
# INSERT INTO authors (first_name, last_name)
# VALUES ('John', 'Steinbeck');
# CANT INSERT DUPLICATE UNIQUE VALUE