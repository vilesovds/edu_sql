SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) as 'avg' 
FROM users;