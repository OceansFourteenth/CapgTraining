Question 10.

product
+-------------------+---------------+------+-----+---------+----------------+
| Field             | Type          | Null | Key | Default | Extra          |
+-------------------+---------------+------+-----+---------+----------------+
| product_id        | int(11)       | NO   | PRI | NULL    | auto_increment |
| name              | varchar(25)   | YES  |     | NULL    |                |
| sellingprice      | decimal(10,2) | YES  |     | NULL    |                |
| manufacturer_name | varchar(25)   | YES  |     | NULL    |                |
+-------------------+---------------+------+-----+---------+----------------+

client
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| client_id     | int(11)       | NO   | PRI | NULL    |       |
| name          | varchar(25)   | YES  |     | NULL    |       |
| address       | text          | YES  |     | NULL    |       |
| city          | varchar(25)   | YES  |     | NULL    |       |
| pin_code      | int(11)       | YES  |     | NULL    |       |
| state         | varchar(25)    | YES  |     | NULL    |       |
| total_balance | decimal(10,2) | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+

sales_order
+---------------+------------+------+-----+---------+-------+
| Field         | Type       | Null | Key | Default | Extra |
+---------------+------------+------+-----+---------+-------+
| order_id      | int(11)    | NO   | PRI | NULL    |       |
| order_date    | date       | YES  |     | NULL    |       |
| client_id     | int(11)    | YES  |     | NULL    |       |
| salesman_id   | int(11)    | YES  |     | NULL    |       |
| billed_whole  | tinyint(1) | YES  |     | NULL    |       |
| delivery_date | date       | YES  |     | NULL    |       |
+---------------+------------+------+-----+---------+-------+

salesman
+----------------+---------------+------+-----+---------+-------+
| Field          | Type          | Null | Key | Default | Extra |
+----------------+---------------+------+-----+---------+-------+
| salesman_id    | int(11)       | NO   | PRI | NULL    |       |
| name           | varchar(25)   | YES  |     | NULL    |       |
| address        | text          | YES  |     | NULL    |       |
| city           | varchar(25)   | YES  |     | NULL    |       |
| pin_code       | int(11)       | YES  |     | NULL    |       |
| state          | varchar(2)    | YES  |     | NULL    |       |
| salary         | decimal(10,2) | YES  |     | NULL    |       |
| delivery_date  | date          | YES  |     | NULL    |       |
| total_quantity | int(11)       | YES  |     | NULL    |       |
| product_rate   | decimal(10,2) | YES  |     | NULL    |       |
+----------------+---------------+------+-----+---------+-------+

a) select name, city from client;
b) select name from product;
c) select name from client where name like '_a%';
d) select name from client where city = 'Pune';
e) select * from product where sellingprice > 2000 and sellingprice <= 5000;
f) alter table product add column new_price numeric(10, 2);
g) alter table salesman change product_rate new_product_rate numeric(10, 2);
h) select * from product order by name;
i) select order_id, order_date from sales_order;
j) delete from sales_order where delivery_date < '2008-08-25';
k) update sales_order set delivery_date='16-08-08' where order_id='ON01008';
l) update client set total_balance=1200 where client_id='CN01003';
m) select * from product where name in ('HDD1034', 'DVDRW');
n) select name, city, state from client where state !='Maharashtra';
o) select * from sales_order where billed_whole = false and delivery_date like '____-03-__';

Question 11
a)
b)

Question 8

1) select aname from aircraft where aid in (select aid from certified where eid in (select eid from employees where salary > 80000));
2) select c.eid, max(a.cruisingrange) from certified c, aircraft a where c.aid=a.aid group by eid having count(*) > 1;
3) select ename from employees where salary < (select min(price) from flights where from='Los Angeles' and to='Honolulu');
4) select a.aname, avg(e.salary) from aircraft a inner join certified c on a.aid=c.aid inner join employees e on c.eid=e.eid where a.cruisingrange > 1000 group by a.aname;
5) select ename from employees e inner join certified c on e.eid=c.eid inner join aircraft a on a.aid=c.aid where aname like '%Boeing%';
6) select aid from aircraft where cruisingrange >= any (select distance from flights where from='Los Angeles' and to='Chicago';
7) 
