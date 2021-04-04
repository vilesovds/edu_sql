/*
Создайте двух пользователей которые имеют доступ к базе данных shop. Первому пользователю shop_read должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.

*/
-- пользователь shop_read с паролем pass
CREATE USER IF NOT EXISTS 'shop_read' IDENTIFIED WITH sha256_password BY 'pass';
GRANT SELECT ON shop.* TO shop_read;

-- пользователь shop с паролем pass2
CREATE USER IF NOT EXISTS 'shop' IDENTIFIED WITH sha256_password BY 'pass2';
GRANT ALL ON shop.* TO shop;
