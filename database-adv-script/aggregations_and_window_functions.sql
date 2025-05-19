SELECT 
  user_id,
  first_name,
  total_bookings,
  RANK() OVER (ORDER BY total_bookings DESC) AS user_rank
FROM (
  SELECT 
    u.user_id,
    u.first_name,
    COUNT(b.booking_id) AS total_bookings
  FROM 
    user u
  INNER JOIN 
    booking b ON u.user_id = b.user_id
  GROUP BY 
    u.user_id, u.first_name
  HAVING 
    COUNT(b.booking_id) > 1
) AS booking_counts;
