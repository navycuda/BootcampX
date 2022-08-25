const { Pool } = require('pg');

const pool = new Pool({
  user: 'navycuda',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
  SELECT
    students.id,
    students.name,
    cohorts.name AS cohort
  FROM
    students
  JOIN
    cohorts
    ON students.cohort_id = cohorts.id
  LIMIT
    5
  ;
`)
  .then(response => {
    // console.log(response.rows);
    response.rows.forEach((user) => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    });
  })
  .catch(error => console.error('query error', error.stack));

pool.end();