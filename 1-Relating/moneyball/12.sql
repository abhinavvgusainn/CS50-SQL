WITH cheapest_hit AS (
    SELECT performances.player_id
    FROM performances
    JOIN salaries
        ON performances.player_id = salaries.player_id
        AND performances.team_id = salaries.team_id
        AND performances.year = salaries.year
    JOIN players
        ON players.id = performances.player_id
    WHERE salaries.year = 2001
      AND performances.H > 0
    ORDER BY salaries.salary / performances.H,
             players.first_name,
             players.last_name
    LIMIT 10
),
cheapest_rbi AS (
    SELECT performances.player_id
    FROM performances
    JOIN salaries
        ON performances.player_id = salaries.player_id
        AND performances.team_id = salaries.team_id
        AND performances.year = salaries.year
    JOIN players
        ON players.id = performances.player_id
    WHERE salaries.year = 2001
      AND performances.RBI > 0
    ORDER BY salaries.salary / performances.RBI,
             players.first_name,
             players.last_name
    LIMIT 10
)

SELECT first_name, last_name
FROM players
WHERE id IN (
    SELECT player_id
    FROM cheapest_hit

    INTERSECT

    SELECT player_id
    FROM cheapest_rbi
)
ORDER BY id;