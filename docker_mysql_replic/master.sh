#!/bin/bash
 sleep 60
 mysql -u root -p@H9p3v6c -e CREATE USER 'ssl_test'@'%' IDENTIFIED BY '123' REQUIRE SSL;
 -u root -p@H9p3v6c -e GRANT REPLICATION SLAVE ON *.* TO 'ssl_test'@'%';

#docker exec -it replication-master mysqldump -u root -p@H9p3v6c --all-databases --master-data |gzip > /etc/mysql/dump.sql.gz 

mysqldump -u root -p@H9p3v6c  --all-databases --source-data  | gzip > /etc/cert/mysql/dump.gz