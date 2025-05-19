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
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_num_rank,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank_position
FROM (
    SELECT 
        b.property_id,
        COUNT(*) AS total_bookings
    FROM 
        booking b
    GROUP BY 
        b.property_id
) ranked_properties;


