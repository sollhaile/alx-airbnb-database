-- File: partitioning.sql

-- First, create a partitioned table for bookings by start_date (monthly)
CREATE TABLE booking_partitioned (
    booking_id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50),
    amount DECIMAL(10, 2)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Without partitioning
EXPLAIN SELECT * FROM booking WHERE start_date BETWEEN '2022-01-01' AND '2022-12-31';
-- With partitioning
EXPLAIN SELECT * FROM booking_partitioned WHERE start_date BETWEEN '2022-01-01' AND '2022-12-31';
