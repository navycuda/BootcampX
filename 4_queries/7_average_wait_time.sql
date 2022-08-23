/*
\i 4_queries/7_average_wait_time.sql
*/
SELECT 
  avg(started_at - created_at) AS average_assistance_request_duration
FROM
  assistance_requests;