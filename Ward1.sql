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

SELECT * FROM Ward ORDER BY Patient_ID desc;
SELECT * FROM Ward ORDER BY Patient_ID;
SELECT * FROM Ward ORDER BY Name;

SELECT * FROM Ward WHERE Age>=50;

UPDATE Ward SET Payment='pending' WHERE Patient_ID='101';
Select * from Ward;

UPDATE Ward SET Payment='Pending' WHERE Patient_ID='101';
Select * from Ward;

DELETE FROM Ward Where Patient_ID='101';
Select * from Ward;