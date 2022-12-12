USE database_codeup_test_db;
INSERT INTO authors (first_name, last_name)
VALUES ('J.R.R', 'Tolkien'),
       ('Stephen', 'King'),
       ('Scott', 'Fitzgerald'),
       ('Ernest', 'Hemingway'),
       ('Goerge', 'Orwell');

DESCRIBE authors;

SELECT CONCAT(first_name, ', ', last_name)
AS name
FROM authors;