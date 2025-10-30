SELECT
br.BorrowID,
m.Name AS MemberName, 
b.Title AS BookTitle,
br.Status
FROM Borrowing br
INNER JOIN Members m ON br.MemberID = m.Member_ID
INNER JOIN Books b ON br.BookID = b.Book_ID;

SELECT
b.Title AS BookTitle,
a.Name AS AuthorName
FROM Books b
INNER JOIN BookAuthors ba ON b.Book_ID = ba.BookID
INNER JOIN Authors a ON ba.AuthorID = a.Author_ID
ORDER BY b.Title;

SELECT
br.BorrowID,
m.Name AS MemberName,
b.Title AS BookTitle,
br.BorrowDate,
br.DueDate,
br.Status,
brn.Branch_Name,
brn.Address AS BranchAddress
FROM Borrowing br
INNER JOIN Members m ON br.MemberID = m.Member_ID
INNER JOIN Books b ON br.BookID = b.Book_ID
INNER JOIN Branches brn ON br.BranchID = brn.Branch_ID
WHERE br.Status = 'Borrowed' AND br.ReturnDate IS NUll;


SELECT b.Title AS BookTitle,
br.BorrowID,
m.Name AS BorrowedBy
FROM Books b
LEFT JOIN Borrowing br ON b.Book_ID = br.BookID AND br.ReturnDate IS NULL
LEFT JOIN Members m ON br.MemberID = m.Member_ID;

SELECT m.Name AS MemberName, b.Title AS BookTitle, br.BorrowDate
FROM Members m
LEFT JOIN Borrowing br ON m.Member_ID = br.MemberID AND br.ReturnDate IS NULL
LEFT JOIN Books b ON br.BookID = b.Book_ID;


SELECT
c.Category_ID,
c.Category_Name,
COUNT(bc.BookID) AS BookCount
FROM Categories c
LEFT JOIN BookCategories bc ON c.Category_ID = bc.CategoryID
GROUP BY c.Category_ID, c.Category_Name;









