  SELECT name, id
    FROM students
   WHERE students.email IS NULL
      OR students.phone IS NULL
ORDER BY students.name;