USE CollegeDatabase

CREATE TABLE Person.UserInfo(
	info_id BIGINT IDENTITY(1,1) PRIMARY KEY,
	login_pass VARCHAR (20) NOT NULL DEFAULT '123456',
	name VARCHAR(50) NOT NULL,
	phone_number CHAR(10),
	email VARCHAR(50),
	CHECK (LEN(login_pass) >= 6)
);

CREATE TABLE Person.Staff(
	info_id BIGINT PRIMARY KEY,
	staff_id CHAR(8) NOT NULL UNIQUE
);

CREATE TABLE Person.Student(
	info_id BIGINT PRIMARY KEY,
	student_id CHAR(11) NOT NULL UNIQUE,
	department_id CHAR(2)
);

CREATE TABLE Person.Instructor(
	info_id BIGINT PRIMARY KEY,
	instructor_id CHAR(7) NOT NULL UNIQUE,
	department_id CHAR(2)
);

CREATE TABLE College.Department(
	department_id CHAR(2) PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE,
	head_instructor CHAR(7)
);

CREATE TABLE College.Course(
	course_id CHAR(7) PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	department_id CHAR(2),
	instructor_id CHAR(7)
);

CREATE TABLE Enroll.Enrolled(
	student_id CHAR(11),
	course_id CHAR(7),
	PRIMARY KEY (student_id, course_id)
);

ALTER TABLE Person.Staff
ADD CONSTRAINT FK_Staff_UserInfo FOREIGN KEY (info_id) REFERENCES Person.UserInfo(info_id) ON DELETE CASCADE;

ALTER TABLE Person.Student
ADD CONSTRAINT FK_Student_UserInfo FOREIGN KEY (info_id) REFERENCES Person.UserInfo(info_id) ON DELETE CASCADE,
	CONSTRAINT FK_Student_Department FOREIGN KEY (department_id) REFERENCES College.Department(department_id);

ALTER TABLE Person.Instructor
ADD CONSTRAINT FK_Instructor_UserInfo FOREIGN KEY (info_id) REFERENCES Person.UserInfo(info_id) ON DELETE CASCADE,
	CONSTRAINT FK_Instructor_Department FOREIGN KEY (department_id) REFERENCES College.Department(department_id);

ALTER TABLE College.Department
ADD CONSTRAINT FK_Department_HeadInstructor FOREIGN KEY (head_instructor) REFERENCES Person.Instructor(instructor_id);

ALTER TABLE College.Course
ADD CONSTRAINT FK_Course_Department FOREIGN KEY (department_id) REFERENCES College.Department(department_id) ON DELETE CASCADE,
	CONSTRAINT FK_Course_Instructor FOREIGN KEY (instructor_id) REFERENCES Person.Instructor(instructor_id);
	
ALTER TABLE Enroll.Enrolled
ADD CONSTRAINT FK_Enrolled_Student FOREIGN KEY (student_id) REFERENCES Person.Student(student_id) ON DELETE CASCADE,
	CONSTRAINT FK_Enrolled_Course FOREIGN KEY (course_id) REFERENCES College.Course(course_id) ON DELETE CASCADE;