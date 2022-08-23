-- SELECT students.name, students.email, cohorts.name 
-- FROM students INNER JOIN cohorts ON cohort_id = cohorts.id;

-- SELECT students.name, students.email, cohorts.name
-- FROM students LEFT OUTER JOIN cohorts ON cohort_id = cohorts.id
-- ORDER BY students.name;

-- SELECT students.name, students.email, cohorts.name
-- FROM students RIGHT OUTER JOIN cohorts ON cohort_id = cohorts.id
-- ORDER BY students.name;

-- SELECT students.name, students.email, cohorts.name
-- FROM students FULL OUTER JOIN cohorts ON cohort_id = cohorts.id
-- ORDER BY students.name;

-- SELECT students.name AS student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = assignment_submissions.student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;

-- SELECT (
--   SELECT count(assignments)
--   FROM assignments
-- )-count(assignment_submissions) as total_incomplete
-- FROM assignment_submissions
-- JOIN students ON assignment_submissions.student_id = students.id
-- WHERE students.name = 'Ibrahim Schimmel';

SELECT count(students) AS total_students
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts;