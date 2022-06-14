# ver1_5

pg_dump -U postgres manage_ver1_lms > database/dumps/dump.sql

sudo su postgres

createdb -E UTF8 -T template0 --locale=en_US.utf8 manage_ver1_lms

psql -U postgres manage_ver1_lms < database/dump.sql

sudo -u postgres createuser -e lms_user;

CREATE USER lms_user WITH PASSWORD '123456aA@';
<!-- ALTER USER lms_user WITH PASSWORD '123456aA@'; -->

GRANT ALL ON DATABASE manage_ver1_lms TO lms_user;

<!-- GRANT ALL PRIVILEGES ON TABLE list_nft TO lms_user; -->

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO lms_user;

GRANT pg_read_all_data TO lms_user;
GRANT pg_write_all_data TO lms_user;


---------------------------------------------------------------
Take a look on pm2 this should be exactly what you want.

To install pm2 :

npm install pm2 -g
To start an application simply just run :

pm2 start npm -- start
You can check logs via:

pm2 logs
To stop current pm2 instances

1) list the pm2 processes, get the id, lets say the id is 0

pm2 ps
2) then stop the id

pm2 stop 0

----------------------------------------------------------------

sudo ufw allow 3501