/*
 Посчитать все лайки к медиа, постам и сообщениям пользователя
*/

-- пусть нам известен id нужного пользователя, например 26

SELECT
  -- медиа
  (SELECT COUNT(users_id) 
  FROM likes 
  WHERE media_id IN (
  		SELECT id 
  		FROM media 
  		WHERE users_id = users.id)
  ) AS media_likes,
  -- посты
  (SELECT COUNT(users_id) 
  FROM likes 
  WHERE posts_id IN (
  		SELECT id 
  		FROM posts 
  		WHERE users_id = users.id)
  ) AS posts_likes,
  -- сообщения
  (SELECT COUNT(users_id) 
  FROM likes 
  WHERE messages_id IN (
  		SELECT id 
  		FROM messages 
  		WHERE from_users_id = users.id)
  ) AS messages_likes
FROM users 
WHERE id = 26;
