-- query: all students born in 1990
SELECT *
FROM `students`
WHERE SUBSTRING(date_of_birth, 1, 4) = '1990';

--query: all courses which have more than 10 credits
SELECT *
FROM `courses`
WHERE  cfu > 10;

--query: all students that are more than 30 yeaers old
SELECT *
FROM `students`
WHERE SUBSTRING(CURRENT_DATE(), 1, 4) - SUBSTRING(date_of_birth, 1, 4) >= 30 AND SUBSTRING(CURRENT_DATE(), 6, 2) - SUBSTRING(date_of_birth, 6, 2) >= 0 AND SUBSTRING(CURRENT_DATE(), 9, 2) - SUBSTRING(date_of_birth, 9, 2) > 0;

--query: all course of the first semester of the first year of any year
SELECT *
FROM `courses`
WHERE period = 'I semestre' AND year = 1;

--all exams in the evening after the date of 20/06/2020
SELECT *
FROM `exams`
WHERE SUBSTRING(hour, 1, 2) > 14 and date > '20-06-2020';

--all courses of master degree
SELECT *
FROM `degrees`
WHERE level = 'magistrale';



