use order_project;

select * from menu;
select * from users;
select * from orders;
select * from dish;
select * from customer;
select * from payment;
select * from unavailable_dishes;



update dish
set unit_price = 75
where dish_id = 2;
select dish.dish_name, orders.order_id, dish.unit_price 
from dish inner join orders on orders.dish_id = dish.dish_id 
where availability = "Available";




select orders.order_id, users.username, users.user_type from orders right outer join users on orders.placed_by = users.user_id;


update orders
set order_status = "Canceled"
where order_id = 3;

select dish.dish_name, orders.order_id, orders.order_status
from dish
right outer join orders
on dish.dish_id = orders.dish_id
union
select dish.dish_name, orders.order_id, orders.order_status
from dish
left outer join orders
on dish.dish_id = orders.dish_id
;


update dish
set dish_name = "Tacos Sandwich"
where dish_id = 7;

select dish.dish_name as Dish_Name, 
customer.customer_name as Ordered_by, 
users.username as Placed_by, 
users.user_type from dish join orders on dish.dish_id = orders.dish_id join customer on orders.customer_id = customer.customer_id
join users on orders.placed_by = users.user_id;

select dish.dish_name, orders.order_id from dish join menu on dish.menu_id = menu.menu_id 
left outer join orders on orders.dish_id = dish.dish_id where menu.menu_id = 4;


select customer.customer_name, orders.order_id from customer right outer join orders on orders.customer_id = customer.customer_id;

select dish.dish_name, orders.order_id from dish right outer join orders on dish.dish_id = orders.dish_id; 

select customer.customer_name, orders.order_id from customer left outer join orders on orders.customer_id = customer.customer_id;

select dish.dish_name as dish, menu.menu_description as menu_description 
from dish join menu on dish.menu_id = menu.menu_id;

select orders.order_id, users.username as placed_by from orders join users on orders.placed_by = users.user_id;

select payment.payment_id as Payment_ID, 
customer.customer_name as Customer_Name, 
payment.mode_of_payment as Mode_Of_Payment
from payment join orders on orders.order_id = payment.payment_id 
join customer on orders.customer_id = customer.customer_id;

select orders.order_id, orders.unit_price, sum(orders.unit_price) 
over() Price_SUM from orders;

select customer.customer_name as customer, 
sum(orders.unit_price) as total_paid
from customer join orders on orders.customer_id = customer.customer_id group by customer.customer_name;


select distinct users.user_type, count(users.user_id) over(partition by users.user_type) user_count from users;

select orders.customer_id as Customer_ID, customer.customer_name as Name, count(distinct(orders.unit_price)) as Distinct_Prices_Paid from orders 
join customer on orders.customer_id = customer.customer_id
group by orders.customer_id;

select menu.menu_name as Menu, count(distinct(dish.unit_price)) as Distinct_Prices 
from dish join menu on menu.menu_id = dish.menu_id group by dish.menu_id;

select count(orders.order_id) as Orders_Placed, users.username as Placed_By, users.user_type as User_Type from orders 
join users on orders.placed_by = users.user_id group by users.user_type, users.username having users.user_type = "Assistant";

select count(customer.customer_id) as Orders_Made, customer_name as Customer 
from customer join orders on orders.customer_id = customer.customer_id group by customer.customer_id having customer.customer_id <= 3;


select payment.payment_id as Payment_ID, customer.customer_name as Customer, payment.mode_of_payment as Mode_of_Payment 
from payment 
join orders on payment.order_id = orders.order_id 
join customer on orders.customer_id = customer.customer_id order by payment.mode_of_payment = "Gcash" desc;


select dish.dish_name as Dish, dish.unit_price as Price, menu.menu_name 
from dish join menu on menu.menu_id = dish.menu_id 
where dish.menu_id = 4 and dish.availability = "Available" order by price desc ;



update customer
set customer_name = "Ashley Steel"
where customer_id = 4;

select customer.customer_name, orders.order_id
from customer
right outer join orders
on customer.customer_id = orders.customer_id
union
select customer.customer_name, orders.order_id
from customer
left outer join orders
on customer.customer_id = orders.customer_id;



