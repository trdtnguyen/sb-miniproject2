/*
12. Write a SQL query that returns the total number of goals scored by each position on
each country’s team. Do not include positions which scored no goals.
*/

SELECT c.country_name as country, p.posi_to_play as position, COUNT(*) AS NumGoals
FROM player_mast as p, soccer_country as c, goal_details as d
WHERE p.team_id = c.country_id AND p.player_id = d.player_id
GROUP BY c.country_name, p.posi_to_play
ORDER BY c.country_name, p.posi_to_play;
