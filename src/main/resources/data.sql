-- Insert Authors
INSERT INTO author (id, name) VALUES (1, 'J.K. Rowling');
INSERT INTO author (id, name) VALUES (2, 'George R.R. Martin');
INSERT INTO author (id, name) VALUES (3, 'J.R.R. Tolkien');

-- Insert Books
INSERT INTO book (id, title) VALUES (1, 'Harry Potter and the Sorcerer''s Stone');
INSERT INTO book (id, title) VALUES (2, 'A Game of Thrones');
INSERT INTO book (id, title) VALUES (3, 'The Fellowship of the Ring');

-- Link Books to Authors (Book_Author Join Table)
INSERT INTO book_author (book_id, author_id) VALUES (1, 1);
INSERT INTO book_author (book_id, author_id) VALUES (2, 2);
INSERT INTO book_author (book_id, author_id) VALUES (3, 3);
