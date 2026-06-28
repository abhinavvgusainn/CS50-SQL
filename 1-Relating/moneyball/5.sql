SELECT DISTINCT teams.name FROM teams
JOIN performances ON teams.id = performances.team_id
WHERE performances.player_id = (
    SELECT id from players
    WHERE first_name = 'Satchel' AND last_name = 'Paige'
);
