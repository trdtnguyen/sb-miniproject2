/*
16. Write a SQL query to find referees and the number of matches they worked in each
venue.
*/

SELECT r.referee_id, r.referee_name, COUNT(*) AS NumMatches
FROM referee_mast as r, match_mast as m
WHERE r.referee_id = m.referee_id
GROUP BY r.referee_id
ORDER BY NumMatches
