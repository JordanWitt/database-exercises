USE database_codeup_test_db;
SELECT 'All albums released before 1990';
SELECT 'All albums by Adele';
UPDATE albums SET sales = sales * 10;
SHOW TABLES;
DESCRIBE albums;
SELECT 'All albumbs in you table';
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1990;
DESCRIBE albums;
SELECT release_date FROM albums;
SELECT name AS 'All albums by Adele' FROM albums WHERE artist_name = 'Adele';
UPDATE albums SET artist_name = 'Beyonce' WHERE id = 1;
SELECT id FROM albums;
SELECT artist_name FROM albums;

