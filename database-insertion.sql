-- Insert function fro customer
create or replace function add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin
	insert into customer(customer_id, first_name, last_name)
	values (_customer_id, _first_name, _last_name);
end;
$MAIN$
language plpgsql;

-- add_customer function call
select add_customer(1, 'Chan', 'Cashin');
select add_customer(2, 'Ricky', 'Bobby');
select add_customer(3, 'Phil', 'McCrevis');

-- Insert function for salesperson
create or replace function add_salesperson(_salesperson_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin
	insert into salesperson(salesperson_id, first_name, last_name)
	values (_salesperson_id, _first_name, _last_name);
end;
$MAIN$
language plpgsql;

-- add_salesperson function call
select add_salesperson(1, 'Travis', 'Scott');
select add_salesperson(2, 'Kanye', 'West');
select add_salesperson(3, 'Drizzy', 'Drake');

-- Insert function for car
create or replace function add_car(_car_id INTEGER, _make VARCHAR, _model VARCHAR, _year_ INTEGER)
returns void
as $MAIN$
begin
	insert into car(car_id, make, model, year_)
	values (_car_id, _make, _model, _year_);
end;
$MAIN$
language plpgsql;

-- add_car function call
select add_car(1, 'Toyota', '4Runner', 2018);
select add_car(2, 'Honda', 'Oddessey', 2012);
select add_car(3, 'Tesla', 'Model X', 2017);
select add_car(4, 'Chevorlet', 'Suburban', 2019)

-- Populating invoice table
insert into invoice(
	invoice_id,
	total_cost,
	customer_id,
	salesperson_id,
	car_id
) values (
	1,
	199.99,
	1,
	1,
	1
);
insert into invoice(
	invoice_id,
	total_cost,
	customer_id,
	salesperson_id,
	car_id
) values (
	2,
	2449.99,
	3,
	2,
	3
);

-- Insert function for mechanic
create or replace function add_mechanic(_mechanic_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin
	insert into mechanic(mechanic_id, first_name, last_name)
	values (_mechanic_id, _first_name, _last_name);
end;
$MAIN$
language plpgsql;

-- add_mechanic function call
select add_mechanic(1, 'Lebron', 'James');
select add_mechanic(2, 'Michael', 'Jordan');
select add_mechanic(3, 'Kobe', 'Bryant');

insert into service_ticket(
	service_id,
	service_cost,
	customer_id,
	mechanic_id,
	car_id
) values (
	1,
	230.00,
	2,
	1,
	2
);
insert into service_ticket(
	service_id,
	service_cost,
	customer_id,
	mechanic_id,
	car_id
) values (
	2,
	560.00,
	1,
	2,
	4
);
