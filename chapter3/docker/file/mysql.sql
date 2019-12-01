CREATE DATABASE wordpress ;
use wordpress ;
CREATE USER testuser@localhost IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON wordpress.* TO testuser@localhost IDENTIFIED BY '123456';
FLUSH PRIVILEGES;