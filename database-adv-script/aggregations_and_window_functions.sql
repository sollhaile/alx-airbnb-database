SELECT 
  u.user_id,
  u.first_name,
  COUNT(b.booking_id) AS total_bookings
FROM 
  user u
JOIN 
  booking b ON u.user_id = b.user_id
GROUP BY 
  u.user_id, u.first_name;



SELECT u.user_id,p.booking_id,
RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank FROM booking b JOIN user u ON b.user_id=u.user_id
JOIN property p ON b.property_id = p.property_id GROUP BY u.user_id,p.booking_id;
