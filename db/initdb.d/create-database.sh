## create-database.sh
#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL  
  CREATE USER testusr PASSWORD 'testusr' CREATEDB;
  CREATE DATABASE testdb OWNER testusr;
  GRANT ALL PRIVILEGES ON DATABASE testdb TO testusr;

EOSQL
