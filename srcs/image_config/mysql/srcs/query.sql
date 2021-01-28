CREATE DATABASE testdb;
CREATE USER testuser@localhost IDENTIFIED BY "1337";
GRANT ALL ON testdb.* TO testuser@localhost;