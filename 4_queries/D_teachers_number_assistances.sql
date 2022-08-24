/*
\i 4_queries/D_teachers_number_assistances.sql
*/
SELECT DISTINCT
  teachers.name AS teacher,
  cohorts.name as cohort,
  count(assistance_requests.*)
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
GROUP BY
  teacher,
  cohort
ORDER BY
  teacher;