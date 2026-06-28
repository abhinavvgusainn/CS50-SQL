-- Which episodes from later seasons (10+) discuss probability?

SELECT 
    season, title, topic
FROM
    episodes
WHERE
    season >= 10 AND topic LIKE '%Probability%';