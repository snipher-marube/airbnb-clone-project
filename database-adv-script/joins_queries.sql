SELECT
    u.id AS user_id,
    u.name AS username,
    b.id AS booking_id,
    b.date AS booking_date
FROM
    users u 
INNER JOIN
    bookings b ON u.id = b.user_id

