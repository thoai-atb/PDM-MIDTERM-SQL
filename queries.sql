/*
Queries:
1. Select all courses from the Course table
2. Select all the course_id that the student with student_id ‘ITITIU18123’ enrolled
3. Select the name of the student with student_id ‘ITITIU18123’
4. Select all the course name that the instructor 'Ta Ngoc Hoang' teaches
5. Select all the courses which the instructors in the Mathemetics department teach
6. Select all name of the students who aren’t enrolled with at least 1 course
7. Change the email of 'Shia LaBeouf' to 'justdoit@gmail.com'
8. Set the phone of 'Mac Van Chi' to '0546466678'
9. Change the staff_id of the staff with staff_id 'STAFF004' to 'STAFF005'
10. Change the student_id of the student with student_id 'ITCSIU16234' to 'ITNEIU16234'
*/

--1.
SELECT * FROM College.Course;

--2.
SELECT course_id FROM Enroll.Enrolled WHERE student_id = 'ITITIU18123';

--3.
SELECT U.name FROM Person.Student S, Person.UserInfo U 
WHERE S.info_id = U.info_id
AND student_id = 'ITITIU18123';

--4.
SELECT C.name FROM College.Course C 
JOIN Person.Instructor I ON C.instructor_id = I.instructor_id 
JOIN Person.UserInfo U ON I.info_id = U.info_id
WHERE U.name = 'Ta Ngoc Hoang';

--5.
SELECT C.name FROM College.Course C, Person.Instructor I, College.Department D
WHERE C.instructor_id = I.instructor_id AND I.department_id = D.department_id
AND D.name= 'Mathematics';

--6.
SELECT U.name FROM Person.UserInfo U, Person.Student S, Enroll.Enrolled E
WHERE U.info_id = S.info_id AND S.student_id = E.student_id
GROUP BY U.name
HAVING COUNT(*) = 0;

--7.
UPDATE Person.UserInfo
SET email = 'justdoit@gmail.com' WHERE name = 'Shia LaBeouf'

--8.
UPDATE Person.UserInfo
SET phone_number = '0546466678' WHERE name = 'Mac Van Chi'

--9.
UPDATE Person.Staff
SET staff_id = 'STAFF005' WHERE staff_id = 'STAFF004'

--10.
SELECT * INTO temp FROM Enroll.Enrolled WHERE student_id = 'ITCSIU16234';
DELETE FROM Enroll.Enrolled WHERE student_id = 'ITCSIU16234';
UPDATE Person.Student
SET student_id = 'ITNEIU16234' WHERE student_id ='ITCSIU16234';
UPDATE temp
SET student_id = 'ITNEIU16234' WHERE student_id ='ITCSIU16234';
INSERT INTO Enroll.Enrolled
SELECT * FROM temp;
DROP TABLE temp;

