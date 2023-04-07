-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT teams.name, players.first_name, players.last_name, MAX(stats.home_runs)
FROM teams 
INNER JOIN stats ON teams.id = stats.team_id 
INNER JOIN players ON players.id = stats.player_id
WHERE year = 2019
;
