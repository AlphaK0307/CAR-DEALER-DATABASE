CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

CREATE TABLE sales_person(
	sales_person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);


CREATE TABLE car(
	vin VARCHAR(20) PRIMARY KEY,
	make VARCHAR(50),
	model VARCHAR(50),
	car_year INTEGER,
	odometer_reading INTEGER,
	condition VARCHAR(50),
	customer_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)	
);


CREATE TABLE service(
	service_id SERIAL PRIMARY KEY,
	service_date DATE,
	service_added VARCHAR(100),
	customer_id INTEGER,
	vin VARCHAR(20),
	amount NUMERIC(12,2),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(vin) REFERENCES car(vin)
);


CREATE TABLE service_order(
	order_id SERIAL PRIMARY KEY,
	mechanic_id INTEGER,
	service_id INTEGER,
	service_info VARCHAR(100),
	parts_needed VARCHAR(100),
	FOREIGN KEY(service_id) REFERENCES service(service_id),
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);


CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	sales_person_id INTEGER,
	customer_id INTEGER,
	amount NUMERIC(12,2),
	order_date DATE,
	vin VARCHAR(20),
	FOREIGN KEY(sales_person_id) REFERENCES sales_people(sales_person_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id), 
	FOREIGN KEY(finance_id) REFERENCES finance(finance_id),
	FOREIGN KEY(vin) REFERENCES car(vin)
);