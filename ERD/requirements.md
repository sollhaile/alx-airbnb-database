+------------+      1    +-----------+    1    +---------+
|   User     |──────────>|  Property |────────>| Booking |
| (user_id)  |  hosts    |(property_id)|is listed|(booking_id)|
| name       |           | host_id  FK|    on  | property_id FK|
| email      |           | ...       |         | guest_id FK|
+------------+           +-----------+         | ...     |
     ▲  \                                        +----▲----+
     |   \                                           |
     |    \n books                              writes
     |     \n                                 0..1 \n1
 0..n|      \                               +--------+------+
     |       \                              |    Review     |
     |        \                             |  (review_id)  |
     |         \                            | booking_id FK |
     |          \                           | reviewer_id FK|
     |           \                          | rating        |
     |            \                         +---------------+
     |             \
     |              \
   sends/receives  \
0..n |   Messages    \ 0..n
     +---------------+    \
     |  Message      |     \
     | (message_id)  |      \
     | sender_id FK  |       \
     | recipient_id FK|       \
     | property_id FK |       \
     | content        |        \
     | sent_at        |         \
     +---------------+           \
                                  \
                              +---+---+
                              |  User |
                              |(user_id)|
                              +--------+
