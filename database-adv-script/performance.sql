SELECT 
  b.booking_id AS booking_id,
  u.first_name AS user_name,
  p.name AS property_name,
  pay.amount
FROM booking b
JOIN user u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
JOIN payment pay ON b.user_id = pay.user_id;



EXPLAIN
SELECT 
  b.booking_id,
  u.first_name,
  p.name,
  pay.amount
FROM booking b
JOIN user u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
JOIN payment pay ON b.booking_id = pay.booking_id;