-- migrations/teachers_assistance_requests.sql
CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  start_date DATE,
  end_date DATE,
  is_active BOOLEAN
);
CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER,
  student_id INTEGER NOT NULL,
  teacher_id INTEGER,
  created_at DATE,
  started_at DATE,
  completed_at DATE,
  student_feedback TEXT,
  teacher_feedback TEXT
);