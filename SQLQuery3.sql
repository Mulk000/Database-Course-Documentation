IF OBJECT_ID('Departement', 'U') IS NOT NULL
    DROP TABLE Departement;
GO

CREATE TABLE Departement(
 Dnumber INT PRIMARY KEY,
 Dname NVARCHAR(20),
 Mgr_SSN INT,
 HireDate DATE,
 FOREIGN KEY (Mgr_SSN) REFERENCES Employee(SSN)
);
CREATE TABLE Project(
 Pnumber INT PRIMARY KEY,
 Pname NVARCHAR(20),
 City NVARCHAR(10),
 Location NVARCHAR(20),
 Dnum INT,
 FOREIGN KEY (Dnum) REFERENCES Departement(Dnumber)
);

CREATE TABLE Department_Location (
    Dnum INT,
    Location NVARCHAR(50),
    PRIMARY KEY (Dnum, Location),
    FOREIGN KEY (Dnum) REFERENCES Departement(Dnumber)
);

CREATE TABLE Dependent (
    SSN INT,
    DepNumber INT,
    Gender NVARCHAR(10),
    BirthDate DATE,
    PRIMARY KEY (SSN, DepNumber),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN)
);
CREATE TABLE Employee_Project (
    SSN INT,
    Pnumber INT,
    Hours DECIMAL(5,2),
    PRIMARY KEY (SSN, Pnumber),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (Pnumber) REFERENCES Project(Pnumber)
);
ALTER TABLE Employee
ADD CONSTRAINT FK_Employee_Department
FOREIGN KEY (Dnum) REFERENCES Departement(Dnumber);

ALTER TABLE Employee
ADD CONSTRAINT FK_Employee_Supervisor
FOREIGN KEY (Super_SSN) REFERENCES Employee(SSN);
