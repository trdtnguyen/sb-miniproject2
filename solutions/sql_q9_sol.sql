/*
9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for
Germany, who played in Germany’s group stage matches.
*/

SELECT player_name, jersey_no
FROM player_mast as p, soccer_team as t, soccer_country as c
WHERE p.team_id = t.team_id AND t.team_id = c.country_id AND
	  p.posi_to_play = 'GK' AND c.country_name = 'Germany'
;
