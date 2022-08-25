const { Pool } = require('pg');
const args = process.argv.slice(2);

const pool = new Pool({
  user: 'navycuda',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// pool.query(`
//   SELECT
//     students.id,
//     students.name,
//     cohorts.name AS cohort
//   FROM
//     students
//   JOIN
//     cohorts
//     ON students.cohort_id = cohorts.id
//   LIMIT
//     5
//   ;
// `)
//   .then(response => {
//     // console.log(response.rows);
//     response.rows.forEach((user) => {
//       console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
//     });
//   })
//   .catch(error => console.error('query error', error.stack));

// const query = `
//   SELECT
//     students.id,
//     students.name,
//     cohorts.name AS cohort
//   FROM
//     students
//   JOIN
//     cohorts
//     ON students.cohort_id = cohorts.id
//   WHERE
//     cohorts.name LIKE $1
//   LIMIT
//     $2
//   ;
// `;

// const vars = [
//   args[0] + '%',
//   Number(args[1])
// ];

const query = `
  SELECT DISTINCT
    teachers.name AS teacher,
    cohorts.name as cohort_id
  FROM
    teachers
  JOIN
    assistance_requests
    ON teachers.id = assistance_requests.teacher_id
  JOIN
    students
    ON assistance_requests.student_id = students.id
  JOIN
    cohorts
    ON students.cohort_id = cohorts.id
  WHERE
    cohorts.name = $1
  ORDER BY
    teacher
  ;
`;
const vars = [
  args[0]
];

pool.query(query, vars)
  .then((response) => {
    response.rows.forEach((user) => {
      // console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    
    
    });
  })
  .catch((error) => {
    console.error(`query error`, error.stack);
  });

pool.end();