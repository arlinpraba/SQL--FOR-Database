use Hospital;
CREATE TABLE Ward(
Patient_ID int PRIMARY KEY,
Name VARCHAR(255),
Gender enum('Female','Male'),
Age int,
Location VARCHAR(255),
Disease VARCHAR(255),
Date_Admi DATE,
Payment VARCHAR(255)
);
describe Ward;

INSERT INTO Ward(Patient_ID,Name,Gender,Age,Location,Disease,Date_Admi,Payment)
VALUES(101,'Valkiri','Female',42,'Aristotil street, Gokul Nagar,Tirupur','Stress','2024-05-04','Payed'),
(102,'Agnus','Female',32,'Ttotil street, kulosa Nagar,Tirupur','Stress','2024-05-05','Payed');

INSERT INTO Ward(Patient_ID,Name,Gender,Age,Location,Disease,Date_Admi,Payment)
VALUES
(103,'Venuman','Male',52,'Aristotil street, kulosa Nagar,Tirupur','Infection','2024-05-06','Payed'),
(104,'Vengence','Male',12,'Ttotil street, kulosa Nagar,Tirupur','Coughs','2024-06-05','Payed'),
(105,'Cygnus','Female',22,'Ttotil street, kulosa Nagar,Tirupur','Fever','2024-06-07','Payed');

SELECT * FROM Ward WHERE Age>=50;

UPDATE Ward SET Payment='pending' WHERE Patient_ID='101';
Select * from Ward;

UPDATE Ward SET Payment='Pending' WHERE Patient_ID='101';
Select * from Ward;

DELETE FROM Ward Where Patient_ID='101';
Select * from Ward;
Select * from Ward COUNT(*)Totalvalue WHERE Disease='Stress';

USE Hospital;
SELECT Name,Disease FROM Ward WHERE Name LIKE '%an%';
SELECT Name,Disease FROM Ward WHERE Name LIKE 'a_%';
SELECT Name,Disease,Payment,Location FROM Ward WHERE Name LIKE '%V%';

SELECT Name,Disease,Payment,Location,Patient_ID,Age FROM Ward WHERE Disease LIKE '%Stress%';
SELECT Name,Disease,Payment,Location,Patient_ID,Age FROM Ward WHERE Disease LIKE '%Fever%';
SELECT Name,Disease,Payment,Location,Patient_ID,Age FROM Ward WHERE Location LIKE '%Tirupur%';
SELECT Name,Disease,Payment,Location,Patient_ID,Age,Gender,Date_Admi FROM Ward WHERE Location LIKE '%Tirupur%';
SELECT Name,Disease,Payment,Location,Patient_ID,Age,Gender,Date_Admi FROM Ward WHERE Gender LIKE '%Fe%';

USE Hospital;

INSERT INTO Ward(Patient_ID,Name,Gender,Age,Location,Disease,Date_Admi,Payment)
VALUES
(101,'Venuman','Male',52,'Aristotil street, kulosa Nagar,Tirupur','Infection','2024-05-06','Payed'),
(106,'Vengence','Male',12,'Ttotil street, kulosa Nagar,Tirupur','Coughs','2024-06-05','Payed'),
(107,'Cygnus','Female',22,'Ttotil street, kulosa Nagar,Tirupur','Fever','2024-06-07','Payed');

Select * From Ward;

Select Disease,Age from Ward order by Disease,Age;

use Hospital;
INSERT INTO Ward(Patient_ID,Name,Gender,Age,Location,Disease,Date_Admi,Payment)
VALUES
(108,'Losuman','Male',82,'Aristotil street, kulosa Nagar,Tirupur','Flue','2024-05-06','Payed'),
(109,'Vence','Male',32,'Ttotil street, kulosa Nagar,Tirupur','Hiperthermia','2024-06-05','Payed'),
(110,'Cynusia','Female',42,'Ttotil street, kulosa Nagar,Tirupur','Fever,Coughs','2024-06-07','Payed');
INSERT INTO Ward(Patient_ID,Name,Gender,Age,Location,Disease,Date_Admi,Payment)
VALUES
(101,'Venuman','Male',52,'Aristotil street, kulosa Nagar,Tirupur','Infection','2024-05-06','Payed');

Select * From Ward;

Select Disease,Age from Ward order by Disease,Age;
Select Age from Ward Where Age>=50 Group by Age Order by Age;
Select Age from Ward Where Age>=30 Group by Age;

USE Hospital;
ALTER TABLE Ward ADD Fees varchar(255);
UPDATE Ward
     SET Fees = CASE
     WHEN Patient_ID = 101 THEN '200'
     WHEN Patient_ID = 102 THEN '400'
     WHEN Patient_ID = 103 THEN '200'
     WHEN Patient_ID = 104 THEN '500'
     WHEN Patient_ID = 105 THEN '800'
     WHEN Patient_ID = 106 THEN '500'
     WHEN Patient_ID = 107 THEN '800'
     WHEN Patient_ID = 108 THEN '1500'
     WHEN Patient_ID = 109 THEN '5000'
     WHEN Patient_ID = 110 THEN '1300'
     END
     WHERE Patient_ID IN (101,102,103,104,105,106,107,108,109,110);
Select * From Ward;
