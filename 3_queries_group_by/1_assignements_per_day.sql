-- 1_assignements_per_day.sql
SELECT day, sum(assignments.day) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day;