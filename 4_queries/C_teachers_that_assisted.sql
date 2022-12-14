/*
\i 4_queries/C_teachers_that_assisted.sql
SELECT 
  teachers.name,
  cohorts.name
FROM
  teachers
JOIN
  assistance_requests
  ON teachers.id = assistance_requests.teacher_id
JOIN 
  students
  ON assistance_requests.student_id = students.id
JOIN
  cohorts
  ON students.cohort_id = cohorts.id
WHERE
  cohorts.name = 'JUL02'
GROUP BY
  cohorts.name;
*/
SELECT DISTINCT
  teachers.name AS teacher,
  cohorts.name as cohort_id
FROM
  teachers
JOIN
  assistance_requests
  ON teachers.id = assistance_requests.teacher_id
JOIN
  students
  ON  assistance_requests.student_id = students.id
JOIN
  cohorts
  ON  students.cohort_id = cohorts.id
WHERE
  cohorts.name = 'JUL02'
ORDER BY
  teacher;