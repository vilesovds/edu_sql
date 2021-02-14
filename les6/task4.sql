/*
Определить кто больше поставил лайков (всего) - мужчины или женщины?
*/

SELECT 
	-- пол находится в профилях
	(SELECT gender 
	FROM profiles 
	WHERE users_id = likes.users_id) AS gender, 
	COUNT(users_id) AS `count` 
FROM likes 
GROUP BY gender
-- чтобы было проще понять, где кого больше - отсортируем
ORDER BY `count` DESC;
