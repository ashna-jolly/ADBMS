CREATE TABLE STUDENT
(
sid INT,
sname VARCHAR(25),
dob VARCHAR(12),
physics INT,
chemistry INT,
maths INT
);
DESCRIBE STUDENT;
INSERT INTO STUDENT(sid,sname,dob,physics,chemistry,maths) VALUES(1,'SONA','08-07-1999',80,88,86),(2,'SANDRA','08-07-1997',60,75,86),(3,'HARITHA','11-07-1994',20,81,20),(4,'MARY','21-11-1999',70,88,86),(5,'POOJA','09-08-1999',50,68,76);
SELECT * FROM STUDENT;
SELECT sid,sname FROM STUDENT  WHERE dob=(SELECT max(dob)from STUDENT);
SELECT * FROM STUDENT WHERE maths >=40 and (physics >=40 or chemistry >=40);
ALTER TABLE STUDENT ADD total int;
ALTER TABLE STUDENT ADD average float(10,3);
DESCRIBE STUDENT;
SELECT sname FROM STUDENT WHERE maths=(SELECT max(maths) FROM STUDENT);
SELECT sname FROM STUDENT WHERE chemistry=(SELECT min(chemistry) FROM STUDENT);
UPDATE STUDENT SET total=physics+chemistry+maths;
SELECT * FROM STUDENT ORDER BY total DESC;
ALTER TABLE STUDENT RENAME COLUMN average TO avg_mark;
UPDATE STUDENT SET avg_mark=(PHYSICS+CHEMISTRY+MATHS)/3;
SELECT *FROM STUDENT WHERE avg_mark > (SELECT AVG(avg_mark) FROM STUDENT);
SELECT COUNT(*) FROM STUDENT WHERE AVG_MARK > (SELECT AVG(AVG_MARK) FROM STUDENT);
