use order_project;

insert into menu (menu_id, menu_name, menu_description) values 
(1, "Breakfast", "Served during breakfast"),
(2, "Lunch", "Served during lunch"),
(3, "Dinner", "Served during Dinner"),
(4, "Snacks", "Served during afternoon"),
(5, "Drinks", "Served with or without meals");


insert into dish (dish_id, dish_name, unit_price, availability, menu_id) values 
(1, "Champorado", 40, "Available", 1),
(2, "Tapsilog", 80, "Available", 1),
(3, "Pork Adobo", 70, "Available", 2),
(4, "Caldereta", 80, "Available", 2),
(5, "Beef Shank Soup", 150, "Available", 3),
(6, "Beef Steak", 120, "Available", 3),
(7, "Tacos", 70, "Available", 4),
(8, "Cheese-Bacon Burger", 130, "Available", 4),
(9, "Iced-Tea", 20, "Available", 5),
(10, "Coke", 20, "Available", 5),
(11, "Aloha Pizza", 500, "Unavailable", 4),
(12, "Thai MilkTea", 50, "Unavailable", 5),
(13, "Cornsilog", 70, "Unavailable", 1),
(14, "Tosilog", 80, "Unavailable", 1),
(15, "Lasagna", 70, "Unavailable", 4)
;


insert into users (user_id, username, user_type) values 
(1, "Francis", "Super Admin"),
(2, "Riosage", "Admin"),
(3, "Kyle", "Admin"),
(4, "Tyler", "Assistant"),
(5, "Tenz", "Assistant");

insert into customer (customer_id, customer_name, email, contact_no) values 
(1, "John Doe", "jd@sqlmail.com", "09262845872"),
(2, "Sean Paul", "sp@sqlmail.com", "09383991232"),
(3, "Erran Stan", "estan@sqlmail.com", "0923131232"),
(4, "Ashley", "as@sqlmail.com", "09683919929"),
(5, "Ivan", "Assistant", "09259610202");

insert into orders (order_id, customer_id, dish_id, unit_price, quantity, order_status, date_issued, placed_by) values 
(1, 1, 5, 150, 1, "Paid", "2022-11-20", 4),
(2, 2, 4, 80, 1, "Paid", "2022-11-20", 5),
(3, 2, 7, 70, 1, "Paid", "2022-11-20", 5),
(4, 3, 8, 130, 1, "Paid", "2022-11-20", 4),
(5, 2, 7, 70, 1, "Paid", "2022-11-20", 5),
(6, 4, 2, 80, 1, "Paid", "2022-11-20", 5),
(7, 5, 6, 120, 1, "Paid", "2022-11-20", 5)
;
insert into unavailable_dishes(dish_id, dish_name, unit_price) values
(11, "Aloha Pizza", 500),
(12, "Thai MilkTea", 50),
(13, "Cornsilog", 70 ),
(14, "Tosilog", 80),
(15, "Lasagna", 70)
;

insert into payment (payment_id, order_id, unit_price, mode_of_payment) values 
(1, 1, 150, "Gcash"),
(2, 2, 80, "Gcash"),
(3, 3, 70, "Gcash"),
(4, 4, 130, "BDO Bank"),
(5, 5, 70, "Gcash"),
(6, 6, 80, "Gcash"),
(7, 7, 120, "PNB Bank")
;

select * from menu;
select * from users;
select * from orders;
select * from dish;
select * from customer;
select * from payment;
select * from unavailable_dishes;