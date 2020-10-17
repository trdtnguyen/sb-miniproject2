/*
7. Write a SQL query to find all the venues where matches with penalty shootouts were
played.
*/
SELECT soccer_venue.venue_id, soccer_venue.venue_name
FROM soccer_venue, match_mast
WHERE soccer_venue.venue_id = match_mast.venue_id AND
	decided_by = 'P'    
