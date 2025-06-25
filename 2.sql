use LibraryDB;
INSERT INTO Authors (name) VALUES 
('J.K. Rowling'), 
('George Orwell'),
('Agatha Christie');
INSERT INTO Categories (category_name) VALUES 
('Fantasy'), 
('Dystopian'),
('Mystery');
INSERT INTO Books (title, author_id, category_id) VALUES 
('Harry Potter and the Philosopher\'s Stone', 1, 1),
('1984', 2, 2),
('Murder on the Orient Express', 3, 3),
('Unknown Book', NULL, NULL); -- Book with missing author & category

INSERT INTO Members (name, join_date) VALUES 
('Alice', '2023-01-15'),
('Bob', NULL), -- missing join_date
('Charlie', '2023-02-20');
INSERT INTO BorrowRecords (book_id, member_id, borrow_date, return_date) VALUES
(1, 1, '2024-06-01', '2024-06-10'),
(2, 2, '2024-06-05', NULL), -- not returned yet
(3, 3, '2024-06-08', '2024-06-15');
UPDATE Members 
SET join_date = '2023-03-01' 
WHERE name = 'Bob';
UPDATE Books 
SET title = CONCAT(title, ' (Updated Edition)')
WHERE book_id IN (1, 2);
DELETE FROM Books 
WHERE title = '1984';
INSERT INTO Members (name) VALUES ('Diana'); -- join_date will be NULL