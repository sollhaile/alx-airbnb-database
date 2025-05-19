EXPLAIN ANALYZE
SELECT b.*
FROM Booking b
JOIN User u ON b.user_id = u.user_id
WHERE u.email = 'someone@example.com'
ORDER BY b.booking_date DESC;



-- Indexes for User table
CREATE INDEX idx_user_user_id ON User(user_id);
CREATE INDEX idx_user_email ON User(email);

-- Indexes for Booking table
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_booking_date ON Booking(booking_date);

-- Indexes for Property table
CREATE INDEX idx_property_property_id ON Property(property_id);




EXPLAIN ANALYZE
SELECT b.*
FROM Booking b
JOIN User u ON b.user_id = u.user_id
WHERE u.email = 'someone@example.com'
ORDER BY b.booking_date DESC;
