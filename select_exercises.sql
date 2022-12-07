USE database_codeup_test_db;
SELECT * FROM albums;
SELECT * FROM albums WHERE artist_name = 'Adele';
SELECT release_date FROM albums WHERE artist_name = 'Adele';
SELECT genre FROM albums WHERE name = '21';
SELECT name FROM albums WHERE release_date BETWEEN 1990 and 2000;
SELECT * FROM albums WHERE sales <= 30;
SELECT * FROM albums WHERE genre = 'Rock';
SELECT * FROM albums WHERE genre = 'Hard Rock';



