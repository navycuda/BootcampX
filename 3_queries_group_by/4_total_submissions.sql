-- 4_total_submissions.sql
SELECT cohorts.name AS cohort, count(students.*) AS total_submissions
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assignments ON students.id = assignments.student_id
GROUP BY cohort
ORDER BY student_count;