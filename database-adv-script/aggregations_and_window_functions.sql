SELECT u.user_id,u.first_name
COUNT(b.booking_id) as total_bookings
FROM USER u INNER JOIN booking b ON u,user_id=b.user_id
GROUP BY u.user_id,u.first_name
