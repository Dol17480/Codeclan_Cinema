DROP TABLE Tickets;
DROP TABLE Customers;
DROP TABLE Films;

CREATE TABLE Films (
  id serial4 primary key,
  title VARCHAR(255),
  price INT4
);

CREATE TABLE Customers (
  id serial4 primary key,
  name VARCHAR(255),
  funds INT4
);

CREATE TABLE Tickets (
  id serial4 primary key,
  customer_id int4 references customers(id) ON DELETE CASCADE,
  film_id int4 references films(id) ON DELETE CASCADE
);