USE Company_SD;
Go
SELECT
d.Dnum AS Departement_ID,
d.Dname AS Departement_Name,
d.MGRSSN AS Manager_ID,
e.Fname +' '+e.Lname AS Manager_Full_Name

FROM Departments d
JOIN Employee e

ON d.MGRSSN=e.SSN;

SELECT
d.Dname AS Departament_Name,
p.Pname AS Project_Name

FROM Departments d
JOIN Project p

ON d.Dnum=p.Dnum;

SELECT 
d.ESSN AS Employee_SSN,
d.Dependent_name,
d.Sex,
d.Bdate,
e.Fname+' '+e.Lname AS Full_Name

FROM Dependent d
JOIN Employee e

ON d.ESSN=e.SSN;

SELECT 
Pname AS Project_Name,
Pnumber AS Project_ID,
PLocation AS lOCATION

FROM Project p

WHERE City IN ('Cairo','Alex');

SELECT *
FROM Project
WHERE Pname LIKE 'A%';

SELECT 
SSN AS Employee_ID,
Fname+' '+Lname AS Employee_Name

FROM Employee
WHERE Dno=30
AND Salary BETWEEN 1000 AND 2000;

SELECT 
e.Fname+' '+e.Lname AS Employee_Name
FROM Employee e
JOIN Works_for w ON e.SSN=w.ESSn
JOIN Project P	ON	w.Pno=p.Pnumber
WHERE e.Dno=10
AND w.Hours >=10
AND p.Pname ='AL Rabwah';

SELECT 
e.Fname+' '+e.Lname AS Employee_Name
From Employee e
JOIN Employee s ON e.Superssn=s.SSN
WHERE s.Fname ='Kamel'
AND s.Lname='Mohamed';

SELECT 
e.Fname+' '+e.Lname AS Employee_Nmae,

p.pname AS Prpject_name

FROM Employee e
JOIN Works_for w ON e.SSN=w.ESSn
JOIN Project p ON w.Pno=P.Pnumber
ORDER BY P.Pname;

SELECT 

p.Pnumber AS Project_Number,
d.Dname AS Controlling_department_name,
e.Lname AS Manager_last_name,
e.Address AS Manager_Adress,
e.Bdate AS Manager_BirthDay
FROM Project p
JOIN Departments d ON p.Dnum=d.Dnum
JOIN Employee  e ON d.MGRSSN=e.SSN
WHERE p.City ='Cairo';

SELECT e.*
FROM Employee e
JOIN Departments d ON e.SSN=d.MGRSSN; 

SELECT
e.SSN AS Employee_ID,
e.Fname+' '+e.Lname AS Full_Name,
d.Dependent_Name,
d.Sex,
d.Bdate

FROM Employee e
LEFT JOIN Dependent d ON e.SSN=d.ESSN
ORDER BY e.SSN;







