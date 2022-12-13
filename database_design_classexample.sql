USE database_codeup_test_db;

# ---------DROPPED OLD AUTHORS, ADDED CLASS EX----------
CREATE TABLE authors (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);
# ----------INSERTING AUTHOR INFO-----------------------

INSERT INTO authors(first_name, last_name) VALUE                           ('Douglas', 'Adams'),
 ('Mark', 'Twain'),
 ('Kurt', 'Vonnegut');

# ----------DROPPED OLD QUOTES, ADDED CLASS EX----------

CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content TEXT NOT NULL,
    author_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id)
    REFERENCES authors (id)
);

# INSERTING VALUES TO AUTHORS ID AND ADDING CONTENT BASED ON AUTHOR

INSERT INTO quotes (author_id, content)
    VALUES
    ((select id from authors
    WHERE first_name = 'Douglas' AND last_name = 'Adams'),
        'I love deadlines. I love the whooshing noise they make as they go by.');

INSERT INTO quotes (author_id, content)
    VALUES
    ((select id from authors
    WHERE first_name = 'Douglas' AND last_name = 'Adams'),
        'Time is an illusion. Lunchtime doubly so.');

INSERT INTO quotes (author_id, content)
VALUES
((select id from authors
WHERE first_name = 'Mark' AND last_name = 'Twain'),
    'Clothes make the man. Naked people have little or no influence on society.');

INSERT INTO quotes (author_id, content)
    VALUES
    ((select id from authors
    WHERE first_name = 'Kurt' AND last_name = 'Vonnegut'),
        'The universe is a big place, perhaps the biggest.');

INSERT INTO quotes (author_id, content)
    VALUES
    ((select id FROM authors
    WHERE first_name = 'Douglas' AND last_name = 'Adams'),
        'Don''t Panic.');

# ------------CLASS EX CREATING TOPICS TABLE---------------------------
CREATE TABLE topics (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

# ------------INSERTING TOPIC VALUES INTO TABLE------------------------
INSERT INTO topics(name) VALUES
 ('Space and Time'),
 ('Humor'),
 ('Office Life'),
 ('Hitchiker''s Guide to the Galaxy');

# ------------CLASS EX CREATING QUOTE_TOPICS TABLE---------------------------
CREATE TABLE quote_topic (
    quote_id INTEGER UNSIGNED NOT NULL,
    topic_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (quote_id) REFERENCES quotes(id),
    FOREIGN KEY (topic_id) REFERENCES topics(id)
);

# ------------INSERTING INDIVIDUAL RELATIONSHIP------------------------
INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 2), (1, 3),
       (2, 4), (3, 1),
       (3, 2), (3, 3),
       (3, 4), (4, 2),
       (5, 1);

SELECT * FROM topics;
DESCRIBE  quote_topic;

SELECT * FROM quote_topic;
# DISPLAYS HOW MANY TOPICS EACH QUOTE_ID HAS
# -----EX 1 2 TOPICS, 1 3 TOPICS ETC.
