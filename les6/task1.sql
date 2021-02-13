/*Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения (JOIN пока не применять).
*/

-- в файле vk_select.sql есть такой запрос:
SELECT
  media_types_id,
  (SELECT name FROM media_types WHERE media_types.id = media.media_types_id) AS media_type_name,
  COUNT(*)
FROM media
GROUP BY media_types_id;

-- его можно переписать так , избавившись от GROUP BY
SELECT
  id,
  name,
  (SELECT COUNT(media_types_id) FROM media WHERE media.media_types_id = media_types.id) AS count
FROM media_types;
