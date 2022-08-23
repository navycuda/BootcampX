-- 4_queries/1_assistance_requests.sql
SELECT count(assistance_requests) AS total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm' 
GROUP BY teachers.name;