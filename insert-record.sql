USE CollegeDatabase
INSERT INTO Person.UserInfo(login_pass, name, phone_number, email)
VALUES 
('123456', 'Nguyen Van Minh', '0371234567', 'nguyenvanminh@gmail.com'),
('654321', 'Tran Thi Bich', '0132456789', 'tranthibich@gmail.com'),
('0123456', 'Huynh Van Can', '0123456789', 'huynhvancan@gmail.com'),
('9876543210', 'Ta Ngoc Hoang', '0918765432', 'tangochoang@gmail.com'),
('321456987', 'Nghinh Xuan Tu', '0192837465', 'nghinhxuantu@gmail.com'),
('Justdoit', 'Shia LaBeouf', '0987654321', 'idontknow@gmail.com'),
('DoitJustdoit', 'Phan Thi Nhu Yen', '0123456123', 'yenpham@gmai.com'),
('Don''tlet', 'Tran Bao Khanh', '0909090909', 'khanhbaotran@yahoo.com'),
('yourdreams', 'Nguyen Xuan Dieu', '0370101010', 'dieunguyen@gmail.com'),
('bedreams', 'Phi Ngoc Van', '0561234567', 'ngocvan@gmail.com'),
('Yesterdayyou', 'Nguyen Ngoc Truong Giang', '0987654213', 'giang12345@gmail.com'),
('saidtommorow', 'Pham Minh Huy', '0781234567', 'huypham@gmail.com'),
('Sojustdoit', 'Mai Ngoc Tram', '0988989899', 'maitram@yahoo.com'),
('Makeyourdreams', 'Dang Tran Khoi Minh', '0452312345', 'minhkhoitrandang@gmail.com'),
('cometrue', 'Luu Phong Vu', '0565656567', 'luuphongvu@gmail.com'),
('Justdoit', 'Tran Ngoc Thach', '0563883123', 'thachtran@yahoo.com'),
('Somepeople', 'Lai Xuan Hinh', '0987654321', 'laixuanhinh@gmail.com'),
('dreamofsuccess', 'Ma Thi Troi', '0987123456', 'matroi@gmail.com'),
('Whileyou''re', 'Lieu Thi Thao Van', '0782313879', 'thaovancute@gmail.com'),
('gonnawakeup', 'Nguyen Thi Ngoc Thao', '0456364656', 'ngocthao@gmail.com'),
('andworkhardatit', 'Tran Thach Tin', '0945678910', 'thachtintran@gmail.com'),
('Youshouldget', 'Pham Ngoc Thao My', '0777755111', 'thaomy@gmail.com'),
('tothepoint', 'Nguyen Ngoc Truong Giang', '0345679821', 'nguyenngoctruonggiang@gmail.com'),
('Butanyoneelse', 'Nguyen Thi Ngoc Thao', '0918765432', 'ngocthao123@gmail.com'),
('wouldquit', 'Nguyen Yeu Nuoc', '0981236547', NULL),
('Andyou''renot', 'Tran Minh Khai', NULL, NULL),
('goingto', 'Mac Van Chi',NULL, NULL),
('stopthere', 'Mac Dinh Xuan', NULL, NULL),
('No,whatareyou', 'Dinh Cat Linh', NULL, 'DinhCatLinh@gmail.com'),
('waitingfor?', 'Pham That Su', '0761276543', 'phamsu@gmail.com'),
('DoitJustdoit', 'Nguyen Tran Duy Nhat', NULL, NULL),
('Yesyoucan', 'Pham Ly Duc', '0673679999', NULL),
('Justdoit', 'Tran Thi Dieu', NULL, 'tranthidieu@yahoo.com'),
('Ifyou''re', 'Nguyen Van Sau', NULL, NULL),
('tiredof', 'Nguyen Thi Thu', NULL, NULL),
('staringover', 'Pham Cong Van', '0673267671', 'congvan@gmail.com'),
('Stopgivingup', 'Cao Le Minh Dang', '0356734123', 'caoleminhdang@yahoo.com');

INSERT INTO College.Department(department_id, name)
VALUES
('IT', 'Information Technology'),
('MA', 'Mathematics'),
('BM', 'Biomedical Engineering'),
('BT', 'Bio-Technology'),
('CE', 'Civil Engineering'),
('EE', 'Electrical Engineering'),
('PH', 'Physics');

INSERT INTO Person.Staff(info_id, staff_id)
VALUES
(2, 'STAFF001'),
(12, 'STAFF002'),
(22, 'STAFF003'),
(32, 'STAFF004');

INSERT INTO Person.Student(info_id, student_id, department_id)
VALUES
(1, 'ITITIU18123', 'IT'),
(3, 'MAMAIU17213', 'MA'),
(6, 'CECEIU17123', 'CE'),
(7, 'ITCSIU16234', 'IT'),
(8, 'ITDSIU18123', 'IT'),
(9, 'BTBTIU18321', 'BT'),
(10, 'PHPHIU17005', 'PH'),
(11, 'EEEEIU18005', 'EE'),
(13, 'MAMAIU16324', 'MA'),
(14, 'PHPHIU17222', 'PH'),
(15, 'ITITIU15007', 'IT'),
(16, 'ITITIU16024', 'IT'),
(17, 'MAMAIU17003', 'MA'),
(18, 'CECEIU15006', 'CE'),
(19, 'ITCSIU17005', 'IT'),
(20, 'ITDSIU18075', 'IT'),
(21, 'BTBTIU18201', 'BT'),
(23, 'PHPHIU13100', 'PH'),
(24, 'EEEEIU16005', 'EE'),
(25, 'MAMAIU18234', 'MA'),
(26, 'PHPHIU17113', 'PH'),
(27, 'ITITIU17009', 'IT'),
(28, 'BMBMIU15003', 'BM'),
(29, 'BMBMIU17123', 'BM');

INSERT INTO Person.Instructor(info_id, instructor_id, department_id)
VALUES
(4, 'ITIU001', 'IT'),
(5, 'MAIU001', 'MA'),
(30, 'CEIU001', 'CE'),
(31, 'PHIU001', 'PH'),
(33, 'EEIU001', 'EE'),
(34, 'BMIU001', 'BM'),
(35, 'BTIU001', 'BT'),
(36, 'ITIU002', 'IT'),
(37, 'MAIU002', 'MA');

UPDATE College.Department SET head_instructor = 'ITIU001' WHERE department_id = 'IT';
UPDATE College.Department SET head_instructor = 'MAIU001' WHERE department_id = 'MA';
UPDATE College.Department SET head_instructor = 'BMIU001' WHERE department_id = 'BM';
UPDATE College.Department SET head_instructor = 'BTIU001' WHERE department_id = 'BT';
UPDATE College.Department SET head_instructor = 'CEIU001' WHERE department_id = 'CE';
UPDATE College.Department SET head_instructor = 'EEIU001' WHERE department_id = 'EE';
UPDATE College.Department SET head_instructor = 'PHIU001' WHERE department_id = 'PH';

INSERT INTO College.Course(course_id, name, department_id, instructor_id)
VALUES
('IT079IU', 'Principles of Database Management', 'IT', 'ITIU001'),
('MA023IU', 'Calculus 3', 'MA', 'MAIU002'),
('MA024IU', 'Differential Equation', 'MA', 'MAIU002'),
('PH028IU', 'Circuit Theory', 'PH', 'PHIU001'),
('PH032IU', 'Introduction to Signals and Systems', 'PH', 'PHIU001'),
('BM079IU', 'Principle of Pharmacokinetics', 'BM', 'BMIU001'),
('BM008IU', 'Bioethics', 'BM', 'BMIU001'),
('BM007IU', 'Introduction to Biomedical Engineering', 'BM', 'BMIU001'),
('MA001IU', 'Calculus 1', 'MA', 'MAIU001'),
('MA003IU', 'Calculus 2', 'MA', 'MAIU001'),
('EE053IU', 'Digital Logic Design', 'EE', 'EEIU001'),
('IT067IU', 'Digital Logic Design', 'IT', 'ITIU002'),
('EE051IU', 'Principles of EE1', 'EE', 'EEIU001'),
('BT152IU', 'Biostatistics', 'BT', 'BTIU001'),
('BT164IU', 'Microbiology', 'BT', 'BTIU001'),
('CE305IU', 'Steel Structures', 'CE', 'CEIU001'),
('CE205IU', 'Fluid Mechanics', 'CE', 'CEIU001');

INSERT INTO Enroll.Enrolled(student_id, course_id)
VALUES
('ITITIU18123', 'IT079IU'),
('ITCSIU16234', 'IT079IU'),
('ITITIU17009', 'IT079IU'),
('MAMAIU18234', 'MA023IU'),
('MAMAIU16324', 'MA023IU'),
('MAMAIU16324', 'MA024IU'),
('PHPHIU17005', 'PH028IU'),
('PHPHIU17113', 'PH032IU'),
('BMBMIU15003', 'BM079IU'),
('BMBMIU17123', 'BM079IU'),
('BMBMIU15003', 'BM008IU'),
('BMBMIU15003', 'BM007IU'),
('CECEIU15006', 'CE205IU'),
('CECEIU15006', 'CE305IU'),
('BTBTIU18321', 'BT164IU'),
('BTBTIU18321', 'BT152IU'),
('BTBTIU18201', 'BT152IU'),
('EEEEIU18005', 'EE051IU'),
('EEEEIU16005', 'EE051IU'),
('ITCSIU16234', 'IT067IU'),
('ITITIU18123', 'IT067IU'),
('EEEEIU18005', 'EE053IU'),
('EEEEIU16005', 'EE053IU'),
('MAMAIU18234', 'MA003IU'),
('MAMAIU17003', 'MA003IU'),
('MAMAIU18234', 'MA001IU'),
('MAMAIU17213', 'MA001IU'),
('MAMAIU16324', 'MA001IU');