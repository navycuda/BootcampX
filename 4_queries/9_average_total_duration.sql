/*
\i 4_queries/9_average_total_duration.sql
*/
SELECT
  cohorts.name AS name,
  AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
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
HAVING avg(assistance_requests.completed_at - assistance_requests.started_at) >= ALL(
  SELECT 
    avg(assistance_requests.completed_at - assistance_requests.started_at)
  FROM
    assistance_requests
  JOIN
    students
    ON assistance_requests.student_id = students.id
  JOIN
    cohorts
    ON students.cohort_id = cohorts.id
  GROUP BY
    cohorts.name
)
ORDER BY
  average_assistance_time;