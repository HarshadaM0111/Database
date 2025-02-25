Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 8.0.38 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| information_schema        |
| mysql                     |
| performance_schema        |
| reactdb                   |
| reactdbbatch3             |
| student_management_system |
| sys                       |
| user                      |
+---------------------------+
8 rows in set (0.01 sec)

mysql> use student_management_system;
Database changed
mysql> create table employee(emp_id int primary key, emp_name varchar(50), emp_mobileno varchar(20) , emp_salary varchar
(50), emp_address varchar(100));
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT into employee(emp_id,emp_name, emp_mobileno, emp_salary,emp_address) VALUES (1, 'Harshada',2345123456,50000.00,'Dharashiv');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into employee(emp_id,emp_name, emp_mobileno, emp_salary,emp_address) VALUES (2,'Radha' ,5632890278 ,40000.00,'pune'),(3,'vibha',5687230968,68000.00,'dhule'),(4,'rajvir',4568897892,55000.00,'mumbai'),
(5,'vishnu',7878456327, 67550.00,'nashik');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+--------------+------------+-------------+
| emp_id | emp_name | emp_mobileno | emp_salary | emp_address |
+--------+----------+--------------+------------+-------------+
|      1 | Harshada | 2345123456   | 50000.00   | Dharashiv   |
|      2 | Radha    | 5632890278   | 40000.00   | pune        |
|      3 | vibha    | 5687230968   | 68000.00   | dhule       |
|      4 | rajvir   | 4568897892   | 55000.00   | mumbai      |
|      5 | vishnu   | 7878456327   | 67550.00   | nashik      |
+--------+----------+--------------+------------+-------------+
5 rows in set (0.00 sec)

mysql> select * from employee where emp_name LIKE 'v%';
+--------+----------+--------------+------------+-------------+
| emp_id | emp_name | emp_mobileno | emp_salary | emp_address |
+--------+----------+--------------+------------+-------------+
|      3 | vibha    | 5687230968   | 68000.00   | dhule       |
|      5 | vishnu   | 7878456327   | 67550.00   | nashik      |
+--------+----------+--------------+------------+-------------+
2 rows in set (0.00 sec)

mysql> select * from employee where emp_address LIKE '%e';
+--------+----------+--------------+------------+-------------+
| emp_id | emp_name | emp_mobileno | emp_salary | emp_address |
+--------+----------+--------------+------------+-------------+
|      2 | Radha    | 5632890278   | 40000.00   | pune        |
|      3 | vibha    | 5687230968   | 68000.00   | dhule       |
+--------+----------+--------------+------------+-------------+
2 rows in set (0.00 sec)

mysql> select * from employee where emp_salary LIKE '68___';
Empty set (0.00 sec)

mysql> select * from employee where emp_name LIKE 'Ra___';
+--------+----------+--------------+------------+-------------+
| emp_id | emp_name | emp_mobileno | emp_salary | emp_address |
+--------+----------+--------------+------------+-------------+
|      2 | Radha    | 5632890278   | 40000.00   | pune        |
+--------+----------+--------------+------------+-------------+
1 row in set (0.00 sec)

mysql> UPDATE employee SET emp_salary = 75000.00 where emp_id=1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+--------------+------------+-------------+
| emp_id | emp_name | emp_mobileno | emp_salary | emp_address |
+--------+----------+--------------+------------+-------------+
|      1 | Harshada | 2345123456   | 75000.00   | Dharashiv   |
|      2 | Radha    | 5632890278   | 40000.00   | pune        |
|      3 | vibha    | 5687230968   | 68000.00   | dhule       |
|      4 | rajvir   | 4568897892   | 55000.00   | mumbai      |
|      5 | vishnu   | 7878456327   | 67550.00   | nashik      |
+--------+----------+--------------+------------+-------------+
5 rows in set (0.00 sec)

mysql> DELETE from employee where emp_id=3;
Query OK, 1 row affected (0.00 sec)

mysql> select * from employee;
+--------+----------+--------------+------------+-------------+
| emp_id | emp_name | emp_mobileno | emp_salary | emp_address |
+--------+----------+--------------+------------+-------------+
|      1 | Harshada | 2345123456   | 75000.00   | Dharashiv   |
|      2 | Radha    | 5632890278   | 40000.00   | pune        |
|      4 | rajvir   | 4568897892   | 55000.00   | mumbai      |
|      5 | vishnu   | 7878456327   | 67550.00   | nashik      |
+--------+----------+--------------+------------+-------------+
4 rows in set (0.00 sec)
