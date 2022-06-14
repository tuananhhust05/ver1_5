# ver1_5

pg_dump -U postgres manage_ver1_lms > database/dumps/dump.sql

createdb -E UTF8 -T template0 --locale=en_US.utf8 manage_ver1_lms

psql -U postgres manage_ver1_lms < database/dump.sql