use order_project;

create table users (
	user_id int,
    username varchar (64),
    user_type varchar (64),
    primary key (user_id)
);

create table customer (
	customer_id int,
    customer_name varchar (64),
    email varchar (64),
    contact_no varchar (64),
    primary key (customer_id)
);

create table menu (
menu_id int,
menu_name varchar (64),
menu_description varchar (160),
primary key (menu_id)
);

create table dish(
dish_id int,
dish_name varchar (64),
unit_price int,
availability varchar (64),
menu_id int,
primary key (dish_id),
foreign key (menu_id) references menu (menu_id) 
);

create table unavailable_dishes (
dish_id int ,
dish_name varchar (64),
unit_price int,
foreign key (dish_id) references dish (dish_id)
);

create table orders (
	order_id int,
    customer_id int,
    dish_id int,
    unit_price int,
    quantity int,
    order_status varchar (64),
    date_issued date,
    placed_by int,
    primary key (order_id),
    foreign key (customer_id) references customer (customer_id),
    foreign key (dish_id) references dish (dish_id),
    foreign key (placed_by) references users (user_id)
);

create table payment (
payment_id int,
order_id int,
unit_price int,
mode_of_payment varchar (64),
primary key (payment_id),
foreign key (order_id) references orders (order_id)
);




