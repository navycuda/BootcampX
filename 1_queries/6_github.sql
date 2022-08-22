SELECT name, email, phone
FROM students
WHERE students.github IS NULL
AND students.end_date < now();