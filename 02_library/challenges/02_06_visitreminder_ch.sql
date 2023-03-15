-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT COUNT(Loans.LoanID) AS LoanCount, Patrons.PatronID, Patrons.FirstName, Patrons.LastName
FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
GROUP BY Loans.PatronID
ORDER BY LoanCount ASC 
LIMIT 15;
