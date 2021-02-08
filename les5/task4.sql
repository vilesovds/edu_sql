SELECT *
FROM users
WHERE LOWER( DATE_FORMAT(birthday_at, '%M')) IN ('may', 'august');