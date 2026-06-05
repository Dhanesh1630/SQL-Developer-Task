
USE LibraryDB;

---------------------------------------------------
-- INNER JOIN
---------------------------------------------------

-- Show borrowed books along with member details

SELECT
    Members.member_name,
    Books.title,
    BorrowedBooks.borrow_date
FROM Members
INNER JOIN BorrowedBooks
ON Members.member_id = BorrowedBooks.member_id
INNER JOIN Books
ON Books.book_id = BorrowedBooks.book_id;

---------------------------------------------------
-- LEFT JOIN
---------------------------------------------------

-- Show all members, even if they never borrowed a book

SELECT
    Members.member_name,
    BorrowedBooks.borrow_date
FROM Members
LEFT JOIN BorrowedBooks
ON Members.member_id = BorrowedBooks.member_id;

---------------------------------------------------
-- RIGHT JOIN
---------------------------------------------------

-- Show all borrow records, even if member details are missing

SELECT
    Members.member_name,
    BorrowedBooks.borrow_date
FROM Members
RIGHT JOIN BorrowedBooks
ON Members.member_id = BorrowedBooks.member_id;

---------------------------------------------------
-- FULL OUTER JOIN
---------------------------------------------------
-- MySQL does not support FULL OUTER JOIN directly
-- Use UNION of LEFT JOIN and RIGHT JOIN

SELECT
    Members.member_name,
    BorrowedBooks.borrow_date
FROM Members
LEFT JOIN BorrowedBooks
ON Members.member_id = BorrowedBooks.member_id

UNION

SELECT
    Members.member_name,
    BorrowedBooks.borrow_date
FROM Members
RIGHT JOIN BorrowedBooks
ON Members.member_id = BorrowedBooks.member_id;

---------------------------------------------------
-- MULTIPLE TABLE JOIN
---------------------------------------------------

-- Show member, book and author details together

SELECT
    Members.member_name,
    Books.title,
    Authors.author_name,
    BorrowedBooks.borrow_date
FROM BorrowedBooks
INNER JOIN Members
ON Members.member_id = BorrowedBooks.member_id
INNER JOIN Books
ON Books.book_id = BorrowedBooks.book_id
INNER JOIN Authors
ON Authors.author_id = Books.author_id;

