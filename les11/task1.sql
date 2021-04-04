/*
Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.
*/
USE shop;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  created_at DATETIME NOT NULL,
  `table_name` VARCHAR(100) NOT NULL,
  primary_id INT NOT NULL,
  name_value VARCHAR(255)
) ENGINE = ARCHIVE;


DROP TRIGGER IF EXISTS logs_users;
DROP TRIGGER IF EXISTS logs_catalogs;
DROP TRIGGER IF EXISTS logs_products;

DELIMITER //
CREATE TRIGGER logs_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
  INSERT INTO `logs` (created_at, `table_name`, primary_id, name_value)
  VALUES (
    NOW(),
    'users',
    NEW.id,
    NEW.`name`
  );
END//

CREATE TRIGGER logs_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
  INSERT INTO `logs` (created_at, `table_name`, primary_id, name_value)
  VALUES (
    NOW(),
    'catalogs', 
    NEW.id,
    NEW.`name`
  );
END//

CREATE TRIGGER logs_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
  INSERT INTO `logs` (created_at, `table_name`, primary_id, name_value)
  VALUES (
    NOW(),
    'products', 
    NEW.id,
    NEW.`name`
  );
END//

DELIMITER ;
