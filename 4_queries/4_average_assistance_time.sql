/*
\i 4_queries/4_average_assistance_time.sql
*/
SELECT 
  avg(completed_at - started_at) AS average_assistance_request_duration
FROM
  assistance_requests;