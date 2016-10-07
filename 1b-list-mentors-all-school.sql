-- Write a query that returns
--   the name of the mentors
--   plus the name and country of the school (joining with the schools table)
--   ordered by the mentors id column
-- BUT include all the schools, even if there's no mentor yet!

-- columns: mentors.first_name, mentors.last_name, schools.name, schools.country

SELECT mentors.first_name, mentors.last_name, schools.name, schools.country 
FROM mentors
RIGHT OUTER JOIN schools ON (schools.city = mentors.city)
ORDER BY mentors.id ASC;
