/*
\i 4_queries/3_assistance_requests_data.sql
*/
SELECT
  teachers.name AS teacher,
  students.name AS student,
  assignments.name AS assignment,
  assistance_requests.completed_at - assistance_requests.started_at AS duration
FROM
  assistance_requests
JOIN
  students
  ON assistance_requests.student_id = students.id
JOIN
  assignments
  ON assistance_requests.assignment_id = assignments.id
JOIN
  teachers
  ON assistance_requests.teacher_id = teachers.id
ORDER BY
  duration;