/*
Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
*/

-- через вложенный запрос

CREATE VIEW products_catalogs AS
SELECT `name`,
  (SELECT `name` FROM catalogs WHERE id = products.catalog_id) AS catalog
FROM products;

/*или через JOIN*/
CREATE VIEW products_catalogs AS 
SELECT p.id, p.`name`, c.`name` AS catalog 
FROM products p
JOIN catalogs c ON c.id = p.catalog_id;
