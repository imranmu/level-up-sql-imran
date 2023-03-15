-- Create a table in the database to store customer
-- responses to our anniversary invitation.

-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.

-- Hint: SQLite offers the INTEGER and REAL datatypes
CREATE TABLE AnniversaryAttendees (
    CustomerID INTEGER,
    Party_size INTEGER
);

-- DROP TABLE AnniversaryAttendees;  -- remove a table from the database