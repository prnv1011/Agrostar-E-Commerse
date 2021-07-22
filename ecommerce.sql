CREATE TABLE user(
id int primary key,
name varchar(80),
email varchar(80),
phone varchar(10),
address varchar(400)
);

CREATE TABLE product(
id int primary key,
name varchar(80),
description varchar(200),
price int,
quantity int 
);

CREATE TABLE user_product(
user_id int references user(id),
produt_id int references product(id)
);

CREATE TABLE sellers(
id int primary key,
name varchar(80),
phone varchar(10),
email varchar(80)
);

CREATE TABLE product_seller(
product_id int references product(id),
seller_id int references seller(id)
);

CREATE TABLE discount(
product_id int references product(id),
discount int
);

CREATE TABLE offer(
product_id int references product(id),
offers varchar(100)
);

CREATE TABLE delivery(
id int primary key,
address varchar(300),
type varchar(30),
amount int,
customer_id int references user(id),
seller_id int references seller(id)
);
CREATE TABLE COD(
customer_id int references user(id),
product_id int references product(id),
payment_type varchar(50)
);
CREATE TABLE Online_Payment(
customer_id int references user(id),
product_id int references product(id),
payment_method varchar(50),
transaction_id varchar(50),
status varchar(50)
);