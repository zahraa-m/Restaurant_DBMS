-- Show all the names of waiters in the restaurant with total number of tables that they serve and sorted the result by their first names
select firstname, lastname, count(table_id)  as total from waiter r join tables t on r.waiter_id=t.waiter_id  group by r.firstname order by r.firstname;

-- Numbers of orders of customer to make discount offers to customers who order regularly
select r.firstname, r.lastname, count(o.customer_id) as no_of_orders from orders o join customer r on r.customer_id=o.customer_id group by o.customer_id order by no_of_orders desc;

-- What are the most items ordered to prepare them regularly?
select count(f.order_id) as most_ordered_items, recipe_name from foodlist f join menu u on u.item_id=f.item_id  group by f.item_id order by most_ordered_items desc;

-- How many orders served in the restaurant?
select count(o.order_typeid) as no_of_orders from orders o join order_type t on o.order_typeid=t.order_typeid where t.type='restaurant';

-- Show the profit in April?
select sum(total_price) from orders where month(dates)=04;

-- What are tables that available for reservation (which means table state is zero)
select table_id from tables where status=0;

-- What is the name of the delivery boy who delivered orders to Joliet street?
select d.firstname, d.lastname from delivery_boy d join address s on s.boy_id=d.boy_id where s.street='Joliet street';



