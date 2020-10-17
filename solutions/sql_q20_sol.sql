/*
20. Write a SQL query to find the substitute players who came into the field in the first
half of play, within a normal play schedule.
*/
SELECT p2.player_id, p2.player_name
FROM player_in_out as p1, player_mast as p2
WHERE p1.player_id = p2.player_id AND
	p1.in_out = 'I' AND p1.play_schedule ='NT' AND p1.play_half = 1 


