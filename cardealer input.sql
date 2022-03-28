-- Insert for customer table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name
)VALUES(
	1234,
	'Thor',
	'Odinson'
);

SELECT *
FROM customer;

-- Insert for sales_people table
INSERT INTO sales_people(
	sales_person_id,
	first_name,
	last_name
)VALUES(
	1121,
	'Peter',
	'Parker'
);

SELECT *
FROM sales_people;

-- Insert for mechanic table
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name 
)VALUES(
	12345,
	'Tony',
	'Stark'
);

SELECT *
FROM mechanic;

-- Insert for car table
INSERT INTO car(
	vin,
	make,
	model,
	year,
	odometer_reading,
	condition,
	customer_id
) VALUES(
	'KK12345K12KK12345',
	'Tesla',
	'3',
	'2022',
	'6000',
	'New',
	1234
);

SELECT *
FROM car;

-- Insert for service table
INSERT INTO service(
	service_id,
	service_date,
	service_added,
	amount,
	customer_id,
	vin 
)VALUES(
	122,
	'2022-03-27',
	'Oil Change',
	'80.00',
	1234,
	'KK12345K12KK12345'
);

SELECT *
FROM service;

-- Insert for service_order table
INSERT INTO service_order(
	order_id,
	mechanic_id,
	service_id,
	service_info,
	parts_needed
)VALUES(
	11211,
	12345,
	122,
	'remove filter, add oil, tire rotation',
	'oil_filter, oil-synthetic,'
);

SELECT *
FROM service_order;

-- Insert for invoice table
INSERT INTO invoice(
	invoice_id,
	sales_person_id,
	customer_id,
	amount,
	order_date,
	vin
)VALUES(
	12345678,
	1121,
	1234,
	80.00,
	'2022-03-27',
	'KK12345K12KK12345'
);

SELECT *
FROM invoice;