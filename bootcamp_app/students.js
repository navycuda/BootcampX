const { Pool } = require('pg');

const pool = new Pool({
  user: 'navycuda',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
  SELECT
    id,
    name,
    cohort_id
  FROM
    students
  LIMIT
    5
  ;
`)
  .then(response => {
    console.log(response.rows);
  })
  .catch(error => console.error('query error', error.stack));


pool.end();