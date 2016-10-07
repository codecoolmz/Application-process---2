-- Write a query that returns
--   the number of the mentors per country
--   ordered by the name of the countries

-- columns: country, count

SELECT schools.country, COUNT(mentors.id) FROM mentors
JOIN schools ON (schools.city = mentors.city)
GROUP BY schools.country
ORDER BY schools.country;
