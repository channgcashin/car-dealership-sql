CREATE TABLE customer (
  customer_id SERIAL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  PRIMARY KEY (customer_id)
);

CREATE TABLE salesperson (
  salesperson_id SERIAL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  PRIMARY KEY (salesperson_id)
);

CREATE TABLE car (
  car_id SERIAL,
  make VARCHAR(100),
  model VARCHAR(100),
  year_ Integer,
  PRIMARY KEY (car_id)
);

CREATE TABLE invoice (
  invoice_id SERIAL,
  total_cost NUMERIC(8,2),
  customer_id Integer,
  salesperson_id Integer,
  car_id Integer,
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
  FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE mechanic (
  mechanic_id SERIAL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  PRIMARY KEY (mechanic_id)
);

CREATE TABLE service_ticket (
  service_id SERIAL,
  service_cost NUMERIC(8,2),
  customer_id Integer,
  mechanic_id Integer,
  car_id Integer,
  PRIMARY KEY (service_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
  FOREIGN KEY (car_id) REFERENCES car(car_id)
);

