SELECT DAYNAME(DATE_ADD(DATE_ADD(MAKEDATE(YEAR(NOW()), 1), INTERVAL (MONTH(birthday_at))-1 MONTH), INTERVAL (DAY(birthday_at))-1 DAY)) as 'day', COUNT(id) as 'count'
FROM users
GROUP BY DAYNAME(DATE_ADD(DATE_ADD(MAKEDATE(YEAR(NOW()), 1), INTERVAL (MONTH(birthday_at))-1 MONTH), INTERVAL (DAY(birthday_at))-1 DAY));