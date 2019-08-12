## create_database.sql
# ユーザにスキーマにアクセスする権限を与える
GRANT ALL PRIVILEGES ON testdb.* TO 'testusr'@'%';
