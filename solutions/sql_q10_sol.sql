/*
10. Write a SQL query to find all available information about the players under contract to
Liverpool F.C. playing for England in EURO Cup 2016.
*/

SELECT *
FROM player_mast as p, soccer_country as c
WHERE p.team_id = c.country_id AND 
	p.playing_club LIKE '%Liverpool%' AND 
    c.country_name = 'England'
;
