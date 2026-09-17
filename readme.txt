1. CREATE TABLE <database_name>;
CONNECT ,database_name>;
CONNECCT <database_name>;
CREATE TABLE <table_name_in_plural>(

);

#utility Commands
\! cls

mysqldump -u root -p --databases library_db > C:\xampp\htdocs\it30b\backups\08182026_library_db.sql

mysqldump -u root -p --databases library_db > "C:\xampp\htdocs\it30b\backups\%date:~-4,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%_library_db.sql"
