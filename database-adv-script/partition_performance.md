Partitioning Report – Booking Table Optimization

We implemented RANGE partitioning on the Booking table using the start_date column. This was done to improve query performance on large datasets.

Before Partitioning:
Queries filtering by date (e.g., a specific year) resulted in full table scans.

Slow performance on date-based filters.

After Partitioning:
The table was partitioned by year using RANGE partitioning.

Queries with date range filters only scanned relevant partitions.

The query plan confirmed partition pruning, reducing row scans significantly.

Execution time improved by up to 50–70% for yearly filtered queries.

Conclusion:
Partitioning by start_date improved performance for time-based queries. It also offers long-term benefits for data management and archiving