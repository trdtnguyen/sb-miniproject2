/*
13. Write a SQL query to find all the defenders who scored a goal for their teams.
*/

SELECT DISTINCT p.player_id, p.player_name
FROM player_mast as p, goal_details as d
WHERE p.player_id = d.player_id AND 
	  p.posi_to_play = 'FD'
