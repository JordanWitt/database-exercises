USE codeup_test_db;
    mysql> CREATE TABLE albums (
    ->  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    -> artist_first_name VARCHAR(50) DEFAULT 'NONE',
    -> artist_last_name  VARCHAR(100) NOT NULL,
    -> release_date INT NOT NULL,
    -> sales INT NOT NULL,
    -> genre TEXT NOT NULL,
    -> PRIMARY KEY (id)
    -> );