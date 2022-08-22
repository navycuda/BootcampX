SELECT students.name, students.email, cohorts.name 
FROM students JOIN cohorts ON cohort_id = cohorts.id;