/*
6. Write a SQL query to find the number of matches that were won by a single point, but
do not include matches decided by penalty shootout.
*/
SELECT COUNT(*)
FROM match_details
WHERE goal_score = 1 AND 
	decided_by != 'P' AND
    win_lose = 'W'
;