/*
Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
*/
SELECT
  id,
  (SELECT COUNT(users_id) FROM likes WHERE users_id = users.id) AS likes,
  (SELECT COUNT(id) FROM posts WHERE users_id = users.id) AS posts,
  (SELECT COUNT(id) FROM media WHERE users_id = users.id) AS media,
  (SELECT COUNT(id) FROM messages WHERE from_users_id = users.id) AS messages,
  -- total
  ((SELECT COUNT(users_id) FROM likes WHERE users_id = users.id) +
  (SELECT COUNT(id) FROM posts WHERE users_id = users.id) + 
  (SELECT COUNT(id) FROM media WHERE users_id = users.id) +
  (SELECT COUNT(id) FROM messages WHERE from_users_id = users.id)) as total
FROM users 
ORDER BY total LIMIT 10;
