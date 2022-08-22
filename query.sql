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

SELECT students.name AS student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
HAVING total_submissions < 100
GROUP BY students.name;