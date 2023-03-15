-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.
SELECT Loans.DueDate, Books.title, Patrons.FirstName, Patrons.email
FROM Loans
JOIN Books ON Loans.bookID = Books.BookID
JOIN Patrons ON Loans.patronID = Patrons.PatronID
WHERE Loans.DueDate = '2022-07-13'AND Loans.ReturnedDate IS NULL;
