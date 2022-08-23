-- 3_queries_group_by/5_completion_time.sql
SELECT name AS student, AVG(assignment.duration) average_assignment_duration
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
GROUP BY cohort
ORDER BY average_assignment_duration DESC;