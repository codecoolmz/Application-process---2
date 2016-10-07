-- Write a query that returns
--   the first name and the code of the applicants
--   plus the name of the assigned mentor (joining through the applicants_mentors table)
--   ordered by the applicants id column

-- Show all the applicants, even if they have no assigned mentor in the database!
--   In this case use the string 'None' instead of the mentor name

-- columns: applicants.first_name, applicants.application_code, mentor_first_name, mentor_last_name

SELECT applicants.first_name, applicants.application_code, 
CASE WHEN mentors.first_name IS NULL THEN 'None' ELSE mentors.first_name END AS mentor_first_name,
CASE WHEN mentors.last_name IS NULL THEN 'None' ELSE mentors.last_name END AS mentor_last_name 
FROM applicants
FULL JOIN applicants_mentors ON (applicants_mentors.applicant_id = applicants.id)
FULL JOIN mentors ON (applicants_mentors.mentor_id = mentors.id)
ORDER BY applicants.id
