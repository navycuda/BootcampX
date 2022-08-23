/*
\i 4_queries/2_student_assistance_requests.sql
*/
SELECT 
  count(assistance_requests) AS total_assistances,
  students.name AS name
FROM assistance_requests
JOIN students
  ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;