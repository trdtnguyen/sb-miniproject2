/*
4. Write a SQL query to compute a list showing the number of substitutions that
happened in various stages of play for the entire tournament.
*/
WITH substituions AS(
	SELECT match_no, COUNT(*) as NumSubstitutions
    FROM player_in_out
    WHERE in_out = 'I'
    GROUP BY match_no
) SELECT substituions.match_no, play_stage,  NumSubstitutions
FROM substituions, match_mast
WHERE substituions.match_no = match_mast.match_no
;
