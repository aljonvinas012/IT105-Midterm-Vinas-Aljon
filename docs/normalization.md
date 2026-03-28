# NORMALIZATION: Student Course Enrollment

## UNF (Unnormalized Form)

The original table structure contains repeating groups where one student can take multiple subjects and have multiple instructors.

| StudentID | StudentName | Subjects | Instructors |
|-----------|-------------|----------|-------------|
| 101 | Aljon Cute | Database, Networking, Programming | Marian Rivera, Dingdong Dantes, Kathryn Bernardo |
| 102 | Aljon Pogi | Database, WebDev | Alden Richards, Maine Mendoza |
| 103 | Aljon Handsome | Networking, Programming | Piolo Pascual, Kim Chiu |
| 104 | Aljon Gwapo | Database, Programming | Vice Ganda, Anne Curtis |
| 105 | Aljon Igop | WebDev, Networking | Coco Martin, Julia Montes |
| 106 | Aljon Sobrangcute | Database, WebDev, Programming | Daniel Padilla, Bea Alonzo, John Lloyd Cruz |
| 107 | Aljon Sobrangpogi | Networking, Programming | Jericho Rosales, Kristine Hermosa |
| 108 | Aljon Sobranghandsome | Database, Networking | Enrique Gil, Liza Soberano |
| 109 | Aljon Sobrang gwapo | WebDev, Programming | Donny Pangilinan, Belle Mariano |
| 110 | Aljon Sobrang Cute | Database, Programming | Alden Richards, Kathryn Bernardo |

**Issues:**
- Multiple values in Subjects and Instructors columns
- Difficult to query specific subject enrollment
- Violates atomicity principle

---

## 1NF (First Normal Form)

Eliminated repeating groups by creating separate rows for each subject-instructor pair.

**Student Table:**
| StudentID | StudentName |
|-----------|-------------|
| 101 | Aljon Cute |
| 102 | Aljon Pogi |
| 103 | Aljon Handsome |
| 104 | Aljon Gwapo |
| 105 | Aljon Igop |
| 106 | Aljon Sobrangcute |
| 107 | Aljon Sobrangpogi |
| 108 | Aljon Sobranghandsome |
| 109 | Aljon Sobrang gwapo |
| 110 | Aljon Sobrang Cute |

**Enrollment Table:**
| StudentID | Subject | Instructor |
|-----------|---------|------------|
| 101 | Database | Marian Rivera |
| 101 | Networking | Dingdong Dantes |
| 101 | Programming | Kathryn Bernardo |
| 102 | Database | Alden Richards |
| 102 | WebDev | Maine Mendoza |
| 103 | Networking | Piolo Pascual |
| 103 | Programming | Kim Chiu |
| 104 | Database | Vice Ganda |
| 104 | Programming | Anne Curtis |
| 105 | WebDev | Coco Martin |
| 105 | Networking | Julia Montes |
| 106 | Database | Daniel Padilla |
| 106 | WebDev | Bea Alonzo |
| 106 | Programming | John Lloyd Cruz |
| 107 | Networking | Jericho Rosales |
| 107 | Programming | Kristine Hermosa |
| 108 | Database | Enrique Gil |
| 108 | Networking | Liza Soberano |
| 109 | WebDev | Donny Pangilinan |
| 109 | Programming | Belle Mariano |
| 110 | Database | Alden Richards |
| 110 | Programming | Kathryn Bernardo |

**Changes:**
- Each cell contains single value
- Composite primary key: StudentID + Subject

---

## 2NF (Second Normal Form)

Removed partial dependencies by separating subject details into its own table.

**Student Table:**
| StudentID | StudentName |
|-----------|-------------|
| 101 | Aljon Cute |
| 102 | Aljon Pogi |
| 103 | Aljon Handsome |
| 104 | Aljon Gwapo |
| 105 | Aljon Igop |
| 106 | Aljon Sobrangcute |
| 107 | Aljon Sobrangpogi |
| 108 | Aljon Sobranghandsome |
| 109 | Aljon Sobrang gwapo |
| 110 | Aljon Sobrang Cute |

**Subject Table:**
| SubjectID | SubjectName |
|-----------|-------------|
| 1 | Database |
| 2 | Networking |
| 3 | Programming |
| 4 | WebDev |

**Instructor Table:**
| InstructorID | InstructorName |
|--------------|----------------|
| 1 | Marian Rivera |
| 2 | Dingdong Dantes |
| 3 | Kathryn Bernardo |
| 4 | Alden Richards |
| 5 | Maine Mendoza |
| 6 | Piolo Pascual |
| 7 | Kim Chiu |
| 8 | Vice Ganda |
| 9 | Anne Curtis |
| 10 | Coco Martin |
| 11 | Julia Montes |
| 12 | Daniel Padilla |
| 13 | Bea Alonzo |
| 14 | John Lloyd Cruz |
| 15 | Jericho Rosales |
| 16 | Kristine Hermosa |
| 17 | Enrique Gil |
| 18 | Liza Soberano |
| 19 | Donny Pangilinan |
| 20 | Belle Mariano |

**Enrollment Table:**
| StudentID | SubjectID | InstructorID |
|-----------|-----------|--------------|
| 101 | 1 | 1 |
| 101 | 2 | 2 |
| 101 | 3 | 3 |
| 102 | 1 | 4 |
| 102 | 4 | 5 |
| 103 | 2 | 6 |
| 103 | 3 | 7 |
| 104 | 1 | 8 |
| 104 | 3 | 9 |
| 105 | 4 | 10 |
| 105 | 2 | 11 |
| 106 | 1 | 12 |
| 106 | 4 | 13 |
| 106 | 3 | 14 |
| 107 | 2 | 15 |
| 107 | 3 | 16 |
| 108 | 1 | 17 |
| 108 | 2 | 18 |
| 109 | 4 | 19 |
| 109 | 3 | 20 |
| 110 | 1 | 4 |
| 110 | 3 | 3 |

**Changes:**
- Subject details are now independent
- Instructor details are now independent
- Removed dependency on StudentID for subject information

---

## 3NF (Third Normal Form)

Removed transitive dependencies. All non-key attributes now depend only on primary key.

**Student Table:**
| StudentID | StudentName |
|-----------|-------------|
| 101 | Aljon Cute |
| 102 | Aljon Pogi |
| 103 | Aljon Handsome |
| 104 | Aljon Gwapo |
| 105 | Aljon Igop |
| 106 | Aljon Sobrangcute |
| 107 | Aljon Sobrangpogi |
| 108 | Aljon Sobranghandsome |
| 109 | Aljon Sobrang gwapo |
| 110 | Aljon Sobrang Cute |

**Subject Table:**
| SubjectID | SubjectName | Units |
|-----------|-------------|-------|
| 1 | Database | 3 |
| 2 | Networking | 3 |
| 3 | Programming | 3 |
| 4 | WebDev | 3 |

**Instructor Table:**
| InstructorID | InstructorName | Department |
|--------------|----------------|------------|
| 1 | Marian Rivera | IT |
| 2 | Dingdong Dantes | CS |
| 3 | Kathryn Bernardo | IT |
| 4 | Alden Richards | IT |
| 5 | Maine Mendoza | CS |
| 6 | Piolo Pascual | IT |
| 7 | Kim Chiu | CS |
| 8 | Vice Ganda | IT |
| 9 | Anne Curtis | IT |
| 10 | Coco Martin | CS |
| 11 | Julia Montes | IT |
| 12 | Daniel Padilla | IT |
| 13 | Bea Alonzo | CS |
| 14 | John Lloyd Cruz | IT |
| 15 | Jericho Rosales | IT |
| 16 | Kristine Hermosa | CS |
| 17 | Enrique Gil | IT |
| 18 | Liza Soberano | IT |
| 19 | Donny Pangilinan | CS |
| 20 | Belle Mariano | IT |

**Enrollment Table:**
| EnrollmentID | StudentID | SubjectID | InstructorID | Grade | Semester |
|--------------|-----------|-----------|--------------|-------|----------|
| 1 | 101 | 1 | 1 | 1.25 | 1st Sem 2024 |
| 2 | 101 | 2 | 2 | 1.50 | 1st Sem 2024 |
| 3 | 101 | 3 | 3 | 1.00 | 1st Sem 2024 |
| 4 | 102 | 1 | 4 | 1.75 | 1st Sem 2024 |
| 5 | 102 | 4 | 5 | 2.00 | 1st Sem 2024 |
| 6 | 103 | 2 | 6 | 1.25 | 1st Sem 2024 |
| 7 | 103 | 3 | 7 | 1.50 | 1st Sem 2024 |
| 8 | 104 | 1 | 8 | 2.50 | 1st Sem 2024 |
| 9 | 104 | 3 | 9 | 1.75 | 1st Sem 2024 |
| 10 | 105 | 4 | 10 | 1.25 | 1st Sem 2024 |
| 11 | 105 | 2 | 11 | 1.50 | 1st Sem 2024 |
| 12 | 106 | 1 | 12 | 1.00 | 1st Sem 2024 |
| 13 | 106 | 4 | 13 | 1.25 | 1st Sem 2024 |
| 14 | 106 | 3 | 14 | 1.50 | 1st Sem 2024 |
| 15 | 107 | 2 | 15 | 1.75 | 1st Sem 2024 |
| 16 | 107 | 3 | 16 | 2.00 | 1st Sem 2024 |
| 17 | 108 | 1 | 17 | 1.25 | 1st Sem 2024 |
| 18 | 108 | 2 | 18 | 1.50 | 1st Sem 2024 |
| 19 | 109 | 4 | 19 | 1.75 | 1st Sem 2024 |
| 20 | 109 | 3 | 20 | 1.50 | 1st Sem 2024 |
| 21 | 110 | 1 | 4 | 1.25 | 1st Sem 2024 |
| 22 | 110 | 3 | 3 | 1.00 | 1st Sem 2024 |

**Summary of Transformations:**

| Normal Form | Key Changes |
|-------------|-------------|
| UNF | One table with repeating groups |
| 1NF | Separated repeating groups into individual rows |
| 2NF | Created separate tables for subjects and instructors |
| 3NF | Added EnrollmentID as primary key, removed transitive dependencies |

**Benefits:**
- Reduced data redundancy
- Easier updates and maintenance
- Flexible querying capabilities
- Clear relationship between entities