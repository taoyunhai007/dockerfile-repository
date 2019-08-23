CREATE USER 'mysql_replication_user'@'%' IDENTIFIED BY 'mysql_replication_password';
GRANT SELECT, REPLICATION SLAVE ON *.* TO 'mysql_replication_user'@'%';