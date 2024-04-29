--CREATE DATABASE AB106
--USE AB106

CREATE TABLE Students
(
	Id INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(20) NOT NULL,
	Surname NVARCHAR(20) DEFAULT 'XXX',
	Age TINYINT CHECK(Age>=18),
	AvgPoint FLOAT CHECK(AvgPoint>0)
)
INSERT INTO Students(Name,Surname,Age,AvgPoint)
VALUES(N'Anar',N'Qasimzada',20,98.5),
(N'Nurlan',N'Abbasov',20,99.5),
(N'Ramal',N'Ismayilzada',19,85.3)

SELECT * FROM Students WHERE AvgPoint>51

SELECT * FROM Students WHERE AvgPoint BETWEEN 52 AND 89

SELECT * FROM Students WHERE Name LIKE 'i%' AND NAME LIKE '%m'