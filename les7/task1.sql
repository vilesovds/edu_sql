/*
Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
*/

-- меньше одной покупки совершить невозможно
SELECT users.id, users.name , COUNT(user_id) AS orders 
FROM users 
JOIN orders o ON users.id = o.user_id 
GROUP BY id
ORDER BY orders DESC;
