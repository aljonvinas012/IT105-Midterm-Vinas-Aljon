# Student Management System

## Project Title
Student Enrollment and Grade Management System

## System Description
This is a simple database system I made for my IT105 midterm project. It manages student information, courses, subjects, instructors, and enrollment records. The system keeps track of which students are enrolled in what subjects and what grades they got.

I designed this to help schools organize their student data instead of using messy Excel files or paper records. Everything is stored in a structured database that follows normalization rules.

## Tables Description

| Table | Purpose |
|-------|---------|
| Students | Stores student details like name, ID number, course, year level, and email |
| Instructors | Contains teacher information including their name and department |
| Courses | Lists all programs like BSIT, BSCS, and their department |
| Subjects | Shows all subjects offered with subject codes and units |
| Departments | Stores different departments like IT, CS, and IS |
| Classes | Combines subjects with instructors and assigns schedule and room |
| Enrollments | Records which student took what class and their final grade |

## Features Implemented

1. **Database Design** - I created a normalized database following 3NF rules to avoid duplicate data.

2. **Sample Data** - Added 10 students and 10 instructors with real names like Marian Rivera and Dingdong Dantes.

3. **SQL Operations** - Wrote queries for SELECT, INSERT, UPDATE, DELETE, JOIN, and SUBQUERY to demonstrate different database operations.

4. **Indexing Test** - Tested how indexes affect query performance. I noticed that with only 10 records, the query actually became slower after adding an index.

5. **Normalization Documentation** - Showed the transformation from UNF to 1NF to 2NF to 3NF using my student data.

## Reflection
First, I already knew why normalization matters before this project. Our professor explained it in class and I understood the concept of eliminating redundancy and avoiding data anomalies. But actually applying it to my own database system made it click even more. Seeing how splitting tables into 1NF, 2NF, and 3NF prevented duplicate data and made updates easier showed me why it's really necessary in real-world applications.The indexing part surprised me. I thought adding an index would make my query run faster. But when I tested it, my query actually went from 0.0012 seconds to 0.0063 seconds. I was confused at first. Then I realized my table only had 10 students so scanning everything was faster than using an index. Writing JOIN queries was hard for me. I kept messing up which table to connect to which. I just kept trying until I got it right. Now I can do it without looking at notes.I also messed up once. I ran DELETE without putting WHERE and almost wiped out my Students table. I panicked for a second but luckily I had a backup. Never doing that again.Overall, I learned that building a database is not just about making tables work. You have to think about how it will be used later and what problems might come up when more data gets added.