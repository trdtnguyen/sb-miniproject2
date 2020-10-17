/*
19. Write a SQL query to find the number of captains who were also goalkeepers.
*/
SELECT DISTINCT p.player_id, p.player_name
FROM match_captain as m, player_mast as p
WHERE m.player_captain = p.player_id AND
		p.posi_to_play = 'GK'

