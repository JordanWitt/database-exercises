USE database_codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE  IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR(100) DEFAULT 'NONE',
    release_date INT NOT NULL,
    sales FLOAT NOT NULL,
    genre TEXT NOT NULL,
    PRIMARY KEY (id)
);
DESCRIBE albums;

