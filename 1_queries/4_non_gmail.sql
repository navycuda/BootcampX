SELECT name, email, id, cohort_id
  FROM students
 WHERE students.email NOT LIKE '%@gmail.com';
