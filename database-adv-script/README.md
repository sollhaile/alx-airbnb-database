1. Practice Subqueries
mandatory
Objective: Write both correlated and non-correlated subqueries.

Instructions:

Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

Write a correlated subquery to find users who have made more than 3 bookings.
select u.user_id,u.first_name
COUNT(b.booking_id) as total_bookings
from user u INNER JOIN booking b ON u,user_id=b.user_id
GROUP BY u.user_id,u.first_name
