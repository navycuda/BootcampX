-- 3_queries_group_by/6_low_completion_time.sql
SELECT students.name AS student,
  avg(assignment_submissions.duration) average_assignment_duration,
  avg(assignments.duration) average_estimate_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY student
HAVING avg(assignments.duration) > avg(assignment_submissions.duration)
ORDER BY average_assignment_duration;