-- SELECT students.name, students.email, cohorts.name 
-- FROM students INNER JOIN cohorts ON cohort_id = cohorts.id;

SELECT students.name, students.email, cohorts.name
FROM students OUTER JOIN cohorts ON cohort_id = cohorts.id;