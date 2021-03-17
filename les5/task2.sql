/* Вначале преобразуем данные*/  
UPDATE users 
SET created_at = STR_TO_DATE(created_at, "%d.%m.%Y %k:%i"),
    updated_at = STR_TO_DATE(updated_at , "%d.%m.%Y %k:%i");
    
/* Затем сменим тип*/  
ALTER TABLE users
MODIFY COLUMN created_at DATETIME, MODIFY COLUMN updated_at  DATETIME
