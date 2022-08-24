/*
\i 4_queries/A_most_confusing_assignments.sql
SELECT 
  assignments.id,
  assignments.name,
  assignments.day,
  assignments.chapter,
  count(total_duration) AS total_requests
FROM (
  SELECT
  avg(total_duration) AS average_total_duration
  FROM (
    SELECT
      cohorts.name AS cohort,
      sum(assistance_requests.completed_at-assistance_requests.started_at) AS total_duration
    FROM
      assistance_requests
    JOIN
      students
      ON assistance_requests.student_id = students.id
    JOIN
      cohorts
      ON students.cohort_id = cohorts.id
    JOIN
      assignments
      ON assistance_requests.assignment_id = assignments.id
    GROUP BY
      cohorts.name
    ORDER BY
      total_duration
  ) AS total_durations
) AS total_durations;
*/

SELECT
  assignments.id,
  assignments.name,
  assignments.day,
  assignments.chapter,
  count(assistance_requests) AS total_requests
FROM
  assignments
JOIN
  assistance_requests
  ON assignments.id = assistance_requests.assignment_id
GROUP BY
  assignments.id
ORDER BY
  total_requests DESC;