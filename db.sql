CREATE TABLE question ( id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, question VARCHAR(200) NOT NULL, theme_id INT, author_id INT);

CREATE TABLE choice ( id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, answer VARCHAR(50) NOT NULL, validity BOOL NOT NULL, question_id INT);

CREATE TABLE author ( id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL, password VARCHAR(255) NOT NULL);

CREATE TABLE theme ( id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, title VARCHAR(20) NOT NULL);

ALTER TABLE choice ADD CONSTRAINT fk_choice_question FOREIGN KEY (question_id) REFERENCES question(id);
