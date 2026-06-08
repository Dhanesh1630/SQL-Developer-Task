
USE LibraryDB;

---------------------------------------------------
-- SCALAR SUBQUERY
---------------------------------------------------

-- Find latest published book

SELECT *
FROM Books
WHERE published_year =
(
    SELECT MAX(published_year)
    FROM Books
);

---------------------------------------------------
-- SUBQUERY WITH IN
---------------------------------------------------

-- Find books whose authors exist

SELECT *
FROM Books
WHERE author_id IN
(
    SELECT author_id
    FROM Authors
);

---------------------------------------------------
-- SUBQUERY WITH =
---------------------------------------------------

-- Find author of the latest book

SELECT *
FROM Authors
WHERE author_id =
(
    SELECT author_id
    FROM Books
    WHERE published_year =
    (
        SELECT MAX(published_year)
        FROM Books
    )
);

---------------------------------------------------
-- EXISTS SUBQUERY
---------------------------------------------------

-- Members who borrowed books

SELECT *
FROM Members m
WHERE EXISTS
(
    SELECT 1
    FROM BorrowedBooks b
    WHERE m.member_id = b.member_id
);

---------------------------------------------------
-- NOT EXISTS
---------------------------------------------------

-- Members who never borrowed books

SELECT *
FROM Members m
WHERE NOT EXISTS
(
    SELECT 1
    FROM BorrowedBooks b
    WHERE m.member_id = b.member_id
);

---------------------------------------------------
-- SUBQUERY IN FROM CLAUSE
---------------------------------------------------

SELECT *
FROM
(
    SELECT genre,
           COUNT(*) AS total_books
    FROM Books
    GROUP BY genre
) AS BookSummary;

---------------------------------------------------
-- CORRELATED SUBQUERY
---------------------------------------------------

-- Authors having books

SELECT *
FROM Authors a
WHERE EXISTS
(
    SELECT 1
    FROM Books b
    WHERE b.author_id = a.author_id
);

