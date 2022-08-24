/*
\i 4_queries/B_total_assignments_and_duration.sql
*/
SELECT 
  assignment.day,
  count(assignments.*) AS number_of_assignments,
  sum(assignments.duration) AS duration
FROM
  assignments
GROUP BY
  assignmnets.day;