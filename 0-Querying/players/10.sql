-- Find the tallest player born in the USA.

SELECT "first_name","last_name", "height" AS "Height (inches)"
FROM "players"
WHERE "birth_country" = 'USA'
ORDER BY "height" DESC, "first_name", "last_name"
LIMIT 1;