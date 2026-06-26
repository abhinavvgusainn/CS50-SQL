-- Which public school districts have the largest number of schools?

SELECT districts.name, COUNT(schools.id) AS number_of_schools
FROM districts
JOIN schools ON districts.id = schools.district_id
WHERE districts.type = 'Public School District'
GROUP BY districts.id
ORDER BY number_of_schools DESC 
LIMIT 1;