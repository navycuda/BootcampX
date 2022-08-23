-- 2_busy_day.sql
SELECT day, count(*) AS total_assignments
FROM assignments
WHERE total_assignments >= 10
GROUP BY day
ORDER BY day;