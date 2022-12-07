USE database_codeup_test_db;
SELECT artist_name FROM albums;
SELECT name AS 'Albums release after 1800' FROM albums WHERE release_date > 1800;
DELETE FROM albums WHERE release_date > 1800;
SELECT artist_name FROM albums;
