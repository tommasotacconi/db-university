--  1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*)
FROM `students`
GROUP BY YEAR(`enrolment_date`);

--  2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_number`, COUNT(*) as `number of teachers`
FROM `teachers`
GROUP BY `office_number`;

--  3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG(`vote`) as `average vote`
FROM `exam_student`
GROUP BY `exam_id`;

--  4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(*) as `number of courses`
FROM `degrees`
GROUP BY `department_id`;