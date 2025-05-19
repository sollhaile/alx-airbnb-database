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



SELECT 
  property_id,
  total_bookings,
  RANK() OVER (ORDER BY total_bookings DESC) AS property_rank
FROM (
  SELECT 
    property_id,
    COUNT(*) AS total_bookings
  FROM 
    booking
  GROUP BY 
    property_id
) AS property_counts;

