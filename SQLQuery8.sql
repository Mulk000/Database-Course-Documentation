---- COUNT:  
SELECT MemberID,
COUNT(*) AS TotalBorrowings
FROM Borrowing
GROUP BY MemberID;

SELECT c.Category_Name,
COUNT(b.Book_ID) AS TotalBooks
FROM Books b
JOIN BookCategories bc ON b.Book_ID = bc.BookID
JOIN Categories c ON bc.CategoryID = c.Category_ID
GROUP BY c.Category_Name;

SELECT
brn.Branch_Name,
COUNT(b.BorrowID) AS OverdueCount
FROM Borrowing b
JOIN Branches brn ON b.BranchID = brn.Branch_ID
WHERE b.Status = 'Overdue'
GROUP BY brn.Branch_Name;

 ----SUM:
SELECT
FORMAT(f.PaymentDate, 'yyyy-MM') AS Month,
SUM(f.PaidAmount) AS TotalCollected
FROM Fines f
WHERE f.Status = 'Paid'
GROUP BY FORMAT(f.PaymentDate, 'yyyy-MM');


SELECT
    m.Member_ID,
    m.Name,
    SUM(f.FineAmount - f.PaidAmount) AS PendingFines
FROM Members m
JOIN Borrowing b ON m.Member_ID = b.MemberID
JOIN Fines f ON b.BorrowID = f.BorrowID
WHERE f.Status = 'Pending'
GROUP BY m.Member_ID, m.Name;

SELECT
    p.Publisher_ID,
    p.Name AS PublisherName,
    SUM(b.Available_Copies) AS TotalAvailableCopies
FROM Books b
JOIN Publishers p ON b.Publisher_ID = p.Publisher_ID
GROUP BY p.Publisher_ID, p.Name;

----AVG: 
SELECT
    AVG(DATEDIFF(DAY, BorrowDate, ReturnDate)) AS AvgDaysBorrowed
FROM Borrowing
WHERE ReturnDate IS NOT NULL;


SELECT
    m.Member_ID,
    m.Name,
    AVG(f.FineAmount) AS AvgFine
FROM Members m
JOIN Borrowing b ON m.Member_ID = b.MemberID
JOIN Fines f ON b.BorrowID = f.BorrowID
GROUP BY m.Member_ID, m.Name;

SELECT
    br.Branch_Name,
    AVG(BorrowCount) AS AvgBooksBorrowed
FROM Branches br
JOIN (
    SELECT BranchID, COUNT(*) AS BorrowCount
    FROM Borrowing
    GROUP BY BranchID
) b ON br.Branch_ID = b.BranchID
GROUP BY br.Branch_Name;


----- MIN/MAX:  
SELECT
    MIN(Publication_Year) AS OldestPublication,
    MAX(Publication_Year) AS NewestPublication
FROM Books;


SELECT TOP 1
    MemberID,
    COUNT(*) AS TotalBorrowings
FROM Borrowing
GROUP BY MemberID

SELECT TOP 1
    MemberID,
    COUNT(*) AS TotalBorrowings
FROM Borrowing
GROUP BY MemberID

SELECT MAX(FineAmount) AS HighestFine
FROM Fines;

----Complex Aggregations with HAVING: 

SELECT
CategoryID,
COUNT(BookID) AS TotalBooks
FROM BookCategories
GROUP BY CategoryID
HAVING COUNT(BookID) > 5;

SELECT
    MemberID,
    COUNT(*) AS BorrowCount
FROM Borrowing
WHERE BorrowDate BETWEEN DATEADD(MONTH, -1, GETDATE()) AND GETDATE()
GROUP BY MemberID
HAVING COUNT(*) > 3;

SELECT
a.Author_ID,
a.Name,
COUNT(ba.BookID) AS BookCount
FROM Authors a
JOIN BookAuthors ba ON a.Author_ID = ba.AuthorID
GROUP BY a.Author_ID, a.Name
HAVING COUNT(ba.BookID) > 2;

SELECT
    br.Branch_ID,
    br.Branch_Name,
    SUM(f.FineAmount - f.PaidAmount) AS TotalPending
FROM Branches br
JOIN Borrowing b ON br.Branch_ID = b.BranchID
JOIN Fines f ON b.BorrowID = f.BorrowID
WHERE f.Status = 'Pending'
GROUP BY br.Branch_ID, br.Branch_Name
HAVING SUM(f.FineAmount - f.PaidAmount) > 100;

----GROUP BY with Multiple Columns: 

SELECT
br.Branch_Name,
FORMAT(b.BorrowDate,'yyyy-MM') AS Month,
COUNT(*) AS TotalBorrowings
FROM Borrowing b
JOIN Branches br ON b.BranchID = br.Branch_ID
GROUP BY br.Branch_Name, FORMAT(b.BorrowDate,'yyyy-MM');

SELECT
    m.Member_ID,
    m.Name,
    YEAR(f.PaymentDate) AS Year,
    SUM(f.PaidAmount) AS TotalCollected
FROM Members m
JOIN Borrowing b ON m.Member_ID = b.MemberID
JOIN Fines f ON b.BorrowID = f.BorrowID
WHERE f.Status = 'Paid'
GROUP BY m.Member_ID, m.Name, YEAR(f.PaymentDate);

----- Subqueries with Aggregation:  

SELECT BookID, COUNT(*) AS BorrowCount
FROM Borrowing
GROUP BY BookID
HAVING COUNT(*) > (
    SELECT AVG(BorrowCount)
    FROM (
        SELECT COUNT(*) AS BorrowCount
        FROM Borrowing
        GROUP BY BookID
    ) AS sub
);


SELECT MemberID, SUM(PaidAmount) AS TotalPaid
FROM Borrowing b
JOIN Fines f ON b.BorrowID = f.BorrowID
WHERE f.Status = 'Paid'
GROUP BY MemberID
HAVING SUM(PaidAmount) > (
    SELECT AVG(PaidAmount)
    FROM Fines
    WHERE Status = 'Paid'
	);