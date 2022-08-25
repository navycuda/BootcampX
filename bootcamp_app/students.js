const { Pool } = require('pg');

const pool = new Pool({
  user: 'navycuda',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});