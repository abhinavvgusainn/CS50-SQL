SELECT 
players.first_name, 
players.last_name, 
salaries.salary,
performances.year,
performances.HR
FROM players
JOIN salaries ON players.id = salaries.player_id
JOIN performances ON players.id = performances.player_id 
AND salaries.year = performances.year
AND salaries.team_id = performances.team_id
ORDER BY players.id,
performances.year DESC,
performances.HR DESC,
salaries.salary DESC;