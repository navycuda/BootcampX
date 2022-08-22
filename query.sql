-- SELECT students.name, students.email, cohorts.name 
-- FROM students INNER JOIN cohorts ON cohort_id = cohorts.id;

-- SELECT students.name, students.email, cohorts.name
-- FROM students LEFT OUTER JOIN cohorts ON cohort_id = cohorts.id
-- ORDER BY students.name;

SELECT students.name, students.email, cohorts.name
FROM students RIGHT OUTER JOIN cohorts ON cohort_id = cohorts.id
ORDER BY students.name;

-- SELECT students.name, students.email, cohorts.name
-- FROM students FULL OUTER JOIN cohorts ON cohort_id = cohorts.id
-- ORDER BY students.name;