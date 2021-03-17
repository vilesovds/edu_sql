﻿UPDATE users
SET created_at = NOW(), updated_at = NOW();

/*Но можно добавить проверку на NULL, для этого придётся делать два запроса*/

UPDATE users
SET created_at = NOW()
WHERE created_at is NULL

UPDATE users
SET updated_at = NOW()
WHERE updated_at is NULL
