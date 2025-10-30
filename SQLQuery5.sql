USE library_db;
GO

SELECT * FROM sys.tables;

INSERT INTO Branches (Branch_Name, Address, Phone, Manager_Name, Opening_Date) VALUES
('Central', 'Main St', '90010001', 'Omar', '2015-03-01'),
('North',   'Hill Rd',  '90010002', 'Laila', '2017-06-15'),
('South',   'Palm Av',  '90010003', 'Hassan','2018-02-20'),
('East',    'Coast Rd', '90010004', 'Rania', '2019-08-10'),
('West',    'Desert Rd','90010005', 'Yusuf', '2020-11-05');

INSERT INTO Members (Name, Email, Phone, Address, Membership_Type, Status, Join_Date, Expiry_Date) VALUES
('Ali','ali1@mail.com','90020001','Muscat','Standard','Active','2023-01-01','2024-01-01'),
('Sara','sara@mail.com','90020002','Muscat','Premium','Active','2022-02-15','2025-02-15'),
('Huda','huda@mail.com','90020003','Sohar','Standard','Expired','2021-05-10','2022-05-10'),
('Faisal','faisal@mail.com','90020004','Nizwa','Premium','Active','2024-01-01','2025-01-01'),
('Mona','mona@mail.com','90020005','Ibri','Standard','Active','2023-05-01','2024-05-01'),
('Salim','salim@mail.com','90020006','Sur','Premium','Expired','2021-04-01','2022-04-01'),
('Layla','layla@mail.com','90020007','Muscat','Standard','Active','2024-03-01','2025-03-01'),
('Noor','noor@mail.com','90020008','Sohar','Premium','Active','2024-05-10','2025-05-10'),
('Hani','hani@mail.com','90020009','Nizwa','Standard','Active','2023-06-12','2024-06-12'),
('Aisha','aisha@mail.com','90020010','Ibri','Standard','Active','2022-10-01','2023-10-01'),
('Omar','omar@mail.com','90020011','Muscat','Premium','Active','2024-02-01','2025-02-01'),
('Khalid','khalid@mail.com','90020012','Sur','Standard','Expired','2020-02-01','2021-02-01'),
('Nora','nora@mail.com','90020013','Muscat','Premium','Active','2024-07-01','2025-07-01'),
('Rashid','rashid@mail.com','90020014','Nizwa','Standard','Active','2023-01-01','2024-01-01'),
('Fatma','fatma@mail.com','90020015','Sohar','Premium','Active','2024-03-03','2025-03-03'),
('Sami','sami@mail.com','90020016','Ibri','Standard','Expired','2021-01-01','2022-01-01'),
('Reem','reem@mail.com','90020017','Muscat','Premium','Active','2024-06-01','2025-06-01'),
('Majid','majid@mail.com','90020018','Muscat','Standard','Active','2023-05-05','2024-05-05'),
('Nawal','nawal@mail.com','90020019','Sur','Premium','Active','2024-04-04','2025-04-04'),
('Badr','badr@mail.com','90020020','Nizwa','Standard','Expired','2021-04-04','2022-04-04');

INSERT INTO Authors (Name, Biography, Birth_Year, Nationality) VALUES
('Author1','Writer of fiction','1970-01-01','Omani'),
('Author2','Science author','1980-01-01','Egyptian'),
('Author3','Children book writer','1990-01-01','Indian'),
('Author4','Poet and novelist','1975-01-01','Jordanian'),
('Author5','Travel books','1985-01-01','Omani'),
('Author6','Academic','1972-01-01','British'),
('Author7','Biography author','1965-01-01','American'),
('Author8','Mystery novelist','1988-01-01','Omani'),
('Author9','Tech author','1992-01-01','German'),
('Author10','Historical fiction','1983-01-01','French');

ALTER TABLE Publishers
ALTER COLUMN Name NVARCHAR(50) NOT NULL;

INSERT INTO Publishers (Name, Country, Contact_Email, Established_Year) VALUES
('Pearson','UK','contact@pearson.com',1980),
('OUP','UK','info@oup.com',1970),
('NoorPub','Oman','noor@om.com',1990),
('Sunrise','India','sunrise@in.com',2000),
('DesertBooks','Oman','desert@om.com',2010);

INSERT INTO Categories (Category_Name, Description) VALUES
('Fiction','Novels and stories'),
('Science','Scientific topics'),
('Kids','Children books'),
('Poetry','Poems and verses'),
('Travel','Travel guides'),
('Education','Textbooks'),
('Biography','Life stories'),
('Technology','Tech-related');

INSERT INTO Books 
(ISBN, Title, Edition, Publication_Year, Total_Copies, Available_Copies, Shelf_Location, Publisher_ID, Book_Condition, Rating)
VALUES
('ISBN001','Book1','1st',2020,5,5,'A1',1,'Good',4),
('ISBN002','Book2','2nd',2019,3,0,'A2',2,'Good',5),
('ISBN003','Book3','1st',2021,7,2,'A3',3,'Good',3),
('ISBN004','Book4','3rd',2018,4,1,'A4',4,'Good',4),
('ISBN005','Book5','1st',2022,6,6,'B1',5,'Good',5),
('ISBN006','Book6','2nd',2017,2,0,'B2',1,'Good',4),
('ISBN007','Book7','1st',2021,8,3,'B3',2,'Good',5),
('ISBN008','Book8','1st',2020,5,5,'C1',3,'Good',3),
('ISBN009','Book9','2nd',2019,4,2,'C2',4,'Good',4),
('ISBN010','Book10','1st',2022,6,6,'C3',5,'Good',5),
('ISBN011','Book11','1st',2020,7,7,'D1',1,'Good',4),
('ISBN012','Book12','2nd',2018,5,1,'D2',2,'Good',3),
('ISBN013','Book13','1st',2019,3,0,'D3',3,'Good',5),
('ISBN014','Book14','1st',2021,4,2,'E1',4,'Good',4),
('ISBN015','Book15','2nd',2020,6,6,'E2',5,'Good',5),
('ISBN016','Book16','1st',2017,2,0,'E3',1,'Good',3),
('ISBN017','Book17','3rd',2019,5,2,'F1',2,'Good',4),
('ISBN018','Book18','1st',2022,6,6,'F2',3,'Good',5),
('ISBN019','Book19','1st',2020,7,3,'F3',4,'Good',4),
('ISBN020','Book20','2nd',2018,5,0,'G1',5,'Good',5),
('ISBN021','Book21','1st',2021,4,1,'G2',1,'Good',3),
('ISBN022','Book22','2nd',2019,6,2,'G3',2,'Good',4),
('ISBN023','Book23','1st',2020,7,7,'H1',3,'Good',5),
('ISBN024','Book24','1st',2022,5,5,'H2',4,'Good',4),
('ISBN025','Book25','3rd',2017,3,0,'H3',5,'Good',5),
('ISBN026','Book26','1st',2021,6,2,'I1',1,'Good',4),
('ISBN027','Book27','1st',2020,5,3,'I2',2,'Good',3),
('ISBN028','Book28','2nd',2019,4,1,'I3',3,'Good',5),
('ISBN029','Book29','1st',2022,6,6,'J1',4,'Good',5),
('ISBN030','Book30','1st',2021,7,7,'J2',5,'Good',4);

CREATE TABLE BookAuthors (
BookID INT NOT NULL,
AuthorID INT NOT NULL,
PRIMARY KEY (BookID, AuthorID),
CONSTRAINT FK_BookAuthors_Book FOREIGN KEY (BookID) REFERENCES Books(Book_ID)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT FK_BookAuthors_Author FOREIGN KEY (AuthorID) REFERENCES Authors(Author_ID)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE BookCategories (
BookID INT NOT NULL,
CategoryID INT NOT NULL,
PRIMARY KEY (BookID, CategoryID),
CONSTRAINT FK_BookCategories_Book FOREIGN KEY (BookID) REFERENCES Books(Book_ID)
 ON DELETE CASCADE
 ON UPDATE CASCADE,
CONSTRAINT FK_BookCategories_Category FOREIGN KEY (CategoryID)
 REFERENCES Categories(Category_ID)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

INSERT INTO BookAuthors (BookID, AuthorID)
VALUES
(2,1),(2,2),(3,3),(4,4),(4,5),(5,6),(6,7),
(7,8),(8,9),(9,10),(10,1),(11,2),(12,3),
(13,4),(14,5),(15,6),(16,7),(17,8),(18,9),
(19,10),(20,1),(21,2),(22,3),(23,4),(24,5),
(25,6),(26,7),(27,8),(28,9),(29,10),(30,1),(31,2);

INSERT INTO BookCategories (BookID, CategoryID)
VALUES
(2,1),(3,2),(4,3),(5,4),(6,5),(7,6),(8,7),(9,8),
(10,1),(11,2),(12,3),(13,4),(14,5),(15,6),(16,7),(17,8),
(18,1),(19,2),(20,3),(21,4),(22,5),(23,6),(24,7),(25,8),
(26,1),(27,2),(28,3),(29,4),(30,5),(31,6);


INSERT INTO Borrowing (MemberID, BookID, BranchID, BorrowDate, DueDate, ReturnDate, Status)
VALUES
(1,2,1,'2023-09-01','2023-09-15','2023-09-14','Returned'),
(2,3,2,'2023-09-05','2023-09-20',NULL,'Borrowed'),
(3,4,3,'2023-08-01','2023-08-15','2023-08-20','Overdue'),
(4,5,4,'2023-09-10','2023-09-25',NULL,'Borrowed'),
(5,6,5,'2023-07-01','2023-07-15','2023-07-14','Returned'),
(6,7,6,'2023-08-10','2023-08-25',NULL,'Borrowed'),
(7,8,7,'2023-09-12','2023-09-27',NULL,'Borrowed'),
(8,9,8,'2023-08-15','2023-08-30','2023-08-29','Returned'),
(9,10,9,'2023-07-20','2023-08-04','2023-08-05','Overdue'),
(10,11,10,'2023-09-01','2023-09-16',NULL,'Borrowed'),
(11,12,1,'2023-08-05','2023-08-20','2023-08-19','Returned'),
(12,13,2,'2023-07-10','2023-07-25','2023-07-24','Returned'),
(13,14,3,'2023-09-03','2023-09-18',NULL,'Borrowed'),
(14,15,4,'2023-08-12','2023-08-27','2023-08-28','Overdue'),
(15,16,5,'2023-09-06','2023-09-21',NULL,'Borrowed'),
(16,17,6,'2023-08-08','2023-08-23','2023-08-22','Returned'),
(17,18,7,'2023-07-15','2023-07-30','2023-07-31','Overdue'),
(18,19,8,'2023-09-09','2023-09-24',NULL,'Borrowed'),
(19,20,9,'2023-08-20','2023-09-04','2023-09-03','Returned'),
(20,21,10,'2023-09-02','2023-09-17',NULL,'Borrowed'),
(1,22,1,'2023-08-11','2023-08-26','2023-08-25','Returned'),
(2,23,2,'2023-07-18','2023-08-02','2023-08-03','Overdue'),
(3,24,3,'2023-09-04','2023-09-19',NULL,'Borrowed'),
(4,25,4,'2023-08-07','2023-08-22','2023-08-21','Returned'),
(5,26,5,'2023-09-08','2023-09-23',NULL,'Borrowed');

INSERT INTO Fines (BorrowID, FineAmount, PaidAmount, PaymentDate, Status)
VALUES
(3,10.00,0,NULL,'Pending'),
(7,5.00,5.00,'2023-09-20','Paid'),
(8,8.00,0,NULL,'Pending'),
(10,15.00,15.00,'2023-08-10','Paid'),
(12,7.50,0,NULL,'Pending'),
(14,12.00,12.00,'2023-07-25','Paid'),
(16,6.00,0,NULL,'Pending'),
(18,9.00,9.00,'2023-06-15','Paid');

INSERT INTO Reservations (MemberID, BookID, ReservationDate, ExpiryDate, Status)
VALUES
(1,2,'2023-09-01','2023-09-10','Expired'),
(2,3,'2023-09-05','2023-09-15','Active'),
(3,4,'2023-09-08','2023-09-18','Active'),
(4,5,'2023-09-10','2023-09-20','Fulfilled'),
(5,6,'2023-09-12','2023-09-22','Active');

----UPDATE scenarios: 

UPDATE Members
SET Membership_Type = 'Premium'
WHERE Member_ID = 1;

UPDATE Borrowing
SET Status='Returned', ReturnDate=GETDATE()
WHERE BorrowID = 2;

UPDATE Books
SET Available_Copies = Available_Copies + 1
WHERE Book_ID IN (3,15);

UPDATE Fines
SET Status='Paid', PaymentDate=GETDATE(), PaidAmount = FineAmount
WHERE FineID = 1;

DELETE FROM Reservations
WHERE Status='Expired';

DELETE FROM Members
WHERE Member_ID = 2;  

