-- Creation of the database

create database restaurant;
use restaurant;
create table menu (item_id int not null, recipe_name varchar(50), description varchar(50), price int, primary key(item_id));
create table order_type (order_typeid int not null, type varchar(50), primary key(order_typeid));
create table tables (table_id int not null, status int, waiter_id int not null, primary key(table_id), foreign key (waiter_id) references waiter (waiter_id));
create table waiter (waiter_id int not null, firstname varchar(50), lastname varchar(50), primary key(waiter_id));
create table customer (customer_id int not null, firstname varchar(50), lastname varchar(50), phone int, email varchar(50), address_id int not null, primary key (customer_id), foreign key (address_id) references address(address_id));
create table address (address_id int not null, street varchar(50), postal_code varchar(12), boy_id int not null, primary key(address_id), foreign key (boy_id) references delivery_boy(boy_id));
create table delivery_boy (boy_id int not null, firstname varchar(50), lastname varchar(50), status varchar(50), order_id int, primary key(boy_id), foreign key(order_id) references orders(order_id));
create table orders (order_id int not null, order_typeid int not null, total_price int, customer_id int not null, waiter_id int, dates date, times time, primary key (order_id), foreign key (order_typeid) references order_type(order_typeid), foreign key (customer_id) references customer (customer_id), foreign key (waiter_id) references waiter (waiter_id));
create table foodlist (list_id int not null, order_id int not null, item_id int not null, primary key(list_id), foreign key(order_id) references orders(order_id), foreign key(item_id) references menu(item_id));
create three users for cashier, kitchen manager and the president of the restaurant: -


-- create three users for cashier, kitchen manager and the president of the restaurant

create user 'president'@'localhost' identified by '123456';
grant all privileges on * . * to 'president'@'localhost';
flush privileges;

create user 'kmanager'@'localhost' identified by '123456';
grant select, insert, update ON restaurant.* TO 'kmanager'@'localhost';
flush privileges;

create user 'cashier'@'localhost' identified by '123456';
grant select, insert ON restaurant.* TO 'cashier'@'localhost';
flush privileges;

-- create two indexes, first one is in customer table and the second one is in order_type table

create index idx_lastname on customer(lastname);
create index idx_type on order_type(type);


