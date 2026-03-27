CREATE DATABASE LibraryDB;
USE LibraryDB;

--books
CREATE TABLE Books (
    Id INT PRIMARY KEY IDENTITY,
    Title NVARCHAR(100),
    Author NVARCHAR(100),
    TotalCopies INT,
    AvailableCopies INT
);

 --Issue Books

 CREATE TABLE IssuedBooks (
    Id INT PRIMARY KEY IDENTITY,
    BookId INT,
    IssueDate DATETIME DEFAULT GETDATE(),
    ReturnDate DATETIME NULL,
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);

select * from Books

select * from IssuedBooks
