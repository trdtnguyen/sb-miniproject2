/*
17. Write a SQL query to find the country where the most assistant referees come from,
and the count of the assistant referees.
*/

SELECT r.country_id, c.country_name, COUNT(*) AS NumAssReferees
FROM match_details as m, asst_referee_mast as r, soccer_country as c
WHERE m.ass_ref = r.ass_ref_id AND r.country_id = c.country_id
GROUP BY r.country_id
ORDER BY NumAssReferees DESC
LIMIT 1