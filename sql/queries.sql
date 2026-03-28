USE StudentSystem;

-- 1. SELECT - view all students
SELECT * FROM Students;

-- 2. SELECT - view IT students only
SELECT * FROM Students WHERE CourseID = 1;

-- 3. INSERT - add new student
INSERT INTO Students (StudentNumber, FirstName, LastName, CourseID, YearLevel, Email) 
VALUES ('2024-011', 'Aljon', 'New', 1, 1, 'aljon.new@student.edu');

-- 4. UPDATE - change student year level
UPDATE Students SET YearLevel = 2 WHERE StudentID = 1;

-- 5. DELETE - remove a student
DELETE FROM Students WHERE StudentID = 11;

-- 6. JOIN - show students with their course names
SELECT s.StudentNumber, s.FirstName, s.LastName, c.CourseName 
FROM Students s
JOIN Courses c ON s.CourseID = c.CourseID;

-- 7. JOIN - show enrollments with student names and subjects
SELECT e.EnrollmentID, s.FirstName, s.LastName, sub.SubjectName, e.Grade
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Classes c ON e.ClassID = c.ClassID
JOIN Subjects sub ON c.SubjectID = sub.SubjectID;

-- 8. SUBQUERY - find students enrolled in Database subject
SELECT FirstName, LastName 
FROM Students 
WHERE StudentID IN (
    SELECT e.StudentID 
    FROM Enrollments e
    JOIN Classes c ON e.ClassID = c.ClassID
    JOIN Subjects sub ON c.SubjectID = sub.SubjectID
    WHERE sub.SubjectName = 'Database'
);

-- 9. SUBQUERY - find instructors handling IT courses
SELECT FirstName, LastName 
FROM Instructors 
WHERE DepartmentID = (
    SELECT DepartmentID FROM Departments WHERE DepartmentCode = 'IT'
);

-- 10. JOIN with conditions - show students with grade higher than 1.5
SELECT s.FirstName, s.LastName, sub.SubjectName, e.Grade
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Classes c ON e.ClassID = c.ClassID
JOIN Subjects sub ON c.SubjectID = sub.SubjectID
WHERE e.Grade < 1.75;