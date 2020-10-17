/*
11. Write a SQL query to find the players, their jersey number, and playing club who
were the goalkeepers for England in EURO Cup 2016.
*/

SELECT p.player_name, p.jersey_no, p.playing_club
FROM player_mast as p, soccer_country as c
WHERE p.team_id = c.country_id AND 
	p.posi_to_play = 'GK' AND 
    c.country_name = 'England'
;
