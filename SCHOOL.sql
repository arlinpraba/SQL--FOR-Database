use School;
CREATE TABLE Student(
     Stu_ID int PRIMARY KEY,
     Name varchar(255),
     Age int
     );
INSERT INTO Student(Stu_ID,Name,Age)
VALUES(14321,'AltroAlita',18),
(14322,'Dazla',19),
(14323,'Limly',19),
(14324,'Vellia',20),
(14325,'Plamey',20)
);
SELECT * FROM Student;
INSERT INTO Student(Stu_ID,Name,Age)
     VALUES(14326,'Damion',19),
     (14327,'Edmund',19),
     (14328,'Edward',19),
     (14329,'Shash',20),
     (14330,'Christof',20);
     
 ALTER TABLE Student ADD Email varchar(255);
 UPDATE Student
     SET Email = 'altroalita@gmail.com'
     WHERE Stu_ID = 14321;
UPDATE Student
     SET Email = 'dazla19@gmail.com'
     WHERE Stu_ID = 14322;

 UPDATE Student
     SET Email = 'limlyblaze@gmail.com'
     WHERE Stu_ID = 14323;

 UPDATE Student
     SET Email = 'vellia@gmail.com'
     WHERE Stu_ID = 14324;

 UPDATE Student
     SET Email = 'plameyblue@gmail.com'
     WHERE Stu_ID = 14325;

 UPDATE Student
     SET Email = 'damion@gmail.com'
     WHERE Stu_ID = 14326;

 UPDATE Student
     SET Email = 'edmundtwin1@gmail.com'
     WHERE Stu_ID = 14327;

 UPDATE Student
     SET Email = 'edwardnahimthefirsttwin@gmail.com'
     WHERE Stu_ID = 14328;

 UPDATE Student
     SET Email = 'shash@gmail.com'
     WHERE Stu_ID = 14329;

 UPDATE Student
     SET Email = 'reddragonchris@gmail.com'
     WHERE Stu_ID = 14330;
SELECT * FROM Student;
 
 
 