-- query: all students born in 1990
SELECT *
FROM `students`
WHERE SUBSTRING(date_of_birth, 1, 4) = '1990';

--query: all courses which have more than 10 credits
SELECT *
FROM `courses`
WHERE  cfu > 10;

--query: all students that are more than 30 yeaers old
SELECT date_of_birth
FROM `students`
WHERE DATEDIFF(CURRENT_DATE(), date_of_birth) > 30 * 365 + 8
ORDER BY `students`.`date_of_birth` DESC;

--query: all course of the first semester of the first year of any year
SELECT *
FROM `courses`
WHERE period = 'I semestre' AND year = 1;

--query: all exams in the evening after the date of 20/06/2020
SELECT *
FROM `exams`
WHERE SUBSTRING(hour, 1, 2) >= 14 AND date = '2020-06-20';

--query: all degrees of type master's degree
SELECT *
FROM `degrees`
WHERE level = 'magistrale';

--query: university departments
SELECT *
FROM `departments`;

--query: teachers which do not possess a telephone number
SELECT *
FROM `teachers`
WHERE phone IS NULL;

--query: insert new student row
INSERT INTO `students` (degree_id, name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email)
VALUES (12, 'Tommaso', 'Tacconi', '1996-08-21', 'TCCTMS96M21F203W', '2015-07-15', '847125', 'tommasot@gmail.com');

--query: change office number of professor Pietro Rizzo in 126
UPDATE `teachers`
SET office_number = 126
WHERE name = 'Pietro' AND surname = 'Rizzo';

--query: delete insert done previously in `students`
DELETE
FROM `students`
WHERE id = 5001;

--final commit








