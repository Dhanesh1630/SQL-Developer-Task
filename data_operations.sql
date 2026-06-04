
-- Use Database
USE LibraryDB;

---------------------------------------------------
-- INSERT DATA INTO AUTHORS TABLE
---------------------------------------------------

INSERT INTO Authors (author_name, country)
VALUES
('J.K. Rowling', 'United Kingdom'),
('George Orwell', 'India'),
('Chetan Bhagat', NULL);

---------------------------------------------------
-- INSERT DATA INTO BOOKS TABLE
---------------------------------------------------

INSERT INTO Books (title, author_id, genre, published_year)
VALUES
('Harry Potter', 1, 'Fantasy', 1997),
('1984', 2, 'Dystopian', 1949),
('Half Girlfriend', 3, NULL, 2014);

---------------------------------------------------
-- INSERT DATA INTO MEMBERS TABLE
---------------------------------------------------

INSERT INTO Members (member_name, email, join_date)
VALUES
('Rahul Sharma', 'rahul@gmail.com', '2025-06-01'),
('Sneha Reddy', NULL, '2025-06-02'),
('Aman Kumar', 'aman@gmail.com', '2025-06-03');

---------------------------------------------------
-- INSERT DATA INTO BORROWEDBOOKS TABLE
---------------------------------------------------

INSERT INTO BorrowedBooks (member_id, book_id, borrow_date, return_date)
VALUES
(1, 1, '2025-06-10', '2025-06-20'),
(2, 2, '2025-06-12', NULL),
(3, 3, '2025-06-15', '2025-06-25');

---------------------------------------------------
-- UPDATE STATEMENTS
---------------------------------------------------

-- Update country name
UPDATE Authors
SET country = 'United Kingdom'
WHERE author_id = 1;

-- Update missing email
UPDATE Members
SET email = 'sneha@gmail.com'
WHERE member_id = 2;

---------------------------------------------------
-- DELETE STATEMENTS
---------------------------------------------------

-- Delete a borrowed record
DELETE FROM BorrowedBooks
WHERE borrow_id = 3;

---------------------------------------------------
-- DISPLAY TABLE DATA
---------------------------------------------------

SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM BorrowedBooks;

