/*
Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

*/
SELECT f.id, c.name AS `from`, c2.name AS `to`
FROM flights f
JOIN cities c ON c.label = f.`from` 
JOIN cities c2 ON c2.label = f.`to` 
ORDER BY f.id 
