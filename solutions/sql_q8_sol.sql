/*
8. Write a SQL query to find the match number for the game with the highest number of
penalty shots, and which countries played that match.
*/

WITH MostPenaltyMatch AS(
SELECT match_no, COUNT(*) AS NumPenaltyShootouts
FROM penalty_shootout
GROUP BY match_no 
ORDER BY NumPenaltyShootouts DESC
LIMIT 1
)
SELECT MostPenaltyMatch.match_no, md1.team_id as country1, md2.team_id as country2, NumPenaltyShootouts
FROM MostPenaltyMatch, match_details as md1, match_details as md2
WHERE MostPenaltyMatch.match_no = md1.match_no AND
	md1.match_no = md2.match_no AND
    md1.team_id != md2.team_id
;
