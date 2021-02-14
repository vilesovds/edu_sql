/*
Выведите список товаров products и разделов catalogs, который соответствует товару.
*/
-- что-то слишком просто
SELECT products.name, c.name 
FROM products
JOIN catalogs c ON products.catalog_id = c.id;
