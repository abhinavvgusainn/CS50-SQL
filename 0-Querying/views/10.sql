-- What is the most complex print by Hiroshige, based on the entropy score?

SELECT "english_title" AS "Most_complex_print_by_Hiroshige",
       "entropy" AS "Complexity_score"
FROM "views"
WHERE "artist" = 'Hiroshige'
ORDER BY "entropy" DESC
LIMIT 1;
