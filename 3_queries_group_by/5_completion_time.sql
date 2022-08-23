-- 3_queries_group_by/5_completion_time.sql
SELECT students.name AS student, AVG(assignments.duration) average_assignment_duration
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;