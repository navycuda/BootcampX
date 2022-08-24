/*
\i 4_queries/8_total_duration.sql
*/
SELECT
  cohorts.name,
  sum(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM
  cohorts
JOIN
  students
  ON cohorts.id = students.cohort_id
JOIN
  assistance_requests
  ON students.id = assistance_requests.student_id
GROUP BY
  cohorts.name
ORDER BY
  total_duration
  DESC;