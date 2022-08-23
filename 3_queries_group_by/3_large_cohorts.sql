-- 3_queries_group_by/3_large_cohorts.sql
SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
HAVING count(students.*) >= 18
ORDER BY student_count;