-- student SQL#1 : select 1 student
SELECT * FROM students;

--student SQL#2 : select students in asc order by id;
SELECT * FROM  students
ORDER BY student_id ASC;

--student SQL#3 : select students in desc order by id;
SELECT * FROM  students
ORDER BY student_id DESC;

--student SQL#4 : select students in asc order by last_name;
SELECT * FROM  students
ORDER BY student_last_name ASC;

--student SQL#5 : select students in asc order by last_name;
SELECT * FROM  students
ORDER BY student_last_name DESC;

--student SQL#6 : select students in asc order by first_name;
SELECT * FROM  students
ORDER BY student_first_name ASC;

--student SQL#7 : select students in asc order by first_name;
SELECT * FROM  students
ORDER BY student_first_name DESC;

--you can modify displayed column by selecting 
--specific column after SELECT command
--student#8 display all students first_name and last_name

SELECT student_first_name,
        student_last_name
    FROM students
    ORDER BY student_first_name ASC;

--student sql#9 LIMIT 1
SELECT student_first_name,
        student_last_name
    FROM students
    ORDER BY student_first_name ASC
    LIMIT 1;

--student sql #10 - select a student based on id
SELECT student_first_name,
        student_last_name
    FROM students
    WHERE student_id = 1
    LIMIT 1;

    --select sql #10 - update student name a student based on id
    UPDATE students
    SET student_first_name= 'meya',
        student_last_name= 'divino'
    WHERE student_id = 2;