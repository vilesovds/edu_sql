0) Есть система Ubuntu 18.04 MySQL  Ver 14.14 Distrib 5.7.32. Пробуем обновиться до 8.0.22
1) Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
	
	Добавляем репозиторий MySQL
	
	https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/#repo-qg-apt-repo-manual-setup
	
	Добавляем ключ 
	```
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5072E1F5
	```
	Добавляем пакеты
	```
	deb http://repo.mysql.com/apt/ubuntu/ bionic mysql-8.0
	```
	в файл 
	```
	/etc/apt/sources.list.d/mysql.list
	```
	обновляем 
	```
	apt update
	```
	и ставим сервер 
	```
	sudo apt install mysql-community-server
	```
	Файл создадим через 

	nano .my.cnf
	
	и запишем туда такие строчки
	
	```
	[client]
	user=root
	password=<пароль>
	```
	
	не забудем поменять права доступа
	
	chmod 0600 .my.cnf
	
2) Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
	
	Подключимся через клиент mysql
	
	Создадим базу 
	
	```
	CREATE DATABASE example;
	```
	
	переключимся на только что созданную базу
	
	```
	use example
	```
	
	создадим таблицу users 
	```
	CREATE TABLE users (id MEDIUMINT NOT NULL AUTO_INCREMENT, name CHAR(50) NOT NULL, PRIMARY KEY (id));
	```
	Можно ещё вставить пару значений
	```
	INSERT INTO users (name) VALUES
    ('user1'),('user2'),('test');
	```
3) Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
	
	Для начала выйдем из mysql клиента, набрав 
	```
	exit
	```
	
	Для создания дампа будем использовать утилиту mysqldump 
	```
	mysqldump example > example.sql
	```
	И восстановим его в другую базу sample использую клиент mysql
	```
	CREATE DATABASE sample;
	use sample
	source example.sql
	```
4)  Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
	```
	mysqldump --where="1 limit 100" mysql help_keyword > mysql_help_keyword.sql
	```
