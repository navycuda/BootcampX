/*
\i 4_queries/6_longest_assistances.sql
*/
SELECT 
  cohorts.name AS name,
  avg(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
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
HAVING
  avg(assistance_requests.completed_at - assistance_requests.started_at) = (
    SELECT max(average_assistance_time)
  );