--Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

SELECT * FROM airbnb_database.review WHERE rating > 4.0

select u.user_id,u.first_name,b.booking_id from user u inner join booking b ON u.user_id=b.user_id where u.user_id IN (select user_id from booking group by user_id having count(*) > 3);