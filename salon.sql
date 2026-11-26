-- psql --username=freecodecamp --dbname=postgres
CREATE DATABASE salon;
\c salon

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  phone       VARCHAR(20) NOT NULL UNIQUE,
  name        VARCHAR(50) NOT NULL
);

CREATE TABLE services (
  service_id SERIAL PRIMARY KEY,
  name       VARCHAR(50) NOT NULL
);

CREATE TABLE appointments (
  appointment_id SERIAL PRIMARY KEY,
  customer_id    INT NOT NULL REFERENCES customers(customer_id),
  service_id     INT NOT NULL REFERENCES services(service_id),
  time           VARCHAR(20) NOT NULL
);

-- Al menos 3 servicios; el primero debe quedar con service_id = 1
INSERT INTO services(name) VALUES ('cut'), ('color'), ('perm'), ('style'), ('trim');
