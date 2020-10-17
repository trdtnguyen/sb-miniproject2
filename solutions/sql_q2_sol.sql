/*
2. Write a SQL query to find the number of matches that were won by penalty shootout.
*/
SELECT COUNT(*) AS 'Number of matches won by penalty shootout'
FROM match_mast
WHERE decided_by = 'P'
;