/*
В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.
*/

DELIMITER //
-- проверка до того, как вставили
CREATE TRIGGER products_insert BEFORE INSERT ON products
FOR EACH ROW BEGIN
  IF NEW.`name` IS NULL AND NEW.`description` IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled. Filelds name and description must be filled';
  END IF;
END//

-- проверка перед обновлением
CREATE TRIGGER products_update BEFORE UPDATE ON products
FOR EACH ROW BEGIN
  IF NEW.`name` IS NULL AND NEW.`description` IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE canceled. Filelds name and description must be filled after update';
  END IF;
END//
DELIMITER ;
