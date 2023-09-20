CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY, 
	title varchar(50),
	language_ varchar(50),
	genre varchar(50),
	rating varchar(15)
);
	
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name varchar(100),
	last_name varchar(100),
	email varchar(150),
	billing_info varchar(150)
);

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	quantity_tickets integer NOT NULL,
	order_id integer NOT NULL,
	movie_id integer,
	FOREIGN KEY(order_id) REFERENCES orders(order_id),
	FOREIGN key(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE concessions(
	product_id SERIAL PRIMARY KEY,
	product_name varchar(100),
	quantity_product integer,
	order_id integer NOT NULL,
	FOREIGN KEY(order_id) REFERENCES orders(order_id)
);

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	order_date date,
	sub_total NUMERIC(8,2), 
	total_cost NUMERIC(8,2),
	customer_id integer NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

	