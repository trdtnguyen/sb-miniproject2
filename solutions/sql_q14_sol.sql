/*
14. Write a SQL query to find referees and the number of bookings they made for the
entire tournament. Sort your answer by the number of bookings in descending order.
*/

SELECT r.referee_id, r.referee_name, COUNT(*) AS NumBooked
FROM referee_mast as r, match_mast as m, player_booked as p
WHERE r.referee_id = m.referee_id AND m.match_no = p.match_no
GROUP BY r.referee_id
ORDER BY NumBooked DESC