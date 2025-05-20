--1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings

select b.booking_id,b.property_id,u.user_id,u.first_name,b.start_date,b.end_date,b.total_price,b.status from booking b INNER JOIN user u ON b.user_id=u.user_id;
--2. LEFT JOIN: Retrieve all properties and their respective bookings, including properties with no bookings
select u.user_id,b.booking_id,b.start_date,b.end_date,b.total_price,b.status from user u LEFT JOIN booking b ON u.user_id=b.user_id  ORDER BY u.user_id;
--3. RIGHT JOIN: Retrieve all bookings and their respective properties, including bookings with no associated properties
SELECT u.user_id, u.first_name , u.email, b.booking_id, b.property_id, b.start_date, b.end_date FROM user u RIGHT JOIN booking b ON u.user_id = b.user_id;
--1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings

select b.booking_id,b.property_id,u.user_id,u.first_name,b.start_date,b.end_date,b.total_price,b.status from booking b INNER JOIN user u ON b.user_id=u.user_id;
--2. LEFT JOIN: Retrieve all properties and their respective bookings, including properties with no bookings
SELECT 
  p.property_id, 
  p.host_id, 
  p.name, 
  r.rating, 
  r.comment
FROM property p
LEFT JOIN review r ON p.property_id = r.property_id
ORDER BY p.property_id;
--3. RIGHT JOIN: Retrieve all bookings and their respective properties, including bookings with no associated properties
SELECT 
  u.user_id, 
  u.first_name, 
  u.email, 
  b.booking_id, 
  b.property_id
FROM us
FULL OUTER JOIN booking b ON u.user_id = b.user_id
ORDER BY u.user_id;
