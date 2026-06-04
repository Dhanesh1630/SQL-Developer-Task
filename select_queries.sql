
-- Use Database
USE LibraryDB;

---------------------------------------------------
-- BASIC SELECT QUERIES
---------------------------------------------------

-- Display all authors
SELECT * FROM Authors;

-- Display specific columns from Books table
SELECT title, genre
FROM Books;

---------------------------------------------------
-- WHERE CONDITION
---------------------------------------------------

-- Find books published after 2000
SELECT *
FROM Books
WHERE published_year > 2000;

---------------------------------------------------
-- AND CONDITION
---------------------------------------------------

-- Find fantasy books published after 1990
SELECT *
FROM Books
WHERE genre = 'Fantasy'
AND published_year > 1990;

---------------------------------------------------
-- OR CONDITION
---------------------------------------------------

-- Find books with Fantasy or Dystopian genre
SELECT *
FROM Books
WHERE genre = 'Fantasy'
OR genre = 'Dystopian';

---------------------------------------------------
-- LIKE OPERATOR
---------------------------------------------------

-- Find members whose names start with 'A'
SELECT *
FROM Members
WHERE member_name LIKE 'A%';

---------------------------------------------------
-- BETWEEN OPERATOR
---------------------------------------------------

-- Find books published between 1940 and 2015
SELECT *
FROM Books
WHERE published_year BETWEEN 1940 AND 2015;

---------------------------------------------------
-- ORDER BY
---------------------------------------------------

-- Display books sorted by published year
SELECT *
FROM Books
ORDER BY published_year ASC;

---------------------------------------------------
-- LIMIT
---------------------------------------------------

-- Display only first 2 members
SELECT *
FROM Members
LIMIT 2;

---------------------------------------------------
-- COMBINED QUERY
---------------------------------------------------

-- Display top 2 latest books
SELECT title, published_year
FROM Books
ORDER BY published_year DESC
LIMIT 2;
