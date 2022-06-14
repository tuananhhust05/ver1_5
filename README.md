# ver1_5

pg_dump -U postgres manage_ver1_lms > database/dumps/dump.sql

sudo su postgres

createdb -E UTF8 -T template0 --locale=en_US.utf8 manage_ver1_lms

psql -U postgres manage_ver1_lms < database/dump.sql

sudo -u postgres createuser -e lms_user;

CREATE USER lms_user WITH PASSWORD '123456aA@';
ALTER USER lms_user WITH PASSWORD '123456aA@';