/*Вначале сортируем те, что равны 0*/
SELECT * 
FROM storehouses_products
ORDER BY value = 0, value;