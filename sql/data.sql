USE StudentSystem;

INSERT INTO Departments (DepartmentCode, DepartmentName) VALUES
('IT', 'Information Technology'),
('CS', 'Computer Science'),
('IS', 'Information Systems');

INSERT INTO Courses (CourseCode, CourseName, DepartmentID) VALUES
('BSIT', 'Bachelor of Science in Information Technology', 1),
('BSCS', 'Bachelor of Science in Computer Science', 2),
('BSIS', 'Bachelor of Science in Information Systems', 3);

INSERT INTO Students (StudentNumber, FirstName, LastName, CourseID, YearLevel, Email) VALUES
('2024-001', 'Aljon', 'Cute', 1, 1, 'aljon.cute@student.edu'),
('2024-002', 'Aljon', 'Pogi', 1, 2, 'aljon.pogi@student.edu'),
('2024-003', 'Aljon', 'Handsome', 2, 1, 'aljon.handsome@student.edu'),
('2024-004', 'Aljon', 'Gwapo', 2, 3, 'aljon.gwapo@student.edu'),
('2024-005', 'Aljon', 'Igop', 3, 2, 'aljon.igop@student.edu'),
('2024-006', 'Aljon', 'Sobrangcute', 1, 1, 'aljon.sobrangcute@student.edu'),
('2024-007', 'Aljon', 'Sobrangpogi', 2, 2, 'aljon.sobrangpogi@student.edu'),
('2024-008', 'Aljon', 'Sobranghandsome', 3, 3, 'aljon.sobranghandsome@student.edu'),
('2024-009', 'Aljon', 'Sobrang gwapo', 1, 2, 'aljon.sobranggwapo@student.edu'),
('2024-010', 'Aljon', 'Sobrang Cute', 2, 1, 'aljon.sobrangcute2@student.edu');

INSERT INTO Instructors (InstructorCode, FirstName, LastName, Email, DepartmentID) VALUES
('INS001', 'Marian', 'Rivera', 'marian.rivera@bicol-u.edu', 1),
('INS002', 'Dingdong', 'Dantes', 'dingdong.dantes@bicol-u.edu', 2),
('INS003', 'Kathryn', 'Bernardo', 'kathryn.bernardo@bicol-u.edu', 1),
('INS004', 'Alden', 'Richards', 'alden.richards@bicol-u.edu', 1),
('INS005', 'Maine', 'Mendoza', 'maine.mendoza@bicol-u.edu', 2),
('INS006', 'Piolo', 'Pascual', 'piolo.pascual@bicol-u.edu', 1),
('INS007', 'Kim', 'Chiu', 'kim.chiu@bicol-u.edu', 2),
('INS008', 'Vice', 'Ganda', 'vice.ganda@bicol-u.edu', 1),
('INS009', 'Anne', 'Curtis', 'anne.curtis@bicol-u.edu', 3),
('INS010', 'Coco', 'Martin', 'coco.martin@bicol-u.edu', 1);

INSERT INTO Subjects (SubjectCode, SubjectName, Units) VALUES
('IT101', 'Intro to Computing', 3),
('IT102', 'Programming 1', 3),
('IT103', 'Database', 3),
('IT104', 'Networking', 3),
('IT105', 'Web Development', 3),
('CS101', 'Discrete Math', 3),
('CS102', 'Data Structures', 3),
('CS103', 'Algorithms', 3),
('IS101', 'Info Management', 3),
('IS102', 'Systems Analysis', 3);

INSERT INTO Classes (SubjectID, InstructorID, Section, Schedule, Room) VALUES
(1, 1, 'A', 'MWF 8:00-9:00', 'R101'),
(2, 3, 'A', 'TTh 9:00-10:30', 'R102'),
(3, 4, 'B', 'MWF 10:00-11:00', 'R103'),
(4, 2, 'B', 'TTh 1:00-2:30', 'R104'),
(5, 6, 'A', 'MWF 2:00-3:00', 'R105'),
(6, 5, 'C', 'TTh 10:00-11:30', 'R106'),
(7, 7, 'C', 'MWF 11:00-12:00', 'R107'),
(8, 8, 'A', 'TTh 2:30-4:00', 'R108'),
(9, 9, 'B', 'MWF 3:00-4:00', 'R109'),
(10, 10, 'C', 'TTh 4:00-5:30', 'R110');

INSERT INTO Enrollments (StudentID, ClassID, Grade, EnrollmentDate) VALUES
(1, 1, 1.25, '2024-08-01'),
(1, 2, 1.50, '2024-08-01'),
(2, 3, 1.75, '2024-08-01'),
(2, 4, 2.00, '2024-08-01'),
(3, 5, 1.25, '2024-08-01'),
(3, 6, 1.50, '2024-08-01'),
(4, 7, 1.75, '2024-08-01'),
(4, 8, 2.00, '2024-08-01'),
(5, 9, 1.25, '2024-08-01'),
(5, 10, 1.50, '2024-08-01'),
(6, 1, 1.00, '2024-08-01'),
(6, 3, 1.25, '2024-08-01'),
(7, 5, 1.50, '2024-08-01'),
(7, 7, 1.75, '2024-08-01'),
(8, 9, 2.00, '2024-08-01'),
(8, 2, 1.25, '2024-08-01'),
(9, 4, 1.50, '2024-08-01'),
(9, 6, 1.75, '2024-08-01'),
(10, 8, 2.00, '2024-08-01'),
(10, 10, 1.25, '2024-08-01');