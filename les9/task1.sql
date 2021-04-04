/*
В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
*/

START TRANSACTION;
-- на любом этапе транзакция позволит нам откатить изменения, надо лишь вызвать ROLLBACK
-- очищаем в приёмнике
DELETE FROM sample.users WHERE id = 1;
-- копируем - вставляем
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
-- если я правильно понял, то перенос подразумевает и очистку в таблице-источнике
DELETE FROM shop.users WHERE id = 1;
-- если всё прошло без ошибок - фиксируем окончательно изменения
COMMIT;