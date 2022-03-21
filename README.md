## setup db
```bash
sudo apt install mysql-server
sudo  mysql -u root
mysql> use mysql;
mysql> CREATE USER 'hah'@'localhost' IDENTIFIED BY '1234qwer';
mysql> GRANT ALL ON *.* TO 'hah'@'localhost';
mysql> FLUSH PRIVILEGES;
mysql> select User,plugin,host from user;
+------------------+-----------------------+-----------+
| User             | plugin                | host      |
+------------------+-----------------------+-----------+
| root             | auth_socket           | localhost |
| mysql.session    | mysql_native_password | localhost |
| mysql.sys        | mysql_native_password | localhost |
| debian-sys-maint | mysql_native_password | localhost |
| hah              | mysql_native_password | localhost |
+------------------+-----------------------+-----------+
5 rows in set (0.00 sec)
sudo apt install mysql-workbench
```

## sync
```bash
vim config.py
./run.sh
```