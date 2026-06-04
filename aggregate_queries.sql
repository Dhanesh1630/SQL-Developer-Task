```sql
USE LibraryDB;

---------------------------------------------------
-- COUNT()
---------------------------------------------------

-- Count total authors
SELECT COUNT(*) AS total_authors
FROM Authors;

-- Count total books
SELECT COUNT(*) AS total_books
FROM Books;

---------------------------------------------------
-- SUM()
---------------------------------------------------

-- Total fines collected
SELECT SUM(fine_amount) AS total_fines
FROM BorrowedBooks;

---------------------------------------------------
-- AVG()
---------------------------------------------------

-- Average fine amount
SELECT AVG(fine_amount) AS average_fine
FROM BorrowedBooks;

---------------------------------------------------
-- GROUP BY
---------------------------------------------------

-- Count books by genre
SELECT genre,
       COUNT(*) AS total_books
FROM Books
GROUP BY genre;

---------------------------------------------------
-- GROUP BY + AVG
---------------------------------------------------

-- Average publication year by genre
SELECT genre,
       AVG(published_year) AS avg_year
FROM Books
GROUP BY genre;

---------------------------------------------------
-- GROUP BY + SUM
---------------------------------------------------

-- Total fines per member
SELECT member_id,
       SUM(fine_amount) AS total_fine
FROM BorrowedBooks
GROUP BY member_id;

---------------------------------------------------
-- HAVING
---------------------------------------------------

-- Show genres having more than 1 book
SELECT genre,
       COUNT(*) AS total_books
FROM Books
GROUP BY genre
HAVING COUNT(*) > 1;

---------------------------------------------------
-- HAVING WITH SUM
---------------------------------------------------

-- Members with fines greater than 50
SELECT member_id,
       SUM(fine_amount) AS total_fine
FROM BorrowedBooks
GROUP BY member_id
HAVING SUM(fine_amount) > 50;
```
