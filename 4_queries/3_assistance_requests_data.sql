/*
\i 4_queries/3_assistance_requests_data.sql
*/
SELECT
  teachers.name AS teacher,
  students.name AS student,
  assignment_submissions.duration AS duration,
  assignments.name AS assignment
FROM
  assignment_submissions
JOIN
  students
  ON assignment_submissions.student_id = students.id
JOIN
  assignments
  ON assignment_submissions.assignment_id = assignments.id
JOIN
  teachers
  ON assignment_submissions.teacher_id = teachers.id;